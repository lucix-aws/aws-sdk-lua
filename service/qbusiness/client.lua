local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("qbusiness.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("qbusiness.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ExpertQ"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "qbusiness", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:associatePermission(input, options)
    return self:invokeOperation(input, {
        name = "AssociatePermission",
        input_schema = schemas.AssociatePermissionInput,
        output_schema = schemas.AssociatePermissionOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeleteDocument(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteDocument",
        input_schema = schemas.BatchDeleteDocumentInput,
        output_schema = schemas.BatchDeleteDocumentOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/indices/{indexId}/documents/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchPutDocument(input, options)
    return self:invokeOperation(input, {
        name = "BatchPutDocument",
        input_schema = schemas.BatchPutDocumentInput,
        output_schema = schemas.BatchPutDocumentOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/indices/{indexId}/documents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CancelSubscription",
        input_schema = schemas.CancelSubscriptionInput,
        output_schema = schemas.CancelSubscriptionOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/subscriptions/{subscriptionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:chatSync(input, options)
    return self:invokeOperation(input, {
        name = "ChatSync",
        input_schema = schemas.ChatSyncInput,
        output_schema = schemas.ChatSyncOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/conversations?sync",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:checkDocumentAccess(input, options)
    return self:invokeOperation(input, {
        name = "CheckDocumentAccess",
        input_schema = schemas.CheckDocumentAccessInput,
        output_schema = schemas.CheckDocumentAccessOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/index/{indexId}/users/{userId}/documents/{documentId}/check-document-access",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAnonymousWebExperienceUrl(input, options)
    return self:invokeOperation(input, {
        name = "CreateAnonymousWebExperienceUrl",
        input_schema = schemas.CreateAnonymousWebExperienceUrlInput,
        output_schema = schemas.CreateAnonymousWebExperienceUrlOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/experiences/{webExperienceId}/anonymous-url",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplication",
        input_schema = schemas.CreateApplicationInput,
        output_schema = schemas.CreateApplicationOutput,
        http_method = "POST",
        http_path = "/applications",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createChatResponseConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateChatResponseConfiguration",
        input_schema = schemas.CreateChatResponseConfigurationInput,
        output_schema = schemas.CreateChatResponseConfigurationOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/chatresponseconfigurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataAccessor(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataAccessor",
        input_schema = schemas.CreateDataAccessorInput,
        output_schema = schemas.CreateDataAccessorOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/dataaccessors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataSource(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataSource",
        input_schema = schemas.CreateDataSourceInput,
        output_schema = schemas.CreateDataSourceOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/indices/{indexId}/datasources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIndex(input, options)
    return self:invokeOperation(input, {
        name = "CreateIndex",
        input_schema = schemas.CreateIndexInput,
        output_schema = schemas.CreateIndexOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/indices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPlugin(input, options)
    return self:invokeOperation(input, {
        name = "CreatePlugin",
        input_schema = schemas.CreatePluginInput,
        output_schema = schemas.CreatePluginOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/plugins",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRetriever(input, options)
    return self:invokeOperation(input, {
        name = "CreateRetriever",
        input_schema = schemas.CreateRetrieverInput,
        output_schema = schemas.CreateRetrieverOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/retrievers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateSubscription",
        input_schema = schemas.CreateSubscriptionInput,
        output_schema = schemas.CreateSubscriptionOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/subscriptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUser(input, options)
    return self:invokeOperation(input, {
        name = "CreateUser",
        input_schema = schemas.CreateUserInput,
        output_schema = schemas.CreateUserOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/users",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWebExperience(input, options)
    return self:invokeOperation(input, {
        name = "CreateWebExperience",
        input_schema = schemas.CreateWebExperienceInput,
        output_schema = schemas.CreateWebExperienceOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/experiences",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplication",
        input_schema = schemas.DeleteApplicationInput,
        output_schema = schemas.DeleteApplicationOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAttachment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAttachment",
        input_schema = schemas.DeleteAttachmentInput,
        output_schema = schemas.DeleteAttachmentOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/conversations/{conversationId}/attachments/{attachmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteChatControlsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChatControlsConfiguration",
        input_schema = schemas.DeleteChatControlsConfigurationInput,
        output_schema = schemas.DeleteChatControlsConfigurationOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/chatcontrols",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteChatResponseConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChatResponseConfiguration",
        input_schema = schemas.DeleteChatResponseConfigurationInput,
        output_schema = schemas.DeleteChatResponseConfigurationOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/chatresponseconfigurations/{chatResponseConfigurationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConversation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConversation",
        input_schema = schemas.DeleteConversationInput,
        output_schema = schemas.DeleteConversationOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/conversations/{conversationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataAccessor(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataAccessor",
        input_schema = schemas.DeleteDataAccessorInput,
        output_schema = schemas.DeleteDataAccessorOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/dataaccessors/{dataAccessorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataSource",
        input_schema = schemas.DeleteDataSourceInput,
        output_schema = schemas.DeleteDataSourceOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGroup",
        input_schema = schemas.DeleteGroupInput,
        output_schema = schemas.DeleteGroupOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/indices/{indexId}/groups/{groupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIndex(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIndex",
        input_schema = schemas.DeleteIndexInput,
        output_schema = schemas.DeleteIndexOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/indices/{indexId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePlugin(input, options)
    return self:invokeOperation(input, {
        name = "DeletePlugin",
        input_schema = schemas.DeletePluginInput,
        output_schema = schemas.DeletePluginOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/plugins/{pluginId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRetriever(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRetriever",
        input_schema = schemas.DeleteRetrieverInput,
        output_schema = schemas.DeleteRetrieverOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/retrievers/{retrieverId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUser(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUser",
        input_schema = schemas.DeleteUserInput,
        output_schema = schemas.DeleteUserOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/users/{userId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWebExperience(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWebExperience",
        input_schema = schemas.DeleteWebExperienceInput,
        output_schema = schemas.DeleteWebExperienceOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/experiences/{webExperienceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociatePermission(input, options)
    return self:invokeOperation(input, {
        name = "DisassociatePermission",
        input_schema = schemas.DisassociatePermissionInput,
        output_schema = schemas.DisassociatePermissionOutput,
        http_method = "DELETE",
        http_path = "/applications/{applicationId}/policy/{statementId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApplication(input, options)
    return self:invokeOperation(input, {
        name = "GetApplication",
        input_schema = schemas.GetApplicationInput,
        output_schema = schemas.GetApplicationOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getChatControlsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetChatControlsConfiguration",
        input_schema = schemas.GetChatControlsConfigurationInput,
        output_schema = schemas.GetChatControlsConfigurationOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/chatcontrols",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getChatResponseConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetChatResponseConfiguration",
        input_schema = schemas.GetChatResponseConfigurationInput,
        output_schema = schemas.GetChatResponseConfigurationOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/chatresponseconfigurations/{chatResponseConfigurationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataAccessor(input, options)
    return self:invokeOperation(input, {
        name = "GetDataAccessor",
        input_schema = schemas.GetDataAccessorInput,
        output_schema = schemas.GetDataAccessorOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/dataaccessors/{dataAccessorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataSource(input, options)
    return self:invokeOperation(input, {
        name = "GetDataSource",
        input_schema = schemas.GetDataSourceInput,
        output_schema = schemas.GetDataSourceOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDocumentContent(input, options)
    return self:invokeOperation(input, {
        name = "GetDocumentContent",
        input_schema = schemas.GetDocumentContentInput,
        output_schema = schemas.GetDocumentContentOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/index/{indexId}/documents/{documentId}/content",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetGroup",
        input_schema = schemas.GetGroupInput,
        output_schema = schemas.GetGroupOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/indices/{indexId}/groups/{groupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIndex(input, options)
    return self:invokeOperation(input, {
        name = "GetIndex",
        input_schema = schemas.GetIndexInput,
        output_schema = schemas.GetIndexOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/indices/{indexId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMedia(input, options)
    return self:invokeOperation(input, {
        name = "GetMedia",
        input_schema = schemas.GetMediaInput,
        output_schema = schemas.GetMediaOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/conversations/{conversationId}/messages/{messageId}/media/{mediaId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPlugin(input, options)
    return self:invokeOperation(input, {
        name = "GetPlugin",
        input_schema = schemas.GetPluginInput,
        output_schema = schemas.GetPluginOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/plugins/{pluginId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetPolicy",
        input_schema = schemas.GetPolicyInput,
        output_schema = schemas.GetPolicyOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRetriever(input, options)
    return self:invokeOperation(input, {
        name = "GetRetriever",
        input_schema = schemas.GetRetrieverInput,
        output_schema = schemas.GetRetrieverOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/retrievers/{retrieverId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUser(input, options)
    return self:invokeOperation(input, {
        name = "GetUser",
        input_schema = schemas.GetUserInput,
        output_schema = schemas.GetUserOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/users/{userId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWebExperience(input, options)
    return self:invokeOperation(input, {
        name = "GetWebExperience",
        input_schema = schemas.GetWebExperienceInput,
        output_schema = schemas.GetWebExperienceOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/experiences/{webExperienceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListApplications",
        input_schema = schemas.ListApplicationsInput,
        output_schema = schemas.ListApplicationsOutput,
        http_method = "GET",
        http_path = "/applications",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAttachments(input, options)
    return self:invokeOperation(input, {
        name = "ListAttachments",
        input_schema = schemas.ListAttachmentsInput,
        output_schema = schemas.ListAttachmentsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/attachments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChatResponseConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListChatResponseConfigurations",
        input_schema = schemas.ListChatResponseConfigurationsInput,
        output_schema = schemas.ListChatResponseConfigurationsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/chatresponseconfigurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConversations(input, options)
    return self:invokeOperation(input, {
        name = "ListConversations",
        input_schema = schemas.ListConversationsInput,
        output_schema = schemas.ListConversationsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/conversations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataAccessors(input, options)
    return self:invokeOperation(input, {
        name = "ListDataAccessors",
        input_schema = schemas.ListDataAccessorsInput,
        output_schema = schemas.ListDataAccessorsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/dataaccessors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataSources(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSources",
        input_schema = schemas.ListDataSourcesInput,
        output_schema = schemas.ListDataSourcesOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/indices/{indexId}/datasources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataSourceSyncJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSourceSyncJobs",
        input_schema = schemas.ListDataSourceSyncJobsInput,
        output_schema = schemas.ListDataSourceSyncJobsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}/syncjobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDocuments(input, options)
    return self:invokeOperation(input, {
        name = "ListDocuments",
        input_schema = schemas.ListDocumentsInput,
        output_schema = schemas.ListDocumentsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/index/{indexId}/documents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListGroups",
        input_schema = schemas.ListGroupsInput,
        output_schema = schemas.ListGroupsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/indices/{indexId}/groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIndices(input, options)
    return self:invokeOperation(input, {
        name = "ListIndices",
        input_schema = schemas.ListIndicesInput,
        output_schema = schemas.ListIndicesOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/indices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMessages(input, options)
    return self:invokeOperation(input, {
        name = "ListMessages",
        input_schema = schemas.ListMessagesInput,
        output_schema = schemas.ListMessagesOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/conversations/{conversationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPluginActions(input, options)
    return self:invokeOperation(input, {
        name = "ListPluginActions",
        input_schema = schemas.ListPluginActionsInput,
        output_schema = schemas.ListPluginActionsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/plugins/{pluginId}/actions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPlugins(input, options)
    return self:invokeOperation(input, {
        name = "ListPlugins",
        input_schema = schemas.ListPluginsInput,
        output_schema = schemas.ListPluginsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/plugins",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPluginTypeActions(input, options)
    return self:invokeOperation(input, {
        name = "ListPluginTypeActions",
        input_schema = schemas.ListPluginTypeActionsInput,
        output_schema = schemas.ListPluginTypeActionsOutput,
        http_method = "GET",
        http_path = "/pluginTypes/{pluginType}/actions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPluginTypeMetadata(input, options)
    return self:invokeOperation(input, {
        name = "ListPluginTypeMetadata",
        input_schema = schemas.ListPluginTypeMetadataInput,
        output_schema = schemas.ListPluginTypeMetadataOutput,
        http_method = "GET",
        http_path = "/pluginTypeMetadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRetrievers(input, options)
    return self:invokeOperation(input, {
        name = "ListRetrievers",
        input_schema = schemas.ListRetrieversInput,
        output_schema = schemas.ListRetrieversOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/retrievers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "ListSubscriptions",
        input_schema = schemas.ListSubscriptionsInput,
        output_schema = schemas.ListSubscriptionsOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/subscriptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/v1/tags/{resourceARN}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWebExperiences(input, options)
    return self:invokeOperation(input, {
        name = "ListWebExperiences",
        input_schema = schemas.ListWebExperiencesInput,
        output_schema = schemas.ListWebExperiencesOutput,
        http_method = "GET",
        http_path = "/applications/{applicationId}/experiences",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putFeedback(input, options)
    return self:invokeOperation(input, {
        name = "PutFeedback",
        input_schema = schemas.PutFeedbackInput,
        output_schema = schemas.PutFeedbackOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/conversations/{conversationId}/messages/{messageId}/feedback",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putGroup(input, options)
    return self:invokeOperation(input, {
        name = "PutGroup",
        input_schema = schemas.PutGroupInput,
        output_schema = schemas.PutGroupOutput,
        http_method = "PUT",
        http_path = "/applications/{applicationId}/indices/{indexId}/groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchRelevantContent(input, options)
    return self:invokeOperation(input, {
        name = "SearchRelevantContent",
        input_schema = schemas.SearchRelevantContentInput,
        output_schema = schemas.SearchRelevantContentOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/relevant-content",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDataSourceSyncJob(input, options)
    return self:invokeOperation(input, {
        name = "StartDataSourceSyncJob",
        input_schema = schemas.StartDataSourceSyncJobInput,
        output_schema = schemas.StartDataSourceSyncJobOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}/startsync",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopDataSourceSyncJob(input, options)
    return self:invokeOperation(input, {
        name = "StopDataSourceSyncJob",
        input_schema = schemas.StopDataSourceSyncJobInput,
        output_schema = schemas.StopDataSourceSyncJobOutput,
        http_method = "POST",
        http_path = "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}/stopsync",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/v1/tags/{resourceARN}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/v1/tags/{resourceARN}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = schemas.UpdateApplicationInput,
        output_schema = schemas.UpdateApplicationOutput,
        http_method = "PUT",
        http_path = "/applications/{applicationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateChatControlsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChatControlsConfiguration",
        input_schema = schemas.UpdateChatControlsConfigurationInput,
        output_schema = schemas.UpdateChatControlsConfigurationOutput,
        http_method = "PATCH",
        http_path = "/applications/{applicationId}/chatcontrols",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateChatResponseConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChatResponseConfiguration",
        input_schema = schemas.UpdateChatResponseConfigurationInput,
        output_schema = schemas.UpdateChatResponseConfigurationOutput,
        http_method = "PUT",
        http_path = "/applications/{applicationId}/chatresponseconfigurations/{chatResponseConfigurationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataAccessor(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataAccessor",
        input_schema = schemas.UpdateDataAccessorInput,
        output_schema = schemas.UpdateDataAccessorOutput,
        http_method = "PUT",
        http_path = "/applications/{applicationId}/dataaccessors/{dataAccessorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataSource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataSource",
        input_schema = schemas.UpdateDataSourceInput,
        output_schema = schemas.UpdateDataSourceOutput,
        http_method = "PUT",
        http_path = "/applications/{applicationId}/indices/{indexId}/datasources/{dataSourceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIndex(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIndex",
        input_schema = schemas.UpdateIndexInput,
        output_schema = schemas.UpdateIndexOutput,
        http_method = "PUT",
        http_path = "/applications/{applicationId}/indices/{indexId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePlugin(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePlugin",
        input_schema = schemas.UpdatePluginInput,
        output_schema = schemas.UpdatePluginOutput,
        http_method = "PUT",
        http_path = "/applications/{applicationId}/plugins/{pluginId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRetriever(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRetriever",
        input_schema = schemas.UpdateRetrieverInput,
        output_schema = schemas.UpdateRetrieverOutput,
        http_method = "PUT",
        http_path = "/applications/{applicationId}/retrievers/{retrieverId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSubscription(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSubscription",
        input_schema = schemas.UpdateSubscriptionInput,
        output_schema = schemas.UpdateSubscriptionOutput,
        http_method = "PUT",
        http_path = "/applications/{applicationId}/subscriptions/{subscriptionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUser(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUser",
        input_schema = schemas.UpdateUserInput,
        output_schema = schemas.UpdateUserOutput,
        http_method = "PUT",
        http_path = "/applications/{applicationId}/users/{userId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWebExperience(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWebExperience",
        input_schema = schemas.UpdateWebExperienceInput,
        output_schema = schemas.UpdateWebExperienceOutput,
        http_method = "PUT",
        http_path = "/applications/{applicationId}/experiences/{webExperienceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
