



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("backup.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("backup.schemas")
local traits = require("smithy.traits")
local types = require("backup.types")
local sdk_defaults = require("aws.sdk_defaults")


















































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "CryoControllerUserManager"
   if not c.protocol then c.protocol = restjson_protocol.new() end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "backup", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:associateBackupVaultMpaApprovalTeam(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateBackupVaultMpaApprovalTeam, input, options)
end

function C:cancelLegalHold(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelLegalHold, input, options)
end

function C:createBackupPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBackupPlan, input, options)
end

function C:createBackupSelection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBackupSelection, input, options)
end

function C:createBackupVault(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBackupVault, input, options)
end

function C:createFramework(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFramework, input, options)
end

function C:createLegalHold(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLegalHold, input, options)
end

function C:createLogicallyAirGappedBackupVault(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLogicallyAirGappedBackupVault, input, options)
end

function C:createReportPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateReportPlan, input, options)
end

function C:createRestoreAccessBackupVault(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRestoreAccessBackupVault, input, options)
end

function C:createRestoreTestingPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRestoreTestingPlan, input, options)
end

function C:createRestoreTestingSelection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRestoreTestingSelection, input, options)
end

function C:createTieringConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTieringConfiguration, input, options)
end

function C:deleteBackupPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBackupPlan, input, options)
end

function C:deleteBackupSelection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBackupSelection, input, options)
end

function C:deleteBackupVault(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBackupVault, input, options)
end

function C:deleteBackupVaultAccessPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBackupVaultAccessPolicy, input, options)
end

function C:deleteBackupVaultLockConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBackupVaultLockConfiguration, input, options)
end

function C:deleteBackupVaultNotifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBackupVaultNotifications, input, options)
end

function C:deleteFramework(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFramework, input, options)
end

function C:deleteRecoveryPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRecoveryPoint, input, options)
end

function C:deleteReportPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteReportPlan, input, options)
end

function C:deleteRestoreTestingPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRestoreTestingPlan, input, options)
end

function C:deleteRestoreTestingSelection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRestoreTestingSelection, input, options)
end

function C:deleteTieringConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTieringConfiguration, input, options)
end

function C:describeBackupJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBackupJob, input, options)
end

function C:describeBackupVault(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBackupVault, input, options)
end

function C:describeCopyJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCopyJob, input, options)
end

function C:describeFramework(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFramework, input, options)
end

function C:describeGlobalSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGlobalSettings, input, options)
end

function C:describeProtectedResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProtectedResource, input, options)
end

function C:describeRecoveryPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRecoveryPoint, input, options)
end

function C:describeRegionSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRegionSettings, input, options)
end

function C:describeReportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReportJob, input, options)
end

function C:describeReportPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReportPlan, input, options)
end

function C:describeRestoreJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRestoreJob, input, options)
end

function C:describeScanJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeScanJob, input, options)
end

function C:disassociateBackupVaultMpaApprovalTeam(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateBackupVaultMpaApprovalTeam, input, options)
end

function C:disassociateRecoveryPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateRecoveryPoint, input, options)
end

function C:disassociateRecoveryPointFromParent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateRecoveryPointFromParent, input, options)
end

function C:exportBackupPlanTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportBackupPlanTemplate, input, options)
end

function C:getBackupPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBackupPlan, input, options)
end

function C:getBackupPlanFromJSON(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBackupPlanFromJSON, input, options)
end

function C:getBackupPlanFromTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBackupPlanFromTemplate, input, options)
end

function C:getBackupSelection(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBackupSelection, input, options)
end

function C:getBackupVaultAccessPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBackupVaultAccessPolicy, input, options)
end

function C:getBackupVaultNotifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBackupVaultNotifications, input, options)
end

function C:getLegalHold(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLegalHold, input, options)
end

function C:getRecoveryPointIndexDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRecoveryPointIndexDetails, input, options)
end

function C:getRecoveryPointRestoreMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRecoveryPointRestoreMetadata, input, options)
end

function C:getRestoreJobMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRestoreJobMetadata, input, options)
end

function C:getRestoreTestingInferredMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRestoreTestingInferredMetadata, input, options)
end

function C:getRestoreTestingPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRestoreTestingPlan, input, options)
end

function C:getRestoreTestingSelection(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRestoreTestingSelection, input, options)
end

function C:getSupportedResourceTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSupportedResourceTypes, input, options)
end

function C:getTieringConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTieringConfiguration, input, options)
end

function C:listBackupJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBackupJobs, input, options)
end

function C:listBackupJobSummaries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBackupJobSummaries, input, options)
end

function C:listBackupPlans(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBackupPlans, input, options)
end

function C:listBackupPlanTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBackupPlanTemplates, input, options)
end

function C:listBackupPlanVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBackupPlanVersions, input, options)
end

function C:listBackupSelections(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBackupSelections, input, options)
end

function C:listBackupVaults(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBackupVaults, input, options)
end

function C:listCopyJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCopyJobs, input, options)
end

function C:listCopyJobSummaries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCopyJobSummaries, input, options)
end

function C:listFrameworks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFrameworks, input, options)
end

function C:listIndexedRecoveryPoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIndexedRecoveryPoints, input, options)
end

function C:listLegalHolds(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLegalHolds, input, options)
end

function C:listProtectedResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProtectedResources, input, options)
end

function C:listProtectedResourcesByBackupVault(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProtectedResourcesByBackupVault, input, options)
end

function C:listRecoveryPointsByBackupVault(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecoveryPointsByBackupVault, input, options)
end

function C:listRecoveryPointsByLegalHold(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecoveryPointsByLegalHold, input, options)
end

function C:listRecoveryPointsByResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecoveryPointsByResource, input, options)
end

function C:listReportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReportJobs, input, options)
end

function C:listReportPlans(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReportPlans, input, options)
end

function C:listRestoreAccessBackupVaults(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRestoreAccessBackupVaults, input, options)
end

function C:listRestoreJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRestoreJobs, input, options)
end

function C:listRestoreJobsByProtectedResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRestoreJobsByProtectedResource, input, options)
end

function C:listRestoreJobSummaries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRestoreJobSummaries, input, options)
end

function C:listRestoreTestingPlans(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRestoreTestingPlans, input, options)
end

function C:listRestoreTestingSelections(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRestoreTestingSelections, input, options)
end

function C:listScanJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListScanJobs, input, options)
end

function C:listScanJobSummaries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListScanJobSummaries, input, options)
end

function C:listTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTags, input, options)
end

function C:listTieringConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTieringConfigurations, input, options)
end

function C:putBackupVaultAccessPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBackupVaultAccessPolicy, input, options)
end

function C:putBackupVaultLockConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBackupVaultLockConfiguration, input, options)
end

function C:putBackupVaultNotifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBackupVaultNotifications, input, options)
end

function C:putRestoreValidationResult(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRestoreValidationResult, input, options)
end

function C:revokeRestoreAccessBackupVault(input, options)
   return self:invokeOperation(schemas.Service, schemas.RevokeRestoreAccessBackupVault, input, options)
end

function C:startBackupJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartBackupJob, input, options)
end

function C:startCopyJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartCopyJob, input, options)
end

function C:startReportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartReportJob, input, options)
end

function C:startRestoreJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartRestoreJob, input, options)
end

function C:startScanJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartScanJob, input, options)
end

function C:stopBackupJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopBackupJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateBackupPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBackupPlan, input, options)
end

function C:updateFramework(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFramework, input, options)
end

function C:updateGlobalSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGlobalSettings, input, options)
end

function C:updateRecoveryPointIndexSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRecoveryPointIndexSettings, input, options)
end

function C:updateRecoveryPointLifecycle(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRecoveryPointLifecycle, input, options)
end

function C:updateRegionSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRegionSettings, input, options)
end

function C:updateReportPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateReportPlan, input, options)
end

function C:updateRestoreTestingPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRestoreTestingPlan, input, options)
end

function C:updateRestoreTestingSelection(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRestoreTestingSelection, input, options)
end

function C:updateTieringConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTieringConfiguration, input, options)
end

return M
