



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("networkfirewall.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("networkfirewall.schemas")
local traits = require("smithy.traits")
local types = require("networkfirewall.types")
local sdk_defaults = require("aws.sdk_defaults")





















































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "NetworkFirewall_20201112"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.0", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "network-firewall", signing_region = c.region } }
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

function C:acceptNetworkFirewallTransitGatewayAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptNetworkFirewallTransitGatewayAttachment, input, options)
end

function C:associateAvailabilityZones(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateAvailabilityZones, input, options)
end

function C:associateFirewallPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateFirewallPolicy, input, options)
end

function C:associateSubnets(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateSubnets, input, options)
end

function C:attachRuleGroupsToProxyConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachRuleGroupsToProxyConfiguration, input, options)
end

function C:createFirewall(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFirewall, input, options)
end

function C:createFirewallPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFirewallPolicy, input, options)
end

function C:createProxy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProxy, input, options)
end

function C:createProxyConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProxyConfiguration, input, options)
end

function C:createProxyRuleGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProxyRuleGroup, input, options)
end

function C:createProxyRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProxyRules, input, options)
end

function C:createRuleGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRuleGroup, input, options)
end

function C:createTLSInspectionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTLSInspectionConfiguration, input, options)
end

function C:createVpcEndpointAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpcEndpointAssociation, input, options)
end

function C:deleteFirewall(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFirewall, input, options)
end

function C:deleteFirewallPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFirewallPolicy, input, options)
end

function C:deleteNetworkFirewallTransitGatewayAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNetworkFirewallTransitGatewayAttachment, input, options)
end

function C:deleteProxy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProxy, input, options)
end

function C:deleteProxyConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProxyConfiguration, input, options)
end

function C:deleteProxyRuleGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProxyRuleGroup, input, options)
end

function C:deleteProxyRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProxyRules, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deleteRuleGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRuleGroup, input, options)
end

function C:deleteTLSInspectionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTLSInspectionConfiguration, input, options)
end

function C:deleteVpcEndpointAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVpcEndpointAssociation, input, options)
end

function C:describeFirewall(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFirewall, input, options)
end

function C:describeFirewallMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFirewallMetadata, input, options)
end

function C:describeFirewallPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFirewallPolicy, input, options)
end

function C:describeFlowOperation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFlowOperation, input, options)
end

function C:describeLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLoggingConfiguration, input, options)
end

function C:describeProxy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProxy, input, options)
end

function C:describeProxyConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProxyConfiguration, input, options)
end

function C:describeProxyRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProxyRule, input, options)
end

function C:describeProxyRuleGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProxyRuleGroup, input, options)
end

function C:describeResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeResourcePolicy, input, options)
end

function C:describeRuleGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRuleGroup, input, options)
end

function C:describeRuleGroupMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRuleGroupMetadata, input, options)
end

function C:describeRuleGroupSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRuleGroupSummary, input, options)
end

function C:describeTLSInspectionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTLSInspectionConfiguration, input, options)
end

function C:describeVpcEndpointAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpcEndpointAssociation, input, options)
end

function C:detachRuleGroupsFromProxyConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachRuleGroupsFromProxyConfiguration, input, options)
end

function C:disassociateAvailabilityZones(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateAvailabilityZones, input, options)
end

function C:disassociateSubnets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateSubnets, input, options)
end

function C:getAnalysisReportResults(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAnalysisReportResults, input, options)
end

function C:listAnalysisReports(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAnalysisReports, input, options)
end

function C:listFirewallPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFirewallPolicies, input, options)
end

function C:listFirewalls(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFirewalls, input, options)
end

function C:listFlowOperationResults(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFlowOperationResults, input, options)
end

function C:listFlowOperations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFlowOperations, input, options)
end

function C:listProxies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProxies, input, options)
end

function C:listProxyConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProxyConfigurations, input, options)
end

function C:listProxyRuleGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProxyRuleGroups, input, options)
end

function C:listRuleGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRuleGroups, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTLSInspectionConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTLSInspectionConfigurations, input, options)
end

function C:listVpcEndpointAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVpcEndpointAssociations, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:rejectNetworkFirewallTransitGatewayAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectNetworkFirewallTransitGatewayAttachment, input, options)
end

function C:startAnalysisReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAnalysisReport, input, options)
end

function C:startFlowCapture(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartFlowCapture, input, options)
end

function C:startFlowFlush(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartFlowFlush, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAvailabilityZoneChangeProtection(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAvailabilityZoneChangeProtection, input, options)
end

function C:updateFirewallAnalysisSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFirewallAnalysisSettings, input, options)
end

function C:updateFirewallDeleteProtection(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFirewallDeleteProtection, input, options)
end

function C:updateFirewallDescription(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFirewallDescription, input, options)
end

function C:updateFirewallEncryptionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFirewallEncryptionConfiguration, input, options)
end

function C:updateFirewallPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFirewallPolicy, input, options)
end

function C:updateFirewallPolicyChangeProtection(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFirewallPolicyChangeProtection, input, options)
end

function C:updateLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLoggingConfiguration, input, options)
end

function C:updateProxy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProxy, input, options)
end

function C:updateProxyConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProxyConfiguration, input, options)
end

function C:updateProxyRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProxyRule, input, options)
end

function C:updateProxyRuleGroupPriorities(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProxyRuleGroupPriorities, input, options)
end

function C:updateProxyRulePriorities(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProxyRulePriorities, input, options)
end

function C:updateRuleGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRuleGroup, input, options)
end

function C:updateSubnetChangeProtection(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSubnetChangeProtection, input, options)
end

function C:updateTLSInspectionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTLSInspectionConfiguration, input, options)
end

return M
