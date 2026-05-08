



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("connect.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("connect.schemas")
local traits = require("smithy.traits")
local types = require("connect.types")
local sdk_defaults = require("aws.sdk_defaults")
























































































































































































































































































































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonConnectService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "connect", signing_region = c.region } }
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

function C:activateEvaluationForm(input, options)
   return self:invokeOperation(schemas.Service, schemas.ActivateEvaluationForm, input, options)
end

function C:associateAnalyticsDataSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateAnalyticsDataSet, input, options)
end

function C:associateApprovedOrigin(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateApprovedOrigin, input, options)
end

function C:associateBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateBot, input, options)
end

function C:associateContactWithUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateContactWithUser, input, options)
end

function C:associateDefaultVocabulary(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateDefaultVocabulary, input, options)
end

function C:associateEmailAddressAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateEmailAddressAlias, input, options)
end

function C:associateFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateFlow, input, options)
end

function C:associateHoursOfOperations(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateHoursOfOperations, input, options)
end

function C:associateInstanceStorageConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateInstanceStorageConfig, input, options)
end

function C:associateLambdaFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateLambdaFunction, input, options)
end

function C:associateLexBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateLexBot, input, options)
end

function C:associatePhoneNumberContactFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociatePhoneNumberContactFlow, input, options)
end

function C:associateQueueEmailAddresses(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateQueueEmailAddresses, input, options)
end

function C:associateQueueQuickConnects(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateQueueQuickConnects, input, options)
end

function C:associateRoutingProfileQueues(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateRoutingProfileQueues, input, options)
end

function C:associateSecurityKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateSecurityKey, input, options)
end

function C:associateSecurityProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateSecurityProfiles, input, options)
end

function C:associateTrafficDistributionGroupUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateTrafficDistributionGroupUser, input, options)
end

function C:associateUserProficiencies(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateUserProficiencies, input, options)
end

function C:associateWorkspace(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateWorkspace, input, options)
end

function C:batchAssociateAnalyticsDataSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchAssociateAnalyticsDataSet, input, options)
end

function C:batchCreateDataTableValue(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchCreateDataTableValue, input, options)
end

function C:batchDeleteDataTableValue(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteDataTableValue, input, options)
end

function C:batchDescribeDataTableValue(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDescribeDataTableValue, input, options)
end

function C:batchDisassociateAnalyticsDataSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDisassociateAnalyticsDataSet, input, options)
end

function C:batchGetAttachedFileMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetAttachedFileMetadata, input, options)
end

function C:batchGetFlowAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetFlowAssociation, input, options)
end

function C:batchPutContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchPutContact, input, options)
end

function C:batchUpdateDataTableValue(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateDataTableValue, input, options)
end

function C:claimPhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.ClaimPhoneNumber, input, options)
end

function C:completeAttachedFileUpload(input, options)
   return self:invokeOperation(schemas.Service, schemas.CompleteAttachedFileUpload, input, options)
end

function C:createAgentStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAgentStatus, input, options)
end

function C:createContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateContact, input, options)
end

function C:createContactFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateContactFlow, input, options)
end

function C:createContactFlowModule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateContactFlowModule, input, options)
end

function C:createContactFlowModuleAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateContactFlowModuleAlias, input, options)
end

function C:createContactFlowModuleVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateContactFlowModuleVersion, input, options)
end

function C:createContactFlowVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateContactFlowVersion, input, options)
end

function C:createDataTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataTable, input, options)
end

function C:createDataTableAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataTableAttribute, input, options)
end

function C:createEmailAddress(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEmailAddress, input, options)
end

function C:createEvaluationForm(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEvaluationForm, input, options)
end

function C:createHoursOfOperation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateHoursOfOperation, input, options)
end

function C:createHoursOfOperationOverride(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateHoursOfOperationOverride, input, options)
end

function C:createInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInstance, input, options)
end

function C:createIntegrationAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIntegrationAssociation, input, options)
end

function C:createNotification(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNotification, input, options)
end

function C:createParticipant(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateParticipant, input, options)
end

function C:createPersistentContactAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePersistentContactAssociation, input, options)
end

function C:createPredefinedAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePredefinedAttribute, input, options)
end

function C:createPrompt(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePrompt, input, options)
end

function C:createPushNotificationRegistration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePushNotificationRegistration, input, options)
end

function C:createQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateQueue, input, options)
end

function C:createQuickConnect(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateQuickConnect, input, options)
end

function C:createRoutingProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRoutingProfile, input, options)
end

function C:createRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRule, input, options)
end

function C:createSecurityProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSecurityProfile, input, options)
end

function C:createTaskTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTaskTemplate, input, options)
end

function C:createTestCase(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTestCase, input, options)
end

function C:createTrafficDistributionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrafficDistributionGroup, input, options)
end

function C:createUseCase(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUseCase, input, options)
end

function C:createUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUser, input, options)
end

function C:createUserHierarchyGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUserHierarchyGroup, input, options)
end

function C:createView(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateView, input, options)
end

function C:createViewVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateViewVersion, input, options)
end

function C:createVocabulary(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVocabulary, input, options)
end

function C:createWorkspace(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkspace, input, options)
end

function C:createWorkspacePage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkspacePage, input, options)
end

function C:deactivateEvaluationForm(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeactivateEvaluationForm, input, options)
end

function C:deleteAttachedFile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAttachedFile, input, options)
end

function C:deleteContactEvaluation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteContactEvaluation, input, options)
end

function C:deleteContactFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteContactFlow, input, options)
end

function C:deleteContactFlowModule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteContactFlowModule, input, options)
end

function C:deleteContactFlowModuleAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteContactFlowModuleAlias, input, options)
end

function C:deleteContactFlowModuleVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteContactFlowModuleVersion, input, options)
end

function C:deleteContactFlowVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteContactFlowVersion, input, options)
end

function C:deleteDataTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataTable, input, options)
end

function C:deleteDataTableAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataTableAttribute, input, options)
end

function C:deleteEmailAddress(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEmailAddress, input, options)
end

function C:deleteEvaluationForm(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEvaluationForm, input, options)
end

function C:deleteHoursOfOperation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteHoursOfOperation, input, options)
end

function C:deleteHoursOfOperationOverride(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteHoursOfOperationOverride, input, options)
end

function C:deleteInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInstance, input, options)
end

function C:deleteIntegrationAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIntegrationAssociation, input, options)
end

function C:deleteNotification(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNotification, input, options)
end

function C:deletePredefinedAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePredefinedAttribute, input, options)
end

function C:deletePrompt(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePrompt, input, options)
end

function C:deletePushNotificationRegistration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePushNotificationRegistration, input, options)
end

function C:deleteQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteQueue, input, options)
end

function C:deleteQuickConnect(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteQuickConnect, input, options)
end

function C:deleteRoutingProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRoutingProfile, input, options)
end

function C:deleteRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRule, input, options)
end

function C:deleteSecurityProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSecurityProfile, input, options)
end

function C:deleteTaskTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTaskTemplate, input, options)
end

function C:deleteTestCase(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTestCase, input, options)
end

function C:deleteTrafficDistributionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTrafficDistributionGroup, input, options)
end

function C:deleteUseCase(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUseCase, input, options)
end

function C:deleteUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUser, input, options)
end

function C:deleteUserHierarchyGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUserHierarchyGroup, input, options)
end

function C:deleteView(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteView, input, options)
end

function C:deleteViewVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteViewVersion, input, options)
end

function C:deleteVocabulary(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVocabulary, input, options)
end

function C:deleteWorkspace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkspace, input, options)
end

function C:deleteWorkspaceMedia(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkspaceMedia, input, options)
end

function C:deleteWorkspacePage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkspacePage, input, options)
end

function C:describeAgentStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAgentStatus, input, options)
end

function C:describeAttachedFilesConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAttachedFilesConfiguration, input, options)
end

function C:describeAuthenticationProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAuthenticationProfile, input, options)
end

function C:describeContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeContact, input, options)
end

function C:describeContactEvaluation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeContactEvaluation, input, options)
end

function C:describeContactFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeContactFlow, input, options)
end

function C:describeContactFlowModule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeContactFlowModule, input, options)
end

function C:describeContactFlowModuleAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeContactFlowModuleAlias, input, options)
end

function C:describeDataTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataTable, input, options)
end

function C:describeDataTableAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataTableAttribute, input, options)
end

function C:describeEmailAddress(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEmailAddress, input, options)
end

function C:describeEvaluationForm(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEvaluationForm, input, options)
end

function C:describeHoursOfOperation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeHoursOfOperation, input, options)
end

function C:describeHoursOfOperationOverride(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeHoursOfOperationOverride, input, options)
end

function C:describeInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstance, input, options)
end

function C:describeInstanceAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstanceAttribute, input, options)
end

function C:describeInstanceStorageConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstanceStorageConfig, input, options)
end

function C:describeNotification(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNotification, input, options)
end

function C:describePhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePhoneNumber, input, options)
end

function C:describePredefinedAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePredefinedAttribute, input, options)
end

function C:describePrompt(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePrompt, input, options)
end

function C:describeQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeQueue, input, options)
end

function C:describeQuickConnect(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeQuickConnect, input, options)
end

function C:describeRoutingProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRoutingProfile, input, options)
end

function C:describeRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRule, input, options)
end

function C:describeSecurityProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSecurityProfile, input, options)
end

function C:describeTestCase(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTestCase, input, options)
end

function C:describeTrafficDistributionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTrafficDistributionGroup, input, options)
end

function C:describeUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUser, input, options)
end

function C:describeUserHierarchyGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUserHierarchyGroup, input, options)
end

function C:describeUserHierarchyStructure(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUserHierarchyStructure, input, options)
end

function C:describeView(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeView, input, options)
end

function C:describeVocabulary(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVocabulary, input, options)
end

function C:describeWorkspace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkspace, input, options)
end

function C:disassociateAnalyticsDataSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateAnalyticsDataSet, input, options)
end

function C:disassociateApprovedOrigin(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateApprovedOrigin, input, options)
end

function C:disassociateBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateBot, input, options)
end

function C:disassociateEmailAddressAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateEmailAddressAlias, input, options)
end

function C:disassociateFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateFlow, input, options)
end

function C:disassociateHoursOfOperations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateHoursOfOperations, input, options)
end

function C:disassociateInstanceStorageConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateInstanceStorageConfig, input, options)
end

function C:disassociateLambdaFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateLambdaFunction, input, options)
end

function C:disassociateLexBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateLexBot, input, options)
end

function C:disassociatePhoneNumberContactFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociatePhoneNumberContactFlow, input, options)
end

function C:disassociateQueueEmailAddresses(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateQueueEmailAddresses, input, options)
end

function C:disassociateQueueQuickConnects(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateQueueQuickConnects, input, options)
end

function C:disassociateRoutingProfileQueues(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateRoutingProfileQueues, input, options)
end

function C:disassociateSecurityKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateSecurityKey, input, options)
end

function C:disassociateSecurityProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateSecurityProfiles, input, options)
end

function C:disassociateTrafficDistributionGroupUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateTrafficDistributionGroupUser, input, options)
end

function C:disassociateUserProficiencies(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateUserProficiencies, input, options)
end

function C:disassociateWorkspace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateWorkspace, input, options)
end

function C:dismissUserContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.DismissUserContact, input, options)
end

function C:evaluateDataTableValues(input, options)
   return self:invokeOperation(schemas.Service, schemas.EvaluateDataTableValues, input, options)
end

function C:getAttachedFile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAttachedFile, input, options)
end

function C:getContactAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContactAttributes, input, options)
end

function C:getContactMetrics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContactMetrics, input, options)
end

function C:getCurrentMetricData(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCurrentMetricData, input, options)
end

function C:getCurrentUserData(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCurrentUserData, input, options)
end

function C:getEffectiveHoursOfOperations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEffectiveHoursOfOperations, input, options)
end

function C:getFederationToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFederationToken, input, options)
end

function C:getFlowAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFlowAssociation, input, options)
end

function C:getMetricData(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMetricData, input, options)
end

function C:getMetricDataV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMetricDataV2, input, options)
end

function C:getPromptFile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPromptFile, input, options)
end

function C:getTaskTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTaskTemplate, input, options)
end

function C:getTestCaseExecutionSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTestCaseExecutionSummary, input, options)
end

function C:getTrafficDistribution(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTrafficDistribution, input, options)
end

function C:importPhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportPhoneNumber, input, options)
end

function C:importWorkspaceMedia(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportWorkspaceMedia, input, options)
end

function C:listAgentStatuses(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAgentStatuses, input, options)
end

function C:listAnalyticsDataAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAnalyticsDataAssociations, input, options)
end

function C:listAnalyticsDataLakeDataSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAnalyticsDataLakeDataSets, input, options)
end

function C:listApprovedOrigins(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApprovedOrigins, input, options)
end

function C:listAssociatedContacts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssociatedContacts, input, options)
end

function C:listAttachedFilesConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAttachedFilesConfigurations, input, options)
end

function C:listAuthenticationProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAuthenticationProfiles, input, options)
end

function C:listBots(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBots, input, options)
end

function C:listChildHoursOfOperations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChildHoursOfOperations, input, options)
end

function C:listContactEvaluations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListContactEvaluations, input, options)
end

function C:listContactFlowModuleAliases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListContactFlowModuleAliases, input, options)
end

function C:listContactFlowModules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListContactFlowModules, input, options)
end

function C:listContactFlowModuleVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListContactFlowModuleVersions, input, options)
end

function C:listContactFlows(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListContactFlows, input, options)
end

function C:listContactFlowVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListContactFlowVersions, input, options)
end

function C:listContactReferences(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListContactReferences, input, options)
end

function C:listDataTableAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataTableAttributes, input, options)
end

function C:listDataTablePrimaryValues(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataTablePrimaryValues, input, options)
end

function C:listDataTables(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataTables, input, options)
end

function C:listDataTableValues(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataTableValues, input, options)
end

function C:listDefaultVocabularies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDefaultVocabularies, input, options)
end

function C:listEntitySecurityProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEntitySecurityProfiles, input, options)
end

function C:listEvaluationForms(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEvaluationForms, input, options)
end

function C:listEvaluationFormVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEvaluationFormVersions, input, options)
end

function C:listFlowAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFlowAssociations, input, options)
end

function C:listHoursOfOperationOverrides(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHoursOfOperationOverrides, input, options)
end

function C:listHoursOfOperations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHoursOfOperations, input, options)
end

function C:listInstanceAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInstanceAttributes, input, options)
end

function C:listInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInstances, input, options)
end

function C:listInstanceStorageConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInstanceStorageConfigs, input, options)
end

function C:listIntegrationAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIntegrationAssociations, input, options)
end

function C:listLambdaFunctions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLambdaFunctions, input, options)
end

function C:listLexBots(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLexBots, input, options)
end

function C:listNotifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNotifications, input, options)
end

function C:listPhoneNumbers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPhoneNumbers, input, options)
end

function C:listPhoneNumbersV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPhoneNumbersV2, input, options)
end

function C:listPredefinedAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPredefinedAttributes, input, options)
end

function C:listPrompts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPrompts, input, options)
end

function C:listQueueEmailAddresses(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQueueEmailAddresses, input, options)
end

function C:listQueueQuickConnects(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQueueQuickConnects, input, options)
end

function C:listQueues(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQueues, input, options)
end

function C:listQuickConnects(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQuickConnects, input, options)
end

function C:listRealtimeContactAnalysisSegmentsV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRealtimeContactAnalysisSegmentsV2, input, options)
end

function C:listRoutingProfileManualAssignmentQueues(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRoutingProfileManualAssignmentQueues, input, options)
end

function C:listRoutingProfileQueues(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRoutingProfileQueues, input, options)
end

function C:listRoutingProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRoutingProfiles, input, options)
end

function C:listRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRules, input, options)
end

function C:listSecurityKeys(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSecurityKeys, input, options)
end

function C:listSecurityProfileApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSecurityProfileApplications, input, options)
end

function C:listSecurityProfileFlowModules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSecurityProfileFlowModules, input, options)
end

function C:listSecurityProfilePermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSecurityProfilePermissions, input, options)
end

function C:listSecurityProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSecurityProfiles, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTaskTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTaskTemplates, input, options)
end

function C:listTestCaseExecutionRecords(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTestCaseExecutionRecords, input, options)
end

function C:listTestCaseExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTestCaseExecutions, input, options)
end

function C:listTestCases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTestCases, input, options)
end

function C:listTrafficDistributionGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrafficDistributionGroups, input, options)
end

function C:listTrafficDistributionGroupUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrafficDistributionGroupUsers, input, options)
end

function C:listUseCases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUseCases, input, options)
end

function C:listUserHierarchyGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUserHierarchyGroups, input, options)
end

function C:listUserNotifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUserNotifications, input, options)
end

function C:listUserProficiencies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUserProficiencies, input, options)
end

function C:listUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUsers, input, options)
end

function C:listViews(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListViews, input, options)
end

function C:listViewVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListViewVersions, input, options)
end

function C:listWorkspaceMedia(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkspaceMedia, input, options)
end

function C:listWorkspacePages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkspacePages, input, options)
end

function C:listWorkspaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkspaces, input, options)
end

function C:monitorContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.MonitorContact, input, options)
end

function C:pauseContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.PauseContact, input, options)
end

function C:putUserStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutUserStatus, input, options)
end

function C:releasePhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReleasePhoneNumber, input, options)
end

function C:replicateInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReplicateInstance, input, options)
end

function C:resumeContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResumeContact, input, options)
end

function C:resumeContactRecording(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResumeContactRecording, input, options)
end

function C:searchAgentStatuses(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchAgentStatuses, input, options)
end

function C:searchAvailablePhoneNumbers(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchAvailablePhoneNumbers, input, options)
end

function C:searchContactEvaluations(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchContactEvaluations, input, options)
end

function C:searchContactFlowModules(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchContactFlowModules, input, options)
end

function C:searchContactFlows(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchContactFlows, input, options)
end

function C:searchContacts(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchContacts, input, options)
end

function C:searchDataTables(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchDataTables, input, options)
end

function C:searchEmailAddresses(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchEmailAddresses, input, options)
end

function C:searchEvaluationForms(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchEvaluationForms, input, options)
end

function C:searchHoursOfOperationOverrides(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchHoursOfOperationOverrides, input, options)
end

function C:searchHoursOfOperations(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchHoursOfOperations, input, options)
end

function C:searchNotifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchNotifications, input, options)
end

function C:searchPredefinedAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchPredefinedAttributes, input, options)
end

function C:searchPrompts(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchPrompts, input, options)
end

function C:searchQueues(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchQueues, input, options)
end

function C:searchQuickConnects(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchQuickConnects, input, options)
end

function C:searchResourceTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchResourceTags, input, options)
end

function C:searchRoutingProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchRoutingProfiles, input, options)
end

function C:searchSecurityProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchSecurityProfiles, input, options)
end

function C:searchTestCases(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchTestCases, input, options)
end

function C:searchUserHierarchyGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchUserHierarchyGroups, input, options)
end

function C:searchUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchUsers, input, options)
end

function C:searchViews(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchViews, input, options)
end

function C:searchVocabularies(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchVocabularies, input, options)
end

function C:searchWorkspaceAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchWorkspaceAssociations, input, options)
end

function C:searchWorkspaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchWorkspaces, input, options)
end

function C:sendChatIntegrationEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendChatIntegrationEvent, input, options)
end

function C:sendOutboundEmail(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendOutboundEmail, input, options)
end

function C:startAttachedFileUpload(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAttachedFileUpload, input, options)
end

function C:startChatContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartChatContact, input, options)
end

function C:startContactEvaluation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartContactEvaluation, input, options)
end

function C:startContactMediaProcessing(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartContactMediaProcessing, input, options)
end

function C:startContactRecording(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartContactRecording, input, options)
end

function C:startContactStreaming(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartContactStreaming, input, options)
end

function C:startEmailContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartEmailContact, input, options)
end

function C:startOutboundChatContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartOutboundChatContact, input, options)
end

function C:startOutboundEmailContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartOutboundEmailContact, input, options)
end

function C:startOutboundVoiceContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartOutboundVoiceContact, input, options)
end

function C:startScreenSharing(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartScreenSharing, input, options)
end

function C:startTaskContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartTaskContact, input, options)
end

function C:startTestCaseExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartTestCaseExecution, input, options)
end

function C:startWebRTCContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartWebRTCContact, input, options)
end

function C:stopContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopContact, input, options)
end

function C:stopContactMediaProcessing(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopContactMediaProcessing, input, options)
end

function C:stopContactRecording(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopContactRecording, input, options)
end

function C:stopContactStreaming(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopContactStreaming, input, options)
end

function C:stopTestCaseExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopTestCaseExecution, input, options)
end

function C:submitContactEvaluation(input, options)
   return self:invokeOperation(schemas.Service, schemas.SubmitContactEvaluation, input, options)
end

function C:suspendContactRecording(input, options)
   return self:invokeOperation(schemas.Service, schemas.SuspendContactRecording, input, options)
end

function C:tagContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagContact, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:transferContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.TransferContact, input, options)
end

function C:untagContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagContact, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAgentStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAgentStatus, input, options)
end

function C:updateAttachedFilesConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAttachedFilesConfiguration, input, options)
end

function C:updateAuthenticationProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAuthenticationProfile, input, options)
end

function C:updateContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContact, input, options)
end

function C:updateContactAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContactAttributes, input, options)
end

function C:updateContactEvaluation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContactEvaluation, input, options)
end

function C:updateContactFlowContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContactFlowContent, input, options)
end

function C:updateContactFlowMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContactFlowMetadata, input, options)
end

function C:updateContactFlowModuleAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContactFlowModuleAlias, input, options)
end

function C:updateContactFlowModuleContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContactFlowModuleContent, input, options)
end

function C:updateContactFlowModuleMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContactFlowModuleMetadata, input, options)
end

function C:updateContactFlowName(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContactFlowName, input, options)
end

function C:updateContactRoutingData(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContactRoutingData, input, options)
end

function C:updateContactSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContactSchedule, input, options)
end

function C:updateDataTableAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataTableAttribute, input, options)
end

function C:updateDataTableMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataTableMetadata, input, options)
end

function C:updateDataTablePrimaryValues(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataTablePrimaryValues, input, options)
end

function C:updateEmailAddressMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEmailAddressMetadata, input, options)
end

function C:updateEvaluationForm(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEvaluationForm, input, options)
end

function C:updateHoursOfOperation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateHoursOfOperation, input, options)
end

function C:updateHoursOfOperationOverride(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateHoursOfOperationOverride, input, options)
end

function C:updateInstanceAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateInstanceAttribute, input, options)
end

function C:updateInstanceStorageConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateInstanceStorageConfig, input, options)
end

function C:updateNotificationContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNotificationContent, input, options)
end

function C:updateParticipantAuthentication(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateParticipantAuthentication, input, options)
end

function C:updateParticipantRoleConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateParticipantRoleConfig, input, options)
end

function C:updatePhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePhoneNumber, input, options)
end

function C:updatePhoneNumberMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePhoneNumberMetadata, input, options)
end

function C:updatePredefinedAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePredefinedAttribute, input, options)
end

function C:updatePrompt(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePrompt, input, options)
end

function C:updateQueueHoursOfOperation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQueueHoursOfOperation, input, options)
end

function C:updateQueueMaxContacts(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQueueMaxContacts, input, options)
end

function C:updateQueueName(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQueueName, input, options)
end

function C:updateQueueOutboundCallerConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQueueOutboundCallerConfig, input, options)
end

function C:updateQueueOutboundEmailConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQueueOutboundEmailConfig, input, options)
end

function C:updateQueueStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQueueStatus, input, options)
end

function C:updateQuickConnectConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQuickConnectConfig, input, options)
end

function C:updateQuickConnectName(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQuickConnectName, input, options)
end

function C:updateRoutingProfileAgentAvailabilityTimer(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRoutingProfileAgentAvailabilityTimer, input, options)
end

function C:updateRoutingProfileConcurrency(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRoutingProfileConcurrency, input, options)
end

function C:updateRoutingProfileDefaultOutboundQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRoutingProfileDefaultOutboundQueue, input, options)
end

function C:updateRoutingProfileName(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRoutingProfileName, input, options)
end

function C:updateRoutingProfileQueues(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRoutingProfileQueues, input, options)
end

function C:updateRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRule, input, options)
end

function C:updateSecurityProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSecurityProfile, input, options)
end

function C:updateTaskTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTaskTemplate, input, options)
end

function C:updateTestCase(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTestCase, input, options)
end

function C:updateTrafficDistribution(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTrafficDistribution, input, options)
end

function C:updateUserConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUserConfig, input, options)
end

function C:updateUserHierarchy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUserHierarchy, input, options)
end

function C:updateUserHierarchyGroupName(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUserHierarchyGroupName, input, options)
end

function C:updateUserHierarchyStructure(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUserHierarchyStructure, input, options)
end

function C:updateUserIdentityInfo(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUserIdentityInfo, input, options)
end

function C:updateUserNotificationStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUserNotificationStatus, input, options)
end

function C:updateUserPhoneConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUserPhoneConfig, input, options)
end

function C:updateUserProficiencies(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUserProficiencies, input, options)
end

function C:updateUserRoutingProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUserRoutingProfile, input, options)
end

function C:updateUserSecurityProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUserSecurityProfiles, input, options)
end

function C:updateViewContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateViewContent, input, options)
end

function C:updateViewMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateViewMetadata, input, options)
end

function C:updateWorkspaceMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkspaceMetadata, input, options)
end

function C:updateWorkspacePage(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkspacePage, input, options)
end

function C:updateWorkspaceTheme(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkspaceTheme, input, options)
end

function C:updateWorkspaceVisibility(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkspaceVisibility, input, options)
end

return M
