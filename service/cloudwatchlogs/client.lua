



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("cloudwatchlogs.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("cloudwatchlogs.schemas")
local traits = require("smithy.traits")
local types = require("cloudwatchlogs.types")
local sdk_defaults = require("aws.sdk_defaults")























































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Logs_20140328"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "logs", signing_region = c.region } }
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

function C:associateKmsKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateKmsKey, input, options)
end

function C:associateSourceToS3TableIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateSourceToS3TableIntegration, input, options)
end

function C:cancelExportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelExportTask, input, options)
end

function C:cancelImportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelImportTask, input, options)
end

function C:createDelivery(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDelivery, input, options)
end

function C:createExportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateExportTask, input, options)
end

function C:createImportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateImportTask, input, options)
end

function C:createLogAnomalyDetector(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLogAnomalyDetector, input, options)
end

function C:createLogGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLogGroup, input, options)
end

function C:createLogStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLogStream, input, options)
end

function C:createLookupTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLookupTable, input, options)
end

function C:createScheduledQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateScheduledQuery, input, options)
end

function C:deleteAccountPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccountPolicy, input, options)
end

function C:deleteDataProtectionPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataProtectionPolicy, input, options)
end

function C:deleteDelivery(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDelivery, input, options)
end

function C:deleteDeliveryDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDeliveryDestination, input, options)
end

function C:deleteDeliveryDestinationPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDeliveryDestinationPolicy, input, options)
end

function C:deleteDeliverySource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDeliverySource, input, options)
end

function C:deleteDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDestination, input, options)
end

function C:deleteIndexPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIndexPolicy, input, options)
end

function C:deleteIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIntegration, input, options)
end

function C:deleteLogAnomalyDetector(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLogAnomalyDetector, input, options)
end

function C:deleteLogGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLogGroup, input, options)
end

function C:deleteLogStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLogStream, input, options)
end

function C:deleteLookupTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLookupTable, input, options)
end

function C:deleteMetricFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMetricFilter, input, options)
end

function C:deleteQueryDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteQueryDefinition, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deleteRetentionPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRetentionPolicy, input, options)
end

function C:deleteScheduledQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteScheduledQuery, input, options)
end

function C:deleteSubscriptionFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSubscriptionFilter, input, options)
end

function C:deleteTransformer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTransformer, input, options)
end

function C:describeAccountPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountPolicies, input, options)
end

function C:describeConfigurationTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConfigurationTemplates, input, options)
end

function C:describeDeliveries(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDeliveries, input, options)
end

function C:describeDeliveryDestinations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDeliveryDestinations, input, options)
end

function C:describeDeliverySources(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDeliverySources, input, options)
end

function C:describeDestinations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDestinations, input, options)
end

function C:describeExportTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeExportTasks, input, options)
end

function C:describeFieldIndexes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFieldIndexes, input, options)
end

function C:describeImportTaskBatches(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImportTaskBatches, input, options)
end

function C:describeImportTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImportTasks, input, options)
end

function C:describeIndexPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIndexPolicies, input, options)
end

function C:describeLogGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLogGroups, input, options)
end

function C:describeLogStreams(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLogStreams, input, options)
end

function C:describeLookupTables(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLookupTables, input, options)
end

function C:describeMetricFilters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMetricFilters, input, options)
end

function C:describeQueries(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeQueries, input, options)
end

function C:describeQueryDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeQueryDefinitions, input, options)
end

function C:describeResourcePolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeResourcePolicies, input, options)
end

function C:describeSubscriptionFilters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSubscriptionFilters, input, options)
end

function C:disassociateKmsKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateKmsKey, input, options)
end

function C:disassociateSourceFromS3TableIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateSourceFromS3TableIntegration, input, options)
end

function C:filterLogEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.FilterLogEvents, input, options)
end

function C:getDataProtectionPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataProtectionPolicy, input, options)
end

function C:getDelivery(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDelivery, input, options)
end

function C:getDeliveryDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeliveryDestination, input, options)
end

function C:getDeliveryDestinationPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeliveryDestinationPolicy, input, options)
end

function C:getDeliverySource(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeliverySource, input, options)
end

function C:getIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIntegration, input, options)
end

function C:getLogAnomalyDetector(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLogAnomalyDetector, input, options)
end

function C:getLogEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLogEvents, input, options)
end

function C:getLogFields(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLogFields, input, options)
end

function C:getLogGroupFields(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLogGroupFields, input, options)
end

function C:getLogObject(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLogObject, input, options)
end

function C:getLogRecord(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLogRecord, input, options)
end

function C:getLookupTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLookupTable, input, options)
end

function C:getQueryResults(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQueryResults, input, options)
end

function C:getScheduledQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetScheduledQuery, input, options)
end

function C:getScheduledQueryHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetScheduledQueryHistory, input, options)
end

function C:getTransformer(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTransformer, input, options)
end

function C:listAggregateLogGroupSummaries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAggregateLogGroupSummaries, input, options)
end

function C:listAnomalies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAnomalies, input, options)
end

function C:listIntegrations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIntegrations, input, options)
end

function C:listLogAnomalyDetectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLogAnomalyDetectors, input, options)
end

function C:listLogGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLogGroups, input, options)
end

function C:listLogGroupsForQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLogGroupsForQuery, input, options)
end

function C:listScheduledQueries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListScheduledQueries, input, options)
end

function C:listSourcesForS3TableIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSourcesForS3TableIntegration, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTagsLogGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsLogGroup, input, options)
end

function C:putAccountPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAccountPolicy, input, options)
end

function C:putBearerTokenAuthentication(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBearerTokenAuthentication, input, options)
end

function C:putDataProtectionPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDataProtectionPolicy, input, options)
end

function C:putDeliveryDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDeliveryDestination, input, options)
end

function C:putDeliveryDestinationPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDeliveryDestinationPolicy, input, options)
end

function C:putDeliverySource(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDeliverySource, input, options)
end

function C:putDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDestination, input, options)
end

function C:putDestinationPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDestinationPolicy, input, options)
end

function C:putIndexPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutIndexPolicy, input, options)
end

function C:putIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutIntegration, input, options)
end

function C:putLogEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutLogEvents, input, options)
end

function C:putLogGroupDeletionProtection(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutLogGroupDeletionProtection, input, options)
end

function C:putMetricFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutMetricFilter, input, options)
end

function C:putQueryDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutQueryDefinition, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:putRetentionPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRetentionPolicy, input, options)
end

function C:putSubscriptionFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutSubscriptionFilter, input, options)
end

function C:putTransformer(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutTransformer, input, options)
end

function C:startLiveTail(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartLiveTail, input, options)
end

function C:startQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartQuery, input, options)
end

function C:stopQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopQuery, input, options)
end

function C:tagLogGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagLogGroup, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:testMetricFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestMetricFilter, input, options)
end

function C:testTransformer(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestTransformer, input, options)
end

function C:untagLogGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagLogGroup, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAnomaly(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAnomaly, input, options)
end

function C:updateDeliveryConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDeliveryConfiguration, input, options)
end

function C:updateLogAnomalyDetector(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLogAnomalyDetector, input, options)
end

function C:updateLookupTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLookupTable, input, options)
end

function C:updateScheduledQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateScheduledQuery, input, options)
end

return M
