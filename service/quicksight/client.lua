



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("quicksight.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("quicksight.schemas")
local traits = require("smithy.traits")
local types = require("quicksight.types")
local sdk_defaults = require("aws.sdk_defaults")














































































































































































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "QuickSight_20180401"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "quicksight", signing_region = c.region } }
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

function C:batchCreateTopicReviewedAnswer(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchCreateTopicReviewedAnswer, input, options)
end

function C:batchDeleteTopicReviewedAnswer(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteTopicReviewedAnswer, input, options)
end

function C:cancelIngestion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelIngestion, input, options)
end

function C:createAccountCustomization(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccountCustomization, input, options)
end

function C:createAccountSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccountSubscription, input, options)
end

function C:createActionConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateActionConnector, input, options)
end

function C:createAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAnalysis, input, options)
end

function C:createBrand(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBrand, input, options)
end

function C:createCustomPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCustomPermissions, input, options)
end

function C:createDashboard(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDashboard, input, options)
end

function C:createDataSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataSet, input, options)
end

function C:createDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataSource, input, options)
end

function C:createFolder(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFolder, input, options)
end

function C:createFolderMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFolderMembership, input, options)
end

function C:createGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGroup, input, options)
end

function C:createGroupMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGroupMembership, input, options)
end

function C:createIAMPolicyAssignment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIAMPolicyAssignment, input, options)
end

function C:createIngestion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIngestion, input, options)
end

function C:createNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNamespace, input, options)
end

function C:createRefreshSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRefreshSchedule, input, options)
end

function C:createRoleMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRoleMembership, input, options)
end

function C:createTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTemplate, input, options)
end

function C:createTemplateAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTemplateAlias, input, options)
end

function C:createTheme(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTheme, input, options)
end

function C:createThemeAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateThemeAlias, input, options)
end

function C:createTopic(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTopic, input, options)
end

function C:createTopicRefreshSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTopicRefreshSchedule, input, options)
end

function C:createVPCConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVPCConnection, input, options)
end

function C:deleteAccountCustomization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccountCustomization, input, options)
end

function C:deleteAccountCustomPermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccountCustomPermission, input, options)
end

function C:deleteAccountSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccountSubscription, input, options)
end

function C:deleteActionConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteActionConnector, input, options)
end

function C:deleteAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAnalysis, input, options)
end

function C:deleteBrand(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBrand, input, options)
end

function C:deleteBrandAssignment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBrandAssignment, input, options)
end

function C:deleteCustomPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCustomPermissions, input, options)
end

function C:deleteDashboard(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDashboard, input, options)
end

function C:deleteDataSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataSet, input, options)
end

function C:deleteDataSetRefreshProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataSetRefreshProperties, input, options)
end

function C:deleteDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataSource, input, options)
end

function C:deleteDefaultQBusinessApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDefaultQBusinessApplication, input, options)
end

function C:deleteFolder(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFolder, input, options)
end

function C:deleteFolderMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFolderMembership, input, options)
end

function C:deleteGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGroup, input, options)
end

function C:deleteGroupMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGroupMembership, input, options)
end

function C:deleteIAMPolicyAssignment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIAMPolicyAssignment, input, options)
end

function C:deleteIdentityPropagationConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIdentityPropagationConfig, input, options)
end

function C:deleteNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNamespace, input, options)
end

function C:deleteRefreshSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRefreshSchedule, input, options)
end

function C:deleteRoleCustomPermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRoleCustomPermission, input, options)
end

function C:deleteRoleMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRoleMembership, input, options)
end

function C:deleteTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTemplate, input, options)
end

function C:deleteTemplateAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTemplateAlias, input, options)
end

function C:deleteTheme(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTheme, input, options)
end

function C:deleteThemeAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteThemeAlias, input, options)
end

function C:deleteTopic(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTopic, input, options)
end

function C:deleteTopicRefreshSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTopicRefreshSchedule, input, options)
end

function C:deleteUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUser, input, options)
end

function C:deleteUserByPrincipalId(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUserByPrincipalId, input, options)
end

function C:deleteUserCustomPermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUserCustomPermission, input, options)
end

function C:deleteVPCConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVPCConnection, input, options)
end

function C:describeAccountCustomization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountCustomization, input, options)
end

function C:describeAccountCustomPermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountCustomPermission, input, options)
end

function C:describeAccountSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountSettings, input, options)
end

function C:describeAccountSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountSubscription, input, options)
end

function C:describeActionConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeActionConnector, input, options)
end

function C:describeActionConnectorPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeActionConnectorPermissions, input, options)
end

function C:describeAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAnalysis, input, options)
end

function C:describeAnalysisDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAnalysisDefinition, input, options)
end

function C:describeAnalysisPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAnalysisPermissions, input, options)
end

function C:describeAssetBundleExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAssetBundleExportJob, input, options)
end

function C:describeAssetBundleImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAssetBundleImportJob, input, options)
end

function C:describeAutomationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAutomationJob, input, options)
end

function C:describeBrand(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBrand, input, options)
end

function C:describeBrandAssignment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBrandAssignment, input, options)
end

function C:describeBrandPublishedVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBrandPublishedVersion, input, options)
end

function C:describeCustomPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCustomPermissions, input, options)
end

function C:describeDashboard(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDashboard, input, options)
end

function C:describeDashboardDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDashboardDefinition, input, options)
end

function C:describeDashboardPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDashboardPermissions, input, options)
end

function C:describeDashboardSnapshotJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDashboardSnapshotJob, input, options)
end

function C:describeDashboardSnapshotJobResult(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDashboardSnapshotJobResult, input, options)
end

function C:describeDashboardsQAConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDashboardsQAConfiguration, input, options)
end

function C:describeDataSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataSet, input, options)
end

function C:describeDataSetPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataSetPermissions, input, options)
end

function C:describeDataSetRefreshProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataSetRefreshProperties, input, options)
end

function C:describeDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataSource, input, options)
end

function C:describeDataSourcePermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataSourcePermissions, input, options)
end

function C:describeDefaultQBusinessApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDefaultQBusinessApplication, input, options)
end

function C:describeFolder(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFolder, input, options)
end

function C:describeFolderPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFolderPermissions, input, options)
end

function C:describeFolderResolvedPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFolderResolvedPermissions, input, options)
end

function C:describeGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGroup, input, options)
end

function C:describeGroupMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGroupMembership, input, options)
end

function C:describeIAMPolicyAssignment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIAMPolicyAssignment, input, options)
end

function C:describeIngestion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIngestion, input, options)
end

function C:describeIpRestriction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIpRestriction, input, options)
end

function C:describeKeyRegistration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeKeyRegistration, input, options)
end

function C:describeNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNamespace, input, options)
end

function C:describeQPersonalizationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeQPersonalizationConfiguration, input, options)
end

function C:describeQuickSightQSearchConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeQuickSightQSearchConfiguration, input, options)
end

function C:describeRefreshSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRefreshSchedule, input, options)
end

function C:describeRoleCustomPermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRoleCustomPermission, input, options)
end

function C:describeSelfUpgradeConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSelfUpgradeConfiguration, input, options)
end

function C:describeTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTemplate, input, options)
end

function C:describeTemplateAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTemplateAlias, input, options)
end

function C:describeTemplateDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTemplateDefinition, input, options)
end

function C:describeTemplatePermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTemplatePermissions, input, options)
end

function C:describeTheme(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTheme, input, options)
end

function C:describeThemeAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeThemeAlias, input, options)
end

function C:describeThemePermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeThemePermissions, input, options)
end

function C:describeTopic(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTopic, input, options)
end

function C:describeTopicPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTopicPermissions, input, options)
end

function C:describeTopicRefresh(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTopicRefresh, input, options)
end

function C:describeTopicRefreshSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTopicRefreshSchedule, input, options)
end

function C:describeUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUser, input, options)
end

function C:describeVPCConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVPCConnection, input, options)
end

function C:generateEmbedUrlForAnonymousUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.GenerateEmbedUrlForAnonymousUser, input, options)
end

function C:generateEmbedUrlForRegisteredUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.GenerateEmbedUrlForRegisteredUser, input, options)
end

function C:generateEmbedUrlForRegisteredUserWithIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.GenerateEmbedUrlForRegisteredUserWithIdentity, input, options)
end

function C:getDashboardEmbedUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDashboardEmbedUrl, input, options)
end

function C:getFlowMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFlowMetadata, input, options)
end

function C:getFlowPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFlowPermissions, input, options)
end

function C:getIdentityContext(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIdentityContext, input, options)
end

function C:getSessionEmbedUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSessionEmbedUrl, input, options)
end

function C:listActionConnectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListActionConnectors, input, options)
end

function C:listAnalyses(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAnalyses, input, options)
end

function C:listAssetBundleExportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssetBundleExportJobs, input, options)
end

function C:listAssetBundleImportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssetBundleImportJobs, input, options)
end

function C:listBrands(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBrands, input, options)
end

function C:listCustomPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCustomPermissions, input, options)
end

function C:listDashboards(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDashboards, input, options)
end

function C:listDashboardVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDashboardVersions, input, options)
end

function C:listDataSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataSets, input, options)
end

function C:listDataSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataSources, input, options)
end

function C:listFlows(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFlows, input, options)
end

function C:listFolderMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFolderMembers, input, options)
end

function C:listFolders(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFolders, input, options)
end

function C:listFoldersForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFoldersForResource, input, options)
end

function C:listGroupMemberships(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroupMemberships, input, options)
end

function C:listGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroups, input, options)
end

function C:listIAMPolicyAssignments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIAMPolicyAssignments, input, options)
end

function C:listIAMPolicyAssignmentsForUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIAMPolicyAssignmentsForUser, input, options)
end

function C:listIdentityPropagationConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIdentityPropagationConfigs, input, options)
end

function C:listIngestions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIngestions, input, options)
end

function C:listNamespaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNamespaces, input, options)
end

function C:listRefreshSchedules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRefreshSchedules, input, options)
end

function C:listRoleMemberships(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRoleMemberships, input, options)
end

function C:listSelfUpgrades(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSelfUpgrades, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTemplateAliases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTemplateAliases, input, options)
end

function C:listTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTemplates, input, options)
end

function C:listTemplateVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTemplateVersions, input, options)
end

function C:listThemeAliases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListThemeAliases, input, options)
end

function C:listThemes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListThemes, input, options)
end

function C:listThemeVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListThemeVersions, input, options)
end

function C:listTopicRefreshSchedules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTopicRefreshSchedules, input, options)
end

function C:listTopicReviewedAnswers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTopicReviewedAnswers, input, options)
end

function C:listTopics(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTopics, input, options)
end

function C:listUserGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUserGroups, input, options)
end

function C:listUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUsers, input, options)
end

function C:listVPCConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVPCConnections, input, options)
end

function C:predictQAResults(input, options)
   return self:invokeOperation(schemas.Service, schemas.PredictQAResults, input, options)
end

function C:putDataSetRefreshProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDataSetRefreshProperties, input, options)
end

function C:registerUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterUser, input, options)
end

function C:restoreAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreAnalysis, input, options)
end

function C:searchActionConnectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchActionConnectors, input, options)
end

function C:searchAnalyses(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchAnalyses, input, options)
end

function C:searchDashboards(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchDashboards, input, options)
end

function C:searchDataSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchDataSets, input, options)
end

function C:searchDataSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchDataSources, input, options)
end

function C:searchFlows(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchFlows, input, options)
end

function C:searchFolders(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchFolders, input, options)
end

function C:searchGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchGroups, input, options)
end

function C:searchTopics(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchTopics, input, options)
end

function C:startAssetBundleExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAssetBundleExportJob, input, options)
end

function C:startAssetBundleImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAssetBundleImportJob, input, options)
end

function C:startAutomationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAutomationJob, input, options)
end

function C:startDashboardSnapshotJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDashboardSnapshotJob, input, options)
end

function C:startDashboardSnapshotJobSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDashboardSnapshotJobSchedule, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAccountCustomization(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccountCustomization, input, options)
end

function C:updateAccountCustomPermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccountCustomPermission, input, options)
end

function C:updateAccountSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccountSettings, input, options)
end

function C:updateActionConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateActionConnector, input, options)
end

function C:updateActionConnectorPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateActionConnectorPermissions, input, options)
end

function C:updateAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAnalysis, input, options)
end

function C:updateAnalysisPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAnalysisPermissions, input, options)
end

function C:updateApplicationWithTokenExchangeGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApplicationWithTokenExchangeGrant, input, options)
end

function C:updateBrand(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBrand, input, options)
end

function C:updateBrandAssignment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBrandAssignment, input, options)
end

function C:updateBrandPublishedVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBrandPublishedVersion, input, options)
end

function C:updateCustomPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCustomPermissions, input, options)
end

function C:updateDashboard(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDashboard, input, options)
end

function C:updateDashboardLinks(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDashboardLinks, input, options)
end

function C:updateDashboardPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDashboardPermissions, input, options)
end

function C:updateDashboardPublishedVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDashboardPublishedVersion, input, options)
end

function C:updateDashboardsQAConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDashboardsQAConfiguration, input, options)
end

function C:updateDataSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataSet, input, options)
end

function C:updateDataSetPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataSetPermissions, input, options)
end

function C:updateDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataSource, input, options)
end

function C:updateDataSourcePermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataSourcePermissions, input, options)
end

function C:updateDefaultQBusinessApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDefaultQBusinessApplication, input, options)
end

function C:updateFlowPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFlowPermissions, input, options)
end

function C:updateFolder(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFolder, input, options)
end

function C:updateFolderPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFolderPermissions, input, options)
end

function C:updateGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGroup, input, options)
end

function C:updateIAMPolicyAssignment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIAMPolicyAssignment, input, options)
end

function C:updateIdentityPropagationConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIdentityPropagationConfig, input, options)
end

function C:updateIpRestriction(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIpRestriction, input, options)
end

function C:updateKeyRegistration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateKeyRegistration, input, options)
end

function C:updatePublicSharingSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePublicSharingSettings, input, options)
end

function C:updateQPersonalizationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQPersonalizationConfiguration, input, options)
end

function C:updateQuickSightQSearchConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQuickSightQSearchConfiguration, input, options)
end

function C:updateRefreshSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRefreshSchedule, input, options)
end

function C:updateRoleCustomPermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRoleCustomPermission, input, options)
end

function C:updateSelfUpgrade(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSelfUpgrade, input, options)
end

function C:updateSelfUpgradeConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSelfUpgradeConfiguration, input, options)
end

function C:updateSPICECapacityConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSPICECapacityConfiguration, input, options)
end

function C:updateTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTemplate, input, options)
end

function C:updateTemplateAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTemplateAlias, input, options)
end

function C:updateTemplatePermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTemplatePermissions, input, options)
end

function C:updateTheme(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTheme, input, options)
end

function C:updateThemeAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateThemeAlias, input, options)
end

function C:updateThemePermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateThemePermissions, input, options)
end

function C:updateTopic(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTopic, input, options)
end

function C:updateTopicPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTopicPermissions, input, options)
end

function C:updateTopicRefreshSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTopicRefreshSchedule, input, options)
end

function C:updateUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUser, input, options)
end

function C:updateUserCustomPermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUserCustomPermission, input, options)
end

function C:updateVPCConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVPCConnection, input, options)
end

return M
