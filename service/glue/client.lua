



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("glue.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("glue.schemas")
local traits = require("smithy.traits")
local types = require("glue.types")
local sdk_defaults = require("aws.sdk_defaults")















































































































































































































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSGlue"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "glue", signing_region = c.region } }
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

function C:batchCreatePartition(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchCreatePartition, input, options)
end

function C:batchDeleteConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteConnection, input, options)
end

function C:batchDeletePartition(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeletePartition, input, options)
end

function C:batchDeleteTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteTable, input, options)
end

function C:batchDeleteTableVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteTableVersion, input, options)
end

function C:batchGetBlueprints(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetBlueprints, input, options)
end

function C:batchGetCrawlers(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetCrawlers, input, options)
end

function C:batchGetCustomEntityTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetCustomEntityTypes, input, options)
end

function C:batchGetDataQualityResult(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetDataQualityResult, input, options)
end

function C:batchGetDevEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetDevEndpoints, input, options)
end

function C:batchGetJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetJobs, input, options)
end

function C:batchGetPartition(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetPartition, input, options)
end

function C:batchGetTableOptimizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetTableOptimizer, input, options)
end

function C:batchGetTriggers(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetTriggers, input, options)
end

function C:batchGetWorkflows(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetWorkflows, input, options)
end

function C:batchPutDataQualityStatisticAnnotation(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchPutDataQualityStatisticAnnotation, input, options)
end

function C:batchStopJobRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchStopJobRun, input, options)
end

function C:batchUpdatePartition(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdatePartition, input, options)
end

function C:cancelDataQualityRuleRecommendationRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelDataQualityRuleRecommendationRun, input, options)
end

function C:cancelDataQualityRulesetEvaluationRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelDataQualityRulesetEvaluationRun, input, options)
end

function C:cancelMLTaskRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelMLTaskRun, input, options)
end

function C:cancelStatement(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelStatement, input, options)
end

function C:checkSchemaVersionValidity(input, options)
   return self:invokeOperation(schemas.Service, schemas.CheckSchemaVersionValidity, input, options)
end

function C:createBlueprint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBlueprint, input, options)
end

function C:createCatalog(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCatalog, input, options)
end

function C:createClassifier(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateClassifier, input, options)
end

function C:createColumnStatisticsTaskSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateColumnStatisticsTaskSettings, input, options)
end

function C:createConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConnection, input, options)
end

function C:createCrawler(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCrawler, input, options)
end

function C:createCustomEntityType(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCustomEntityType, input, options)
end

function C:createDatabase(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDatabase, input, options)
end

function C:createDataQualityRuleset(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataQualityRuleset, input, options)
end

function C:createDevEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDevEndpoint, input, options)
end

function C:createGlueIdentityCenterConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGlueIdentityCenterConfiguration, input, options)
end

function C:createIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIntegration, input, options)
end

function C:createIntegrationResourceProperty(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIntegrationResourceProperty, input, options)
end

function C:createIntegrationTableProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIntegrationTableProperties, input, options)
end

function C:createJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateJob, input, options)
end

function C:createMLTransform(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMLTransform, input, options)
end

function C:createPartition(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePartition, input, options)
end

function C:createPartitionIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePartitionIndex, input, options)
end

function C:createRegistry(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRegistry, input, options)
end

function C:createSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSchema, input, options)
end

function C:createScript(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateScript, input, options)
end

function C:createSecurityConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSecurityConfiguration, input, options)
end

function C:createSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSession, input, options)
end

function C:createTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTable, input, options)
end

function C:createTableOptimizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTableOptimizer, input, options)
end

function C:createTrigger(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrigger, input, options)
end

function C:createUsageProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUsageProfile, input, options)
end

function C:createUserDefinedFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUserDefinedFunction, input, options)
end

function C:createWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkflow, input, options)
end

function C:deleteBlueprint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBlueprint, input, options)
end

function C:deleteCatalog(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCatalog, input, options)
end

function C:deleteClassifier(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteClassifier, input, options)
end

function C:deleteColumnStatisticsForPartition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteColumnStatisticsForPartition, input, options)
end

function C:deleteColumnStatisticsForTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteColumnStatisticsForTable, input, options)
end

function C:deleteColumnStatisticsTaskSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteColumnStatisticsTaskSettings, input, options)
end

function C:deleteConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConnection, input, options)
end

function C:deleteConnectionType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConnectionType, input, options)
end

function C:deleteCrawler(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCrawler, input, options)
end

function C:deleteCustomEntityType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCustomEntityType, input, options)
end

function C:deleteDatabase(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDatabase, input, options)
end

function C:deleteDataQualityRuleset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataQualityRuleset, input, options)
end

function C:deleteDevEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDevEndpoint, input, options)
end

function C:deleteGlueIdentityCenterConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGlueIdentityCenterConfiguration, input, options)
end

function C:deleteIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIntegration, input, options)
end

function C:deleteIntegrationResourceProperty(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIntegrationResourceProperty, input, options)
end

function C:deleteIntegrationTableProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIntegrationTableProperties, input, options)
end

function C:deleteJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteJob, input, options)
end

function C:deleteMLTransform(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMLTransform, input, options)
end

function C:deletePartition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePartition, input, options)
end

function C:deletePartitionIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePartitionIndex, input, options)
end

function C:deleteRegistry(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRegistry, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deleteSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSchema, input, options)
end

function C:deleteSchemaVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSchemaVersions, input, options)
end

function C:deleteSecurityConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSecurityConfiguration, input, options)
end

function C:deleteSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSession, input, options)
end

function C:deleteTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTable, input, options)
end

function C:deleteTableOptimizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTableOptimizer, input, options)
end

function C:deleteTableVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTableVersion, input, options)
end

function C:deleteTrigger(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTrigger, input, options)
end

function C:deleteUsageProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUsageProfile, input, options)
end

function C:deleteUserDefinedFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUserDefinedFunction, input, options)
end

function C:deleteWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkflow, input, options)
end

function C:describeConnectionType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConnectionType, input, options)
end

function C:describeEntity(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEntity, input, options)
end

function C:describeInboundIntegrations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInboundIntegrations, input, options)
end

function C:describeIntegrations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIntegrations, input, options)
end

function C:getBlueprint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBlueprint, input, options)
end

function C:getBlueprintRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBlueprintRun, input, options)
end

function C:getBlueprintRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBlueprintRuns, input, options)
end

function C:getCatalog(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCatalog, input, options)
end

function C:getCatalogImportStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCatalogImportStatus, input, options)
end

function C:getCatalogs(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCatalogs, input, options)
end

function C:getClassifier(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetClassifier, input, options)
end

function C:getClassifiers(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetClassifiers, input, options)
end

function C:getColumnStatisticsForPartition(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetColumnStatisticsForPartition, input, options)
end

function C:getColumnStatisticsForTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetColumnStatisticsForTable, input, options)
end

function C:getColumnStatisticsTaskRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetColumnStatisticsTaskRun, input, options)
end

function C:getColumnStatisticsTaskRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetColumnStatisticsTaskRuns, input, options)
end

function C:getColumnStatisticsTaskSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetColumnStatisticsTaskSettings, input, options)
end

function C:getConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnection, input, options)
end

function C:getConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnections, input, options)
end

function C:getCrawler(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCrawler, input, options)
end

function C:getCrawlerMetrics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCrawlerMetrics, input, options)
end

function C:getCrawlers(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCrawlers, input, options)
end

function C:getCustomEntityType(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCustomEntityType, input, options)
end

function C:getDatabase(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDatabase, input, options)
end

function C:getDatabases(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDatabases, input, options)
end

function C:getDataCatalogEncryptionSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataCatalogEncryptionSettings, input, options)
end

function C:getDataflowGraph(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataflowGraph, input, options)
end

function C:getDataQualityModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataQualityModel, input, options)
end

function C:getDataQualityModelResult(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataQualityModelResult, input, options)
end

function C:getDataQualityResult(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataQualityResult, input, options)
end

function C:getDataQualityRuleRecommendationRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataQualityRuleRecommendationRun, input, options)
end

function C:getDataQualityRuleset(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataQualityRuleset, input, options)
end

function C:getDataQualityRulesetEvaluationRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataQualityRulesetEvaluationRun, input, options)
end

function C:getDevEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDevEndpoint, input, options)
end

function C:getDevEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDevEndpoints, input, options)
end

function C:getEntityRecords(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEntityRecords, input, options)
end

function C:getGlueIdentityCenterConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGlueIdentityCenterConfiguration, input, options)
end

function C:getIntegrationResourceProperty(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIntegrationResourceProperty, input, options)
end

function C:getIntegrationTableProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIntegrationTableProperties, input, options)
end

function C:getJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJob, input, options)
end

function C:getJobBookmark(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJobBookmark, input, options)
end

function C:getJobRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJobRun, input, options)
end

function C:getJobRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJobRuns, input, options)
end

function C:getJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJobs, input, options)
end

function C:getMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMapping, input, options)
end

function C:getMaterializedViewRefreshTaskRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMaterializedViewRefreshTaskRun, input, options)
end

function C:getMLTaskRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMLTaskRun, input, options)
end

function C:getMLTaskRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMLTaskRuns, input, options)
end

function C:getMLTransform(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMLTransform, input, options)
end

function C:getMLTransforms(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMLTransforms, input, options)
end

function C:getPartition(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPartition, input, options)
end

function C:getPartitionIndexes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPartitionIndexes, input, options)
end

function C:getPartitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPartitions, input, options)
end

function C:getPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPlan, input, options)
end

function C:getRegistry(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRegistry, input, options)
end

function C:getResourcePolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicies, input, options)
end

function C:getResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicy, input, options)
end

function C:getSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSchema, input, options)
end

function C:getSchemaByDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSchemaByDefinition, input, options)
end

function C:getSchemaVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSchemaVersion, input, options)
end

function C:getSchemaVersionsDiff(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSchemaVersionsDiff, input, options)
end

function C:getSecurityConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSecurityConfiguration, input, options)
end

function C:getSecurityConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSecurityConfigurations, input, options)
end

function C:getSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSession, input, options)
end

function C:getStatement(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStatement, input, options)
end

function C:getTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTable, input, options)
end

function C:getTableOptimizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTableOptimizer, input, options)
end

function C:getTables(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTables, input, options)
end

function C:getTableVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTableVersion, input, options)
end

function C:getTableVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTableVersions, input, options)
end

function C:getTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTags, input, options)
end

function C:getTrigger(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTrigger, input, options)
end

function C:getTriggers(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTriggers, input, options)
end

function C:getUnfilteredPartitionMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUnfilteredPartitionMetadata, input, options)
end

function C:getUnfilteredPartitionsMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUnfilteredPartitionsMetadata, input, options)
end

function C:getUnfilteredTableMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUnfilteredTableMetadata, input, options)
end

function C:getUsageProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUsageProfile, input, options)
end

function C:getUserDefinedFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUserDefinedFunction, input, options)
end

function C:getUserDefinedFunctions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUserDefinedFunctions, input, options)
end

function C:getWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkflow, input, options)
end

function C:getWorkflowRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkflowRun, input, options)
end

function C:getWorkflowRunProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkflowRunProperties, input, options)
end

function C:getWorkflowRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkflowRuns, input, options)
end

function C:importCatalogToGlue(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportCatalogToGlue, input, options)
end

function C:listBlueprints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBlueprints, input, options)
end

function C:listColumnStatisticsTaskRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListColumnStatisticsTaskRuns, input, options)
end

function C:listConnectionTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConnectionTypes, input, options)
end

function C:listCrawlers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCrawlers, input, options)
end

function C:listCrawls(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCrawls, input, options)
end

function C:listCustomEntityTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCustomEntityTypes, input, options)
end

function C:listDataQualityResults(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataQualityResults, input, options)
end

function C:listDataQualityRuleRecommendationRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataQualityRuleRecommendationRuns, input, options)
end

function C:listDataQualityRulesetEvaluationRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataQualityRulesetEvaluationRuns, input, options)
end

function C:listDataQualityRulesets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataQualityRulesets, input, options)
end

function C:listDataQualityStatisticAnnotations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataQualityStatisticAnnotations, input, options)
end

function C:listDataQualityStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataQualityStatistics, input, options)
end

function C:listDevEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDevEndpoints, input, options)
end

function C:listEntities(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEntities, input, options)
end

function C:listIntegrationResourceProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIntegrationResourceProperties, input, options)
end

function C:listJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobs, input, options)
end

function C:listMaterializedViewRefreshTaskRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMaterializedViewRefreshTaskRuns, input, options)
end

function C:listMLTransforms(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMLTransforms, input, options)
end

function C:listRegistries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRegistries, input, options)
end

function C:listSchemas(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSchemas, input, options)
end

function C:listSchemaVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSchemaVersions, input, options)
end

function C:listSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSessions, input, options)
end

function C:listStatements(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStatements, input, options)
end

function C:listTableOptimizerRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTableOptimizerRuns, input, options)
end

function C:listTriggers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTriggers, input, options)
end

function C:listUsageProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUsageProfiles, input, options)
end

function C:listWorkflows(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkflows, input, options)
end

function C:modifyIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyIntegration, input, options)
end

function C:putDataCatalogEncryptionSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDataCatalogEncryptionSettings, input, options)
end

function C:putDataQualityProfileAnnotation(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDataQualityProfileAnnotation, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:putSchemaVersionMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutSchemaVersionMetadata, input, options)
end

function C:putWorkflowRunProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutWorkflowRunProperties, input, options)
end

function C:querySchemaVersionMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.QuerySchemaVersionMetadata, input, options)
end

function C:registerConnectionType(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterConnectionType, input, options)
end

function C:registerSchemaVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterSchemaVersion, input, options)
end

function C:removeSchemaVersionMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveSchemaVersionMetadata, input, options)
end

function C:resetJobBookmark(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetJobBookmark, input, options)
end

function C:resumeWorkflowRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResumeWorkflowRun, input, options)
end

function C:runStatement(input, options)
   return self:invokeOperation(schemas.Service, schemas.RunStatement, input, options)
end

function C:searchTables(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchTables, input, options)
end

function C:startBlueprintRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartBlueprintRun, input, options)
end

function C:startColumnStatisticsTaskRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartColumnStatisticsTaskRun, input, options)
end

function C:startColumnStatisticsTaskRunSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartColumnStatisticsTaskRunSchedule, input, options)
end

function C:startCrawler(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartCrawler, input, options)
end

function C:startCrawlerSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartCrawlerSchedule, input, options)
end

function C:startDataQualityRuleRecommendationRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDataQualityRuleRecommendationRun, input, options)
end

function C:startDataQualityRulesetEvaluationRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDataQualityRulesetEvaluationRun, input, options)
end

function C:startExportLabelsTaskRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartExportLabelsTaskRun, input, options)
end

function C:startImportLabelsTaskRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartImportLabelsTaskRun, input, options)
end

function C:startJobRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartJobRun, input, options)
end

function C:startMaterializedViewRefreshTaskRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMaterializedViewRefreshTaskRun, input, options)
end

function C:startMLEvaluationTaskRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMLEvaluationTaskRun, input, options)
end

function C:startMLLabelingSetGenerationTaskRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMLLabelingSetGenerationTaskRun, input, options)
end

function C:startTrigger(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartTrigger, input, options)
end

function C:startWorkflowRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartWorkflowRun, input, options)
end

function C:stopColumnStatisticsTaskRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopColumnStatisticsTaskRun, input, options)
end

function C:stopColumnStatisticsTaskRunSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopColumnStatisticsTaskRunSchedule, input, options)
end

function C:stopCrawler(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopCrawler, input, options)
end

function C:stopCrawlerSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopCrawlerSchedule, input, options)
end

function C:stopMaterializedViewRefreshTaskRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopMaterializedViewRefreshTaskRun, input, options)
end

function C:stopSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopSession, input, options)
end

function C:stopTrigger(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopTrigger, input, options)
end

function C:stopWorkflowRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopWorkflowRun, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:testConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestConnection, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateBlueprint(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBlueprint, input, options)
end

function C:updateCatalog(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCatalog, input, options)
end

function C:updateClassifier(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateClassifier, input, options)
end

function C:updateColumnStatisticsForPartition(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateColumnStatisticsForPartition, input, options)
end

function C:updateColumnStatisticsForTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateColumnStatisticsForTable, input, options)
end

function C:updateColumnStatisticsTaskSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateColumnStatisticsTaskSettings, input, options)
end

function C:updateConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConnection, input, options)
end

function C:updateCrawler(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCrawler, input, options)
end

function C:updateCrawlerSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCrawlerSchedule, input, options)
end

function C:updateDatabase(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDatabase, input, options)
end

function C:updateDataQualityRuleset(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataQualityRuleset, input, options)
end

function C:updateDevEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDevEndpoint, input, options)
end

function C:updateGlueIdentityCenterConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGlueIdentityCenterConfiguration, input, options)
end

function C:updateIntegrationResourceProperty(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIntegrationResourceProperty, input, options)
end

function C:updateIntegrationTableProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIntegrationTableProperties, input, options)
end

function C:updateJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateJob, input, options)
end

function C:updateJobFromSourceControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateJobFromSourceControl, input, options)
end

function C:updateMLTransform(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMLTransform, input, options)
end

function C:updatePartition(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePartition, input, options)
end

function C:updateRegistry(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRegistry, input, options)
end

function C:updateSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSchema, input, options)
end

function C:updateSourceControlFromJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSourceControlFromJob, input, options)
end

function C:updateTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTable, input, options)
end

function C:updateTableOptimizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTableOptimizer, input, options)
end

function C:updateTrigger(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTrigger, input, options)
end

function C:updateUsageProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUsageProfile, input, options)
end

function C:updateUserDefinedFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUserDefinedFunction, input, options)
end

function C:updateWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkflow, input, options)
end

return M
