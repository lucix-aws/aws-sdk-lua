local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_auth_resolver = require("smithy.auth.endpoint_auth_resolver")
local endpoint_rules = require("s3.endpoint_rules")
local restxml_protocol = require("smithy.protocol.restxml")
local schemas = require("s3.schemas")
local sdk_defaults = require("aws.sdk_defaults")
local auth = require("smithy.auth")
local s3express_signer = require("smithy.s3express_signer")
local s3express = require("aws.s3express")

local M = {}

local S3EXPRESS_SCHEME_ID = "com.amazonaws.s3#sigv4express"

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonS3"
    if not cfg.protocol then
        cfg.protocol = restxml_protocol.new({ no_error_wrapping = true })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "s3", signing_region = cfg.region } }
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

    -- Register S3Express auth scheme
    cfg.auth_schemes[S3EXPRESS_SCHEME_ID] = {
        scheme_id = S3EXPRESS_SCHEME_ID,
        identity_type = "s3express_credentials",
        signer = s3express_signer.sign,
        identity_resolver = function(self, identity_resolvers)
            return identity_resolvers[self.identity_type]
        end,
    }

    cfg.auth_scheme_resolver = endpoint_auth_resolver.new(cfg)
    local self = setmetatable(base_client.new(cfg), Client)

    -- Initialize S3Express credential provider (needs reference to client)
    if not cfg.disable_s3_express_session_auth then
        local provider = s3express.new({
            s3_client = self,
            base_credentials_resolver = cfg.identity_resolvers["aws_credentials"],
        })
        cfg.identity_resolvers["s3express_credentials"] = function()
            local bucket = cfg._s3express_bucket
            if not bucket then
                return nil, { type = "sdk", code = "S3ExpressError", message = "no bucket in context for S3Express" }
            end
            return provider.resolve(bucket)
        end
    end

    return self
end

function Client:abortMultipartUpload(input, options)
    return self:invokeOperation(input, {
        name = "AbortMultipartUpload",
        input_schema = schemas.AbortMultipartUploadInput,
        output_schema = schemas.AbortMultipartUploadOutput,
        http_method = "DELETE",
        http_path = "/{Key+}?x-id=AbortMultipartUpload",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
            Key = "Key",
        },
    }, options)
end

function Client:completeMultipartUpload(input, options)
    return self:invokeOperation(input, {
        name = "CompleteMultipartUpload",
        input_schema = schemas.CompleteMultipartUploadInput,
        output_schema = schemas.CompleteMultipartUploadOutput,
        http_method = "POST",
        http_path = "/{Key+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
            Key = "Key",
        },
    }, options)
end

function Client:copyObject(input, options)
    return self:invokeOperation(input, {
        name = "CopyObject",
        input_schema = schemas.CopyObjectInput,
        output_schema = schemas.CopyObjectOutput,
        http_method = "PUT",
        http_path = "/{Key+}?x-id=CopyObject",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
            CopySource = "CopySource",
            Key = "Key",
        },
    }, options)
end

function Client:createBucket(input, options)
    return self:invokeOperation(input, {
        name = "CreateBucket",
        input_schema = schemas.CreateBucketInput,
        output_schema = schemas.CreateBucketOutput,
        http_method = "PUT",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:createBucketMetadataConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateBucketMetadataConfiguration",
        input_schema = schemas.CreateBucketMetadataConfigurationInput,
        output_schema = schemas.CreateBucketMetadataConfigurationOutput,
        http_method = "POST",
        http_path = "/?metadataConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:createBucketMetadataTableConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateBucketMetadataTableConfiguration",
        input_schema = schemas.CreateBucketMetadataTableConfigurationInput,
        output_schema = schemas.CreateBucketMetadataTableConfigurationOutput,
        http_method = "POST",
        http_path = "/?metadataTable",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:createMultipartUpload(input, options)
    return self:invokeOperation(input, {
        name = "CreateMultipartUpload",
        input_schema = schemas.CreateMultipartUploadInput,
        output_schema = schemas.CreateMultipartUploadOutput,
        http_method = "POST",
        http_path = "/{Key+}?uploads",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
            Key = "Key",
        },
    }, options)
end

function Client:createSession(input, options)
    return self:invokeOperation(input, {
        name = "CreateSession",
        input_schema = schemas.CreateSessionInput,
        output_schema = schemas.CreateSessionOutput,
        http_method = "GET",
        http_path = "/?session",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:deleteBucket(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBucket",
        input_schema = schemas.DeleteBucketInput,
        output_schema = schemas.DeleteBucketOutput,
        http_method = "DELETE",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:deleteBucketAnalyticsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBucketAnalyticsConfiguration",
        input_schema = schemas.DeleteBucketAnalyticsConfigurationInput,
        output_schema = schemas.DeleteBucketAnalyticsConfigurationOutput,
        http_method = "DELETE",
        http_path = "/?analytics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:deleteBucketCors(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBucketCors",
        input_schema = schemas.DeleteBucketCorsInput,
        output_schema = schemas.DeleteBucketCorsOutput,
        http_method = "DELETE",
        http_path = "/?cors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:deleteBucketEncryption(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBucketEncryption",
        input_schema = schemas.DeleteBucketEncryptionInput,
        output_schema = schemas.DeleteBucketEncryptionOutput,
        http_method = "DELETE",
        http_path = "/?encryption",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:deleteBucketIntelligentTieringConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBucketIntelligentTieringConfiguration",
        input_schema = schemas.DeleteBucketIntelligentTieringConfigurationInput,
        output_schema = schemas.DeleteBucketIntelligentTieringConfigurationOutput,
        http_method = "DELETE",
        http_path = "/?intelligent-tiering",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:deleteBucketInventoryConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBucketInventoryConfiguration",
        input_schema = schemas.DeleteBucketInventoryConfigurationInput,
        output_schema = schemas.DeleteBucketInventoryConfigurationOutput,
        http_method = "DELETE",
        http_path = "/?inventory",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:deleteBucketLifecycle(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBucketLifecycle",
        input_schema = schemas.DeleteBucketLifecycleInput,
        output_schema = schemas.DeleteBucketLifecycleOutput,
        http_method = "DELETE",
        http_path = "/?lifecycle",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:deleteBucketMetadataConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBucketMetadataConfiguration",
        input_schema = schemas.DeleteBucketMetadataConfigurationInput,
        output_schema = schemas.DeleteBucketMetadataConfigurationOutput,
        http_method = "DELETE",
        http_path = "/?metadataConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:deleteBucketMetadataTableConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBucketMetadataTableConfiguration",
        input_schema = schemas.DeleteBucketMetadataTableConfigurationInput,
        output_schema = schemas.DeleteBucketMetadataTableConfigurationOutput,
        http_method = "DELETE",
        http_path = "/?metadataTable",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:deleteBucketMetricsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBucketMetricsConfiguration",
        input_schema = schemas.DeleteBucketMetricsConfigurationInput,
        output_schema = schemas.DeleteBucketMetricsConfigurationOutput,
        http_method = "DELETE",
        http_path = "/?metrics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:deleteBucketOwnershipControls(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBucketOwnershipControls",
        input_schema = schemas.DeleteBucketOwnershipControlsInput,
        output_schema = schemas.DeleteBucketOwnershipControlsOutput,
        http_method = "DELETE",
        http_path = "/?ownershipControls",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:deleteBucketPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBucketPolicy",
        input_schema = schemas.DeleteBucketPolicyInput,
        output_schema = schemas.DeleteBucketPolicyOutput,
        http_method = "DELETE",
        http_path = "/?policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:deleteBucketReplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBucketReplication",
        input_schema = schemas.DeleteBucketReplicationInput,
        output_schema = schemas.DeleteBucketReplicationOutput,
        http_method = "DELETE",
        http_path = "/?replication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:deleteBucketTagging(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBucketTagging",
        input_schema = schemas.DeleteBucketTaggingInput,
        output_schema = schemas.DeleteBucketTaggingOutput,
        http_method = "DELETE",
        http_path = "/?tagging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:deleteBucketWebsite(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBucketWebsite",
        input_schema = schemas.DeleteBucketWebsiteInput,
        output_schema = schemas.DeleteBucketWebsiteOutput,
        http_method = "DELETE",
        http_path = "/?website",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:deleteObject(input, options)
    return self:invokeOperation(input, {
        name = "DeleteObject",
        input_schema = schemas.DeleteObjectInput,
        output_schema = schemas.DeleteObjectOutput,
        http_method = "DELETE",
        http_path = "/{Key+}?x-id=DeleteObject",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
            Key = "Key",
        },
    }, options)
end

function Client:deleteObjects(input, options)
    return self:invokeOperation(input, {
        name = "DeleteObjects",
        input_schema = schemas.DeleteObjectsInput,
        output_schema = schemas.DeleteObjectsOutput,
        http_method = "POST",
        http_path = "/?delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:deleteObjectTagging(input, options)
    return self:invokeOperation(input, {
        name = "DeleteObjectTagging",
        input_schema = schemas.DeleteObjectTaggingInput,
        output_schema = schemas.DeleteObjectTaggingOutput,
        http_method = "DELETE",
        http_path = "/{Key+}?tagging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:deletePublicAccessBlock(input, options)
    return self:invokeOperation(input, {
        name = "DeletePublicAccessBlock",
        input_schema = schemas.DeletePublicAccessBlockInput,
        output_schema = schemas.DeletePublicAccessBlockOutput,
        http_method = "DELETE",
        http_path = "/?publicAccessBlock",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getBucketAbac(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketAbac",
        input_schema = schemas.GetBucketAbacInput,
        output_schema = schemas.GetBucketAbacOutput,
        http_method = "GET",
        http_path = "/?abac",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getBucketAccelerateConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketAccelerateConfiguration",
        input_schema = schemas.GetBucketAccelerateConfigurationInput,
        output_schema = schemas.GetBucketAccelerateConfigurationOutput,
        http_method = "GET",
        http_path = "/?accelerate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getBucketAcl(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketAcl",
        input_schema = schemas.GetBucketAclInput,
        output_schema = schemas.GetBucketAclOutput,
        http_method = "GET",
        http_path = "/?acl",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getBucketAnalyticsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketAnalyticsConfiguration",
        input_schema = schemas.GetBucketAnalyticsConfigurationInput,
        output_schema = schemas.GetBucketAnalyticsConfigurationOutput,
        http_method = "GET",
        http_path = "/?analytics&x-id=GetBucketAnalyticsConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getBucketCors(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketCors",
        input_schema = schemas.GetBucketCorsInput,
        output_schema = schemas.GetBucketCorsOutput,
        http_method = "GET",
        http_path = "/?cors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getBucketEncryption(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketEncryption",
        input_schema = schemas.GetBucketEncryptionInput,
        output_schema = schemas.GetBucketEncryptionOutput,
        http_method = "GET",
        http_path = "/?encryption",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getBucketIntelligentTieringConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketIntelligentTieringConfiguration",
        input_schema = schemas.GetBucketIntelligentTieringConfigurationInput,
        output_schema = schemas.GetBucketIntelligentTieringConfigurationOutput,
        http_method = "GET",
        http_path = "/?intelligent-tiering&x-id=GetBucketIntelligentTieringConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getBucketInventoryConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketInventoryConfiguration",
        input_schema = schemas.GetBucketInventoryConfigurationInput,
        output_schema = schemas.GetBucketInventoryConfigurationOutput,
        http_method = "GET",
        http_path = "/?inventory&x-id=GetBucketInventoryConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getBucketLifecycleConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketLifecycleConfiguration",
        input_schema = schemas.GetBucketLifecycleConfigurationInput,
        output_schema = schemas.GetBucketLifecycleConfigurationOutput,
        http_method = "GET",
        http_path = "/?lifecycle",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getBucketLocation(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketLocation",
        input_schema = schemas.GetBucketLocationInput,
        output_schema = schemas.GetBucketLocationOutput,
        http_method = "GET",
        http_path = "/?location",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getBucketLogging(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketLogging",
        input_schema = schemas.GetBucketLoggingInput,
        output_schema = schemas.GetBucketLoggingOutput,
        http_method = "GET",
        http_path = "/?logging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getBucketMetadataConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketMetadataConfiguration",
        input_schema = schemas.GetBucketMetadataConfigurationInput,
        output_schema = schemas.GetBucketMetadataConfigurationOutput,
        http_method = "GET",
        http_path = "/?metadataConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getBucketMetadataTableConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketMetadataTableConfiguration",
        input_schema = schemas.GetBucketMetadataTableConfigurationInput,
        output_schema = schemas.GetBucketMetadataTableConfigurationOutput,
        http_method = "GET",
        http_path = "/?metadataTable",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getBucketMetricsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketMetricsConfiguration",
        input_schema = schemas.GetBucketMetricsConfigurationInput,
        output_schema = schemas.GetBucketMetricsConfigurationOutput,
        http_method = "GET",
        http_path = "/?metrics&x-id=GetBucketMetricsConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getBucketNotificationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketNotificationConfiguration",
        input_schema = schemas.GetBucketNotificationConfigurationInput,
        output_schema = schemas.GetBucketNotificationConfigurationOutput,
        http_method = "GET",
        http_path = "/?notification",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getBucketOwnershipControls(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketOwnershipControls",
        input_schema = schemas.GetBucketOwnershipControlsInput,
        output_schema = schemas.GetBucketOwnershipControlsOutput,
        http_method = "GET",
        http_path = "/?ownershipControls",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getBucketPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketPolicy",
        input_schema = schemas.GetBucketPolicyInput,
        output_schema = schemas.GetBucketPolicyOutput,
        http_method = "GET",
        http_path = "/?policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getBucketPolicyStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketPolicyStatus",
        input_schema = schemas.GetBucketPolicyStatusInput,
        output_schema = schemas.GetBucketPolicyStatusOutput,
        http_method = "GET",
        http_path = "/?policyStatus",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getBucketReplication(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketReplication",
        input_schema = schemas.GetBucketReplicationInput,
        output_schema = schemas.GetBucketReplicationOutput,
        http_method = "GET",
        http_path = "/?replication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getBucketRequestPayment(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketRequestPayment",
        input_schema = schemas.GetBucketRequestPaymentInput,
        output_schema = schemas.GetBucketRequestPaymentOutput,
        http_method = "GET",
        http_path = "/?requestPayment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getBucketTagging(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketTagging",
        input_schema = schemas.GetBucketTaggingInput,
        output_schema = schemas.GetBucketTaggingOutput,
        http_method = "GET",
        http_path = "/?tagging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getBucketVersioning(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketVersioning",
        input_schema = schemas.GetBucketVersioningInput,
        output_schema = schemas.GetBucketVersioningOutput,
        http_method = "GET",
        http_path = "/?versioning",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getBucketWebsite(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketWebsite",
        input_schema = schemas.GetBucketWebsiteInput,
        output_schema = schemas.GetBucketWebsiteOutput,
        http_method = "GET",
        http_path = "/?website",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getObject(input, options)
    return self:invokeOperation(input, {
        name = "GetObject",
        input_schema = schemas.GetObjectInput,
        output_schema = schemas.GetObjectOutput,
        http_method = "GET",
        http_path = "/{Key+}?x-id=GetObject",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
            Key = "Key",
        },
    }, options)
end

function Client:getObjectAcl(input, options)
    return self:invokeOperation(input, {
        name = "GetObjectAcl",
        input_schema = schemas.GetObjectAclInput,
        output_schema = schemas.GetObjectAclOutput,
        http_method = "GET",
        http_path = "/{Key+}?acl",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
            Key = "Key",
        },
    }, options)
end

function Client:getObjectAttributes(input, options)
    return self:invokeOperation(input, {
        name = "GetObjectAttributes",
        input_schema = schemas.GetObjectAttributesInput,
        output_schema = schemas.GetObjectAttributesOutput,
        http_method = "GET",
        http_path = "/{Key+}?attributes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getObjectLegalHold(input, options)
    return self:invokeOperation(input, {
        name = "GetObjectLegalHold",
        input_schema = schemas.GetObjectLegalHoldInput,
        output_schema = schemas.GetObjectLegalHoldOutput,
        http_method = "GET",
        http_path = "/{Key+}?legal-hold",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getObjectLockConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetObjectLockConfiguration",
        input_schema = schemas.GetObjectLockConfigurationInput,
        output_schema = schemas.GetObjectLockConfigurationOutput,
        http_method = "GET",
        http_path = "/?object-lock",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getObjectRetention(input, options)
    return self:invokeOperation(input, {
        name = "GetObjectRetention",
        input_schema = schemas.GetObjectRetentionInput,
        output_schema = schemas.GetObjectRetentionOutput,
        http_method = "GET",
        http_path = "/{Key+}?retention",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getObjectTagging(input, options)
    return self:invokeOperation(input, {
        name = "GetObjectTagging",
        input_schema = schemas.GetObjectTaggingInput,
        output_schema = schemas.GetObjectTaggingOutput,
        http_method = "GET",
        http_path = "/{Key+}?tagging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getObjectTorrent(input, options)
    return self:invokeOperation(input, {
        name = "GetObjectTorrent",
        input_schema = schemas.GetObjectTorrentInput,
        output_schema = schemas.GetObjectTorrentOutput,
        http_method = "GET",
        http_path = "/{Key+}?torrent",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getPublicAccessBlock(input, options)
    return self:invokeOperation(input, {
        name = "GetPublicAccessBlock",
        input_schema = schemas.GetPublicAccessBlockInput,
        output_schema = schemas.GetPublicAccessBlockOutput,
        http_method = "GET",
        http_path = "/?publicAccessBlock",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:headBucket(input, options)
    return self:invokeOperation(input, {
        name = "HeadBucket",
        input_schema = schemas.HeadBucketInput,
        output_schema = schemas.HeadBucketOutput,
        http_method = "HEAD",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:headObject(input, options)
    return self:invokeOperation(input, {
        name = "HeadObject",
        input_schema = schemas.HeadObjectInput,
        output_schema = schemas.HeadObjectOutput,
        http_method = "HEAD",
        http_path = "/{Key+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
            Key = "Key",
        },
    }, options)
end

function Client:listBucketAnalyticsConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListBucketAnalyticsConfigurations",
        input_schema = schemas.ListBucketAnalyticsConfigurationsInput,
        output_schema = schemas.ListBucketAnalyticsConfigurationsOutput,
        http_method = "GET",
        http_path = "/?analytics&x-id=ListBucketAnalyticsConfigurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:listBucketIntelligentTieringConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListBucketIntelligentTieringConfigurations",
        input_schema = schemas.ListBucketIntelligentTieringConfigurationsInput,
        output_schema = schemas.ListBucketIntelligentTieringConfigurationsOutput,
        http_method = "GET",
        http_path = "/?intelligent-tiering&x-id=ListBucketIntelligentTieringConfigurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:listBucketInventoryConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListBucketInventoryConfigurations",
        input_schema = schemas.ListBucketInventoryConfigurationsInput,
        output_schema = schemas.ListBucketInventoryConfigurationsOutput,
        http_method = "GET",
        http_path = "/?inventory&x-id=ListBucketInventoryConfigurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:listBucketMetricsConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListBucketMetricsConfigurations",
        input_schema = schemas.ListBucketMetricsConfigurationsInput,
        output_schema = schemas.ListBucketMetricsConfigurationsOutput,
        http_method = "GET",
        http_path = "/?metrics&x-id=ListBucketMetricsConfigurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:listBuckets(input, options)
    return self:invokeOperation(input, {
        name = "ListBuckets",
        input_schema = schemas.ListBucketsInput,
        output_schema = schemas.ListBucketsOutput,
        http_method = "GET",
        http_path = "/?x-id=ListBuckets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDirectoryBuckets(input, options)
    return self:invokeOperation(input, {
        name = "ListDirectoryBuckets",
        input_schema = schemas.ListDirectoryBucketsInput,
        output_schema = schemas.ListDirectoryBucketsOutput,
        http_method = "GET",
        http_path = "/?x-id=ListDirectoryBuckets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMultipartUploads(input, options)
    return self:invokeOperation(input, {
        name = "ListMultipartUploads",
        input_schema = schemas.ListMultipartUploadsInput,
        output_schema = schemas.ListMultipartUploadsOutput,
        http_method = "GET",
        http_path = "/?uploads",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
            Prefix = "Prefix",
        },
    }, options)
end

function Client:listObjects(input, options)
    return self:invokeOperation(input, {
        name = "ListObjects",
        input_schema = schemas.ListObjectsInput,
        output_schema = schemas.ListObjectsOutput,
        http_method = "GET",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
            Prefix = "Prefix",
        },
    }, options)
end

function Client:listObjectsV2(input, options)
    return self:invokeOperation(input, {
        name = "ListObjectsV2",
        input_schema = schemas.ListObjectsV2Input,
        output_schema = schemas.ListObjectsV2Output,
        http_method = "GET",
        http_path = "/?list-type=2",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
            Prefix = "Prefix",
        },
    }, options)
end

function Client:listObjectVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListObjectVersions",
        input_schema = schemas.ListObjectVersionsInput,
        output_schema = schemas.ListObjectVersionsOutput,
        http_method = "GET",
        http_path = "/?versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
            Prefix = "Prefix",
        },
    }, options)
end

function Client:listParts(input, options)
    return self:invokeOperation(input, {
        name = "ListParts",
        input_schema = schemas.ListPartsInput,
        output_schema = schemas.ListPartsOutput,
        http_method = "GET",
        http_path = "/{Key+}?x-id=ListParts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
            Key = "Key",
        },
    }, options)
end

function Client:putBucketAbac(input, options)
    return self:invokeOperation(input, {
        name = "PutBucketAbac",
        input_schema = schemas.PutBucketAbacInput,
        output_schema = schemas.PutBucketAbacOutput,
        http_method = "PUT",
        http_path = "/?abac",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putBucketAccelerateConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutBucketAccelerateConfiguration",
        input_schema = schemas.PutBucketAccelerateConfigurationInput,
        output_schema = schemas.PutBucketAccelerateConfigurationOutput,
        http_method = "PUT",
        http_path = "/?accelerate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putBucketAcl(input, options)
    return self:invokeOperation(input, {
        name = "PutBucketAcl",
        input_schema = schemas.PutBucketAclInput,
        output_schema = schemas.PutBucketAclOutput,
        http_method = "PUT",
        http_path = "/?acl",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putBucketAnalyticsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutBucketAnalyticsConfiguration",
        input_schema = schemas.PutBucketAnalyticsConfigurationInput,
        output_schema = schemas.PutBucketAnalyticsConfigurationOutput,
        http_method = "PUT",
        http_path = "/?analytics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putBucketCors(input, options)
    return self:invokeOperation(input, {
        name = "PutBucketCors",
        input_schema = schemas.PutBucketCorsInput,
        output_schema = schemas.PutBucketCorsOutput,
        http_method = "PUT",
        http_path = "/?cors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putBucketEncryption(input, options)
    return self:invokeOperation(input, {
        name = "PutBucketEncryption",
        input_schema = schemas.PutBucketEncryptionInput,
        output_schema = schemas.PutBucketEncryptionOutput,
        http_method = "PUT",
        http_path = "/?encryption",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putBucketIntelligentTieringConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutBucketIntelligentTieringConfiguration",
        input_schema = schemas.PutBucketIntelligentTieringConfigurationInput,
        output_schema = schemas.PutBucketIntelligentTieringConfigurationOutput,
        http_method = "PUT",
        http_path = "/?intelligent-tiering",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putBucketInventoryConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutBucketInventoryConfiguration",
        input_schema = schemas.PutBucketInventoryConfigurationInput,
        output_schema = schemas.PutBucketInventoryConfigurationOutput,
        http_method = "PUT",
        http_path = "/?inventory",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putBucketLifecycleConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutBucketLifecycleConfiguration",
        input_schema = schemas.PutBucketLifecycleConfigurationInput,
        output_schema = schemas.PutBucketLifecycleConfigurationOutput,
        http_method = "PUT",
        http_path = "/?lifecycle",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putBucketLogging(input, options)
    return self:invokeOperation(input, {
        name = "PutBucketLogging",
        input_schema = schemas.PutBucketLoggingInput,
        output_schema = schemas.PutBucketLoggingOutput,
        http_method = "PUT",
        http_path = "/?logging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putBucketMetricsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutBucketMetricsConfiguration",
        input_schema = schemas.PutBucketMetricsConfigurationInput,
        output_schema = schemas.PutBucketMetricsConfigurationOutput,
        http_method = "PUT",
        http_path = "/?metrics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putBucketNotificationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutBucketNotificationConfiguration",
        input_schema = schemas.PutBucketNotificationConfigurationInput,
        output_schema = schemas.PutBucketNotificationConfigurationOutput,
        http_method = "PUT",
        http_path = "/?notification",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putBucketOwnershipControls(input, options)
    return self:invokeOperation(input, {
        name = "PutBucketOwnershipControls",
        input_schema = schemas.PutBucketOwnershipControlsInput,
        output_schema = schemas.PutBucketOwnershipControlsOutput,
        http_method = "PUT",
        http_path = "/?ownershipControls",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putBucketPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutBucketPolicy",
        input_schema = schemas.PutBucketPolicyInput,
        output_schema = schemas.PutBucketPolicyOutput,
        http_method = "PUT",
        http_path = "/?policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putBucketReplication(input, options)
    return self:invokeOperation(input, {
        name = "PutBucketReplication",
        input_schema = schemas.PutBucketReplicationInput,
        output_schema = schemas.PutBucketReplicationOutput,
        http_method = "PUT",
        http_path = "/?replication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putBucketRequestPayment(input, options)
    return self:invokeOperation(input, {
        name = "PutBucketRequestPayment",
        input_schema = schemas.PutBucketRequestPaymentInput,
        output_schema = schemas.PutBucketRequestPaymentOutput,
        http_method = "PUT",
        http_path = "/?requestPayment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putBucketTagging(input, options)
    return self:invokeOperation(input, {
        name = "PutBucketTagging",
        input_schema = schemas.PutBucketTaggingInput,
        output_schema = schemas.PutBucketTaggingOutput,
        http_method = "PUT",
        http_path = "/?tagging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putBucketVersioning(input, options)
    return self:invokeOperation(input, {
        name = "PutBucketVersioning",
        input_schema = schemas.PutBucketVersioningInput,
        output_schema = schemas.PutBucketVersioningOutput,
        http_method = "PUT",
        http_path = "/?versioning",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putBucketWebsite(input, options)
    return self:invokeOperation(input, {
        name = "PutBucketWebsite",
        input_schema = schemas.PutBucketWebsiteInput,
        output_schema = schemas.PutBucketWebsiteOutput,
        http_method = "PUT",
        http_path = "/?website",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putObject(input, options)
    return self:invokeOperation(input, {
        name = "PutObject",
        input_schema = schemas.PutObjectInput,
        output_schema = schemas.PutObjectOutput,
        http_method = "PUT",
        http_path = "/{Key+}?x-id=PutObject",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
            Key = "Key",
        },
    }, options)
end

function Client:putObjectAcl(input, options)
    return self:invokeOperation(input, {
        name = "PutObjectAcl",
        input_schema = schemas.PutObjectAclInput,
        output_schema = schemas.PutObjectAclOutput,
        http_method = "PUT",
        http_path = "/{Key+}?acl",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
            Key = "Key",
        },
    }, options)
end

function Client:putObjectLegalHold(input, options)
    return self:invokeOperation(input, {
        name = "PutObjectLegalHold",
        input_schema = schemas.PutObjectLegalHoldInput,
        output_schema = schemas.PutObjectLegalHoldOutput,
        http_method = "PUT",
        http_path = "/{Key+}?legal-hold",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putObjectLockConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutObjectLockConfiguration",
        input_schema = schemas.PutObjectLockConfigurationInput,
        output_schema = schemas.PutObjectLockConfigurationOutput,
        http_method = "PUT",
        http_path = "/?object-lock",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putObjectRetention(input, options)
    return self:invokeOperation(input, {
        name = "PutObjectRetention",
        input_schema = schemas.PutObjectRetentionInput,
        output_schema = schemas.PutObjectRetentionOutput,
        http_method = "PUT",
        http_path = "/{Key+}?retention",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putObjectTagging(input, options)
    return self:invokeOperation(input, {
        name = "PutObjectTagging",
        input_schema = schemas.PutObjectTaggingInput,
        output_schema = schemas.PutObjectTaggingOutput,
        http_method = "PUT",
        http_path = "/{Key+}?tagging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putPublicAccessBlock(input, options)
    return self:invokeOperation(input, {
        name = "PutPublicAccessBlock",
        input_schema = schemas.PutPublicAccessBlockInput,
        output_schema = schemas.PutPublicAccessBlockOutput,
        http_method = "PUT",
        http_path = "/?publicAccessBlock",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:renameObject(input, options)
    return self:invokeOperation(input, {
        name = "RenameObject",
        input_schema = schemas.RenameObjectInput,
        output_schema = schemas.RenameObjectOutput,
        http_method = "PUT",
        http_path = "/{Key+}?renameObject",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
            Key = "Key",
        },
    }, options)
end

function Client:restoreObject(input, options)
    return self:invokeOperation(input, {
        name = "RestoreObject",
        input_schema = schemas.RestoreObjectInput,
        output_schema = schemas.RestoreObjectOutput,
        http_method = "POST",
        http_path = "/{Key+}?restore",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:selectObjectContent(input, options)
    return self:invokeOperation(input, {
        name = "SelectObjectContent",
        input_schema = schemas.SelectObjectContentInput,
        output_schema = schemas.SelectObjectContentOutput,
        http_method = "POST",
        http_path = "/{Key+}?select&select-type=2",
        event_stream = schemas.SelectObjectContentEventStream,
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:updateBucketMetadataInventoryTableConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBucketMetadataInventoryTableConfiguration",
        input_schema = schemas.UpdateBucketMetadataInventoryTableConfigurationInput,
        output_schema = schemas.UpdateBucketMetadataInventoryTableConfigurationOutput,
        http_method = "PUT",
        http_path = "/?metadataInventoryTable",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:updateBucketMetadataJournalTableConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBucketMetadataJournalTableConfiguration",
        input_schema = schemas.UpdateBucketMetadataJournalTableConfigurationInput,
        output_schema = schemas.UpdateBucketMetadataJournalTableConfigurationOutput,
        http_method = "PUT",
        http_path = "/?metadataJournalTable",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:updateObjectEncryption(input, options)
    return self:invokeOperation(input, {
        name = "UpdateObjectEncryption",
        input_schema = schemas.UpdateObjectEncryptionInput,
        output_schema = schemas.UpdateObjectEncryptionOutput,
        http_method = "PUT",
        http_path = "/{Key+}?encryption",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:uploadPart(input, options)
    return self:invokeOperation(input, {
        name = "UploadPart",
        input_schema = schemas.UploadPartInput,
        output_schema = schemas.UploadPartOutput,
        http_method = "PUT",
        http_path = "/{Key+}?x-id=UploadPart",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
            Key = "Key",
        },
    }, options)
end

function Client:uploadPartCopy(input, options)
    return self:invokeOperation(input, {
        name = "UploadPartCopy",
        input_schema = schemas.UploadPartCopyInput,
        output_schema = schemas.UploadPartCopyOutput,
        http_method = "PUT",
        http_path = "/{Key+}?x-id=UploadPartCopy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
        },
    }, options)
end

function Client:writeGetObjectResponse(input, options)
    return self:invokeOperation(input, {
        name = "WriteGetObjectResponse",
        input_schema = schemas.WriteGetObjectResponseInput,
        output_schema = schemas.WriteGetObjectResponseOutput,
        http_method = "POST",
        http_path = "/WriteGetObjectResponse",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
