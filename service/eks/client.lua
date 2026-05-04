local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("eks.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("eks.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSWesleyFrontend"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "eks", signing_region = cfg.region } }
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

function Client:associateAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "AssociateAccessPolicy",
        input_schema = types.AssociateAccessPolicyInput,
        output_schema = types.AssociateAccessPolicyOutput,
        http_method = "POST",
        http_path = "/clusters/{clusterName}/access-entries/{principalArn}/access-policies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateEncryptionConfig(input, options)
    return self:invokeOperation(input, {
        name = "AssociateEncryptionConfig",
        input_schema = types.AssociateEncryptionConfigInput,
        output_schema = types.AssociateEncryptionConfigOutput,
        http_method = "POST",
        http_path = "/clusters/{clusterName}/encryption-config/associate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateIdentityProviderConfig(input, options)
    return self:invokeOperation(input, {
        name = "AssociateIdentityProviderConfig",
        input_schema = types.AssociateIdentityProviderConfigInput,
        output_schema = types.AssociateIdentityProviderConfigOutput,
        http_method = "POST",
        http_path = "/clusters/{clusterName}/identity-provider-configs/associate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAccessEntry(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessEntry",
        input_schema = types.CreateAccessEntryInput,
        output_schema = types.CreateAccessEntryOutput,
        http_method = "POST",
        http_path = "/clusters/{clusterName}/access-entries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAddon(input, options)
    return self:invokeOperation(input, {
        name = "CreateAddon",
        input_schema = types.CreateAddonInput,
        output_schema = types.CreateAddonOutput,
        http_method = "POST",
        http_path = "/clusters/{clusterName}/addons",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCapability(input, options)
    return self:invokeOperation(input, {
        name = "CreateCapability",
        input_schema = types.CreateCapabilityInput,
        output_schema = types.CreateCapabilityOutput,
        http_method = "POST",
        http_path = "/clusters/{clusterName}/capabilities",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateCluster",
        input_schema = types.CreateClusterInput,
        output_schema = types.CreateClusterOutput,
        http_method = "POST",
        http_path = "/clusters",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEksAnywhereSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateEksAnywhereSubscription",
        input_schema = types.CreateEksAnywhereSubscriptionInput,
        output_schema = types.CreateEksAnywhereSubscriptionOutput,
        http_method = "POST",
        http_path = "/eks-anywhere-subscriptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFargateProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateFargateProfile",
        input_schema = types.CreateFargateProfileInput,
        output_schema = types.CreateFargateProfileOutput,
        http_method = "POST",
        http_path = "/clusters/{clusterName}/fargate-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNodegroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateNodegroup",
        input_schema = types.CreateNodegroupInput,
        output_schema = types.CreateNodegroupOutput,
        http_method = "POST",
        http_path = "/clusters/{clusterName}/node-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPodIdentityAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreatePodIdentityAssociation",
        input_schema = types.CreatePodIdentityAssociationInput,
        output_schema = types.CreatePodIdentityAssociationOutput,
        http_method = "POST",
        http_path = "/clusters/{clusterName}/pod-identity-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccessEntry(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessEntry",
        input_schema = types.DeleteAccessEntryInput,
        output_schema = types.DeleteAccessEntryOutput,
        http_method = "DELETE",
        http_path = "/clusters/{clusterName}/access-entries/{principalArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAddon(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAddon",
        input_schema = types.DeleteAddonInput,
        output_schema = types.DeleteAddonOutput,
        http_method = "DELETE",
        http_path = "/clusters/{clusterName}/addons/{addonName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCapability(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCapability",
        input_schema = types.DeleteCapabilityInput,
        output_schema = types.DeleteCapabilityOutput,
        http_method = "DELETE",
        http_path = "/clusters/{clusterName}/capabilities/{capabilityName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCluster",
        input_schema = types.DeleteClusterInput,
        output_schema = types.DeleteClusterOutput,
        http_method = "DELETE",
        http_path = "/clusters/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEksAnywhereSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEksAnywhereSubscription",
        input_schema = types.DeleteEksAnywhereSubscriptionInput,
        output_schema = types.DeleteEksAnywhereSubscriptionOutput,
        http_method = "DELETE",
        http_path = "/eks-anywhere-subscriptions/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFargateProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFargateProfile",
        input_schema = types.DeleteFargateProfileInput,
        output_schema = types.DeleteFargateProfileOutput,
        http_method = "DELETE",
        http_path = "/clusters/{clusterName}/fargate-profiles/{fargateProfileName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNodegroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNodegroup",
        input_schema = types.DeleteNodegroupInput,
        output_schema = types.DeleteNodegroupOutput,
        http_method = "DELETE",
        http_path = "/clusters/{clusterName}/node-groups/{nodegroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePodIdentityAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeletePodIdentityAssociation",
        input_schema = types.DeletePodIdentityAssociationInput,
        output_schema = types.DeletePodIdentityAssociationOutput,
        http_method = "DELETE",
        http_path = "/clusters/{clusterName}/pod-identity-associations/{associationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterCluster",
        input_schema = types.DeregisterClusterInput,
        output_schema = types.DeregisterClusterOutput,
        http_method = "DELETE",
        http_path = "/cluster-registrations/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccessEntry(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccessEntry",
        input_schema = types.DescribeAccessEntryInput,
        output_schema = types.DescribeAccessEntryOutput,
        http_method = "GET",
        http_path = "/clusters/{clusterName}/access-entries/{principalArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAddon(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAddon",
        input_schema = types.DescribeAddonInput,
        output_schema = types.DescribeAddonOutput,
        http_method = "GET",
        http_path = "/clusters/{clusterName}/addons/{addonName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAddonConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAddonConfiguration",
        input_schema = types.DescribeAddonConfigurationInput,
        output_schema = types.DescribeAddonConfigurationOutput,
        http_method = "GET",
        http_path = "/addons/configuration-schemas",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAddonVersions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAddonVersions",
        input_schema = types.DescribeAddonVersionsInput,
        output_schema = types.DescribeAddonVersionsOutput,
        http_method = "GET",
        http_path = "/addons/supported-versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCapability(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCapability",
        input_schema = types.DescribeCapabilityInput,
        output_schema = types.DescribeCapabilityOutput,
        http_method = "GET",
        http_path = "/clusters/{clusterName}/capabilities/{capabilityName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCluster(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCluster",
        input_schema = types.DescribeClusterInput,
        output_schema = types.DescribeClusterOutput,
        http_method = "GET",
        http_path = "/clusters/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClusterVersions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClusterVersions",
        input_schema = types.DescribeClusterVersionsInput,
        output_schema = types.DescribeClusterVersionsOutput,
        http_method = "GET",
        http_path = "/cluster-versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEksAnywhereSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEksAnywhereSubscription",
        input_schema = types.DescribeEksAnywhereSubscriptionInput,
        output_schema = types.DescribeEksAnywhereSubscriptionOutput,
        http_method = "GET",
        http_path = "/eks-anywhere-subscriptions/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFargateProfile(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFargateProfile",
        input_schema = types.DescribeFargateProfileInput,
        output_schema = types.DescribeFargateProfileOutput,
        http_method = "GET",
        http_path = "/clusters/{clusterName}/fargate-profiles/{fargateProfileName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIdentityProviderConfig(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIdentityProviderConfig",
        input_schema = types.DescribeIdentityProviderConfigInput,
        output_schema = types.DescribeIdentityProviderConfigOutput,
        http_method = "POST",
        http_path = "/clusters/{clusterName}/identity-provider-configs/describe",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInsight(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInsight",
        input_schema = types.DescribeInsightInput,
        output_schema = types.DescribeInsightOutput,
        http_method = "GET",
        http_path = "/clusters/{clusterName}/insights/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInsightsRefresh(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInsightsRefresh",
        input_schema = types.DescribeInsightsRefreshInput,
        output_schema = types.DescribeInsightsRefreshOutput,
        http_method = "GET",
        http_path = "/clusters/{clusterName}/insights-refresh",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNodegroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNodegroup",
        input_schema = types.DescribeNodegroupInput,
        output_schema = types.DescribeNodegroupOutput,
        http_method = "GET",
        http_path = "/clusters/{clusterName}/node-groups/{nodegroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePodIdentityAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DescribePodIdentityAssociation",
        input_schema = types.DescribePodIdentityAssociationInput,
        output_schema = types.DescribePodIdentityAssociationOutput,
        http_method = "GET",
        http_path = "/clusters/{clusterName}/pod-identity-associations/{associationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeUpdate(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUpdate",
        input_schema = types.DescribeUpdateInput,
        output_schema = types.DescribeUpdateOutput,
        http_method = "GET",
        http_path = "/clusters/{name}/updates/{updateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateAccessPolicy",
        input_schema = types.DisassociateAccessPolicyInput,
        output_schema = types.DisassociateAccessPolicyOutput,
        http_method = "DELETE",
        http_path = "/clusters/{clusterName}/access-entries/{principalArn}/access-policies/{policyArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateIdentityProviderConfig(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateIdentityProviderConfig",
        input_schema = types.DisassociateIdentityProviderConfigInput,
        output_schema = types.DisassociateIdentityProviderConfigOutput,
        http_method = "POST",
        http_path = "/clusters/{clusterName}/identity-provider-configs/disassociate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccessEntries(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessEntries",
        input_schema = types.ListAccessEntriesInput,
        output_schema = types.ListAccessEntriesOutput,
        http_method = "GET",
        http_path = "/clusters/{clusterName}/access-entries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccessPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessPolicies",
        input_schema = types.ListAccessPoliciesInput,
        output_schema = types.ListAccessPoliciesOutput,
        http_method = "GET",
        http_path = "/access-policies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAddons(input, options)
    return self:invokeOperation(input, {
        name = "ListAddons",
        input_schema = types.ListAddonsInput,
        output_schema = types.ListAddonsOutput,
        http_method = "GET",
        http_path = "/clusters/{clusterName}/addons",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssociatedAccessPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociatedAccessPolicies",
        input_schema = types.ListAssociatedAccessPoliciesInput,
        output_schema = types.ListAssociatedAccessPoliciesOutput,
        http_method = "GET",
        http_path = "/clusters/{clusterName}/access-entries/{principalArn}/access-policies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCapabilities(input, options)
    return self:invokeOperation(input, {
        name = "ListCapabilities",
        input_schema = types.ListCapabilitiesInput,
        output_schema = types.ListCapabilitiesOutput,
        http_method = "GET",
        http_path = "/clusters/{clusterName}/capabilities",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listClusters(input, options)
    return self:invokeOperation(input, {
        name = "ListClusters",
        input_schema = types.ListClustersInput,
        output_schema = types.ListClustersOutput,
        http_method = "GET",
        http_path = "/clusters",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEksAnywhereSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "ListEksAnywhereSubscriptions",
        input_schema = types.ListEksAnywhereSubscriptionsInput,
        output_schema = types.ListEksAnywhereSubscriptionsOutput,
        http_method = "GET",
        http_path = "/eks-anywhere-subscriptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFargateProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListFargateProfiles",
        input_schema = types.ListFargateProfilesInput,
        output_schema = types.ListFargateProfilesOutput,
        http_method = "GET",
        http_path = "/clusters/{clusterName}/fargate-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIdentityProviderConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListIdentityProviderConfigs",
        input_schema = types.ListIdentityProviderConfigsInput,
        output_schema = types.ListIdentityProviderConfigsOutput,
        http_method = "GET",
        http_path = "/clusters/{clusterName}/identity-provider-configs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInsights(input, options)
    return self:invokeOperation(input, {
        name = "ListInsights",
        input_schema = types.ListInsightsInput,
        output_schema = types.ListInsightsOutput,
        http_method = "POST",
        http_path = "/clusters/{clusterName}/insights",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNodegroups(input, options)
    return self:invokeOperation(input, {
        name = "ListNodegroups",
        input_schema = types.ListNodegroupsInput,
        output_schema = types.ListNodegroupsOutput,
        http_method = "GET",
        http_path = "/clusters/{clusterName}/node-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPodIdentityAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListPodIdentityAssociations",
        input_schema = types.ListPodIdentityAssociationsInput,
        output_schema = types.ListPodIdentityAssociationsOutput,
        http_method = "GET",
        http_path = "/clusters/{clusterName}/pod-identity-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUpdates(input, options)
    return self:invokeOperation(input, {
        name = "ListUpdates",
        input_schema = types.ListUpdatesInput,
        output_schema = types.ListUpdatesOutput,
        http_method = "GET",
        http_path = "/clusters/{name}/updates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerCluster(input, options)
    return self:invokeOperation(input, {
        name = "RegisterCluster",
        input_schema = types.RegisterClusterInput,
        output_schema = types.RegisterClusterOutput,
        http_method = "POST",
        http_path = "/cluster-registrations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startInsightsRefresh(input, options)
    return self:invokeOperation(input, {
        name = "StartInsightsRefresh",
        input_schema = types.StartInsightsRefreshInput,
        output_schema = types.StartInsightsRefreshOutput,
        http_method = "POST",
        http_path = "/clusters/{clusterName}/insights-refresh",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAccessEntry(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccessEntry",
        input_schema = types.UpdateAccessEntryInput,
        output_schema = types.UpdateAccessEntryOutput,
        http_method = "POST",
        http_path = "/clusters/{clusterName}/access-entries/{principalArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAddon(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAddon",
        input_schema = types.UpdateAddonInput,
        output_schema = types.UpdateAddonOutput,
        http_method = "POST",
        http_path = "/clusters/{clusterName}/addons/{addonName}/update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCapability(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCapability",
        input_schema = types.UpdateCapabilityInput,
        output_schema = types.UpdateCapabilityOutput,
        http_method = "POST",
        http_path = "/clusters/{clusterName}/capabilities/{capabilityName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateClusterConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateClusterConfig",
        input_schema = types.UpdateClusterConfigInput,
        output_schema = types.UpdateClusterConfigOutput,
        http_method = "POST",
        http_path = "/clusters/{name}/update-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateClusterVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateClusterVersion",
        input_schema = types.UpdateClusterVersionInput,
        output_schema = types.UpdateClusterVersionOutput,
        http_method = "POST",
        http_path = "/clusters/{name}/updates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEksAnywhereSubscription(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEksAnywhereSubscription",
        input_schema = types.UpdateEksAnywhereSubscriptionInput,
        output_schema = types.UpdateEksAnywhereSubscriptionOutput,
        http_method = "POST",
        http_path = "/eks-anywhere-subscriptions/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNodegroupConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNodegroupConfig",
        input_schema = types.UpdateNodegroupConfigInput,
        output_schema = types.UpdateNodegroupConfigOutput,
        http_method = "POST",
        http_path = "/clusters/{clusterName}/node-groups/{nodegroupName}/update-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNodegroupVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNodegroupVersion",
        input_schema = types.UpdateNodegroupVersionInput,
        output_schema = types.UpdateNodegroupVersionOutput,
        http_method = "POST",
        http_path = "/clusters/{clusterName}/node-groups/{nodegroupName}/update-version",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePodIdentityAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePodIdentityAssociation",
        input_schema = types.UpdatePodIdentityAssociationInput,
        output_schema = types.UpdatePodIdentityAssociationOutput,
        http_method = "POST",
        http_path = "/clusters/{clusterName}/pod-identity-associations/{associationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
