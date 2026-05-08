



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("securityhub.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("securityhub.schemas")
local traits = require("smithy.traits")
local types = require("securityhub.types")
local sdk_defaults = require("aws.sdk_defaults")



















































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "SecurityHubAPIService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "securityhub", signing_region = c.region } }
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

function C:acceptAdministratorInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptAdministratorInvitation, input, options)
end

function C:acceptInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptInvitation, input, options)
end

function C:batchDeleteAutomationRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteAutomationRules, input, options)
end

function C:batchDisableStandards(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDisableStandards, input, options)
end

function C:batchEnableStandards(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchEnableStandards, input, options)
end

function C:batchGetAutomationRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetAutomationRules, input, options)
end

function C:batchGetConfigurationPolicyAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetConfigurationPolicyAssociations, input, options)
end

function C:batchGetSecurityControls(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetSecurityControls, input, options)
end

function C:batchGetStandardsControlAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetStandardsControlAssociations, input, options)
end

function C:batchImportFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchImportFindings, input, options)
end

function C:batchUpdateAutomationRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateAutomationRules, input, options)
end

function C:batchUpdateFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateFindings, input, options)
end

function C:batchUpdateFindingsV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateFindingsV2, input, options)
end

function C:batchUpdateStandardsControlAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateStandardsControlAssociations, input, options)
end

function C:createActionTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateActionTarget, input, options)
end

function C:createAggregatorV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAggregatorV2, input, options)
end

function C:createAutomationRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAutomationRule, input, options)
end

function C:createAutomationRuleV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAutomationRuleV2, input, options)
end

function C:createConfigurationPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfigurationPolicy, input, options)
end

function C:createConnectorV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConnectorV2, input, options)
end

function C:createFindingAggregator(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFindingAggregator, input, options)
end

function C:createInsight(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInsight, input, options)
end

function C:createMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMembers, input, options)
end

function C:createTicketV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTicketV2, input, options)
end

function C:declineInvitations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeclineInvitations, input, options)
end

function C:deleteActionTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteActionTarget, input, options)
end

function C:deleteAggregatorV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAggregatorV2, input, options)
end

function C:deleteAutomationRuleV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAutomationRuleV2, input, options)
end

function C:deleteConfigurationPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfigurationPolicy, input, options)
end

function C:deleteConnectorV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConnectorV2, input, options)
end

function C:deleteFindingAggregator(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFindingAggregator, input, options)
end

function C:deleteInsight(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInsight, input, options)
end

function C:deleteInvitations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInvitations, input, options)
end

function C:deleteMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMembers, input, options)
end

function C:describeActionTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeActionTargets, input, options)
end

function C:describeHub(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeHub, input, options)
end

function C:describeOrganizationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOrganizationConfiguration, input, options)
end

function C:describeProducts(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProducts, input, options)
end

function C:describeProductsV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProductsV2, input, options)
end

function C:describeSecurityHubV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSecurityHubV2, input, options)
end

function C:describeStandards(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStandards, input, options)
end

function C:describeStandardsControls(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStandardsControls, input, options)
end

function C:disableImportFindingsForProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableImportFindingsForProduct, input, options)
end

function C:disableOrganizationAdminAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableOrganizationAdminAccount, input, options)
end

function C:disableSecurityHub(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableSecurityHub, input, options)
end

function C:disableSecurityHubV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableSecurityHubV2, input, options)
end

function C:disassociateFromAdministratorAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateFromAdministratorAccount, input, options)
end

function C:disassociateFromMasterAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateFromMasterAccount, input, options)
end

function C:disassociateMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateMembers, input, options)
end

function C:enableImportFindingsForProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableImportFindingsForProduct, input, options)
end

function C:enableOrganizationAdminAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableOrganizationAdminAccount, input, options)
end

function C:enableSecurityHub(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableSecurityHub, input, options)
end

function C:enableSecurityHubV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableSecurityHubV2, input, options)
end

function C:generateRecommendedPolicyV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.GenerateRecommendedPolicyV2, input, options)
end

function C:getAdministratorAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAdministratorAccount, input, options)
end

function C:getAggregatorV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAggregatorV2, input, options)
end

function C:getAutomationRuleV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAutomationRuleV2, input, options)
end

function C:getConfigurationPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfigurationPolicy, input, options)
end

function C:getConfigurationPolicyAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfigurationPolicyAssociation, input, options)
end

function C:getConnectorV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnectorV2, input, options)
end

function C:getEnabledStandards(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEnabledStandards, input, options)
end

function C:getFindingAggregator(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFindingAggregator, input, options)
end

function C:getFindingHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFindingHistory, input, options)
end

function C:getFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFindings, input, options)
end

function C:getFindingStatisticsV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFindingStatisticsV2, input, options)
end

function C:getFindingsTrendsV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFindingsTrendsV2, input, options)
end

function C:getFindingsV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFindingsV2, input, options)
end

function C:getInsightResults(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInsightResults, input, options)
end

function C:getInsights(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInsights, input, options)
end

function C:getInvitationsCount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInvitationsCount, input, options)
end

function C:getMasterAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMasterAccount, input, options)
end

function C:getMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMembers, input, options)
end

function C:getRecommendedPolicyV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRecommendedPolicyV2, input, options)
end

function C:getResourcesStatisticsV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcesStatisticsV2, input, options)
end

function C:getResourcesTrendsV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcesTrendsV2, input, options)
end

function C:getResourcesV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcesV2, input, options)
end

function C:getSecurityControlDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSecurityControlDefinition, input, options)
end

function C:inviteMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.InviteMembers, input, options)
end

function C:listAggregatorsV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAggregatorsV2, input, options)
end

function C:listAutomationRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAutomationRules, input, options)
end

function C:listAutomationRulesV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAutomationRulesV2, input, options)
end

function C:listConfigurationPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfigurationPolicies, input, options)
end

function C:listConfigurationPolicyAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfigurationPolicyAssociations, input, options)
end

function C:listConnectorsV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConnectorsV2, input, options)
end

function C:listEnabledProductsForImport(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEnabledProductsForImport, input, options)
end

function C:listFindingAggregators(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFindingAggregators, input, options)
end

function C:listInvitations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInvitations, input, options)
end

function C:listMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMembers, input, options)
end

function C:listOrganizationAdminAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOrganizationAdminAccounts, input, options)
end

function C:listSecurityControlDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSecurityControlDefinitions, input, options)
end

function C:listStandardsControlAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStandardsControlAssociations, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:registerConnectorV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterConnectorV2, input, options)
end

function C:startConfigurationPolicyAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartConfigurationPolicyAssociation, input, options)
end

function C:startConfigurationPolicyDisassociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartConfigurationPolicyDisassociation, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateActionTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateActionTarget, input, options)
end

function C:updateAggregatorV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAggregatorV2, input, options)
end

function C:updateAutomationRuleV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAutomationRuleV2, input, options)
end

function C:updateConfigurationPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConfigurationPolicy, input, options)
end

function C:updateConnectorV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConnectorV2, input, options)
end

function C:updateFindingAggregator(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFindingAggregator, input, options)
end

function C:updateFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFindings, input, options)
end

function C:updateInsight(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateInsight, input, options)
end

function C:updateOrganizationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateOrganizationConfiguration, input, options)
end

function C:updateSecurityControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSecurityControl, input, options)
end

function C:updateSecurityHubConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSecurityHubConfiguration, input, options)
end

function C:updateStandardsControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStandardsControl, input, options)
end

return M
