local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("cloudformation.endpoint_rules")
local query_protocol = require("smithy.protocol.query")
local schemas = require("cloudformation.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CloudFormation"
    if not cfg.protocol then
        cfg.protocol = query_protocol.new("awsQuery")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cloudformation", signing_region = cfg.region } }
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

function Client:activateOrganizationsAccess(input, options)
    return self:invokeOperation(input, {
        name = "ActivateOrganizationsAccess",
        input_schema = schemas.ActivateOrganizationsAccessInput,
        output_schema = schemas.ActivateOrganizationsAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:activateType(input, options)
    return self:invokeOperation(input, {
        name = "ActivateType",
        input_schema = schemas.ActivateTypeInput,
        output_schema = schemas.ActivateTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDescribeTypeConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "BatchDescribeTypeConfigurations",
        input_schema = schemas.BatchDescribeTypeConfigurationsInput,
        output_schema = schemas.BatchDescribeTypeConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelUpdateStack(input, options)
    return self:invokeOperation(input, {
        name = "CancelUpdateStack",
        input_schema = schemas.CancelUpdateStackInput,
        output_schema = schemas.CancelUpdateStackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:continueUpdateRollback(input, options)
    return self:invokeOperation(input, {
        name = "ContinueUpdateRollback",
        input_schema = schemas.ContinueUpdateRollbackInput,
        output_schema = schemas.ContinueUpdateRollbackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createChangeSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateChangeSet",
        input_schema = schemas.CreateChangeSetInput,
        output_schema = schemas.CreateChangeSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGeneratedTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateGeneratedTemplate",
        input_schema = schemas.CreateGeneratedTemplateInput,
        output_schema = schemas.CreateGeneratedTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStack(input, options)
    return self:invokeOperation(input, {
        name = "CreateStack",
        input_schema = schemas.CreateStackInput,
        output_schema = schemas.CreateStackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStackInstances(input, options)
    return self:invokeOperation(input, {
        name = "CreateStackInstances",
        input_schema = schemas.CreateStackInstancesInput,
        output_schema = schemas.CreateStackInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStackRefactor(input, options)
    return self:invokeOperation(input, {
        name = "CreateStackRefactor",
        input_schema = schemas.CreateStackRefactorInput,
        output_schema = schemas.CreateStackRefactorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStackSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateStackSet",
        input_schema = schemas.CreateStackSetInput,
        output_schema = schemas.CreateStackSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deactivateOrganizationsAccess(input, options)
    return self:invokeOperation(input, {
        name = "DeactivateOrganizationsAccess",
        input_schema = schemas.DeactivateOrganizationsAccessInput,
        output_schema = schemas.DeactivateOrganizationsAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deactivateType(input, options)
    return self:invokeOperation(input, {
        name = "DeactivateType",
        input_schema = schemas.DeactivateTypeInput,
        output_schema = schemas.DeactivateTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteChangeSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChangeSet",
        input_schema = schemas.DeleteChangeSetInput,
        output_schema = schemas.DeleteChangeSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGeneratedTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGeneratedTemplate",
        input_schema = schemas.DeleteGeneratedTemplateInput,
        output_schema = schemas.DeleteGeneratedTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteStack(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStack",
        input_schema = schemas.DeleteStackInput,
        output_schema = schemas.DeleteStackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteStackInstances(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStackInstances",
        input_schema = schemas.DeleteStackInstancesInput,
        output_schema = schemas.DeleteStackInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteStackSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStackSet",
        input_schema = schemas.DeleteStackSetInput,
        output_schema = schemas.DeleteStackSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterType(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterType",
        input_schema = schemas.DeregisterTypeInput,
        output_schema = schemas.DeregisterTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccountLimits(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountLimits",
        input_schema = schemas.DescribeAccountLimitsInput,
        output_schema = schemas.DescribeAccountLimitsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeChangeSet(input, options)
    return self:invokeOperation(input, {
        name = "DescribeChangeSet",
        input_schema = schemas.DescribeChangeSetInput,
        output_schema = schemas.DescribeChangeSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeChangeSetHooks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeChangeSetHooks",
        input_schema = schemas.DescribeChangeSetHooksInput,
        output_schema = schemas.DescribeChangeSetHooksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEvents(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEvents",
        input_schema = schemas.DescribeEventsInput,
        output_schema = schemas.DescribeEventsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeGeneratedTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGeneratedTemplate",
        input_schema = schemas.DescribeGeneratedTemplateInput,
        output_schema = schemas.DescribeGeneratedTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOrganizationsAccess(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrganizationsAccess",
        input_schema = schemas.DescribeOrganizationsAccessInput,
        output_schema = schemas.DescribeOrganizationsAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePublisher(input, options)
    return self:invokeOperation(input, {
        name = "DescribePublisher",
        input_schema = schemas.DescribePublisherInput,
        output_schema = schemas.DescribePublisherOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeResourceScan(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResourceScan",
        input_schema = schemas.DescribeResourceScanInput,
        output_schema = schemas.DescribeResourceScanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStackDriftDetectionStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStackDriftDetectionStatus",
        input_schema = schemas.DescribeStackDriftDetectionStatusInput,
        output_schema = schemas.DescribeStackDriftDetectionStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStackEvents(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStackEvents",
        input_schema = schemas.DescribeStackEventsInput,
        output_schema = schemas.DescribeStackEventsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStackInstance(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStackInstance",
        input_schema = schemas.DescribeStackInstanceInput,
        output_schema = schemas.DescribeStackInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStackRefactor(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStackRefactor",
        input_schema = schemas.DescribeStackRefactorInput,
        output_schema = schemas.DescribeStackRefactorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStackResource(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStackResource",
        input_schema = schemas.DescribeStackResourceInput,
        output_schema = schemas.DescribeStackResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStackResourceDrifts(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStackResourceDrifts",
        input_schema = schemas.DescribeStackResourceDriftsInput,
        output_schema = schemas.DescribeStackResourceDriftsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStackResources(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStackResources",
        input_schema = schemas.DescribeStackResourcesInput,
        output_schema = schemas.DescribeStackResourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStacks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStacks",
        input_schema = schemas.DescribeStacksInput,
        output_schema = schemas.DescribeStacksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStackSet(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStackSet",
        input_schema = schemas.DescribeStackSetInput,
        output_schema = schemas.DescribeStackSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStackSetOperation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStackSetOperation",
        input_schema = schemas.DescribeStackSetOperationInput,
        output_schema = schemas.DescribeStackSetOperationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeType(input, options)
    return self:invokeOperation(input, {
        name = "DescribeType",
        input_schema = schemas.DescribeTypeInput,
        output_schema = schemas.DescribeTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTypeRegistration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTypeRegistration",
        input_schema = schemas.DescribeTypeRegistrationInput,
        output_schema = schemas.DescribeTypeRegistrationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detectStackDrift(input, options)
    return self:invokeOperation(input, {
        name = "DetectStackDrift",
        input_schema = schemas.DetectStackDriftInput,
        output_schema = schemas.DetectStackDriftOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detectStackResourceDrift(input, options)
    return self:invokeOperation(input, {
        name = "DetectStackResourceDrift",
        input_schema = schemas.DetectStackResourceDriftInput,
        output_schema = schemas.DetectStackResourceDriftOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detectStackSetDrift(input, options)
    return self:invokeOperation(input, {
        name = "DetectStackSetDrift",
        input_schema = schemas.DetectStackSetDriftInput,
        output_schema = schemas.DetectStackSetDriftOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:estimateTemplateCost(input, options)
    return self:invokeOperation(input, {
        name = "EstimateTemplateCost",
        input_schema = schemas.EstimateTemplateCostInput,
        output_schema = schemas.EstimateTemplateCostOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:executeChangeSet(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteChangeSet",
        input_schema = schemas.ExecuteChangeSetInput,
        output_schema = schemas.ExecuteChangeSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:executeStackRefactor(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteStackRefactor",
        input_schema = schemas.ExecuteStackRefactorInput,
        output_schema = schemas.ExecuteStackRefactorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGeneratedTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetGeneratedTemplate",
        input_schema = schemas.GetGeneratedTemplateInput,
        output_schema = schemas.GetGeneratedTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getHookResult(input, options)
    return self:invokeOperation(input, {
        name = "GetHookResult",
        input_schema = schemas.GetHookResultInput,
        output_schema = schemas.GetHookResultOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getStackPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetStackPolicy",
        input_schema = schemas.GetStackPolicyInput,
        output_schema = schemas.GetStackPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetTemplate",
        input_schema = schemas.GetTemplateInput,
        output_schema = schemas.GetTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTemplateSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetTemplateSummary",
        input_schema = schemas.GetTemplateSummaryInput,
        output_schema = schemas.GetTemplateSummaryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importStacksToStackSet(input, options)
    return self:invokeOperation(input, {
        name = "ImportStacksToStackSet",
        input_schema = schemas.ImportStacksToStackSetInput,
        output_schema = schemas.ImportStacksToStackSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChangeSets(input, options)
    return self:invokeOperation(input, {
        name = "ListChangeSets",
        input_schema = schemas.ListChangeSetsInput,
        output_schema = schemas.ListChangeSetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExports(input, options)
    return self:invokeOperation(input, {
        name = "ListExports",
        input_schema = schemas.ListExportsInput,
        output_schema = schemas.ListExportsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGeneratedTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListGeneratedTemplates",
        input_schema = schemas.ListGeneratedTemplatesInput,
        output_schema = schemas.ListGeneratedTemplatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHookResults(input, options)
    return self:invokeOperation(input, {
        name = "ListHookResults",
        input_schema = schemas.ListHookResultsInput,
        output_schema = schemas.ListHookResultsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listImports(input, options)
    return self:invokeOperation(input, {
        name = "ListImports",
        input_schema = schemas.ListImportsInput,
        output_schema = schemas.ListImportsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourceScanRelatedResources(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceScanRelatedResources",
        input_schema = schemas.ListResourceScanRelatedResourcesInput,
        output_schema = schemas.ListResourceScanRelatedResourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourceScanResources(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceScanResources",
        input_schema = schemas.ListResourceScanResourcesInput,
        output_schema = schemas.ListResourceScanResourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourceScans(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceScans",
        input_schema = schemas.ListResourceScansInput,
        output_schema = schemas.ListResourceScansOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStackInstanceResourceDrifts(input, options)
    return self:invokeOperation(input, {
        name = "ListStackInstanceResourceDrifts",
        input_schema = schemas.ListStackInstanceResourceDriftsInput,
        output_schema = schemas.ListStackInstanceResourceDriftsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStackInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListStackInstances",
        input_schema = schemas.ListStackInstancesInput,
        output_schema = schemas.ListStackInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStackRefactorActions(input, options)
    return self:invokeOperation(input, {
        name = "ListStackRefactorActions",
        input_schema = schemas.ListStackRefactorActionsInput,
        output_schema = schemas.ListStackRefactorActionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStackRefactors(input, options)
    return self:invokeOperation(input, {
        name = "ListStackRefactors",
        input_schema = schemas.ListStackRefactorsInput,
        output_schema = schemas.ListStackRefactorsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStackResources(input, options)
    return self:invokeOperation(input, {
        name = "ListStackResources",
        input_schema = schemas.ListStackResourcesInput,
        output_schema = schemas.ListStackResourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStacks(input, options)
    return self:invokeOperation(input, {
        name = "ListStacks",
        input_schema = schemas.ListStacksInput,
        output_schema = schemas.ListStacksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStackSetAutoDeploymentTargets(input, options)
    return self:invokeOperation(input, {
        name = "ListStackSetAutoDeploymentTargets",
        input_schema = schemas.ListStackSetAutoDeploymentTargetsInput,
        output_schema = schemas.ListStackSetAutoDeploymentTargetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStackSetOperationResults(input, options)
    return self:invokeOperation(input, {
        name = "ListStackSetOperationResults",
        input_schema = schemas.ListStackSetOperationResultsInput,
        output_schema = schemas.ListStackSetOperationResultsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStackSetOperations(input, options)
    return self:invokeOperation(input, {
        name = "ListStackSetOperations",
        input_schema = schemas.ListStackSetOperationsInput,
        output_schema = schemas.ListStackSetOperationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStackSets(input, options)
    return self:invokeOperation(input, {
        name = "ListStackSets",
        input_schema = schemas.ListStackSetsInput,
        output_schema = schemas.ListStackSetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTypeRegistrations(input, options)
    return self:invokeOperation(input, {
        name = "ListTypeRegistrations",
        input_schema = schemas.ListTypeRegistrationsInput,
        output_schema = schemas.ListTypeRegistrationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListTypes",
        input_schema = schemas.ListTypesInput,
        output_schema = schemas.ListTypesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTypeVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListTypeVersions",
        input_schema = schemas.ListTypeVersionsInput,
        output_schema = schemas.ListTypeVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:publishType(input, options)
    return self:invokeOperation(input, {
        name = "PublishType",
        input_schema = schemas.PublishTypeInput,
        output_schema = schemas.PublishTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:recordHandlerProgress(input, options)
    return self:invokeOperation(input, {
        name = "RecordHandlerProgress",
        input_schema = schemas.RecordHandlerProgressInput,
        output_schema = schemas.RecordHandlerProgressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerPublisher(input, options)
    return self:invokeOperation(input, {
        name = "RegisterPublisher",
        input_schema = schemas.RegisterPublisherInput,
        output_schema = schemas.RegisterPublisherOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerType(input, options)
    return self:invokeOperation(input, {
        name = "RegisterType",
        input_schema = schemas.RegisterTypeInput,
        output_schema = schemas.RegisterTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rollbackStack(input, options)
    return self:invokeOperation(input, {
        name = "RollbackStack",
        input_schema = schemas.RollbackStackInput,
        output_schema = schemas.RollbackStackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setStackPolicy(input, options)
    return self:invokeOperation(input, {
        name = "SetStackPolicy",
        input_schema = schemas.SetStackPolicyInput,
        output_schema = schemas.SetStackPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setTypeConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "SetTypeConfiguration",
        input_schema = schemas.SetTypeConfigurationInput,
        output_schema = schemas.SetTypeConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setTypeDefaultVersion(input, options)
    return self:invokeOperation(input, {
        name = "SetTypeDefaultVersion",
        input_schema = schemas.SetTypeDefaultVersionInput,
        output_schema = schemas.SetTypeDefaultVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:signalResource(input, options)
    return self:invokeOperation(input, {
        name = "SignalResource",
        input_schema = schemas.SignalResourceInput,
        output_schema = schemas.SignalResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startResourceScan(input, options)
    return self:invokeOperation(input, {
        name = "StartResourceScan",
        input_schema = schemas.StartResourceScanInput,
        output_schema = schemas.StartResourceScanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopStackSetOperation(input, options)
    return self:invokeOperation(input, {
        name = "StopStackSetOperation",
        input_schema = schemas.StopStackSetOperationInput,
        output_schema = schemas.StopStackSetOperationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:testType(input, options)
    return self:invokeOperation(input, {
        name = "TestType",
        input_schema = schemas.TestTypeInput,
        output_schema = schemas.TestTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGeneratedTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGeneratedTemplate",
        input_schema = schemas.UpdateGeneratedTemplateInput,
        output_schema = schemas.UpdateGeneratedTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateStack(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStack",
        input_schema = schemas.UpdateStackInput,
        output_schema = schemas.UpdateStackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateStackInstances(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStackInstances",
        input_schema = schemas.UpdateStackInstancesInput,
        output_schema = schemas.UpdateStackInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateStackSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStackSet",
        input_schema = schemas.UpdateStackSetInput,
        output_schema = schemas.UpdateStackSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTerminationProtection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTerminationProtection",
        input_schema = schemas.UpdateTerminationProtectionInput,
        output_schema = schemas.UpdateTerminationProtectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:validateTemplate(input, options)
    return self:invokeOperation(input, {
        name = "ValidateTemplate",
        input_schema = schemas.ValidateTemplateInput,
        output_schema = schemas.ValidateTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
