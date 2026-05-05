local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("cloudfront.endpoint_rules")
local restxml_protocol = require("protocol.restxml")
local schemas = require("cloudfront.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Cloudfront2020_05_31"
    if not cfg.protocol then
        cfg.protocol = restxml_protocol.new()
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cloudfront", signing_region = cfg.region } }
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

function Client:associateAlias(input, options)
    return self:invokeOperation(input, {
        name = "AssociateAlias",
        input_schema = schemas.AssociateAliasInput,
        output_schema = schemas.AssociateAliasOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/distribution/{TargetDistributionId}/associate-alias",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateDistributionTenantWebACL(input, options)
    return self:invokeOperation(input, {
        name = "AssociateDistributionTenantWebACL",
        input_schema = schemas.AssociateDistributionTenantWebACLInput,
        output_schema = schemas.AssociateDistributionTenantWebACLOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/distribution-tenant/{Id}/associate-web-acl",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateDistributionWebACL(input, options)
    return self:invokeOperation(input, {
        name = "AssociateDistributionWebACL",
        input_schema = schemas.AssociateDistributionWebACLInput,
        output_schema = schemas.AssociateDistributionWebACLOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/distribution/{Id}/associate-web-acl",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:copyDistribution(input, options)
    return self:invokeOperation(input, {
        name = "CopyDistribution",
        input_schema = schemas.CopyDistributionInput,
        output_schema = schemas.CopyDistributionOutput,
        http_method = "POST",
        http_path = "/2020-05-31/distribution/{PrimaryDistributionId}/copy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAnycastIpList(input, options)
    return self:invokeOperation(input, {
        name = "CreateAnycastIpList",
        input_schema = schemas.CreateAnycastIpListInput,
        output_schema = schemas.CreateAnycastIpListOutput,
        http_method = "POST",
        http_path = "/2020-05-31/anycast-ip-list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCachePolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateCachePolicy",
        input_schema = schemas.CreateCachePolicyInput,
        output_schema = schemas.CreateCachePolicyOutput,
        http_method = "POST",
        http_path = "/2020-05-31/cache-policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCloudFrontOriginAccessIdentity(input, options)
    return self:invokeOperation(input, {
        name = "CreateCloudFrontOriginAccessIdentity",
        input_schema = schemas.CreateCloudFrontOriginAccessIdentityInput,
        output_schema = schemas.CreateCloudFrontOriginAccessIdentityOutput,
        http_method = "POST",
        http_path = "/2020-05-31/origin-access-identity/cloudfront",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConnectionFunction(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnectionFunction",
        input_schema = schemas.CreateConnectionFunctionInput,
        output_schema = schemas.CreateConnectionFunctionOutput,
        http_method = "POST",
        http_path = "/2020-05-31/connection-function",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConnectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnectionGroup",
        input_schema = schemas.CreateConnectionGroupInput,
        output_schema = schemas.CreateConnectionGroupOutput,
        http_method = "POST",
        http_path = "/2020-05-31/connection-group",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createContinuousDeploymentPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateContinuousDeploymentPolicy",
        input_schema = schemas.CreateContinuousDeploymentPolicyInput,
        output_schema = schemas.CreateContinuousDeploymentPolicyOutput,
        http_method = "POST",
        http_path = "/2020-05-31/continuous-deployment-policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDistribution(input, options)
    return self:invokeOperation(input, {
        name = "CreateDistribution",
        input_schema = schemas.CreateDistributionInput,
        output_schema = schemas.CreateDistributionOutput,
        http_method = "POST",
        http_path = "/2020-05-31/distribution",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDistributionTenant(input, options)
    return self:invokeOperation(input, {
        name = "CreateDistributionTenant",
        input_schema = schemas.CreateDistributionTenantInput,
        output_schema = schemas.CreateDistributionTenantOutput,
        http_method = "POST",
        http_path = "/2020-05-31/distribution-tenant",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDistributionWithTags(input, options)
    return self:invokeOperation(input, {
        name = "CreateDistributionWithTags",
        input_schema = schemas.CreateDistributionWithTagsInput,
        output_schema = schemas.CreateDistributionWithTagsOutput,
        http_method = "POST",
        http_path = "/2020-05-31/distribution?WithTags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFieldLevelEncryptionConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateFieldLevelEncryptionConfig",
        input_schema = schemas.CreateFieldLevelEncryptionConfigInput,
        output_schema = schemas.CreateFieldLevelEncryptionConfigOutput,
        http_method = "POST",
        http_path = "/2020-05-31/field-level-encryption",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFieldLevelEncryptionProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateFieldLevelEncryptionProfile",
        input_schema = schemas.CreateFieldLevelEncryptionProfileInput,
        output_schema = schemas.CreateFieldLevelEncryptionProfileOutput,
        http_method = "POST",
        http_path = "/2020-05-31/field-level-encryption-profile",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFunction(input, options)
    return self:invokeOperation(input, {
        name = "CreateFunction",
        input_schema = schemas.CreateFunctionInput,
        output_schema = schemas.CreateFunctionOutput,
        http_method = "POST",
        http_path = "/2020-05-31/function",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInvalidation(input, options)
    return self:invokeOperation(input, {
        name = "CreateInvalidation",
        input_schema = schemas.CreateInvalidationInput,
        output_schema = schemas.CreateInvalidationOutput,
        http_method = "POST",
        http_path = "/2020-05-31/distribution/{DistributionId}/invalidation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInvalidationForDistributionTenant(input, options)
    return self:invokeOperation(input, {
        name = "CreateInvalidationForDistributionTenant",
        input_schema = schemas.CreateInvalidationForDistributionTenantInput,
        output_schema = schemas.CreateInvalidationForDistributionTenantOutput,
        http_method = "POST",
        http_path = "/2020-05-31/distribution-tenant/{Id}/invalidation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createKeyGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateKeyGroup",
        input_schema = schemas.CreateKeyGroupInput,
        output_schema = schemas.CreateKeyGroupOutput,
        http_method = "POST",
        http_path = "/2020-05-31/key-group",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createKeyValueStore(input, options)
    return self:invokeOperation(input, {
        name = "CreateKeyValueStore",
        input_schema = schemas.CreateKeyValueStoreInput,
        output_schema = schemas.CreateKeyValueStoreOutput,
        http_method = "POST",
        http_path = "/2020-05-31/key-value-store",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMonitoringSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateMonitoringSubscription",
        input_schema = schemas.CreateMonitoringSubscriptionInput,
        output_schema = schemas.CreateMonitoringSubscriptionOutput,
        http_method = "POST",
        http_path = "/2020-05-31/distributions/{DistributionId}/monitoring-subscription",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOriginAccessControl(input, options)
    return self:invokeOperation(input, {
        name = "CreateOriginAccessControl",
        input_schema = schemas.CreateOriginAccessControlInput,
        output_schema = schemas.CreateOriginAccessControlOutput,
        http_method = "POST",
        http_path = "/2020-05-31/origin-access-control",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOriginRequestPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateOriginRequestPolicy",
        input_schema = schemas.CreateOriginRequestPolicyInput,
        output_schema = schemas.CreateOriginRequestPolicyOutput,
        http_method = "POST",
        http_path = "/2020-05-31/origin-request-policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPublicKey(input, options)
    return self:invokeOperation(input, {
        name = "CreatePublicKey",
        input_schema = schemas.CreatePublicKeyInput,
        output_schema = schemas.CreatePublicKeyOutput,
        http_method = "POST",
        http_path = "/2020-05-31/public-key",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRealtimeLogConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateRealtimeLogConfig",
        input_schema = schemas.CreateRealtimeLogConfigInput,
        output_schema = schemas.CreateRealtimeLogConfigOutput,
        http_method = "POST",
        http_path = "/2020-05-31/realtime-log-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createResponseHeadersPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateResponseHeadersPolicy",
        input_schema = schemas.CreateResponseHeadersPolicyInput,
        output_schema = schemas.CreateResponseHeadersPolicyOutput,
        http_method = "POST",
        http_path = "/2020-05-31/response-headers-policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStreamingDistribution(input, options)
    return self:invokeOperation(input, {
        name = "CreateStreamingDistribution",
        input_schema = schemas.CreateStreamingDistributionInput,
        output_schema = schemas.CreateStreamingDistributionOutput,
        http_method = "POST",
        http_path = "/2020-05-31/streaming-distribution",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStreamingDistributionWithTags(input, options)
    return self:invokeOperation(input, {
        name = "CreateStreamingDistributionWithTags",
        input_schema = schemas.CreateStreamingDistributionWithTagsInput,
        output_schema = schemas.CreateStreamingDistributionWithTagsOutput,
        http_method = "POST",
        http_path = "/2020-05-31/streaming-distribution?WithTags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrustStore",
        input_schema = schemas.CreateTrustStoreInput,
        output_schema = schemas.CreateTrustStoreOutput,
        http_method = "POST",
        http_path = "/2020-05-31/trust-store",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVpcOrigin(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcOrigin",
        input_schema = schemas.CreateVpcOriginInput,
        output_schema = schemas.CreateVpcOriginOutput,
        http_method = "POST",
        http_path = "/2020-05-31/vpc-origin",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAnycastIpList(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAnycastIpList",
        input_schema = schemas.DeleteAnycastIpListInput,
        output_schema = schemas.DeleteAnycastIpListOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/anycast-ip-list/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCachePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCachePolicy",
        input_schema = schemas.DeleteCachePolicyInput,
        output_schema = schemas.DeleteCachePolicyOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/cache-policy/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCloudFrontOriginAccessIdentity(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCloudFrontOriginAccessIdentity",
        input_schema = schemas.DeleteCloudFrontOriginAccessIdentityInput,
        output_schema = schemas.DeleteCloudFrontOriginAccessIdentityOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/origin-access-identity/cloudfront/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConnectionFunction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnectionFunction",
        input_schema = schemas.DeleteConnectionFunctionInput,
        output_schema = schemas.DeleteConnectionFunctionOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/connection-function/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConnectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnectionGroup",
        input_schema = schemas.DeleteConnectionGroupInput,
        output_schema = schemas.DeleteConnectionGroupOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/connection-group/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteContinuousDeploymentPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContinuousDeploymentPolicy",
        input_schema = schemas.DeleteContinuousDeploymentPolicyInput,
        output_schema = schemas.DeleteContinuousDeploymentPolicyOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/continuous-deployment-policy/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDistribution(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDistribution",
        input_schema = schemas.DeleteDistributionInput,
        output_schema = schemas.DeleteDistributionOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/distribution/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDistributionTenant(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDistributionTenant",
        input_schema = schemas.DeleteDistributionTenantInput,
        output_schema = schemas.DeleteDistributionTenantOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/distribution-tenant/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFieldLevelEncryptionConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFieldLevelEncryptionConfig",
        input_schema = schemas.DeleteFieldLevelEncryptionConfigInput,
        output_schema = schemas.DeleteFieldLevelEncryptionConfigOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/field-level-encryption/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFieldLevelEncryptionProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFieldLevelEncryptionProfile",
        input_schema = schemas.DeleteFieldLevelEncryptionProfileInput,
        output_schema = schemas.DeleteFieldLevelEncryptionProfileOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/field-level-encryption-profile/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFunction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFunction",
        input_schema = schemas.DeleteFunctionInput,
        output_schema = schemas.DeleteFunctionOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/function/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteKeyGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKeyGroup",
        input_schema = schemas.DeleteKeyGroupInput,
        output_schema = schemas.DeleteKeyGroupOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/key-group/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteKeyValueStore(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKeyValueStore",
        input_schema = schemas.DeleteKeyValueStoreInput,
        output_schema = schemas.DeleteKeyValueStoreOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/key-value-store/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMonitoringSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMonitoringSubscription",
        input_schema = schemas.DeleteMonitoringSubscriptionInput,
        output_schema = schemas.DeleteMonitoringSubscriptionOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/distributions/{DistributionId}/monitoring-subscription",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOriginAccessControl(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOriginAccessControl",
        input_schema = schemas.DeleteOriginAccessControlInput,
        output_schema = schemas.DeleteOriginAccessControlOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/origin-access-control/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOriginRequestPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOriginRequestPolicy",
        input_schema = schemas.DeleteOriginRequestPolicyInput,
        output_schema = schemas.DeleteOriginRequestPolicyOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/origin-request-policy/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePublicKey(input, options)
    return self:invokeOperation(input, {
        name = "DeletePublicKey",
        input_schema = schemas.DeletePublicKeyInput,
        output_schema = schemas.DeletePublicKeyOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/public-key/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRealtimeLogConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRealtimeLogConfig",
        input_schema = schemas.DeleteRealtimeLogConfigInput,
        output_schema = schemas.DeleteRealtimeLogConfigOutput,
        http_method = "POST",
        http_path = "/2020-05-31/delete-realtime-log-config",
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
        http_path = "/2020-05-31/delete-resource-policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResponseHeadersPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResponseHeadersPolicy",
        input_schema = schemas.DeleteResponseHeadersPolicyInput,
        output_schema = schemas.DeleteResponseHeadersPolicyOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/response-headers-policy/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteStreamingDistribution(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStreamingDistribution",
        input_schema = schemas.DeleteStreamingDistributionInput,
        output_schema = schemas.DeleteStreamingDistributionOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/streaming-distribution/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrustStore",
        input_schema = schemas.DeleteTrustStoreInput,
        output_schema = schemas.DeleteTrustStoreOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/trust-store/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVpcOrigin(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcOrigin",
        input_schema = schemas.DeleteVpcOriginInput,
        output_schema = schemas.DeleteVpcOriginOutput,
        http_method = "DELETE",
        http_path = "/2020-05-31/vpc-origin/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConnectionFunction(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConnectionFunction",
        input_schema = schemas.DescribeConnectionFunctionInput,
        output_schema = schemas.DescribeConnectionFunctionOutput,
        http_method = "GET",
        http_path = "/2020-05-31/connection-function/{Identifier}/describe",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFunction(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFunction",
        input_schema = schemas.DescribeFunctionInput,
        output_schema = schemas.DescribeFunctionOutput,
        http_method = "GET",
        http_path = "/2020-05-31/function/{Name}/describe",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeKeyValueStore(input, options)
    return self:invokeOperation(input, {
        name = "DescribeKeyValueStore",
        input_schema = schemas.DescribeKeyValueStoreInput,
        output_schema = schemas.DescribeKeyValueStoreOutput,
        http_method = "GET",
        http_path = "/2020-05-31/key-value-store/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateDistributionTenantWebACL(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateDistributionTenantWebACL",
        input_schema = schemas.DisassociateDistributionTenantWebACLInput,
        output_schema = schemas.DisassociateDistributionTenantWebACLOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/distribution-tenant/{Id}/disassociate-web-acl",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateDistributionWebACL(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateDistributionWebACL",
        input_schema = schemas.DisassociateDistributionWebACLInput,
        output_schema = schemas.DisassociateDistributionWebACLOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/distribution/{Id}/disassociate-web-acl",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAnycastIpList(input, options)
    return self:invokeOperation(input, {
        name = "GetAnycastIpList",
        input_schema = schemas.GetAnycastIpListInput,
        output_schema = schemas.GetAnycastIpListOutput,
        http_method = "GET",
        http_path = "/2020-05-31/anycast-ip-list/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCachePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetCachePolicy",
        input_schema = schemas.GetCachePolicyInput,
        output_schema = schemas.GetCachePolicyOutput,
        http_method = "GET",
        http_path = "/2020-05-31/cache-policy/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCachePolicyConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetCachePolicyConfig",
        input_schema = schemas.GetCachePolicyConfigInput,
        output_schema = schemas.GetCachePolicyConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/cache-policy/{Id}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCloudFrontOriginAccessIdentity(input, options)
    return self:invokeOperation(input, {
        name = "GetCloudFrontOriginAccessIdentity",
        input_schema = schemas.GetCloudFrontOriginAccessIdentityInput,
        output_schema = schemas.GetCloudFrontOriginAccessIdentityOutput,
        http_method = "GET",
        http_path = "/2020-05-31/origin-access-identity/cloudfront/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCloudFrontOriginAccessIdentityConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetCloudFrontOriginAccessIdentityConfig",
        input_schema = schemas.GetCloudFrontOriginAccessIdentityConfigInput,
        output_schema = schemas.GetCloudFrontOriginAccessIdentityConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/origin-access-identity/cloudfront/{Id}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnectionFunction(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectionFunction",
        input_schema = schemas.GetConnectionFunctionInput,
        output_schema = schemas.GetConnectionFunctionOutput,
        http_method = "GET",
        http_path = "/2020-05-31/connection-function/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectionGroup",
        input_schema = schemas.GetConnectionGroupInput,
        output_schema = schemas.GetConnectionGroupOutput,
        http_method = "GET",
        http_path = "/2020-05-31/connection-group/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnectionGroupByRoutingEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectionGroupByRoutingEndpoint",
        input_schema = schemas.GetConnectionGroupByRoutingEndpointInput,
        output_schema = schemas.GetConnectionGroupByRoutingEndpointOutput,
        http_method = "GET",
        http_path = "/2020-05-31/connection-group",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContinuousDeploymentPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetContinuousDeploymentPolicy",
        input_schema = schemas.GetContinuousDeploymentPolicyInput,
        output_schema = schemas.GetContinuousDeploymentPolicyOutput,
        http_method = "GET",
        http_path = "/2020-05-31/continuous-deployment-policy/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContinuousDeploymentPolicyConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetContinuousDeploymentPolicyConfig",
        input_schema = schemas.GetContinuousDeploymentPolicyConfigInput,
        output_schema = schemas.GetContinuousDeploymentPolicyConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/continuous-deployment-policy/{Id}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDistribution(input, options)
    return self:invokeOperation(input, {
        name = "GetDistribution",
        input_schema = schemas.GetDistributionInput,
        output_schema = schemas.GetDistributionOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distribution/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDistributionConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetDistributionConfig",
        input_schema = schemas.GetDistributionConfigInput,
        output_schema = schemas.GetDistributionConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distribution/{Id}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDistributionTenant(input, options)
    return self:invokeOperation(input, {
        name = "GetDistributionTenant",
        input_schema = schemas.GetDistributionTenantInput,
        output_schema = schemas.GetDistributionTenantOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distribution-tenant/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDistributionTenantByDomain(input, options)
    return self:invokeOperation(input, {
        name = "GetDistributionTenantByDomain",
        input_schema = schemas.GetDistributionTenantByDomainInput,
        output_schema = schemas.GetDistributionTenantByDomainOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distribution-tenant",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFieldLevelEncryption(input, options)
    return self:invokeOperation(input, {
        name = "GetFieldLevelEncryption",
        input_schema = schemas.GetFieldLevelEncryptionInput,
        output_schema = schemas.GetFieldLevelEncryptionOutput,
        http_method = "GET",
        http_path = "/2020-05-31/field-level-encryption/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFieldLevelEncryptionConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetFieldLevelEncryptionConfig",
        input_schema = schemas.GetFieldLevelEncryptionConfigInput,
        output_schema = schemas.GetFieldLevelEncryptionConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/field-level-encryption/{Id}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFieldLevelEncryptionProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetFieldLevelEncryptionProfile",
        input_schema = schemas.GetFieldLevelEncryptionProfileInput,
        output_schema = schemas.GetFieldLevelEncryptionProfileOutput,
        http_method = "GET",
        http_path = "/2020-05-31/field-level-encryption-profile/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFieldLevelEncryptionProfileConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetFieldLevelEncryptionProfileConfig",
        input_schema = schemas.GetFieldLevelEncryptionProfileConfigInput,
        output_schema = schemas.GetFieldLevelEncryptionProfileConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/field-level-encryption-profile/{Id}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFunction(input, options)
    return self:invokeOperation(input, {
        name = "GetFunction",
        input_schema = schemas.GetFunctionInput,
        output_schema = schemas.GetFunctionOutput,
        http_method = "GET",
        http_path = "/2020-05-31/function/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInvalidation(input, options)
    return self:invokeOperation(input, {
        name = "GetInvalidation",
        input_schema = schemas.GetInvalidationInput,
        output_schema = schemas.GetInvalidationOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distribution/{DistributionId}/invalidation/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInvalidationForDistributionTenant(input, options)
    return self:invokeOperation(input, {
        name = "GetInvalidationForDistributionTenant",
        input_schema = schemas.GetInvalidationForDistributionTenantInput,
        output_schema = schemas.GetInvalidationForDistributionTenantOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distribution-tenant/{DistributionTenantId}/invalidation/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getKeyGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetKeyGroup",
        input_schema = schemas.GetKeyGroupInput,
        output_schema = schemas.GetKeyGroupOutput,
        http_method = "GET",
        http_path = "/2020-05-31/key-group/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getKeyGroupConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetKeyGroupConfig",
        input_schema = schemas.GetKeyGroupConfigInput,
        output_schema = schemas.GetKeyGroupConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/key-group/{Id}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getManagedCertificateDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedCertificateDetails",
        input_schema = schemas.GetManagedCertificateDetailsInput,
        output_schema = schemas.GetManagedCertificateDetailsOutput,
        http_method = "GET",
        http_path = "/2020-05-31/managed-certificate/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMonitoringSubscription(input, options)
    return self:invokeOperation(input, {
        name = "GetMonitoringSubscription",
        input_schema = schemas.GetMonitoringSubscriptionInput,
        output_schema = schemas.GetMonitoringSubscriptionOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributions/{DistributionId}/monitoring-subscription",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOriginAccessControl(input, options)
    return self:invokeOperation(input, {
        name = "GetOriginAccessControl",
        input_schema = schemas.GetOriginAccessControlInput,
        output_schema = schemas.GetOriginAccessControlOutput,
        http_method = "GET",
        http_path = "/2020-05-31/origin-access-control/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOriginAccessControlConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetOriginAccessControlConfig",
        input_schema = schemas.GetOriginAccessControlConfigInput,
        output_schema = schemas.GetOriginAccessControlConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/origin-access-control/{Id}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOriginRequestPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetOriginRequestPolicy",
        input_schema = schemas.GetOriginRequestPolicyInput,
        output_schema = schemas.GetOriginRequestPolicyOutput,
        http_method = "GET",
        http_path = "/2020-05-31/origin-request-policy/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOriginRequestPolicyConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetOriginRequestPolicyConfig",
        input_schema = schemas.GetOriginRequestPolicyConfigInput,
        output_schema = schemas.GetOriginRequestPolicyConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/origin-request-policy/{Id}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPublicKey(input, options)
    return self:invokeOperation(input, {
        name = "GetPublicKey",
        input_schema = schemas.GetPublicKeyInput,
        output_schema = schemas.GetPublicKeyOutput,
        http_method = "GET",
        http_path = "/2020-05-31/public-key/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPublicKeyConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetPublicKeyConfig",
        input_schema = schemas.GetPublicKeyConfigInput,
        output_schema = schemas.GetPublicKeyConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/public-key/{Id}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRealtimeLogConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetRealtimeLogConfig",
        input_schema = schemas.GetRealtimeLogConfigInput,
        output_schema = schemas.GetRealtimeLogConfigOutput,
        http_method = "POST",
        http_path = "/2020-05-31/get-realtime-log-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = schemas.GetResourcePolicyInput,
        output_schema = schemas.GetResourcePolicyOutput,
        http_method = "POST",
        http_path = "/2020-05-31/get-resource-policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResponseHeadersPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResponseHeadersPolicy",
        input_schema = schemas.GetResponseHeadersPolicyInput,
        output_schema = schemas.GetResponseHeadersPolicyOutput,
        http_method = "GET",
        http_path = "/2020-05-31/response-headers-policy/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResponseHeadersPolicyConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetResponseHeadersPolicyConfig",
        input_schema = schemas.GetResponseHeadersPolicyConfigInput,
        output_schema = schemas.GetResponseHeadersPolicyConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/response-headers-policy/{Id}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getStreamingDistribution(input, options)
    return self:invokeOperation(input, {
        name = "GetStreamingDistribution",
        input_schema = schemas.GetStreamingDistributionInput,
        output_schema = schemas.GetStreamingDistributionOutput,
        http_method = "GET",
        http_path = "/2020-05-31/streaming-distribution/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getStreamingDistributionConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetStreamingDistributionConfig",
        input_schema = schemas.GetStreamingDistributionConfigInput,
        output_schema = schemas.GetStreamingDistributionConfigOutput,
        http_method = "GET",
        http_path = "/2020-05-31/streaming-distribution/{Id}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "GetTrustStore",
        input_schema = schemas.GetTrustStoreInput,
        output_schema = schemas.GetTrustStoreOutput,
        http_method = "GET",
        http_path = "/2020-05-31/trust-store/{Identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVpcOrigin(input, options)
    return self:invokeOperation(input, {
        name = "GetVpcOrigin",
        input_schema = schemas.GetVpcOriginInput,
        output_schema = schemas.GetVpcOriginOutput,
        http_method = "GET",
        http_path = "/2020-05-31/vpc-origin/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAnycastIpLists(input, options)
    return self:invokeOperation(input, {
        name = "ListAnycastIpLists",
        input_schema = schemas.ListAnycastIpListsInput,
        output_schema = schemas.ListAnycastIpListsOutput,
        http_method = "GET",
        http_path = "/2020-05-31/anycast-ip-list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCachePolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListCachePolicies",
        input_schema = schemas.ListCachePoliciesInput,
        output_schema = schemas.ListCachePoliciesOutput,
        http_method = "GET",
        http_path = "/2020-05-31/cache-policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCloudFrontOriginAccessIdentities(input, options)
    return self:invokeOperation(input, {
        name = "ListCloudFrontOriginAccessIdentities",
        input_schema = schemas.ListCloudFrontOriginAccessIdentitiesInput,
        output_schema = schemas.ListCloudFrontOriginAccessIdentitiesOutput,
        http_method = "GET",
        http_path = "/2020-05-31/origin-access-identity/cloudfront",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConflictingAliases(input, options)
    return self:invokeOperation(input, {
        name = "ListConflictingAliases",
        input_schema = schemas.ListConflictingAliasesInput,
        output_schema = schemas.ListConflictingAliasesOutput,
        http_method = "GET",
        http_path = "/2020-05-31/conflicting-alias",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConnectionFunctions(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectionFunctions",
        input_schema = schemas.ListConnectionFunctionsInput,
        output_schema = schemas.ListConnectionFunctionsOutput,
        http_method = "POST",
        http_path = "/2020-05-31/connection-functions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConnectionGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectionGroups",
        input_schema = schemas.ListConnectionGroupsInput,
        output_schema = schemas.ListConnectionGroupsOutput,
        http_method = "POST",
        http_path = "/2020-05-31/connection-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listContinuousDeploymentPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListContinuousDeploymentPolicies",
        input_schema = schemas.ListContinuousDeploymentPoliciesInput,
        output_schema = schemas.ListContinuousDeploymentPoliciesOutput,
        http_method = "GET",
        http_path = "/2020-05-31/continuous-deployment-policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDistributions(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributions",
        input_schema = schemas.ListDistributionsInput,
        output_schema = schemas.ListDistributionsOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distribution",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDistributionsByAnycastIpListId(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByAnycastIpListId",
        input_schema = schemas.ListDistributionsByAnycastIpListIdInput,
        output_schema = schemas.ListDistributionsByAnycastIpListIdOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributionsByAnycastIpListId/{AnycastIpListId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDistributionsByCachePolicyId(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByCachePolicyId",
        input_schema = schemas.ListDistributionsByCachePolicyIdInput,
        output_schema = schemas.ListDistributionsByCachePolicyIdOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributionsByCachePolicyId/{CachePolicyId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDistributionsByConnectionFunction(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByConnectionFunction",
        input_schema = schemas.ListDistributionsByConnectionFunctionInput,
        output_schema = schemas.ListDistributionsByConnectionFunctionOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributionsByConnectionFunction",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDistributionsByConnectionMode(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByConnectionMode",
        input_schema = schemas.ListDistributionsByConnectionModeInput,
        output_schema = schemas.ListDistributionsByConnectionModeOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributionsByConnectionMode/{ConnectionMode}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDistributionsByKeyGroup(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByKeyGroup",
        input_schema = schemas.ListDistributionsByKeyGroupInput,
        output_schema = schemas.ListDistributionsByKeyGroupOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributionsByKeyGroupId/{KeyGroupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDistributionsByOriginRequestPolicyId(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByOriginRequestPolicyId",
        input_schema = schemas.ListDistributionsByOriginRequestPolicyIdInput,
        output_schema = schemas.ListDistributionsByOriginRequestPolicyIdOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributionsByOriginRequestPolicyId/{OriginRequestPolicyId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDistributionsByOwnedResource(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByOwnedResource",
        input_schema = schemas.ListDistributionsByOwnedResourceInput,
        output_schema = schemas.ListDistributionsByOwnedResourceOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributionsByOwnedResource/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDistributionsByRealtimeLogConfig(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByRealtimeLogConfig",
        input_schema = schemas.ListDistributionsByRealtimeLogConfigInput,
        output_schema = schemas.ListDistributionsByRealtimeLogConfigOutput,
        http_method = "POST",
        http_path = "/2020-05-31/distributionsByRealtimeLogConfig",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDistributionsByResponseHeadersPolicyId(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByResponseHeadersPolicyId",
        input_schema = schemas.ListDistributionsByResponseHeadersPolicyIdInput,
        output_schema = schemas.ListDistributionsByResponseHeadersPolicyIdOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributionsByResponseHeadersPolicyId/{ResponseHeadersPolicyId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDistributionsByTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByTrustStore",
        input_schema = schemas.ListDistributionsByTrustStoreInput,
        output_schema = schemas.ListDistributionsByTrustStoreOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributionsByTrustStore",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDistributionsByVpcOriginId(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByVpcOriginId",
        input_schema = schemas.ListDistributionsByVpcOriginIdInput,
        output_schema = schemas.ListDistributionsByVpcOriginIdOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributionsByVpcOriginId/{VpcOriginId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDistributionsByWebACLId(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionsByWebACLId",
        input_schema = schemas.ListDistributionsByWebACLIdInput,
        output_schema = schemas.ListDistributionsByWebACLIdOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distributionsByWebACLId/{WebACLId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDistributionTenants(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionTenants",
        input_schema = schemas.ListDistributionTenantsInput,
        output_schema = schemas.ListDistributionTenantsOutput,
        http_method = "POST",
        http_path = "/2020-05-31/distribution-tenants",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDistributionTenantsByCustomization(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionTenantsByCustomization",
        input_schema = schemas.ListDistributionTenantsByCustomizationInput,
        output_schema = schemas.ListDistributionTenantsByCustomizationOutput,
        http_method = "POST",
        http_path = "/2020-05-31/distribution-tenants-by-customization",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDomainConflicts(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainConflicts",
        input_schema = schemas.ListDomainConflictsInput,
        output_schema = schemas.ListDomainConflictsOutput,
        http_method = "POST",
        http_path = "/2020-05-31/domain-conflicts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFieldLevelEncryptionConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListFieldLevelEncryptionConfigs",
        input_schema = schemas.ListFieldLevelEncryptionConfigsInput,
        output_schema = schemas.ListFieldLevelEncryptionConfigsOutput,
        http_method = "GET",
        http_path = "/2020-05-31/field-level-encryption",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFieldLevelEncryptionProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListFieldLevelEncryptionProfiles",
        input_schema = schemas.ListFieldLevelEncryptionProfilesInput,
        output_schema = schemas.ListFieldLevelEncryptionProfilesOutput,
        http_method = "GET",
        http_path = "/2020-05-31/field-level-encryption-profile",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFunctions(input, options)
    return self:invokeOperation(input, {
        name = "ListFunctions",
        input_schema = schemas.ListFunctionsInput,
        output_schema = schemas.ListFunctionsOutput,
        http_method = "GET",
        http_path = "/2020-05-31/function",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInvalidations(input, options)
    return self:invokeOperation(input, {
        name = "ListInvalidations",
        input_schema = schemas.ListInvalidationsInput,
        output_schema = schemas.ListInvalidationsOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distribution/{DistributionId}/invalidation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInvalidationsForDistributionTenant(input, options)
    return self:invokeOperation(input, {
        name = "ListInvalidationsForDistributionTenant",
        input_schema = schemas.ListInvalidationsForDistributionTenantInput,
        output_schema = schemas.ListInvalidationsForDistributionTenantOutput,
        http_method = "GET",
        http_path = "/2020-05-31/distribution-tenant/{Id}/invalidation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listKeyGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListKeyGroups",
        input_schema = schemas.ListKeyGroupsInput,
        output_schema = schemas.ListKeyGroupsOutput,
        http_method = "GET",
        http_path = "/2020-05-31/key-group",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listKeyValueStores(input, options)
    return self:invokeOperation(input, {
        name = "ListKeyValueStores",
        input_schema = schemas.ListKeyValueStoresInput,
        output_schema = schemas.ListKeyValueStoresOutput,
        http_method = "GET",
        http_path = "/2020-05-31/key-value-store",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOriginAccessControls(input, options)
    return self:invokeOperation(input, {
        name = "ListOriginAccessControls",
        input_schema = schemas.ListOriginAccessControlsInput,
        output_schema = schemas.ListOriginAccessControlsOutput,
        http_method = "GET",
        http_path = "/2020-05-31/origin-access-control",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOriginRequestPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListOriginRequestPolicies",
        input_schema = schemas.ListOriginRequestPoliciesInput,
        output_schema = schemas.ListOriginRequestPoliciesOutput,
        http_method = "GET",
        http_path = "/2020-05-31/origin-request-policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPublicKeys(input, options)
    return self:invokeOperation(input, {
        name = "ListPublicKeys",
        input_schema = schemas.ListPublicKeysInput,
        output_schema = schemas.ListPublicKeysOutput,
        http_method = "GET",
        http_path = "/2020-05-31/public-key",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRealtimeLogConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListRealtimeLogConfigs",
        input_schema = schemas.ListRealtimeLogConfigsInput,
        output_schema = schemas.ListRealtimeLogConfigsOutput,
        http_method = "GET",
        http_path = "/2020-05-31/realtime-log-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResponseHeadersPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListResponseHeadersPolicies",
        input_schema = schemas.ListResponseHeadersPoliciesInput,
        output_schema = schemas.ListResponseHeadersPoliciesOutput,
        http_method = "GET",
        http_path = "/2020-05-31/response-headers-policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStreamingDistributions(input, options)
    return self:invokeOperation(input, {
        name = "ListStreamingDistributions",
        input_schema = schemas.ListStreamingDistributionsInput,
        output_schema = schemas.ListStreamingDistributionsOutput,
        http_method = "GET",
        http_path = "/2020-05-31/streaming-distribution",
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
        http_path = "/2020-05-31/tagging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTrustStores(input, options)
    return self:invokeOperation(input, {
        name = "ListTrustStores",
        input_schema = schemas.ListTrustStoresInput,
        output_schema = schemas.ListTrustStoresOutput,
        http_method = "POST",
        http_path = "/2020-05-31/trust-stores",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVpcOrigins(input, options)
    return self:invokeOperation(input, {
        name = "ListVpcOrigins",
        input_schema = schemas.ListVpcOriginsInput,
        output_schema = schemas.ListVpcOriginsOutput,
        http_method = "GET",
        http_path = "/2020-05-31/vpc-origin",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:publishConnectionFunction(input, options)
    return self:invokeOperation(input, {
        name = "PublishConnectionFunction",
        input_schema = schemas.PublishConnectionFunctionInput,
        output_schema = schemas.PublishConnectionFunctionOutput,
        http_method = "POST",
        http_path = "/2020-05-31/connection-function/{Id}/publish",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:publishFunction(input, options)
    return self:invokeOperation(input, {
        name = "PublishFunction",
        input_schema = schemas.PublishFunctionInput,
        output_schema = schemas.PublishFunctionOutput,
        http_method = "POST",
        http_path = "/2020-05-31/function/{Name}/publish",
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
        http_path = "/2020-05-31/put-resource-policy",
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
        http_path = "/2020-05-31/tagging?Operation=Tag",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:testConnectionFunction(input, options)
    return self:invokeOperation(input, {
        name = "TestConnectionFunction",
        input_schema = schemas.TestConnectionFunctionInput,
        output_schema = schemas.TestConnectionFunctionOutput,
        http_method = "POST",
        http_path = "/2020-05-31/connection-function/{Id}/test",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:testFunction(input, options)
    return self:invokeOperation(input, {
        name = "TestFunction",
        input_schema = schemas.TestFunctionInput,
        output_schema = schemas.TestFunctionOutput,
        http_method = "POST",
        http_path = "/2020-05-31/function/{Name}/test",
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
        http_path = "/2020-05-31/tagging?Operation=Untag",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAnycastIpList(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAnycastIpList",
        input_schema = schemas.UpdateAnycastIpListInput,
        output_schema = schemas.UpdateAnycastIpListOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/anycast-ip-list/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCachePolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCachePolicy",
        input_schema = schemas.UpdateCachePolicyInput,
        output_schema = schemas.UpdateCachePolicyOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/cache-policy/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCloudFrontOriginAccessIdentity(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCloudFrontOriginAccessIdentity",
        input_schema = schemas.UpdateCloudFrontOriginAccessIdentityInput,
        output_schema = schemas.UpdateCloudFrontOriginAccessIdentityOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/origin-access-identity/cloudfront/{Id}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConnectionFunction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnectionFunction",
        input_schema = schemas.UpdateConnectionFunctionInput,
        output_schema = schemas.UpdateConnectionFunctionOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/connection-function/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConnectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnectionGroup",
        input_schema = schemas.UpdateConnectionGroupInput,
        output_schema = schemas.UpdateConnectionGroupOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/connection-group/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateContinuousDeploymentPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContinuousDeploymentPolicy",
        input_schema = schemas.UpdateContinuousDeploymentPolicyInput,
        output_schema = schemas.UpdateContinuousDeploymentPolicyOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/continuous-deployment-policy/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDistribution(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDistribution",
        input_schema = schemas.UpdateDistributionInput,
        output_schema = schemas.UpdateDistributionOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/distribution/{Id}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDistributionTenant(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDistributionTenant",
        input_schema = schemas.UpdateDistributionTenantInput,
        output_schema = schemas.UpdateDistributionTenantOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/distribution-tenant/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDistributionWithStagingConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDistributionWithStagingConfig",
        input_schema = schemas.UpdateDistributionWithStagingConfigInput,
        output_schema = schemas.UpdateDistributionWithStagingConfigOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/distribution/{Id}/promote-staging-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDomainAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainAssociation",
        input_schema = schemas.UpdateDomainAssociationInput,
        output_schema = schemas.UpdateDomainAssociationOutput,
        http_method = "POST",
        http_path = "/2020-05-31/domain-association",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFieldLevelEncryptionConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFieldLevelEncryptionConfig",
        input_schema = schemas.UpdateFieldLevelEncryptionConfigInput,
        output_schema = schemas.UpdateFieldLevelEncryptionConfigOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/field-level-encryption/{Id}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFieldLevelEncryptionProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFieldLevelEncryptionProfile",
        input_schema = schemas.UpdateFieldLevelEncryptionProfileInput,
        output_schema = schemas.UpdateFieldLevelEncryptionProfileOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/field-level-encryption-profile/{Id}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFunction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFunction",
        input_schema = schemas.UpdateFunctionInput,
        output_schema = schemas.UpdateFunctionOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/function/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateKeyGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKeyGroup",
        input_schema = schemas.UpdateKeyGroupInput,
        output_schema = schemas.UpdateKeyGroupOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/key-group/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateKeyValueStore(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKeyValueStore",
        input_schema = schemas.UpdateKeyValueStoreInput,
        output_schema = schemas.UpdateKeyValueStoreOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/key-value-store/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateOriginAccessControl(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOriginAccessControl",
        input_schema = schemas.UpdateOriginAccessControlInput,
        output_schema = schemas.UpdateOriginAccessControlOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/origin-access-control/{Id}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateOriginRequestPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOriginRequestPolicy",
        input_schema = schemas.UpdateOriginRequestPolicyInput,
        output_schema = schemas.UpdateOriginRequestPolicyOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/origin-request-policy/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePublicKey(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePublicKey",
        input_schema = schemas.UpdatePublicKeyInput,
        output_schema = schemas.UpdatePublicKeyOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/public-key/{Id}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRealtimeLogConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRealtimeLogConfig",
        input_schema = schemas.UpdateRealtimeLogConfigInput,
        output_schema = schemas.UpdateRealtimeLogConfigOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/realtime-log-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateResponseHeadersPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResponseHeadersPolicy",
        input_schema = schemas.UpdateResponseHeadersPolicyInput,
        output_schema = schemas.UpdateResponseHeadersPolicyOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/response-headers-policy/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateStreamingDistribution(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStreamingDistribution",
        input_schema = schemas.UpdateStreamingDistributionInput,
        output_schema = schemas.UpdateStreamingDistributionOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/streaming-distribution/{Id}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTrustStore",
        input_schema = schemas.UpdateTrustStoreInput,
        output_schema = schemas.UpdateTrustStoreOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/trust-store/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateVpcOrigin(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVpcOrigin",
        input_schema = schemas.UpdateVpcOriginInput,
        output_schema = schemas.UpdateVpcOriginOutput,
        http_method = "PUT",
        http_path = "/2020-05-31/vpc-origin/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:verifyDnsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "VerifyDnsConfiguration",
        input_schema = schemas.VerifyDnsConfigurationInput,
        output_schema = schemas.VerifyDnsConfigurationOutput,
        http_method = "POST",
        http_path = "/2020-05-31/verify-dns-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
