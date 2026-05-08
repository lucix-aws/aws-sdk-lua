



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("cloudformation.endpoint_rules")
local query_protocol = require("smithy.protocol.awsquery")
local schemas = require("cloudformation.schemas")
local traits = require("smithy.traits")
local types = require("cloudformation.types")
local sdk_defaults = require("aws.sdk_defaults")
































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "CloudFormation"
   if not c.protocol then c.protocol = query_protocol.new("awsQuery") end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cloudformation", signing_region = c.region } }
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

function C:activateOrganizationsAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.ActivateOrganizationsAccess, input, options)
end

function C:activateType(input, options)
   return self:invokeOperation(schemas.Service, schemas.ActivateType, input, options)
end

function C:batchDescribeTypeConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDescribeTypeConfigurations, input, options)
end

function C:cancelUpdateStack(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelUpdateStack, input, options)
end

function C:continueUpdateRollback(input, options)
   return self:invokeOperation(schemas.Service, schemas.ContinueUpdateRollback, input, options)
end

function C:createChangeSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateChangeSet, input, options)
end

function C:createGeneratedTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGeneratedTemplate, input, options)
end

function C:createStack(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStack, input, options)
end

function C:createStackInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStackInstances, input, options)
end

function C:createStackRefactor(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStackRefactor, input, options)
end

function C:createStackSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStackSet, input, options)
end

function C:deactivateOrganizationsAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeactivateOrganizationsAccess, input, options)
end

function C:deactivateType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeactivateType, input, options)
end

function C:deleteChangeSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteChangeSet, input, options)
end

function C:deleteGeneratedTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGeneratedTemplate, input, options)
end

function C:deleteStack(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStack, input, options)
end

function C:deleteStackInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStackInstances, input, options)
end

function C:deleteStackSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStackSet, input, options)
end

function C:deregisterType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterType, input, options)
end

function C:describeAccountLimits(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountLimits, input, options)
end

function C:describeChangeSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeChangeSet, input, options)
end

function C:describeChangeSetHooks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeChangeSetHooks, input, options)
end

function C:describeEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEvents, input, options)
end

function C:describeGeneratedTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGeneratedTemplate, input, options)
end

function C:describeOrganizationsAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOrganizationsAccess, input, options)
end

function C:describePublisher(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePublisher, input, options)
end

function C:describeResourceScan(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeResourceScan, input, options)
end

function C:describeStackDriftDetectionStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStackDriftDetectionStatus, input, options)
end

function C:describeStackEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStackEvents, input, options)
end

function C:describeStackInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStackInstance, input, options)
end

function C:describeStackRefactor(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStackRefactor, input, options)
end

function C:describeStackResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStackResource, input, options)
end

function C:describeStackResourceDrifts(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStackResourceDrifts, input, options)
end

function C:describeStackResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStackResources, input, options)
end

function C:describeStacks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStacks, input, options)
end

function C:describeStackSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStackSet, input, options)
end

function C:describeStackSetOperation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStackSetOperation, input, options)
end

function C:describeType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeType, input, options)
end

function C:describeTypeRegistration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTypeRegistration, input, options)
end

function C:detectStackDrift(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetectStackDrift, input, options)
end

function C:detectStackResourceDrift(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetectStackResourceDrift, input, options)
end

function C:detectStackSetDrift(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetectStackSetDrift, input, options)
end

function C:estimateTemplateCost(input, options)
   return self:invokeOperation(schemas.Service, schemas.EstimateTemplateCost, input, options)
end

function C:executeChangeSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExecuteChangeSet, input, options)
end

function C:executeStackRefactor(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExecuteStackRefactor, input, options)
end

function C:getGeneratedTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGeneratedTemplate, input, options)
end

function C:getHookResult(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetHookResult, input, options)
end

function C:getStackPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStackPolicy, input, options)
end

function C:getTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTemplate, input, options)
end

function C:getTemplateSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTemplateSummary, input, options)
end

function C:importStacksToStackSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportStacksToStackSet, input, options)
end

function C:listChangeSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChangeSets, input, options)
end

function C:listExports(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExports, input, options)
end

function C:listGeneratedTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGeneratedTemplates, input, options)
end

function C:listHookResults(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHookResults, input, options)
end

function C:listImports(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImports, input, options)
end

function C:listResourceScanRelatedResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceScanRelatedResources, input, options)
end

function C:listResourceScanResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceScanResources, input, options)
end

function C:listResourceScans(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceScans, input, options)
end

function C:listStackInstanceResourceDrifts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStackInstanceResourceDrifts, input, options)
end

function C:listStackInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStackInstances, input, options)
end

function C:listStackRefactorActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStackRefactorActions, input, options)
end

function C:listStackRefactors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStackRefactors, input, options)
end

function C:listStackResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStackResources, input, options)
end

function C:listStacks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStacks, input, options)
end

function C:listStackSetAutoDeploymentTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStackSetAutoDeploymentTargets, input, options)
end

function C:listStackSetOperationResults(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStackSetOperationResults, input, options)
end

function C:listStackSetOperations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStackSetOperations, input, options)
end

function C:listStackSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStackSets, input, options)
end

function C:listTypeRegistrations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTypeRegistrations, input, options)
end

function C:listTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTypes, input, options)
end

function C:listTypeVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTypeVersions, input, options)
end

function C:publishType(input, options)
   return self:invokeOperation(schemas.Service, schemas.PublishType, input, options)
end

function C:recordHandlerProgress(input, options)
   return self:invokeOperation(schemas.Service, schemas.RecordHandlerProgress, input, options)
end

function C:registerPublisher(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterPublisher, input, options)
end

function C:registerType(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterType, input, options)
end

function C:rollbackStack(input, options)
   return self:invokeOperation(schemas.Service, schemas.RollbackStack, input, options)
end

function C:setStackPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetStackPolicy, input, options)
end

function C:setTypeConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetTypeConfiguration, input, options)
end

function C:setTypeDefaultVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetTypeDefaultVersion, input, options)
end

function C:signalResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.SignalResource, input, options)
end

function C:startResourceScan(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartResourceScan, input, options)
end

function C:stopStackSetOperation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopStackSetOperation, input, options)
end

function C:testType(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestType, input, options)
end

function C:updateGeneratedTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGeneratedTemplate, input, options)
end

function C:updateStack(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStack, input, options)
end

function C:updateStackInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStackInstances, input, options)
end

function C:updateStackSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStackSet, input, options)
end

function C:updateTerminationProtection(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTerminationProtection, input, options)
end

function C:validateTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.ValidateTemplate, input, options)
end

return M
