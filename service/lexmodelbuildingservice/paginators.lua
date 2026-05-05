local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for getBotAliases.
function M.pages_get_bot_aliases(client, input)
    return paginator.pages(client, "getBotAliases", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getBotChannelAssociations.
function M.pages_get_bot_channel_associations(client, input)
    return paginator.pages(client, "getBotChannelAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getBotVersions.
function M.pages_get_bot_versions(client, input)
    return paginator.pages(client, "getBotVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getBots.
function M.pages_get_bots(client, input)
    return paginator.pages(client, "getBots", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getBuiltinIntents.
function M.pages_get_builtin_intents(client, input)
    return paginator.pages(client, "getBuiltinIntents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getBuiltinSlotTypes.
function M.pages_get_builtin_slot_types(client, input)
    return paginator.pages(client, "getBuiltinSlotTypes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getIntentVersions.
function M.pages_get_intent_versions(client, input)
    return paginator.pages(client, "getIntentVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getIntents.
function M.pages_get_intents(client, input)
    return paginator.pages(client, "getIntents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getMigrations.
function M.pages_get_migrations(client, input)
    return paginator.pages(client, "getMigrations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getSlotTypeVersions.
function M.pages_get_slot_type_versions(client, input)
    return paginator.pages(client, "getSlotTypeVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getSlotTypes.
function M.pages_get_slot_types(client, input)
    return paginator.pages(client, "getSlotTypes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

return M
