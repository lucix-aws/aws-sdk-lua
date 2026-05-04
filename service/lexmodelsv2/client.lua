local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("lexmodelsv2.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("lexmodelsv2.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "LexModelBuildingServiceV2"
    cfg.signing_name = "lex"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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

function Client:batchCreateCustomVocabularyItem(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateCustomVocabularyItem",
        input_schema = types.BatchCreateCustomVocabularyItemInput,
        output_schema = types.BatchCreateCustomVocabularyItemOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/batchcreate",
    }, options)
end

function Client:batchDeleteCustomVocabularyItem(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteCustomVocabularyItem",
        input_schema = types.BatchDeleteCustomVocabularyItemInput,
        output_schema = types.BatchDeleteCustomVocabularyItemOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/batchdelete",
    }, options)
end

function Client:batchUpdateCustomVocabularyItem(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateCustomVocabularyItem",
        input_schema = types.BatchUpdateCustomVocabularyItemInput,
        output_schema = types.BatchUpdateCustomVocabularyItemOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/batchupdate",
    }, options)
end

function Client:buildBotLocale(input, options)
    return self:invokeOperation(input, {
        name = "BuildBotLocale",
        input_schema = types.BuildBotLocaleInput,
        output_schema = types.BuildBotLocaleOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}",
    }, options)
end

function Client:createBot(input, options)
    return self:invokeOperation(input, {
        name = "CreateBot",
        input_schema = types.CreateBotInput,
        output_schema = types.CreateBotOutput,
        http_method = "PUT",
        http_path = "/bots",
    }, options)
end

function Client:createBotAlias(input, options)
    return self:invokeOperation(input, {
        name = "CreateBotAlias",
        input_schema = types.CreateBotAliasInput,
        output_schema = types.CreateBotAliasOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botaliases",
    }, options)
end

function Client:createBotLocale(input, options)
    return self:invokeOperation(input, {
        name = "CreateBotLocale",
        input_schema = types.CreateBotLocaleInput,
        output_schema = types.CreateBotLocaleOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales",
    }, options)
end

function Client:createBotReplica(input, options)
    return self:invokeOperation(input, {
        name = "CreateBotReplica",
        input_schema = types.CreateBotReplicaInput,
        output_schema = types.CreateBotReplicaOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/replicas",
    }, options)
end

function Client:createBotVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateBotVersion",
        input_schema = types.CreateBotVersionInput,
        output_schema = types.CreateBotVersionOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions",
    }, options)
end

function Client:createExport(input, options)
    return self:invokeOperation(input, {
        name = "CreateExport",
        input_schema = types.CreateExportInput,
        output_schema = types.CreateExportOutput,
        http_method = "PUT",
        http_path = "/exports",
    }, options)
end

function Client:createIntent(input, options)
    return self:invokeOperation(input, {
        name = "CreateIntent",
        input_schema = types.CreateIntentInput,
        output_schema = types.CreateIntentOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents",
    }, options)
end

function Client:createResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateResourcePolicy",
        input_schema = types.CreateResourcePolicyInput,
        output_schema = types.CreateResourcePolicyOutput,
        http_method = "POST",
        http_path = "/policy/{resourceArn}",
    }, options)
end

function Client:createResourcePolicyStatement(input, options)
    return self:invokeOperation(input, {
        name = "CreateResourcePolicyStatement",
        input_schema = types.CreateResourcePolicyStatementInput,
        output_schema = types.CreateResourcePolicyStatementOutput,
        http_method = "POST",
        http_path = "/policy/{resourceArn}/statements",
    }, options)
end

function Client:createSlot(input, options)
    return self:invokeOperation(input, {
        name = "CreateSlot",
        input_schema = types.CreateSlotInput,
        output_schema = types.CreateSlotOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots",
    }, options)
end

function Client:createSlotType(input, options)
    return self:invokeOperation(input, {
        name = "CreateSlotType",
        input_schema = types.CreateSlotTypeInput,
        output_schema = types.CreateSlotTypeOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes",
    }, options)
end

function Client:createTestSetDiscrepancyReport(input, options)
    return self:invokeOperation(input, {
        name = "CreateTestSetDiscrepancyReport",
        input_schema = types.CreateTestSetDiscrepancyReportInput,
        output_schema = types.CreateTestSetDiscrepancyReportOutput,
        http_method = "POST",
        http_path = "/testsets/{testSetId}/testsetdiscrepancy",
    }, options)
end

function Client:createUploadUrl(input, options)
    return self:invokeOperation(input, {
        name = "CreateUploadUrl",
        input_schema = types.CreateUploadUrlInput,
        output_schema = types.CreateUploadUrlOutput,
        http_method = "POST",
        http_path = "/createuploadurl",
    }, options)
end

function Client:deleteBot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBot",
        input_schema = types.DeleteBotInput,
        output_schema = types.DeleteBotOutput,
        http_method = "DELETE",
        http_path = "/bots/{botId}",
    }, options)
end

function Client:deleteBotAlias(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBotAlias",
        input_schema = types.DeleteBotAliasInput,
        output_schema = types.DeleteBotAliasOutput,
        http_method = "DELETE",
        http_path = "/bots/{botId}/botaliases/{botAliasId}",
    }, options)
end

function Client:deleteBotAnalyzerRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBotAnalyzerRecommendation",
        input_schema = types.DeleteBotAnalyzerRecommendationInput,
        output_schema = types.DeleteBotAnalyzerRecommendationOutput,
        http_method = "DELETE",
        http_path = "/bots/{botId}/botanalyzer/{botAnalyzerRequestId}",
    }, options)
end

function Client:deleteBotLocale(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBotLocale",
        input_schema = types.DeleteBotLocaleInput,
        output_schema = types.DeleteBotLocaleOutput,
        http_method = "DELETE",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}",
    }, options)
end

function Client:deleteBotReplica(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBotReplica",
        input_schema = types.DeleteBotReplicaInput,
        output_schema = types.DeleteBotReplicaOutput,
        http_method = "DELETE",
        http_path = "/bots/{botId}/replicas/{replicaRegion}",
    }, options)
end

function Client:deleteBotVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBotVersion",
        input_schema = types.DeleteBotVersionInput,
        output_schema = types.DeleteBotVersionOutput,
        http_method = "DELETE",
        http_path = "/bots/{botId}/botversions/{botVersion}",
    }, options)
end

function Client:deleteCustomVocabulary(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomVocabulary",
        input_schema = types.DeleteCustomVocabularyInput,
        output_schema = types.DeleteCustomVocabularyOutput,
        http_method = "DELETE",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary",
    }, options)
end

function Client:deleteExport(input, options)
    return self:invokeOperation(input, {
        name = "DeleteExport",
        input_schema = types.DeleteExportInput,
        output_schema = types.DeleteExportOutput,
        http_method = "DELETE",
        http_path = "/exports/{exportId}",
    }, options)
end

function Client:deleteImport(input, options)
    return self:invokeOperation(input, {
        name = "DeleteImport",
        input_schema = types.DeleteImportInput,
        output_schema = types.DeleteImportOutput,
        http_method = "DELETE",
        http_path = "/imports/{importId}",
    }, options)
end

function Client:deleteIntent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIntent",
        input_schema = types.DeleteIntentInput,
        output_schema = types.DeleteIntentOutput,
        http_method = "DELETE",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}",
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "DELETE",
        http_path = "/policy/{resourceArn}",
    }, options)
end

function Client:deleteResourcePolicyStatement(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicyStatement",
        input_schema = types.DeleteResourcePolicyStatementInput,
        output_schema = types.DeleteResourcePolicyStatementOutput,
        http_method = "DELETE",
        http_path = "/policy/{resourceArn}/statements/{statementId}",
    }, options)
end

function Client:deleteSlot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSlot",
        input_schema = types.DeleteSlotInput,
        output_schema = types.DeleteSlotOutput,
        http_method = "DELETE",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/{slotId}",
    }, options)
end

function Client:deleteSlotType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSlotType",
        input_schema = types.DeleteSlotTypeInput,
        output_schema = types.DeleteSlotTypeOutput,
        http_method = "DELETE",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}",
    }, options)
end

function Client:deleteTestSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTestSet",
        input_schema = types.DeleteTestSetInput,
        output_schema = types.DeleteTestSetOutput,
        http_method = "DELETE",
        http_path = "/testsets/{testSetId}",
    }, options)
end

function Client:deleteUtterances(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUtterances",
        input_schema = types.DeleteUtterancesInput,
        output_schema = types.DeleteUtterancesOutput,
        http_method = "DELETE",
        http_path = "/bots/{botId}/utterances",
    }, options)
end

function Client:describeBot(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBot",
        input_schema = types.DescribeBotInput,
        output_schema = types.DescribeBotOutput,
        http_method = "GET",
        http_path = "/bots/{botId}",
    }, options)
end

function Client:describeBotAlias(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBotAlias",
        input_schema = types.DescribeBotAliasInput,
        output_schema = types.DescribeBotAliasOutput,
        http_method = "GET",
        http_path = "/bots/{botId}/botaliases/{botAliasId}",
    }, options)
end

function Client:describeBotAnalyzerRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBotAnalyzerRecommendation",
        input_schema = types.DescribeBotAnalyzerRecommendationInput,
        output_schema = types.DescribeBotAnalyzerRecommendationOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botanalyzer/describe/{botAnalyzerRequestId}",
    }, options)
end

function Client:describeBotLocale(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBotLocale",
        input_schema = types.DescribeBotLocaleInput,
        output_schema = types.DescribeBotLocaleOutput,
        http_method = "GET",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}",
    }, options)
end

function Client:describeBotRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBotRecommendation",
        input_schema = types.DescribeBotRecommendationInput,
        output_schema = types.DescribeBotRecommendationOutput,
        http_method = "GET",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}",
    }, options)
end

function Client:describeBotReplica(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBotReplica",
        input_schema = types.DescribeBotReplicaInput,
        output_schema = types.DescribeBotReplicaOutput,
        http_method = "GET",
        http_path = "/bots/{botId}/replicas/{replicaRegion}",
    }, options)
end

function Client:describeBotResourceGeneration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBotResourceGeneration",
        input_schema = types.DescribeBotResourceGenerationInput,
        output_schema = types.DescribeBotResourceGenerationOutput,
        http_method = "GET",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/generations/{generationId}",
    }, options)
end

function Client:describeBotVersion(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBotVersion",
        input_schema = types.DescribeBotVersionInput,
        output_schema = types.DescribeBotVersionOutput,
        http_method = "GET",
        http_path = "/bots/{botId}/botversions/{botVersion}",
    }, options)
end

function Client:describeCustomVocabularyMetadata(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCustomVocabularyMetadata",
        input_schema = types.DescribeCustomVocabularyMetadataInput,
        output_schema = types.DescribeCustomVocabularyMetadataOutput,
        http_method = "GET",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/metadata",
    }, options)
end

function Client:describeExport(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExport",
        input_schema = types.DescribeExportInput,
        output_schema = types.DescribeExportOutput,
        http_method = "GET",
        http_path = "/exports/{exportId}",
    }, options)
end

function Client:describeImport(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImport",
        input_schema = types.DescribeImportInput,
        output_schema = types.DescribeImportOutput,
        http_method = "GET",
        http_path = "/imports/{importId}",
    }, options)
end

function Client:describeIntent(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIntent",
        input_schema = types.DescribeIntentInput,
        output_schema = types.DescribeIntentOutput,
        http_method = "GET",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}",
    }, options)
end

function Client:describeResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResourcePolicy",
        input_schema = types.DescribeResourcePolicyInput,
        output_schema = types.DescribeResourcePolicyOutput,
        http_method = "GET",
        http_path = "/policy/{resourceArn}",
    }, options)
end

function Client:describeSlot(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSlot",
        input_schema = types.DescribeSlotInput,
        output_schema = types.DescribeSlotOutput,
        http_method = "GET",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/{slotId}",
    }, options)
end

function Client:describeSlotType(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSlotType",
        input_schema = types.DescribeSlotTypeInput,
        output_schema = types.DescribeSlotTypeOutput,
        http_method = "GET",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}",
    }, options)
end

function Client:describeTestExecution(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTestExecution",
        input_schema = types.DescribeTestExecutionInput,
        output_schema = types.DescribeTestExecutionOutput,
        http_method = "GET",
        http_path = "/testexecutions/{testExecutionId}",
    }, options)
end

function Client:describeTestSet(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTestSet",
        input_schema = types.DescribeTestSetInput,
        output_schema = types.DescribeTestSetOutput,
        http_method = "GET",
        http_path = "/testsets/{testSetId}",
    }, options)
end

function Client:describeTestSetDiscrepancyReport(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTestSetDiscrepancyReport",
        input_schema = types.DescribeTestSetDiscrepancyReportInput,
        output_schema = types.DescribeTestSetDiscrepancyReportOutput,
        http_method = "GET",
        http_path = "/testsetdiscrepancy/{testSetDiscrepancyReportId}",
    }, options)
end

function Client:describeTestSetGeneration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTestSetGeneration",
        input_schema = types.DescribeTestSetGenerationInput,
        output_schema = types.DescribeTestSetGenerationOutput,
        http_method = "GET",
        http_path = "/testsetgenerations/{testSetGenerationId}",
    }, options)
end

function Client:generateBotElement(input, options)
    return self:invokeOperation(input, {
        name = "GenerateBotElement",
        input_schema = types.GenerateBotElementInput,
        output_schema = types.GenerateBotElementOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/generate",
    }, options)
end

function Client:getTestExecutionArtifactsUrl(input, options)
    return self:invokeOperation(input, {
        name = "GetTestExecutionArtifactsUrl",
        input_schema = types.GetTestExecutionArtifactsUrlInput,
        output_schema = types.GetTestExecutionArtifactsUrlOutput,
        http_method = "GET",
        http_path = "/testexecutions/{testExecutionId}/artifacturl",
    }, options)
end

function Client:listAggregatedUtterances(input, options)
    return self:invokeOperation(input, {
        name = "ListAggregatedUtterances",
        input_schema = types.ListAggregatedUtterancesInput,
        output_schema = types.ListAggregatedUtterancesOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/aggregatedutterances",
    }, options)
end

function Client:listBotAliases(input, options)
    return self:invokeOperation(input, {
        name = "ListBotAliases",
        input_schema = types.ListBotAliasesInput,
        output_schema = types.ListBotAliasesOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botaliases",
    }, options)
end

function Client:listBotAliasReplicas(input, options)
    return self:invokeOperation(input, {
        name = "ListBotAliasReplicas",
        input_schema = types.ListBotAliasReplicasInput,
        output_schema = types.ListBotAliasReplicasOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/replicas/{replicaRegion}/botaliases",
    }, options)
end

function Client:listBotAnalyzerHistory(input, options)
    return self:invokeOperation(input, {
        name = "ListBotAnalyzerHistory",
        input_schema = types.ListBotAnalyzerHistoryInput,
        output_schema = types.ListBotAnalyzerHistoryOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botanalyzer/history",
    }, options)
end

function Client:listBotLocales(input, options)
    return self:invokeOperation(input, {
        name = "ListBotLocales",
        input_schema = types.ListBotLocalesInput,
        output_schema = types.ListBotLocalesOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales",
    }, options)
end

function Client:listBotRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ListBotRecommendations",
        input_schema = types.ListBotRecommendationsInput,
        output_schema = types.ListBotRecommendationsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations",
    }, options)
end

function Client:listBotReplicas(input, options)
    return self:invokeOperation(input, {
        name = "ListBotReplicas",
        input_schema = types.ListBotReplicasInput,
        output_schema = types.ListBotReplicasOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/replicas",
    }, options)
end

function Client:listBotResourceGenerations(input, options)
    return self:invokeOperation(input, {
        name = "ListBotResourceGenerations",
        input_schema = types.ListBotResourceGenerationsInput,
        output_schema = types.ListBotResourceGenerationsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/generations",
    }, options)
end

function Client:listBots(input, options)
    return self:invokeOperation(input, {
        name = "ListBots",
        input_schema = types.ListBotsInput,
        output_schema = types.ListBotsOutput,
        http_method = "POST",
        http_path = "/bots",
    }, options)
end

function Client:listBotVersionReplicas(input, options)
    return self:invokeOperation(input, {
        name = "ListBotVersionReplicas",
        input_schema = types.ListBotVersionReplicasInput,
        output_schema = types.ListBotVersionReplicasOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/replicas/{replicaRegion}/botversions",
    }, options)
end

function Client:listBotVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListBotVersions",
        input_schema = types.ListBotVersionsInput,
        output_schema = types.ListBotVersionsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions",
    }, options)
end

function Client:listBuiltInIntents(input, options)
    return self:invokeOperation(input, {
        name = "ListBuiltInIntents",
        input_schema = types.ListBuiltInIntentsInput,
        output_schema = types.ListBuiltInIntentsOutput,
        http_method = "POST",
        http_path = "/builtins/locales/{localeId}/intents",
    }, options)
end

function Client:listBuiltInSlotTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListBuiltInSlotTypes",
        input_schema = types.ListBuiltInSlotTypesInput,
        output_schema = types.ListBuiltInSlotTypesOutput,
        http_method = "POST",
        http_path = "/builtins/locales/{localeId}/slottypes",
    }, options)
end

function Client:listCustomVocabularyItems(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomVocabularyItems",
        input_schema = types.ListCustomVocabularyItemsInput,
        output_schema = types.ListCustomVocabularyItemsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/list",
    }, options)
end

function Client:listExports(input, options)
    return self:invokeOperation(input, {
        name = "ListExports",
        input_schema = types.ListExportsInput,
        output_schema = types.ListExportsOutput,
        http_method = "POST",
        http_path = "/exports",
    }, options)
end

function Client:listImports(input, options)
    return self:invokeOperation(input, {
        name = "ListImports",
        input_schema = types.ListImportsInput,
        output_schema = types.ListImportsOutput,
        http_method = "POST",
        http_path = "/imports",
    }, options)
end

function Client:listIntentMetrics(input, options)
    return self:invokeOperation(input, {
        name = "ListIntentMetrics",
        input_schema = types.ListIntentMetricsInput,
        output_schema = types.ListIntentMetricsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/analytics/intentmetrics",
    }, options)
end

function Client:listIntentPaths(input, options)
    return self:invokeOperation(input, {
        name = "ListIntentPaths",
        input_schema = types.ListIntentPathsInput,
        output_schema = types.ListIntentPathsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/analytics/intentpaths",
    }, options)
end

function Client:listIntents(input, options)
    return self:invokeOperation(input, {
        name = "ListIntents",
        input_schema = types.ListIntentsInput,
        output_schema = types.ListIntentsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents",
    }, options)
end

function Client:listIntentStageMetrics(input, options)
    return self:invokeOperation(input, {
        name = "ListIntentStageMetrics",
        input_schema = types.ListIntentStageMetricsInput,
        output_schema = types.ListIntentStageMetricsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/analytics/intentstagemetrics",
    }, options)
end

function Client:listRecommendedIntents(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommendedIntents",
        input_schema = types.ListRecommendedIntentsInput,
        output_schema = types.ListRecommendedIntentsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/intents",
    }, options)
end

function Client:listSessionAnalyticsData(input, options)
    return self:invokeOperation(input, {
        name = "ListSessionAnalyticsData",
        input_schema = types.ListSessionAnalyticsDataInput,
        output_schema = types.ListSessionAnalyticsDataOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/analytics/sessions",
    }, options)
end

function Client:listSessionMetrics(input, options)
    return self:invokeOperation(input, {
        name = "ListSessionMetrics",
        input_schema = types.ListSessionMetricsInput,
        output_schema = types.ListSessionMetricsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/analytics/sessionmetrics",
    }, options)
end

function Client:listSlots(input, options)
    return self:invokeOperation(input, {
        name = "ListSlots",
        input_schema = types.ListSlotsInput,
        output_schema = types.ListSlotsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots",
    }, options)
end

function Client:listSlotTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListSlotTypes",
        input_schema = types.ListSlotTypesInput,
        output_schema = types.ListSlotTypesOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceARN}",
    }, options)
end

function Client:listTestExecutionResultItems(input, options)
    return self:invokeOperation(input, {
        name = "ListTestExecutionResultItems",
        input_schema = types.ListTestExecutionResultItemsInput,
        output_schema = types.ListTestExecutionResultItemsOutput,
        http_method = "POST",
        http_path = "/testexecutions/{testExecutionId}/results",
    }, options)
end

function Client:listTestExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListTestExecutions",
        input_schema = types.ListTestExecutionsInput,
        output_schema = types.ListTestExecutionsOutput,
        http_method = "POST",
        http_path = "/testexecutions",
    }, options)
end

function Client:listTestSetRecords(input, options)
    return self:invokeOperation(input, {
        name = "ListTestSetRecords",
        input_schema = types.ListTestSetRecordsInput,
        output_schema = types.ListTestSetRecordsOutput,
        http_method = "POST",
        http_path = "/testsets/{testSetId}/records",
    }, options)
end

function Client:listTestSets(input, options)
    return self:invokeOperation(input, {
        name = "ListTestSets",
        input_schema = types.ListTestSetsInput,
        output_schema = types.ListTestSetsOutput,
        http_method = "POST",
        http_path = "/testsets",
    }, options)
end

function Client:listUtteranceAnalyticsData(input, options)
    return self:invokeOperation(input, {
        name = "ListUtteranceAnalyticsData",
        input_schema = types.ListUtteranceAnalyticsDataInput,
        output_schema = types.ListUtteranceAnalyticsDataOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/analytics/utterances",
    }, options)
end

function Client:listUtteranceMetrics(input, options)
    return self:invokeOperation(input, {
        name = "ListUtteranceMetrics",
        input_schema = types.ListUtteranceMetricsInput,
        output_schema = types.ListUtteranceMetricsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/analytics/utterancemetrics",
    }, options)
end

function Client:searchAssociatedTranscripts(input, options)
    return self:invokeOperation(input, {
        name = "SearchAssociatedTranscripts",
        input_schema = types.SearchAssociatedTranscriptsInput,
        output_schema = types.SearchAssociatedTranscriptsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/associatedtranscripts",
    }, options)
end

function Client:startBotAnalyzer(input, options)
    return self:invokeOperation(input, {
        name = "StartBotAnalyzer",
        input_schema = types.StartBotAnalyzerInput,
        output_schema = types.StartBotAnalyzerOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botanalyzer",
    }, options)
end

function Client:startBotRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "StartBotRecommendation",
        input_schema = types.StartBotRecommendationInput,
        output_schema = types.StartBotRecommendationOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations",
    }, options)
end

function Client:startBotResourceGeneration(input, options)
    return self:invokeOperation(input, {
        name = "StartBotResourceGeneration",
        input_schema = types.StartBotResourceGenerationInput,
        output_schema = types.StartBotResourceGenerationOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/startgeneration",
    }, options)
end

function Client:startImport(input, options)
    return self:invokeOperation(input, {
        name = "StartImport",
        input_schema = types.StartImportInput,
        output_schema = types.StartImportOutput,
        http_method = "PUT",
        http_path = "/imports",
    }, options)
end

function Client:startTestExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartTestExecution",
        input_schema = types.StartTestExecutionInput,
        output_schema = types.StartTestExecutionOutput,
        http_method = "POST",
        http_path = "/testsets/{testSetId}/testexecutions",
    }, options)
end

function Client:startTestSetGeneration(input, options)
    return self:invokeOperation(input, {
        name = "StartTestSetGeneration",
        input_schema = types.StartTestSetGenerationInput,
        output_schema = types.StartTestSetGenerationOutput,
        http_method = "PUT",
        http_path = "/testsetgenerations",
    }, options)
end

function Client:stopBotAnalyzer(input, options)
    return self:invokeOperation(input, {
        name = "StopBotAnalyzer",
        input_schema = types.StopBotAnalyzerInput,
        output_schema = types.StopBotAnalyzerOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botanalyzer/{botAnalyzerRequestId}/stop",
    }, options)
end

function Client:stopBotRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "StopBotRecommendation",
        input_schema = types.StopBotRecommendationInput,
        output_schema = types.StopBotRecommendationOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/stopbotrecommendation",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceARN}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceARN}",
    }, options)
end

function Client:updateBot(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBot",
        input_schema = types.UpdateBotInput,
        output_schema = types.UpdateBotOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}",
    }, options)
end

function Client:updateBotAlias(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBotAlias",
        input_schema = types.UpdateBotAliasInput,
        output_schema = types.UpdateBotAliasOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botaliases/{botAliasId}",
    }, options)
end

function Client:updateBotLocale(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBotLocale",
        input_schema = types.UpdateBotLocaleInput,
        output_schema = types.UpdateBotLocaleOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}",
    }, options)
end

function Client:updateBotRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBotRecommendation",
        input_schema = types.UpdateBotRecommendationInput,
        output_schema = types.UpdateBotRecommendationOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}",
    }, options)
end

function Client:updateExport(input, options)
    return self:invokeOperation(input, {
        name = "UpdateExport",
        input_schema = types.UpdateExportInput,
        output_schema = types.UpdateExportOutput,
        http_method = "PUT",
        http_path = "/exports/{exportId}",
    }, options)
end

function Client:updateIntent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIntent",
        input_schema = types.UpdateIntentInput,
        output_schema = types.UpdateIntentOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}",
    }, options)
end

function Client:updateResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResourcePolicy",
        input_schema = types.UpdateResourcePolicyInput,
        output_schema = types.UpdateResourcePolicyOutput,
        http_method = "PUT",
        http_path = "/policy/{resourceArn}",
    }, options)
end

function Client:updateSlot(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSlot",
        input_schema = types.UpdateSlotInput,
        output_schema = types.UpdateSlotOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/{slotId}",
    }, options)
end

function Client:updateSlotType(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSlotType",
        input_schema = types.UpdateSlotTypeInput,
        output_schema = types.UpdateSlotTypeOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}",
    }, options)
end

function Client:updateTestSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTestSet",
        input_schema = types.UpdateTestSetInput,
        output_schema = types.UpdateTestSetOutput,
        http_method = "PUT",
        http_path = "/testsets/{testSetId}",
    }, options)
end

return M
