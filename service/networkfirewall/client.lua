local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("networkfirewall.endpoint_rules")
local schemas = require("networkfirewall.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "NetworkFirewall_20201112"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "network-firewall", signing_region = cfg.region } }
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

function Client:acceptNetworkFirewallTransitGatewayAttachment(input, options)
    return self:invokeOperation(input, {
        name = "AcceptNetworkFirewallTransitGatewayAttachment",
        input_schema = schemas.AcceptNetworkFirewallTransitGatewayAttachmentInput,
        output_schema = schemas.AcceptNetworkFirewallTransitGatewayAttachmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateAvailabilityZones(input, options)
    return self:invokeOperation(input, {
        name = "AssociateAvailabilityZones",
        input_schema = schemas.AssociateAvailabilityZonesInput,
        output_schema = schemas.AssociateAvailabilityZonesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateFirewallPolicy(input, options)
    return self:invokeOperation(input, {
        name = "AssociateFirewallPolicy",
        input_schema = schemas.AssociateFirewallPolicyInput,
        output_schema = schemas.AssociateFirewallPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateSubnets(input, options)
    return self:invokeOperation(input, {
        name = "AssociateSubnets",
        input_schema = schemas.AssociateSubnetsInput,
        output_schema = schemas.AssociateSubnetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachRuleGroupsToProxyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "AttachRuleGroupsToProxyConfiguration",
        input_schema = schemas.AttachRuleGroupsToProxyConfigurationInput,
        output_schema = schemas.AttachRuleGroupsToProxyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFirewall(input, options)
    return self:invokeOperation(input, {
        name = "CreateFirewall",
        input_schema = schemas.CreateFirewallInput,
        output_schema = schemas.CreateFirewallOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFirewallPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateFirewallPolicy",
        input_schema = schemas.CreateFirewallPolicyInput,
        output_schema = schemas.CreateFirewallPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProxy(input, options)
    return self:invokeOperation(input, {
        name = "CreateProxy",
        input_schema = schemas.CreateProxyInput,
        output_schema = schemas.CreateProxyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProxyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateProxyConfiguration",
        input_schema = schemas.CreateProxyConfigurationInput,
        output_schema = schemas.CreateProxyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProxyRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateProxyRuleGroup",
        input_schema = schemas.CreateProxyRuleGroupInput,
        output_schema = schemas.CreateProxyRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProxyRules(input, options)
    return self:invokeOperation(input, {
        name = "CreateProxyRules",
        input_schema = schemas.CreateProxyRulesInput,
        output_schema = schemas.CreateProxyRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateRuleGroup",
        input_schema = schemas.CreateRuleGroupInput,
        output_schema = schemas.CreateRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTLSInspectionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateTLSInspectionConfiguration",
        input_schema = schemas.CreateTLSInspectionConfigurationInput,
        output_schema = schemas.CreateTLSInspectionConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVpcEndpointAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcEndpointAssociation",
        input_schema = schemas.CreateVpcEndpointAssociationInput,
        output_schema = schemas.CreateVpcEndpointAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFirewall(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFirewall",
        input_schema = schemas.DeleteFirewallInput,
        output_schema = schemas.DeleteFirewallOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFirewallPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFirewallPolicy",
        input_schema = schemas.DeleteFirewallPolicyInput,
        output_schema = schemas.DeleteFirewallPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNetworkFirewallTransitGatewayAttachment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNetworkFirewallTransitGatewayAttachment",
        input_schema = schemas.DeleteNetworkFirewallTransitGatewayAttachmentInput,
        output_schema = schemas.DeleteNetworkFirewallTransitGatewayAttachmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProxy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProxy",
        input_schema = schemas.DeleteProxyInput,
        output_schema = schemas.DeleteProxyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProxyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProxyConfiguration",
        input_schema = schemas.DeleteProxyConfigurationInput,
        output_schema = schemas.DeleteProxyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProxyRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProxyRuleGroup",
        input_schema = schemas.DeleteProxyRuleGroupInput,
        output_schema = schemas.DeleteProxyRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProxyRules(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProxyRules",
        input_schema = schemas.DeleteProxyRulesInput,
        output_schema = schemas.DeleteProxyRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = schemas.DeleteResourcePolicyInput,
        output_schema = schemas.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRuleGroup",
        input_schema = schemas.DeleteRuleGroupInput,
        output_schema = schemas.DeleteRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTLSInspectionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTLSInspectionConfiguration",
        input_schema = schemas.DeleteTLSInspectionConfigurationInput,
        output_schema = schemas.DeleteTLSInspectionConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVpcEndpointAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcEndpointAssociation",
        input_schema = schemas.DeleteVpcEndpointAssociationInput,
        output_schema = schemas.DeleteVpcEndpointAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFirewall(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFirewall",
        input_schema = schemas.DescribeFirewallInput,
        output_schema = schemas.DescribeFirewallOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFirewallMetadata(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFirewallMetadata",
        input_schema = schemas.DescribeFirewallMetadataInput,
        output_schema = schemas.DescribeFirewallMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFirewallPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFirewallPolicy",
        input_schema = schemas.DescribeFirewallPolicyInput,
        output_schema = schemas.DescribeFirewallPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFlowOperation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFlowOperation",
        input_schema = schemas.DescribeFlowOperationInput,
        output_schema = schemas.DescribeFlowOperationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLoggingConfiguration",
        input_schema = schemas.DescribeLoggingConfigurationInput,
        output_schema = schemas.DescribeLoggingConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProxy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProxy",
        input_schema = schemas.DescribeProxyInput,
        output_schema = schemas.DescribeProxyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProxyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProxyConfiguration",
        input_schema = schemas.DescribeProxyConfigurationInput,
        output_schema = schemas.DescribeProxyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProxyRule(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProxyRule",
        input_schema = schemas.DescribeProxyRuleInput,
        output_schema = schemas.DescribeProxyRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProxyRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProxyRuleGroup",
        input_schema = schemas.DescribeProxyRuleGroupInput,
        output_schema = schemas.DescribeProxyRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResourcePolicy",
        input_schema = schemas.DescribeResourcePolicyInput,
        output_schema = schemas.DescribeResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRuleGroup",
        input_schema = schemas.DescribeRuleGroupInput,
        output_schema = schemas.DescribeRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRuleGroupMetadata(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRuleGroupMetadata",
        input_schema = schemas.DescribeRuleGroupMetadataInput,
        output_schema = schemas.DescribeRuleGroupMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRuleGroupSummary(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRuleGroupSummary",
        input_schema = schemas.DescribeRuleGroupSummaryInput,
        output_schema = schemas.DescribeRuleGroupSummaryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTLSInspectionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTLSInspectionConfiguration",
        input_schema = schemas.DescribeTLSInspectionConfigurationInput,
        output_schema = schemas.DescribeTLSInspectionConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpcEndpointAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcEndpointAssociation",
        input_schema = schemas.DescribeVpcEndpointAssociationInput,
        output_schema = schemas.DescribeVpcEndpointAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachRuleGroupsFromProxyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DetachRuleGroupsFromProxyConfiguration",
        input_schema = schemas.DetachRuleGroupsFromProxyConfigurationInput,
        output_schema = schemas.DetachRuleGroupsFromProxyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateAvailabilityZones(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateAvailabilityZones",
        input_schema = schemas.DisassociateAvailabilityZonesInput,
        output_schema = schemas.DisassociateAvailabilityZonesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateSubnets(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateSubnets",
        input_schema = schemas.DisassociateSubnetsInput,
        output_schema = schemas.DisassociateSubnetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAnalysisReportResults(input, options)
    return self:invokeOperation(input, {
        name = "GetAnalysisReportResults",
        input_schema = schemas.GetAnalysisReportResultsInput,
        output_schema = schemas.GetAnalysisReportResultsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAnalysisReports(input, options)
    return self:invokeOperation(input, {
        name = "ListAnalysisReports",
        input_schema = schemas.ListAnalysisReportsInput,
        output_schema = schemas.ListAnalysisReportsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFirewallPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListFirewallPolicies",
        input_schema = schemas.ListFirewallPoliciesInput,
        output_schema = schemas.ListFirewallPoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFirewalls(input, options)
    return self:invokeOperation(input, {
        name = "ListFirewalls",
        input_schema = schemas.ListFirewallsInput,
        output_schema = schemas.ListFirewallsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFlowOperationResults(input, options)
    return self:invokeOperation(input, {
        name = "ListFlowOperationResults",
        input_schema = schemas.ListFlowOperationResultsInput,
        output_schema = schemas.ListFlowOperationResultsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFlowOperations(input, options)
    return self:invokeOperation(input, {
        name = "ListFlowOperations",
        input_schema = schemas.ListFlowOperationsInput,
        output_schema = schemas.ListFlowOperationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProxies(input, options)
    return self:invokeOperation(input, {
        name = "ListProxies",
        input_schema = schemas.ListProxiesInput,
        output_schema = schemas.ListProxiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProxyConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListProxyConfigurations",
        input_schema = schemas.ListProxyConfigurationsInput,
        output_schema = schemas.ListProxyConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProxyRuleGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListProxyRuleGroups",
        input_schema = schemas.ListProxyRuleGroupsInput,
        output_schema = schemas.ListProxyRuleGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRuleGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListRuleGroups",
        input_schema = schemas.ListRuleGroupsInput,
        output_schema = schemas.ListRuleGroupsOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTLSInspectionConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListTLSInspectionConfigurations",
        input_schema = schemas.ListTLSInspectionConfigurationsInput,
        output_schema = schemas.ListTLSInspectionConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVpcEndpointAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListVpcEndpointAssociations",
        input_schema = schemas.ListVpcEndpointAssociationsInput,
        output_schema = schemas.ListVpcEndpointAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = schemas.PutResourcePolicyInput,
        output_schema = schemas.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectNetworkFirewallTransitGatewayAttachment(input, options)
    return self:invokeOperation(input, {
        name = "RejectNetworkFirewallTransitGatewayAttachment",
        input_schema = schemas.RejectNetworkFirewallTransitGatewayAttachmentInput,
        output_schema = schemas.RejectNetworkFirewallTransitGatewayAttachmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startAnalysisReport(input, options)
    return self:invokeOperation(input, {
        name = "StartAnalysisReport",
        input_schema = schemas.StartAnalysisReportInput,
        output_schema = schemas.StartAnalysisReportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startFlowCapture(input, options)
    return self:invokeOperation(input, {
        name = "StartFlowCapture",
        input_schema = schemas.StartFlowCaptureInput,
        output_schema = schemas.StartFlowCaptureOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startFlowFlush(input, options)
    return self:invokeOperation(input, {
        name = "StartFlowFlush",
        input_schema = schemas.StartFlowFlushInput,
        output_schema = schemas.StartFlowFlushOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAvailabilityZoneChangeProtection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAvailabilityZoneChangeProtection",
        input_schema = schemas.UpdateAvailabilityZoneChangeProtectionInput,
        output_schema = schemas.UpdateAvailabilityZoneChangeProtectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFirewallAnalysisSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFirewallAnalysisSettings",
        input_schema = schemas.UpdateFirewallAnalysisSettingsInput,
        output_schema = schemas.UpdateFirewallAnalysisSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFirewallDeleteProtection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFirewallDeleteProtection",
        input_schema = schemas.UpdateFirewallDeleteProtectionInput,
        output_schema = schemas.UpdateFirewallDeleteProtectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFirewallDescription(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFirewallDescription",
        input_schema = schemas.UpdateFirewallDescriptionInput,
        output_schema = schemas.UpdateFirewallDescriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFirewallEncryptionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFirewallEncryptionConfiguration",
        input_schema = schemas.UpdateFirewallEncryptionConfigurationInput,
        output_schema = schemas.UpdateFirewallEncryptionConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFirewallPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFirewallPolicy",
        input_schema = schemas.UpdateFirewallPolicyInput,
        output_schema = schemas.UpdateFirewallPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFirewallPolicyChangeProtection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFirewallPolicyChangeProtection",
        input_schema = schemas.UpdateFirewallPolicyChangeProtectionInput,
        output_schema = schemas.UpdateFirewallPolicyChangeProtectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLoggingConfiguration",
        input_schema = schemas.UpdateLoggingConfigurationInput,
        output_schema = schemas.UpdateLoggingConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProxy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProxy",
        input_schema = schemas.UpdateProxyInput,
        output_schema = schemas.UpdateProxyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProxyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProxyConfiguration",
        input_schema = schemas.UpdateProxyConfigurationInput,
        output_schema = schemas.UpdateProxyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProxyRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProxyRule",
        input_schema = schemas.UpdateProxyRuleInput,
        output_schema = schemas.UpdateProxyRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProxyRuleGroupPriorities(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProxyRuleGroupPriorities",
        input_schema = schemas.UpdateProxyRuleGroupPrioritiesInput,
        output_schema = schemas.UpdateProxyRuleGroupPrioritiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProxyRulePriorities(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProxyRulePriorities",
        input_schema = schemas.UpdateProxyRulePrioritiesInput,
        output_schema = schemas.UpdateProxyRulePrioritiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRuleGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRuleGroup",
        input_schema = schemas.UpdateRuleGroupInput,
        output_schema = schemas.UpdateRuleGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSubnetChangeProtection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSubnetChangeProtection",
        input_schema = schemas.UpdateSubnetChangeProtectionInput,
        output_schema = schemas.UpdateSubnetChangeProtectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTLSInspectionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTLSInspectionConfiguration",
        input_schema = schemas.UpdateTLSInspectionConfigurationInput,
        output_schema = schemas.UpdateTLSInspectionConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
