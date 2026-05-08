



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("qbusiness.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("qbusiness.schemas")
local traits = require("smithy.traits")
local types = require("qbusiness.types")
local sdk_defaults = require("aws.sdk_defaults")

























































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "ExpertQ"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "qbusiness", signing_region = c.region } }
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

function C:associatePermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociatePermission, input, options)
end

function C:batchDeleteDocument(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteDocument, input, options)
end

function C:batchPutDocument(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchPutDocument, input, options)
end

function C:cancelSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelSubscription, input, options)
end

function C:chat(input, options)
   return self:invokeOperation(schemas.Service, schemas.Chat, input, options)
end

function C:chatSync(input, options)
   return self:invokeOperation(schemas.Service, schemas.ChatSync, input, options)
end

function C:checkDocumentAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.CheckDocumentAccess, input, options)
end

function C:createAnonymousWebExperienceUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAnonymousWebExperienceUrl, input, options)
end

function C:createApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApplication, input, options)
end

function C:createChatResponseConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateChatResponseConfiguration, input, options)
end

function C:createDataAccessor(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataAccessor, input, options)
end

function C:createDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataSource, input, options)
end

function C:createIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIndex, input, options)
end

function C:createPlugin(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePlugin, input, options)
end

function C:createRetriever(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRetriever, input, options)
end

function C:createSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSubscription, input, options)
end

function C:createUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUser, input, options)
end

function C:createWebExperience(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWebExperience, input, options)
end

function C:deleteApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplication, input, options)
end

function C:deleteAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAttachment, input, options)
end

function C:deleteChatControlsConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteChatControlsConfiguration, input, options)
end

function C:deleteChatResponseConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteChatResponseConfiguration, input, options)
end

function C:deleteConversation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConversation, input, options)
end

function C:deleteDataAccessor(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataAccessor, input, options)
end

function C:deleteDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataSource, input, options)
end

function C:deleteGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGroup, input, options)
end

function C:deleteIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIndex, input, options)
end

function C:deletePlugin(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePlugin, input, options)
end

function C:deleteRetriever(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRetriever, input, options)
end

function C:deleteUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUser, input, options)
end

function C:deleteWebExperience(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWebExperience, input, options)
end

function C:disassociatePermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociatePermission, input, options)
end

function C:getApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApplication, input, options)
end

function C:getChatControlsConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetChatControlsConfiguration, input, options)
end

function C:getChatResponseConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetChatResponseConfiguration, input, options)
end

function C:getDataAccessor(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataAccessor, input, options)
end

function C:getDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataSource, input, options)
end

function C:getDocumentContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDocumentContent, input, options)
end

function C:getGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGroup, input, options)
end

function C:getIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIndex, input, options)
end

function C:getMedia(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMedia, input, options)
end

function C:getPlugin(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPlugin, input, options)
end

function C:getPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPolicy, input, options)
end

function C:getRetriever(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRetriever, input, options)
end

function C:getUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUser, input, options)
end

function C:getWebExperience(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWebExperience, input, options)
end

function C:listApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplications, input, options)
end

function C:listAttachments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAttachments, input, options)
end

function C:listChatResponseConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChatResponseConfigurations, input, options)
end

function C:listConversations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConversations, input, options)
end

function C:listDataAccessors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataAccessors, input, options)
end

function C:listDataSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataSources, input, options)
end

function C:listDataSourceSyncJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataSourceSyncJobs, input, options)
end

function C:listDocuments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDocuments, input, options)
end

function C:listGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroups, input, options)
end

function C:listIndices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIndices, input, options)
end

function C:listMessages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMessages, input, options)
end

function C:listPluginActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPluginActions, input, options)
end

function C:listPlugins(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPlugins, input, options)
end

function C:listPluginTypeActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPluginTypeActions, input, options)
end

function C:listPluginTypeMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPluginTypeMetadata, input, options)
end

function C:listRetrievers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRetrievers, input, options)
end

function C:listSubscriptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSubscriptions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listWebExperiences(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWebExperiences, input, options)
end

function C:putFeedback(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutFeedback, input, options)
end

function C:putGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutGroup, input, options)
end

function C:searchRelevantContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchRelevantContent, input, options)
end

function C:startDataSourceSyncJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDataSourceSyncJob, input, options)
end

function C:stopDataSourceSyncJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopDataSourceSyncJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApplication, input, options)
end

function C:updateChatControlsConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateChatControlsConfiguration, input, options)
end

function C:updateChatResponseConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateChatResponseConfiguration, input, options)
end

function C:updateDataAccessor(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataAccessor, input, options)
end

function C:updateDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataSource, input, options)
end

function C:updateIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIndex, input, options)
end

function C:updatePlugin(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePlugin, input, options)
end

function C:updateRetriever(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRetriever, input, options)
end

function C:updateSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSubscription, input, options)
end

function C:updateUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUser, input, options)
end

function C:updateWebExperience(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWebExperience, input, options)
end

return M
