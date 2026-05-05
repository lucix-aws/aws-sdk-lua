local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("securityhub.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("securityhub.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SecurityHubAPIService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "securityhub", signing_region = cfg.region } }
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

function Client:acceptAdministratorInvitation(input, options)
    return self:invokeOperation(input, {
        name = "AcceptAdministratorInvitation",
        input_schema = schemas.AcceptAdministratorInvitationInput,
        output_schema = schemas.AcceptAdministratorInvitationOutput,
        http_method = "POST",
        http_path = "/administrator",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:acceptInvitation(input, options)
    return self:invokeOperation(input, {
        name = "AcceptInvitation",
        input_schema = schemas.AcceptInvitationInput,
        output_schema = schemas.AcceptInvitationOutput,
        http_method = "POST",
        http_path = "/master",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeleteAutomationRules(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteAutomationRules",
        input_schema = schemas.BatchDeleteAutomationRulesInput,
        output_schema = schemas.BatchDeleteAutomationRulesOutput,
        http_method = "POST",
        http_path = "/automationrules/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDisableStandards(input, options)
    return self:invokeOperation(input, {
        name = "BatchDisableStandards",
        input_schema = schemas.BatchDisableStandardsInput,
        output_schema = schemas.BatchDisableStandardsOutput,
        http_method = "POST",
        http_path = "/standards/deregister",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchEnableStandards(input, options)
    return self:invokeOperation(input, {
        name = "BatchEnableStandards",
        input_schema = schemas.BatchEnableStandardsInput,
        output_schema = schemas.BatchEnableStandardsOutput,
        http_method = "POST",
        http_path = "/standards/register",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetAutomationRules(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetAutomationRules",
        input_schema = schemas.BatchGetAutomationRulesInput,
        output_schema = schemas.BatchGetAutomationRulesOutput,
        http_method = "POST",
        http_path = "/automationrules/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetConfigurationPolicyAssociations(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetConfigurationPolicyAssociations",
        input_schema = schemas.BatchGetConfigurationPolicyAssociationsInput,
        output_schema = schemas.BatchGetConfigurationPolicyAssociationsOutput,
        http_method = "POST",
        http_path = "/configurationPolicyAssociation/batchget",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetSecurityControls(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetSecurityControls",
        input_schema = schemas.BatchGetSecurityControlsInput,
        output_schema = schemas.BatchGetSecurityControlsOutput,
        http_method = "POST",
        http_path = "/securityControls/batchGet",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetStandardsControlAssociations(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetStandardsControlAssociations",
        input_schema = schemas.BatchGetStandardsControlAssociationsInput,
        output_schema = schemas.BatchGetStandardsControlAssociationsOutput,
        http_method = "POST",
        http_path = "/associations/batchGet",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchImportFindings(input, options)
    return self:invokeOperation(input, {
        name = "BatchImportFindings",
        input_schema = schemas.BatchImportFindingsInput,
        output_schema = schemas.BatchImportFindingsOutput,
        http_method = "POST",
        http_path = "/findings/import",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchUpdateAutomationRules(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateAutomationRules",
        input_schema = schemas.BatchUpdateAutomationRulesInput,
        output_schema = schemas.BatchUpdateAutomationRulesOutput,
        http_method = "PATCH",
        http_path = "/automationrules/update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchUpdateFindings(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateFindings",
        input_schema = schemas.BatchUpdateFindingsInput,
        output_schema = schemas.BatchUpdateFindingsOutput,
        http_method = "PATCH",
        http_path = "/findings/batchupdate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchUpdateFindingsV2(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateFindingsV2",
        input_schema = schemas.BatchUpdateFindingsV2Input,
        output_schema = schemas.BatchUpdateFindingsV2Output,
        http_method = "PATCH",
        http_path = "/findingsv2/batchupdatev2",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchUpdateStandardsControlAssociations(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateStandardsControlAssociations",
        input_schema = schemas.BatchUpdateStandardsControlAssociationsInput,
        output_schema = schemas.BatchUpdateStandardsControlAssociationsOutput,
        http_method = "PATCH",
        http_path = "/associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createActionTarget(input, options)
    return self:invokeOperation(input, {
        name = "CreateActionTarget",
        input_schema = schemas.CreateActionTargetInput,
        output_schema = schemas.CreateActionTargetOutput,
        http_method = "POST",
        http_path = "/actionTargets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAggregatorV2(input, options)
    return self:invokeOperation(input, {
        name = "CreateAggregatorV2",
        input_schema = schemas.CreateAggregatorV2Input,
        output_schema = schemas.CreateAggregatorV2Output,
        http_method = "POST",
        http_path = "/aggregatorv2/create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAutomationRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateAutomationRule",
        input_schema = schemas.CreateAutomationRuleInput,
        output_schema = schemas.CreateAutomationRuleOutput,
        http_method = "POST",
        http_path = "/automationrules/create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAutomationRuleV2(input, options)
    return self:invokeOperation(input, {
        name = "CreateAutomationRuleV2",
        input_schema = schemas.CreateAutomationRuleV2Input,
        output_schema = schemas.CreateAutomationRuleV2Output,
        http_method = "POST",
        http_path = "/automationrulesv2/create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConfigurationPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfigurationPolicy",
        input_schema = schemas.CreateConfigurationPolicyInput,
        output_schema = schemas.CreateConfigurationPolicyOutput,
        http_method = "POST",
        http_path = "/configurationPolicy/create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConnectorV2(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnectorV2",
        input_schema = schemas.CreateConnectorV2Input,
        output_schema = schemas.CreateConnectorV2Output,
        http_method = "POST",
        http_path = "/connectorsv2",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFindingAggregator(input, options)
    return self:invokeOperation(input, {
        name = "CreateFindingAggregator",
        input_schema = schemas.CreateFindingAggregatorInput,
        output_schema = schemas.CreateFindingAggregatorOutput,
        http_method = "POST",
        http_path = "/findingAggregator/create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInsight(input, options)
    return self:invokeOperation(input, {
        name = "CreateInsight",
        input_schema = schemas.CreateInsightInput,
        output_schema = schemas.CreateInsightOutput,
        http_method = "POST",
        http_path = "/insights",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMembers(input, options)
    return self:invokeOperation(input, {
        name = "CreateMembers",
        input_schema = schemas.CreateMembersInput,
        output_schema = schemas.CreateMembersOutput,
        http_method = "POST",
        http_path = "/members",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTicketV2(input, options)
    return self:invokeOperation(input, {
        name = "CreateTicketV2",
        input_schema = schemas.CreateTicketV2Input,
        output_schema = schemas.CreateTicketV2Output,
        http_method = "POST",
        http_path = "/ticketsv2",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:declineInvitations(input, options)
    return self:invokeOperation(input, {
        name = "DeclineInvitations",
        input_schema = schemas.DeclineInvitationsInput,
        output_schema = schemas.DeclineInvitationsOutput,
        http_method = "POST",
        http_path = "/invitations/decline",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteActionTarget(input, options)
    return self:invokeOperation(input, {
        name = "DeleteActionTarget",
        input_schema = schemas.DeleteActionTargetInput,
        output_schema = schemas.DeleteActionTargetOutput,
        http_method = "DELETE",
        http_path = "/actionTargets/{ActionTargetArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAggregatorV2(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAggregatorV2",
        input_schema = schemas.DeleteAggregatorV2Input,
        output_schema = schemas.DeleteAggregatorV2Output,
        http_method = "DELETE",
        http_path = "/aggregatorv2/delete/{AggregatorV2Arn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAutomationRuleV2(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAutomationRuleV2",
        input_schema = schemas.DeleteAutomationRuleV2Input,
        output_schema = schemas.DeleteAutomationRuleV2Output,
        http_method = "DELETE",
        http_path = "/automationrulesv2/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConfigurationPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfigurationPolicy",
        input_schema = schemas.DeleteConfigurationPolicyInput,
        output_schema = schemas.DeleteConfigurationPolicyOutput,
        http_method = "DELETE",
        http_path = "/configurationPolicy/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConnectorV2(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnectorV2",
        input_schema = schemas.DeleteConnectorV2Input,
        output_schema = schemas.DeleteConnectorV2Output,
        http_method = "DELETE",
        http_path = "/connectorsv2/{ConnectorId+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFindingAggregator(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFindingAggregator",
        input_schema = schemas.DeleteFindingAggregatorInput,
        output_schema = schemas.DeleteFindingAggregatorOutput,
        http_method = "DELETE",
        http_path = "/findingAggregator/delete/{FindingAggregatorArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInsight(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInsight",
        input_schema = schemas.DeleteInsightInput,
        output_schema = schemas.DeleteInsightOutput,
        http_method = "DELETE",
        http_path = "/insights/{InsightArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInvitations(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInvitations",
        input_schema = schemas.DeleteInvitationsInput,
        output_schema = schemas.DeleteInvitationsOutput,
        http_method = "POST",
        http_path = "/invitations/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMembers(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMembers",
        input_schema = schemas.DeleteMembersInput,
        output_schema = schemas.DeleteMembersOutput,
        http_method = "POST",
        http_path = "/members/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeActionTargets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeActionTargets",
        input_schema = schemas.DescribeActionTargetsInput,
        output_schema = schemas.DescribeActionTargetsOutput,
        http_method = "POST",
        http_path = "/actionTargets/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeHub(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHub",
        input_schema = schemas.DescribeHubInput,
        output_schema = schemas.DescribeHubOutput,
        http_method = "GET",
        http_path = "/accounts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOrganizationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrganizationConfiguration",
        input_schema = schemas.DescribeOrganizationConfigurationInput,
        output_schema = schemas.DescribeOrganizationConfigurationOutput,
        http_method = "GET",
        http_path = "/organization/configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProducts(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProducts",
        input_schema = schemas.DescribeProductsInput,
        output_schema = schemas.DescribeProductsOutput,
        http_method = "GET",
        http_path = "/products",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProductsV2(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProductsV2",
        input_schema = schemas.DescribeProductsV2Input,
        output_schema = schemas.DescribeProductsV2Output,
        http_method = "GET",
        http_path = "/productsV2",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSecurityHubV2(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSecurityHubV2",
        input_schema = schemas.DescribeSecurityHubV2Input,
        output_schema = schemas.DescribeSecurityHubV2Output,
        http_method = "GET",
        http_path = "/hubv2",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStandards(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStandards",
        input_schema = schemas.DescribeStandardsInput,
        output_schema = schemas.DescribeStandardsOutput,
        http_method = "GET",
        http_path = "/standards",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStandardsControls(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStandardsControls",
        input_schema = schemas.DescribeStandardsControlsInput,
        output_schema = schemas.DescribeStandardsControlsOutput,
        http_method = "GET",
        http_path = "/standards/controls/{StandardsSubscriptionArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableImportFindingsForProduct(input, options)
    return self:invokeOperation(input, {
        name = "DisableImportFindingsForProduct",
        input_schema = schemas.DisableImportFindingsForProductInput,
        output_schema = schemas.DisableImportFindingsForProductOutput,
        http_method = "DELETE",
        http_path = "/productSubscriptions/{ProductSubscriptionArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableOrganizationAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "DisableOrganizationAdminAccount",
        input_schema = schemas.DisableOrganizationAdminAccountInput,
        output_schema = schemas.DisableOrganizationAdminAccountOutput,
        http_method = "POST",
        http_path = "/organization/admin/disable",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableSecurityHub(input, options)
    return self:invokeOperation(input, {
        name = "DisableSecurityHub",
        input_schema = schemas.DisableSecurityHubInput,
        output_schema = schemas.DisableSecurityHubOutput,
        http_method = "DELETE",
        http_path = "/accounts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableSecurityHubV2(input, options)
    return self:invokeOperation(input, {
        name = "DisableSecurityHubV2",
        input_schema = schemas.DisableSecurityHubV2Input,
        output_schema = schemas.DisableSecurityHubV2Output,
        http_method = "DELETE",
        http_path = "/hubv2",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateFromAdministratorAccount(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateFromAdministratorAccount",
        input_schema = schemas.DisassociateFromAdministratorAccountInput,
        output_schema = schemas.DisassociateFromAdministratorAccountOutput,
        http_method = "POST",
        http_path = "/administrator/disassociate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateFromMasterAccount(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateFromMasterAccount",
        input_schema = schemas.DisassociateFromMasterAccountInput,
        output_schema = schemas.DisassociateFromMasterAccountOutput,
        http_method = "POST",
        http_path = "/master/disassociate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateMembers(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateMembers",
        input_schema = schemas.DisassociateMembersInput,
        output_schema = schemas.DisassociateMembersOutput,
        http_method = "POST",
        http_path = "/members/disassociate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableImportFindingsForProduct(input, options)
    return self:invokeOperation(input, {
        name = "EnableImportFindingsForProduct",
        input_schema = schemas.EnableImportFindingsForProductInput,
        output_schema = schemas.EnableImportFindingsForProductOutput,
        http_method = "POST",
        http_path = "/productSubscriptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableOrganizationAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "EnableOrganizationAdminAccount",
        input_schema = schemas.EnableOrganizationAdminAccountInput,
        output_schema = schemas.EnableOrganizationAdminAccountOutput,
        http_method = "POST",
        http_path = "/organization/admin/enable",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableSecurityHub(input, options)
    return self:invokeOperation(input, {
        name = "EnableSecurityHub",
        input_schema = schemas.EnableSecurityHubInput,
        output_schema = schemas.EnableSecurityHubOutput,
        http_method = "POST",
        http_path = "/accounts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableSecurityHubV2(input, options)
    return self:invokeOperation(input, {
        name = "EnableSecurityHubV2",
        input_schema = schemas.EnableSecurityHubV2Input,
        output_schema = schemas.EnableSecurityHubV2Output,
        http_method = "POST",
        http_path = "/hubv2",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAdministratorAccount(input, options)
    return self:invokeOperation(input, {
        name = "GetAdministratorAccount",
        input_schema = schemas.GetAdministratorAccountInput,
        output_schema = schemas.GetAdministratorAccountOutput,
        http_method = "GET",
        http_path = "/administrator",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAggregatorV2(input, options)
    return self:invokeOperation(input, {
        name = "GetAggregatorV2",
        input_schema = schemas.GetAggregatorV2Input,
        output_schema = schemas.GetAggregatorV2Output,
        http_method = "GET",
        http_path = "/aggregatorv2/get/{AggregatorV2Arn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAutomationRuleV2(input, options)
    return self:invokeOperation(input, {
        name = "GetAutomationRuleV2",
        input_schema = schemas.GetAutomationRuleV2Input,
        output_schema = schemas.GetAutomationRuleV2Output,
        http_method = "GET",
        http_path = "/automationrulesv2/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConfigurationPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetConfigurationPolicy",
        input_schema = schemas.GetConfigurationPolicyInput,
        output_schema = schemas.GetConfigurationPolicyOutput,
        http_method = "GET",
        http_path = "/configurationPolicy/get/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConfigurationPolicyAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetConfigurationPolicyAssociation",
        input_schema = schemas.GetConfigurationPolicyAssociationInput,
        output_schema = schemas.GetConfigurationPolicyAssociationOutput,
        http_method = "POST",
        http_path = "/configurationPolicyAssociation/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnectorV2(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectorV2",
        input_schema = schemas.GetConnectorV2Input,
        output_schema = schemas.GetConnectorV2Output,
        http_method = "GET",
        http_path = "/connectorsv2/{ConnectorId+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEnabledStandards(input, options)
    return self:invokeOperation(input, {
        name = "GetEnabledStandards",
        input_schema = schemas.GetEnabledStandardsInput,
        output_schema = schemas.GetEnabledStandardsOutput,
        http_method = "POST",
        http_path = "/standards/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFindingAggregator(input, options)
    return self:invokeOperation(input, {
        name = "GetFindingAggregator",
        input_schema = schemas.GetFindingAggregatorInput,
        output_schema = schemas.GetFindingAggregatorOutput,
        http_method = "GET",
        http_path = "/findingAggregator/get/{FindingAggregatorArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFindingHistory(input, options)
    return self:invokeOperation(input, {
        name = "GetFindingHistory",
        input_schema = schemas.GetFindingHistoryInput,
        output_schema = schemas.GetFindingHistoryOutput,
        http_method = "POST",
        http_path = "/findingHistory/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFindings(input, options)
    return self:invokeOperation(input, {
        name = "GetFindings",
        input_schema = schemas.GetFindingsInput,
        output_schema = schemas.GetFindingsOutput,
        http_method = "POST",
        http_path = "/findings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFindingStatisticsV2(input, options)
    return self:invokeOperation(input, {
        name = "GetFindingStatisticsV2",
        input_schema = schemas.GetFindingStatisticsV2Input,
        output_schema = schemas.GetFindingStatisticsV2Output,
        http_method = "POST",
        http_path = "/findingsv2/statistics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFindingsTrendsV2(input, options)
    return self:invokeOperation(input, {
        name = "GetFindingsTrendsV2",
        input_schema = schemas.GetFindingsTrendsV2Input,
        output_schema = schemas.GetFindingsTrendsV2Output,
        http_method = "POST",
        http_path = "/findingsTrendsv2",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFindingsV2(input, options)
    return self:invokeOperation(input, {
        name = "GetFindingsV2",
        input_schema = schemas.GetFindingsV2Input,
        output_schema = schemas.GetFindingsV2Output,
        http_method = "POST",
        http_path = "/findingsv2",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInsightResults(input, options)
    return self:invokeOperation(input, {
        name = "GetInsightResults",
        input_schema = schemas.GetInsightResultsInput,
        output_schema = schemas.GetInsightResultsOutput,
        http_method = "GET",
        http_path = "/insights/results/{InsightArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInsights(input, options)
    return self:invokeOperation(input, {
        name = "GetInsights",
        input_schema = schemas.GetInsightsInput,
        output_schema = schemas.GetInsightsOutput,
        http_method = "POST",
        http_path = "/insights/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInvitationsCount(input, options)
    return self:invokeOperation(input, {
        name = "GetInvitationsCount",
        input_schema = schemas.GetInvitationsCountInput,
        output_schema = schemas.GetInvitationsCountOutput,
        http_method = "GET",
        http_path = "/invitations/count",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMasterAccount(input, options)
    return self:invokeOperation(input, {
        name = "GetMasterAccount",
        input_schema = schemas.GetMasterAccountInput,
        output_schema = schemas.GetMasterAccountOutput,
        http_method = "GET",
        http_path = "/master",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMembers(input, options)
    return self:invokeOperation(input, {
        name = "GetMembers",
        input_schema = schemas.GetMembersInput,
        output_schema = schemas.GetMembersOutput,
        http_method = "POST",
        http_path = "/members/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourcesStatisticsV2(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcesStatisticsV2",
        input_schema = schemas.GetResourcesStatisticsV2Input,
        output_schema = schemas.GetResourcesStatisticsV2Output,
        http_method = "POST",
        http_path = "/resourcesv2/statistics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourcesTrendsV2(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcesTrendsV2",
        input_schema = schemas.GetResourcesTrendsV2Input,
        output_schema = schemas.GetResourcesTrendsV2Output,
        http_method = "POST",
        http_path = "/resourcesTrendsv2",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourcesV2(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcesV2",
        input_schema = schemas.GetResourcesV2Input,
        output_schema = schemas.GetResourcesV2Output,
        http_method = "POST",
        http_path = "/resourcesv2",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSecurityControlDefinition(input, options)
    return self:invokeOperation(input, {
        name = "GetSecurityControlDefinition",
        input_schema = schemas.GetSecurityControlDefinitionInput,
        output_schema = schemas.GetSecurityControlDefinitionOutput,
        http_method = "GET",
        http_path = "/securityControl/definition",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:inviteMembers(input, options)
    return self:invokeOperation(input, {
        name = "InviteMembers",
        input_schema = schemas.InviteMembersInput,
        output_schema = schemas.InviteMembersOutput,
        http_method = "POST",
        http_path = "/members/invite",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAggregatorsV2(input, options)
    return self:invokeOperation(input, {
        name = "ListAggregatorsV2",
        input_schema = schemas.ListAggregatorsV2Input,
        output_schema = schemas.ListAggregatorsV2Output,
        http_method = "GET",
        http_path = "/aggregatorv2/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAutomationRules(input, options)
    return self:invokeOperation(input, {
        name = "ListAutomationRules",
        input_schema = schemas.ListAutomationRulesInput,
        output_schema = schemas.ListAutomationRulesOutput,
        http_method = "GET",
        http_path = "/automationrules/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAutomationRulesV2(input, options)
    return self:invokeOperation(input, {
        name = "ListAutomationRulesV2",
        input_schema = schemas.ListAutomationRulesV2Input,
        output_schema = schemas.ListAutomationRulesV2Output,
        http_method = "GET",
        http_path = "/automationrulesv2/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConfigurationPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurationPolicies",
        input_schema = schemas.ListConfigurationPoliciesInput,
        output_schema = schemas.ListConfigurationPoliciesOutput,
        http_method = "GET",
        http_path = "/configurationPolicy/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConfigurationPolicyAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurationPolicyAssociations",
        input_schema = schemas.ListConfigurationPolicyAssociationsInput,
        output_schema = schemas.ListConfigurationPolicyAssociationsOutput,
        http_method = "POST",
        http_path = "/configurationPolicyAssociation/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConnectorsV2(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectorsV2",
        input_schema = schemas.ListConnectorsV2Input,
        output_schema = schemas.ListConnectorsV2Output,
        http_method = "GET",
        http_path = "/connectorsv2",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEnabledProductsForImport(input, options)
    return self:invokeOperation(input, {
        name = "ListEnabledProductsForImport",
        input_schema = schemas.ListEnabledProductsForImportInput,
        output_schema = schemas.ListEnabledProductsForImportOutput,
        http_method = "GET",
        http_path = "/productSubscriptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFindingAggregators(input, options)
    return self:invokeOperation(input, {
        name = "ListFindingAggregators",
        input_schema = schemas.ListFindingAggregatorsInput,
        output_schema = schemas.ListFindingAggregatorsOutput,
        http_method = "GET",
        http_path = "/findingAggregator/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInvitations(input, options)
    return self:invokeOperation(input, {
        name = "ListInvitations",
        input_schema = schemas.ListInvitationsInput,
        output_schema = schemas.ListInvitationsOutput,
        http_method = "GET",
        http_path = "/invitations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMembers(input, options)
    return self:invokeOperation(input, {
        name = "ListMembers",
        input_schema = schemas.ListMembersInput,
        output_schema = schemas.ListMembersOutput,
        http_method = "GET",
        http_path = "/members",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOrganizationAdminAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListOrganizationAdminAccounts",
        input_schema = schemas.ListOrganizationAdminAccountsInput,
        output_schema = schemas.ListOrganizationAdminAccountsOutput,
        http_method = "GET",
        http_path = "/organization/admin",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSecurityControlDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityControlDefinitions",
        input_schema = schemas.ListSecurityControlDefinitionsInput,
        output_schema = schemas.ListSecurityControlDefinitionsOutput,
        http_method = "GET",
        http_path = "/securityControls/definitions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStandardsControlAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListStandardsControlAssociations",
        input_schema = schemas.ListStandardsControlAssociationsInput,
        output_schema = schemas.ListStandardsControlAssociationsOutput,
        http_method = "GET",
        http_path = "/associations",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerConnectorV2(input, options)
    return self:invokeOperation(input, {
        name = "RegisterConnectorV2",
        input_schema = schemas.RegisterConnectorV2Input,
        output_schema = schemas.RegisterConnectorV2Output,
        http_method = "POST",
        http_path = "/connectorsv2/register",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startConfigurationPolicyAssociation(input, options)
    return self:invokeOperation(input, {
        name = "StartConfigurationPolicyAssociation",
        input_schema = schemas.StartConfigurationPolicyAssociationInput,
        output_schema = schemas.StartConfigurationPolicyAssociationOutput,
        http_method = "POST",
        http_path = "/configurationPolicyAssociation/associate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startConfigurationPolicyDisassociation(input, options)
    return self:invokeOperation(input, {
        name = "StartConfigurationPolicyDisassociation",
        input_schema = schemas.StartConfigurationPolicyDisassociationInput,
        output_schema = schemas.StartConfigurationPolicyDisassociationOutput,
        http_method = "POST",
        http_path = "/configurationPolicyAssociation/disassociate",
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
        http_path = "/tags/{ResourceArn}",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateActionTarget(input, options)
    return self:invokeOperation(input, {
        name = "UpdateActionTarget",
        input_schema = schemas.UpdateActionTargetInput,
        output_schema = schemas.UpdateActionTargetOutput,
        http_method = "PATCH",
        http_path = "/actionTargets/{ActionTargetArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAggregatorV2(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAggregatorV2",
        input_schema = schemas.UpdateAggregatorV2Input,
        output_schema = schemas.UpdateAggregatorV2Output,
        http_method = "PATCH",
        http_path = "/aggregatorv2/update/{AggregatorV2Arn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAutomationRuleV2(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAutomationRuleV2",
        input_schema = schemas.UpdateAutomationRuleV2Input,
        output_schema = schemas.UpdateAutomationRuleV2Output,
        http_method = "PATCH",
        http_path = "/automationrulesv2/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConfigurationPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfigurationPolicy",
        input_schema = schemas.UpdateConfigurationPolicyInput,
        output_schema = schemas.UpdateConfigurationPolicyOutput,
        http_method = "PATCH",
        http_path = "/configurationPolicy/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConnectorV2(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnectorV2",
        input_schema = schemas.UpdateConnectorV2Input,
        output_schema = schemas.UpdateConnectorV2Output,
        http_method = "PATCH",
        http_path = "/connectorsv2/{ConnectorId+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFindingAggregator(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFindingAggregator",
        input_schema = schemas.UpdateFindingAggregatorInput,
        output_schema = schemas.UpdateFindingAggregatorOutput,
        http_method = "PATCH",
        http_path = "/findingAggregator/update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFindings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFindings",
        input_schema = schemas.UpdateFindingsInput,
        output_schema = schemas.UpdateFindingsOutput,
        http_method = "PATCH",
        http_path = "/findings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateInsight(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInsight",
        input_schema = schemas.UpdateInsightInput,
        output_schema = schemas.UpdateInsightOutput,
        http_method = "PATCH",
        http_path = "/insights/{InsightArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateOrganizationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOrganizationConfiguration",
        input_schema = schemas.UpdateOrganizationConfigurationInput,
        output_schema = schemas.UpdateOrganizationConfigurationOutput,
        http_method = "POST",
        http_path = "/organization/configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSecurityControl(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSecurityControl",
        input_schema = schemas.UpdateSecurityControlInput,
        output_schema = schemas.UpdateSecurityControlOutput,
        http_method = "PATCH",
        http_path = "/securityControl/update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSecurityHubConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSecurityHubConfiguration",
        input_schema = schemas.UpdateSecurityHubConfigurationInput,
        output_schema = schemas.UpdateSecurityHubConfigurationOutput,
        http_method = "PATCH",
        http_path = "/accounts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateStandardsControl(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStandardsControl",
        input_schema = schemas.UpdateStandardsControlInput,
        output_schema = schemas.UpdateStandardsControlOutput,
        http_method = "PATCH",
        http_path = "/standards/control/{StandardsControlArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
