local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("glue.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("glue.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSGlue"
    cfg.signing_name = "glue"
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

function Client:batchCreatePartition(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreatePartition",
        input_schema = types.BatchCreatePartitionInput,
        output_schema = types.BatchCreatePartitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDeleteConnection(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteConnection",
        input_schema = types.BatchDeleteConnectionInput,
        output_schema = types.BatchDeleteConnectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDeletePartition(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeletePartition",
        input_schema = types.BatchDeletePartitionInput,
        output_schema = types.BatchDeletePartitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDeleteTable(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteTable",
        input_schema = types.BatchDeleteTableInput,
        output_schema = types.BatchDeleteTableOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDeleteTableVersion(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteTableVersion",
        input_schema = types.BatchDeleteTableVersionInput,
        output_schema = types.BatchDeleteTableVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetBlueprints(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetBlueprints",
        input_schema = types.BatchGetBlueprintsInput,
        output_schema = types.BatchGetBlueprintsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetCrawlers(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetCrawlers",
        input_schema = types.BatchGetCrawlersInput,
        output_schema = types.BatchGetCrawlersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetCustomEntityTypes(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetCustomEntityTypes",
        input_schema = types.BatchGetCustomEntityTypesInput,
        output_schema = types.BatchGetCustomEntityTypesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetDataQualityResult(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetDataQualityResult",
        input_schema = types.BatchGetDataQualityResultInput,
        output_schema = types.BatchGetDataQualityResultOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetDevEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetDevEndpoints",
        input_schema = types.BatchGetDevEndpointsInput,
        output_schema = types.BatchGetDevEndpointsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetJobs(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetJobs",
        input_schema = types.BatchGetJobsInput,
        output_schema = types.BatchGetJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetPartition(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetPartition",
        input_schema = types.BatchGetPartitionInput,
        output_schema = types.BatchGetPartitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetTableOptimizer(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetTableOptimizer",
        input_schema = types.BatchGetTableOptimizerInput,
        output_schema = types.BatchGetTableOptimizerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetTriggers(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetTriggers",
        input_schema = types.BatchGetTriggersInput,
        output_schema = types.BatchGetTriggersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetWorkflows(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetWorkflows",
        input_schema = types.BatchGetWorkflowsInput,
        output_schema = types.BatchGetWorkflowsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchPutDataQualityStatisticAnnotation(input, options)
    return self:invokeOperation(input, {
        name = "BatchPutDataQualityStatisticAnnotation",
        input_schema = types.BatchPutDataQualityStatisticAnnotationInput,
        output_schema = types.BatchPutDataQualityStatisticAnnotationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchStopJobRun(input, options)
    return self:invokeOperation(input, {
        name = "BatchStopJobRun",
        input_schema = types.BatchStopJobRunInput,
        output_schema = types.BatchStopJobRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchUpdatePartition(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdatePartition",
        input_schema = types.BatchUpdatePartitionInput,
        output_schema = types.BatchUpdatePartitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelDataQualityRuleRecommendationRun(input, options)
    return self:invokeOperation(input, {
        name = "CancelDataQualityRuleRecommendationRun",
        input_schema = types.CancelDataQualityRuleRecommendationRunInput,
        output_schema = types.CancelDataQualityRuleRecommendationRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelDataQualityRulesetEvaluationRun(input, options)
    return self:invokeOperation(input, {
        name = "CancelDataQualityRulesetEvaluationRun",
        input_schema = types.CancelDataQualityRulesetEvaluationRunInput,
        output_schema = types.CancelDataQualityRulesetEvaluationRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelMLTaskRun(input, options)
    return self:invokeOperation(input, {
        name = "CancelMLTaskRun",
        input_schema = types.CancelMLTaskRunInput,
        output_schema = types.CancelMLTaskRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelStatement(input, options)
    return self:invokeOperation(input, {
        name = "CancelStatement",
        input_schema = types.CancelStatementInput,
        output_schema = types.CancelStatementOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:checkSchemaVersionValidity(input, options)
    return self:invokeOperation(input, {
        name = "CheckSchemaVersionValidity",
        input_schema = types.CheckSchemaVersionValidityInput,
        output_schema = types.CheckSchemaVersionValidityOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createBlueprint(input, options)
    return self:invokeOperation(input, {
        name = "CreateBlueprint",
        input_schema = types.CreateBlueprintInput,
        output_schema = types.CreateBlueprintOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createCatalog(input, options)
    return self:invokeOperation(input, {
        name = "CreateCatalog",
        input_schema = types.CreateCatalogInput,
        output_schema = types.CreateCatalogOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createClassifier(input, options)
    return self:invokeOperation(input, {
        name = "CreateClassifier",
        input_schema = types.CreateClassifierInput,
        output_schema = types.CreateClassifierOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createColumnStatisticsTaskSettings(input, options)
    return self:invokeOperation(input, {
        name = "CreateColumnStatisticsTaskSettings",
        input_schema = types.CreateColumnStatisticsTaskSettingsInput,
        output_schema = types.CreateColumnStatisticsTaskSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnection",
        input_schema = types.CreateConnectionInput,
        output_schema = types.CreateConnectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createCrawler(input, options)
    return self:invokeOperation(input, {
        name = "CreateCrawler",
        input_schema = types.CreateCrawlerInput,
        output_schema = types.CreateCrawlerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createCustomEntityType(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomEntityType",
        input_schema = types.CreateCustomEntityTypeInput,
        output_schema = types.CreateCustomEntityTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDatabase(input, options)
    return self:invokeOperation(input, {
        name = "CreateDatabase",
        input_schema = types.CreateDatabaseInput,
        output_schema = types.CreateDatabaseOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDataQualityRuleset(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataQualityRuleset",
        input_schema = types.CreateDataQualityRulesetInput,
        output_schema = types.CreateDataQualityRulesetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDevEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateDevEndpoint",
        input_schema = types.CreateDevEndpointInput,
        output_schema = types.CreateDevEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createGlueIdentityCenterConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateGlueIdentityCenterConfiguration",
        input_schema = types.CreateGlueIdentityCenterConfigurationInput,
        output_schema = types.CreateGlueIdentityCenterConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createIntegration(input, options)
    return self:invokeOperation(input, {
        name = "CreateIntegration",
        input_schema = types.CreateIntegrationInput,
        output_schema = types.CreateIntegrationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createIntegrationResourceProperty(input, options)
    return self:invokeOperation(input, {
        name = "CreateIntegrationResourceProperty",
        input_schema = types.CreateIntegrationResourcePropertyInput,
        output_schema = types.CreateIntegrationResourcePropertyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createIntegrationTableProperties(input, options)
    return self:invokeOperation(input, {
        name = "CreateIntegrationTableProperties",
        input_schema = types.CreateIntegrationTablePropertiesInput,
        output_schema = types.CreateIntegrationTablePropertiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateJob",
        input_schema = types.CreateJobInput,
        output_schema = types.CreateJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createMLTransform(input, options)
    return self:invokeOperation(input, {
        name = "CreateMLTransform",
        input_schema = types.CreateMLTransformInput,
        output_schema = types.CreateMLTransformOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createPartition(input, options)
    return self:invokeOperation(input, {
        name = "CreatePartition",
        input_schema = types.CreatePartitionInput,
        output_schema = types.CreatePartitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createPartitionIndex(input, options)
    return self:invokeOperation(input, {
        name = "CreatePartitionIndex",
        input_schema = types.CreatePartitionIndexInput,
        output_schema = types.CreatePartitionIndexOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createRegistry(input, options)
    return self:invokeOperation(input, {
        name = "CreateRegistry",
        input_schema = types.CreateRegistryInput,
        output_schema = types.CreateRegistryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createSchema(input, options)
    return self:invokeOperation(input, {
        name = "CreateSchema",
        input_schema = types.CreateSchemaInput,
        output_schema = types.CreateSchemaOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createScript(input, options)
    return self:invokeOperation(input, {
        name = "CreateScript",
        input_schema = types.CreateScriptInput,
        output_schema = types.CreateScriptOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createSecurityConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateSecurityConfiguration",
        input_schema = types.CreateSecurityConfigurationInput,
        output_schema = types.CreateSecurityConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createSession(input, options)
    return self:invokeOperation(input, {
        name = "CreateSession",
        input_schema = types.CreateSessionInput,
        output_schema = types.CreateSessionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createTable(input, options)
    return self:invokeOperation(input, {
        name = "CreateTable",
        input_schema = types.CreateTableInput,
        output_schema = types.CreateTableOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createTableOptimizer(input, options)
    return self:invokeOperation(input, {
        name = "CreateTableOptimizer",
        input_schema = types.CreateTableOptimizerInput,
        output_schema = types.CreateTableOptimizerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createTrigger(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrigger",
        input_schema = types.CreateTriggerInput,
        output_schema = types.CreateTriggerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createUsageProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateUsageProfile",
        input_schema = types.CreateUsageProfileInput,
        output_schema = types.CreateUsageProfileOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createUserDefinedFunction(input, options)
    return self:invokeOperation(input, {
        name = "CreateUserDefinedFunction",
        input_schema = types.CreateUserDefinedFunctionInput,
        output_schema = types.CreateUserDefinedFunctionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkflow",
        input_schema = types.CreateWorkflowInput,
        output_schema = types.CreateWorkflowOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteBlueprint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBlueprint",
        input_schema = types.DeleteBlueprintInput,
        output_schema = types.DeleteBlueprintOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteCatalog(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCatalog",
        input_schema = types.DeleteCatalogInput,
        output_schema = types.DeleteCatalogOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteClassifier(input, options)
    return self:invokeOperation(input, {
        name = "DeleteClassifier",
        input_schema = types.DeleteClassifierInput,
        output_schema = types.DeleteClassifierOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteColumnStatisticsForPartition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteColumnStatisticsForPartition",
        input_schema = types.DeleteColumnStatisticsForPartitionInput,
        output_schema = types.DeleteColumnStatisticsForPartitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteColumnStatisticsForTable(input, options)
    return self:invokeOperation(input, {
        name = "DeleteColumnStatisticsForTable",
        input_schema = types.DeleteColumnStatisticsForTableInput,
        output_schema = types.DeleteColumnStatisticsForTableOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteColumnStatisticsTaskSettings(input, options)
    return self:invokeOperation(input, {
        name = "DeleteColumnStatisticsTaskSettings",
        input_schema = types.DeleteColumnStatisticsTaskSettingsInput,
        output_schema = types.DeleteColumnStatisticsTaskSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnection",
        input_schema = types.DeleteConnectionInput,
        output_schema = types.DeleteConnectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteConnectionType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnectionType",
        input_schema = types.DeleteConnectionTypeInput,
        output_schema = types.DeleteConnectionTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteCrawler(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCrawler",
        input_schema = types.DeleteCrawlerInput,
        output_schema = types.DeleteCrawlerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteCustomEntityType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomEntityType",
        input_schema = types.DeleteCustomEntityTypeInput,
        output_schema = types.DeleteCustomEntityTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDatabase(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDatabase",
        input_schema = types.DeleteDatabaseInput,
        output_schema = types.DeleteDatabaseOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDataQualityRuleset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataQualityRuleset",
        input_schema = types.DeleteDataQualityRulesetInput,
        output_schema = types.DeleteDataQualityRulesetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDevEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDevEndpoint",
        input_schema = types.DeleteDevEndpointInput,
        output_schema = types.DeleteDevEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteGlueIdentityCenterConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGlueIdentityCenterConfiguration",
        input_schema = types.DeleteGlueIdentityCenterConfigurationInput,
        output_schema = types.DeleteGlueIdentityCenterConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteIntegration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIntegration",
        input_schema = types.DeleteIntegrationInput,
        output_schema = types.DeleteIntegrationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteIntegrationResourceProperty(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIntegrationResourceProperty",
        input_schema = types.DeleteIntegrationResourcePropertyInput,
        output_schema = types.DeleteIntegrationResourcePropertyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteIntegrationTableProperties(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIntegrationTableProperties",
        input_schema = types.DeleteIntegrationTablePropertiesInput,
        output_schema = types.DeleteIntegrationTablePropertiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteJob",
        input_schema = types.DeleteJobInput,
        output_schema = types.DeleteJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteMLTransform(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMLTransform",
        input_schema = types.DeleteMLTransformInput,
        output_schema = types.DeleteMLTransformOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deletePartition(input, options)
    return self:invokeOperation(input, {
        name = "DeletePartition",
        input_schema = types.DeletePartitionInput,
        output_schema = types.DeletePartitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deletePartitionIndex(input, options)
    return self:invokeOperation(input, {
        name = "DeletePartitionIndex",
        input_schema = types.DeletePartitionIndexInput,
        output_schema = types.DeletePartitionIndexOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteRegistry(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRegistry",
        input_schema = types.DeleteRegistryInput,
        output_schema = types.DeleteRegistryOutput,
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

function Client:deleteSchema(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSchema",
        input_schema = types.DeleteSchemaInput,
        output_schema = types.DeleteSchemaOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSchemaVersions(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSchemaVersions",
        input_schema = types.DeleteSchemaVersionsInput,
        output_schema = types.DeleteSchemaVersionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSecurityConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSecurityConfiguration",
        input_schema = types.DeleteSecurityConfigurationInput,
        output_schema = types.DeleteSecurityConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSession(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSession",
        input_schema = types.DeleteSessionInput,
        output_schema = types.DeleteSessionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTable(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTable",
        input_schema = types.DeleteTableInput,
        output_schema = types.DeleteTableOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTableOptimizer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTableOptimizer",
        input_schema = types.DeleteTableOptimizerInput,
        output_schema = types.DeleteTableOptimizerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTableVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTableVersion",
        input_schema = types.DeleteTableVersionInput,
        output_schema = types.DeleteTableVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTrigger(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrigger",
        input_schema = types.DeleteTriggerInput,
        output_schema = types.DeleteTriggerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteUsageProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUsageProfile",
        input_schema = types.DeleteUsageProfileInput,
        output_schema = types.DeleteUsageProfileOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteUserDefinedFunction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUserDefinedFunction",
        input_schema = types.DeleteUserDefinedFunctionInput,
        output_schema = types.DeleteUserDefinedFunctionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkflow",
        input_schema = types.DeleteWorkflowInput,
        output_schema = types.DeleteWorkflowOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeConnectionType(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConnectionType",
        input_schema = types.DescribeConnectionTypeInput,
        output_schema = types.DescribeConnectionTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeEntity(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEntity",
        input_schema = types.DescribeEntityInput,
        output_schema = types.DescribeEntityOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeInboundIntegrations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInboundIntegrations",
        input_schema = types.DescribeInboundIntegrationsInput,
        output_schema = types.DescribeInboundIntegrationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeIntegrations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIntegrations",
        input_schema = types.DescribeIntegrationsInput,
        output_schema = types.DescribeIntegrationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getBlueprint(input, options)
    return self:invokeOperation(input, {
        name = "GetBlueprint",
        input_schema = types.GetBlueprintInput,
        output_schema = types.GetBlueprintOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getBlueprintRun(input, options)
    return self:invokeOperation(input, {
        name = "GetBlueprintRun",
        input_schema = types.GetBlueprintRunInput,
        output_schema = types.GetBlueprintRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getBlueprintRuns(input, options)
    return self:invokeOperation(input, {
        name = "GetBlueprintRuns",
        input_schema = types.GetBlueprintRunsInput,
        output_schema = types.GetBlueprintRunsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getCatalog(input, options)
    return self:invokeOperation(input, {
        name = "GetCatalog",
        input_schema = types.GetCatalogInput,
        output_schema = types.GetCatalogOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getCatalogImportStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetCatalogImportStatus",
        input_schema = types.GetCatalogImportStatusInput,
        output_schema = types.GetCatalogImportStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getCatalogs(input, options)
    return self:invokeOperation(input, {
        name = "GetCatalogs",
        input_schema = types.GetCatalogsInput,
        output_schema = types.GetCatalogsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getClassifier(input, options)
    return self:invokeOperation(input, {
        name = "GetClassifier",
        input_schema = types.GetClassifierInput,
        output_schema = types.GetClassifierOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getClassifiers(input, options)
    return self:invokeOperation(input, {
        name = "GetClassifiers",
        input_schema = types.GetClassifiersInput,
        output_schema = types.GetClassifiersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getColumnStatisticsForPartition(input, options)
    return self:invokeOperation(input, {
        name = "GetColumnStatisticsForPartition",
        input_schema = types.GetColumnStatisticsForPartitionInput,
        output_schema = types.GetColumnStatisticsForPartitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getColumnStatisticsForTable(input, options)
    return self:invokeOperation(input, {
        name = "GetColumnStatisticsForTable",
        input_schema = types.GetColumnStatisticsForTableInput,
        output_schema = types.GetColumnStatisticsForTableOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getColumnStatisticsTaskRun(input, options)
    return self:invokeOperation(input, {
        name = "GetColumnStatisticsTaskRun",
        input_schema = types.GetColumnStatisticsTaskRunInput,
        output_schema = types.GetColumnStatisticsTaskRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getColumnStatisticsTaskRuns(input, options)
    return self:invokeOperation(input, {
        name = "GetColumnStatisticsTaskRuns",
        input_schema = types.GetColumnStatisticsTaskRunsInput,
        output_schema = types.GetColumnStatisticsTaskRunsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getColumnStatisticsTaskSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetColumnStatisticsTaskSettings",
        input_schema = types.GetColumnStatisticsTaskSettingsInput,
        output_schema = types.GetColumnStatisticsTaskSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getConnection(input, options)
    return self:invokeOperation(input, {
        name = "GetConnection",
        input_schema = types.GetConnectionInput,
        output_schema = types.GetConnectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getConnections(input, options)
    return self:invokeOperation(input, {
        name = "GetConnections",
        input_schema = types.GetConnectionsInput,
        output_schema = types.GetConnectionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getCrawler(input, options)
    return self:invokeOperation(input, {
        name = "GetCrawler",
        input_schema = types.GetCrawlerInput,
        output_schema = types.GetCrawlerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getCrawlerMetrics(input, options)
    return self:invokeOperation(input, {
        name = "GetCrawlerMetrics",
        input_schema = types.GetCrawlerMetricsInput,
        output_schema = types.GetCrawlerMetricsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getCrawlers(input, options)
    return self:invokeOperation(input, {
        name = "GetCrawlers",
        input_schema = types.GetCrawlersInput,
        output_schema = types.GetCrawlersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getCustomEntityType(input, options)
    return self:invokeOperation(input, {
        name = "GetCustomEntityType",
        input_schema = types.GetCustomEntityTypeInput,
        output_schema = types.GetCustomEntityTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDatabase(input, options)
    return self:invokeOperation(input, {
        name = "GetDatabase",
        input_schema = types.GetDatabaseInput,
        output_schema = types.GetDatabaseOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDatabases(input, options)
    return self:invokeOperation(input, {
        name = "GetDatabases",
        input_schema = types.GetDatabasesInput,
        output_schema = types.GetDatabasesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDataCatalogEncryptionSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetDataCatalogEncryptionSettings",
        input_schema = types.GetDataCatalogEncryptionSettingsInput,
        output_schema = types.GetDataCatalogEncryptionSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDataflowGraph(input, options)
    return self:invokeOperation(input, {
        name = "GetDataflowGraph",
        input_schema = types.GetDataflowGraphInput,
        output_schema = types.GetDataflowGraphOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDataQualityModel(input, options)
    return self:invokeOperation(input, {
        name = "GetDataQualityModel",
        input_schema = types.GetDataQualityModelInput,
        output_schema = types.GetDataQualityModelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDataQualityModelResult(input, options)
    return self:invokeOperation(input, {
        name = "GetDataQualityModelResult",
        input_schema = types.GetDataQualityModelResultInput,
        output_schema = types.GetDataQualityModelResultOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDataQualityResult(input, options)
    return self:invokeOperation(input, {
        name = "GetDataQualityResult",
        input_schema = types.GetDataQualityResultInput,
        output_schema = types.GetDataQualityResultOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDataQualityRuleRecommendationRun(input, options)
    return self:invokeOperation(input, {
        name = "GetDataQualityRuleRecommendationRun",
        input_schema = types.GetDataQualityRuleRecommendationRunInput,
        output_schema = types.GetDataQualityRuleRecommendationRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDataQualityRuleset(input, options)
    return self:invokeOperation(input, {
        name = "GetDataQualityRuleset",
        input_schema = types.GetDataQualityRulesetInput,
        output_schema = types.GetDataQualityRulesetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDataQualityRulesetEvaluationRun(input, options)
    return self:invokeOperation(input, {
        name = "GetDataQualityRulesetEvaluationRun",
        input_schema = types.GetDataQualityRulesetEvaluationRunInput,
        output_schema = types.GetDataQualityRulesetEvaluationRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDevEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetDevEndpoint",
        input_schema = types.GetDevEndpointInput,
        output_schema = types.GetDevEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDevEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "GetDevEndpoints",
        input_schema = types.GetDevEndpointsInput,
        output_schema = types.GetDevEndpointsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getEntityRecords(input, options)
    return self:invokeOperation(input, {
        name = "GetEntityRecords",
        input_schema = types.GetEntityRecordsInput,
        output_schema = types.GetEntityRecordsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getGlueIdentityCenterConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetGlueIdentityCenterConfiguration",
        input_schema = types.GetGlueIdentityCenterConfigurationInput,
        output_schema = types.GetGlueIdentityCenterConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getIntegrationResourceProperty(input, options)
    return self:invokeOperation(input, {
        name = "GetIntegrationResourceProperty",
        input_schema = types.GetIntegrationResourcePropertyInput,
        output_schema = types.GetIntegrationResourcePropertyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getIntegrationTableProperties(input, options)
    return self:invokeOperation(input, {
        name = "GetIntegrationTableProperties",
        input_schema = types.GetIntegrationTablePropertiesInput,
        output_schema = types.GetIntegrationTablePropertiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getJob(input, options)
    return self:invokeOperation(input, {
        name = "GetJob",
        input_schema = types.GetJobInput,
        output_schema = types.GetJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getJobBookmark(input, options)
    return self:invokeOperation(input, {
        name = "GetJobBookmark",
        input_schema = types.GetJobBookmarkInput,
        output_schema = types.GetJobBookmarkOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getJobRun(input, options)
    return self:invokeOperation(input, {
        name = "GetJobRun",
        input_schema = types.GetJobRunInput,
        output_schema = types.GetJobRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getJobRuns(input, options)
    return self:invokeOperation(input, {
        name = "GetJobRuns",
        input_schema = types.GetJobRunsInput,
        output_schema = types.GetJobRunsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getJobs(input, options)
    return self:invokeOperation(input, {
        name = "GetJobs",
        input_schema = types.GetJobsInput,
        output_schema = types.GetJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getMapping(input, options)
    return self:invokeOperation(input, {
        name = "GetMapping",
        input_schema = types.GetMappingInput,
        output_schema = types.GetMappingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getMaterializedViewRefreshTaskRun(input, options)
    return self:invokeOperation(input, {
        name = "GetMaterializedViewRefreshTaskRun",
        input_schema = types.GetMaterializedViewRefreshTaskRunInput,
        output_schema = types.GetMaterializedViewRefreshTaskRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getMLTaskRun(input, options)
    return self:invokeOperation(input, {
        name = "GetMLTaskRun",
        input_schema = types.GetMLTaskRunInput,
        output_schema = types.GetMLTaskRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getMLTaskRuns(input, options)
    return self:invokeOperation(input, {
        name = "GetMLTaskRuns",
        input_schema = types.GetMLTaskRunsInput,
        output_schema = types.GetMLTaskRunsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getMLTransform(input, options)
    return self:invokeOperation(input, {
        name = "GetMLTransform",
        input_schema = types.GetMLTransformInput,
        output_schema = types.GetMLTransformOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getMLTransforms(input, options)
    return self:invokeOperation(input, {
        name = "GetMLTransforms",
        input_schema = types.GetMLTransformsInput,
        output_schema = types.GetMLTransformsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getPartition(input, options)
    return self:invokeOperation(input, {
        name = "GetPartition",
        input_schema = types.GetPartitionInput,
        output_schema = types.GetPartitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getPartitionIndexes(input, options)
    return self:invokeOperation(input, {
        name = "GetPartitionIndexes",
        input_schema = types.GetPartitionIndexesInput,
        output_schema = types.GetPartitionIndexesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getPartitions(input, options)
    return self:invokeOperation(input, {
        name = "GetPartitions",
        input_schema = types.GetPartitionsInput,
        output_schema = types.GetPartitionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getPlan(input, options)
    return self:invokeOperation(input, {
        name = "GetPlan",
        input_schema = types.GetPlanInput,
        output_schema = types.GetPlanOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getRegistry(input, options)
    return self:invokeOperation(input, {
        name = "GetRegistry",
        input_schema = types.GetRegistryInput,
        output_schema = types.GetRegistryOutput,
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

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSchema(input, options)
    return self:invokeOperation(input, {
        name = "GetSchema",
        input_schema = types.GetSchemaInput,
        output_schema = types.GetSchemaOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSchemaByDefinition(input, options)
    return self:invokeOperation(input, {
        name = "GetSchemaByDefinition",
        input_schema = types.GetSchemaByDefinitionInput,
        output_schema = types.GetSchemaByDefinitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSchemaVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetSchemaVersion",
        input_schema = types.GetSchemaVersionInput,
        output_schema = types.GetSchemaVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSchemaVersionsDiff(input, options)
    return self:invokeOperation(input, {
        name = "GetSchemaVersionsDiff",
        input_schema = types.GetSchemaVersionsDiffInput,
        output_schema = types.GetSchemaVersionsDiffOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSecurityConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetSecurityConfiguration",
        input_schema = types.GetSecurityConfigurationInput,
        output_schema = types.GetSecurityConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSecurityConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "GetSecurityConfigurations",
        input_schema = types.GetSecurityConfigurationsInput,
        output_schema = types.GetSecurityConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSession(input, options)
    return self:invokeOperation(input, {
        name = "GetSession",
        input_schema = types.GetSessionInput,
        output_schema = types.GetSessionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getStatement(input, options)
    return self:invokeOperation(input, {
        name = "GetStatement",
        input_schema = types.GetStatementInput,
        output_schema = types.GetStatementOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTable(input, options)
    return self:invokeOperation(input, {
        name = "GetTable",
        input_schema = types.GetTableInput,
        output_schema = types.GetTableOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTableOptimizer(input, options)
    return self:invokeOperation(input, {
        name = "GetTableOptimizer",
        input_schema = types.GetTableOptimizerInput,
        output_schema = types.GetTableOptimizerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTables(input, options)
    return self:invokeOperation(input, {
        name = "GetTables",
        input_schema = types.GetTablesInput,
        output_schema = types.GetTablesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTableVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetTableVersion",
        input_schema = types.GetTableVersionInput,
        output_schema = types.GetTableVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTableVersions(input, options)
    return self:invokeOperation(input, {
        name = "GetTableVersions",
        input_schema = types.GetTableVersionsInput,
        output_schema = types.GetTableVersionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTags(input, options)
    return self:invokeOperation(input, {
        name = "GetTags",
        input_schema = types.GetTagsInput,
        output_schema = types.GetTagsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTrigger(input, options)
    return self:invokeOperation(input, {
        name = "GetTrigger",
        input_schema = types.GetTriggerInput,
        output_schema = types.GetTriggerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTriggers(input, options)
    return self:invokeOperation(input, {
        name = "GetTriggers",
        input_schema = types.GetTriggersInput,
        output_schema = types.GetTriggersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getUnfilteredPartitionMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetUnfilteredPartitionMetadata",
        input_schema = types.GetUnfilteredPartitionMetadataInput,
        output_schema = types.GetUnfilteredPartitionMetadataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getUnfilteredPartitionsMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetUnfilteredPartitionsMetadata",
        input_schema = types.GetUnfilteredPartitionsMetadataInput,
        output_schema = types.GetUnfilteredPartitionsMetadataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getUnfilteredTableMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetUnfilteredTableMetadata",
        input_schema = types.GetUnfilteredTableMetadataInput,
        output_schema = types.GetUnfilteredTableMetadataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getUsageProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetUsageProfile",
        input_schema = types.GetUsageProfileInput,
        output_schema = types.GetUsageProfileOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getUserDefinedFunction(input, options)
    return self:invokeOperation(input, {
        name = "GetUserDefinedFunction",
        input_schema = types.GetUserDefinedFunctionInput,
        output_schema = types.GetUserDefinedFunctionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getUserDefinedFunctions(input, options)
    return self:invokeOperation(input, {
        name = "GetUserDefinedFunctions",
        input_schema = types.GetUserDefinedFunctionsInput,
        output_schema = types.GetUserDefinedFunctionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflow",
        input_schema = types.GetWorkflowInput,
        output_schema = types.GetWorkflowOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getWorkflowRun(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflowRun",
        input_schema = types.GetWorkflowRunInput,
        output_schema = types.GetWorkflowRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getWorkflowRunProperties(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflowRunProperties",
        input_schema = types.GetWorkflowRunPropertiesInput,
        output_schema = types.GetWorkflowRunPropertiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getWorkflowRuns(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflowRuns",
        input_schema = types.GetWorkflowRunsInput,
        output_schema = types.GetWorkflowRunsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:importCatalogToGlue(input, options)
    return self:invokeOperation(input, {
        name = "ImportCatalogToGlue",
        input_schema = types.ImportCatalogToGlueInput,
        output_schema = types.ImportCatalogToGlueOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listBlueprints(input, options)
    return self:invokeOperation(input, {
        name = "ListBlueprints",
        input_schema = types.ListBlueprintsInput,
        output_schema = types.ListBlueprintsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listColumnStatisticsTaskRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListColumnStatisticsTaskRuns",
        input_schema = types.ListColumnStatisticsTaskRunsInput,
        output_schema = types.ListColumnStatisticsTaskRunsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listConnectionTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectionTypes",
        input_schema = types.ListConnectionTypesInput,
        output_schema = types.ListConnectionTypesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listCrawlers(input, options)
    return self:invokeOperation(input, {
        name = "ListCrawlers",
        input_schema = types.ListCrawlersInput,
        output_schema = types.ListCrawlersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listCrawls(input, options)
    return self:invokeOperation(input, {
        name = "ListCrawls",
        input_schema = types.ListCrawlsInput,
        output_schema = types.ListCrawlsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listCustomEntityTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomEntityTypes",
        input_schema = types.ListCustomEntityTypesInput,
        output_schema = types.ListCustomEntityTypesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDataQualityResults(input, options)
    return self:invokeOperation(input, {
        name = "ListDataQualityResults",
        input_schema = types.ListDataQualityResultsInput,
        output_schema = types.ListDataQualityResultsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDataQualityRuleRecommendationRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListDataQualityRuleRecommendationRuns",
        input_schema = types.ListDataQualityRuleRecommendationRunsInput,
        output_schema = types.ListDataQualityRuleRecommendationRunsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDataQualityRulesetEvaluationRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListDataQualityRulesetEvaluationRuns",
        input_schema = types.ListDataQualityRulesetEvaluationRunsInput,
        output_schema = types.ListDataQualityRulesetEvaluationRunsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDataQualityRulesets(input, options)
    return self:invokeOperation(input, {
        name = "ListDataQualityRulesets",
        input_schema = types.ListDataQualityRulesetsInput,
        output_schema = types.ListDataQualityRulesetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDataQualityStatisticAnnotations(input, options)
    return self:invokeOperation(input, {
        name = "ListDataQualityStatisticAnnotations",
        input_schema = types.ListDataQualityStatisticAnnotationsInput,
        output_schema = types.ListDataQualityStatisticAnnotationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDataQualityStatistics(input, options)
    return self:invokeOperation(input, {
        name = "ListDataQualityStatistics",
        input_schema = types.ListDataQualityStatisticsInput,
        output_schema = types.ListDataQualityStatisticsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDevEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListDevEndpoints",
        input_schema = types.ListDevEndpointsInput,
        output_schema = types.ListDevEndpointsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEntities(input, options)
    return self:invokeOperation(input, {
        name = "ListEntities",
        input_schema = types.ListEntitiesInput,
        output_schema = types.ListEntitiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listIntegrationResourceProperties(input, options)
    return self:invokeOperation(input, {
        name = "ListIntegrationResourceProperties",
        input_schema = types.ListIntegrationResourcePropertiesInput,
        output_schema = types.ListIntegrationResourcePropertiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListJobs",
        input_schema = types.ListJobsInput,
        output_schema = types.ListJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listMaterializedViewRefreshTaskRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListMaterializedViewRefreshTaskRuns",
        input_schema = types.ListMaterializedViewRefreshTaskRunsInput,
        output_schema = types.ListMaterializedViewRefreshTaskRunsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listMLTransforms(input, options)
    return self:invokeOperation(input, {
        name = "ListMLTransforms",
        input_schema = types.ListMLTransformsInput,
        output_schema = types.ListMLTransformsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRegistries(input, options)
    return self:invokeOperation(input, {
        name = "ListRegistries",
        input_schema = types.ListRegistriesInput,
        output_schema = types.ListRegistriesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSchemas(input, options)
    return self:invokeOperation(input, {
        name = "ListSchemas",
        input_schema = types.ListSchemasInput,
        output_schema = types.ListSchemasOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSchemaVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListSchemaVersions",
        input_schema = types.ListSchemaVersionsInput,
        output_schema = types.ListSchemaVersionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSessions(input, options)
    return self:invokeOperation(input, {
        name = "ListSessions",
        input_schema = types.ListSessionsInput,
        output_schema = types.ListSessionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listStatements(input, options)
    return self:invokeOperation(input, {
        name = "ListStatements",
        input_schema = types.ListStatementsInput,
        output_schema = types.ListStatementsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTableOptimizerRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListTableOptimizerRuns",
        input_schema = types.ListTableOptimizerRunsInput,
        output_schema = types.ListTableOptimizerRunsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTriggers(input, options)
    return self:invokeOperation(input, {
        name = "ListTriggers",
        input_schema = types.ListTriggersInput,
        output_schema = types.ListTriggersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listUsageProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListUsageProfiles",
        input_schema = types.ListUsageProfilesInput,
        output_schema = types.ListUsageProfilesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listWorkflows(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflows",
        input_schema = types.ListWorkflowsInput,
        output_schema = types.ListWorkflowsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyIntegration(input, options)
    return self:invokeOperation(input, {
        name = "ModifyIntegration",
        input_schema = types.ModifyIntegrationInput,
        output_schema = types.ModifyIntegrationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putDataCatalogEncryptionSettings(input, options)
    return self:invokeOperation(input, {
        name = "PutDataCatalogEncryptionSettings",
        input_schema = types.PutDataCatalogEncryptionSettingsInput,
        output_schema = types.PutDataCatalogEncryptionSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putDataQualityProfileAnnotation(input, options)
    return self:invokeOperation(input, {
        name = "PutDataQualityProfileAnnotation",
        input_schema = types.PutDataQualityProfileAnnotationInput,
        output_schema = types.PutDataQualityProfileAnnotationOutput,
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

function Client:putSchemaVersionMetadata(input, options)
    return self:invokeOperation(input, {
        name = "PutSchemaVersionMetadata",
        input_schema = types.PutSchemaVersionMetadataInput,
        output_schema = types.PutSchemaVersionMetadataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putWorkflowRunProperties(input, options)
    return self:invokeOperation(input, {
        name = "PutWorkflowRunProperties",
        input_schema = types.PutWorkflowRunPropertiesInput,
        output_schema = types.PutWorkflowRunPropertiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:querySchemaVersionMetadata(input, options)
    return self:invokeOperation(input, {
        name = "QuerySchemaVersionMetadata",
        input_schema = types.QuerySchemaVersionMetadataInput,
        output_schema = types.QuerySchemaVersionMetadataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerConnectionType(input, options)
    return self:invokeOperation(input, {
        name = "RegisterConnectionType",
        input_schema = types.RegisterConnectionTypeInput,
        output_schema = types.RegisterConnectionTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerSchemaVersion(input, options)
    return self:invokeOperation(input, {
        name = "RegisterSchemaVersion",
        input_schema = types.RegisterSchemaVersionInput,
        output_schema = types.RegisterSchemaVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:removeSchemaVersionMetadata(input, options)
    return self:invokeOperation(input, {
        name = "RemoveSchemaVersionMetadata",
        input_schema = types.RemoveSchemaVersionMetadataInput,
        output_schema = types.RemoveSchemaVersionMetadataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:resetJobBookmark(input, options)
    return self:invokeOperation(input, {
        name = "ResetJobBookmark",
        input_schema = types.ResetJobBookmarkInput,
        output_schema = types.ResetJobBookmarkOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:resumeWorkflowRun(input, options)
    return self:invokeOperation(input, {
        name = "ResumeWorkflowRun",
        input_schema = types.ResumeWorkflowRunInput,
        output_schema = types.ResumeWorkflowRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:runStatement(input, options)
    return self:invokeOperation(input, {
        name = "RunStatement",
        input_schema = types.RunStatementInput,
        output_schema = types.RunStatementOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:searchTables(input, options)
    return self:invokeOperation(input, {
        name = "SearchTables",
        input_schema = types.SearchTablesInput,
        output_schema = types.SearchTablesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startBlueprintRun(input, options)
    return self:invokeOperation(input, {
        name = "StartBlueprintRun",
        input_schema = types.StartBlueprintRunInput,
        output_schema = types.StartBlueprintRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startColumnStatisticsTaskRun(input, options)
    return self:invokeOperation(input, {
        name = "StartColumnStatisticsTaskRun",
        input_schema = types.StartColumnStatisticsTaskRunInput,
        output_schema = types.StartColumnStatisticsTaskRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startColumnStatisticsTaskRunSchedule(input, options)
    return self:invokeOperation(input, {
        name = "StartColumnStatisticsTaskRunSchedule",
        input_schema = types.StartColumnStatisticsTaskRunScheduleInput,
        output_schema = types.StartColumnStatisticsTaskRunScheduleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startCrawler(input, options)
    return self:invokeOperation(input, {
        name = "StartCrawler",
        input_schema = types.StartCrawlerInput,
        output_schema = types.StartCrawlerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startCrawlerSchedule(input, options)
    return self:invokeOperation(input, {
        name = "StartCrawlerSchedule",
        input_schema = types.StartCrawlerScheduleInput,
        output_schema = types.StartCrawlerScheduleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startDataQualityRuleRecommendationRun(input, options)
    return self:invokeOperation(input, {
        name = "StartDataQualityRuleRecommendationRun",
        input_schema = types.StartDataQualityRuleRecommendationRunInput,
        output_schema = types.StartDataQualityRuleRecommendationRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startDataQualityRulesetEvaluationRun(input, options)
    return self:invokeOperation(input, {
        name = "StartDataQualityRulesetEvaluationRun",
        input_schema = types.StartDataQualityRulesetEvaluationRunInput,
        output_schema = types.StartDataQualityRulesetEvaluationRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startExportLabelsTaskRun(input, options)
    return self:invokeOperation(input, {
        name = "StartExportLabelsTaskRun",
        input_schema = types.StartExportLabelsTaskRunInput,
        output_schema = types.StartExportLabelsTaskRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startImportLabelsTaskRun(input, options)
    return self:invokeOperation(input, {
        name = "StartImportLabelsTaskRun",
        input_schema = types.StartImportLabelsTaskRunInput,
        output_schema = types.StartImportLabelsTaskRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startJobRun(input, options)
    return self:invokeOperation(input, {
        name = "StartJobRun",
        input_schema = types.StartJobRunInput,
        output_schema = types.StartJobRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startMaterializedViewRefreshTaskRun(input, options)
    return self:invokeOperation(input, {
        name = "StartMaterializedViewRefreshTaskRun",
        input_schema = types.StartMaterializedViewRefreshTaskRunInput,
        output_schema = types.StartMaterializedViewRefreshTaskRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startMLEvaluationTaskRun(input, options)
    return self:invokeOperation(input, {
        name = "StartMLEvaluationTaskRun",
        input_schema = types.StartMLEvaluationTaskRunInput,
        output_schema = types.StartMLEvaluationTaskRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startMLLabelingSetGenerationTaskRun(input, options)
    return self:invokeOperation(input, {
        name = "StartMLLabelingSetGenerationTaskRun",
        input_schema = types.StartMLLabelingSetGenerationTaskRunInput,
        output_schema = types.StartMLLabelingSetGenerationTaskRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startTrigger(input, options)
    return self:invokeOperation(input, {
        name = "StartTrigger",
        input_schema = types.StartTriggerInput,
        output_schema = types.StartTriggerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startWorkflowRun(input, options)
    return self:invokeOperation(input, {
        name = "StartWorkflowRun",
        input_schema = types.StartWorkflowRunInput,
        output_schema = types.StartWorkflowRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopColumnStatisticsTaskRun(input, options)
    return self:invokeOperation(input, {
        name = "StopColumnStatisticsTaskRun",
        input_schema = types.StopColumnStatisticsTaskRunInput,
        output_schema = types.StopColumnStatisticsTaskRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopColumnStatisticsTaskRunSchedule(input, options)
    return self:invokeOperation(input, {
        name = "StopColumnStatisticsTaskRunSchedule",
        input_schema = types.StopColumnStatisticsTaskRunScheduleInput,
        output_schema = types.StopColumnStatisticsTaskRunScheduleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopCrawler(input, options)
    return self:invokeOperation(input, {
        name = "StopCrawler",
        input_schema = types.StopCrawlerInput,
        output_schema = types.StopCrawlerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopCrawlerSchedule(input, options)
    return self:invokeOperation(input, {
        name = "StopCrawlerSchedule",
        input_schema = types.StopCrawlerScheduleInput,
        output_schema = types.StopCrawlerScheduleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopMaterializedViewRefreshTaskRun(input, options)
    return self:invokeOperation(input, {
        name = "StopMaterializedViewRefreshTaskRun",
        input_schema = types.StopMaterializedViewRefreshTaskRunInput,
        output_schema = types.StopMaterializedViewRefreshTaskRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopSession(input, options)
    return self:invokeOperation(input, {
        name = "StopSession",
        input_schema = types.StopSessionInput,
        output_schema = types.StopSessionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopTrigger(input, options)
    return self:invokeOperation(input, {
        name = "StopTrigger",
        input_schema = types.StopTriggerInput,
        output_schema = types.StopTriggerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopWorkflowRun(input, options)
    return self:invokeOperation(input, {
        name = "StopWorkflowRun",
        input_schema = types.StopWorkflowRunInput,
        output_schema = types.StopWorkflowRunOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:testConnection(input, options)
    return self:invokeOperation(input, {
        name = "TestConnection",
        input_schema = types.TestConnectionOperationInput,
        output_schema = types.TestConnectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateBlueprint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBlueprint",
        input_schema = types.UpdateBlueprintInput,
        output_schema = types.UpdateBlueprintOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateCatalog(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCatalog",
        input_schema = types.UpdateCatalogInput,
        output_schema = types.UpdateCatalogOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateClassifier(input, options)
    return self:invokeOperation(input, {
        name = "UpdateClassifier",
        input_schema = types.UpdateClassifierInput,
        output_schema = types.UpdateClassifierOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateColumnStatisticsForPartition(input, options)
    return self:invokeOperation(input, {
        name = "UpdateColumnStatisticsForPartition",
        input_schema = types.UpdateColumnStatisticsForPartitionInput,
        output_schema = types.UpdateColumnStatisticsForPartitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateColumnStatisticsForTable(input, options)
    return self:invokeOperation(input, {
        name = "UpdateColumnStatisticsForTable",
        input_schema = types.UpdateColumnStatisticsForTableInput,
        output_schema = types.UpdateColumnStatisticsForTableOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateColumnStatisticsTaskSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateColumnStatisticsTaskSettings",
        input_schema = types.UpdateColumnStatisticsTaskSettingsInput,
        output_schema = types.UpdateColumnStatisticsTaskSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateConnection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnection",
        input_schema = types.UpdateConnectionInput,
        output_schema = types.UpdateConnectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateCrawler(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCrawler",
        input_schema = types.UpdateCrawlerInput,
        output_schema = types.UpdateCrawlerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateCrawlerSchedule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCrawlerSchedule",
        input_schema = types.UpdateCrawlerScheduleInput,
        output_schema = types.UpdateCrawlerScheduleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateDatabase(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDatabase",
        input_schema = types.UpdateDatabaseInput,
        output_schema = types.UpdateDatabaseOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateDataQualityRuleset(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataQualityRuleset",
        input_schema = types.UpdateDataQualityRulesetInput,
        output_schema = types.UpdateDataQualityRulesetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateDevEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDevEndpoint",
        input_schema = types.UpdateDevEndpointInput,
        output_schema = types.UpdateDevEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateGlueIdentityCenterConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGlueIdentityCenterConfiguration",
        input_schema = types.UpdateGlueIdentityCenterConfigurationInput,
        output_schema = types.UpdateGlueIdentityCenterConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateIntegrationResourceProperty(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIntegrationResourceProperty",
        input_schema = types.UpdateIntegrationResourcePropertyInput,
        output_schema = types.UpdateIntegrationResourcePropertyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateIntegrationTableProperties(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIntegrationTableProperties",
        input_schema = types.UpdateIntegrationTablePropertiesInput,
        output_schema = types.UpdateIntegrationTablePropertiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateJob(input, options)
    return self:invokeOperation(input, {
        name = "UpdateJob",
        input_schema = types.UpdateJobInput,
        output_schema = types.UpdateJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateJobFromSourceControl(input, options)
    return self:invokeOperation(input, {
        name = "UpdateJobFromSourceControl",
        input_schema = types.UpdateJobFromSourceControlInput,
        output_schema = types.UpdateJobFromSourceControlOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateMLTransform(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMLTransform",
        input_schema = types.UpdateMLTransformInput,
        output_schema = types.UpdateMLTransformOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updatePartition(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePartition",
        input_schema = types.UpdatePartitionInput,
        output_schema = types.UpdatePartitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateRegistry(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRegistry",
        input_schema = types.UpdateRegistryInput,
        output_schema = types.UpdateRegistryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSchema(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSchema",
        input_schema = types.UpdateSchemaInput,
        output_schema = types.UpdateSchemaOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSourceControlFromJob(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSourceControlFromJob",
        input_schema = types.UpdateSourceControlFromJobInput,
        output_schema = types.UpdateSourceControlFromJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateTable(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTable",
        input_schema = types.UpdateTableInput,
        output_schema = types.UpdateTableOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateTableOptimizer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTableOptimizer",
        input_schema = types.UpdateTableOptimizerInput,
        output_schema = types.UpdateTableOptimizerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateTrigger(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTrigger",
        input_schema = types.UpdateTriggerInput,
        output_schema = types.UpdateTriggerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateUsageProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUsageProfile",
        input_schema = types.UpdateUsageProfileInput,
        output_schema = types.UpdateUsageProfileOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateUserDefinedFunction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserDefinedFunction",
        input_schema = types.UpdateUserDefinedFunctionInput,
        output_schema = types.UpdateUserDefinedFunctionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkflow",
        input_schema = types.UpdateWorkflowInput,
        output_schema = types.UpdateWorkflowOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
