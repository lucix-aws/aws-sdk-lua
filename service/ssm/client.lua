local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ssm.endpoint_rules")
local schemas = require("ssm.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonSSM"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ssm", signing_region = cfg.region } }
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

function Client:addTagsToResource(input, options)
    return self:invokeOperation(input, {
        name = "AddTagsToResource",
        input_schema = schemas.AddTagsToResourceInput,
        output_schema = schemas.AddTagsToResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateOpsItemRelatedItem(input, options)
    return self:invokeOperation(input, {
        name = "AssociateOpsItemRelatedItem",
        input_schema = schemas.AssociateOpsItemRelatedItemInput,
        output_schema = schemas.AssociateOpsItemRelatedItemOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelCommand(input, options)
    return self:invokeOperation(input, {
        name = "CancelCommand",
        input_schema = schemas.CancelCommandInput,
        output_schema = schemas.CancelCommandOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelMaintenanceWindowExecution(input, options)
    return self:invokeOperation(input, {
        name = "CancelMaintenanceWindowExecution",
        input_schema = schemas.CancelMaintenanceWindowExecutionInput,
        output_schema = schemas.CancelMaintenanceWindowExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createActivation(input, options)
    return self:invokeOperation(input, {
        name = "CreateActivation",
        input_schema = schemas.CreateActivationInput,
        output_schema = schemas.CreateActivationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateAssociation",
        input_schema = schemas.CreateAssociationInput,
        output_schema = schemas.CreateAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAssociationBatch(input, options)
    return self:invokeOperation(input, {
        name = "CreateAssociationBatch",
        input_schema = schemas.CreateAssociationBatchInput,
        output_schema = schemas.CreateAssociationBatchOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDocument(input, options)
    return self:invokeOperation(input, {
        name = "CreateDocument",
        input_schema = schemas.CreateDocumentInput,
        output_schema = schemas.CreateDocumentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMaintenanceWindow(input, options)
    return self:invokeOperation(input, {
        name = "CreateMaintenanceWindow",
        input_schema = schemas.CreateMaintenanceWindowInput,
        output_schema = schemas.CreateMaintenanceWindowOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOpsItem(input, options)
    return self:invokeOperation(input, {
        name = "CreateOpsItem",
        input_schema = schemas.CreateOpsItemInput,
        output_schema = schemas.CreateOpsItemOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOpsMetadata(input, options)
    return self:invokeOperation(input, {
        name = "CreateOpsMetadata",
        input_schema = schemas.CreateOpsMetadataInput,
        output_schema = schemas.CreateOpsMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPatchBaseline(input, options)
    return self:invokeOperation(input, {
        name = "CreatePatchBaseline",
        input_schema = schemas.CreatePatchBaselineInput,
        output_schema = schemas.CreatePatchBaselineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createResourceDataSync(input, options)
    return self:invokeOperation(input, {
        name = "CreateResourceDataSync",
        input_schema = schemas.CreateResourceDataSyncInput,
        output_schema = schemas.CreateResourceDataSyncOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteActivation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteActivation",
        input_schema = schemas.DeleteActivationInput,
        output_schema = schemas.DeleteActivationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssociation",
        input_schema = schemas.DeleteAssociationInput,
        output_schema = schemas.DeleteAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDocument(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDocument",
        input_schema = schemas.DeleteDocumentInput,
        output_schema = schemas.DeleteDocumentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInventory(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInventory",
        input_schema = schemas.DeleteInventoryInput,
        output_schema = schemas.DeleteInventoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMaintenanceWindow(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMaintenanceWindow",
        input_schema = schemas.DeleteMaintenanceWindowInput,
        output_schema = schemas.DeleteMaintenanceWindowOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOpsItem(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOpsItem",
        input_schema = schemas.DeleteOpsItemInput,
        output_schema = schemas.DeleteOpsItemOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOpsMetadata(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOpsMetadata",
        input_schema = schemas.DeleteOpsMetadataInput,
        output_schema = schemas.DeleteOpsMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteParameter(input, options)
    return self:invokeOperation(input, {
        name = "DeleteParameter",
        input_schema = schemas.DeleteParameterInput,
        output_schema = schemas.DeleteParameterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteParameters(input, options)
    return self:invokeOperation(input, {
        name = "DeleteParameters",
        input_schema = schemas.DeleteParametersInput,
        output_schema = schemas.DeleteParametersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePatchBaseline(input, options)
    return self:invokeOperation(input, {
        name = "DeletePatchBaseline",
        input_schema = schemas.DeletePatchBaselineInput,
        output_schema = schemas.DeletePatchBaselineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourceDataSync(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourceDataSync",
        input_schema = schemas.DeleteResourceDataSyncInput,
        output_schema = schemas.DeleteResourceDataSyncOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = schemas.DeleteResourcePolicyInput,
        output_schema = schemas.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterManagedInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterManagedInstance",
        input_schema = schemas.DeregisterManagedInstanceInput,
        output_schema = schemas.DeregisterManagedInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterPatchBaselineForPatchGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterPatchBaselineForPatchGroup",
        input_schema = schemas.DeregisterPatchBaselineForPatchGroupInput,
        output_schema = schemas.DeregisterPatchBaselineForPatchGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterTargetFromMaintenanceWindow(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterTargetFromMaintenanceWindow",
        input_schema = schemas.DeregisterTargetFromMaintenanceWindowInput,
        output_schema = schemas.DeregisterTargetFromMaintenanceWindowOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterTaskFromMaintenanceWindow(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterTaskFromMaintenanceWindow",
        input_schema = schemas.DeregisterTaskFromMaintenanceWindowInput,
        output_schema = schemas.DeregisterTaskFromMaintenanceWindowOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeActivations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeActivations",
        input_schema = schemas.DescribeActivationsInput,
        output_schema = schemas.DescribeActivationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAssociation",
        input_schema = schemas.DescribeAssociationInput,
        output_schema = schemas.DescribeAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAssociationExecutions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAssociationExecutions",
        input_schema = schemas.DescribeAssociationExecutionsInput,
        output_schema = schemas.DescribeAssociationExecutionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAssociationExecutionTargets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAssociationExecutionTargets",
        input_schema = schemas.DescribeAssociationExecutionTargetsInput,
        output_schema = schemas.DescribeAssociationExecutionTargetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAutomationExecutions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAutomationExecutions",
        input_schema = schemas.DescribeAutomationExecutionsInput,
        output_schema = schemas.DescribeAutomationExecutionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAutomationStepExecutions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAutomationStepExecutions",
        input_schema = schemas.DescribeAutomationStepExecutionsInput,
        output_schema = schemas.DescribeAutomationStepExecutionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAvailablePatches(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAvailablePatches",
        input_schema = schemas.DescribeAvailablePatchesInput,
        output_schema = schemas.DescribeAvailablePatchesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDocument(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDocument",
        input_schema = schemas.DescribeDocumentInput,
        output_schema = schemas.DescribeDocumentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDocumentPermission(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDocumentPermission",
        input_schema = schemas.DescribeDocumentPermissionInput,
        output_schema = schemas.DescribeDocumentPermissionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEffectiveInstanceAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEffectiveInstanceAssociations",
        input_schema = schemas.DescribeEffectiveInstanceAssociationsInput,
        output_schema = schemas.DescribeEffectiveInstanceAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEffectivePatchesForPatchBaseline(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEffectivePatchesForPatchBaseline",
        input_schema = schemas.DescribeEffectivePatchesForPatchBaselineInput,
        output_schema = schemas.DescribeEffectivePatchesForPatchBaselineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstanceAssociationsStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceAssociationsStatus",
        input_schema = schemas.DescribeInstanceAssociationsStatusInput,
        output_schema = schemas.DescribeInstanceAssociationsStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstanceInformation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceInformation",
        input_schema = schemas.DescribeInstanceInformationInput,
        output_schema = schemas.DescribeInstanceInformationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstancePatches(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstancePatches",
        input_schema = schemas.DescribeInstancePatchesInput,
        output_schema = schemas.DescribeInstancePatchesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstancePatchStates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstancePatchStates",
        input_schema = schemas.DescribeInstancePatchStatesInput,
        output_schema = schemas.DescribeInstancePatchStatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstancePatchStatesForPatchGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstancePatchStatesForPatchGroup",
        input_schema = schemas.DescribeInstancePatchStatesForPatchGroupInput,
        output_schema = schemas.DescribeInstancePatchStatesForPatchGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstanceProperties(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceProperties",
        input_schema = schemas.DescribeInstancePropertiesInput,
        output_schema = schemas.DescribeInstancePropertiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInventoryDeletions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInventoryDeletions",
        input_schema = schemas.DescribeInventoryDeletionsInput,
        output_schema = schemas.DescribeInventoryDeletionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMaintenanceWindowExecutions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMaintenanceWindowExecutions",
        input_schema = schemas.DescribeMaintenanceWindowExecutionsInput,
        output_schema = schemas.DescribeMaintenanceWindowExecutionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMaintenanceWindowExecutionTaskInvocations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMaintenanceWindowExecutionTaskInvocations",
        input_schema = schemas.DescribeMaintenanceWindowExecutionTaskInvocationsInput,
        output_schema = schemas.DescribeMaintenanceWindowExecutionTaskInvocationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMaintenanceWindowExecutionTasks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMaintenanceWindowExecutionTasks",
        input_schema = schemas.DescribeMaintenanceWindowExecutionTasksInput,
        output_schema = schemas.DescribeMaintenanceWindowExecutionTasksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMaintenanceWindows(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMaintenanceWindows",
        input_schema = schemas.DescribeMaintenanceWindowsInput,
        output_schema = schemas.DescribeMaintenanceWindowsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMaintenanceWindowSchedule(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMaintenanceWindowSchedule",
        input_schema = schemas.DescribeMaintenanceWindowScheduleInput,
        output_schema = schemas.DescribeMaintenanceWindowScheduleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMaintenanceWindowsForTarget(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMaintenanceWindowsForTarget",
        input_schema = schemas.DescribeMaintenanceWindowsForTargetInput,
        output_schema = schemas.DescribeMaintenanceWindowsForTargetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMaintenanceWindowTargets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMaintenanceWindowTargets",
        input_schema = schemas.DescribeMaintenanceWindowTargetsInput,
        output_schema = schemas.DescribeMaintenanceWindowTargetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMaintenanceWindowTasks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMaintenanceWindowTasks",
        input_schema = schemas.DescribeMaintenanceWindowTasksInput,
        output_schema = schemas.DescribeMaintenanceWindowTasksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOpsItems(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOpsItems",
        input_schema = schemas.DescribeOpsItemsInput,
        output_schema = schemas.DescribeOpsItemsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeParameters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeParameters",
        input_schema = schemas.DescribeParametersInput,
        output_schema = schemas.DescribeParametersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePatchBaselines(input, options)
    return self:invokeOperation(input, {
        name = "DescribePatchBaselines",
        input_schema = schemas.DescribePatchBaselinesInput,
        output_schema = schemas.DescribePatchBaselinesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePatchGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribePatchGroups",
        input_schema = schemas.DescribePatchGroupsInput,
        output_schema = schemas.DescribePatchGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePatchGroupState(input, options)
    return self:invokeOperation(input, {
        name = "DescribePatchGroupState",
        input_schema = schemas.DescribePatchGroupStateInput,
        output_schema = schemas.DescribePatchGroupStateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePatchProperties(input, options)
    return self:invokeOperation(input, {
        name = "DescribePatchProperties",
        input_schema = schemas.DescribePatchPropertiesInput,
        output_schema = schemas.DescribePatchPropertiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSessions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSessions",
        input_schema = schemas.DescribeSessionsInput,
        output_schema = schemas.DescribeSessionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateOpsItemRelatedItem(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateOpsItemRelatedItem",
        input_schema = schemas.DisassociateOpsItemRelatedItemInput,
        output_schema = schemas.DisassociateOpsItemRelatedItemOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccessToken(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessToken",
        input_schema = schemas.GetAccessTokenInput,
        output_schema = schemas.GetAccessTokenOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAutomationExecution(input, options)
    return self:invokeOperation(input, {
        name = "GetAutomationExecution",
        input_schema = schemas.GetAutomationExecutionInput,
        output_schema = schemas.GetAutomationExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCalendarState(input, options)
    return self:invokeOperation(input, {
        name = "GetCalendarState",
        input_schema = schemas.GetCalendarStateInput,
        output_schema = schemas.GetCalendarStateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCommandInvocation(input, options)
    return self:invokeOperation(input, {
        name = "GetCommandInvocation",
        input_schema = schemas.GetCommandInvocationInput,
        output_schema = schemas.GetCommandInvocationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnectionStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectionStatus",
        input_schema = schemas.GetConnectionStatusInput,
        output_schema = schemas.GetConnectionStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDefaultPatchBaseline(input, options)
    return self:invokeOperation(input, {
        name = "GetDefaultPatchBaseline",
        input_schema = schemas.GetDefaultPatchBaselineInput,
        output_schema = schemas.GetDefaultPatchBaselineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeployablePatchSnapshotForInstance(input, options)
    return self:invokeOperation(input, {
        name = "GetDeployablePatchSnapshotForInstance",
        input_schema = schemas.GetDeployablePatchSnapshotForInstanceInput,
        output_schema = schemas.GetDeployablePatchSnapshotForInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDocument(input, options)
    return self:invokeOperation(input, {
        name = "GetDocument",
        input_schema = schemas.GetDocumentInput,
        output_schema = schemas.GetDocumentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getExecutionPreview(input, options)
    return self:invokeOperation(input, {
        name = "GetExecutionPreview",
        input_schema = schemas.GetExecutionPreviewInput,
        output_schema = schemas.GetExecutionPreviewOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInventory(input, options)
    return self:invokeOperation(input, {
        name = "GetInventory",
        input_schema = schemas.GetInventoryInput,
        output_schema = schemas.GetInventoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInventorySchema(input, options)
    return self:invokeOperation(input, {
        name = "GetInventorySchema",
        input_schema = schemas.GetInventorySchemaInput,
        output_schema = schemas.GetInventorySchemaOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMaintenanceWindow(input, options)
    return self:invokeOperation(input, {
        name = "GetMaintenanceWindow",
        input_schema = schemas.GetMaintenanceWindowInput,
        output_schema = schemas.GetMaintenanceWindowOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMaintenanceWindowExecution(input, options)
    return self:invokeOperation(input, {
        name = "GetMaintenanceWindowExecution",
        input_schema = schemas.GetMaintenanceWindowExecutionInput,
        output_schema = schemas.GetMaintenanceWindowExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMaintenanceWindowExecutionTask(input, options)
    return self:invokeOperation(input, {
        name = "GetMaintenanceWindowExecutionTask",
        input_schema = schemas.GetMaintenanceWindowExecutionTaskInput,
        output_schema = schemas.GetMaintenanceWindowExecutionTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMaintenanceWindowExecutionTaskInvocation(input, options)
    return self:invokeOperation(input, {
        name = "GetMaintenanceWindowExecutionTaskInvocation",
        input_schema = schemas.GetMaintenanceWindowExecutionTaskInvocationInput,
        output_schema = schemas.GetMaintenanceWindowExecutionTaskInvocationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMaintenanceWindowTask(input, options)
    return self:invokeOperation(input, {
        name = "GetMaintenanceWindowTask",
        input_schema = schemas.GetMaintenanceWindowTaskInput,
        output_schema = schemas.GetMaintenanceWindowTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOpsItem(input, options)
    return self:invokeOperation(input, {
        name = "GetOpsItem",
        input_schema = schemas.GetOpsItemInput,
        output_schema = schemas.GetOpsItemOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOpsMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetOpsMetadata",
        input_schema = schemas.GetOpsMetadataInput,
        output_schema = schemas.GetOpsMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOpsSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetOpsSummary",
        input_schema = schemas.GetOpsSummaryInput,
        output_schema = schemas.GetOpsSummaryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getParameter(input, options)
    return self:invokeOperation(input, {
        name = "GetParameter",
        input_schema = schemas.GetParameterInput,
        output_schema = schemas.GetParameterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getParameterHistory(input, options)
    return self:invokeOperation(input, {
        name = "GetParameterHistory",
        input_schema = schemas.GetParameterHistoryInput,
        output_schema = schemas.GetParameterHistoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getParameters(input, options)
    return self:invokeOperation(input, {
        name = "GetParameters",
        input_schema = schemas.GetParametersInput,
        output_schema = schemas.GetParametersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getParametersByPath(input, options)
    return self:invokeOperation(input, {
        name = "GetParametersByPath",
        input_schema = schemas.GetParametersByPathInput,
        output_schema = schemas.GetParametersByPathOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPatchBaseline(input, options)
    return self:invokeOperation(input, {
        name = "GetPatchBaseline",
        input_schema = schemas.GetPatchBaselineInput,
        output_schema = schemas.GetPatchBaselineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPatchBaselineForPatchGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetPatchBaselineForPatchGroup",
        input_schema = schemas.GetPatchBaselineForPatchGroupInput,
        output_schema = schemas.GetPatchBaselineForPatchGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourcePolicies(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicies",
        input_schema = schemas.GetResourcePoliciesInput,
        output_schema = schemas.GetResourcePoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceSetting(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceSetting",
        input_schema = schemas.GetServiceSettingInput,
        output_schema = schemas.GetServiceSettingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:labelParameterVersion(input, options)
    return self:invokeOperation(input, {
        name = "LabelParameterVersion",
        input_schema = schemas.LabelParameterVersionInput,
        output_schema = schemas.LabelParameterVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociations",
        input_schema = schemas.ListAssociationsInput,
        output_schema = schemas.ListAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssociationVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociationVersions",
        input_schema = schemas.ListAssociationVersionsInput,
        output_schema = schemas.ListAssociationVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCommandInvocations(input, options)
    return self:invokeOperation(input, {
        name = "ListCommandInvocations",
        input_schema = schemas.ListCommandInvocationsInput,
        output_schema = schemas.ListCommandInvocationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCommands(input, options)
    return self:invokeOperation(input, {
        name = "ListCommands",
        input_schema = schemas.ListCommandsInput,
        output_schema = schemas.ListCommandsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listComplianceItems(input, options)
    return self:invokeOperation(input, {
        name = "ListComplianceItems",
        input_schema = schemas.ListComplianceItemsInput,
        output_schema = schemas.ListComplianceItemsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listComplianceSummaries(input, options)
    return self:invokeOperation(input, {
        name = "ListComplianceSummaries",
        input_schema = schemas.ListComplianceSummariesInput,
        output_schema = schemas.ListComplianceSummariesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDocumentMetadataHistory(input, options)
    return self:invokeOperation(input, {
        name = "ListDocumentMetadataHistory",
        input_schema = schemas.ListDocumentMetadataHistoryInput,
        output_schema = schemas.ListDocumentMetadataHistoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDocuments(input, options)
    return self:invokeOperation(input, {
        name = "ListDocuments",
        input_schema = schemas.ListDocumentsInput,
        output_schema = schemas.ListDocumentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDocumentVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListDocumentVersions",
        input_schema = schemas.ListDocumentVersionsInput,
        output_schema = schemas.ListDocumentVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInventoryEntries(input, options)
    return self:invokeOperation(input, {
        name = "ListInventoryEntries",
        input_schema = schemas.ListInventoryEntriesInput,
        output_schema = schemas.ListInventoryEntriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNodes(input, options)
    return self:invokeOperation(input, {
        name = "ListNodes",
        input_schema = schemas.ListNodesInput,
        output_schema = schemas.ListNodesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNodesSummary(input, options)
    return self:invokeOperation(input, {
        name = "ListNodesSummary",
        input_schema = schemas.ListNodesSummaryInput,
        output_schema = schemas.ListNodesSummaryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOpsItemEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListOpsItemEvents",
        input_schema = schemas.ListOpsItemEventsInput,
        output_schema = schemas.ListOpsItemEventsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOpsItemRelatedItems(input, options)
    return self:invokeOperation(input, {
        name = "ListOpsItemRelatedItems",
        input_schema = schemas.ListOpsItemRelatedItemsInput,
        output_schema = schemas.ListOpsItemRelatedItemsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOpsMetadata(input, options)
    return self:invokeOperation(input, {
        name = "ListOpsMetadata",
        input_schema = schemas.ListOpsMetadataInput,
        output_schema = schemas.ListOpsMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourceComplianceSummaries(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceComplianceSummaries",
        input_schema = schemas.ListResourceComplianceSummariesInput,
        output_schema = schemas.ListResourceComplianceSummariesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourceDataSync(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceDataSync",
        input_schema = schemas.ListResourceDataSyncInput,
        output_schema = schemas.ListResourceDataSyncOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyDocumentPermission(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDocumentPermission",
        input_schema = schemas.ModifyDocumentPermissionInput,
        output_schema = schemas.ModifyDocumentPermissionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putComplianceItems(input, options)
    return self:invokeOperation(input, {
        name = "PutComplianceItems",
        input_schema = schemas.PutComplianceItemsInput,
        output_schema = schemas.PutComplianceItemsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putInventory(input, options)
    return self:invokeOperation(input, {
        name = "PutInventory",
        input_schema = schemas.PutInventoryInput,
        output_schema = schemas.PutInventoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putParameter(input, options)
    return self:invokeOperation(input, {
        name = "PutParameter",
        input_schema = schemas.PutParameterInput,
        output_schema = schemas.PutParameterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = schemas.PutResourcePolicyInput,
        output_schema = schemas.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerDefaultPatchBaseline(input, options)
    return self:invokeOperation(input, {
        name = "RegisterDefaultPatchBaseline",
        input_schema = schemas.RegisterDefaultPatchBaselineInput,
        output_schema = schemas.RegisterDefaultPatchBaselineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerPatchBaselineForPatchGroup(input, options)
    return self:invokeOperation(input, {
        name = "RegisterPatchBaselineForPatchGroup",
        input_schema = schemas.RegisterPatchBaselineForPatchGroupInput,
        output_schema = schemas.RegisterPatchBaselineForPatchGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerTargetWithMaintenanceWindow(input, options)
    return self:invokeOperation(input, {
        name = "RegisterTargetWithMaintenanceWindow",
        input_schema = schemas.RegisterTargetWithMaintenanceWindowInput,
        output_schema = schemas.RegisterTargetWithMaintenanceWindowOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerTaskWithMaintenanceWindow(input, options)
    return self:invokeOperation(input, {
        name = "RegisterTaskWithMaintenanceWindow",
        input_schema = schemas.RegisterTaskWithMaintenanceWindowInput,
        output_schema = schemas.RegisterTaskWithMaintenanceWindowOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeTagsFromResource(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTagsFromResource",
        input_schema = schemas.RemoveTagsFromResourceInput,
        output_schema = schemas.RemoveTagsFromResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetServiceSetting(input, options)
    return self:invokeOperation(input, {
        name = "ResetServiceSetting",
        input_schema = schemas.ResetServiceSettingInput,
        output_schema = schemas.ResetServiceSettingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resumeSession(input, options)
    return self:invokeOperation(input, {
        name = "ResumeSession",
        input_schema = schemas.ResumeSessionInput,
        output_schema = schemas.ResumeSessionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendAutomationSignal(input, options)
    return self:invokeOperation(input, {
        name = "SendAutomationSignal",
        input_schema = schemas.SendAutomationSignalInput,
        output_schema = schemas.SendAutomationSignalOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendCommand(input, options)
    return self:invokeOperation(input, {
        name = "SendCommand",
        input_schema = schemas.SendCommandInput,
        output_schema = schemas.SendCommandOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startAccessRequest(input, options)
    return self:invokeOperation(input, {
        name = "StartAccessRequest",
        input_schema = schemas.StartAccessRequestInput,
        output_schema = schemas.StartAccessRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startAssociationsOnce(input, options)
    return self:invokeOperation(input, {
        name = "StartAssociationsOnce",
        input_schema = schemas.StartAssociationsOnceInput,
        output_schema = schemas.StartAssociationsOnceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startAutomationExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartAutomationExecution",
        input_schema = schemas.StartAutomationExecutionInput,
        output_schema = schemas.StartAutomationExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startChangeRequestExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartChangeRequestExecution",
        input_schema = schemas.StartChangeRequestExecutionInput,
        output_schema = schemas.StartChangeRequestExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startExecutionPreview(input, options)
    return self:invokeOperation(input, {
        name = "StartExecutionPreview",
        input_schema = schemas.StartExecutionPreviewInput,
        output_schema = schemas.StartExecutionPreviewOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSession(input, options)
    return self:invokeOperation(input, {
        name = "StartSession",
        input_schema = schemas.StartSessionInput,
        output_schema = schemas.StartSessionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopAutomationExecution(input, options)
    return self:invokeOperation(input, {
        name = "StopAutomationExecution",
        input_schema = schemas.StopAutomationExecutionInput,
        output_schema = schemas.StopAutomationExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:terminateSession(input, options)
    return self:invokeOperation(input, {
        name = "TerminateSession",
        input_schema = schemas.TerminateSessionInput,
        output_schema = schemas.TerminateSessionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:unlabelParameterVersion(input, options)
    return self:invokeOperation(input, {
        name = "UnlabelParameterVersion",
        input_schema = schemas.UnlabelParameterVersionInput,
        output_schema = schemas.UnlabelParameterVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssociation",
        input_schema = schemas.UpdateAssociationInput,
        output_schema = schemas.UpdateAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAssociationStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssociationStatus",
        input_schema = schemas.UpdateAssociationStatusInput,
        output_schema = schemas.UpdateAssociationStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDocument(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDocument",
        input_schema = schemas.UpdateDocumentInput,
        output_schema = schemas.UpdateDocumentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDocumentDefaultVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDocumentDefaultVersion",
        input_schema = schemas.UpdateDocumentDefaultVersionInput,
        output_schema = schemas.UpdateDocumentDefaultVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDocumentMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDocumentMetadata",
        input_schema = schemas.UpdateDocumentMetadataInput,
        output_schema = schemas.UpdateDocumentMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMaintenanceWindow(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMaintenanceWindow",
        input_schema = schemas.UpdateMaintenanceWindowInput,
        output_schema = schemas.UpdateMaintenanceWindowOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMaintenanceWindowTarget(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMaintenanceWindowTarget",
        input_schema = schemas.UpdateMaintenanceWindowTargetInput,
        output_schema = schemas.UpdateMaintenanceWindowTargetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMaintenanceWindowTask(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMaintenanceWindowTask",
        input_schema = schemas.UpdateMaintenanceWindowTaskInput,
        output_schema = schemas.UpdateMaintenanceWindowTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateManagedInstanceRole(input, options)
    return self:invokeOperation(input, {
        name = "UpdateManagedInstanceRole",
        input_schema = schemas.UpdateManagedInstanceRoleInput,
        output_schema = schemas.UpdateManagedInstanceRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateOpsItem(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOpsItem",
        input_schema = schemas.UpdateOpsItemInput,
        output_schema = schemas.UpdateOpsItemOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateOpsMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOpsMetadata",
        input_schema = schemas.UpdateOpsMetadataInput,
        output_schema = schemas.UpdateOpsMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePatchBaseline(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePatchBaseline",
        input_schema = schemas.UpdatePatchBaselineInput,
        output_schema = schemas.UpdatePatchBaselineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateResourceDataSync(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResourceDataSync",
        input_schema = schemas.UpdateResourceDataSyncInput,
        output_schema = schemas.UpdateResourceDataSyncOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateServiceSetting(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceSetting",
        input_schema = schemas.UpdateServiceSettingInput,
        output_schema = schemas.UpdateServiceSettingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
