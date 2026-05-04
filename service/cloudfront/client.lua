local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("cloudfront.endpoint_rules")
local restxml_protocol = require("protocol.restxml")
local sdk_defaults = require("sdk_defaults")
local types = require("cloudfront.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Cloudfront2020_05_31"
    cfg.signing_name = "cloudfront2020_05_31"
    if not cfg.protocol then
        cfg.protocol = restxml_protocol.new()
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

function Client:associateAlias(input, options)
    return self:invokeOperation(input, {
        name = "AssociateAlias",
        input_schema = types.AssociateAliasInput,
        output_schema = types.AssociateAliasOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/distribution/{TargetDistributionId}/associate-alias",
    }, options)
end

function Client:associateDistributionTenantWebACL(input, options)
    return self:invokeOperation(input, {
        name = "AssociateDistributionTenantWebACL",
        input_schema = types.AssociateDistributionTenantWebACLInput,
        output_schema = types.AssociateDistributionTenantWebACLOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/distribution-tenant/{Id}/associate-web-acl",
    }, options)
end

function Client:associateDistributionWebACL(input, options)
    return self:invokeOperation(input, {
        name = "AssociateDistributionWebACL",
        input_schema = types.AssociateDistributionWebACLInput,
        output_schema = types.AssociateDistributionWebACLOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/distribution/{Id}/associate-web-acl",
    }, options)
end

function Client:copyDistribution(input, options)
    return self:invokeOperation(input, {
        name = "CopyDistribution",
        input_schema = types.CopyDistributionInput,
        output_schema = types.CopyDistributionOutput,
        http_method = "POST",
        http_path = "/2020-05-31/distribution/{PrimaryDistributionId}/copy",
    }, options)
end

function Client:createAnycastIpList(input, options)
    return self:invokeOperation(input, {
        name = "CreateAnycastIpList",
        input_schema = types.CreateAnycastIpListInput,
        output_schema = types.CreateAnycastIpListOutput,
        http_method = "POST",
        http_path = "/2020-05-31/anycast-ip-list",
    }, options)
end

function Client:createCachePolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateCachePolicy",
        input_schema = types.CreateCachePolicyInput,
        output_schema = types.CreateCachePolicyOutput,
        http_method = "POST",
        http_path = "/2020-05-31/cache-policy",
    }, options)
end

function Client:createCloudFrontOriginAccessIdentity(input, options)
    return self:invokeOperation(input, {
        name = "CreateCloudFrontOriginAccessIdentity",
        input_schema = types.CreateCloudFrontOriginAccessIdentityInput,
        output_schema = types.CreateCloudFrontOriginAccessIdentityOutput,
        http_method = "POST",
        http_path = "/2020-05-31/origin-access-identity/cloudfront",
    }, options)
end

function Client:createConnectionFunction(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnectionFunction",
        input_schema = types.CreateConnectionFunctionInput,
        output_schema = types.CreateConnectionFunctionOutput,
        http_method = "POST",
        http_path = "/2020-05-31/connection-function",
    }, options)
end

function Client:createConnectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnectionGroup",
        input_schema = types.CreateConnectionGroupInput,
        output_schema = types.CreateConnectionGroupOutput,
        http_method = "POST",
        http_path = "/2020-05-31/connection-group",
    }, options)
end

function Client:createContinuousDeploymentPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateContinuousDeploymentPolicy",
        input_schema = types.CreateContinuousDeploymentPolicyInput,
        output_schema = types.CreateContinuousDeploymentPolicyOutput,
        http_method = "POST",
        http_path = "/2020-05-31/continuous-deployment-policy",
    }, options)
end

function Client:createDistribution(input, options)
    return self:invokeOperation(input, {
        name = "CreateDistribution",
        input_schema = types.CreateDistributionInput,
        output_schema = types.CreateDistributionOutput,
        http_method = "POST",
        http_path = "/2020-05-31/distribution",
    }, options)
end

function Client:createDistributionTenant(input, options)
    return self:invokeOperation(input, {
        name = "CreateDistributionTenant",
        input_schema = types.CreateDistributionTenantInput,
        output_schema = types.CreateDistributionTenantOutput,
        http_method = "POST",
        http_path = "/2020-05-31/distribution-tenant",
    }, options)
end

function Client:createDistributionWithTags(input, options)
    return self:invokeOperation(input, {
        name = "CreateDistributionWithTags",
        input_schema = types.CreateDistributionWithTagsInput,
        output_schema = types.CreateDistributionWithTagsOutput,
        http_method = "POST",
        http_path = "/2020-05-31/distribution?WithTags",
    }, options)
end

function Client:createFieldLevelEncryptionConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateFieldLevelEncryptionConfig",
        input_schema = types.CreateFieldLevelEncryptionConfigInput,
        output_schema = types.CreateFieldLevelEncryptionConfigOutput,
        http_method = "POST",
        http_path = "/2020-05-31/field-level-encryption",
    }, options)
end

function Client:createFieldLevelEncryptionProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateFieldLevelEncryptionProfile",
        input_schema = types.CreateFieldLevelEncryptionProfileInput,
        output_schema = types.CreateFieldLevelEncryptionProfileOutput,
        http_method = "POST",
        http_path = "/2020-05-31/field-level-encryption-profile",
    }, options)
end

function Client:createFunction(input, options)
    return self:invokeOperation(input, {
        name = "CreateFunction",
        input_schema = types.CreateFunctionInput,
        output_schema = types.CreateFunctionOutput,
        http_method = "POST",
        http_path = "/2020-05-31/function",
    }, options)
end

function Client:createInvalidation(input, options)
    return self:invokeOperation(input, {
        name = "CreateInvalidation",
        input_schema = types.CreateInvalidationInput,
        output_schema = types.CreateInvalidationOutput,
        http_method = "POST",
        http_path = "/2020-05-31/distribution/{DistributionId}/invalidation",
    }, options)
end

function Client:createInvalidationForDistributionTenant(input, options)
    return self:invokeOperation(input, {
        name = "CreateInvalidationForDistributionTenant",
        input_schema = types.CreateInvalidationForDistributionTenantInput,
        output_schema = types.CreateInvalidationForDistributionTenantOutput,
        http_method = "POST",
        http_path = "/2020-05-31/distribution-tenant/{Id}/invalidation",
    }, options)
end

function Client:createKeyGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateKeyGroup",
        input_schema = types.CreateKeyGroupInput,
        output_schema = types.CreateKeyGroupOutput,
        http_method = "POST",
        http_path = "/2020-05-31/key-group",
    }, options)
end

function Client:createKeyValueStore(input, options)
    return self:invokeOperation(input, {
        name = "CreateKeyValueStore",
        input_schema = types.CreateKeyValueStoreInput,
        output_schema = types.CreateKeyValueStoreOutput,
        http_method = "POST",
        http_path = "/2020-05-31/key-value-store",
    }, options)
end

function Client:createMonitoringSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateMonitoringSubscription",
        input_schema = types.CreateMonitoringSubscriptionInput,
        output_schema = types.CreateMonitoringSubscriptionOutput,
        http_method = "POST",
        http_path = "/2020-05-31/distributions/{DistributionId}/monitoring-subscription",
    }, options)
end

function Client:createOriginAccessControl(input, options)
    return self:invokeOperation(input, {
        name = "CreateOriginAccessControl",
        input_schema = types.CreateOriginAccessControlInput,
        output_schema = types.CreateOriginAccessControlOutput,
        http_method = "POST",
        http_path = "/2020-05-31/origin-access-control",
    }, options)
end

function Client:createOriginRequestPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateOriginRequestPolicy",
        input_schema = types.CreateOriginRequestPolicyInput,
        output_schema = types.CreateOriginRequestPolicyOutput,
        http_method = "POST",
        http_path = "/2020-05-31/origin-request-policy",
    }, options)
end

function Client:createPublicKey(input, options)
    return self:invokeOperation(input, {
        name = "CreatePublicKey",
        input_schema = types.CreatePublicKeyInput,
        output_schema = types.CreatePublicKeyOutput,
        http_method = "POST",
        http_path = "/2020-05-31/public-key",
    }, options)
end

function Client:createRealtimeLogConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateRealtimeLogConfig",
        input_schema = types.CreateRealtimeLogConfigInput,
        output_schema = types.CreateRealtimeLogConfigOutput,
        http_method = "POST",
        http_path = "/2020-05-31/realtime-log-config",
    }, options)
end

function Client:createResponseHeadersPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateResponseHeadersPolicy",
        input_schema = types.CreateResponseHeadersPolicyInput,
        output_schema = types.CreateResponseHeadersPolicyOutput,
        http_method = "POST",
        http_path = "/2020-05-31/response-headers-policy",
    }, options)
end

function Client:createStreamingDistribution(input, options)
    return self:invokeOperation(input, {
        name = "CreateStreamingDistribution",
        input_schema = types.CreateStreamingDistributionInput,
        output_schema = types.CreateStreamingDistributionOutput,
        http_method = "POST",
        http_path = "/2020-05-31/streaming-distribution",
    }, options)
end

function Client:createStreamingDistributionWithTags(input, options)
    return self:invokeOperation(input, {
        name = "CreateStreamingDistributionWithTags",
        input_schema = types.CreateStreamingDistributionWithTagsInput,
        output_schema = types.CreateStreamingDistributionWithTagsOutput,
        http_method = "POST",
        http_path = "/2020-05-31/streaming-distribution?WithTags",
    }, options)
end

function Client:createTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrustStore",
        input_schema = types.CreateTrustStoreInput,
        output_schema = types.CreateTrustStoreOutput,
        http_method = "POST",
        http_path = "/2020-05-31/trust-store",
    }, options)
end

function Client:createVpcOrigin(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcOrigin",
        input_schema = types.CreateVpcOriginInput,
        output_schema = types.CreateVpcOriginOutput,
        http_method = "POST",
        http_path = "/2020-05-31/vpc-origin",
    }, options)
end

function Client:deleteAnycastIpList(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAnycastIpList",
        input_schema = types.DeleteAnycastIpListInput,
        output_schema = types.DeleteAnycastIpListOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/anycast-ip-list/{Id}",
    }, options)
end

function Client:deleteCachePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCachePolicy",
        input_schema = types.DeleteCachePolicyInput,
        output_schema = types.DeleteCachePolicyOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/cache-policy/{Id}",
    }, options)
end

function Client:deleteCloudFrontOriginAccessIdentity(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCloudFrontOriginAccessIdentity",
        input_schema = types.DeleteCloudFrontOriginAccessIdentityInput,
        output_schema = types.DeleteCloudFrontOriginAccessIdentityOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/origin-access-identity/cloudfront/{Id}",
    }, options)
end

function Client:deleteConnectionFunction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnectionFunction",
        input_schema = types.DeleteConnectionFunctionInput,
        output_schema = types.DeleteConnectionFunctionOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/connection-function/{Id}",
    }, options)
end

function Client:deleteConnectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnectionGroup",
        input_schema = types.DeleteConnectionGroupInput,
        output_schema = types.DeleteConnectionGroupOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/connection-group/{Id}",
    }, options)
end

function Client:deleteContinuousDeploymentPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContinuousDeploymentPolicy",
        input_schema = types.DeleteContinuousDeploymentPolicyInput,
        output_schema = types.DeleteContinuousDeploymentPolicyOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/continuous-deployment-policy/{Id}",
    }, options)
end

function Client:deleteDistribution(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDistribution",
        input_schema = types.DeleteDistributionInput,
        output_schema = types.DeleteDistributionOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/distribution/{Id}",
    }, options)
end

function Client:deleteDistributionTenant(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDistributionTenant",
        input_schema = types.DeleteDistributionTenantInput,
        output_schema = types.DeleteDistributionTenantOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/distribution-tenant/{Id}",
    }, options)
end

function Client:deleteFieldLevelEncryptionConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFieldLevelEncryptionConfig",
        input_schema = types.DeleteFieldLevelEncryptionConfigInput,
        output_schema = types.DeleteFieldLevelEncryptionConfigOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/field-level-encryption/{Id}",
    }, options)
end

function Client:deleteFieldLevelEncryptionProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFieldLevelEncryptionProfile",
        input_schema = types.DeleteFieldLevelEncryptionProfileInput,
        output_schema = types.DeleteFieldLevelEncryptionProfileOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/field-level-encryption-profile/{Id}",
    }, options)
end

function Client:deleteFunction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFunction",
        input_schema = types.DeleteFunctionInput,
        output_schema = types.DeleteFunctionOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/function/{Name}",
    }, options)
end

function Client:deleteKeyGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKeyGroup",
        input_schema = types.DeleteKeyGroupInput,
        output_schema = types.DeleteKeyGroupOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/key-group/{Id}",
    }, options)
end

function Client:deleteKeyValueStore(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKeyValueStore",
        input_schema = types.DeleteKeyValueStoreInput,
        output_schema = types.DeleteKeyValueStoreOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/key-value-store/{Name}",
    }, options)
end

function Client:deleteMonitoringSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMonitoringSubscription",
        input_schema = types.DeleteMonitoringSubscriptionInput,
        output_schema = types.DeleteMonitoringSubscriptionOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/distributions/{DistributionId}/monitoring-subscription",
    }, options)
end

function Client:deleteOriginAccessControl(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOriginAccessControl",
        input_schema = types.DeleteOriginAccessControlInput,
        output_schema = types.DeleteOriginAccessControlOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/origin-access-control/{Id}",
    }, options)
end

function Client:deleteOriginRequestPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOriginRequestPolicy",
        input_schema = types.DeleteOriginRequestPolicyInput,
        output_schema = types.DeleteOriginRequestPolicyOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/origin-request-policy/{Id}",
    }, options)
end

function Client:deletePublicKey(input, options)
    return self:invokeOperation(input, {
        name = "DeletePublicKey",
        input_schema = types.DeletePublicKeyInput,
        output_schema = types.DeletePublicKeyOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/public-key/{Id}",
    }, options)
end

function Client:deleteRealtimeLogConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRealtimeLogConfig",
        input_schema = types.DeleteRealtimeLogConfigInput,
        output_schema = types.DeleteRealtimeLogConfigOutput,
        http_method = "POST",
        http_path = "/2020-05-31/delete-realtime-log-config",
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/2020-05-31/delete-resource-policy",
    }, options)
end

function Client:deleteResponseHeadersPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResponseHeadersPolicy",
        input_schema = types.DeleteResponseHeadersPolicyInput,
        output_schema = types.DeleteResponseHeadersPolicyOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/response-headers-policy/{Id}",
    }, options)
end

function Client:deleteStreamingDistribution(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStreamingDistribution",
        input_schema = types.DeleteStreamingDistributionInput,
        output_schema = types.DeleteStreamingDistributionOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/streaming-distribution/{Id}",
    }, options)
end

function Client:deleteTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrustStore",
        input_schema = types.DeleteTrustStoreInput,
        output_schema = types.DeleteTrustStoreOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/trust-store/{Id}",
    }, options)
end

function Client:deleteVpcOrigin(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcOrigin",
        input_schema = types.DeleteVpcOriginInput,
        output_schema = types.DeleteVpcOriginOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/vpc-origin/{Id}",
    }, options)
end

function Client:describeConnectionFunction(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConnectionFunction",
        input_schema = types.DescribeConnectionFunctionInput,
        output_schema = types.DescribeConnectionFunctionOutput,
        http_method = "GET",
        http_path = "/2020-05-31/connection-function/{Identifier}/describe",
    }, options)
end

function Client:describeFunction(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFunction",
        input_schema = types.DescribeFunctionInput,
        output_schema = types.DescribeFunctionOutput,
        http_method = "GET",
        http_path = "/2020-05-31/function/{Name}/describe",
    }, options)
end

function Client:describeKeyValueStore(input, options)
    return self:invokeOperation(input, {
        name = "DescribeKeyValueStore",
        input_schema = types.DescribeKeyValueStoreInput,
        output_schema = types.DescribeKeyValueStoreOutput,
        http_method = "GET",
        http_path = "/2020-05-31/key-value-store/{Name}",
    }, options)
end

function Client:disassociateDistributionTenantWebACL(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateDistributionTenantWebACL",
        input_schema = types.DisassociateDistributionTenantWebACLInput,
        output_schema = types.DisassociateDistributionTenantWebACLOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/distribution-tenant/{Id}/disassociate-web-acl",
    }, options)
end

function Client:disassociateDistributionWebACL(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateDistributionWebACL",
        input_schema = types.DisassociateDistributionWebACLInput,
        output_schema = types.DisassociateDistributionWebACLOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/distribution/{Id}/disassociate-web-acl",
    }, options)
end

function Client:getAnycastIpList(input, options)
    return self:invokeOperation(input, {
        name = "GetAnycastIpList",
        input_schema = types.GetAnycastIpListInput,
        output_schema = types.GetAnycastIpListOutput,
        http_method = "GET",
        http_path = "/2020-05-31/anycast-ip-list/{Id}",
    }, options)
end

function Client:getCachePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetCachePolicy",
        input_schema = types.GetCachePolicyInput,
        output_schema = types.GetCachePolicyOutput,
        http_method = "GET",
        http_path = "/2020-05-31/cache-policy/{Id}",
    }, options)
end

function Client:getCachePolicyConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetCachePolicyConfig",
        input_schema = types.GetCachePolicyConfigInput,
        output_schema = types.GetCachePolicyConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/cache-policy/{Id}/config",
    }, options)
end

function Client:getCloudFrontOriginAccessIdentity(input, options)
    return self:invokeOperation(input, {
        name = "GetCloudFrontOriginAccessIdentity",
        input_schema = types.GetCloudFrontOriginAccessIdentityInput,
        output_schema = types.GetCloudFrontOriginAccessIdentityOutput,
        http_method = "GET",
        http_path = "/2020-05-31/origin-access-identity/cloudfront/{Id}",
    }, options)
end

function Client:getCloudFrontOriginAccessIdentityConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetCloudFrontOriginAccessIdentityConfig",
        input_schema = types.GetCloudFrontOriginAccessIdentityConfigInput,
        output_schema = types.GetCloudFrontOriginAccessIdentityConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/origin-access-identity/cloudfront/{Id}/config",
    }, options)
end

function Client:getConnectionFunction(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectionFunction",
        input_schema = types.GetConnectionFunctionInput,
        output_schema = types.GetConnectionFunctionOutput,
        http_method = "GET",
        http_path = "/2020-05-31/connection-function/{Identifier}",
    }, options)
end

function Client:getConnectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectionGroup",
        input_schema = types.GetConnectionGroupInput,
        output_schema = types.GetConnectionGroupOutput,
        http_method = "GET",
        http_path = "/2020-05-31/connection-group/{Identifier}",
    }, options)
end

function Client:getConnectionGroupByRoutingEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectionGroupByRoutingEndpoint",
        input_schema = types.GetConnectionGroupByRoutingEndpointInput,
        output_schema = types.GetConnectionGroupByRoutingEndpointOutput,
        http_method = "GET",
        http_path = "/2020-05-31/connection-group",
    }, options)
end

function Client:getContinuousDeploymentPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetContinuousDeploymentPolicy",
        input_schema = types.GetContinuousDeploymentPolicyInput,
        output_schema = types.GetContinuousDeploymentPolicyOutput,
        http_method = "GET",
        http_path = "/2020-05-31/continuous-deployment-policy/{Id}",
    }, options)
end

function Client:getContinuousDeploymentPolicyConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetContinuousDeploymentPolicyConfig",
        input_schema = types.GetContinuousDeploymentPolicyConfigInput,
        output_schema = types.GetContinuousDeploymentPolicyConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/continuous-deployment-policy/{Id}/config",
    }, options)
end

function Client:getDistribution(input, options)
    return self:invokeOperation(input, {
        name = "GetDistribution",
        input_schema = types.GetDistributionInput,
        output_schema = types.GetDistributionOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distribution/{Id}",
    }, options)
end

function Client:getDistributionConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetDistributionConfig",
        input_schema = types.GetDistributionConfigInput,
        output_schema = types.GetDistributionConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distribution/{Id}/config",
    }, options)
end

function Client:getDistributionTenant(input, options)
    return self:invokeOperation(input, {
        name = "GetDistributionTenant",
        input_schema = types.GetDistributionTenantInput,
        output_schema = types.GetDistributionTenantOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distribution-tenant/{Identifier}",
    }, options)
end

function Client:getDistributionTenantByDomain(input, options)
    return self:invokeOperation(input, {
        name = "GetDistributionTenantByDomain",
        input_schema = types.GetDistributionTenantByDomainInput,
        output_schema = types.GetDistributionTenantByDomainOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distribution-tenant",
    }, options)
end

function Client:getFieldLevelEncryption(input, options)
    return self:invokeOperation(input, {
        name = "GetFieldLevelEncryption",
        input_schema = types.GetFieldLevelEncryptionInput,
        output_schema = types.GetFieldLevelEncryptionOutput,
        http_method = "GET",
        http_path = "/2020-05-31/field-level-encryption/{Id}",
    }, options)
end

function Client:getFieldLevelEncryptionConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetFieldLevelEncryptionConfig",
        input_schema = types.GetFieldLevelEncryptionConfigInput,
        output_schema = types.GetFieldLevelEncryptionConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/field-level-encryption/{Id}/config",
    }, options)
end

function Client:getFieldLevelEncryptionProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetFieldLevelEncryptionProfile",
        input_schema = types.GetFieldLevelEncryptionProfileInput,
        output_schema = types.GetFieldLevelEncryptionProfileOutput,
        http_method = "GET",
        http_path = "/2020-05-31/field-level-encryption-profile/{Id}",
    }, options)
end

function Client:getFieldLevelEncryptionProfileConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetFieldLevelEncryptionProfileConfig",
        input_schema = types.GetFieldLevelEncryptionProfileConfigInput,
        output_schema = types.GetFieldLevelEncryptionProfileConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/field-level-encryption-profile/{Id}/config",
    }, options)
end

function Client:getFunction(input, options)
    return self:invokeOperation(input, {
        name = "GetFunction",
        input_schema = types.GetFunctionInput,
        output_schema = types.GetFunctionOutput,
        http_method = "GET",
        http_path = "/2020-05-31/function/{Name}",
    }, options)
end

function Client:getInvalidation(input, options)
    return self:invokeOperation(input, {
        name = "GetInvalidation",
        input_schema = types.GetInvalidationInput,
        output_schema = types.GetInvalidationOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distribution/{DistributionId}/invalidation/{Id}",
    }, options)
end

function Client:getInvalidationForDistributionTenant(input, options)
    return self:invokeOperation(input, {
        name = "GetInvalidationForDistributionTenant",
        input_schema = types.GetInvalidationForDistributionTenantInput,
        output_schema = types.GetInvalidationForDistributionTenantOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distribution-tenant/{DistributionTenantId}/invalidation/{Id}",
    }, options)
end

function Client:getKeyGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetKeyGroup",
        input_schema = types.GetKeyGroupInput,
        output_schema = types.GetKeyGroupOutput,
        http_method = "GET",
        http_path = "/2020-05-31/key-group/{Id}",
    }, options)
end

function Client:getKeyGroupConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetKeyGroupConfig",
        input_schema = types.GetKeyGroupConfigInput,
        output_schema = types.GetKeyGroupConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/key-group/{Id}/config",
    }, options)
end

function Client:getManagedCertificateDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedCertificateDetails",
        input_schema = types.GetManagedCertificateDetailsInput,
        output_schema = types.GetManagedCertificateDetailsOutput,
        http_method = "GET",
        http_path = "/2020-05-31/managed-certificate/{Identifier}",
    }, options)
end

function Client:getMonitoringSubscription(input, options)
    return self:invokeOperation(input, {
        name = "GetMonitoringSubscription",
        input_schema = types.GetMonitoringSubscriptionInput,
        output_schema = types.GetMonitoringSubscriptionOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributions/{DistributionId}/monitoring-subscription",
    }, options)
end

function Client:getOriginAccessControl(input, options)
    return self:invokeOperation(input, {
        name = "GetOriginAccessControl",
        input_schema = types.GetOriginAccessControlInput,
        output_schema = types.GetOriginAccessControlOutput,
        http_method = "GET",
        http_path = "/2020-05-31/origin-access-control/{Id}",
    }, options)
end

function Client:getOriginAccessControlConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetOriginAccessControlConfig",
        input_schema = types.GetOriginAccessControlConfigInput,
        output_schema = types.GetOriginAccessControlConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/origin-access-control/{Id}/config",
    }, options)
end

function Client:getOriginRequestPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetOriginRequestPolicy",
        input_schema = types.GetOriginRequestPolicyInput,
        output_schema = types.GetOriginRequestPolicyOutput,
        http_method = "GET",
        http_path = "/2020-05-31/origin-request-policy/{Id}",
    }, options)
end

function Client:getOriginRequestPolicyConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetOriginRequestPolicyConfig",
        input_schema = types.GetOriginRequestPolicyConfigInput,
        output_schema = types.GetOriginRequestPolicyConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/origin-request-policy/{Id}/config",
    }, options)
end

function Client:getPublicKey(input, options)
    return self:invokeOperation(input, {
        name = "GetPublicKey",
        input_schema = types.GetPublicKeyInput,
        output_schema = types.GetPublicKeyOutput,
        http_method = "GET",
        http_path = "/2020-05-31/public-key/{Id}",
    }, options)
end

function Client:getPublicKeyConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetPublicKeyConfig",
        input_schema = types.GetPublicKeyConfigInput,
        output_schema = types.GetPublicKeyConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/public-key/{Id}/config",
    }, options)
end

function Client:getRealtimeLogConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetRealtimeLogConfig",
        input_schema = types.GetRealtimeLogConfigInput,
        output_schema = types.GetRealtimeLogConfigOutput,
        http_method = "POST",
        http_path = "/2020-05-31/get-realtime-log-config",
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
        http_method = "POST",
        http_path = "/2020-05-31/get-resource-policy",
    }, options)
end

function Client:getResponseHeadersPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResponseHeadersPolicy",
        input_schema = types.GetResponseHeadersPolicyInput,
        output_schema = types.GetResponseHeadersPolicyOutput,
        http_method = "GET",
        http_path = "/2020-05-31/response-headers-policy/{Id}",
    }, options)
end

function Client:getResponseHeadersPolicyConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetResponseHeadersPolicyConfig",
        input_schema = types.GetResponseHeadersPolicyConfigInput,
        output_schema = types.GetResponseHeadersPolicyConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/response-headers-policy/{Id}/config",
    }, options)
end

function Client:getStreamingDistribution(input, options)
    return self:invokeOperation(input, {
        name = "GetStreamingDistribution",
        input_schema = types.GetStreamingDistributionInput,
        output_schema = types.GetStreamingDistributionOutput,
        http_method = "GET",
        http_path = "/2020-05-31/streaming-distribution/{Id}",
    }, options)
end

function Client:getStreamingDistributionConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetStreamingDistributionConfig",
        input_schema = types.GetStreamingDistributionConfigInput,
        output_schema = types.GetStreamingDistributionConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/streaming-distribution/{Id}/config",
    }, options)
end

function Client:getTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "GetTrustStore",
        input_schema = types.GetTrustStoreInput,
        output_schema = types.GetTrustStoreOutput,
        http_method = "GET",
        http_path = "/2020-05-31/trust-store/{Identifier}",
    }, options)
end

function Client:getVpcOrigin(input, options)
    return self:invokeOperation(input, {
        name = "GetVpcOrigin",
        input_schema = types.GetVpcOriginInput,
        output_schema = types.GetVpcOriginOutput,
        http_method = "GET",
        http_path = "/2020-05-31/vpc-origin/{Id}",
    }, options)
end

function Client:listAnycastIpLists(input, options)
    return self:invokeOperation(input, {
        name = "ListAnycastIpLists",
        input_schema = types.ListAnycastIpListsInput,
        output_schema = types.ListAnycastIpListsOutput,
        http_method = "GET",
        http_path = "/2020-05-31/anycast-ip-list",
    }, options)
end

function Client:listCachePolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListCachePolicies",
        input_schema = types.ListCachePoliciesInput,
        output_schema = types.ListCachePoliciesOutput,
        http_method = "GET",
        http_path = "/2020-05-31/cache-policy",
    }, options)
end

function Client:listCloudFrontOriginAccessIdentities(input, options)
    return self:invokeOperation(input, {
        name = "ListCloudFrontOriginAccessIdentities",
        input_schema = types.ListCloudFrontOriginAccessIdentitiesInput,
        output_schema = types.ListCloudFrontOriginAccessIdentitiesOutput,
        http_method = "GET",
        http_path = "/2020-05-31/origin-access-identity/cloudfront",
    }, options)
end

function Client:listConflictingAliases(input, options)
    return self:invokeOperation(input, {
        name = "ListConflictingAliases",
        input_schema = types.ListConflictingAliasesInput,
        output_schema = types.ListConflictingAliasesOutput,
        http_method = "GET",
        http_path = "/2020-05-31/conflicting-alias",
    }, options)
end

function Client:listConnectionFunctions(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectionFunctions",
        input_schema = types.ListConnectionFunctionsInput,
        output_schema = types.ListConnectionFunctionsOutput,
        http_method = "POST",
        http_path = "/2020-05-31/connection-functions",
    }, options)
end

function Client:listConnectionGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectionGroups",
        input_schema = types.ListConnectionGroupsInput,
        output_schema = types.ListConnectionGroupsOutput,
        http_method = "POST",
        http_path = "/2020-05-31/connection-groups",
    }, options)
end

function Client:listContinuousDeploymentPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListContinuousDeploymentPolicies",
        input_schema = types.ListContinuousDeploymentPoliciesInput,
        output_schema = types.ListContinuousDeploymentPoliciesOutput,
        http_method = "GET",
        http_path = "/2020-05-31/continuous-deployment-policy",
    }, options)
end

function Client:listDistributions(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributions",
        input_schema = types.ListDistributionsInput,
        output_schema = types.ListDistributionsOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distribution",
    }, options)
end

function Client:listDistributionsByAnycastIpListId(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByAnycastIpListId",
        input_schema = types.ListDistributionsByAnycastIpListIdInput,
        output_schema = types.ListDistributionsByAnycastIpListIdOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributionsByAnycastIpListId/{AnycastIpListId}",
    }, options)
end

function Client:listDistributionsByCachePolicyId(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByCachePolicyId",
        input_schema = types.ListDistributionsByCachePolicyIdInput,
        output_schema = types.ListDistributionsByCachePolicyIdOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributionsByCachePolicyId/{CachePolicyId}",
    }, options)
end

function Client:listDistributionsByConnectionFunction(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByConnectionFunction",
        input_schema = types.ListDistributionsByConnectionFunctionInput,
        output_schema = types.ListDistributionsByConnectionFunctionOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributionsByConnectionFunction",
    }, options)
end

function Client:listDistributionsByConnectionMode(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByConnectionMode",
        input_schema = types.ListDistributionsByConnectionModeInput,
        output_schema = types.ListDistributionsByConnectionModeOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributionsByConnectionMode/{ConnectionMode}",
    }, options)
end

function Client:listDistributionsByKeyGroup(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByKeyGroup",
        input_schema = types.ListDistributionsByKeyGroupInput,
        output_schema = types.ListDistributionsByKeyGroupOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributionsByKeyGroupId/{KeyGroupId}",
    }, options)
end

function Client:listDistributionsByOriginRequestPolicyId(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByOriginRequestPolicyId",
        input_schema = types.ListDistributionsByOriginRequestPolicyIdInput,
        output_schema = types.ListDistributionsByOriginRequestPolicyIdOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributionsByOriginRequestPolicyId/{OriginRequestPolicyId}",
    }, options)
end

function Client:listDistributionsByOwnedResource(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByOwnedResource",
        input_schema = types.ListDistributionsByOwnedResourceInput,
        output_schema = types.ListDistributionsByOwnedResourceOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributionsByOwnedResource/{ResourceArn}",
    }, options)
end

function Client:listDistributionsByRealtimeLogConfig(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByRealtimeLogConfig",
        input_schema = types.ListDistributionsByRealtimeLogConfigInput,
        output_schema = types.ListDistributionsByRealtimeLogConfigOutput,
        http_method = "POST",
        http_path = "/2020-05-31/distributionsByRealtimeLogConfig",
    }, options)
end

function Client:listDistributionsByResponseHeadersPolicyId(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByResponseHeadersPolicyId",
        input_schema = types.ListDistributionsByResponseHeadersPolicyIdInput,
        output_schema = types.ListDistributionsByResponseHeadersPolicyIdOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributionsByResponseHeadersPolicyId/{ResponseHeadersPolicyId}",
    }, options)
end

function Client:listDistributionsByTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByTrustStore",
        input_schema = types.ListDistributionsByTrustStoreInput,
        output_schema = types.ListDistributionsByTrustStoreOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributionsByTrustStore",
    }, options)
end

function Client:listDistributionsByVpcOriginId(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByVpcOriginId",
        input_schema = types.ListDistributionsByVpcOriginIdInput,
        output_schema = types.ListDistributionsByVpcOriginIdOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributionsByVpcOriginId/{VpcOriginId}",
    }, options)
end

function Client:listDistributionsByWebACLId(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByWebACLId",
        input_schema = types.ListDistributionsByWebACLIdInput,
        output_schema = types.ListDistributionsByWebACLIdOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributionsByWebACLId/{WebACLId}",
    }, options)
end

function Client:listDistributionTenants(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionTenants",
        input_schema = types.ListDistributionTenantsInput,
        output_schema = types.ListDistributionTenantsOutput,
        http_method = "POST",
        http_path = "/2020-05-31/distribution-tenants",
    }, options)
end

function Client:listDistributionTenantsByCustomization(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionTenantsByCustomization",
        input_schema = types.ListDistributionTenantsByCustomizationInput,
        output_schema = types.ListDistributionTenantsByCustomizationOutput,
        http_method = "POST",
        http_path = "/2020-05-31/distribution-tenants-by-customization",
    }, options)
end

function Client:listDomainConflicts(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainConflicts",
        input_schema = types.ListDomainConflictsInput,
        output_schema = types.ListDomainConflictsOutput,
        http_method = "POST",
        http_path = "/2020-05-31/domain-conflicts",
    }, options)
end

function Client:listFieldLevelEncryptionConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListFieldLevelEncryptionConfigs",
        input_schema = types.ListFieldLevelEncryptionConfigsInput,
        output_schema = types.ListFieldLevelEncryptionConfigsOutput,
        http_method = "GET",
        http_path = "/2020-05-31/field-level-encryption",
    }, options)
end

function Client:listFieldLevelEncryptionProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListFieldLevelEncryptionProfiles",
        input_schema = types.ListFieldLevelEncryptionProfilesInput,
        output_schema = types.ListFieldLevelEncryptionProfilesOutput,
        http_method = "GET",
        http_path = "/2020-05-31/field-level-encryption-profile",
    }, options)
end

function Client:listFunctions(input, options)
    return self:invokeOperation(input, {
        name = "ListFunctions",
        input_schema = types.ListFunctionsInput,
        output_schema = types.ListFunctionsOutput,
        http_method = "GET",
        http_path = "/2020-05-31/function",
    }, options)
end

function Client:listInvalidations(input, options)
    return self:invokeOperation(input, {
        name = "ListInvalidations",
        input_schema = types.ListInvalidationsInput,
        output_schema = types.ListInvalidationsOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distribution/{DistributionId}/invalidation",
    }, options)
end

function Client:listInvalidationsForDistributionTenant(input, options)
    return self:invokeOperation(input, {
        name = "ListInvalidationsForDistributionTenant",
        input_schema = types.ListInvalidationsForDistributionTenantInput,
        output_schema = types.ListInvalidationsForDistributionTenantOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distribution-tenant/{Id}/invalidation",
    }, options)
end

function Client:listKeyGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListKeyGroups",
        input_schema = types.ListKeyGroupsInput,
        output_schema = types.ListKeyGroupsOutput,
        http_method = "GET",
        http_path = "/2020-05-31/key-group",
    }, options)
end

function Client:listKeyValueStores(input, options)
    return self:invokeOperation(input, {
        name = "ListKeyValueStores",
        input_schema = types.ListKeyValueStoresInput,
        output_schema = types.ListKeyValueStoresOutput,
        http_method = "GET",
        http_path = "/2020-05-31/key-value-store",
    }, options)
end

function Client:listOriginAccessControls(input, options)
    return self:invokeOperation(input, {
        name = "ListOriginAccessControls",
        input_schema = types.ListOriginAccessControlsInput,
        output_schema = types.ListOriginAccessControlsOutput,
        http_method = "GET",
        http_path = "/2020-05-31/origin-access-control",
    }, options)
end

function Client:listOriginRequestPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListOriginRequestPolicies",
        input_schema = types.ListOriginRequestPoliciesInput,
        output_schema = types.ListOriginRequestPoliciesOutput,
        http_method = "GET",
        http_path = "/2020-05-31/origin-request-policy",
    }, options)
end

function Client:listPublicKeys(input, options)
    return self:invokeOperation(input, {
        name = "ListPublicKeys",
        input_schema = types.ListPublicKeysInput,
        output_schema = types.ListPublicKeysOutput,
        http_method = "GET",
        http_path = "/2020-05-31/public-key",
    }, options)
end

function Client:listRealtimeLogConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListRealtimeLogConfigs",
        input_schema = types.ListRealtimeLogConfigsInput,
        output_schema = types.ListRealtimeLogConfigsOutput,
        http_method = "GET",
        http_path = "/2020-05-31/realtime-log-config",
    }, options)
end

function Client:listResponseHeadersPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListResponseHeadersPolicies",
        input_schema = types.ListResponseHeadersPoliciesInput,
        output_schema = types.ListResponseHeadersPoliciesOutput,
        http_method = "GET",
        http_path = "/2020-05-31/response-headers-policy",
    }, options)
end

function Client:listStreamingDistributions(input, options)
    return self:invokeOperation(input, {
        name = "ListStreamingDistributions",
        input_schema = types.ListStreamingDistributionsInput,
        output_schema = types.ListStreamingDistributionsOutput,
        http_method = "GET",
        http_path = "/2020-05-31/streaming-distribution",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/2020-05-31/tagging",
    }, options)
end

function Client:listTrustStores(input, options)
    return self:invokeOperation(input, {
        name = "ListTrustStores",
        input_schema = types.ListTrustStoresInput,
        output_schema = types.ListTrustStoresOutput,
        http_method = "POST",
        http_path = "/2020-05-31/trust-stores",
    }, options)
end

function Client:listVpcOrigins(input, options)
    return self:invokeOperation(input, {
        name = "ListVpcOrigins",
        input_schema = types.ListVpcOriginsInput,
        output_schema = types.ListVpcOriginsOutput,
        http_method = "GET",
        http_path = "/2020-05-31/vpc-origin",
    }, options)
end

function Client:publishConnectionFunction(input, options)
    return self:invokeOperation(input, {
        name = "PublishConnectionFunction",
        input_schema = types.PublishConnectionFunctionInput,
        output_schema = types.PublishConnectionFunctionOutput,
        http_method = "POST",
        http_path = "/2020-05-31/connection-function/{Id}/publish",
    }, options)
end

function Client:publishFunction(input, options)
    return self:invokeOperation(input, {
        name = "PublishFunction",
        input_schema = types.PublishFunctionInput,
        output_schema = types.PublishFunctionOutput,
        http_method = "POST",
        http_path = "/2020-05-31/function/{Name}/publish",
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/2020-05-31/put-resource-policy",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/2020-05-31/tagging?Operation=Tag",
    }, options)
end

function Client:testConnectionFunction(input, options)
    return self:invokeOperation(input, {
        name = "TestConnectionFunction",
        input_schema = types.TestConnectionFunctionInput,
        output_schema = types.TestConnectionFunctionOutput,
        http_method = "POST",
        http_path = "/2020-05-31/connection-function/{Id}/test",
    }, options)
end

function Client:testFunction(input, options)
    return self:invokeOperation(input, {
        name = "TestFunction",
        input_schema = types.TestFunctionInput,
        output_schema = types.TestFunctionOutput,
        http_method = "POST",
        http_path = "/2020-05-31/function/{Name}/test",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/2020-05-31/tagging?Operation=Untag",
    }, options)
end

function Client:updateAnycastIpList(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAnycastIpList",
        input_schema = types.UpdateAnycastIpListInput,
        output_schema = types.UpdateAnycastIpListOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/anycast-ip-list/{Id}",
    }, options)
end

function Client:updateCachePolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCachePolicy",
        input_schema = types.UpdateCachePolicyInput,
        output_schema = types.UpdateCachePolicyOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/cache-policy/{Id}",
    }, options)
end

function Client:updateCloudFrontOriginAccessIdentity(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCloudFrontOriginAccessIdentity",
        input_schema = types.UpdateCloudFrontOriginAccessIdentityInput,
        output_schema = types.UpdateCloudFrontOriginAccessIdentityOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/origin-access-identity/cloudfront/{Id}/config",
    }, options)
end

function Client:updateConnectionFunction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnectionFunction",
        input_schema = types.UpdateConnectionFunctionInput,
        output_schema = types.UpdateConnectionFunctionOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/connection-function/{Id}",
    }, options)
end

function Client:updateConnectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnectionGroup",
        input_schema = types.UpdateConnectionGroupInput,
        output_schema = types.UpdateConnectionGroupOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/connection-group/{Id}",
    }, options)
end

function Client:updateContinuousDeploymentPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContinuousDeploymentPolicy",
        input_schema = types.UpdateContinuousDeploymentPolicyInput,
        output_schema = types.UpdateContinuousDeploymentPolicyOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/continuous-deployment-policy/{Id}",
    }, options)
end

function Client:updateDistribution(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDistribution",
        input_schema = types.UpdateDistributionInput,
        output_schema = types.UpdateDistributionOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/distribution/{Id}/config",
    }, options)
end

function Client:updateDistributionTenant(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDistributionTenant",
        input_schema = types.UpdateDistributionTenantInput,
        output_schema = types.UpdateDistributionTenantOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/distribution-tenant/{Id}",
    }, options)
end

function Client:updateDistributionWithStagingConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDistributionWithStagingConfig",
        input_schema = types.UpdateDistributionWithStagingConfigInput,
        output_schema = types.UpdateDistributionWithStagingConfigOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/distribution/{Id}/promote-staging-config",
    }, options)
end

function Client:updateDomainAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainAssociation",
        input_schema = types.UpdateDomainAssociationInput,
        output_schema = types.UpdateDomainAssociationOutput,
        http_method = "POST",
        http_path = "/2020-05-31/domain-association",
    }, options)
end

function Client:updateFieldLevelEncryptionConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFieldLevelEncryptionConfig",
        input_schema = types.UpdateFieldLevelEncryptionConfigInput,
        output_schema = types.UpdateFieldLevelEncryptionConfigOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/field-level-encryption/{Id}/config",
    }, options)
end

function Client:updateFieldLevelEncryptionProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFieldLevelEncryptionProfile",
        input_schema = types.UpdateFieldLevelEncryptionProfileInput,
        output_schema = types.UpdateFieldLevelEncryptionProfileOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/field-level-encryption-profile/{Id}/config",
    }, options)
end

function Client:updateFunction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFunction",
        input_schema = types.UpdateFunctionInput,
        output_schema = types.UpdateFunctionOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/function/{Name}",
    }, options)
end

function Client:updateKeyGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKeyGroup",
        input_schema = types.UpdateKeyGroupInput,
        output_schema = types.UpdateKeyGroupOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/key-group/{Id}",
    }, options)
end

function Client:updateKeyValueStore(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKeyValueStore",
        input_schema = types.UpdateKeyValueStoreInput,
        output_schema = types.UpdateKeyValueStoreOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/key-value-store/{Name}",
    }, options)
end

function Client:updateOriginAccessControl(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOriginAccessControl",
        input_schema = types.UpdateOriginAccessControlInput,
        output_schema = types.UpdateOriginAccessControlOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/origin-access-control/{Id}/config",
    }, options)
end

function Client:updateOriginRequestPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOriginRequestPolicy",
        input_schema = types.UpdateOriginRequestPolicyInput,
        output_schema = types.UpdateOriginRequestPolicyOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/origin-request-policy/{Id}",
    }, options)
end

function Client:updatePublicKey(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePublicKey",
        input_schema = types.UpdatePublicKeyInput,
        output_schema = types.UpdatePublicKeyOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/public-key/{Id}/config",
    }, options)
end

function Client:updateRealtimeLogConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRealtimeLogConfig",
        input_schema = types.UpdateRealtimeLogConfigInput,
        output_schema = types.UpdateRealtimeLogConfigOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/realtime-log-config",
    }, options)
end

function Client:updateResponseHeadersPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResponseHeadersPolicy",
        input_schema = types.UpdateResponseHeadersPolicyInput,
        output_schema = types.UpdateResponseHeadersPolicyOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/response-headers-policy/{Id}",
    }, options)
end

function Client:updateStreamingDistribution(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStreamingDistribution",
        input_schema = types.UpdateStreamingDistributionInput,
        output_schema = types.UpdateStreamingDistributionOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/streaming-distribution/{Id}/config",
    }, options)
end

function Client:updateTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTrustStore",
        input_schema = types.UpdateTrustStoreInput,
        output_schema = types.UpdateTrustStoreOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/trust-store/{Id}",
    }, options)
end

function Client:updateVpcOrigin(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVpcOrigin",
        input_schema = types.UpdateVpcOriginInput,
        output_schema = types.UpdateVpcOriginOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/vpc-origin/{Id}",
    }, options)
end

function Client:verifyDnsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "VerifyDnsConfiguration",
        input_schema = types.VerifyDnsConfigurationInput,
        output_schema = types.VerifyDnsConfigurationOutput,
        http_method = "POST",
        http_path = "/2020-05-31/verify-dns-configuration",
    }, options)
end

return M
