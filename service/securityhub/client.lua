local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("securityhub.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("securityhub.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SecurityHubAPIService"
    cfg.signing_name = "securityhub"
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

function Client:acceptAdministratorInvitation(input, options)
    return self:invokeOperation(input, {
        name = "AcceptAdministratorInvitation",
        input_schema = types.AcceptAdministratorInvitationInput,
        output_schema = types.AcceptAdministratorInvitationOutput,
        http_method = "POST",
        http_path = "/administrator",
    }, options)
end

function Client:acceptInvitation(input, options)
    return self:invokeOperation(input, {
        name = "AcceptInvitation",
        input_schema = types.AcceptInvitationInput,
        output_schema = types.AcceptInvitationOutput,
        http_method = "POST",
        http_path = "/master",
    }, options)
end

function Client:batchDeleteAutomationRules(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteAutomationRules",
        input_schema = types.BatchDeleteAutomationRulesInput,
        output_schema = types.BatchDeleteAutomationRulesOutput,
        http_method = "POST",
        http_path = "/automationrules/delete",
    }, options)
end

function Client:batchDisableStandards(input, options)
    return self:invokeOperation(input, {
        name = "BatchDisableStandards",
        input_schema = types.BatchDisableStandardsInput,
        output_schema = types.BatchDisableStandardsOutput,
        http_method = "POST",
        http_path = "/standards/deregister",
    }, options)
end

function Client:batchEnableStandards(input, options)
    return self:invokeOperation(input, {
        name = "BatchEnableStandards",
        input_schema = types.BatchEnableStandardsInput,
        output_schema = types.BatchEnableStandardsOutput,
        http_method = "POST",
        http_path = "/standards/register",
    }, options)
end

function Client:batchGetAutomationRules(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetAutomationRules",
        input_schema = types.BatchGetAutomationRulesInput,
        output_schema = types.BatchGetAutomationRulesOutput,
        http_method = "POST",
        http_path = "/automationrules/get",
    }, options)
end

function Client:batchGetConfigurationPolicyAssociations(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetConfigurationPolicyAssociations",
        input_schema = types.BatchGetConfigurationPolicyAssociationsInput,
        output_schema = types.BatchGetConfigurationPolicyAssociationsOutput,
        http_method = "POST",
        http_path = "/configurationPolicyAssociation/batchget",
    }, options)
end

function Client:batchGetSecurityControls(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetSecurityControls",
        input_schema = types.BatchGetSecurityControlsInput,
        output_schema = types.BatchGetSecurityControlsOutput,
        http_method = "POST",
        http_path = "/securityControls/batchGet",
    }, options)
end

function Client:batchGetStandardsControlAssociations(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetStandardsControlAssociations",
        input_schema = types.BatchGetStandardsControlAssociationsInput,
        output_schema = types.BatchGetStandardsControlAssociationsOutput,
        http_method = "POST",
        http_path = "/associations/batchGet",
    }, options)
end

function Client:batchImportFindings(input, options)
    return self:invokeOperation(input, {
        name = "BatchImportFindings",
        input_schema = types.BatchImportFindingsInput,
        output_schema = types.BatchImportFindingsOutput,
        http_method = "POST",
        http_path = "/findings/import",
    }, options)
end

function Client:batchUpdateAutomationRules(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateAutomationRules",
        input_schema = types.BatchUpdateAutomationRulesInput,
        output_schema = types.BatchUpdateAutomationRulesOutput,
        http_method = "PATCH",
        http_path = "/automationrules/update",
    }, options)
end

function Client:batchUpdateFindings(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateFindings",
        input_schema = types.BatchUpdateFindingsInput,
        output_schema = types.BatchUpdateFindingsOutput,
        http_method = "PATCH",
        http_path = "/findings/batchupdate",
    }, options)
end

function Client:batchUpdateFindingsV2(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateFindingsV2",
        input_schema = types.BatchUpdateFindingsV2Input,
        output_schema = types.BatchUpdateFindingsV2Output,
        http_method = "PATCH",
        http_path = "/findingsv2/batchupdatev2",
    }, options)
end

function Client:batchUpdateStandardsControlAssociations(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateStandardsControlAssociations",
        input_schema = types.BatchUpdateStandardsControlAssociationsInput,
        output_schema = types.BatchUpdateStandardsControlAssociationsOutput,
        http_method = "PATCH",
        http_path = "/associations",
    }, options)
end

function Client:createActionTarget(input, options)
    return self:invokeOperation(input, {
        name = "CreateActionTarget",
        input_schema = types.CreateActionTargetInput,
        output_schema = types.CreateActionTargetOutput,
        http_method = "POST",
        http_path = "/actionTargets",
    }, options)
end

function Client:createAggregatorV2(input, options)
    return self:invokeOperation(input, {
        name = "CreateAggregatorV2",
        input_schema = types.CreateAggregatorV2Input,
        output_schema = types.CreateAggregatorV2Output,
        http_method = "POST",
        http_path = "/aggregatorv2/create",
    }, options)
end

function Client:createAutomationRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateAutomationRule",
        input_schema = types.CreateAutomationRuleInput,
        output_schema = types.CreateAutomationRuleOutput,
        http_method = "POST",
        http_path = "/automationrules/create",
    }, options)
end

function Client:createAutomationRuleV2(input, options)
    return self:invokeOperation(input, {
        name = "CreateAutomationRuleV2",
        input_schema = types.CreateAutomationRuleV2Input,
        output_schema = types.CreateAutomationRuleV2Output,
        http_method = "POST",
        http_path = "/automationrulesv2/create",
    }, options)
end

function Client:createConfigurationPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfigurationPolicy",
        input_schema = types.CreateConfigurationPolicyInput,
        output_schema = types.CreateConfigurationPolicyOutput,
        http_method = "POST",
        http_path = "/configurationPolicy/create",
    }, options)
end

function Client:createConnectorV2(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnectorV2",
        input_schema = types.CreateConnectorV2Input,
        output_schema = types.CreateConnectorV2Output,
        http_method = "POST",
        http_path = "/connectorsv2",
    }, options)
end

function Client:createFindingAggregator(input, options)
    return self:invokeOperation(input, {
        name = "CreateFindingAggregator",
        input_schema = types.CreateFindingAggregatorInput,
        output_schema = types.CreateFindingAggregatorOutput,
        http_method = "POST",
        http_path = "/findingAggregator/create",
    }, options)
end

function Client:createInsight(input, options)
    return self:invokeOperation(input, {
        name = "CreateInsight",
        input_schema = types.CreateInsightInput,
        output_schema = types.CreateInsightOutput,
        http_method = "POST",
        http_path = "/insights",
    }, options)
end

function Client:createMembers(input, options)
    return self:invokeOperation(input, {
        name = "CreateMembers",
        input_schema = types.CreateMembersInput,
        output_schema = types.CreateMembersOutput,
        http_method = "POST",
        http_path = "/members",
    }, options)
end

function Client:createTicketV2(input, options)
    return self:invokeOperation(input, {
        name = "CreateTicketV2",
        input_schema = types.CreateTicketV2Input,
        output_schema = types.CreateTicketV2Output,
        http_method = "POST",
        http_path = "/ticketsv2",
    }, options)
end

function Client:declineInvitations(input, options)
    return self:invokeOperation(input, {
        name = "DeclineInvitations",
        input_schema = types.DeclineInvitationsInput,
        output_schema = types.DeclineInvitationsOutput,
        http_method = "POST",
        http_path = "/invitations/decline",
    }, options)
end

function Client:deleteActionTarget(input, options)
    return self:invokeOperation(input, {
        name = "DeleteActionTarget",
        input_schema = types.DeleteActionTargetInput,
        output_schema = types.DeleteActionTargetOutput,
        http_method = "DELETE",
        http_path = "/actionTargets/{ActionTargetArn+}",
    }, options)
end

function Client:deleteAggregatorV2(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAggregatorV2",
        input_schema = types.DeleteAggregatorV2Input,
        output_schema = types.DeleteAggregatorV2Output,
        http_method = "DELETE",
        http_path = "/aggregatorv2/delete/{AggregatorV2Arn+}",
    }, options)
end

function Client:deleteAutomationRuleV2(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAutomationRuleV2",
        input_schema = types.DeleteAutomationRuleV2Input,
        output_schema = types.DeleteAutomationRuleV2Output,
        http_method = "DELETE",
        http_path = "/automationrulesv2/{Identifier}",
    }, options)
end

function Client:deleteConfigurationPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfigurationPolicy",
        input_schema = types.DeleteConfigurationPolicyInput,
        output_schema = types.DeleteConfigurationPolicyOutput,
        http_method = "DELETE",
        http_path = "/configurationPolicy/{Identifier}",
    }, options)
end

function Client:deleteConnectorV2(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnectorV2",
        input_schema = types.DeleteConnectorV2Input,
        output_schema = types.DeleteConnectorV2Output,
        http_method = "DELETE",
        http_path = "/connectorsv2/{ConnectorId+}",
    }, options)
end

function Client:deleteFindingAggregator(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFindingAggregator",
        input_schema = types.DeleteFindingAggregatorInput,
        output_schema = types.DeleteFindingAggregatorOutput,
        http_method = "DELETE",
        http_path = "/findingAggregator/delete/{FindingAggregatorArn+}",
    }, options)
end

function Client:deleteInsight(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInsight",
        input_schema = types.DeleteInsightInput,
        output_schema = types.DeleteInsightOutput,
        http_method = "DELETE",
        http_path = "/insights/{InsightArn+}",
    }, options)
end

function Client:deleteInvitations(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInvitations",
        input_schema = types.DeleteInvitationsInput,
        output_schema = types.DeleteInvitationsOutput,
        http_method = "POST",
        http_path = "/invitations/delete",
    }, options)
end

function Client:deleteMembers(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMembers",
        input_schema = types.DeleteMembersInput,
        output_schema = types.DeleteMembersOutput,
        http_method = "POST",
        http_path = "/members/delete",
    }, options)
end

function Client:describeActionTargets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeActionTargets",
        input_schema = types.DescribeActionTargetsInput,
        output_schema = types.DescribeActionTargetsOutput,
        http_method = "POST",
        http_path = "/actionTargets/get",
    }, options)
end

function Client:describeHub(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHub",
        input_schema = types.DescribeHubInput,
        output_schema = types.DescribeHubOutput,
        http_method = "GET",
        http_path = "/accounts",
    }, options)
end

function Client:describeOrganizationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrganizationConfiguration",
        input_schema = types.DescribeOrganizationConfigurationInput,
        output_schema = types.DescribeOrganizationConfigurationOutput,
        http_method = "GET",
        http_path = "/organization/configuration",
    }, options)
end

function Client:describeProducts(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProducts",
        input_schema = types.DescribeProductsInput,
        output_schema = types.DescribeProductsOutput,
        http_method = "GET",
        http_path = "/products",
    }, options)
end

function Client:describeProductsV2(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProductsV2",
        input_schema = types.DescribeProductsV2Input,
        output_schema = types.DescribeProductsV2Output,
        http_method = "GET",
        http_path = "/productsV2",
    }, options)
end

function Client:describeSecurityHubV2(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSecurityHubV2",
        input_schema = types.DescribeSecurityHubV2Input,
        output_schema = types.DescribeSecurityHubV2Output,
        http_method = "GET",
        http_path = "/hubv2",
    }, options)
end

function Client:describeStandards(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStandards",
        input_schema = types.DescribeStandardsInput,
        output_schema = types.DescribeStandardsOutput,
        http_method = "GET",
        http_path = "/standards",
    }, options)
end

function Client:describeStandardsControls(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStandardsControls",
        input_schema = types.DescribeStandardsControlsInput,
        output_schema = types.DescribeStandardsControlsOutput,
        http_method = "GET",
        http_path = "/standards/controls/{StandardsSubscriptionArn+}",
    }, options)
end

function Client:disableImportFindingsForProduct(input, options)
    return self:invokeOperation(input, {
        name = "DisableImportFindingsForProduct",
        input_schema = types.DisableImportFindingsForProductInput,
        output_schema = types.DisableImportFindingsForProductOutput,
        http_method = "DELETE",
        http_path = "/productSubscriptions/{ProductSubscriptionArn+}",
    }, options)
end

function Client:disableOrganizationAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "DisableOrganizationAdminAccount",
        input_schema = types.DisableOrganizationAdminAccountInput,
        output_schema = types.DisableOrganizationAdminAccountOutput,
        http_method = "POST",
        http_path = "/organization/admin/disable",
    }, options)
end

function Client:disableSecurityHub(input, options)
    return self:invokeOperation(input, {
        name = "DisableSecurityHub",
        input_schema = types.DisableSecurityHubInput,
        output_schema = types.DisableSecurityHubOutput,
        http_method = "DELETE",
        http_path = "/accounts",
    }, options)
end

function Client:disableSecurityHubV2(input, options)
    return self:invokeOperation(input, {
        name = "DisableSecurityHubV2",
        input_schema = types.DisableSecurityHubV2Input,
        output_schema = types.DisableSecurityHubV2Output,
        http_method = "DELETE",
        http_path = "/hubv2",
    }, options)
end

function Client:disassociateFromAdministratorAccount(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateFromAdministratorAccount",
        input_schema = types.DisassociateFromAdministratorAccountInput,
        output_schema = types.DisassociateFromAdministratorAccountOutput,
        http_method = "POST",
        http_path = "/administrator/disassociate",
    }, options)
end

function Client:disassociateFromMasterAccount(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateFromMasterAccount",
        input_schema = types.DisassociateFromMasterAccountInput,
        output_schema = types.DisassociateFromMasterAccountOutput,
        http_method = "POST",
        http_path = "/master/disassociate",
    }, options)
end

function Client:disassociateMembers(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateMembers",
        input_schema = types.DisassociateMembersInput,
        output_schema = types.DisassociateMembersOutput,
        http_method = "POST",
        http_path = "/members/disassociate",
    }, options)
end

function Client:enableImportFindingsForProduct(input, options)
    return self:invokeOperation(input, {
        name = "EnableImportFindingsForProduct",
        input_schema = types.EnableImportFindingsForProductInput,
        output_schema = types.EnableImportFindingsForProductOutput,
        http_method = "POST",
        http_path = "/productSubscriptions",
    }, options)
end

function Client:enableOrganizationAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "EnableOrganizationAdminAccount",
        input_schema = types.EnableOrganizationAdminAccountInput,
        output_schema = types.EnableOrganizationAdminAccountOutput,
        http_method = "POST",
        http_path = "/organization/admin/enable",
    }, options)
end

function Client:enableSecurityHub(input, options)
    return self:invokeOperation(input, {
        name = "EnableSecurityHub",
        input_schema = types.EnableSecurityHubInput,
        output_schema = types.EnableSecurityHubOutput,
        http_method = "POST",
        http_path = "/accounts",
    }, options)
end

function Client:enableSecurityHubV2(input, options)
    return self:invokeOperation(input, {
        name = "EnableSecurityHubV2",
        input_schema = types.EnableSecurityHubV2Input,
        output_schema = types.EnableSecurityHubV2Output,
        http_method = "POST",
        http_path = "/hubv2",
    }, options)
end

function Client:getAdministratorAccount(input, options)
    return self:invokeOperation(input, {
        name = "GetAdministratorAccount",
        input_schema = types.GetAdministratorAccountInput,
        output_schema = types.GetAdministratorAccountOutput,
        http_method = "GET",
        http_path = "/administrator",
    }, options)
end

function Client:getAggregatorV2(input, options)
    return self:invokeOperation(input, {
        name = "GetAggregatorV2",
        input_schema = types.GetAggregatorV2Input,
        output_schema = types.GetAggregatorV2Output,
        http_method = "GET",
        http_path = "/aggregatorv2/get/{AggregatorV2Arn+}",
    }, options)
end

function Client:getAutomationRuleV2(input, options)
    return self:invokeOperation(input, {
        name = "GetAutomationRuleV2",
        input_schema = types.GetAutomationRuleV2Input,
        output_schema = types.GetAutomationRuleV2Output,
        http_method = "GET",
        http_path = "/automationrulesv2/{Identifier}",
    }, options)
end

function Client:getConfigurationPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetConfigurationPolicy",
        input_schema = types.GetConfigurationPolicyInput,
        output_schema = types.GetConfigurationPolicyOutput,
        http_method = "GET",
        http_path = "/configurationPolicy/get/{Identifier}",
    }, options)
end

function Client:getConfigurationPolicyAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetConfigurationPolicyAssociation",
        input_schema = types.GetConfigurationPolicyAssociationInput,
        output_schema = types.GetConfigurationPolicyAssociationOutput,
        http_method = "POST",
        http_path = "/configurationPolicyAssociation/get",
    }, options)
end

function Client:getConnectorV2(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectorV2",
        input_schema = types.GetConnectorV2Input,
        output_schema = types.GetConnectorV2Output,
        http_method = "GET",
        http_path = "/connectorsv2/{ConnectorId+}",
    }, options)
end

function Client:getEnabledStandards(input, options)
    return self:invokeOperation(input, {
        name = "GetEnabledStandards",
        input_schema = types.GetEnabledStandardsInput,
        output_schema = types.GetEnabledStandardsOutput,
        http_method = "POST",
        http_path = "/standards/get",
    }, options)
end

function Client:getFindingAggregator(input, options)
    return self:invokeOperation(input, {
        name = "GetFindingAggregator",
        input_schema = types.GetFindingAggregatorInput,
        output_schema = types.GetFindingAggregatorOutput,
        http_method = "GET",
        http_path = "/findingAggregator/get/{FindingAggregatorArn+}",
    }, options)
end

function Client:getFindingHistory(input, options)
    return self:invokeOperation(input, {
        name = "GetFindingHistory",
        input_schema = types.GetFindingHistoryInput,
        output_schema = types.GetFindingHistoryOutput,
        http_method = "POST",
        http_path = "/findingHistory/get",
    }, options)
end

function Client:getFindings(input, options)
    return self:invokeOperation(input, {
        name = "GetFindings",
        input_schema = types.GetFindingsInput,
        output_schema = types.GetFindingsOutput,
        http_method = "POST",
        http_path = "/findings",
    }, options)
end

function Client:getFindingStatisticsV2(input, options)
    return self:invokeOperation(input, {
        name = "GetFindingStatisticsV2",
        input_schema = types.GetFindingStatisticsV2Input,
        output_schema = types.GetFindingStatisticsV2Output,
        http_method = "POST",
        http_path = "/findingsv2/statistics",
    }, options)
end

function Client:getFindingsTrendsV2(input, options)
    return self:invokeOperation(input, {
        name = "GetFindingsTrendsV2",
        input_schema = types.GetFindingsTrendsV2Input,
        output_schema = types.GetFindingsTrendsV2Output,
        http_method = "POST",
        http_path = "/findingsTrendsv2",
    }, options)
end

function Client:getFindingsV2(input, options)
    return self:invokeOperation(input, {
        name = "GetFindingsV2",
        input_schema = types.GetFindingsV2Input,
        output_schema = types.GetFindingsV2Output,
        http_method = "POST",
        http_path = "/findingsv2",
    }, options)
end

function Client:getInsightResults(input, options)
    return self:invokeOperation(input, {
        name = "GetInsightResults",
        input_schema = types.GetInsightResultsInput,
        output_schema = types.GetInsightResultsOutput,
        http_method = "GET",
        http_path = "/insights/results/{InsightArn+}",
    }, options)
end

function Client:getInsights(input, options)
    return self:invokeOperation(input, {
        name = "GetInsights",
        input_schema = types.GetInsightsInput,
        output_schema = types.GetInsightsOutput,
        http_method = "POST",
        http_path = "/insights/get",
    }, options)
end

function Client:getInvitationsCount(input, options)
    return self:invokeOperation(input, {
        name = "GetInvitationsCount",
        input_schema = types.GetInvitationsCountInput,
        output_schema = types.GetInvitationsCountOutput,
        http_method = "GET",
        http_path = "/invitations/count",
    }, options)
end

function Client:getMasterAccount(input, options)
    return self:invokeOperation(input, {
        name = "GetMasterAccount",
        input_schema = types.GetMasterAccountInput,
        output_schema = types.GetMasterAccountOutput,
        http_method = "GET",
        http_path = "/master",
    }, options)
end

function Client:getMembers(input, options)
    return self:invokeOperation(input, {
        name = "GetMembers",
        input_schema = types.GetMembersInput,
        output_schema = types.GetMembersOutput,
        http_method = "POST",
        http_path = "/members/get",
    }, options)
end

function Client:getResourcesStatisticsV2(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcesStatisticsV2",
        input_schema = types.GetResourcesStatisticsV2Input,
        output_schema = types.GetResourcesStatisticsV2Output,
        http_method = "POST",
        http_path = "/resourcesv2/statistics",
    }, options)
end

function Client:getResourcesTrendsV2(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcesTrendsV2",
        input_schema = types.GetResourcesTrendsV2Input,
        output_schema = types.GetResourcesTrendsV2Output,
        http_method = "POST",
        http_path = "/resourcesTrendsv2",
    }, options)
end

function Client:getResourcesV2(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcesV2",
        input_schema = types.GetResourcesV2Input,
        output_schema = types.GetResourcesV2Output,
        http_method = "POST",
        http_path = "/resourcesv2",
    }, options)
end

function Client:getSecurityControlDefinition(input, options)
    return self:invokeOperation(input, {
        name = "GetSecurityControlDefinition",
        input_schema = types.GetSecurityControlDefinitionInput,
        output_schema = types.GetSecurityControlDefinitionOutput,
        http_method = "GET",
        http_path = "/securityControl/definition",
    }, options)
end

function Client:inviteMembers(input, options)
    return self:invokeOperation(input, {
        name = "InviteMembers",
        input_schema = types.InviteMembersInput,
        output_schema = types.InviteMembersOutput,
        http_method = "POST",
        http_path = "/members/invite",
    }, options)
end

function Client:listAggregatorsV2(input, options)
    return self:invokeOperation(input, {
        name = "ListAggregatorsV2",
        input_schema = types.ListAggregatorsV2Input,
        output_schema = types.ListAggregatorsV2Output,
        http_method = "GET",
        http_path = "/aggregatorv2/list",
    }, options)
end

function Client:listAutomationRules(input, options)
    return self:invokeOperation(input, {
        name = "ListAutomationRules",
        input_schema = types.ListAutomationRulesInput,
        output_schema = types.ListAutomationRulesOutput,
        http_method = "GET",
        http_path = "/automationrules/list",
    }, options)
end

function Client:listAutomationRulesV2(input, options)
    return self:invokeOperation(input, {
        name = "ListAutomationRulesV2",
        input_schema = types.ListAutomationRulesV2Input,
        output_schema = types.ListAutomationRulesV2Output,
        http_method = "GET",
        http_path = "/automationrulesv2/list",
    }, options)
end

function Client:listConfigurationPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurationPolicies",
        input_schema = types.ListConfigurationPoliciesInput,
        output_schema = types.ListConfigurationPoliciesOutput,
        http_method = "GET",
        http_path = "/configurationPolicy/list",
    }, options)
end

function Client:listConfigurationPolicyAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurationPolicyAssociations",
        input_schema = types.ListConfigurationPolicyAssociationsInput,
        output_schema = types.ListConfigurationPolicyAssociationsOutput,
        http_method = "POST",
        http_path = "/configurationPolicyAssociation/list",
    }, options)
end

function Client:listConnectorsV2(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectorsV2",
        input_schema = types.ListConnectorsV2Input,
        output_schema = types.ListConnectorsV2Output,
        http_method = "GET",
        http_path = "/connectorsv2",
    }, options)
end

function Client:listEnabledProductsForImport(input, options)
    return self:invokeOperation(input, {
        name = "ListEnabledProductsForImport",
        input_schema = types.ListEnabledProductsForImportInput,
        output_schema = types.ListEnabledProductsForImportOutput,
        http_method = "GET",
        http_path = "/productSubscriptions",
    }, options)
end

function Client:listFindingAggregators(input, options)
    return self:invokeOperation(input, {
        name = "ListFindingAggregators",
        input_schema = types.ListFindingAggregatorsInput,
        output_schema = types.ListFindingAggregatorsOutput,
        http_method = "GET",
        http_path = "/findingAggregator/list",
    }, options)
end

function Client:listInvitations(input, options)
    return self:invokeOperation(input, {
        name = "ListInvitations",
        input_schema = types.ListInvitationsInput,
        output_schema = types.ListInvitationsOutput,
        http_method = "GET",
        http_path = "/invitations",
    }, options)
end

function Client:listMembers(input, options)
    return self:invokeOperation(input, {
        name = "ListMembers",
        input_schema = types.ListMembersInput,
        output_schema = types.ListMembersOutput,
        http_method = "GET",
        http_path = "/members",
    }, options)
end

function Client:listOrganizationAdminAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListOrganizationAdminAccounts",
        input_schema = types.ListOrganizationAdminAccountsInput,
        output_schema = types.ListOrganizationAdminAccountsOutput,
        http_method = "GET",
        http_path = "/organization/admin",
    }, options)
end

function Client:listSecurityControlDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityControlDefinitions",
        input_schema = types.ListSecurityControlDefinitionsInput,
        output_schema = types.ListSecurityControlDefinitionsOutput,
        http_method = "GET",
        http_path = "/securityControls/definitions",
    }, options)
end

function Client:listStandardsControlAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListStandardsControlAssociations",
        input_schema = types.ListStandardsControlAssociationsInput,
        output_schema = types.ListStandardsControlAssociationsOutput,
        http_method = "GET",
        http_path = "/associations",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:registerConnectorV2(input, options)
    return self:invokeOperation(input, {
        name = "RegisterConnectorV2",
        input_schema = types.RegisterConnectorV2Input,
        output_schema = types.RegisterConnectorV2Output,
        http_method = "POST",
        http_path = "/connectorsv2/register",
    }, options)
end

function Client:startConfigurationPolicyAssociation(input, options)
    return self:invokeOperation(input, {
        name = "StartConfigurationPolicyAssociation",
        input_schema = types.StartConfigurationPolicyAssociationInput,
        output_schema = types.StartConfigurationPolicyAssociationOutput,
        http_method = "POST",
        http_path = "/configurationPolicyAssociation/associate",
    }, options)
end

function Client:startConfigurationPolicyDisassociation(input, options)
    return self:invokeOperation(input, {
        name = "StartConfigurationPolicyDisassociation",
        input_schema = types.StartConfigurationPolicyDisassociationInput,
        output_schema = types.StartConfigurationPolicyDisassociationOutput,
        http_method = "POST",
        http_path = "/configurationPolicyAssociation/disassociate",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:updateActionTarget(input, options)
    return self:invokeOperation(input, {
        name = "UpdateActionTarget",
        input_schema = types.UpdateActionTargetInput,
        output_schema = types.UpdateActionTargetOutput,
        http_method = "PATCH",
        http_path = "/actionTargets/{ActionTargetArn+}",
    }, options)
end

function Client:updateAggregatorV2(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAggregatorV2",
        input_schema = types.UpdateAggregatorV2Input,
        output_schema = types.UpdateAggregatorV2Output,
        http_method = "PATCH",
        http_path = "/aggregatorv2/update/{AggregatorV2Arn+}",
    }, options)
end

function Client:updateAutomationRuleV2(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAutomationRuleV2",
        input_schema = types.UpdateAutomationRuleV2Input,
        output_schema = types.UpdateAutomationRuleV2Output,
        http_method = "PATCH",
        http_path = "/automationrulesv2/{Identifier}",
    }, options)
end

function Client:updateConfigurationPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfigurationPolicy",
        input_schema = types.UpdateConfigurationPolicyInput,
        output_schema = types.UpdateConfigurationPolicyOutput,
        http_method = "PATCH",
        http_path = "/configurationPolicy/{Identifier}",
    }, options)
end

function Client:updateConnectorV2(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnectorV2",
        input_schema = types.UpdateConnectorV2Input,
        output_schema = types.UpdateConnectorV2Output,
        http_method = "PATCH",
        http_path = "/connectorsv2/{ConnectorId+}",
    }, options)
end

function Client:updateFindingAggregator(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFindingAggregator",
        input_schema = types.UpdateFindingAggregatorInput,
        output_schema = types.UpdateFindingAggregatorOutput,
        http_method = "PATCH",
        http_path = "/findingAggregator/update",
    }, options)
end

function Client:updateFindings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFindings",
        input_schema = types.UpdateFindingsInput,
        output_schema = types.UpdateFindingsOutput,
        http_method = "PATCH",
        http_path = "/findings",
    }, options)
end

function Client:updateInsight(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInsight",
        input_schema = types.UpdateInsightInput,
        output_schema = types.UpdateInsightOutput,
        http_method = "PATCH",
        http_path = "/insights/{InsightArn+}",
    }, options)
end

function Client:updateOrganizationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOrganizationConfiguration",
        input_schema = types.UpdateOrganizationConfigurationInput,
        output_schema = types.UpdateOrganizationConfigurationOutput,
        http_method = "POST",
        http_path = "/organization/configuration",
    }, options)
end

function Client:updateSecurityControl(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSecurityControl",
        input_schema = types.UpdateSecurityControlInput,
        output_schema = types.UpdateSecurityControlOutput,
        http_method = "PATCH",
        http_path = "/securityControl/update",
    }, options)
end

function Client:updateSecurityHubConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSecurityHubConfiguration",
        input_schema = types.UpdateSecurityHubConfigurationInput,
        output_schema = types.UpdateSecurityHubConfigurationOutput,
        http_method = "PATCH",
        http_path = "/accounts",
    }, options)
end

function Client:updateStandardsControl(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStandardsControl",
        input_schema = types.UpdateStandardsControlInput,
        output_schema = types.UpdateStandardsControlOutput,
        http_method = "PATCH",
        http_path = "/standards/control/{StandardsControlArn+}",
    }, options)
end

return M
