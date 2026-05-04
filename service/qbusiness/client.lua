local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("qbusiness.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("qbusiness.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ExpertQ"
    cfg.signing_name = "qbusiness"
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

function Client:associatePermission(input, options)
    return self:invokeOperation(input, {
        name = "AssociatePermission",
        input_schema = types.AssociatePermissionInput,
        output_schema = types.AssociatePermissionOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/policy",
    }, options)
end

function Client:batchDeleteDocument(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteDocument",
        input_schema = types.BatchDeleteDocumentInput,
        output_schema = types.BatchDeleteDocumentOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/indices/{indexId}/documents/delete",
    }, options)
end

function Client:batchPutDocument(input, options)
    return self:invokeOperation(input, {
        name = "BatchPutDocument",
        input_schema = types.BatchPutDocumentInput,
        output_schema = types.BatchPutDocumentOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/indices/{indexId}/documents",
    }, options)
end

function Client:cancelSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CancelSubscription",
        input_schema = types.CancelSubscriptionInput,
        output_schema = types.CancelSubscriptionOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/subscriptions/{subscriptionId}",
    }, options)
end

function Client:chat(input, options)
    return self:invokeOperation(input, {
        name = "Chat",
        input_schema = types.ChatInput,
        output_schema = types.ChatOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/conversations",
    }, options)
end

function Client:chatSync(input, options)
    return self:invokeOperation(input, {
        name = "ChatSync",
        input_schema = types.ChatSyncInput,
        output_schema = types.ChatSyncOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/conversations?sync",
    }, options)
end

function Client:checkDocumentAccess(input, options)
    return self:invokeOperation(input, {
        name = "CheckDocumentAccess",
        input_schema = types.CheckDocumentAccessInput,
        output_schema = types.CheckDocumentAccessOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/index/{indexId}/users/{userId}/documents/{documentId}/check-document-access",
    }, options)
end

function Client:createAnonymousWebExperienceUrl(input, options)
    return self:invokeOperation(input, {
        name = "CreateAnonymousWebExperienceUrl",
        input_schema = types.CreateAnonymousWebExperienceUrlInput,
        output_schema = types.CreateAnonymousWebExperienceUrlOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/experiences/{webExperienceId}/anonymous-url",
    }, options)
end

function Client:createApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplication",
        input_schema = types.CreateApplicationInput,
        output_schema = types.CreateApplicationOutput,
        http_method = "POST",
        http_path = "/applications",
    }, options)
end

function Client:createChatResponseConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateChatResponseConfiguration",
        input_schema = types.CreateChatResponseConfigurationInput,
        output_schema = types.CreateChatResponseConfigurationOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/chatresponseconfigurations",
    }, options)
end

function Client:createDataAccessor(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataAccessor",
        input_schema = types.CreateDataAccessorInput,
        output_schema = types.CreateDataAccessorOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/dataaccessors",
    }, options)
end

function Client:createDataSource(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataSource",
        input_schema = types.CreateDataSourceInput,
        output_schema = types.CreateDataSourceOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/indices/{indexId}/datasources",
    }, options)
end

function Client:createIndex(input, options)
    return self:invokeOperation(input, {
        name = "CreateIndex",
        input_schema = types.CreateIndexInput,
        output_schema = types.CreateIndexOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/indices",
    }, options)
end

function Client:createPlugin(input, options)
    return self:invokeOperation(input, {
        name = "CreatePlugin",
        input_schema = types.CreatePluginInput,
        output_schema = types.CreatePluginOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/plugins",
    }, options)
end

function Client:createRetriever(input, options)
    return self:invokeOperation(input, {
        name = "CreateRetriever",
        input_schema = types.CreateRetrieverInput,
        output_schema = types.CreateRetrieverOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/retrievers",
    }, options)
end

function Client:createSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateSubscription",
        input_schema = types.CreateSubscriptionInput,
        output_schema = types.CreateSubscriptionOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/subscriptions",
    }, options)
end

function Client:createUser(input, options)
    return self:invokeOperation(input, {
        name = "CreateUser",
        input_schema = types.CreateUserInput,
        output_schema = types.CreateUserOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/users",
    }, options)
end

function Client:createWebExperience(input, options)
    return self:invokeOperation(input, {
        name = "CreateWebExperience",
        input_schema = types.CreateWebExperienceInput,
        output_schema = types.CreateWebExperienceOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/experiences",
    }, options)
end

function Client:deleteApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplication",
        input_schema = types.DeleteApplicationInput,
        output_schema = types.DeleteApplicationOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}",
    }, options)
end

function Client:deleteAttachment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAttachment",
        input_schema = types.DeleteAttachmentInput,
        output_schema = types.DeleteAttachmentOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/conversations/{conversationId}/attachments/{attachmentId}",
    }, options)
end

function Client:deleteChatControlsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChatControlsConfiguration",
        input_schema = types.DeleteChatControlsConfigurationInput,
        output_schema = types.DeleteChatControlsConfigurationOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/chatcontrols",
    }, options)
end

function Client:deleteChatResponseConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChatResponseConfiguration",
        input_schema = types.DeleteChatResponseConfigurationInput,
        output_schema = types.DeleteChatResponseConfigurationOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/chatresponseconfigurations/{chatResponseConfigurationId}",
    }, options)
end

function Client:deleteConversation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConversation",
        input_schema = types.DeleteConversationInput,
        output_schema = types.DeleteConversationOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/conversations/{conversationId}",
    }, options)
end

function Client:deleteDataAccessor(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataAccessor",
        input_schema = types.DeleteDataAccessorInput,
        output_schema = types.DeleteDataAccessorOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/dataaccessors/{dataAccessorId}",
    }, options)
end

function Client:deleteDataSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataSource",
        input_schema = types.DeleteDataSourceInput,
        output_schema = types.DeleteDataSourceOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}",
    }, options)
end

function Client:deleteGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGroup",
        input_schema = types.DeleteGroupInput,
        output_schema = types.DeleteGroupOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/indices/{indexId}/groups/{groupName}",
    }, options)
end

function Client:deleteIndex(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIndex",
        input_schema = types.DeleteIndexInput,
        output_schema = types.DeleteIndexOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/indices/{indexId}",
    }, options)
end

function Client:deletePlugin(input, options)
    return self:invokeOperation(input, {
        name = "DeletePlugin",
        input_schema = types.DeletePluginInput,
        output_schema = types.DeletePluginOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/plugins/{pluginId}",
    }, options)
end

function Client:deleteRetriever(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRetriever",
        input_schema = types.DeleteRetrieverInput,
        output_schema = types.DeleteRetrieverOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/retrievers/{retrieverId}",
    }, options)
end

function Client:deleteUser(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUser",
        input_schema = types.DeleteUserInput,
        output_schema = types.DeleteUserOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/users/{userId}",
    }, options)
end

function Client:deleteWebExperience(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWebExperience",
        input_schema = types.DeleteWebExperienceInput,
        output_schema = types.DeleteWebExperienceOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/experiences/{webExperienceId}",
    }, options)
end

function Client:disassociatePermission(input, options)
    return self:invokeOperation(input, {
        name = "DisassociatePermission",
        input_schema = types.DisassociatePermissionInput,
        output_schema = types.DisassociatePermissionOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/policy/{statementId}",
    }, options)
end

function Client:getApplication(input, options)
    return self:invokeOperation(input, {
        name = "GetApplication",
        input_schema = types.GetApplicationInput,
        output_schema = types.GetApplicationOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}",
    }, options)
end

function Client:getChatControlsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetChatControlsConfiguration",
        input_schema = types.GetChatControlsConfigurationInput,
        output_schema = types.GetChatControlsConfigurationOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/chatcontrols",
    }, options)
end

function Client:getChatResponseConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetChatResponseConfiguration",
        input_schema = types.GetChatResponseConfigurationInput,
        output_schema = types.GetChatResponseConfigurationOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/chatresponseconfigurations/{chatResponseConfigurationId}",
    }, options)
end

function Client:getDataAccessor(input, options)
    return self:invokeOperation(input, {
        name = "GetDataAccessor",
        input_schema = types.GetDataAccessorInput,
        output_schema = types.GetDataAccessorOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/dataaccessors/{dataAccessorId}",
    }, options)
end

function Client:getDataSource(input, options)
    return self:invokeOperation(input, {
        name = "GetDataSource",
        input_schema = types.GetDataSourceInput,
        output_schema = types.GetDataSourceOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}",
    }, options)
end

function Client:getDocumentContent(input, options)
    return self:invokeOperation(input, {
        name = "GetDocumentContent",
        input_schema = types.GetDocumentContentInput,
        output_schema = types.GetDocumentContentOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/index/{indexId}/documents/{documentId}/content",
    }, options)
end

function Client:getGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetGroup",
        input_schema = types.GetGroupInput,
        output_schema = types.GetGroupOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/indices/{indexId}/groups/{groupName}",
    }, options)
end

function Client:getIndex(input, options)
    return self:invokeOperation(input, {
        name = "GetIndex",
        input_schema = types.GetIndexInput,
        output_schema = types.GetIndexOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/indices/{indexId}",
    }, options)
end

function Client:getMedia(input, options)
    return self:invokeOperation(input, {
        name = "GetMedia",
        input_schema = types.GetMediaInput,
        output_schema = types.GetMediaOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/conversations/{conversationId}/messages/{messageId}/media/{mediaId}",
    }, options)
end

function Client:getPlugin(input, options)
    return self:invokeOperation(input, {
        name = "GetPlugin",
        input_schema = types.GetPluginInput,
        output_schema = types.GetPluginOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/plugins/{pluginId}",
    }, options)
end

function Client:getPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetPolicy",
        input_schema = types.GetPolicyInput,
        output_schema = types.GetPolicyOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/policy",
    }, options)
end

function Client:getRetriever(input, options)
    return self:invokeOperation(input, {
        name = "GetRetriever",
        input_schema = types.GetRetrieverInput,
        output_schema = types.GetRetrieverOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/retrievers/{retrieverId}",
    }, options)
end

function Client:getUser(input, options)
    return self:invokeOperation(input, {
        name = "GetUser",
        input_schema = types.GetUserInput,
        output_schema = types.GetUserOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/users/{userId}",
    }, options)
end

function Client:getWebExperience(input, options)
    return self:invokeOperation(input, {
        name = "GetWebExperience",
        input_schema = types.GetWebExperienceInput,
        output_schema = types.GetWebExperienceOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/experiences/{webExperienceId}",
    }, options)
end

function Client:listApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListApplications",
        input_schema = types.ListApplicationsInput,
        output_schema = types.ListApplicationsOutput,
        http_method = "GET",
        http_path = "/applications",
    }, options)
end

function Client:listAttachments(input, options)
    return self:invokeOperation(input, {
        name = "ListAttachments",
        input_schema = types.ListAttachmentsInput,
        output_schema = types.ListAttachmentsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/attachments",
    }, options)
end

function Client:listChatResponseConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListChatResponseConfigurations",
        input_schema = types.ListChatResponseConfigurationsInput,
        output_schema = types.ListChatResponseConfigurationsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/chatresponseconfigurations",
    }, options)
end

function Client:listConversations(input, options)
    return self:invokeOperation(input, {
        name = "ListConversations",
        input_schema = types.ListConversationsInput,
        output_schema = types.ListConversationsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/conversations",
    }, options)
end

function Client:listDataAccessors(input, options)
    return self:invokeOperation(input, {
        name = "ListDataAccessors",
        input_schema = types.ListDataAccessorsInput,
        output_schema = types.ListDataAccessorsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/dataaccessors",
    }, options)
end

function Client:listDataSources(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSources",
        input_schema = types.ListDataSourcesInput,
        output_schema = types.ListDataSourcesOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/indices/{indexId}/datasources",
    }, options)
end

function Client:listDataSourceSyncJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSourceSyncJobs",
        input_schema = types.ListDataSourceSyncJobsInput,
        output_schema = types.ListDataSourceSyncJobsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}/syncjobs",
    }, options)
end

function Client:listDocuments(input, options)
    return self:invokeOperation(input, {
        name = "ListDocuments",
        input_schema = types.ListDocumentsInput,
        output_schema = types.ListDocumentsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/index/{indexId}/documents",
    }, options)
end

function Client:listGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListGroups",
        input_schema = types.ListGroupsInput,
        output_schema = types.ListGroupsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/indices/{indexId}/groups",
    }, options)
end

function Client:listIndices(input, options)
    return self:invokeOperation(input, {
        name = "ListIndices",
        input_schema = types.ListIndicesInput,
        output_schema = types.ListIndicesOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/indices",
    }, options)
end

function Client:listMessages(input, options)
    return self:invokeOperation(input, {
        name = "ListMessages",
        input_schema = types.ListMessagesInput,
        output_schema = types.ListMessagesOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/conversations/{conversationId}",
    }, options)
end

function Client:listPluginActions(input, options)
    return self:invokeOperation(input, {
        name = "ListPluginActions",
        input_schema = types.ListPluginActionsInput,
        output_schema = types.ListPluginActionsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/plugins/{pluginId}/actions",
    }, options)
end

function Client:listPlugins(input, options)
    return self:invokeOperation(input, {
        name = "ListPlugins",
        input_schema = types.ListPluginsInput,
        output_schema = types.ListPluginsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/plugins",
    }, options)
end

function Client:listPluginTypeActions(input, options)
    return self:invokeOperation(input, {
        name = "ListPluginTypeActions",
        input_schema = types.ListPluginTypeActionsInput,
        output_schema = types.ListPluginTypeActionsOutput,
        http_method = "GET",
        http_path = "/pluginTypes/{pluginType}/actions",
    }, options)
end

function Client:listPluginTypeMetadata(input, options)
    return self:invokeOperation(input, {
        name = "ListPluginTypeMetadata",
        input_schema = types.ListPluginTypeMetadataInput,
        output_schema = types.ListPluginTypeMetadataOutput,
        http_method = "GET",
        http_path = "/pluginTypeMetadata",
    }, options)
end

function Client:listRetrievers(input, options)
    return self:invokeOperation(input, {
        name = "ListRetrievers",
        input_schema = types.ListRetrieversInput,
        output_schema = types.ListRetrieversOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/retrievers",
    }, options)
end

function Client:listSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "ListSubscriptions",
        input_schema = types.ListSubscriptionsInput,
        output_schema = types.ListSubscriptionsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/subscriptions",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/v1/tags/{resourceARN}",
    }, options)
end

function Client:listWebExperiences(input, options)
    return self:invokeOperation(input, {
        name = "ListWebExperiences",
        input_schema = types.ListWebExperiencesInput,
        output_schema = types.ListWebExperiencesOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/experiences",
    }, options)
end

function Client:putFeedback(input, options)
    return self:invokeOperation(input, {
        name = "PutFeedback",
        input_schema = types.PutFeedbackInput,
        output_schema = types.PutFeedbackOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/conversations/{conversationId}/messages/{messageId}/feedback",
    }, options)
end

function Client:putGroup(input, options)
    return self:invokeOperation(input, {
        name = "PutGroup",
        input_schema = types.PutGroupInput,
        output_schema = types.PutGroupOutput,
        http_method = "PUT",
        http_path = "/applications/{applicationId}/indices/{indexId}/groups",
    }, options)
end

function Client:searchRelevantContent(input, options)
    return self:invokeOperation(input, {
        name = "SearchRelevantContent",
        input_schema = types.SearchRelevantContentInput,
        output_schema = types.SearchRelevantContentOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/relevant-content",
    }, options)
end

function Client:startDataSourceSyncJob(input, options)
    return self:invokeOperation(input, {
        name = "StartDataSourceSyncJob",
        input_schema = types.StartDataSourceSyncJobInput,
        output_schema = types.StartDataSourceSyncJobOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}/startsync",
    }, options)
end

function Client:stopDataSourceSyncJob(input, options)
    return self:invokeOperation(input, {
        name = "StopDataSourceSyncJob",
        input_schema = types.StopDataSourceSyncJobInput,
        output_schema = types.StopDataSourceSyncJobOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}/stopsync",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/v1/tags/{resourceARN}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/v1/tags/{resourceARN}",
    }, options)
end

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = types.UpdateApplicationInput,
        output_schema = types.UpdateApplicationOutput,
        http_method = "PUT",
        http_path = "/applications/{applicationId}",
    }, options)
end

function Client:updateChatControlsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChatControlsConfiguration",
        input_schema = types.UpdateChatControlsConfigurationInput,
        output_schema = types.UpdateChatControlsConfigurationOutput,
        http_method = "PATCH",
        http_path = "/applications/{applicationId}/chatcontrols",
    }, options)
end

function Client:updateChatResponseConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChatResponseConfiguration",
        input_schema = types.UpdateChatResponseConfigurationInput,
        output_schema = types.UpdateChatResponseConfigurationOutput,
        http_method = "PUT",
        http_path = "/applications/{applicationId}/chatresponseconfigurations/{chatResponseConfigurationId}",
    }, options)
end

function Client:updateDataAccessor(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataAccessor",
        input_schema = types.UpdateDataAccessorInput,
        output_schema = types.UpdateDataAccessorOutput,
        http_method = "PUT",
        http_path = "/applications/{applicationId}/dataaccessors/{dataAccessorId}",
    }, options)
end

function Client:updateDataSource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataSource",
        input_schema = types.UpdateDataSourceInput,
        output_schema = types.UpdateDataSourceOutput,
        http_method = "PUT",
        http_path = "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}",
    }, options)
end

function Client:updateIndex(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIndex",
        input_schema = types.UpdateIndexInput,
        output_schema = types.UpdateIndexOutput,
        http_method = "PUT",
        http_path = "/applications/{applicationId}/indices/{indexId}",
    }, options)
end

function Client:updatePlugin(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePlugin",
        input_schema = types.UpdatePluginInput,
        output_schema = types.UpdatePluginOutput,
        http_method = "PUT",
        http_path = "/applications/{applicationId}/plugins/{pluginId}",
    }, options)
end

function Client:updateRetriever(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRetriever",
        input_schema = types.UpdateRetrieverInput,
        output_schema = types.UpdateRetrieverOutput,
        http_method = "PUT",
        http_path = "/applications/{applicationId}/retrievers/{retrieverId}",
    }, options)
end

function Client:updateSubscription(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSubscription",
        input_schema = types.UpdateSubscriptionInput,
        output_schema = types.UpdateSubscriptionOutput,
        http_method = "PUT",
        http_path = "/applications/{applicationId}/subscriptions/{subscriptionId}",
    }, options)
end

function Client:updateUser(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUser",
        input_schema = types.UpdateUserInput,
        output_schema = types.UpdateUserOutput,
        http_method = "PUT",
        http_path = "/applications/{applicationId}/users/{userId}",
    }, options)
end

function Client:updateWebExperience(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWebExperience",
        input_schema = types.UpdateWebExperienceInput,
        output_schema = types.UpdateWebExperienceOutput,
        http_method = "PUT",
        http_path = "/applications/{applicationId}/experiences/{webExperienceId}",
    }, options)
end

return M
