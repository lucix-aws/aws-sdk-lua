local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("cloudformation.endpoint_rules")
local query_protocol = require("protocol.query")
local sdk_defaults = require("sdk_defaults")
local types = require("cloudformation.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CloudFormation"
    cfg.signing_name = "cloudformation"
    if not cfg.protocol then
        cfg.protocol = query_protocol.new("awsQuery")
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

function Client:activateOrganizationsAccess(input, options)
    return self:invokeOperation(input, {
        name = "ActivateOrganizationsAccess",
        input_schema = types.ActivateOrganizationsAccessInput,
        output_schema = types.ActivateOrganizationsAccessOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:activateType(input, options)
    return self:invokeOperation(input, {
        name = "ActivateType",
        input_schema = types.ActivateTypeInput,
        output_schema = types.ActivateTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDescribeTypeConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "BatchDescribeTypeConfigurations",
        input_schema = types.BatchDescribeTypeConfigurationsInput,
        output_schema = types.BatchDescribeTypeConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelUpdateStack(input, options)
    return self:invokeOperation(input, {
        name = "CancelUpdateStack",
        input_schema = types.CancelUpdateStackInput,
        output_schema = types.CancelUpdateStackOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:continueUpdateRollback(input, options)
    return self:invokeOperation(input, {
        name = "ContinueUpdateRollback",
        input_schema = types.ContinueUpdateRollbackInput,
        output_schema = types.ContinueUpdateRollbackOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createChangeSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateChangeSet",
        input_schema = types.CreateChangeSetInput,
        output_schema = types.CreateChangeSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createGeneratedTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateGeneratedTemplate",
        input_schema = types.CreateGeneratedTemplateInput,
        output_schema = types.CreateGeneratedTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createStack(input, options)
    return self:invokeOperation(input, {
        name = "CreateStack",
        input_schema = types.CreateStackInput,
        output_schema = types.CreateStackOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createStackInstances(input, options)
    return self:invokeOperation(input, {
        name = "CreateStackInstances",
        input_schema = types.CreateStackInstancesInput,
        output_schema = types.CreateStackInstancesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createStackRefactor(input, options)
    return self:invokeOperation(input, {
        name = "CreateStackRefactor",
        input_schema = types.CreateStackRefactorInput,
        output_schema = types.CreateStackRefactorOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createStackSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateStackSet",
        input_schema = types.CreateStackSetInput,
        output_schema = types.CreateStackSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deactivateOrganizationsAccess(input, options)
    return self:invokeOperation(input, {
        name = "DeactivateOrganizationsAccess",
        input_schema = types.DeactivateOrganizationsAccessInput,
        output_schema = types.DeactivateOrganizationsAccessOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deactivateType(input, options)
    return self:invokeOperation(input, {
        name = "DeactivateType",
        input_schema = types.DeactivateTypeInput,
        output_schema = types.DeactivateTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteChangeSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChangeSet",
        input_schema = types.DeleteChangeSetInput,
        output_schema = types.DeleteChangeSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteGeneratedTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGeneratedTemplate",
        input_schema = types.DeleteGeneratedTemplateInput,
        output_schema = types.DeleteGeneratedTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteStack(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStack",
        input_schema = types.DeleteStackInput,
        output_schema = types.DeleteStackOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteStackInstances(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStackInstances",
        input_schema = types.DeleteStackInstancesInput,
        output_schema = types.DeleteStackInstancesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteStackSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStackSet",
        input_schema = types.DeleteStackSetInput,
        output_schema = types.DeleteStackSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deregisterType(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterType",
        input_schema = types.DeregisterTypeInput,
        output_schema = types.DeregisterTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAccountLimits(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountLimits",
        input_schema = types.DescribeAccountLimitsInput,
        output_schema = types.DescribeAccountLimitsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeChangeSet(input, options)
    return self:invokeOperation(input, {
        name = "DescribeChangeSet",
        input_schema = types.DescribeChangeSetInput,
        output_schema = types.DescribeChangeSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeChangeSetHooks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeChangeSetHooks",
        input_schema = types.DescribeChangeSetHooksInput,
        output_schema = types.DescribeChangeSetHooksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeEvents(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEvents",
        input_schema = types.DescribeEventsInput,
        output_schema = types.DescribeEventsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeGeneratedTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGeneratedTemplate",
        input_schema = types.DescribeGeneratedTemplateInput,
        output_schema = types.DescribeGeneratedTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeOrganizationsAccess(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrganizationsAccess",
        input_schema = types.DescribeOrganizationsAccessInput,
        output_schema = types.DescribeOrganizationsAccessOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describePublisher(input, options)
    return self:invokeOperation(input, {
        name = "DescribePublisher",
        input_schema = types.DescribePublisherInput,
        output_schema = types.DescribePublisherOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeResourceScan(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResourceScan",
        input_schema = types.DescribeResourceScanInput,
        output_schema = types.DescribeResourceScanOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeStackDriftDetectionStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStackDriftDetectionStatus",
        input_schema = types.DescribeStackDriftDetectionStatusInput,
        output_schema = types.DescribeStackDriftDetectionStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeStackEvents(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStackEvents",
        input_schema = types.DescribeStackEventsInput,
        output_schema = types.DescribeStackEventsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeStackInstance(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStackInstance",
        input_schema = types.DescribeStackInstanceInput,
        output_schema = types.DescribeStackInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeStackRefactor(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStackRefactor",
        input_schema = types.DescribeStackRefactorInput,
        output_schema = types.DescribeStackRefactorOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeStackResource(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStackResource",
        input_schema = types.DescribeStackResourceInput,
        output_schema = types.DescribeStackResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeStackResourceDrifts(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStackResourceDrifts",
        input_schema = types.DescribeStackResourceDriftsInput,
        output_schema = types.DescribeStackResourceDriftsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeStackResources(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStackResources",
        input_schema = types.DescribeStackResourcesInput,
        output_schema = types.DescribeStackResourcesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeStacks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStacks",
        input_schema = types.DescribeStacksInput,
        output_schema = types.DescribeStacksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeStackSet(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStackSet",
        input_schema = types.DescribeStackSetInput,
        output_schema = types.DescribeStackSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeStackSetOperation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStackSetOperation",
        input_schema = types.DescribeStackSetOperationInput,
        output_schema = types.DescribeStackSetOperationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeType(input, options)
    return self:invokeOperation(input, {
        name = "DescribeType",
        input_schema = types.DescribeTypeInput,
        output_schema = types.DescribeTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTypeRegistration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTypeRegistration",
        input_schema = types.DescribeTypeRegistrationInput,
        output_schema = types.DescribeTypeRegistrationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:detectStackDrift(input, options)
    return self:invokeOperation(input, {
        name = "DetectStackDrift",
        input_schema = types.DetectStackDriftInput,
        output_schema = types.DetectStackDriftOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:detectStackResourceDrift(input, options)
    return self:invokeOperation(input, {
        name = "DetectStackResourceDrift",
        input_schema = types.DetectStackResourceDriftInput,
        output_schema = types.DetectStackResourceDriftOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:detectStackSetDrift(input, options)
    return self:invokeOperation(input, {
        name = "DetectStackSetDrift",
        input_schema = types.DetectStackSetDriftInput,
        output_schema = types.DetectStackSetDriftOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:estimateTemplateCost(input, options)
    return self:invokeOperation(input, {
        name = "EstimateTemplateCost",
        input_schema = types.EstimateTemplateCostInput,
        output_schema = types.EstimateTemplateCostOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:executeChangeSet(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteChangeSet",
        input_schema = types.ExecuteChangeSetInput,
        output_schema = types.ExecuteChangeSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:executeStackRefactor(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteStackRefactor",
        input_schema = types.ExecuteStackRefactorInput,
        output_schema = types.ExecuteStackRefactorOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getGeneratedTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetGeneratedTemplate",
        input_schema = types.GetGeneratedTemplateInput,
        output_schema = types.GetGeneratedTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getHookResult(input, options)
    return self:invokeOperation(input, {
        name = "GetHookResult",
        input_schema = types.GetHookResultInput,
        output_schema = types.GetHookResultOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getStackPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetStackPolicy",
        input_schema = types.GetStackPolicyInput,
        output_schema = types.GetStackPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetTemplate",
        input_schema = types.GetTemplateInput,
        output_schema = types.GetTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTemplateSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetTemplateSummary",
        input_schema = types.GetTemplateSummaryInput,
        output_schema = types.GetTemplateSummaryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:importStacksToStackSet(input, options)
    return self:invokeOperation(input, {
        name = "ImportStacksToStackSet",
        input_schema = types.ImportStacksToStackSetInput,
        output_schema = types.ImportStacksToStackSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listChangeSets(input, options)
    return self:invokeOperation(input, {
        name = "ListChangeSets",
        input_schema = types.ListChangeSetsInput,
        output_schema = types.ListChangeSetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listExports(input, options)
    return self:invokeOperation(input, {
        name = "ListExports",
        input_schema = types.ListExportsInput,
        output_schema = types.ListExportsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listGeneratedTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListGeneratedTemplates",
        input_schema = types.ListGeneratedTemplatesInput,
        output_schema = types.ListGeneratedTemplatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listHookResults(input, options)
    return self:invokeOperation(input, {
        name = "ListHookResults",
        input_schema = types.ListHookResultsInput,
        output_schema = types.ListHookResultsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listImports(input, options)
    return self:invokeOperation(input, {
        name = "ListImports",
        input_schema = types.ListImportsInput,
        output_schema = types.ListImportsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listResourceScanRelatedResources(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceScanRelatedResources",
        input_schema = types.ListResourceScanRelatedResourcesInput,
        output_schema = types.ListResourceScanRelatedResourcesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listResourceScanResources(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceScanResources",
        input_schema = types.ListResourceScanResourcesInput,
        output_schema = types.ListResourceScanResourcesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listResourceScans(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceScans",
        input_schema = types.ListResourceScansInput,
        output_schema = types.ListResourceScansOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listStackInstanceResourceDrifts(input, options)
    return self:invokeOperation(input, {
        name = "ListStackInstanceResourceDrifts",
        input_schema = types.ListStackInstanceResourceDriftsInput,
        output_schema = types.ListStackInstanceResourceDriftsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listStackInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListStackInstances",
        input_schema = types.ListStackInstancesInput,
        output_schema = types.ListStackInstancesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listStackRefactorActions(input, options)
    return self:invokeOperation(input, {
        name = "ListStackRefactorActions",
        input_schema = types.ListStackRefactorActionsInput,
        output_schema = types.ListStackRefactorActionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listStackRefactors(input, options)
    return self:invokeOperation(input, {
        name = "ListStackRefactors",
        input_schema = types.ListStackRefactorsInput,
        output_schema = types.ListStackRefactorsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listStackResources(input, options)
    return self:invokeOperation(input, {
        name = "ListStackResources",
        input_schema = types.ListStackResourcesInput,
        output_schema = types.ListStackResourcesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listStacks(input, options)
    return self:invokeOperation(input, {
        name = "ListStacks",
        input_schema = types.ListStacksInput,
        output_schema = types.ListStacksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listStackSetAutoDeploymentTargets(input, options)
    return self:invokeOperation(input, {
        name = "ListStackSetAutoDeploymentTargets",
        input_schema = types.ListStackSetAutoDeploymentTargetsInput,
        output_schema = types.ListStackSetAutoDeploymentTargetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listStackSetOperationResults(input, options)
    return self:invokeOperation(input, {
        name = "ListStackSetOperationResults",
        input_schema = types.ListStackSetOperationResultsInput,
        output_schema = types.ListStackSetOperationResultsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listStackSetOperations(input, options)
    return self:invokeOperation(input, {
        name = "ListStackSetOperations",
        input_schema = types.ListStackSetOperationsInput,
        output_schema = types.ListStackSetOperationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listStackSets(input, options)
    return self:invokeOperation(input, {
        name = "ListStackSets",
        input_schema = types.ListStackSetsInput,
        output_schema = types.ListStackSetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTypeRegistrations(input, options)
    return self:invokeOperation(input, {
        name = "ListTypeRegistrations",
        input_schema = types.ListTypeRegistrationsInput,
        output_schema = types.ListTypeRegistrationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListTypes",
        input_schema = types.ListTypesInput,
        output_schema = types.ListTypesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTypeVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListTypeVersions",
        input_schema = types.ListTypeVersionsInput,
        output_schema = types.ListTypeVersionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:publishType(input, options)
    return self:invokeOperation(input, {
        name = "PublishType",
        input_schema = types.PublishTypeInput,
        output_schema = types.PublishTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:recordHandlerProgress(input, options)
    return self:invokeOperation(input, {
        name = "RecordHandlerProgress",
        input_schema = types.RecordHandlerProgressInput,
        output_schema = types.RecordHandlerProgressOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerPublisher(input, options)
    return self:invokeOperation(input, {
        name = "RegisterPublisher",
        input_schema = types.RegisterPublisherInput,
        output_schema = types.RegisterPublisherOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerType(input, options)
    return self:invokeOperation(input, {
        name = "RegisterType",
        input_schema = types.RegisterTypeInput,
        output_schema = types.RegisterTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:rollbackStack(input, options)
    return self:invokeOperation(input, {
        name = "RollbackStack",
        input_schema = types.RollbackStackInput,
        output_schema = types.RollbackStackOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setStackPolicy(input, options)
    return self:invokeOperation(input, {
        name = "SetStackPolicy",
        input_schema = types.SetStackPolicyInput,
        output_schema = types.SetStackPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setTypeConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "SetTypeConfiguration",
        input_schema = types.SetTypeConfigurationInput,
        output_schema = types.SetTypeConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setTypeDefaultVersion(input, options)
    return self:invokeOperation(input, {
        name = "SetTypeDefaultVersion",
        input_schema = types.SetTypeDefaultVersionInput,
        output_schema = types.SetTypeDefaultVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:signalResource(input, options)
    return self:invokeOperation(input, {
        name = "SignalResource",
        input_schema = types.SignalResourceInput,
        output_schema = types.SignalResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startResourceScan(input, options)
    return self:invokeOperation(input, {
        name = "StartResourceScan",
        input_schema = types.StartResourceScanInput,
        output_schema = types.StartResourceScanOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopStackSetOperation(input, options)
    return self:invokeOperation(input, {
        name = "StopStackSetOperation",
        input_schema = types.StopStackSetOperationInput,
        output_schema = types.StopStackSetOperationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:testType(input, options)
    return self:invokeOperation(input, {
        name = "TestType",
        input_schema = types.TestTypeInput,
        output_schema = types.TestTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateGeneratedTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGeneratedTemplate",
        input_schema = types.UpdateGeneratedTemplateInput,
        output_schema = types.UpdateGeneratedTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateStack(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStack",
        input_schema = types.UpdateStackInput,
        output_schema = types.UpdateStackOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateStackInstances(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStackInstances",
        input_schema = types.UpdateStackInstancesInput,
        output_schema = types.UpdateStackInstancesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateStackSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStackSet",
        input_schema = types.UpdateStackSetInput,
        output_schema = types.UpdateStackSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateTerminationProtection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTerminationProtection",
        input_schema = types.UpdateTerminationProtectionInput,
        output_schema = types.UpdateTerminationProtectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:validateTemplate(input, options)
    return self:invokeOperation(input, {
        name = "ValidateTemplate",
        input_schema = types.ValidateTemplateInput,
        output_schema = types.ValidateTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
