



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("lexmodelsv2.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("lexmodelsv2.schemas")
local traits = require("smithy.traits")
local types = require("lexmodelsv2.types")
local sdk_defaults = require("aws.sdk_defaults")

















































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "LexModelBuildingServiceV2"
   if not c.protocol then c.protocol = restjson_protocol.new() end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "lex", signing_region = c.region } }
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

function C:batchCreateCustomVocabularyItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchCreateCustomVocabularyItem, input, options)
end

function C:batchDeleteCustomVocabularyItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteCustomVocabularyItem, input, options)
end

function C:batchUpdateCustomVocabularyItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateCustomVocabularyItem, input, options)
end

function C:buildBotLocale(input, options)
   return self:invokeOperation(schemas.Service, schemas.BuildBotLocale, input, options)
end

function C:createBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBot, input, options)
end

function C:createBotAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBotAlias, input, options)
end

function C:createBotLocale(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBotLocale, input, options)
end

function C:createBotReplica(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBotReplica, input, options)
end

function C:createBotVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBotVersion, input, options)
end

function C:createExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateExport, input, options)
end

function C:createIntent(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIntent, input, options)
end

function C:createResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResourcePolicy, input, options)
end

function C:createResourcePolicyStatement(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResourcePolicyStatement, input, options)
end

function C:createSlot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSlot, input, options)
end

function C:createSlotType(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSlotType, input, options)
end

function C:createTestSetDiscrepancyReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTestSetDiscrepancyReport, input, options)
end

function C:createUploadUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUploadUrl, input, options)
end

function C:deleteBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBot, input, options)
end

function C:deleteBotAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBotAlias, input, options)
end

function C:deleteBotAnalyzerRecommendation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBotAnalyzerRecommendation, input, options)
end

function C:deleteBotLocale(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBotLocale, input, options)
end

function C:deleteBotReplica(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBotReplica, input, options)
end

function C:deleteBotVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBotVersion, input, options)
end

function C:deleteCustomVocabulary(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCustomVocabulary, input, options)
end

function C:deleteExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteExport, input, options)
end

function C:deleteImport(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteImport, input, options)
end

function C:deleteIntent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIntent, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deleteResourcePolicyStatement(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicyStatement, input, options)
end

function C:deleteSlot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSlot, input, options)
end

function C:deleteSlotType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSlotType, input, options)
end

function C:deleteTestSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTestSet, input, options)
end

function C:deleteUtterances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUtterances, input, options)
end

function C:describeBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBot, input, options)
end

function C:describeBotAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBotAlias, input, options)
end

function C:describeBotAnalyzerRecommendation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBotAnalyzerRecommendation, input, options)
end

function C:describeBotLocale(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBotLocale, input, options)
end

function C:describeBotRecommendation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBotRecommendation, input, options)
end

function C:describeBotReplica(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBotReplica, input, options)
end

function C:describeBotResourceGeneration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBotResourceGeneration, input, options)
end

function C:describeBotVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBotVersion, input, options)
end

function C:describeCustomVocabularyMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCustomVocabularyMetadata, input, options)
end

function C:describeExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeExport, input, options)
end

function C:describeImport(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImport, input, options)
end

function C:describeIntent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIntent, input, options)
end

function C:describeResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeResourcePolicy, input, options)
end

function C:describeSlot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSlot, input, options)
end

function C:describeSlotType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSlotType, input, options)
end

function C:describeTestExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTestExecution, input, options)
end

function C:describeTestSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTestSet, input, options)
end

function C:describeTestSetDiscrepancyReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTestSetDiscrepancyReport, input, options)
end

function C:describeTestSetGeneration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTestSetGeneration, input, options)
end

function C:generateBotElement(input, options)
   return self:invokeOperation(schemas.Service, schemas.GenerateBotElement, input, options)
end

function C:getTestExecutionArtifactsUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTestExecutionArtifactsUrl, input, options)
end

function C:listAggregatedUtterances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAggregatedUtterances, input, options)
end

function C:listBotAliases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBotAliases, input, options)
end

function C:listBotAliasReplicas(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBotAliasReplicas, input, options)
end

function C:listBotAnalyzerHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBotAnalyzerHistory, input, options)
end

function C:listBotLocales(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBotLocales, input, options)
end

function C:listBotRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBotRecommendations, input, options)
end

function C:listBotReplicas(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBotReplicas, input, options)
end

function C:listBotResourceGenerations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBotResourceGenerations, input, options)
end

function C:listBots(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBots, input, options)
end

function C:listBotVersionReplicas(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBotVersionReplicas, input, options)
end

function C:listBotVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBotVersions, input, options)
end

function C:listBuiltInIntents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBuiltInIntents, input, options)
end

function C:listBuiltInSlotTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBuiltInSlotTypes, input, options)
end

function C:listCustomVocabularyItems(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCustomVocabularyItems, input, options)
end

function C:listExports(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExports, input, options)
end

function C:listImports(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImports, input, options)
end

function C:listIntentMetrics(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIntentMetrics, input, options)
end

function C:listIntentPaths(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIntentPaths, input, options)
end

function C:listIntents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIntents, input, options)
end

function C:listIntentStageMetrics(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIntentStageMetrics, input, options)
end

function C:listRecommendedIntents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecommendedIntents, input, options)
end

function C:listSessionAnalyticsData(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSessionAnalyticsData, input, options)
end

function C:listSessionMetrics(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSessionMetrics, input, options)
end

function C:listSlots(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSlots, input, options)
end

function C:listSlotTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSlotTypes, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTestExecutionResultItems(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTestExecutionResultItems, input, options)
end

function C:listTestExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTestExecutions, input, options)
end

function C:listTestSetRecords(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTestSetRecords, input, options)
end

function C:listTestSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTestSets, input, options)
end

function C:listUtteranceAnalyticsData(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUtteranceAnalyticsData, input, options)
end

function C:listUtteranceMetrics(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUtteranceMetrics, input, options)
end

function C:searchAssociatedTranscripts(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchAssociatedTranscripts, input, options)
end

function C:startBotAnalyzer(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartBotAnalyzer, input, options)
end

function C:startBotRecommendation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartBotRecommendation, input, options)
end

function C:startBotResourceGeneration(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartBotResourceGeneration, input, options)
end

function C:startImport(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartImport, input, options)
end

function C:startTestExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartTestExecution, input, options)
end

function C:startTestSetGeneration(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartTestSetGeneration, input, options)
end

function C:stopBotAnalyzer(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopBotAnalyzer, input, options)
end

function C:stopBotRecommendation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopBotRecommendation, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBot, input, options)
end

function C:updateBotAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBotAlias, input, options)
end

function C:updateBotLocale(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBotLocale, input, options)
end

function C:updateBotRecommendation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBotRecommendation, input, options)
end

function C:updateExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateExport, input, options)
end

function C:updateIntent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIntent, input, options)
end

function C:updateResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResourcePolicy, input, options)
end

function C:updateSlot(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSlot, input, options)
end

function C:updateSlotType(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSlotType, input, options)
end

function C:updateTestSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTestSet, input, options)
end

return M
