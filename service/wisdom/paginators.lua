local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listAssistantAssociations.
function M.pages_list_assistant_associations(client, input)
    return paginator.pages(client, "listAssistantAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "assistantAssociationSummaries",
    })
end

--- Returns an item iterator for listAssistantAssociations.
function M.items_list_assistant_associations(client, input)
    return paginator.items(client, "listAssistantAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "assistantAssociationSummaries",
    })
end

--- Returns a page iterator for listAssistants.
function M.pages_list_assistants(client, input)
    return paginator.pages(client, "listAssistants", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "assistantSummaries",
    })
end

--- Returns an item iterator for listAssistants.
function M.items_list_assistants(client, input)
    return paginator.items(client, "listAssistants", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "assistantSummaries",
    })
end

--- Returns a page iterator for listContents.
function M.pages_list_contents(client, input)
    return paginator.pages(client, "listContents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "contentSummaries",
    })
end

--- Returns an item iterator for listContents.
function M.items_list_contents(client, input)
    return paginator.items(client, "listContents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "contentSummaries",
    })
end

--- Returns a page iterator for listImportJobs.
function M.pages_list_import_jobs(client, input)
    return paginator.pages(client, "listImportJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "importJobSummaries",
    })
end

--- Returns an item iterator for listImportJobs.
function M.items_list_import_jobs(client, input)
    return paginator.items(client, "listImportJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "importJobSummaries",
    })
end

--- Returns a page iterator for listKnowledgeBases.
function M.pages_list_knowledge_bases(client, input)
    return paginator.pages(client, "listKnowledgeBases", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "knowledgeBaseSummaries",
    })
end

--- Returns an item iterator for listKnowledgeBases.
function M.items_list_knowledge_bases(client, input)
    return paginator.items(client, "listKnowledgeBases", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "knowledgeBaseSummaries",
    })
end

--- Returns a page iterator for listQuickResponses.
function M.pages_list_quick_responses(client, input)
    return paginator.pages(client, "listQuickResponses", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "quickResponseSummaries",
    })
end

--- Returns an item iterator for listQuickResponses.
function M.items_list_quick_responses(client, input)
    return paginator.items(client, "listQuickResponses", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "quickResponseSummaries",
    })
end

--- Returns a page iterator for queryAssistant.
function M.pages_query_assistant(client, input)
    return paginator.pages(client, "queryAssistant", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "results",
    })
end

--- Returns an item iterator for queryAssistant.
function M.items_query_assistant(client, input)
    return paginator.items(client, "queryAssistant", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "results",
    })
end

--- Returns a page iterator for searchContent.
function M.pages_search_content(client, input)
    return paginator.pages(client, "searchContent", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "contentSummaries",
    })
end

--- Returns an item iterator for searchContent.
function M.items_search_content(client, input)
    return paginator.items(client, "searchContent", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "contentSummaries",
    })
end

--- Returns a page iterator for searchQuickResponses.
function M.pages_search_quick_responses(client, input)
    return paginator.pages(client, "searchQuickResponses", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "results",
    })
end

--- Returns an item iterator for searchQuickResponses.
function M.items_search_quick_responses(client, input)
    return paginator.items(client, "searchQuickResponses", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "results",
    })
end

--- Returns a page iterator for searchSessions.
function M.pages_search_sessions(client, input)
    return paginator.pages(client, "searchSessions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "sessionSummaries",
    })
end

--- Returns an item iterator for searchSessions.
function M.items_search_sessions(client, input)
    return paginator.items(client, "searchSessions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "sessionSummaries",
    })
end

return M
