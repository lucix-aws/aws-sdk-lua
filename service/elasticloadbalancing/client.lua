local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("elasticloadbalancing.endpoint_rules")
local query_protocol = require("protocol.query")
local sdk_defaults = require("sdk_defaults")
local types = require("elasticloadbalancing.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ElasticLoadBalancing_v7"
    if not cfg.protocol then
        cfg.protocol = query_protocol.new("awsQuery")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "elasticloadbalancing", signing_region = cfg.region } }
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

function Client:addTags(input, options)
    return self:invokeOperation(input, {
        name = "AddTags",
        input_schema = types.AddTagsInput,
        output_schema = types.AddTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:applySecurityGroupsToLoadBalancer(input, options)
    return self:invokeOperation(input, {
        name = "ApplySecurityGroupsToLoadBalancer",
        input_schema = types.ApplySecurityGroupsToLoadBalancerInput,
        output_schema = types.ApplySecurityGroupsToLoadBalancerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachLoadBalancerToSubnets(input, options)
    return self:invokeOperation(input, {
        name = "AttachLoadBalancerToSubnets",
        input_schema = types.AttachLoadBalancerToSubnetsInput,
        output_schema = types.AttachLoadBalancerToSubnetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:configureHealthCheck(input, options)
    return self:invokeOperation(input, {
        name = "ConfigureHealthCheck",
        input_schema = types.ConfigureHealthCheckInput,
        output_schema = types.ConfigureHealthCheckOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAppCookieStickinessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateAppCookieStickinessPolicy",
        input_schema = types.CreateAppCookieStickinessPolicyInput,
        output_schema = types.CreateAppCookieStickinessPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLBCookieStickinessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateLBCookieStickinessPolicy",
        input_schema = types.CreateLBCookieStickinessPolicyInput,
        output_schema = types.CreateLBCookieStickinessPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLoadBalancer(input, options)
    return self:invokeOperation(input, {
        name = "CreateLoadBalancer",
        input_schema = types.CreateLoadBalancerInput,
        output_schema = types.CreateLoadBalancerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLoadBalancerListeners(input, options)
    return self:invokeOperation(input, {
        name = "CreateLoadBalancerListeners",
        input_schema = types.CreateLoadBalancerListenersInput,
        output_schema = types.CreateLoadBalancerListenersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLoadBalancerPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateLoadBalancerPolicy",
        input_schema = types.CreateLoadBalancerPolicyInput,
        output_schema = types.CreateLoadBalancerPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLoadBalancer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLoadBalancer",
        input_schema = types.DeleteLoadBalancerInput,
        output_schema = types.DeleteLoadBalancerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLoadBalancerListeners(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLoadBalancerListeners",
        input_schema = types.DeleteLoadBalancerListenersInput,
        output_schema = types.DeleteLoadBalancerListenersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLoadBalancerPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLoadBalancerPolicy",
        input_schema = types.DeleteLoadBalancerPolicyInput,
        output_schema = types.DeleteLoadBalancerPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterInstancesFromLoadBalancer(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterInstancesFromLoadBalancer",
        input_schema = types.DeregisterInstancesFromLoadBalancerInput,
        output_schema = types.DeregisterInstancesFromLoadBalancerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccountLimits(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountLimits",
        input_schema = types.DescribeAccountLimitsInput,
        output_schema = types.DescribeAccountLimitsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstanceHealth(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceHealth",
        input_schema = types.DescribeInstanceHealthInput,
        output_schema = types.DescribeInstanceHealthOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLoadBalancerAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLoadBalancerAttributes",
        input_schema = types.DescribeLoadBalancerAttributesInput,
        output_schema = types.DescribeLoadBalancerAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLoadBalancerPolicies(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLoadBalancerPolicies",
        input_schema = types.DescribeLoadBalancerPoliciesInput,
        output_schema = types.DescribeLoadBalancerPoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLoadBalancerPolicyTypes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLoadBalancerPolicyTypes",
        input_schema = types.DescribeLoadBalancerPolicyTypesInput,
        output_schema = types.DescribeLoadBalancerPolicyTypesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLoadBalancers(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLoadBalancers",
        input_schema = types.DescribeLoadBalancersInput,
        output_schema = types.DescribeLoadBalancersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTags(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTags",
        input_schema = types.DescribeTagsInput,
        output_schema = types.DescribeTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachLoadBalancerFromSubnets(input, options)
    return self:invokeOperation(input, {
        name = "DetachLoadBalancerFromSubnets",
        input_schema = types.DetachLoadBalancerFromSubnetsInput,
        output_schema = types.DetachLoadBalancerFromSubnetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableAvailabilityZonesForLoadBalancer(input, options)
    return self:invokeOperation(input, {
        name = "DisableAvailabilityZonesForLoadBalancer",
        input_schema = types.DisableAvailabilityZonesForLoadBalancerInput,
        output_schema = types.DisableAvailabilityZonesForLoadBalancerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableAvailabilityZonesForLoadBalancer(input, options)
    return self:invokeOperation(input, {
        name = "EnableAvailabilityZonesForLoadBalancer",
        input_schema = types.EnableAvailabilityZonesForLoadBalancerInput,
        output_schema = types.EnableAvailabilityZonesForLoadBalancerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyLoadBalancerAttributes(input, options)
    return self:invokeOperation(input, {
        name = "ModifyLoadBalancerAttributes",
        input_schema = types.ModifyLoadBalancerAttributesInput,
        output_schema = types.ModifyLoadBalancerAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerInstancesWithLoadBalancer(input, options)
    return self:invokeOperation(input, {
        name = "RegisterInstancesWithLoadBalancer",
        input_schema = types.RegisterInstancesWithLoadBalancerInput,
        output_schema = types.RegisterInstancesWithLoadBalancerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeTags(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTags",
        input_schema = types.RemoveTagsInput,
        output_schema = types.RemoveTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setLoadBalancerListenerSSLCertificate(input, options)
    return self:invokeOperation(input, {
        name = "SetLoadBalancerListenerSSLCertificate",
        input_schema = types.SetLoadBalancerListenerSSLCertificateInput,
        output_schema = types.SetLoadBalancerListenerSSLCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setLoadBalancerPoliciesForBackendServer(input, options)
    return self:invokeOperation(input, {
        name = "SetLoadBalancerPoliciesForBackendServer",
        input_schema = types.SetLoadBalancerPoliciesForBackendServerInput,
        output_schema = types.SetLoadBalancerPoliciesForBackendServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setLoadBalancerPoliciesOfListener(input, options)
    return self:invokeOperation(input, {
        name = "SetLoadBalancerPoliciesOfListener",
        input_schema = types.SetLoadBalancerPoliciesOfListenerInput,
        output_schema = types.SetLoadBalancerPoliciesOfListenerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
