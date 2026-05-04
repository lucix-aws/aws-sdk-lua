local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("elasticloadbalancingv2.endpoint_rules")
local query_protocol = require("protocol.query")
local sdk_defaults = require("sdk_defaults")
local types = require("elasticloadbalancingv2.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ElasticLoadBalancing_v10"
    cfg.signing_name = "elasticloadbalancing"
    if not cfg.protocol then
        cfg.protocol = query_protocol.new("awsQuery")
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

function Client:addListenerCertificates(input, options)
    return self:invokeOperation(input, {
        name = "AddListenerCertificates",
        input_schema = types.AddListenerCertificatesInput,
        output_schema = types.AddListenerCertificatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:addTags(input, options)
    return self:invokeOperation(input, {
        name = "AddTags",
        input_schema = types.AddTagsInput,
        output_schema = types.AddTagsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:addTrustStoreRevocations(input, options)
    return self:invokeOperation(input, {
        name = "AddTrustStoreRevocations",
        input_schema = types.AddTrustStoreRevocationsInput,
        output_schema = types.AddTrustStoreRevocationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createListener(input, options)
    return self:invokeOperation(input, {
        name = "CreateListener",
        input_schema = types.CreateListenerInput,
        output_schema = types.CreateListenerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLoadBalancer(input, options)
    return self:invokeOperation(input, {
        name = "CreateLoadBalancer",
        input_schema = types.CreateLoadBalancerInput,
        output_schema = types.CreateLoadBalancerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateRule",
        input_schema = types.CreateRuleInput,
        output_schema = types.CreateRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createTargetGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateTargetGroup",
        input_schema = types.CreateTargetGroupInput,
        output_schema = types.CreateTargetGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrustStore",
        input_schema = types.CreateTrustStoreInput,
        output_schema = types.CreateTrustStoreOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteListener(input, options)
    return self:invokeOperation(input, {
        name = "DeleteListener",
        input_schema = types.DeleteListenerInput,
        output_schema = types.DeleteListenerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteLoadBalancer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLoadBalancer",
        input_schema = types.DeleteLoadBalancerInput,
        output_schema = types.DeleteLoadBalancerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRule",
        input_schema = types.DeleteRuleInput,
        output_schema = types.DeleteRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSharedTrustStoreAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSharedTrustStoreAssociation",
        input_schema = types.DeleteSharedTrustStoreAssociationInput,
        output_schema = types.DeleteSharedTrustStoreAssociationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTargetGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTargetGroup",
        input_schema = types.DeleteTargetGroupInput,
        output_schema = types.DeleteTargetGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrustStore",
        input_schema = types.DeleteTrustStoreInput,
        output_schema = types.DeleteTrustStoreOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deregisterTargets(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterTargets",
        input_schema = types.DeregisterTargetsInput,
        output_schema = types.DeregisterTargetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAccountLimits(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountLimits",
        input_schema = types.DescribeAccountLimitsInput,
        output_schema = types.DescribeAccountLimitsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeCapacityReservation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCapacityReservation",
        input_schema = types.DescribeCapacityReservationInput,
        output_schema = types.DescribeCapacityReservationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeListenerAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeListenerAttributes",
        input_schema = types.DescribeListenerAttributesInput,
        output_schema = types.DescribeListenerAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeListenerCertificates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeListenerCertificates",
        input_schema = types.DescribeListenerCertificatesInput,
        output_schema = types.DescribeListenerCertificatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeListeners(input, options)
    return self:invokeOperation(input, {
        name = "DescribeListeners",
        input_schema = types.DescribeListenersInput,
        output_schema = types.DescribeListenersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeLoadBalancerAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLoadBalancerAttributes",
        input_schema = types.DescribeLoadBalancerAttributesInput,
        output_schema = types.DescribeLoadBalancerAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeLoadBalancers(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLoadBalancers",
        input_schema = types.DescribeLoadBalancersInput,
        output_schema = types.DescribeLoadBalancersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeRules(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRules",
        input_schema = types.DescribeRulesInput,
        output_schema = types.DescribeRulesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSSLPolicies(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSSLPolicies",
        input_schema = types.DescribeSSLPoliciesInput,
        output_schema = types.DescribeSSLPoliciesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTags(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTags",
        input_schema = types.DescribeTagsInput,
        output_schema = types.DescribeTagsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTargetGroupAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTargetGroupAttributes",
        input_schema = types.DescribeTargetGroupAttributesInput,
        output_schema = types.DescribeTargetGroupAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTargetGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTargetGroups",
        input_schema = types.DescribeTargetGroupsInput,
        output_schema = types.DescribeTargetGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTargetHealth(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTargetHealth",
        input_schema = types.DescribeTargetHealthInput,
        output_schema = types.DescribeTargetHealthOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTrustStoreAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrustStoreAssociations",
        input_schema = types.DescribeTrustStoreAssociationsInput,
        output_schema = types.DescribeTrustStoreAssociationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTrustStoreRevocations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrustStoreRevocations",
        input_schema = types.DescribeTrustStoreRevocationsInput,
        output_schema = types.DescribeTrustStoreRevocationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTrustStores(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrustStores",
        input_schema = types.DescribeTrustStoresInput,
        output_schema = types.DescribeTrustStoresOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTrustStoreCaCertificatesBundle(input, options)
    return self:invokeOperation(input, {
        name = "GetTrustStoreCaCertificatesBundle",
        input_schema = types.GetTrustStoreCaCertificatesBundleInput,
        output_schema = types.GetTrustStoreCaCertificatesBundleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTrustStoreRevocationContent(input, options)
    return self:invokeOperation(input, {
        name = "GetTrustStoreRevocationContent",
        input_schema = types.GetTrustStoreRevocationContentInput,
        output_schema = types.GetTrustStoreRevocationContentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyCapacityReservation(input, options)
    return self:invokeOperation(input, {
        name = "ModifyCapacityReservation",
        input_schema = types.ModifyCapacityReservationInput,
        output_schema = types.ModifyCapacityReservationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyIpPools(input, options)
    return self:invokeOperation(input, {
        name = "ModifyIpPools",
        input_schema = types.ModifyIpPoolsInput,
        output_schema = types.ModifyIpPoolsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyListener(input, options)
    return self:invokeOperation(input, {
        name = "ModifyListener",
        input_schema = types.ModifyListenerInput,
        output_schema = types.ModifyListenerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyListenerAttributes(input, options)
    return self:invokeOperation(input, {
        name = "ModifyListenerAttributes",
        input_schema = types.ModifyListenerAttributesInput,
        output_schema = types.ModifyListenerAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyLoadBalancerAttributes(input, options)
    return self:invokeOperation(input, {
        name = "ModifyLoadBalancerAttributes",
        input_schema = types.ModifyLoadBalancerAttributesInput,
        output_schema = types.ModifyLoadBalancerAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyRule(input, options)
    return self:invokeOperation(input, {
        name = "ModifyRule",
        input_schema = types.ModifyRuleInput,
        output_schema = types.ModifyRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyTargetGroup(input, options)
    return self:invokeOperation(input, {
        name = "ModifyTargetGroup",
        input_schema = types.ModifyTargetGroupInput,
        output_schema = types.ModifyTargetGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyTargetGroupAttributes(input, options)
    return self:invokeOperation(input, {
        name = "ModifyTargetGroupAttributes",
        input_schema = types.ModifyTargetGroupAttributesInput,
        output_schema = types.ModifyTargetGroupAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:modifyTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "ModifyTrustStore",
        input_schema = types.ModifyTrustStoreInput,
        output_schema = types.ModifyTrustStoreOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerTargets(input, options)
    return self:invokeOperation(input, {
        name = "RegisterTargets",
        input_schema = types.RegisterTargetsInput,
        output_schema = types.RegisterTargetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:removeListenerCertificates(input, options)
    return self:invokeOperation(input, {
        name = "RemoveListenerCertificates",
        input_schema = types.RemoveListenerCertificatesInput,
        output_schema = types.RemoveListenerCertificatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:removeTags(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTags",
        input_schema = types.RemoveTagsInput,
        output_schema = types.RemoveTagsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:removeTrustStoreRevocations(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTrustStoreRevocations",
        input_schema = types.RemoveTrustStoreRevocationsInput,
        output_schema = types.RemoveTrustStoreRevocationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setIpAddressType(input, options)
    return self:invokeOperation(input, {
        name = "SetIpAddressType",
        input_schema = types.SetIpAddressTypeInput,
        output_schema = types.SetIpAddressTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setRulePriorities(input, options)
    return self:invokeOperation(input, {
        name = "SetRulePriorities",
        input_schema = types.SetRulePrioritiesInput,
        output_schema = types.SetRulePrioritiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setSecurityGroups(input, options)
    return self:invokeOperation(input, {
        name = "SetSecurityGroups",
        input_schema = types.SetSecurityGroupsInput,
        output_schema = types.SetSecurityGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setSubnets(input, options)
    return self:invokeOperation(input, {
        name = "SetSubnets",
        input_schema = types.SetSubnetsInput,
        output_schema = types.SetSubnetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
