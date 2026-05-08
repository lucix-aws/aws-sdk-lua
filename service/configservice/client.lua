



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("configservice.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("configservice.schemas")
local traits = require("smithy.traits")
local types = require("configservice.types")
local sdk_defaults = require("aws.sdk_defaults")







































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "StarlingDoveService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "config", signing_region = c.region } }
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

function C:associateResourceTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateResourceTypes, input, options)
end

function C:batchGetAggregateResourceConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetAggregateResourceConfig, input, options)
end

function C:batchGetResourceConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetResourceConfig, input, options)
end

function C:deleteAggregationAuthorization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAggregationAuthorization, input, options)
end

function C:deleteConfigRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfigRule, input, options)
end

function C:deleteConfigurationAggregator(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfigurationAggregator, input, options)
end

function C:deleteConfigurationRecorder(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfigurationRecorder, input, options)
end

function C:deleteConformancePack(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConformancePack, input, options)
end

function C:deleteDeliveryChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDeliveryChannel, input, options)
end

function C:deleteEvaluationResults(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEvaluationResults, input, options)
end

function C:deleteOrganizationConfigRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOrganizationConfigRule, input, options)
end

function C:deleteOrganizationConformancePack(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOrganizationConformancePack, input, options)
end

function C:deletePendingAggregationRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePendingAggregationRequest, input, options)
end

function C:deleteRemediationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRemediationConfiguration, input, options)
end

function C:deleteRemediationExceptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRemediationExceptions, input, options)
end

function C:deleteResourceConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourceConfig, input, options)
end

function C:deleteRetentionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRetentionConfiguration, input, options)
end

function C:deleteServiceLinkedConfigurationRecorder(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteServiceLinkedConfigurationRecorder, input, options)
end

function C:deleteStoredQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStoredQuery, input, options)
end

function C:deliverConfigSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeliverConfigSnapshot, input, options)
end

function C:describeAggregateComplianceByConfigRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAggregateComplianceByConfigRules, input, options)
end

function C:describeAggregateComplianceByConformancePacks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAggregateComplianceByConformancePacks, input, options)
end

function C:describeAggregationAuthorizations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAggregationAuthorizations, input, options)
end

function C:describeComplianceByConfigRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeComplianceByConfigRule, input, options)
end

function C:describeComplianceByResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeComplianceByResource, input, options)
end

function C:describeConfigRuleEvaluationStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConfigRuleEvaluationStatus, input, options)
end

function C:describeConfigRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConfigRules, input, options)
end

function C:describeConfigurationAggregators(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConfigurationAggregators, input, options)
end

function C:describeConfigurationAggregatorSourcesStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConfigurationAggregatorSourcesStatus, input, options)
end

function C:describeConfigurationRecorders(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConfigurationRecorders, input, options)
end

function C:describeConfigurationRecorderStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConfigurationRecorderStatus, input, options)
end

function C:describeConformancePackCompliance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConformancePackCompliance, input, options)
end

function C:describeConformancePacks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConformancePacks, input, options)
end

function C:describeConformancePackStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConformancePackStatus, input, options)
end

function C:describeDeliveryChannels(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDeliveryChannels, input, options)
end

function C:describeDeliveryChannelStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDeliveryChannelStatus, input, options)
end

function C:describeOrganizationConfigRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOrganizationConfigRules, input, options)
end

function C:describeOrganizationConfigRuleStatuses(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOrganizationConfigRuleStatuses, input, options)
end

function C:describeOrganizationConformancePacks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOrganizationConformancePacks, input, options)
end

function C:describeOrganizationConformancePackStatuses(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOrganizationConformancePackStatuses, input, options)
end

function C:describePendingAggregationRequests(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePendingAggregationRequests, input, options)
end

function C:describeRemediationConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRemediationConfigurations, input, options)
end

function C:describeRemediationExceptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRemediationExceptions, input, options)
end

function C:describeRemediationExecutionStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRemediationExecutionStatus, input, options)
end

function C:describeRetentionConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRetentionConfigurations, input, options)
end

function C:disassociateResourceTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateResourceTypes, input, options)
end

function C:getAggregateComplianceDetailsByConfigRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAggregateComplianceDetailsByConfigRule, input, options)
end

function C:getAggregateConfigRuleComplianceSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAggregateConfigRuleComplianceSummary, input, options)
end

function C:getAggregateConformancePackComplianceSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAggregateConformancePackComplianceSummary, input, options)
end

function C:getAggregateDiscoveredResourceCounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAggregateDiscoveredResourceCounts, input, options)
end

function C:getAggregateResourceConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAggregateResourceConfig, input, options)
end

function C:getComplianceDetailsByConfigRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetComplianceDetailsByConfigRule, input, options)
end

function C:getComplianceDetailsByResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetComplianceDetailsByResource, input, options)
end

function C:getComplianceSummaryByConfigRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetComplianceSummaryByConfigRule, input, options)
end

function C:getComplianceSummaryByResourceType(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetComplianceSummaryByResourceType, input, options)
end

function C:getConformancePackComplianceDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConformancePackComplianceDetails, input, options)
end

function C:getConformancePackComplianceSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConformancePackComplianceSummary, input, options)
end

function C:getCustomRulePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCustomRulePolicy, input, options)
end

function C:getDiscoveredResourceCounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDiscoveredResourceCounts, input, options)
end

function C:getOrganizationConfigRuleDetailedStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOrganizationConfigRuleDetailedStatus, input, options)
end

function C:getOrganizationConformancePackDetailedStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOrganizationConformancePackDetailedStatus, input, options)
end

function C:getOrganizationCustomRulePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOrganizationCustomRulePolicy, input, options)
end

function C:getResourceConfigHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceConfigHistory, input, options)
end

function C:getResourceEvaluationSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceEvaluationSummary, input, options)
end

function C:getStoredQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStoredQuery, input, options)
end

function C:listAggregateDiscoveredResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAggregateDiscoveredResources, input, options)
end

function C:listConfigurationRecorders(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfigurationRecorders, input, options)
end

function C:listConformancePackComplianceScores(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConformancePackComplianceScores, input, options)
end

function C:listDiscoveredResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDiscoveredResources, input, options)
end

function C:listResourceEvaluations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceEvaluations, input, options)
end

function C:listStoredQueries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStoredQueries, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putAggregationAuthorization(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAggregationAuthorization, input, options)
end

function C:putConfigRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutConfigRule, input, options)
end

function C:putConfigurationAggregator(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutConfigurationAggregator, input, options)
end

function C:putConfigurationRecorder(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutConfigurationRecorder, input, options)
end

function C:putConformancePack(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutConformancePack, input, options)
end

function C:putDeliveryChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDeliveryChannel, input, options)
end

function C:putEvaluations(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutEvaluations, input, options)
end

function C:putExternalEvaluation(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutExternalEvaluation, input, options)
end

function C:putOrganizationConfigRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutOrganizationConfigRule, input, options)
end

function C:putOrganizationConformancePack(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutOrganizationConformancePack, input, options)
end

function C:putRemediationConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRemediationConfigurations, input, options)
end

function C:putRemediationExceptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRemediationExceptions, input, options)
end

function C:putResourceConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourceConfig, input, options)
end

function C:putRetentionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRetentionConfiguration, input, options)
end

function C:putServiceLinkedConfigurationRecorder(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutServiceLinkedConfigurationRecorder, input, options)
end

function C:putStoredQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutStoredQuery, input, options)
end

function C:selectAggregateResourceConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.SelectAggregateResourceConfig, input, options)
end

function C:selectResourceConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.SelectResourceConfig, input, options)
end

function C:startConfigRulesEvaluation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartConfigRulesEvaluation, input, options)
end

function C:startConfigurationRecorder(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartConfigurationRecorder, input, options)
end

function C:startRemediationExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartRemediationExecution, input, options)
end

function C:startResourceEvaluation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartResourceEvaluation, input, options)
end

function C:stopConfigurationRecorder(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopConfigurationRecorder, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

return M
