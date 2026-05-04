local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeBotAnalyzerRecommendation.
function M.pages_describe_bot_analyzer_recommendation(client, input)
    return paginator.pages(client, "describeBotAnalyzerRecommendation", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "botAnalyzerRecommendationList",
    })
end

--- Returns an item iterator for describeBotAnalyzerRecommendation.
function M.items_describe_bot_analyzer_recommendation(client, input)
    return paginator.items(client, "describeBotAnalyzerRecommendation", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "botAnalyzerRecommendationList",
    })
end

--- Returns a page iterator for listAggregatedUtterances.
function M.pages_list_aggregated_utterances(client, input)
    return paginator.pages(client, "listAggregatedUtterances", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listBotAliasReplicas.
function M.pages_list_bot_alias_replicas(client, input)
    return paginator.pages(client, "listBotAliasReplicas", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listBotAliases.
function M.pages_list_bot_aliases(client, input)
    return paginator.pages(client, "listBotAliases", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listBotAnalyzerHistory.
function M.pages_list_bot_analyzer_history(client, input)
    return paginator.pages(client, "listBotAnalyzerHistory", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "botAnalyzerHistoryList",
    })
end

--- Returns an item iterator for listBotAnalyzerHistory.
function M.items_list_bot_analyzer_history(client, input)
    return paginator.items(client, "listBotAnalyzerHistory", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "botAnalyzerHistoryList",
    })
end

--- Returns a page iterator for listBotLocales.
function M.pages_list_bot_locales(client, input)
    return paginator.pages(client, "listBotLocales", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listBotRecommendations.
function M.pages_list_bot_recommendations(client, input)
    return paginator.pages(client, "listBotRecommendations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listBotResourceGenerations.
function M.pages_list_bot_resource_generations(client, input)
    return paginator.pages(client, "listBotResourceGenerations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listBotVersionReplicas.
function M.pages_list_bot_version_replicas(client, input)
    return paginator.pages(client, "listBotVersionReplicas", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listBotVersions.
function M.pages_list_bot_versions(client, input)
    return paginator.pages(client, "listBotVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listBots.
function M.pages_list_bots(client, input)
    return paginator.pages(client, "listBots", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listBuiltInIntents.
function M.pages_list_built_in_intents(client, input)
    return paginator.pages(client, "listBuiltInIntents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listBuiltInSlotTypes.
function M.pages_list_built_in_slot_types(client, input)
    return paginator.pages(client, "listBuiltInSlotTypes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listCustomVocabularyItems.
function M.pages_list_custom_vocabulary_items(client, input)
    return paginator.pages(client, "listCustomVocabularyItems", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listExports.
function M.pages_list_exports(client, input)
    return paginator.pages(client, "listExports", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listImports.
function M.pages_list_imports(client, input)
    return paginator.pages(client, "listImports", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listIntentMetrics.
function M.pages_list_intent_metrics(client, input)
    return paginator.pages(client, "listIntentMetrics", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listIntentStageMetrics.
function M.pages_list_intent_stage_metrics(client, input)
    return paginator.pages(client, "listIntentStageMetrics", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listIntents.
function M.pages_list_intents(client, input)
    return paginator.pages(client, "listIntents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listRecommendedIntents.
function M.pages_list_recommended_intents(client, input)
    return paginator.pages(client, "listRecommendedIntents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listSessionAnalyticsData.
function M.pages_list_session_analytics_data(client, input)
    return paginator.pages(client, "listSessionAnalyticsData", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listSessionMetrics.
function M.pages_list_session_metrics(client, input)
    return paginator.pages(client, "listSessionMetrics", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listSlotTypes.
function M.pages_list_slot_types(client, input)
    return paginator.pages(client, "listSlotTypes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listSlots.
function M.pages_list_slots(client, input)
    return paginator.pages(client, "listSlots", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listTestExecutionResultItems.
function M.pages_list_test_execution_result_items(client, input)
    return paginator.pages(client, "listTestExecutionResultItems", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listTestExecutions.
function M.pages_list_test_executions(client, input)
    return paginator.pages(client, "listTestExecutions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listTestSetRecords.
function M.pages_list_test_set_records(client, input)
    return paginator.pages(client, "listTestSetRecords", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listTestSets.
function M.pages_list_test_sets(client, input)
    return paginator.pages(client, "listTestSets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listUtteranceAnalyticsData.
function M.pages_list_utterance_analytics_data(client, input)
    return paginator.pages(client, "listUtteranceAnalyticsData", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listUtteranceMetrics.
function M.pages_list_utterance_metrics(client, input)
    return paginator.pages(client, "listUtteranceMetrics", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

return M
