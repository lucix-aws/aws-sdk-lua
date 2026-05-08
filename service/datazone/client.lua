



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("datazone.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("datazone.schemas")
local traits = require("smithy.traits")
local types = require("datazone.types")
local sdk_defaults = require("aws.sdk_defaults")


























































































































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "DataZone"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "datazone", signing_region = c.region } }
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

function C:acceptPredictions(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptPredictions, input, options)
end

function C:acceptSubscriptionRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptSubscriptionRequest, input, options)
end

function C:addEntityOwner(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddEntityOwner, input, options)
end

function C:addPolicyGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddPolicyGrant, input, options)
end

function C:associateEnvironmentRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateEnvironmentRole, input, options)
end

function C:associateGovernedTerms(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateGovernedTerms, input, options)
end

function C:batchGetAttributesMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetAttributesMetadata, input, options)
end

function C:batchPutAttributesMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchPutAttributesMetadata, input, options)
end

function C:cancelMetadataGenerationRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelMetadataGenerationRun, input, options)
end

function C:cancelSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelSubscription, input, options)
end

function C:createAccountPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccountPool, input, options)
end

function C:createAsset(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAsset, input, options)
end

function C:createAssetFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAssetFilter, input, options)
end

function C:createAssetRevision(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAssetRevision, input, options)
end

function C:createAssetType(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAssetType, input, options)
end

function C:createConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConnection, input, options)
end

function C:createDataProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataProduct, input, options)
end

function C:createDataProductRevision(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataProductRevision, input, options)
end

function C:createDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataSource, input, options)
end

function C:createDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDomain, input, options)
end

function C:createDomainUnit(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDomainUnit, input, options)
end

function C:createEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEnvironment, input, options)
end

function C:createEnvironmentAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEnvironmentAction, input, options)
end

function C:createEnvironmentBlueprint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEnvironmentBlueprint, input, options)
end

function C:createEnvironmentProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEnvironmentProfile, input, options)
end

function C:createFormType(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFormType, input, options)
end

function C:createGlossary(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGlossary, input, options)
end

function C:createGlossaryTerm(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGlossaryTerm, input, options)
end

function C:createGroupProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGroupProfile, input, options)
end

function C:createListingChangeSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateListingChangeSet, input, options)
end

function C:createProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProject, input, options)
end

function C:createProjectMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProjectMembership, input, options)
end

function C:createProjectProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProjectProfile, input, options)
end

function C:createRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRule, input, options)
end

function C:createSubscriptionGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSubscriptionGrant, input, options)
end

function C:createSubscriptionRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSubscriptionRequest, input, options)
end

function C:createSubscriptionTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSubscriptionTarget, input, options)
end

function C:createUserProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUserProfile, input, options)
end

function C:deleteAccountPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccountPool, input, options)
end

function C:deleteAsset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAsset, input, options)
end

function C:deleteAssetFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAssetFilter, input, options)
end

function C:deleteAssetType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAssetType, input, options)
end

function C:deleteConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConnection, input, options)
end

function C:deleteDataExportConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataExportConfiguration, input, options)
end

function C:deleteDataProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataProduct, input, options)
end

function C:deleteDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataSource, input, options)
end

function C:deleteDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDomain, input, options)
end

function C:deleteDomainUnit(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDomainUnit, input, options)
end

function C:deleteEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEnvironment, input, options)
end

function C:deleteEnvironmentAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEnvironmentAction, input, options)
end

function C:deleteEnvironmentBlueprint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEnvironmentBlueprint, input, options)
end

function C:deleteEnvironmentBlueprintConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEnvironmentBlueprintConfiguration, input, options)
end

function C:deleteEnvironmentProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEnvironmentProfile, input, options)
end

function C:deleteFormType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFormType, input, options)
end

function C:deleteGlossary(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGlossary, input, options)
end

function C:deleteGlossaryTerm(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGlossaryTerm, input, options)
end

function C:deleteListing(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteListing, input, options)
end

function C:deleteProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProject, input, options)
end

function C:deleteProjectMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProjectMembership, input, options)
end

function C:deleteProjectProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProjectProfile, input, options)
end

function C:deleteRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRule, input, options)
end

function C:deleteSubscriptionGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSubscriptionGrant, input, options)
end

function C:deleteSubscriptionRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSubscriptionRequest, input, options)
end

function C:deleteSubscriptionTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSubscriptionTarget, input, options)
end

function C:deleteTimeSeriesDataPoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTimeSeriesDataPoints, input, options)
end

function C:disassociateEnvironmentRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateEnvironmentRole, input, options)
end

function C:disassociateGovernedTerms(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateGovernedTerms, input, options)
end

function C:getAccountPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountPool, input, options)
end

function C:getAsset(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAsset, input, options)
end

function C:getAssetFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAssetFilter, input, options)
end

function C:getAssetType(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAssetType, input, options)
end

function C:getConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnection, input, options)
end

function C:getDataExportConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataExportConfiguration, input, options)
end

function C:getDataProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataProduct, input, options)
end

function C:getDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataSource, input, options)
end

function C:getDataSourceRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataSourceRun, input, options)
end

function C:getDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomain, input, options)
end

function C:getDomainUnit(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomainUnit, input, options)
end

function C:getEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEnvironment, input, options)
end

function C:getEnvironmentAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEnvironmentAction, input, options)
end

function C:getEnvironmentBlueprint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEnvironmentBlueprint, input, options)
end

function C:getEnvironmentBlueprintConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEnvironmentBlueprintConfiguration, input, options)
end

function C:getEnvironmentCredentials(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEnvironmentCredentials, input, options)
end

function C:getEnvironmentProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEnvironmentProfile, input, options)
end

function C:getFormType(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFormType, input, options)
end

function C:getGlossary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGlossary, input, options)
end

function C:getGlossaryTerm(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGlossaryTerm, input, options)
end

function C:getGroupProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGroupProfile, input, options)
end

function C:getIamPortalLoginUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIamPortalLoginUrl, input, options)
end

function C:getJobRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJobRun, input, options)
end

function C:getLineageEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLineageEvent, input, options)
end

function C:getLineageNode(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLineageNode, input, options)
end

function C:getListing(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetListing, input, options)
end

function C:getMetadataGenerationRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMetadataGenerationRun, input, options)
end

function C:getNotebookRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNotebookRun, input, options)
end

function C:getProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProject, input, options)
end

function C:getProjectProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProjectProfile, input, options)
end

function C:getRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRule, input, options)
end

function C:getSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSubscription, input, options)
end

function C:getSubscriptionGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSubscriptionGrant, input, options)
end

function C:getSubscriptionRequestDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSubscriptionRequestDetails, input, options)
end

function C:getSubscriptionTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSubscriptionTarget, input, options)
end

function C:getTimeSeriesDataPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTimeSeriesDataPoint, input, options)
end

function C:getUserProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUserProfile, input, options)
end

function C:listAccountPools(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccountPools, input, options)
end

function C:listAccountsInAccountPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccountsInAccountPool, input, options)
end

function C:listAssetFilters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssetFilters, input, options)
end

function C:listAssetRevisions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssetRevisions, input, options)
end

function C:listConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConnections, input, options)
end

function C:listDataProductRevisions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataProductRevisions, input, options)
end

function C:listDataSourceRunActivities(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataSourceRunActivities, input, options)
end

function C:listDataSourceRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataSourceRuns, input, options)
end

function C:listDataSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataSources, input, options)
end

function C:listDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomains, input, options)
end

function C:listDomainUnitsForParent(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomainUnitsForParent, input, options)
end

function C:listEntityOwners(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEntityOwners, input, options)
end

function C:listEnvironmentActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEnvironmentActions, input, options)
end

function C:listEnvironmentBlueprintConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEnvironmentBlueprintConfigurations, input, options)
end

function C:listEnvironmentBlueprints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEnvironmentBlueprints, input, options)
end

function C:listEnvironmentProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEnvironmentProfiles, input, options)
end

function C:listEnvironments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEnvironments, input, options)
end

function C:listJobRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobRuns, input, options)
end

function C:listLineageEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLineageEvents, input, options)
end

function C:listLineageNodeHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLineageNodeHistory, input, options)
end

function C:listMetadataGenerationRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMetadataGenerationRuns, input, options)
end

function C:listNotebookRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNotebookRuns, input, options)
end

function C:listNotifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNotifications, input, options)
end

function C:listPolicyGrants(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPolicyGrants, input, options)
end

function C:listProjectMemberships(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProjectMemberships, input, options)
end

function C:listProjectProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProjectProfiles, input, options)
end

function C:listProjects(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProjects, input, options)
end

function C:listRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRules, input, options)
end

function C:listSubscriptionGrants(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSubscriptionGrants, input, options)
end

function C:listSubscriptionRequests(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSubscriptionRequests, input, options)
end

function C:listSubscriptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSubscriptions, input, options)
end

function C:listSubscriptionTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSubscriptionTargets, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTimeSeriesDataPoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTimeSeriesDataPoints, input, options)
end

function C:postLineageEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.PostLineageEvent, input, options)
end

function C:postTimeSeriesDataPoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.PostTimeSeriesDataPoints, input, options)
end

function C:putDataExportConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDataExportConfiguration, input, options)
end

function C:putEnvironmentBlueprintConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutEnvironmentBlueprintConfiguration, input, options)
end

function C:queryGraph(input, options)
   return self:invokeOperation(schemas.Service, schemas.QueryGraph, input, options)
end

function C:rejectPredictions(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectPredictions, input, options)
end

function C:rejectSubscriptionRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectSubscriptionRequest, input, options)
end

function C:removeEntityOwner(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveEntityOwner, input, options)
end

function C:removePolicyGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemovePolicyGrant, input, options)
end

function C:revokeSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.RevokeSubscription, input, options)
end

function C:search(input, options)
   return self:invokeOperation(schemas.Service, schemas.Search, input, options)
end

function C:searchGroupProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchGroupProfiles, input, options)
end

function C:searchListings(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchListings, input, options)
end

function C:searchTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchTypes, input, options)
end

function C:searchUserProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchUserProfiles, input, options)
end

function C:startDataSourceRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDataSourceRun, input, options)
end

function C:startMetadataGenerationRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMetadataGenerationRun, input, options)
end

function C:startNotebookRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartNotebookRun, input, options)
end

function C:stopNotebookRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopNotebookRun, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAccountPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccountPool, input, options)
end

function C:updateAssetFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAssetFilter, input, options)
end

function C:updateConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConnection, input, options)
end

function C:updateDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataSource, input, options)
end

function C:updateDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDomain, input, options)
end

function C:updateDomainUnit(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDomainUnit, input, options)
end

function C:updateEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEnvironment, input, options)
end

function C:updateEnvironmentAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEnvironmentAction, input, options)
end

function C:updateEnvironmentBlueprint(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEnvironmentBlueprint, input, options)
end

function C:updateEnvironmentProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEnvironmentProfile, input, options)
end

function C:updateGlossary(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGlossary, input, options)
end

function C:updateGlossaryTerm(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGlossaryTerm, input, options)
end

function C:updateGroupProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGroupProfile, input, options)
end

function C:updateProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProject, input, options)
end

function C:updateProjectProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProjectProfile, input, options)
end

function C:updateRootDomainUnitOwner(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRootDomainUnitOwner, input, options)
end

function C:updateRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRule, input, options)
end

function C:updateSubscriptionGrantStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSubscriptionGrantStatus, input, options)
end

function C:updateSubscriptionRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSubscriptionRequest, input, options)
end

function C:updateSubscriptionTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSubscriptionTarget, input, options)
end

function C:updateUserProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUserProfile, input, options)
end

return M
