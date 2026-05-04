local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listABTests.
function M.pages_list_a_b_tests(client, input)
    return paginator.pages(client, "listABTests", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "abTests",
    })
end

--- Returns an item iterator for listABTests.
function M.items_list_a_b_tests(client, input)
    return paginator.items(client, "listABTests", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "abTests",
    })
end

--- Returns a page iterator for listActors.
function M.pages_list_actors(client, input)
    return paginator.pages(client, "listActors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "actorSummaries",
    })
end

--- Returns an item iterator for listActors.
function M.items_list_actors(client, input)
    return paginator.items(client, "listActors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "actorSummaries",
    })
end

--- Returns a page iterator for listBatchEvaluations.
function M.pages_list_batch_evaluations(client, input)
    return paginator.pages(client, "listBatchEvaluations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "batchEvaluations",
    })
end

--- Returns an item iterator for listBatchEvaluations.
function M.items_list_batch_evaluations(client, input)
    return paginator.items(client, "listBatchEvaluations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "batchEvaluations",
    })
end

--- Returns a page iterator for listEvents.
function M.pages_list_events(client, input)
    return paginator.pages(client, "listEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "events",
    })
end

--- Returns an item iterator for listEvents.
function M.items_list_events(client, input)
    return paginator.items(client, "listEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "events",
    })
end

--- Returns a page iterator for listMemoryExtractionJobs.
function M.pages_list_memory_extraction_jobs(client, input)
    return paginator.pages(client, "listMemoryExtractionJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobs",
    })
end

--- Returns an item iterator for listMemoryExtractionJobs.
function M.items_list_memory_extraction_jobs(client, input)
    return paginator.items(client, "listMemoryExtractionJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobs",
    })
end

--- Returns a page iterator for listMemoryRecords.
function M.pages_list_memory_records(client, input)
    return paginator.pages(client, "listMemoryRecords", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "memoryRecordSummaries",
    })
end

--- Returns an item iterator for listMemoryRecords.
function M.items_list_memory_records(client, input)
    return paginator.items(client, "listMemoryRecords", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "memoryRecordSummaries",
    })
end

--- Returns a page iterator for listRecommendations.
function M.pages_list_recommendations(client, input)
    return paginator.pages(client, "listRecommendations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "recommendationSummaries",
    })
end

--- Returns an item iterator for listRecommendations.
function M.items_list_recommendations(client, input)
    return paginator.items(client, "listRecommendations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "recommendationSummaries",
    })
end

--- Returns a page iterator for listSessions.
function M.pages_list_sessions(client, input)
    return paginator.pages(client, "listSessions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "sessionSummaries",
    })
end

--- Returns an item iterator for listSessions.
function M.items_list_sessions(client, input)
    return paginator.items(client, "listSessions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "sessionSummaries",
    })
end

--- Returns a page iterator for retrieveMemoryRecords.
function M.pages_retrieve_memory_records(client, input)
    return paginator.pages(client, "retrieveMemoryRecords", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "memoryRecordSummaries",
    })
end

--- Returns an item iterator for retrieveMemoryRecords.
function M.items_retrieve_memory_records(client, input)
    return paginator.items(client, "retrieveMemoryRecords", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "memoryRecordSummaries",
    })
end

return M
