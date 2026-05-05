local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("backup.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("backup.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CryoControllerUserManager"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "backup", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:associateBackupVaultMpaApprovalTeam(input, options)
    return self:invokeOperation(input, {
        name = "AssociateBackupVaultMpaApprovalTeam",
        input_schema = schemas.AssociateBackupVaultMpaApprovalTeamInput,
        output_schema = schemas.AssociateBackupVaultMpaApprovalTeamOutput,
        http_method = "PUT",
        http_path = "/backup-vaults/{BackupVaultName}/mpaApprovalTeam",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelLegalHold(input, options)
    return self:invokeOperation(input, {
        name = "CancelLegalHold",
        input_schema = schemas.CancelLegalHoldInput,
        output_schema = schemas.CancelLegalHoldOutput,
        http_method = "DELETE",
        http_path = "/legal-holds/{LegalHoldId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBackupPlan(input, options)
    return self:invokeOperation(input, {
        name = "CreateBackupPlan",
        input_schema = schemas.CreateBackupPlanInput,
        output_schema = schemas.CreateBackupPlanOutput,
        http_method = "PUT",
        http_path = "/backup/plans",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBackupSelection(input, options)
    return self:invokeOperation(input, {
        name = "CreateBackupSelection",
        input_schema = schemas.CreateBackupSelectionInput,
        output_schema = schemas.CreateBackupSelectionOutput,
        http_method = "PUT",
        http_path = "/backup/plans/{BackupPlanId}/selections",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBackupVault(input, options)
    return self:invokeOperation(input, {
        name = "CreateBackupVault",
        input_schema = schemas.CreateBackupVaultInput,
        output_schema = schemas.CreateBackupVaultOutput,
        http_method = "PUT",
        http_path = "/backup-vaults/{BackupVaultName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFramework(input, options)
    return self:invokeOperation(input, {
        name = "CreateFramework",
        input_schema = schemas.CreateFrameworkInput,
        output_schema = schemas.CreateFrameworkOutput,
        http_method = "POST",
        http_path = "/audit/frameworks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLegalHold(input, options)
    return self:invokeOperation(input, {
        name = "CreateLegalHold",
        input_schema = schemas.CreateLegalHoldInput,
        output_schema = schemas.CreateLegalHoldOutput,
        http_method = "POST",
        http_path = "/legal-holds",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLogicallyAirGappedBackupVault(input, options)
    return self:invokeOperation(input, {
        name = "CreateLogicallyAirGappedBackupVault",
        input_schema = schemas.CreateLogicallyAirGappedBackupVaultInput,
        output_schema = schemas.CreateLogicallyAirGappedBackupVaultOutput,
        http_method = "PUT",
        http_path = "/logically-air-gapped-backup-vaults/{BackupVaultName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createReportPlan(input, options)
    return self:invokeOperation(input, {
        name = "CreateReportPlan",
        input_schema = schemas.CreateReportPlanInput,
        output_schema = schemas.CreateReportPlanOutput,
        http_method = "POST",
        http_path = "/audit/report-plans",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRestoreAccessBackupVault(input, options)
    return self:invokeOperation(input, {
        name = "CreateRestoreAccessBackupVault",
        input_schema = schemas.CreateRestoreAccessBackupVaultInput,
        output_schema = schemas.CreateRestoreAccessBackupVaultOutput,
        http_method = "PUT",
        http_path = "/restore-access-backup-vaults",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRestoreTestingPlan(input, options)
    return self:invokeOperation(input, {
        name = "CreateRestoreTestingPlan",
        input_schema = schemas.CreateRestoreTestingPlanInput,
        output_schema = schemas.CreateRestoreTestingPlanOutput,
        http_method = "PUT",
        http_path = "/restore-testing/plans",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRestoreTestingSelection(input, options)
    return self:invokeOperation(input, {
        name = "CreateRestoreTestingSelection",
        input_schema = schemas.CreateRestoreTestingSelectionInput,
        output_schema = schemas.CreateRestoreTestingSelectionOutput,
        http_method = "PUT",
        http_path = "/restore-testing/plans/{RestoreTestingPlanName}/selections",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTieringConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateTieringConfiguration",
        input_schema = schemas.CreateTieringConfigurationInput,
        output_schema = schemas.CreateTieringConfigurationOutput,
        http_method = "PUT",
        http_path = "/tiering-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBackupPlan(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackupPlan",
        input_schema = schemas.DeleteBackupPlanInput,
        output_schema = schemas.DeleteBackupPlanOutput,
        http_method = "DELETE",
        http_path = "/backup/plans/{BackupPlanId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBackupSelection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackupSelection",
        input_schema = schemas.DeleteBackupSelectionInput,
        output_schema = schemas.DeleteBackupSelectionOutput,
        http_method = "DELETE",
        http_path = "/backup/plans/{BackupPlanId}/selections/{SelectionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBackupVault(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackupVault",
        input_schema = schemas.DeleteBackupVaultInput,
        output_schema = schemas.DeleteBackupVaultOutput,
        http_method = "DELETE",
        http_path = "/backup-vaults/{BackupVaultName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBackupVaultAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackupVaultAccessPolicy",
        input_schema = schemas.DeleteBackupVaultAccessPolicyInput,
        output_schema = schemas.DeleteBackupVaultAccessPolicyOutput,
        http_method = "DELETE",
        http_path = "/backup-vaults/{BackupVaultName}/access-policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBackupVaultLockConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackupVaultLockConfiguration",
        input_schema = schemas.DeleteBackupVaultLockConfigurationInput,
        output_schema = schemas.DeleteBackupVaultLockConfigurationOutput,
        http_method = "DELETE",
        http_path = "/backup-vaults/{BackupVaultName}/vault-lock",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBackupVaultNotifications(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackupVaultNotifications",
        input_schema = schemas.DeleteBackupVaultNotificationsInput,
        output_schema = schemas.DeleteBackupVaultNotificationsOutput,
        http_method = "DELETE",
        http_path = "/backup-vaults/{BackupVaultName}/notification-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFramework(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFramework",
        input_schema = schemas.DeleteFrameworkInput,
        output_schema = schemas.DeleteFrameworkOutput,
        http_method = "DELETE",
        http_path = "/audit/frameworks/{FrameworkName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRecoveryPoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRecoveryPoint",
        input_schema = schemas.DeleteRecoveryPointInput,
        output_schema = schemas.DeleteRecoveryPointOutput,
        http_method = "DELETE",
        http_path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteReportPlan(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReportPlan",
        input_schema = schemas.DeleteReportPlanInput,
        output_schema = schemas.DeleteReportPlanOutput,
        http_method = "DELETE",
        http_path = "/audit/report-plans/{ReportPlanName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRestoreTestingPlan(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRestoreTestingPlan",
        input_schema = schemas.DeleteRestoreTestingPlanInput,
        output_schema = schemas.DeleteRestoreTestingPlanOutput,
        http_method = "DELETE",
        http_path = "/restore-testing/plans/{RestoreTestingPlanName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRestoreTestingSelection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRestoreTestingSelection",
        input_schema = schemas.DeleteRestoreTestingSelectionInput,
        output_schema = schemas.DeleteRestoreTestingSelectionOutput,
        http_method = "DELETE",
        http_path = "/restore-testing/plans/{RestoreTestingPlanName}/selections/{RestoreTestingSelectionName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTieringConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTieringConfiguration",
        input_schema = schemas.DeleteTieringConfigurationInput,
        output_schema = schemas.DeleteTieringConfigurationOutput,
        http_method = "DELETE",
        http_path = "/tiering-configurations/{TieringConfigurationName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBackupJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBackupJob",
        input_schema = schemas.DescribeBackupJobInput,
        output_schema = schemas.DescribeBackupJobOutput,
        http_method = "GET",
        http_path = "/backup-jobs/{BackupJobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBackupVault(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBackupVault",
        input_schema = schemas.DescribeBackupVaultInput,
        output_schema = schemas.DescribeBackupVaultOutput,
        http_method = "GET",
        http_path = "/backup-vaults/{BackupVaultName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCopyJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCopyJob",
        input_schema = schemas.DescribeCopyJobInput,
        output_schema = schemas.DescribeCopyJobOutput,
        http_method = "GET",
        http_path = "/copy-jobs/{CopyJobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFramework(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFramework",
        input_schema = schemas.DescribeFrameworkInput,
        output_schema = schemas.DescribeFrameworkOutput,
        http_method = "GET",
        http_path = "/audit/frameworks/{FrameworkName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeGlobalSettings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGlobalSettings",
        input_schema = schemas.DescribeGlobalSettingsInput,
        output_schema = schemas.DescribeGlobalSettingsOutput,
        http_method = "GET",
        http_path = "/global-settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProtectedResource(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProtectedResource",
        input_schema = schemas.DescribeProtectedResourceInput,
        output_schema = schemas.DescribeProtectedResourceOutput,
        http_method = "GET",
        http_path = "/resources/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRecoveryPoint(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRecoveryPoint",
        input_schema = schemas.DescribeRecoveryPointInput,
        output_schema = schemas.DescribeRecoveryPointOutput,
        http_method = "GET",
        http_path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRegionSettings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRegionSettings",
        input_schema = schemas.DescribeRegionSettingsInput,
        output_schema = schemas.DescribeRegionSettingsOutput,
        http_method = "GET",
        http_path = "/account-settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReportJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReportJob",
        input_schema = schemas.DescribeReportJobInput,
        output_schema = schemas.DescribeReportJobOutput,
        http_method = "GET",
        http_path = "/audit/report-jobs/{ReportJobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReportPlan(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReportPlan",
        input_schema = schemas.DescribeReportPlanInput,
        output_schema = schemas.DescribeReportPlanOutput,
        http_method = "GET",
        http_path = "/audit/report-plans/{ReportPlanName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRestoreJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRestoreJob",
        input_schema = schemas.DescribeRestoreJobInput,
        output_schema = schemas.DescribeRestoreJobOutput,
        http_method = "GET",
        http_path = "/restore-jobs/{RestoreJobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeScanJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScanJob",
        input_schema = schemas.DescribeScanJobInput,
        output_schema = schemas.DescribeScanJobOutput,
        http_method = "GET",
        http_path = "/scan/jobs/{ScanJobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateBackupVaultMpaApprovalTeam(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateBackupVaultMpaApprovalTeam",
        input_schema = schemas.DisassociateBackupVaultMpaApprovalTeamInput,
        output_schema = schemas.DisassociateBackupVaultMpaApprovalTeamOutput,
        http_method = "POST",
        http_path = "/backup-vaults/{BackupVaultName}/mpaApprovalTeam?delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateRecoveryPoint(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateRecoveryPoint",
        input_schema = schemas.DisassociateRecoveryPointInput,
        output_schema = schemas.DisassociateRecoveryPointOutput,
        http_method = "POST",
        http_path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/disassociate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateRecoveryPointFromParent(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateRecoveryPointFromParent",
        input_schema = schemas.DisassociateRecoveryPointFromParentInput,
        output_schema = schemas.DisassociateRecoveryPointFromParentOutput,
        http_method = "DELETE",
        http_path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/parentAssociation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:exportBackupPlanTemplate(input, options)
    return self:invokeOperation(input, {
        name = "ExportBackupPlanTemplate",
        input_schema = schemas.ExportBackupPlanTemplateInput,
        output_schema = schemas.ExportBackupPlanTemplateOutput,
        http_method = "GET",
        http_path = "/backup/plans/{BackupPlanId}/toTemplate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBackupPlan(input, options)
    return self:invokeOperation(input, {
        name = "GetBackupPlan",
        input_schema = schemas.GetBackupPlanInput,
        output_schema = schemas.GetBackupPlanOutput,
        http_method = "GET",
        http_path = "/backup/plans/{BackupPlanId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBackupPlanFromJSON(input, options)
    return self:invokeOperation(input, {
        name = "GetBackupPlanFromJSON",
        input_schema = schemas.GetBackupPlanFromJSONInput,
        output_schema = schemas.GetBackupPlanFromJSONOutput,
        http_method = "POST",
        http_path = "/backup/template/json/toPlan",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBackupPlanFromTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetBackupPlanFromTemplate",
        input_schema = schemas.GetBackupPlanFromTemplateInput,
        output_schema = schemas.GetBackupPlanFromTemplateOutput,
        http_method = "GET",
        http_path = "/backup/template/plans/{BackupPlanTemplateId}/toPlan",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBackupSelection(input, options)
    return self:invokeOperation(input, {
        name = "GetBackupSelection",
        input_schema = schemas.GetBackupSelectionInput,
        output_schema = schemas.GetBackupSelectionOutput,
        http_method = "GET",
        http_path = "/backup/plans/{BackupPlanId}/selections/{SelectionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBackupVaultAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetBackupVaultAccessPolicy",
        input_schema = schemas.GetBackupVaultAccessPolicyInput,
        output_schema = schemas.GetBackupVaultAccessPolicyOutput,
        http_method = "GET",
        http_path = "/backup-vaults/{BackupVaultName}/access-policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBackupVaultNotifications(input, options)
    return self:invokeOperation(input, {
        name = "GetBackupVaultNotifications",
        input_schema = schemas.GetBackupVaultNotificationsInput,
        output_schema = schemas.GetBackupVaultNotificationsOutput,
        http_method = "GET",
        http_path = "/backup-vaults/{BackupVaultName}/notification-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLegalHold(input, options)
    return self:invokeOperation(input, {
        name = "GetLegalHold",
        input_schema = schemas.GetLegalHoldInput,
        output_schema = schemas.GetLegalHoldOutput,
        http_method = "GET",
        http_path = "/legal-holds/{LegalHoldId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRecoveryPointIndexDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetRecoveryPointIndexDetails",
        input_schema = schemas.GetRecoveryPointIndexDetailsInput,
        output_schema = schemas.GetRecoveryPointIndexDetailsOutput,
        http_method = "GET",
        http_path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/index",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRecoveryPointRestoreMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetRecoveryPointRestoreMetadata",
        input_schema = schemas.GetRecoveryPointRestoreMetadataInput,
        output_schema = schemas.GetRecoveryPointRestoreMetadataOutput,
        http_method = "GET",
        http_path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/restore-metadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRestoreJobMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetRestoreJobMetadata",
        input_schema = schemas.GetRestoreJobMetadataInput,
        output_schema = schemas.GetRestoreJobMetadataOutput,
        http_method = "GET",
        http_path = "/restore-jobs/{RestoreJobId}/metadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRestoreTestingInferredMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetRestoreTestingInferredMetadata",
        input_schema = schemas.GetRestoreTestingInferredMetadataInput,
        output_schema = schemas.GetRestoreTestingInferredMetadataOutput,
        http_method = "GET",
        http_path = "/restore-testing/inferred-metadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRestoreTestingPlan(input, options)
    return self:invokeOperation(input, {
        name = "GetRestoreTestingPlan",
        input_schema = schemas.GetRestoreTestingPlanInput,
        output_schema = schemas.GetRestoreTestingPlanOutput,
        http_method = "GET",
        http_path = "/restore-testing/plans/{RestoreTestingPlanName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRestoreTestingSelection(input, options)
    return self:invokeOperation(input, {
        name = "GetRestoreTestingSelection",
        input_schema = schemas.GetRestoreTestingSelectionInput,
        output_schema = schemas.GetRestoreTestingSelectionOutput,
        http_method = "GET",
        http_path = "/restore-testing/plans/{RestoreTestingPlanName}/selections/{RestoreTestingSelectionName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSupportedResourceTypes(input, options)
    return self:invokeOperation(input, {
        name = "GetSupportedResourceTypes",
        input_schema = schemas.GetSupportedResourceTypesInput,
        output_schema = schemas.GetSupportedResourceTypesOutput,
        http_method = "GET",
        http_path = "/supported-resource-types",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTieringConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetTieringConfiguration",
        input_schema = schemas.GetTieringConfigurationInput,
        output_schema = schemas.GetTieringConfigurationOutput,
        http_method = "GET",
        http_path = "/tiering-configurations/{TieringConfigurationName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBackupJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListBackupJobs",
        input_schema = schemas.ListBackupJobsInput,
        output_schema = schemas.ListBackupJobsOutput,
        http_method = "GET",
        http_path = "/backup-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBackupJobSummaries(input, options)
    return self:invokeOperation(input, {
        name = "ListBackupJobSummaries",
        input_schema = schemas.ListBackupJobSummariesInput,
        output_schema = schemas.ListBackupJobSummariesOutput,
        http_method = "GET",
        http_path = "/audit/backup-job-summaries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBackupPlans(input, options)
    return self:invokeOperation(input, {
        name = "ListBackupPlans",
        input_schema = schemas.ListBackupPlansInput,
        output_schema = schemas.ListBackupPlansOutput,
        http_method = "GET",
        http_path = "/backup/plans",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBackupPlanTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListBackupPlanTemplates",
        input_schema = schemas.ListBackupPlanTemplatesInput,
        output_schema = schemas.ListBackupPlanTemplatesOutput,
        http_method = "GET",
        http_path = "/backup/template/plans",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBackupPlanVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListBackupPlanVersions",
        input_schema = schemas.ListBackupPlanVersionsInput,
        output_schema = schemas.ListBackupPlanVersionsOutput,
        http_method = "GET",
        http_path = "/backup/plans/{BackupPlanId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBackupSelections(input, options)
    return self:invokeOperation(input, {
        name = "ListBackupSelections",
        input_schema = schemas.ListBackupSelectionsInput,
        output_schema = schemas.ListBackupSelectionsOutput,
        http_method = "GET",
        http_path = "/backup/plans/{BackupPlanId}/selections",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBackupVaults(input, options)
    return self:invokeOperation(input, {
        name = "ListBackupVaults",
        input_schema = schemas.ListBackupVaultsInput,
        output_schema = schemas.ListBackupVaultsOutput,
        http_method = "GET",
        http_path = "/backup-vaults",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCopyJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListCopyJobs",
        input_schema = schemas.ListCopyJobsInput,
        output_schema = schemas.ListCopyJobsOutput,
        http_method = "GET",
        http_path = "/copy-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCopyJobSummaries(input, options)
    return self:invokeOperation(input, {
        name = "ListCopyJobSummaries",
        input_schema = schemas.ListCopyJobSummariesInput,
        output_schema = schemas.ListCopyJobSummariesOutput,
        http_method = "GET",
        http_path = "/audit/copy-job-summaries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFrameworks(input, options)
    return self:invokeOperation(input, {
        name = "ListFrameworks",
        input_schema = schemas.ListFrameworksInput,
        output_schema = schemas.ListFrameworksOutput,
        http_method = "GET",
        http_path = "/audit/frameworks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIndexedRecoveryPoints(input, options)
    return self:invokeOperation(input, {
        name = "ListIndexedRecoveryPoints",
        input_schema = schemas.ListIndexedRecoveryPointsInput,
        output_schema = schemas.ListIndexedRecoveryPointsOutput,
        http_method = "GET",
        http_path = "/indexes/recovery-point",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLegalHolds(input, options)
    return self:invokeOperation(input, {
        name = "ListLegalHolds",
        input_schema = schemas.ListLegalHoldsInput,
        output_schema = schemas.ListLegalHoldsOutput,
        http_method = "GET",
        http_path = "/legal-holds",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProtectedResources(input, options)
    return self:invokeOperation(input, {
        name = "ListProtectedResources",
        input_schema = schemas.ListProtectedResourcesInput,
        output_schema = schemas.ListProtectedResourcesOutput,
        http_method = "GET",
        http_path = "/resources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProtectedResourcesByBackupVault(input, options)
    return self:invokeOperation(input, {
        name = "ListProtectedResourcesByBackupVault",
        input_schema = schemas.ListProtectedResourcesByBackupVaultInput,
        output_schema = schemas.ListProtectedResourcesByBackupVaultOutput,
        http_method = "GET",
        http_path = "/backup-vaults/{BackupVaultName}/resources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRecoveryPointsByBackupVault(input, options)
    return self:invokeOperation(input, {
        name = "ListRecoveryPointsByBackupVault",
        input_schema = schemas.ListRecoveryPointsByBackupVaultInput,
        output_schema = schemas.ListRecoveryPointsByBackupVaultOutput,
        http_method = "GET",
        http_path = "/backup-vaults/{BackupVaultName}/recovery-points",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRecoveryPointsByLegalHold(input, options)
    return self:invokeOperation(input, {
        name = "ListRecoveryPointsByLegalHold",
        input_schema = schemas.ListRecoveryPointsByLegalHoldInput,
        output_schema = schemas.ListRecoveryPointsByLegalHoldOutput,
        http_method = "GET",
        http_path = "/legal-holds/{LegalHoldId}/recovery-points",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRecoveryPointsByResource(input, options)
    return self:invokeOperation(input, {
        name = "ListRecoveryPointsByResource",
        input_schema = schemas.ListRecoveryPointsByResourceInput,
        output_schema = schemas.ListRecoveryPointsByResourceOutput,
        http_method = "GET",
        http_path = "/resources/{ResourceArn}/recovery-points",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListReportJobs",
        input_schema = schemas.ListReportJobsInput,
        output_schema = schemas.ListReportJobsOutput,
        http_method = "GET",
        http_path = "/audit/report-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReportPlans(input, options)
    return self:invokeOperation(input, {
        name = "ListReportPlans",
        input_schema = schemas.ListReportPlansInput,
        output_schema = schemas.ListReportPlansOutput,
        http_method = "GET",
        http_path = "/audit/report-plans",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRestoreAccessBackupVaults(input, options)
    return self:invokeOperation(input, {
        name = "ListRestoreAccessBackupVaults",
        input_schema = schemas.ListRestoreAccessBackupVaultsInput,
        output_schema = schemas.ListRestoreAccessBackupVaultsOutput,
        http_method = "GET",
        http_path = "/logically-air-gapped-backup-vaults/{BackupVaultName}/restore-access-backup-vaults",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRestoreJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListRestoreJobs",
        input_schema = schemas.ListRestoreJobsInput,
        output_schema = schemas.ListRestoreJobsOutput,
        http_method = "GET",
        http_path = "/restore-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRestoreJobsByProtectedResource(input, options)
    return self:invokeOperation(input, {
        name = "ListRestoreJobsByProtectedResource",
        input_schema = schemas.ListRestoreJobsByProtectedResourceInput,
        output_schema = schemas.ListRestoreJobsByProtectedResourceOutput,
        http_method = "GET",
        http_path = "/resources/{ResourceArn}/restore-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRestoreJobSummaries(input, options)
    return self:invokeOperation(input, {
        name = "ListRestoreJobSummaries",
        input_schema = schemas.ListRestoreJobSummariesInput,
        output_schema = schemas.ListRestoreJobSummariesOutput,
        http_method = "GET",
        http_path = "/audit/restore-job-summaries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRestoreTestingPlans(input, options)
    return self:invokeOperation(input, {
        name = "ListRestoreTestingPlans",
        input_schema = schemas.ListRestoreTestingPlansInput,
        output_schema = schemas.ListRestoreTestingPlansOutput,
        http_method = "GET",
        http_path = "/restore-testing/plans",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRestoreTestingSelections(input, options)
    return self:invokeOperation(input, {
        name = "ListRestoreTestingSelections",
        input_schema = schemas.ListRestoreTestingSelectionsInput,
        output_schema = schemas.ListRestoreTestingSelectionsOutput,
        http_method = "GET",
        http_path = "/restore-testing/plans/{RestoreTestingPlanName}/selections",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listScanJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListScanJobs",
        input_schema = schemas.ListScanJobsInput,
        output_schema = schemas.ListScanJobsOutput,
        http_method = "GET",
        http_path = "/scan/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listScanJobSummaries(input, options)
    return self:invokeOperation(input, {
        name = "ListScanJobSummaries",
        input_schema = schemas.ListScanJobSummariesInput,
        output_schema = schemas.ListScanJobSummariesOutput,
        http_method = "GET",
        http_path = "/audit/scan-job-summaries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTags(input, options)
    return self:invokeOperation(input, {
        name = "ListTags",
        input_schema = schemas.ListTagsInput,
        output_schema = schemas.ListTagsOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTieringConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListTieringConfigurations",
        input_schema = schemas.ListTieringConfigurationsInput,
        output_schema = schemas.ListTieringConfigurationsOutput,
        http_method = "GET",
        http_path = "/tiering-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putBackupVaultAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutBackupVaultAccessPolicy",
        input_schema = schemas.PutBackupVaultAccessPolicyInput,
        output_schema = schemas.PutBackupVaultAccessPolicyOutput,
        http_method = "PUT",
        http_path = "/backup-vaults/{BackupVaultName}/access-policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putBackupVaultLockConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutBackupVaultLockConfiguration",
        input_schema = schemas.PutBackupVaultLockConfigurationInput,
        output_schema = schemas.PutBackupVaultLockConfigurationOutput,
        http_method = "PUT",
        http_path = "/backup-vaults/{BackupVaultName}/vault-lock",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putBackupVaultNotifications(input, options)
    return self:invokeOperation(input, {
        name = "PutBackupVaultNotifications",
        input_schema = schemas.PutBackupVaultNotificationsInput,
        output_schema = schemas.PutBackupVaultNotificationsOutput,
        http_method = "PUT",
        http_path = "/backup-vaults/{BackupVaultName}/notification-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRestoreValidationResult(input, options)
    return self:invokeOperation(input, {
        name = "PutRestoreValidationResult",
        input_schema = schemas.PutRestoreValidationResultInput,
        output_schema = schemas.PutRestoreValidationResultOutput,
        http_method = "PUT",
        http_path = "/restore-jobs/{RestoreJobId}/validations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:revokeRestoreAccessBackupVault(input, options)
    return self:invokeOperation(input, {
        name = "RevokeRestoreAccessBackupVault",
        input_schema = schemas.RevokeRestoreAccessBackupVaultInput,
        output_schema = schemas.RevokeRestoreAccessBackupVaultOutput,
        http_method = "DELETE",
        http_path = "/logically-air-gapped-backup-vaults/{BackupVaultName}/restore-access-backup-vaults/{RestoreAccessBackupVaultArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startBackupJob(input, options)
    return self:invokeOperation(input, {
        name = "StartBackupJob",
        input_schema = schemas.StartBackupJobInput,
        output_schema = schemas.StartBackupJobOutput,
        http_method = "PUT",
        http_path = "/backup-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startCopyJob(input, options)
    return self:invokeOperation(input, {
        name = "StartCopyJob",
        input_schema = schemas.StartCopyJobInput,
        output_schema = schemas.StartCopyJobOutput,
        http_method = "PUT",
        http_path = "/copy-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startReportJob(input, options)
    return self:invokeOperation(input, {
        name = "StartReportJob",
        input_schema = schemas.StartReportJobInput,
        output_schema = schemas.StartReportJobOutput,
        http_method = "POST",
        http_path = "/audit/report-jobs/{ReportPlanName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startRestoreJob(input, options)
    return self:invokeOperation(input, {
        name = "StartRestoreJob",
        input_schema = schemas.StartRestoreJobInput,
        output_schema = schemas.StartRestoreJobOutput,
        http_method = "PUT",
        http_path = "/restore-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startScanJob(input, options)
    return self:invokeOperation(input, {
        name = "StartScanJob",
        input_schema = schemas.StartScanJobInput,
        output_schema = schemas.StartScanJobOutput,
        http_method = "PUT",
        http_path = "/scan/job",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopBackupJob(input, options)
    return self:invokeOperation(input, {
        name = "StopBackupJob",
        input_schema = schemas.StopBackupJobInput,
        output_schema = schemas.StopBackupJobOutput,
        http_method = "POST",
        http_path = "/backup-jobs/{BackupJobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "POST",
        http_path = "/untag/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBackupPlan(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBackupPlan",
        input_schema = schemas.UpdateBackupPlanInput,
        output_schema = schemas.UpdateBackupPlanOutput,
        http_method = "POST",
        http_path = "/backup/plans/{BackupPlanId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFramework(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFramework",
        input_schema = schemas.UpdateFrameworkInput,
        output_schema = schemas.UpdateFrameworkOutput,
        http_method = "PUT",
        http_path = "/audit/frameworks/{FrameworkName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGlobalSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGlobalSettings",
        input_schema = schemas.UpdateGlobalSettingsInput,
        output_schema = schemas.UpdateGlobalSettingsOutput,
        http_method = "PUT",
        http_path = "/global-settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRecoveryPointIndexSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRecoveryPointIndexSettings",
        input_schema = schemas.UpdateRecoveryPointIndexSettingsInput,
        output_schema = schemas.UpdateRecoveryPointIndexSettingsOutput,
        http_method = "POST",
        http_path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}/index",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRecoveryPointLifecycle(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRecoveryPointLifecycle",
        input_schema = schemas.UpdateRecoveryPointLifecycleInput,
        output_schema = schemas.UpdateRecoveryPointLifecycleOutput,
        http_method = "POST",
        http_path = "/backup-vaults/{BackupVaultName}/recovery-points/{RecoveryPointArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRegionSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRegionSettings",
        input_schema = schemas.UpdateRegionSettingsInput,
        output_schema = schemas.UpdateRegionSettingsOutput,
        http_method = "PUT",
        http_path = "/account-settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateReportPlan(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReportPlan",
        input_schema = schemas.UpdateReportPlanInput,
        output_schema = schemas.UpdateReportPlanOutput,
        http_method = "PUT",
        http_path = "/audit/report-plans/{ReportPlanName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRestoreTestingPlan(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRestoreTestingPlan",
        input_schema = schemas.UpdateRestoreTestingPlanInput,
        output_schema = schemas.UpdateRestoreTestingPlanOutput,
        http_method = "PUT",
        http_path = "/restore-testing/plans/{RestoreTestingPlanName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRestoreTestingSelection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRestoreTestingSelection",
        input_schema = schemas.UpdateRestoreTestingSelectionInput,
        output_schema = schemas.UpdateRestoreTestingSelectionOutput,
        http_method = "PUT",
        http_path = "/restore-testing/plans/{RestoreTestingPlanName}/selections/{RestoreTestingSelectionName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTieringConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTieringConfiguration",
        input_schema = schemas.UpdateTieringConfigurationInput,
        output_schema = schemas.UpdateTieringConfigurationOutput,
        http_method = "PUT",
        http_path = "/tiering-configurations/{TieringConfigurationName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
