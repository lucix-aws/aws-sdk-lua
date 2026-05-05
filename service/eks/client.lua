local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("eks.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("eks.schemas")
local sdk_defaults = require("sdk_defaults")

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
        input_schema = schemas.AssociateAccessPolicyInput,
        output_schema = schemas.AssociateAccessPolicyOutput,
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
        input_schema = schemas.AssociateEncryptionConfigInput,
        output_schema = schemas.AssociateEncryptionConfigOutput,
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
        input_schema = schemas.AssociateIdentityProviderConfigInput,
        output_schema = schemas.AssociateIdentityProviderConfigOutput,
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
        input_schema = schemas.CreateAccessEntryInput,
        output_schema = schemas.CreateAccessEntryOutput,
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
        input_schema = schemas.CreateAddonInput,
        output_schema = schemas.CreateAddonOutput,
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
        input_schema = schemas.CreateCapabilityInput,
        output_schema = schemas.CreateCapabilityOutput,
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
        input_schema = schemas.CreateClusterInput,
        output_schema = schemas.CreateClusterOutput,
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
        input_schema = schemas.CreateEksAnywhereSubscriptionInput,
        output_schema = schemas.CreateEksAnywhereSubscriptionOutput,
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
        input_schema = schemas.CreateFargateProfileInput,
        output_schema = schemas.CreateFargateProfileOutput,
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
        input_schema = schemas.CreateNodegroupInput,
        output_schema = schemas.CreateNodegroupOutput,
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
        input_schema = schemas.CreatePodIdentityAssociationInput,
        output_schema = schemas.CreatePodIdentityAssociationOutput,
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
        input_schema = schemas.DeleteAccessEntryInput,
        output_schema = schemas.DeleteAccessEntryOutput,
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
        input_schema = schemas.DeleteAddonInput,
        output_schema = schemas.DeleteAddonOutput,
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
        input_schema = schemas.DeleteCapabilityInput,
        output_schema = schemas.DeleteCapabilityOutput,
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
        input_schema = schemas.DeleteClusterInput,
        output_schema = schemas.DeleteClusterOutput,
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
        input_schema = schemas.DeleteEksAnywhereSubscriptionInput,
        output_schema = schemas.DeleteEksAnywhereSubscriptionOutput,
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
        input_schema = schemas.DeleteFargateProfileInput,
        output_schema = schemas.DeleteFargateProfileOutput,
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
        input_schema = schemas.DeleteNodegroupInput,
        output_schema = schemas.DeleteNodegroupOutput,
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
        input_schema = schemas.DeletePodIdentityAssociationInput,
        output_schema = schemas.DeletePodIdentityAssociationOutput,
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
        input_schema = schemas.DeregisterClusterInput,
        output_schema = schemas.DeregisterClusterOutput,
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
        input_schema = schemas.DescribeAccessEntryInput,
        output_schema = schemas.DescribeAccessEntryOutput,
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
        input_schema = schemas.DescribeAddonInput,
        output_schema = schemas.DescribeAddonOutput,
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
        input_schema = schemas.DescribeAddonConfigurationInput,
        output_schema = schemas.DescribeAddonConfigurationOutput,
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
        input_schema = schemas.DescribeAddonVersionsInput,
        output_schema = schemas.DescribeAddonVersionsOutput,
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
        input_schema = schemas.DescribeCapabilityInput,
        output_schema = schemas.DescribeCapabilityOutput,
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
        input_schema = schemas.DescribeClusterInput,
        output_schema = schemas.DescribeClusterOutput,
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
        input_schema = schemas.DescribeClusterVersionsInput,
        output_schema = schemas.DescribeClusterVersionsOutput,
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
        input_schema = schemas.DescribeEksAnywhereSubscriptionInput,
        output_schema = schemas.DescribeEksAnywhereSubscriptionOutput,
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
        input_schema = schemas.DescribeFargateProfileInput,
        output_schema = schemas.DescribeFargateProfileOutput,
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
        input_schema = schemas.DescribeIdentityProviderConfigInput,
        output_schema = schemas.DescribeIdentityProviderConfigOutput,
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
        input_schema = schemas.DescribeInsightInput,
        output_schema = schemas.DescribeInsightOutput,
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
        input_schema = schemas.DescribeInsightsRefreshInput,
        output_schema = schemas.DescribeInsightsRefreshOutput,
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
        input_schema = schemas.DescribeNodegroupInput,
        output_schema = schemas.DescribeNodegroupOutput,
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
        input_schema = schemas.DescribePodIdentityAssociationInput,
        output_schema = schemas.DescribePodIdentityAssociationOutput,
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
        input_schema = schemas.DescribeUpdateInput,
        output_schema = schemas.DescribeUpdateOutput,
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
        input_schema = schemas.DisassociateAccessPolicyInput,
        output_schema = schemas.DisassociateAccessPolicyOutput,
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
        input_schema = schemas.DisassociateIdentityProviderConfigInput,
        output_schema = schemas.DisassociateIdentityProviderConfigOutput,
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
        input_schema = schemas.ListAccessEntriesInput,
        output_schema = schemas.ListAccessEntriesOutput,
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
        input_schema = schemas.ListAccessPoliciesInput,
        output_schema = schemas.ListAccessPoliciesOutput,
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
        input_schema = schemas.ListAddonsInput,
        output_schema = schemas.ListAddonsOutput,
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
        input_schema = schemas.ListAssociatedAccessPoliciesInput,
        output_schema = schemas.ListAssociatedAccessPoliciesOutput,
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
        input_schema = schemas.ListCapabilitiesInput,
        output_schema = schemas.ListCapabilitiesOutput,
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
        input_schema = schemas.ListClustersInput,
        output_schema = schemas.ListClustersOutput,
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
        input_schema = schemas.ListEksAnywhereSubscriptionsInput,
        output_schema = schemas.ListEksAnywhereSubscriptionsOutput,
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
        input_schema = schemas.ListFargateProfilesInput,
        output_schema = schemas.ListFargateProfilesOutput,
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
        input_schema = schemas.ListIdentityProviderConfigsInput,
        output_schema = schemas.ListIdentityProviderConfigsOutput,
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
        input_schema = schemas.ListInsightsInput,
        output_schema = schemas.ListInsightsOutput,
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
        input_schema = schemas.ListNodegroupsInput,
        output_schema = schemas.ListNodegroupsOutput,
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
        input_schema = schemas.ListPodIdentityAssociationsInput,
        output_schema = schemas.ListPodIdentityAssociationsOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.ListUpdatesInput,
        output_schema = schemas.ListUpdatesOutput,
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
        input_schema = schemas.RegisterClusterInput,
        output_schema = schemas.RegisterClusterOutput,
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
        input_schema = schemas.StartInsightsRefreshInput,
        output_schema = schemas.StartInsightsRefreshOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
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
        input_schema = schemas.UpdateAccessEntryInput,
        output_schema = schemas.UpdateAccessEntryOutput,
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
        input_schema = schemas.UpdateAddonInput,
        output_schema = schemas.UpdateAddonOutput,
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
        input_schema = schemas.UpdateCapabilityInput,
        output_schema = schemas.UpdateCapabilityOutput,
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
        input_schema = schemas.UpdateClusterConfigInput,
        output_schema = schemas.UpdateClusterConfigOutput,
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
        input_schema = schemas.UpdateClusterVersionInput,
        output_schema = schemas.UpdateClusterVersionOutput,
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
        input_schema = schemas.UpdateEksAnywhereSubscriptionInput,
        output_schema = schemas.UpdateEksAnywhereSubscriptionOutput,
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
        input_schema = schemas.UpdateNodegroupConfigInput,
        output_schema = schemas.UpdateNodegroupConfigOutput,
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
        input_schema = schemas.UpdateNodegroupVersionInput,
        output_schema = schemas.UpdateNodegroupVersionOutput,
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
        input_schema = schemas.UpdatePodIdentityAssociationInput,
        output_schema = schemas.UpdatePodIdentityAssociationOutput,
        http_method = "POST",
        http_path = "/clusters/{clusterName}/pod-identity-associations/{associationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
