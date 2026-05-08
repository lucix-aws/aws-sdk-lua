



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("ssm.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("ssm.schemas")
local traits = require("smithy.traits")
local types = require("ssm.types")
local sdk_defaults = require("aws.sdk_defaults")
























































































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonSSM"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.1", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ssm", signing_region = c.region } }
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

function C:addTagsToResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddTagsToResource, input, options)
end

function C:associateOpsItemRelatedItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateOpsItemRelatedItem, input, options)
end

function C:cancelCommand(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelCommand, input, options)
end

function C:cancelMaintenanceWindowExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelMaintenanceWindowExecution, input, options)
end

function C:createActivation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateActivation, input, options)
end

function C:createAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAssociation, input, options)
end

function C:createAssociationBatch(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAssociationBatch, input, options)
end

function C:createDocument(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDocument, input, options)
end

function C:createMaintenanceWindow(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMaintenanceWindow, input, options)
end

function C:createOpsItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOpsItem, input, options)
end

function C:createOpsMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOpsMetadata, input, options)
end

function C:createPatchBaseline(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePatchBaseline, input, options)
end

function C:createResourceDataSync(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResourceDataSync, input, options)
end

function C:deleteActivation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteActivation, input, options)
end

function C:deleteAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAssociation, input, options)
end

function C:deleteDocument(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDocument, input, options)
end

function C:deleteInventory(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInventory, input, options)
end

function C:deleteMaintenanceWindow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMaintenanceWindow, input, options)
end

function C:deleteOpsItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOpsItem, input, options)
end

function C:deleteOpsMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOpsMetadata, input, options)
end

function C:deleteParameter(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteParameter, input, options)
end

function C:deleteParameters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteParameters, input, options)
end

function C:deletePatchBaseline(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePatchBaseline, input, options)
end

function C:deleteResourceDataSync(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourceDataSync, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deregisterManagedInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterManagedInstance, input, options)
end

function C:deregisterPatchBaselineForPatchGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterPatchBaselineForPatchGroup, input, options)
end

function C:deregisterTargetFromMaintenanceWindow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterTargetFromMaintenanceWindow, input, options)
end

function C:deregisterTaskFromMaintenanceWindow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterTaskFromMaintenanceWindow, input, options)
end

function C:describeActivations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeActivations, input, options)
end

function C:describeAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAssociation, input, options)
end

function C:describeAssociationExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAssociationExecutions, input, options)
end

function C:describeAssociationExecutionTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAssociationExecutionTargets, input, options)
end

function C:describeAutomationExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAutomationExecutions, input, options)
end

function C:describeAutomationStepExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAutomationStepExecutions, input, options)
end

function C:describeAvailablePatches(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAvailablePatches, input, options)
end

function C:describeDocument(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDocument, input, options)
end

function C:describeDocumentPermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDocumentPermission, input, options)
end

function C:describeEffectiveInstanceAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEffectiveInstanceAssociations, input, options)
end

function C:describeEffectivePatchesForPatchBaseline(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEffectivePatchesForPatchBaseline, input, options)
end

function C:describeInstanceAssociationsStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstanceAssociationsStatus, input, options)
end

function C:describeInstanceInformation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstanceInformation, input, options)
end

function C:describeInstancePatches(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstancePatches, input, options)
end

function C:describeInstancePatchStates(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstancePatchStates, input, options)
end

function C:describeInstancePatchStatesForPatchGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstancePatchStatesForPatchGroup, input, options)
end

function C:describeInstanceProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstanceProperties, input, options)
end

function C:describeInventoryDeletions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInventoryDeletions, input, options)
end

function C:describeMaintenanceWindowExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMaintenanceWindowExecutions, input, options)
end

function C:describeMaintenanceWindowExecutionTaskInvocations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMaintenanceWindowExecutionTaskInvocations, input, options)
end

function C:describeMaintenanceWindowExecutionTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMaintenanceWindowExecutionTasks, input, options)
end

function C:describeMaintenanceWindows(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMaintenanceWindows, input, options)
end

function C:describeMaintenanceWindowSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMaintenanceWindowSchedule, input, options)
end

function C:describeMaintenanceWindowsForTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMaintenanceWindowsForTarget, input, options)
end

function C:describeMaintenanceWindowTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMaintenanceWindowTargets, input, options)
end

function C:describeMaintenanceWindowTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMaintenanceWindowTasks, input, options)
end

function C:describeOpsItems(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOpsItems, input, options)
end

function C:describeParameters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeParameters, input, options)
end

function C:describePatchBaselines(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePatchBaselines, input, options)
end

function C:describePatchGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePatchGroups, input, options)
end

function C:describePatchGroupState(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePatchGroupState, input, options)
end

function C:describePatchProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePatchProperties, input, options)
end

function C:describeSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSessions, input, options)
end

function C:disassociateOpsItemRelatedItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateOpsItemRelatedItem, input, options)
end

function C:getAccessToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessToken, input, options)
end

function C:getAutomationExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAutomationExecution, input, options)
end

function C:getCalendarState(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCalendarState, input, options)
end

function C:getCommandInvocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCommandInvocation, input, options)
end

function C:getConnectionStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnectionStatus, input, options)
end

function C:getDefaultPatchBaseline(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDefaultPatchBaseline, input, options)
end

function C:getDeployablePatchSnapshotForInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeployablePatchSnapshotForInstance, input, options)
end

function C:getDocument(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDocument, input, options)
end

function C:getExecutionPreview(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetExecutionPreview, input, options)
end

function C:getInventory(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInventory, input, options)
end

function C:getInventorySchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInventorySchema, input, options)
end

function C:getMaintenanceWindow(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMaintenanceWindow, input, options)
end

function C:getMaintenanceWindowExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMaintenanceWindowExecution, input, options)
end

function C:getMaintenanceWindowExecutionTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMaintenanceWindowExecutionTask, input, options)
end

function C:getMaintenanceWindowExecutionTaskInvocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMaintenanceWindowExecutionTaskInvocation, input, options)
end

function C:getMaintenanceWindowTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMaintenanceWindowTask, input, options)
end

function C:getOpsItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOpsItem, input, options)
end

function C:getOpsMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOpsMetadata, input, options)
end

function C:getOpsSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOpsSummary, input, options)
end

function C:getParameter(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetParameter, input, options)
end

function C:getParameterHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetParameterHistory, input, options)
end

function C:getParameters(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetParameters, input, options)
end

function C:getParametersByPath(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetParametersByPath, input, options)
end

function C:getPatchBaseline(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPatchBaseline, input, options)
end

function C:getPatchBaselineForPatchGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPatchBaselineForPatchGroup, input, options)
end

function C:getResourcePolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicies, input, options)
end

function C:getServiceSetting(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceSetting, input, options)
end

function C:labelParameterVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.LabelParameterVersion, input, options)
end

function C:listAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssociations, input, options)
end

function C:listAssociationVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssociationVersions, input, options)
end

function C:listCommandInvocations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCommandInvocations, input, options)
end

function C:listCommands(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCommands, input, options)
end

function C:listComplianceItems(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListComplianceItems, input, options)
end

function C:listComplianceSummaries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListComplianceSummaries, input, options)
end

function C:listDocumentMetadataHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDocumentMetadataHistory, input, options)
end

function C:listDocuments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDocuments, input, options)
end

function C:listDocumentVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDocumentVersions, input, options)
end

function C:listInventoryEntries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInventoryEntries, input, options)
end

function C:listNodes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNodes, input, options)
end

function C:listNodesSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNodesSummary, input, options)
end

function C:listOpsItemEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOpsItemEvents, input, options)
end

function C:listOpsItemRelatedItems(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOpsItemRelatedItems, input, options)
end

function C:listOpsMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOpsMetadata, input, options)
end

function C:listResourceComplianceSummaries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceComplianceSummaries, input, options)
end

function C:listResourceDataSync(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceDataSync, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:modifyDocumentPermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyDocumentPermission, input, options)
end

function C:putComplianceItems(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutComplianceItems, input, options)
end

function C:putInventory(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutInventory, input, options)
end

function C:putParameter(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutParameter, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:registerDefaultPatchBaseline(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterDefaultPatchBaseline, input, options)
end

function C:registerPatchBaselineForPatchGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterPatchBaselineForPatchGroup, input, options)
end

function C:registerTargetWithMaintenanceWindow(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterTargetWithMaintenanceWindow, input, options)
end

function C:registerTaskWithMaintenanceWindow(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterTaskWithMaintenanceWindow, input, options)
end

function C:removeTagsFromResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveTagsFromResource, input, options)
end

function C:resetServiceSetting(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetServiceSetting, input, options)
end

function C:resumeSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResumeSession, input, options)
end

function C:sendAutomationSignal(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendAutomationSignal, input, options)
end

function C:sendCommand(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendCommand, input, options)
end

function C:startAccessRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAccessRequest, input, options)
end

function C:startAssociationsOnce(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAssociationsOnce, input, options)
end

function C:startAutomationExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAutomationExecution, input, options)
end

function C:startChangeRequestExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartChangeRequestExecution, input, options)
end

function C:startExecutionPreview(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartExecutionPreview, input, options)
end

function C:startSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSession, input, options)
end

function C:stopAutomationExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopAutomationExecution, input, options)
end

function C:terminateSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.TerminateSession, input, options)
end

function C:unlabelParameterVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UnlabelParameterVersion, input, options)
end

function C:updateAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAssociation, input, options)
end

function C:updateAssociationStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAssociationStatus, input, options)
end

function C:updateDocument(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDocument, input, options)
end

function C:updateDocumentDefaultVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDocumentDefaultVersion, input, options)
end

function C:updateDocumentMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDocumentMetadata, input, options)
end

function C:updateMaintenanceWindow(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMaintenanceWindow, input, options)
end

function C:updateMaintenanceWindowTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMaintenanceWindowTarget, input, options)
end

function C:updateMaintenanceWindowTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMaintenanceWindowTask, input, options)
end

function C:updateManagedInstanceRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateManagedInstanceRole, input, options)
end

function C:updateOpsItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateOpsItem, input, options)
end

function C:updateOpsMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateOpsMetadata, input, options)
end

function C:updatePatchBaseline(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePatchBaseline, input, options)
end

function C:updateResourceDataSync(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResourceDataSync, input, options)
end

function C:updateServiceSetting(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateServiceSetting, input, options)
end

return M
