local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ssm.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("ssm.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonSSM"
    cfg.signing_name = "ssm"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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

function Client:addTagsToResource(input, options)
    return self:invokeOperation(input, {
        name = "AddTagsToResource",
        input_schema = types.AddTagsToResourceInput,
        output_schema = types.AddTagsToResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateOpsItemRelatedItem(input, options)
    return self:invokeOperation(input, {
        name = "AssociateOpsItemRelatedItem",
        input_schema = types.AssociateOpsItemRelatedItemInput,
        output_schema = types.AssociateOpsItemRelatedItemOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelCommand(input, options)
    return self:invokeOperation(input, {
        name = "CancelCommand",
        input_schema = types.CancelCommandInput,
        output_schema = types.CancelCommandOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelMaintenanceWindowExecution(input, options)
    return self:invokeOperation(input, {
        name = "CancelMaintenanceWindowExecution",
        input_schema = types.CancelMaintenanceWindowExecutionInput,
        output_schema = types.CancelMaintenanceWindowExecutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createActivation(input, options)
    return self:invokeOperation(input, {
        name = "CreateActivation",
        input_schema = types.CreateActivationInput,
        output_schema = types.CreateActivationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateAssociation",
        input_schema = types.CreateAssociationInput,
        output_schema = types.CreateAssociationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createAssociationBatch(input, options)
    return self:invokeOperation(input, {
        name = "CreateAssociationBatch",
        input_schema = types.CreateAssociationBatchInput,
        output_schema = types.CreateAssociationBatchOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDocument(input, options)
    return self:invokeOperation(input, {
        name = "CreateDocument",
        input_schema = types.CreateDocumentInput,
        output_schema = types.CreateDocumentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createMaintenanceWindow(input, options)
    return self:invokeOperation(input, {
        name = "CreateMaintenanceWindow",
        input_schema = types.CreateMaintenanceWindowInput,
        output_schema = types.CreateMaintenanceWindowOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createOpsItem(input, options)
    return self:invokeOperation(input, {
        name = "CreateOpsItem",
        input_schema = types.CreateOpsItemInput,
        output_schema = types.CreateOpsItemOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createOpsMetadata(input, options)
    return self:invokeOperation(input, {
        name = "CreateOpsMetadata",
        input_schema = types.CreateOpsMetadataInput,
        output_schema = types.CreateOpsMetadataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createPatchBaseline(input, options)
    return self:invokeOperation(input, {
        name = "CreatePatchBaseline",
        input_schema = types.CreatePatchBaselineInput,
        output_schema = types.CreatePatchBaselineOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createResourceDataSync(input, options)
    return self:invokeOperation(input, {
        name = "CreateResourceDataSync",
        input_schema = types.CreateResourceDataSyncInput,
        output_schema = types.CreateResourceDataSyncOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteActivation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteActivation",
        input_schema = types.DeleteActivationInput,
        output_schema = types.DeleteActivationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssociation",
        input_schema = types.DeleteAssociationInput,
        output_schema = types.DeleteAssociationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDocument(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDocument",
        input_schema = types.DeleteDocumentInput,
        output_schema = types.DeleteDocumentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteInventory(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInventory",
        input_schema = types.DeleteInventoryInput,
        output_schema = types.DeleteInventoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteMaintenanceWindow(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMaintenanceWindow",
        input_schema = types.DeleteMaintenanceWindowInput,
        output_schema = types.DeleteMaintenanceWindowOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteOpsItem(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOpsItem",
        input_schema = types.DeleteOpsItemInput,
        output_schema = types.DeleteOpsItemOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteOpsMetadata(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOpsMetadata",
        input_schema = types.DeleteOpsMetadataInput,
        output_schema = types.DeleteOpsMetadataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteParameter(input, options)
    return self:invokeOperation(input, {
        name = "DeleteParameter",
        input_schema = types.DeleteParameterInput,
        output_schema = types.DeleteParameterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteParameters(input, options)
    return self:invokeOperation(input, {
        name = "DeleteParameters",
        input_schema = types.DeleteParametersInput,
        output_schema = types.DeleteParametersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deletePatchBaseline(input, options)
    return self:invokeOperation(input, {
        name = "DeletePatchBaseline",
        input_schema = types.DeletePatchBaselineInput,
        output_schema = types.DeletePatchBaselineOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteResourceDataSync(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourceDataSync",
        input_schema = types.DeleteResourceDataSyncInput,
        output_schema = types.DeleteResourceDataSyncOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deregisterManagedInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterManagedInstance",
        input_schema = types.DeregisterManagedInstanceInput,
        output_schema = types.DeregisterManagedInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deregisterPatchBaselineForPatchGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterPatchBaselineForPatchGroup",
        input_schema = types.DeregisterPatchBaselineForPatchGroupInput,
        output_schema = types.DeregisterPatchBaselineForPatchGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deregisterTargetFromMaintenanceWindow(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterTargetFromMaintenanceWindow",
        input_schema = types.DeregisterTargetFromMaintenanceWindowInput,
        output_schema = types.DeregisterTargetFromMaintenanceWindowOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deregisterTaskFromMaintenanceWindow(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterTaskFromMaintenanceWindow",
        input_schema = types.DeregisterTaskFromMaintenanceWindowInput,
        output_schema = types.DeregisterTaskFromMaintenanceWindowOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeActivations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeActivations",
        input_schema = types.DescribeActivationsInput,
        output_schema = types.DescribeActivationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAssociation",
        input_schema = types.DescribeAssociationInput,
        output_schema = types.DescribeAssociationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAssociationExecutions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAssociationExecutions",
        input_schema = types.DescribeAssociationExecutionsInput,
        output_schema = types.DescribeAssociationExecutionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAssociationExecutionTargets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAssociationExecutionTargets",
        input_schema = types.DescribeAssociationExecutionTargetsInput,
        output_schema = types.DescribeAssociationExecutionTargetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAutomationExecutions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAutomationExecutions",
        input_schema = types.DescribeAutomationExecutionsInput,
        output_schema = types.DescribeAutomationExecutionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAutomationStepExecutions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAutomationStepExecutions",
        input_schema = types.DescribeAutomationStepExecutionsInput,
        output_schema = types.DescribeAutomationStepExecutionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAvailablePatches(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAvailablePatches",
        input_schema = types.DescribeAvailablePatchesInput,
        output_schema = types.DescribeAvailablePatchesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDocument(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDocument",
        input_schema = types.DescribeDocumentInput,
        output_schema = types.DescribeDocumentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDocumentPermission(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDocumentPermission",
        input_schema = types.DescribeDocumentPermissionInput,
        output_schema = types.DescribeDocumentPermissionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeEffectiveInstanceAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEffectiveInstanceAssociations",
        input_schema = types.DescribeEffectiveInstanceAssociationsInput,
        output_schema = types.DescribeEffectiveInstanceAssociationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeEffectivePatchesForPatchBaseline(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEffectivePatchesForPatchBaseline",
        input_schema = types.DescribeEffectivePatchesForPatchBaselineInput,
        output_schema = types.DescribeEffectivePatchesForPatchBaselineOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeInstanceAssociationsStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceAssociationsStatus",
        input_schema = types.DescribeInstanceAssociationsStatusInput,
        output_schema = types.DescribeInstanceAssociationsStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeInstanceInformation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceInformation",
        input_schema = types.DescribeInstanceInformationInput,
        output_schema = types.DescribeInstanceInformationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeInstancePatches(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstancePatches",
        input_schema = types.DescribeInstancePatchesInput,
        output_schema = types.DescribeInstancePatchesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeInstancePatchStates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstancePatchStates",
        input_schema = types.DescribeInstancePatchStatesInput,
        output_schema = types.DescribeInstancePatchStatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeInstancePatchStatesForPatchGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstancePatchStatesForPatchGroup",
        input_schema = types.DescribeInstancePatchStatesForPatchGroupInput,
        output_schema = types.DescribeInstancePatchStatesForPatchGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeInstanceProperties(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceProperties",
        input_schema = types.DescribeInstancePropertiesInput,
        output_schema = types.DescribeInstancePropertiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeInventoryDeletions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInventoryDeletions",
        input_schema = types.DescribeInventoryDeletionsInput,
        output_schema = types.DescribeInventoryDeletionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeMaintenanceWindowExecutions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMaintenanceWindowExecutions",
        input_schema = types.DescribeMaintenanceWindowExecutionsInput,
        output_schema = types.DescribeMaintenanceWindowExecutionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeMaintenanceWindowExecutionTaskInvocations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMaintenanceWindowExecutionTaskInvocations",
        input_schema = types.DescribeMaintenanceWindowExecutionTaskInvocationsInput,
        output_schema = types.DescribeMaintenanceWindowExecutionTaskInvocationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeMaintenanceWindowExecutionTasks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMaintenanceWindowExecutionTasks",
        input_schema = types.DescribeMaintenanceWindowExecutionTasksInput,
        output_schema = types.DescribeMaintenanceWindowExecutionTasksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeMaintenanceWindows(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMaintenanceWindows",
        input_schema = types.DescribeMaintenanceWindowsInput,
        output_schema = types.DescribeMaintenanceWindowsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeMaintenanceWindowSchedule(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMaintenanceWindowSchedule",
        input_schema = types.DescribeMaintenanceWindowScheduleInput,
        output_schema = types.DescribeMaintenanceWindowScheduleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeMaintenanceWindowsForTarget(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMaintenanceWindowsForTarget",
        input_schema = types.DescribeMaintenanceWindowsForTargetInput,
        output_schema = types.DescribeMaintenanceWindowsForTargetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeMaintenanceWindowTargets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMaintenanceWindowTargets",
        input_schema = types.DescribeMaintenanceWindowTargetsInput,
        output_schema = types.DescribeMaintenanceWindowTargetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeMaintenanceWindowTasks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMaintenanceWindowTasks",
        input_schema = types.DescribeMaintenanceWindowTasksInput,
        output_schema = types.DescribeMaintenanceWindowTasksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeOpsItems(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOpsItems",
        input_schema = types.DescribeOpsItemsInput,
        output_schema = types.DescribeOpsItemsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeParameters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeParameters",
        input_schema = types.DescribeParametersInput,
        output_schema = types.DescribeParametersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describePatchBaselines(input, options)
    return self:invokeOperation(input, {
        name = "DescribePatchBaselines",
        input_schema = types.DescribePatchBaselinesInput,
        output_schema = types.DescribePatchBaselinesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describePatchGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribePatchGroups",
        input_schema = types.DescribePatchGroupsInput,
        output_schema = types.DescribePatchGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describePatchGroupState(input, options)
    return self:invokeOperation(input, {
        name = "DescribePatchGroupState",
        input_schema = types.DescribePatchGroupStateInput,
        output_schema = types.DescribePatchGroupStateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describePatchProperties(input, options)
    return self:invokeOperation(input, {
        name = "DescribePatchProperties",
        input_schema = types.DescribePatchPropertiesInput,
        output_schema = types.DescribePatchPropertiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSessions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSessions",
        input_schema = types.DescribeSessionsInput,
        output_schema = types.DescribeSessionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateOpsItemRelatedItem(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateOpsItemRelatedItem",
        input_schema = types.DisassociateOpsItemRelatedItemInput,
        output_schema = types.DisassociateOpsItemRelatedItemOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAccessToken(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessToken",
        input_schema = types.GetAccessTokenInput,
        output_schema = types.GetAccessTokenOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAutomationExecution(input, options)
    return self:invokeOperation(input, {
        name = "GetAutomationExecution",
        input_schema = types.GetAutomationExecutionInput,
        output_schema = types.GetAutomationExecutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getCalendarState(input, options)
    return self:invokeOperation(input, {
        name = "GetCalendarState",
        input_schema = types.GetCalendarStateInput,
        output_schema = types.GetCalendarStateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getCommandInvocation(input, options)
    return self:invokeOperation(input, {
        name = "GetCommandInvocation",
        input_schema = types.GetCommandInvocationInput,
        output_schema = types.GetCommandInvocationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getConnectionStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectionStatus",
        input_schema = types.GetConnectionStatusInput,
        output_schema = types.GetConnectionStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDefaultPatchBaseline(input, options)
    return self:invokeOperation(input, {
        name = "GetDefaultPatchBaseline",
        input_schema = types.GetDefaultPatchBaselineInput,
        output_schema = types.GetDefaultPatchBaselineOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDeployablePatchSnapshotForInstance(input, options)
    return self:invokeOperation(input, {
        name = "GetDeployablePatchSnapshotForInstance",
        input_schema = types.GetDeployablePatchSnapshotForInstanceInput,
        output_schema = types.GetDeployablePatchSnapshotForInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDocument(input, options)
    return self:invokeOperation(input, {
        name = "GetDocument",
        input_schema = types.GetDocumentInput,
        output_schema = types.GetDocumentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getExecutionPreview(input, options)
    return self:invokeOperation(input, {
        name = "GetExecutionPreview",
        input_schema = types.GetExecutionPreviewInput,
        output_schema = types.GetExecutionPreviewOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getInventory(input, options)
    return self:invokeOperation(input, {
        name = "GetInventory",
        input_schema = types.GetInventoryInput,
        output_schema = types.GetInventoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getInventorySchema(input, options)
    return self:invokeOperation(input, {
        name = "GetInventorySchema",
        input_schema = types.GetInventorySchemaInput,
        output_schema = types.GetInventorySchemaOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getMaintenanceWindow(input, options)
    return self:invokeOperation(input, {
        name = "GetMaintenanceWindow",
        input_schema = types.GetMaintenanceWindowInput,
        output_schema = types.GetMaintenanceWindowOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getMaintenanceWindowExecution(input, options)
    return self:invokeOperation(input, {
        name = "GetMaintenanceWindowExecution",
        input_schema = types.GetMaintenanceWindowExecutionInput,
        output_schema = types.GetMaintenanceWindowExecutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getMaintenanceWindowExecutionTask(input, options)
    return self:invokeOperation(input, {
        name = "GetMaintenanceWindowExecutionTask",
        input_schema = types.GetMaintenanceWindowExecutionTaskInput,
        output_schema = types.GetMaintenanceWindowExecutionTaskOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getMaintenanceWindowExecutionTaskInvocation(input, options)
    return self:invokeOperation(input, {
        name = "GetMaintenanceWindowExecutionTaskInvocation",
        input_schema = types.GetMaintenanceWindowExecutionTaskInvocationInput,
        output_schema = types.GetMaintenanceWindowExecutionTaskInvocationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getMaintenanceWindowTask(input, options)
    return self:invokeOperation(input, {
        name = "GetMaintenanceWindowTask",
        input_schema = types.GetMaintenanceWindowTaskInput,
        output_schema = types.GetMaintenanceWindowTaskOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getOpsItem(input, options)
    return self:invokeOperation(input, {
        name = "GetOpsItem",
        input_schema = types.GetOpsItemInput,
        output_schema = types.GetOpsItemOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getOpsMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetOpsMetadata",
        input_schema = types.GetOpsMetadataInput,
        output_schema = types.GetOpsMetadataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getOpsSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetOpsSummary",
        input_schema = types.GetOpsSummaryInput,
        output_schema = types.GetOpsSummaryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getParameter(input, options)
    return self:invokeOperation(input, {
        name = "GetParameter",
        input_schema = types.GetParameterInput,
        output_schema = types.GetParameterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getParameterHistory(input, options)
    return self:invokeOperation(input, {
        name = "GetParameterHistory",
        input_schema = types.GetParameterHistoryInput,
        output_schema = types.GetParameterHistoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getParameters(input, options)
    return self:invokeOperation(input, {
        name = "GetParameters",
        input_schema = types.GetParametersInput,
        output_schema = types.GetParametersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getParametersByPath(input, options)
    return self:invokeOperation(input, {
        name = "GetParametersByPath",
        input_schema = types.GetParametersByPathInput,
        output_schema = types.GetParametersByPathOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getPatchBaseline(input, options)
    return self:invokeOperation(input, {
        name = "GetPatchBaseline",
        input_schema = types.GetPatchBaselineInput,
        output_schema = types.GetPatchBaselineOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getPatchBaselineForPatchGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetPatchBaselineForPatchGroup",
        input_schema = types.GetPatchBaselineForPatchGroupInput,
        output_schema = types.GetPatchBaselineForPatchGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getResourcePolicies(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicies",
        input_schema = types.GetResourcePoliciesInput,
        output_schema = types.GetResourcePoliciesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getServiceSetting(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceSetting",
        input_schema = types.GetServiceSettingInput,
        output_schema = types.GetServiceSettingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:labelParameterVersion(input, options)
    return self:invokeOperation(input, {
        name = "LabelParameterVersion",
        input_schema = types.LabelParameterVersionInput,
        output_schema = types.LabelParameterVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociations",
        input_schema = types.ListAssociationsInput,
        output_schema = types.ListAssociationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAssociationVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociationVersions",
        input_schema = types.ListAssociationVersionsInput,
        output_schema = types.ListAssociationVersionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listCommandInvocations(input, options)
    return self:invokeOperation(input, {
        name = "ListCommandInvocations",
        input_schema = types.ListCommandInvocationsInput,
        output_schema = types.ListCommandInvocationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listCommands(input, options)
    return self:invokeOperation(input, {
        name = "ListCommands",
        input_schema = types.ListCommandsInput,
        output_schema = types.ListCommandsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listComplianceItems(input, options)
    return self:invokeOperation(input, {
        name = "ListComplianceItems",
        input_schema = types.ListComplianceItemsInput,
        output_schema = types.ListComplianceItemsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listComplianceSummaries(input, options)
    return self:invokeOperation(input, {
        name = "ListComplianceSummaries",
        input_schema = types.ListComplianceSummariesInput,
        output_schema = types.ListComplianceSummariesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDocumentMetadataHistory(input, options)
    return self:invokeOperation(input, {
        name = "ListDocumentMetadataHistory",
        input_schema = types.ListDocumentMetadataHistoryInput,
        output_schema = types.ListDocumentMetadataHistoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDocuments(input, options)
    return self:invokeOperation(input, {
        name = "ListDocuments",
        input_schema = types.ListDocumentsInput,
        output_schema = types.ListDocumentsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDocumentVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListDocumentVersions",
        input_schema = types.ListDocumentVersionsInput,
        output_schema = types.ListDocumentVersionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listInventoryEntries(input, options)
    return self:invokeOperation(input, {
        name = "ListInventoryEntries",
        input_schema = types.ListInventoryEntriesInput,
        output_schema = types.ListInventoryEntriesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listNodes(input, options)
    return self:invokeOperation(input, {
        name = "ListNodes",
        input_schema = types.ListNodesInput,
        output_schema = types.ListNodesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listNodesSummary(input, options)
    return self:invokeOperation(input, {
        name = "ListNodesSummary",
        input_schema = types.ListNodesSummaryInput,
        output_schema = types.ListNodesSummaryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listOpsItemEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListOpsItemEvents",
        input_schema = types.ListOpsItemEventsInput,
        output_schema = types.ListOpsItemEventsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listOpsItemRelatedItems(input, options)
    return self:invokeOperation(input, {
        name = "ListOpsItemRelatedItems",
        input_schema = types.ListOpsItemRelatedItemsInput,
        output_schema = types.ListOpsItemRelatedItemsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listOpsMetadata(input, options)
    return self:invokeOperation(input, {
        name = "ListOpsMetadata",
        input_schema = types.ListOpsMetadataInput,
        output_schema = types.ListOpsMetadataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listResourceComplianceSummaries(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceComplianceSummaries",
        input_schema = types.ListResourceComplianceSummariesInput,
        output_schema = types.ListResourceComplianceSummariesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listResourceDataSync(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceDataSync",
        input_schema = types.ListResourceDataSyncInput,
        output_schema = types.ListResourceDataSyncOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyDocumentPermission(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDocumentPermission",
        input_schema = types.ModifyDocumentPermissionInput,
        output_schema = types.ModifyDocumentPermissionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putComplianceItems(input, options)
    return self:invokeOperation(input, {
        name = "PutComplianceItems",
        input_schema = types.PutComplianceItemsInput,
        output_schema = types.PutComplianceItemsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putInventory(input, options)
    return self:invokeOperation(input, {
        name = "PutInventory",
        input_schema = types.PutInventoryInput,
        output_schema = types.PutInventoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putParameter(input, options)
    return self:invokeOperation(input, {
        name = "PutParameter",
        input_schema = types.PutParameterInput,
        output_schema = types.PutParameterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerDefaultPatchBaseline(input, options)
    return self:invokeOperation(input, {
        name = "RegisterDefaultPatchBaseline",
        input_schema = types.RegisterDefaultPatchBaselineInput,
        output_schema = types.RegisterDefaultPatchBaselineOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerPatchBaselineForPatchGroup(input, options)
    return self:invokeOperation(input, {
        name = "RegisterPatchBaselineForPatchGroup",
        input_schema = types.RegisterPatchBaselineForPatchGroupInput,
        output_schema = types.RegisterPatchBaselineForPatchGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerTargetWithMaintenanceWindow(input, options)
    return self:invokeOperation(input, {
        name = "RegisterTargetWithMaintenanceWindow",
        input_schema = types.RegisterTargetWithMaintenanceWindowInput,
        output_schema = types.RegisterTargetWithMaintenanceWindowOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerTaskWithMaintenanceWindow(input, options)
    return self:invokeOperation(input, {
        name = "RegisterTaskWithMaintenanceWindow",
        input_schema = types.RegisterTaskWithMaintenanceWindowInput,
        output_schema = types.RegisterTaskWithMaintenanceWindowOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:removeTagsFromResource(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTagsFromResource",
        input_schema = types.RemoveTagsFromResourceInput,
        output_schema = types.RemoveTagsFromResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:resetServiceSetting(input, options)
    return self:invokeOperation(input, {
        name = "ResetServiceSetting",
        input_schema = types.ResetServiceSettingInput,
        output_schema = types.ResetServiceSettingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:resumeSession(input, options)
    return self:invokeOperation(input, {
        name = "ResumeSession",
        input_schema = types.ResumeSessionInput,
        output_schema = types.ResumeSessionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:sendAutomationSignal(input, options)
    return self:invokeOperation(input, {
        name = "SendAutomationSignal",
        input_schema = types.SendAutomationSignalInput,
        output_schema = types.SendAutomationSignalOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:sendCommand(input, options)
    return self:invokeOperation(input, {
        name = "SendCommand",
        input_schema = types.SendCommandInput,
        output_schema = types.SendCommandOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startAccessRequest(input, options)
    return self:invokeOperation(input, {
        name = "StartAccessRequest",
        input_schema = types.StartAccessRequestInput,
        output_schema = types.StartAccessRequestOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startAssociationsOnce(input, options)
    return self:invokeOperation(input, {
        name = "StartAssociationsOnce",
        input_schema = types.StartAssociationsOnceInput,
        output_schema = types.StartAssociationsOnceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startAutomationExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartAutomationExecution",
        input_schema = types.StartAutomationExecutionInput,
        output_schema = types.StartAutomationExecutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startChangeRequestExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartChangeRequestExecution",
        input_schema = types.StartChangeRequestExecutionInput,
        output_schema = types.StartChangeRequestExecutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startExecutionPreview(input, options)
    return self:invokeOperation(input, {
        name = "StartExecutionPreview",
        input_schema = types.StartExecutionPreviewInput,
        output_schema = types.StartExecutionPreviewOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startSession(input, options)
    return self:invokeOperation(input, {
        name = "StartSession",
        input_schema = types.StartSessionInput,
        output_schema = types.StartSessionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopAutomationExecution(input, options)
    return self:invokeOperation(input, {
        name = "StopAutomationExecution",
        input_schema = types.StopAutomationExecutionInput,
        output_schema = types.StopAutomationExecutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:terminateSession(input, options)
    return self:invokeOperation(input, {
        name = "TerminateSession",
        input_schema = types.TerminateSessionInput,
        output_schema = types.TerminateSessionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:unlabelParameterVersion(input, options)
    return self:invokeOperation(input, {
        name = "UnlabelParameterVersion",
        input_schema = types.UnlabelParameterVersionInput,
        output_schema = types.UnlabelParameterVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssociation",
        input_schema = types.UpdateAssociationInput,
        output_schema = types.UpdateAssociationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateAssociationStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssociationStatus",
        input_schema = types.UpdateAssociationStatusInput,
        output_schema = types.UpdateAssociationStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateDocument(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDocument",
        input_schema = types.UpdateDocumentInput,
        output_schema = types.UpdateDocumentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateDocumentDefaultVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDocumentDefaultVersion",
        input_schema = types.UpdateDocumentDefaultVersionInput,
        output_schema = types.UpdateDocumentDefaultVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateDocumentMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDocumentMetadata",
        input_schema = types.UpdateDocumentMetadataInput,
        output_schema = types.UpdateDocumentMetadataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateMaintenanceWindow(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMaintenanceWindow",
        input_schema = types.UpdateMaintenanceWindowInput,
        output_schema = types.UpdateMaintenanceWindowOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateMaintenanceWindowTarget(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMaintenanceWindowTarget",
        input_schema = types.UpdateMaintenanceWindowTargetInput,
        output_schema = types.UpdateMaintenanceWindowTargetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateMaintenanceWindowTask(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMaintenanceWindowTask",
        input_schema = types.UpdateMaintenanceWindowTaskInput,
        output_schema = types.UpdateMaintenanceWindowTaskOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateManagedInstanceRole(input, options)
    return self:invokeOperation(input, {
        name = "UpdateManagedInstanceRole",
        input_schema = types.UpdateManagedInstanceRoleInput,
        output_schema = types.UpdateManagedInstanceRoleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateOpsItem(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOpsItem",
        input_schema = types.UpdateOpsItemInput,
        output_schema = types.UpdateOpsItemOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateOpsMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOpsMetadata",
        input_schema = types.UpdateOpsMetadataInput,
        output_schema = types.UpdateOpsMetadataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updatePatchBaseline(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePatchBaseline",
        input_schema = types.UpdatePatchBaselineInput,
        output_schema = types.UpdatePatchBaselineOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateResourceDataSync(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResourceDataSync",
        input_schema = types.UpdateResourceDataSyncInput,
        output_schema = types.UpdateResourceDataSyncOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateServiceSetting(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceSetting",
        input_schema = types.UpdateServiceSettingInput,
        output_schema = types.UpdateServiceSettingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
