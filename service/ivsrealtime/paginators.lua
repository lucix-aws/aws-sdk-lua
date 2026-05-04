local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listCompositions.
function M.pages_list_compositions(client, input)
    return paginator.pages(client, "listCompositions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listEncoderConfigurations.
function M.pages_list_encoder_configurations(client, input)
    return paginator.pages(client, "listEncoderConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listIngestConfigurations.
function M.pages_list_ingest_configurations(client, input)
    return paginator.pages(client, "listIngestConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "ingestConfigurations",
    })
end

--- Returns an item iterator for listIngestConfigurations.
function M.items_list_ingest_configurations(client, input)
    return paginator.items(client, "listIngestConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "ingestConfigurations",
    })
end

--- Returns a page iterator for listParticipantEvents.
function M.pages_list_participant_events(client, input)
    return paginator.pages(client, "listParticipantEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listParticipantReplicas.
function M.pages_list_participant_replicas(client, input)
    return paginator.pages(client, "listParticipantReplicas", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "replicas",
    })
end

--- Returns an item iterator for listParticipantReplicas.
function M.items_list_participant_replicas(client, input)
    return paginator.items(client, "listParticipantReplicas", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "replicas",
    })
end

--- Returns a page iterator for listParticipants.
function M.pages_list_participants(client, input)
    return paginator.pages(client, "listParticipants", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listPublicKeys.
function M.pages_list_public_keys(client, input)
    return paginator.pages(client, "listPublicKeys", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "publicKeys",
    })
end

--- Returns an item iterator for listPublicKeys.
function M.items_list_public_keys(client, input)
    return paginator.items(client, "listPublicKeys", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "publicKeys",
    })
end

--- Returns a page iterator for listStageSessions.
function M.pages_list_stage_sessions(client, input)
    return paginator.pages(client, "listStageSessions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listStages.
function M.pages_list_stages(client, input)
    return paginator.pages(client, "listStages", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listStorageConfigurations.
function M.pages_list_storage_configurations(client, input)
    return paginator.pages(client, "listStorageConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

return M
