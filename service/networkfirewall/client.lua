local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("networkfirewall.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("networkfirewall.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "NetworkFirewall_20201112"
    cfg.signing_name = "network-firewall"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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

function Client:acceptNetworkFirewallTransitGatewayAttachment(input, options)
    return self:invokeOperation(input, {
        name = "AcceptNetworkFirewallTransitGatewayAttachment",
        input_schema = types.AcceptNetworkFirewallTransitGatewayAttachmentInput,
        output_schema = types.AcceptNetworkFirewallTransitGatewayAttachmentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateAvailabilityZones(input, options)
    return self:invokeOperation(input, {
        name = "AssociateAvailabilityZones",
        input_schema = types.AssociateAvailabilityZonesInput,
        output_schema = types.AssociateAvailabilityZonesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateFirewallPolicy(input, options)
    return self:invokeOperation(input, {
        name = "AssociateFirewallPolicy",
        input_schema = types.AssociateFirewallPolicyInput,
        output_schema = types.AssociateFirewallPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateSubnets(input, options)
    return self:invokeOperation(input, {
        name = "AssociateSubnets",
        input_schema = types.AssociateSubnetsInput,
        output_schema = types.AssociateSubnetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:attachRuleGroupsToProxyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "AttachRuleGroupsToProxyConfiguration",
        input_schema = types.AttachRuleGroupsToProxyConfigurationInput,
        output_schema = types.AttachRuleGroupsToProxyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createFirewall(input, options)
    return self:invokeOperation(input, {
        name = "CreateFirewall",
        input_schema = types.CreateFirewallInput,
        output_schema = types.CreateFirewallOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createFirewallPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateFirewallPolicy",
        input_schema = types.CreateFirewallPolicyInput,
        output_schema = types.CreateFirewallPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createProxy(input, options)
    return self:invokeOperation(input, {
        name = "CreateProxy",
        input_schema = types.CreateProxyInput,
        output_schema = types.CreateProxyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createProxyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateProxyConfiguration",
        input_schema = types.CreateProxyConfigurationInput,
        output_schema = types.CreateProxyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createProxyRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateProxyRuleGroup",
        input_schema = types.CreateProxyRuleGroupInput,
        output_schema = types.CreateProxyRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createProxyRules(input, options)
    return self:invokeOperation(input, {
        name = "CreateProxyRules",
        input_schema = types.CreateProxyRulesInput,
        output_schema = types.CreateProxyRulesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateRuleGroup",
        input_schema = types.CreateRuleGroupInput,
        output_schema = types.CreateRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createTLSInspectionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateTLSInspectionConfiguration",
        input_schema = types.CreateTLSInspectionConfigurationInput,
        output_schema = types.CreateTLSInspectionConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createVpcEndpointAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcEndpointAssociation",
        input_schema = types.CreateVpcEndpointAssociationInput,
        output_schema = types.CreateVpcEndpointAssociationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteFirewall(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFirewall",
        input_schema = types.DeleteFirewallInput,
        output_schema = types.DeleteFirewallOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteFirewallPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFirewallPolicy",
        input_schema = types.DeleteFirewallPolicyInput,
        output_schema = types.DeleteFirewallPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteNetworkFirewallTransitGatewayAttachment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNetworkFirewallTransitGatewayAttachment",
        input_schema = types.DeleteNetworkFirewallTransitGatewayAttachmentInput,
        output_schema = types.DeleteNetworkFirewallTransitGatewayAttachmentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteProxy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProxy",
        input_schema = types.DeleteProxyInput,
        output_schema = types.DeleteProxyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteProxyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProxyConfiguration",
        input_schema = types.DeleteProxyConfigurationInput,
        output_schema = types.DeleteProxyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteProxyRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProxyRuleGroup",
        input_schema = types.DeleteProxyRuleGroupInput,
        output_schema = types.DeleteProxyRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteProxyRules(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProxyRules",
        input_schema = types.DeleteProxyRulesInput,
        output_schema = types.DeleteProxyRulesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRuleGroup",
        input_schema = types.DeleteRuleGroupInput,
        output_schema = types.DeleteRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTLSInspectionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTLSInspectionConfiguration",
        input_schema = types.DeleteTLSInspectionConfigurationInput,
        output_schema = types.DeleteTLSInspectionConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteVpcEndpointAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcEndpointAssociation",
        input_schema = types.DeleteVpcEndpointAssociationInput,
        output_schema = types.DeleteVpcEndpointAssociationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFirewall(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFirewall",
        input_schema = types.DescribeFirewallInput,
        output_schema = types.DescribeFirewallOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFirewallMetadata(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFirewallMetadata",
        input_schema = types.DescribeFirewallMetadataInput,
        output_schema = types.DescribeFirewallMetadataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFirewallPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFirewallPolicy",
        input_schema = types.DescribeFirewallPolicyInput,
        output_schema = types.DescribeFirewallPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFlowOperation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFlowOperation",
        input_schema = types.DescribeFlowOperationInput,
        output_schema = types.DescribeFlowOperationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLoggingConfiguration",
        input_schema = types.DescribeLoggingConfigurationInput,
        output_schema = types.DescribeLoggingConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeProxy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProxy",
        input_schema = types.DescribeProxyInput,
        output_schema = types.DescribeProxyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeProxyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProxyConfiguration",
        input_schema = types.DescribeProxyConfigurationInput,
        output_schema = types.DescribeProxyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeProxyRule(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProxyRule",
        input_schema = types.DescribeProxyRuleInput,
        output_schema = types.DescribeProxyRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeProxyRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProxyRuleGroup",
        input_schema = types.DescribeProxyRuleGroupInput,
        output_schema = types.DescribeProxyRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResourcePolicy",
        input_schema = types.DescribeResourcePolicyInput,
        output_schema = types.DescribeResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRuleGroup",
        input_schema = types.DescribeRuleGroupInput,
        output_schema = types.DescribeRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeRuleGroupMetadata(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRuleGroupMetadata",
        input_schema = types.DescribeRuleGroupMetadataInput,
        output_schema = types.DescribeRuleGroupMetadataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeRuleGroupSummary(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRuleGroupSummary",
        input_schema = types.DescribeRuleGroupSummaryInput,
        output_schema = types.DescribeRuleGroupSummaryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTLSInspectionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTLSInspectionConfiguration",
        input_schema = types.DescribeTLSInspectionConfigurationInput,
        output_schema = types.DescribeTLSInspectionConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeVpcEndpointAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcEndpointAssociation",
        input_schema = types.DescribeVpcEndpointAssociationInput,
        output_schema = types.DescribeVpcEndpointAssociationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:detachRuleGroupsFromProxyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DetachRuleGroupsFromProxyConfiguration",
        input_schema = types.DetachRuleGroupsFromProxyConfigurationInput,
        output_schema = types.DetachRuleGroupsFromProxyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateAvailabilityZones(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateAvailabilityZones",
        input_schema = types.DisassociateAvailabilityZonesInput,
        output_schema = types.DisassociateAvailabilityZonesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateSubnets(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateSubnets",
        input_schema = types.DisassociateSubnetsInput,
        output_schema = types.DisassociateSubnetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAnalysisReportResults(input, options)
    return self:invokeOperation(input, {
        name = "GetAnalysisReportResults",
        input_schema = types.GetAnalysisReportResultsInput,
        output_schema = types.GetAnalysisReportResultsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAnalysisReports(input, options)
    return self:invokeOperation(input, {
        name = "ListAnalysisReports",
        input_schema = types.ListAnalysisReportsInput,
        output_schema = types.ListAnalysisReportsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFirewallPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListFirewallPolicies",
        input_schema = types.ListFirewallPoliciesInput,
        output_schema = types.ListFirewallPoliciesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFirewalls(input, options)
    return self:invokeOperation(input, {
        name = "ListFirewalls",
        input_schema = types.ListFirewallsInput,
        output_schema = types.ListFirewallsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFlowOperationResults(input, options)
    return self:invokeOperation(input, {
        name = "ListFlowOperationResults",
        input_schema = types.ListFlowOperationResultsInput,
        output_schema = types.ListFlowOperationResultsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFlowOperations(input, options)
    return self:invokeOperation(input, {
        name = "ListFlowOperations",
        input_schema = types.ListFlowOperationsInput,
        output_schema = types.ListFlowOperationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listProxies(input, options)
    return self:invokeOperation(input, {
        name = "ListProxies",
        input_schema = types.ListProxiesInput,
        output_schema = types.ListProxiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listProxyConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListProxyConfigurations",
        input_schema = types.ListProxyConfigurationsInput,
        output_schema = types.ListProxyConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listProxyRuleGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListProxyRuleGroups",
        input_schema = types.ListProxyRuleGroupsInput,
        output_schema = types.ListProxyRuleGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRuleGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListRuleGroups",
        input_schema = types.ListRuleGroupsInput,
        output_schema = types.ListRuleGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTLSInspectionConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListTLSInspectionConfigurations",
        input_schema = types.ListTLSInspectionConfigurationsInput,
        output_schema = types.ListTLSInspectionConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listVpcEndpointAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListVpcEndpointAssociations",
        input_schema = types.ListVpcEndpointAssociationsInput,
        output_schema = types.ListVpcEndpointAssociationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:rejectNetworkFirewallTransitGatewayAttachment(input, options)
    return self:invokeOperation(input, {
        name = "RejectNetworkFirewallTransitGatewayAttachment",
        input_schema = types.RejectNetworkFirewallTransitGatewayAttachmentInput,
        output_schema = types.RejectNetworkFirewallTransitGatewayAttachmentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startAnalysisReport(input, options)
    return self:invokeOperation(input, {
        name = "StartAnalysisReport",
        input_schema = types.StartAnalysisReportInput,
        output_schema = types.StartAnalysisReportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startFlowCapture(input, options)
    return self:invokeOperation(input, {
        name = "StartFlowCapture",
        input_schema = types.StartFlowCaptureInput,
        output_schema = types.StartFlowCaptureOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startFlowFlush(input, options)
    return self:invokeOperation(input, {
        name = "StartFlowFlush",
        input_schema = types.StartFlowFlushInput,
        output_schema = types.StartFlowFlushOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateAvailabilityZoneChangeProtection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAvailabilityZoneChangeProtection",
        input_schema = types.UpdateAvailabilityZoneChangeProtectionInput,
        output_schema = types.UpdateAvailabilityZoneChangeProtectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateFirewallAnalysisSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFirewallAnalysisSettings",
        input_schema = types.UpdateFirewallAnalysisSettingsInput,
        output_schema = types.UpdateFirewallAnalysisSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateFirewallDeleteProtection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFirewallDeleteProtection",
        input_schema = types.UpdateFirewallDeleteProtectionInput,
        output_schema = types.UpdateFirewallDeleteProtectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateFirewallDescription(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFirewallDescription",
        input_schema = types.UpdateFirewallDescriptionInput,
        output_schema = types.UpdateFirewallDescriptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateFirewallEncryptionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFirewallEncryptionConfiguration",
        input_schema = types.UpdateFirewallEncryptionConfigurationInput,
        output_schema = types.UpdateFirewallEncryptionConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateFirewallPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFirewallPolicy",
        input_schema = types.UpdateFirewallPolicyInput,
        output_schema = types.UpdateFirewallPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateFirewallPolicyChangeProtection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFirewallPolicyChangeProtection",
        input_schema = types.UpdateFirewallPolicyChangeProtectionInput,
        output_schema = types.UpdateFirewallPolicyChangeProtectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLoggingConfiguration",
        input_schema = types.UpdateLoggingConfigurationInput,
        output_schema = types.UpdateLoggingConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateProxy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProxy",
        input_schema = types.UpdateProxyInput,
        output_schema = types.UpdateProxyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateProxyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProxyConfiguration",
        input_schema = types.UpdateProxyConfigurationInput,
        output_schema = types.UpdateProxyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateProxyRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProxyRule",
        input_schema = types.UpdateProxyRuleInput,
        output_schema = types.UpdateProxyRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateProxyRuleGroupPriorities(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProxyRuleGroupPriorities",
        input_schema = types.UpdateProxyRuleGroupPrioritiesInput,
        output_schema = types.UpdateProxyRuleGroupPrioritiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateProxyRulePriorities(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProxyRulePriorities",
        input_schema = types.UpdateProxyRulePrioritiesInput,
        output_schema = types.UpdateProxyRulePrioritiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRuleGroup",
        input_schema = types.UpdateRuleGroupInput,
        output_schema = types.UpdateRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSubnetChangeProtection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSubnetChangeProtection",
        input_schema = types.UpdateSubnetChangeProtectionInput,
        output_schema = types.UpdateSubnetChangeProtectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateTLSInspectionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTLSInspectionConfiguration",
        input_schema = types.UpdateTLSInspectionConfigurationInput,
        output_schema = types.UpdateTLSInspectionConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
