local paginator = require("paginator")

local M = {}

--- Returns a page iterator for getChatControlsConfiguration.
function M.pages_get_chat_controls_configuration(client, input)
    return paginator.pages(client, "getChatControlsConfiguration", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "topicConfigurations",
    })
end

--- Returns an item iterator for getChatControlsConfiguration.
function M.items_get_chat_controls_configuration(client, input)
    return paginator.items(client, "getChatControlsConfiguration", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "topicConfigurations",
    })
end

--- Returns a page iterator for listApplications.
function M.pages_list_applications(client, input)
    return paginator.pages(client, "listApplications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "applications",
    })
end

--- Returns an item iterator for listApplications.
function M.items_list_applications(client, input)
    return paginator.items(client, "listApplications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "applications",
    })
end

--- Returns a page iterator for listAttachments.
function M.pages_list_attachments(client, input)
    return paginator.pages(client, "listAttachments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "attachments",
    })
end

--- Returns an item iterator for listAttachments.
function M.items_list_attachments(client, input)
    return paginator.items(client, "listAttachments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "attachments",
    })
end

--- Returns a page iterator for listChatResponseConfigurations.
function M.pages_list_chat_response_configurations(client, input)
    return paginator.pages(client, "listChatResponseConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "chatResponseConfigurations",
    })
end

--- Returns an item iterator for listChatResponseConfigurations.
function M.items_list_chat_response_configurations(client, input)
    return paginator.items(client, "listChatResponseConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "chatResponseConfigurations",
    })
end

--- Returns a page iterator for listConversations.
function M.pages_list_conversations(client, input)
    return paginator.pages(client, "listConversations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "conversations",
    })
end

--- Returns an item iterator for listConversations.
function M.items_list_conversations(client, input)
    return paginator.items(client, "listConversations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "conversations",
    })
end

--- Returns a page iterator for listDataAccessors.
function M.pages_list_data_accessors(client, input)
    return paginator.pages(client, "listDataAccessors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dataAccessors",
    })
end

--- Returns an item iterator for listDataAccessors.
function M.items_list_data_accessors(client, input)
    return paginator.items(client, "listDataAccessors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dataAccessors",
    })
end

--- Returns a page iterator for listDataSourceSyncJobs.
function M.pages_list_data_source_sync_jobs(client, input)
    return paginator.pages(client, "listDataSourceSyncJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "history",
    })
end

--- Returns an item iterator for listDataSourceSyncJobs.
function M.items_list_data_source_sync_jobs(client, input)
    return paginator.items(client, "listDataSourceSyncJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "history",
    })
end

--- Returns a page iterator for listDataSources.
function M.pages_list_data_sources(client, input)
    return paginator.pages(client, "listDataSources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dataSources",
    })
end

--- Returns an item iterator for listDataSources.
function M.items_list_data_sources(client, input)
    return paginator.items(client, "listDataSources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dataSources",
    })
end

--- Returns a page iterator for listDocuments.
function M.pages_list_documents(client, input)
    return paginator.pages(client, "listDocuments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "documentDetailList",
    })
end

--- Returns an item iterator for listDocuments.
function M.items_list_documents(client, input)
    return paginator.items(client, "listDocuments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "documentDetailList",
    })
end

--- Returns a page iterator for listGroups.
function M.pages_list_groups(client, input)
    return paginator.pages(client, "listGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listGroups.
function M.items_list_groups(client, input)
    return paginator.items(client, "listGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listIndices.
function M.pages_list_indices(client, input)
    return paginator.pages(client, "listIndices", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "indices",
    })
end

--- Returns an item iterator for listIndices.
function M.items_list_indices(client, input)
    return paginator.items(client, "listIndices", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "indices",
    })
end

--- Returns a page iterator for listMessages.
function M.pages_list_messages(client, input)
    return paginator.pages(client, "listMessages", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "messages",
    })
end

--- Returns an item iterator for listMessages.
function M.items_list_messages(client, input)
    return paginator.items(client, "listMessages", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "messages",
    })
end

--- Returns a page iterator for listPluginActions.
function M.pages_list_plugin_actions(client, input)
    return paginator.pages(client, "listPluginActions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listPluginActions.
function M.items_list_plugin_actions(client, input)
    return paginator.items(client, "listPluginActions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listPluginTypeActions.
function M.pages_list_plugin_type_actions(client, input)
    return paginator.pages(client, "listPluginTypeActions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listPluginTypeActions.
function M.items_list_plugin_type_actions(client, input)
    return paginator.items(client, "listPluginTypeActions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listPluginTypeMetadata.
function M.pages_list_plugin_type_metadata(client, input)
    return paginator.pages(client, "listPluginTypeMetadata", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listPluginTypeMetadata.
function M.items_list_plugin_type_metadata(client, input)
    return paginator.items(client, "listPluginTypeMetadata", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listPlugins.
function M.pages_list_plugins(client, input)
    return paginator.pages(client, "listPlugins", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "plugins",
    })
end

--- Returns an item iterator for listPlugins.
function M.items_list_plugins(client, input)
    return paginator.items(client, "listPlugins", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "plugins",
    })
end

--- Returns a page iterator for listRetrievers.
function M.pages_list_retrievers(client, input)
    return paginator.pages(client, "listRetrievers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "retrievers",
    })
end

--- Returns an item iterator for listRetrievers.
function M.items_list_retrievers(client, input)
    return paginator.items(client, "listRetrievers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "retrievers",
    })
end

--- Returns a page iterator for listSubscriptions.
function M.pages_list_subscriptions(client, input)
    return paginator.pages(client, "listSubscriptions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "subscriptions",
    })
end

--- Returns an item iterator for listSubscriptions.
function M.items_list_subscriptions(client, input)
    return paginator.items(client, "listSubscriptions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "subscriptions",
    })
end

--- Returns a page iterator for listWebExperiences.
function M.pages_list_web_experiences(client, input)
    return paginator.pages(client, "listWebExperiences", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "webExperiences",
    })
end

--- Returns an item iterator for listWebExperiences.
function M.items_list_web_experiences(client, input)
    return paginator.items(client, "listWebExperiences", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "webExperiences",
    })
end

--- Returns a page iterator for searchRelevantContent.
function M.pages_search_relevant_content(client, input)
    return paginator.pages(client, "searchRelevantContent", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "relevantContent",
    })
end

--- Returns an item iterator for searchRelevantContent.
function M.items_search_relevant_content(client, input)
    return paginator.items(client, "searchRelevantContent", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "relevantContent",
    })
end

return M
