local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("s3.endpoint_rules")
local restxml_protocol = require("protocol.restxml")
local sdk_defaults = require("sdk_defaults")
local types = require("s3.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonS3"
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
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:abortMultipartUpload(input, options)
    return self:invokeOperation(input, {
        name = "AbortMultipartUpload",
        input_schema = types.AbortMultipartUploadInput,
        output_schema = types.AbortMultipartUploadOutput,
        http_method = "DELETE",
        http_path = "/{Bucket}/{Key+}?x-id=AbortMultipartUpload",
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
        input_schema = types.CompleteMultipartUploadInput,
        output_schema = types.CompleteMultipartUploadOutput,
        http_method = "POST",
        http_path = "/{Bucket}/{Key+}",
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
        input_schema = types.CopyObjectInput,
        output_schema = types.CopyObjectOutput,
        http_method = "PUT",
        http_path = "/{Bucket}/{Key+}?x-id=CopyObject",
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
        input_schema = types.CreateBucketInput,
        output_schema = types.CreateBucketOutput,
        http_method = "PUT",
        http_path = "/{Bucket}",
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
        input_schema = types.CreateBucketMetadataConfigurationInput,
        output_schema = types.CreateBucketMetadataConfigurationOutput,
        http_method = "POST",
        http_path = "/{Bucket}?metadataConfiguration",
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
        input_schema = types.CreateBucketMetadataTableConfigurationInput,
        output_schema = types.CreateBucketMetadataTableConfigurationOutput,
        http_method = "POST",
        http_path = "/{Bucket}?metadataTable",
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
        input_schema = types.CreateMultipartUploadInput,
        output_schema = types.CreateMultipartUploadOutput,
        http_method = "POST",
        http_path = "/{Bucket}/{Key+}?uploads",
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
        input_schema = types.CreateSessionInput,
        output_schema = types.CreateSessionOutput,
        http_method = "GET",
        http_path = "/{Bucket}?session",
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
        input_schema = types.DeleteBucketInput,
        output_schema = types.DeleteBucketOutput,
        http_method = "DELETE",
        http_path = "/{Bucket}",
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
        input_schema = types.DeleteBucketAnalyticsConfigurationInput,
        output_schema = types.DeleteBucketAnalyticsConfigurationOutput,
        http_method = "DELETE",
        http_path = "/{Bucket}?analytics",
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
        input_schema = types.DeleteBucketCorsInput,
        output_schema = types.DeleteBucketCorsOutput,
        http_method = "DELETE",
        http_path = "/{Bucket}?cors",
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
        input_schema = types.DeleteBucketEncryptionInput,
        output_schema = types.DeleteBucketEncryptionOutput,
        http_method = "DELETE",
        http_path = "/{Bucket}?encryption",
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
        input_schema = types.DeleteBucketIntelligentTieringConfigurationInput,
        output_schema = types.DeleteBucketIntelligentTieringConfigurationOutput,
        http_method = "DELETE",
        http_path = "/{Bucket}?intelligent-tiering",
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
        input_schema = types.DeleteBucketInventoryConfigurationInput,
        output_schema = types.DeleteBucketInventoryConfigurationOutput,
        http_method = "DELETE",
        http_path = "/{Bucket}?inventory",
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
        input_schema = types.DeleteBucketLifecycleInput,
        output_schema = types.DeleteBucketLifecycleOutput,
        http_method = "DELETE",
        http_path = "/{Bucket}?lifecycle",
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
        input_schema = types.DeleteBucketMetadataConfigurationInput,
        output_schema = types.DeleteBucketMetadataConfigurationOutput,
        http_method = "DELETE",
        http_path = "/{Bucket}?metadataConfiguration",
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
        input_schema = types.DeleteBucketMetadataTableConfigurationInput,
        output_schema = types.DeleteBucketMetadataTableConfigurationOutput,
        http_method = "DELETE",
        http_path = "/{Bucket}?metadataTable",
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
        input_schema = types.DeleteBucketMetricsConfigurationInput,
        output_schema = types.DeleteBucketMetricsConfigurationOutput,
        http_method = "DELETE",
        http_path = "/{Bucket}?metrics",
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
        input_schema = types.DeleteBucketOwnershipControlsInput,
        output_schema = types.DeleteBucketOwnershipControlsOutput,
        http_method = "DELETE",
        http_path = "/{Bucket}?ownershipControls",
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
        input_schema = types.DeleteBucketPolicyInput,
        output_schema = types.DeleteBucketPolicyOutput,
        http_method = "DELETE",
        http_path = "/{Bucket}?policy",
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
        input_schema = types.DeleteBucketReplicationInput,
        output_schema = types.DeleteBucketReplicationOutput,
        http_method = "DELETE",
        http_path = "/{Bucket}?replication",
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
        input_schema = types.DeleteBucketTaggingInput,
        output_schema = types.DeleteBucketTaggingOutput,
        http_method = "DELETE",
        http_path = "/{Bucket}?tagging",
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
        input_schema = types.DeleteBucketWebsiteInput,
        output_schema = types.DeleteBucketWebsiteOutput,
        http_method = "DELETE",
        http_path = "/{Bucket}?website",
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
        input_schema = types.DeleteObjectInput,
        output_schema = types.DeleteObjectOutput,
        http_method = "DELETE",
        http_path = "/{Bucket}/{Key+}?x-id=DeleteObject",
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
        input_schema = types.DeleteObjectsInput,
        output_schema = types.DeleteObjectsOutput,
        http_method = "POST",
        http_path = "/{Bucket}?delete",
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
        input_schema = types.DeleteObjectTaggingInput,
        output_schema = types.DeleteObjectTaggingOutput,
        http_method = "DELETE",
        http_path = "/{Bucket}/{Key+}?tagging",
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
        input_schema = types.DeletePublicAccessBlockInput,
        output_schema = types.DeletePublicAccessBlockOutput,
        http_method = "DELETE",
        http_path = "/{Bucket}?publicAccessBlock",
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
        input_schema = types.GetBucketAbacInput,
        output_schema = types.GetBucketAbacOutput,
        http_method = "GET",
        http_path = "/{Bucket}?abac",
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
        input_schema = types.GetBucketAccelerateConfigurationInput,
        output_schema = types.GetBucketAccelerateConfigurationOutput,
        http_method = "GET",
        http_path = "/{Bucket}?accelerate",
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
        input_schema = types.GetBucketAclInput,
        output_schema = types.GetBucketAclOutput,
        http_method = "GET",
        http_path = "/{Bucket}?acl",
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
        input_schema = types.GetBucketAnalyticsConfigurationInput,
        output_schema = types.GetBucketAnalyticsConfigurationOutput,
        http_method = "GET",
        http_path = "/{Bucket}?analytics&x-id=GetBucketAnalyticsConfiguration",
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
        input_schema = types.GetBucketCorsInput,
        output_schema = types.GetBucketCorsOutput,
        http_method = "GET",
        http_path = "/{Bucket}?cors",
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
        input_schema = types.GetBucketEncryptionInput,
        output_schema = types.GetBucketEncryptionOutput,
        http_method = "GET",
        http_path = "/{Bucket}?encryption",
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
        input_schema = types.GetBucketIntelligentTieringConfigurationInput,
        output_schema = types.GetBucketIntelligentTieringConfigurationOutput,
        http_method = "GET",
        http_path = "/{Bucket}?intelligent-tiering&x-id=GetBucketIntelligentTieringConfiguration",
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
        input_schema = types.GetBucketInventoryConfigurationInput,
        output_schema = types.GetBucketInventoryConfigurationOutput,
        http_method = "GET",
        http_path = "/{Bucket}?inventory&x-id=GetBucketInventoryConfiguration",
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
        input_schema = types.GetBucketLifecycleConfigurationInput,
        output_schema = types.GetBucketLifecycleConfigurationOutput,
        http_method = "GET",
        http_path = "/{Bucket}?lifecycle",
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
        input_schema = types.GetBucketLocationInput,
        output_schema = types.GetBucketLocationOutput,
        http_method = "GET",
        http_path = "/{Bucket}?location",
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
        input_schema = types.GetBucketLoggingInput,
        output_schema = types.GetBucketLoggingOutput,
        http_method = "GET",
        http_path = "/{Bucket}?logging",
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
        input_schema = types.GetBucketMetadataConfigurationInput,
        output_schema = types.GetBucketMetadataConfigurationOutput,
        http_method = "GET",
        http_path = "/{Bucket}?metadataConfiguration",
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
        input_schema = types.GetBucketMetadataTableConfigurationInput,
        output_schema = types.GetBucketMetadataTableConfigurationOutput,
        http_method = "GET",
        http_path = "/{Bucket}?metadataTable",
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
        input_schema = types.GetBucketMetricsConfigurationInput,
        output_schema = types.GetBucketMetricsConfigurationOutput,
        http_method = "GET",
        http_path = "/{Bucket}?metrics&x-id=GetBucketMetricsConfiguration",
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
        input_schema = types.GetBucketNotificationConfigurationInput,
        output_schema = types.GetBucketNotificationConfigurationOutput,
        http_method = "GET",
        http_path = "/{Bucket}?notification",
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
        input_schema = types.GetBucketOwnershipControlsInput,
        output_schema = types.GetBucketOwnershipControlsOutput,
        http_method = "GET",
        http_path = "/{Bucket}?ownershipControls",
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
        input_schema = types.GetBucketPolicyInput,
        output_schema = types.GetBucketPolicyOutput,
        http_method = "GET",
        http_path = "/{Bucket}?policy",
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
        input_schema = types.GetBucketPolicyStatusInput,
        output_schema = types.GetBucketPolicyStatusOutput,
        http_method = "GET",
        http_path = "/{Bucket}?policyStatus",
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
        input_schema = types.GetBucketReplicationInput,
        output_schema = types.GetBucketReplicationOutput,
        http_method = "GET",
        http_path = "/{Bucket}?replication",
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
        input_schema = types.GetBucketRequestPaymentInput,
        output_schema = types.GetBucketRequestPaymentOutput,
        http_method = "GET",
        http_path = "/{Bucket}?requestPayment",
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
        input_schema = types.GetBucketTaggingInput,
        output_schema = types.GetBucketTaggingOutput,
        http_method = "GET",
        http_path = "/{Bucket}?tagging",
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
        input_schema = types.GetBucketVersioningInput,
        output_schema = types.GetBucketVersioningOutput,
        http_method = "GET",
        http_path = "/{Bucket}?versioning",
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
        input_schema = types.GetBucketWebsiteInput,
        output_schema = types.GetBucketWebsiteOutput,
        http_method = "GET",
        http_path = "/{Bucket}?website",
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
        input_schema = types.GetObjectInput,
        output_schema = types.GetObjectOutput,
        http_method = "GET",
        http_path = "/{Bucket}/{Key+}?x-id=GetObject",
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
        input_schema = types.GetObjectAclInput,
        output_schema = types.GetObjectAclOutput,
        http_method = "GET",
        http_path = "/{Bucket}/{Key+}?acl",
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
        input_schema = types.GetObjectAttributesInput,
        output_schema = types.GetObjectAttributesOutput,
        http_method = "GET",
        http_path = "/{Bucket}/{Key+}?attributes",
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
        input_schema = types.GetObjectLegalHoldInput,
        output_schema = types.GetObjectLegalHoldOutput,
        http_method = "GET",
        http_path = "/{Bucket}/{Key+}?legal-hold",
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
        input_schema = types.GetObjectLockConfigurationInput,
        output_schema = types.GetObjectLockConfigurationOutput,
        http_method = "GET",
        http_path = "/{Bucket}?object-lock",
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
        input_schema = types.GetObjectRetentionInput,
        output_schema = types.GetObjectRetentionOutput,
        http_method = "GET",
        http_path = "/{Bucket}/{Key+}?retention",
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
        input_schema = types.GetObjectTaggingInput,
        output_schema = types.GetObjectTaggingOutput,
        http_method = "GET",
        http_path = "/{Bucket}/{Key+}?tagging",
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
        input_schema = types.GetObjectTorrentInput,
        output_schema = types.GetObjectTorrentOutput,
        http_method = "GET",
        http_path = "/{Bucket}/{Key+}?torrent",
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
        input_schema = types.GetPublicAccessBlockInput,
        output_schema = types.GetPublicAccessBlockOutput,
        http_method = "GET",
        http_path = "/{Bucket}?publicAccessBlock",
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
        input_schema = types.HeadBucketInput,
        output_schema = types.HeadBucketOutput,
        http_method = "HEAD",
        http_path = "/{Bucket}",
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
        input_schema = types.HeadObjectInput,
        output_schema = types.HeadObjectOutput,
        http_method = "HEAD",
        http_path = "/{Bucket}/{Key+}",
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
        input_schema = types.ListBucketAnalyticsConfigurationsInput,
        output_schema = types.ListBucketAnalyticsConfigurationsOutput,
        http_method = "GET",
        http_path = "/{Bucket}?analytics&x-id=ListBucketAnalyticsConfigurations",
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
        input_schema = types.ListBucketIntelligentTieringConfigurationsInput,
        output_schema = types.ListBucketIntelligentTieringConfigurationsOutput,
        http_method = "GET",
        http_path = "/{Bucket}?intelligent-tiering&x-id=ListBucketIntelligentTieringConfigurations",
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
        input_schema = types.ListBucketInventoryConfigurationsInput,
        output_schema = types.ListBucketInventoryConfigurationsOutput,
        http_method = "GET",
        http_path = "/{Bucket}?inventory&x-id=ListBucketInventoryConfigurations",
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
        input_schema = types.ListBucketMetricsConfigurationsInput,
        output_schema = types.ListBucketMetricsConfigurationsOutput,
        http_method = "GET",
        http_path = "/{Bucket}?metrics&x-id=ListBucketMetricsConfigurations",
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
        input_schema = types.ListBucketsInput,
        output_schema = types.ListBucketsOutput,
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
        input_schema = types.ListDirectoryBucketsInput,
        output_schema = types.ListDirectoryBucketsOutput,
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
        input_schema = types.ListMultipartUploadsInput,
        output_schema = types.ListMultipartUploadsOutput,
        http_method = "GET",
        http_path = "/{Bucket}?uploads",
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
        input_schema = types.ListObjectsInput,
        output_schema = types.ListObjectsOutput,
        http_method = "GET",
        http_path = "/{Bucket}",
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
        input_schema = types.ListObjectsV2Input,
        output_schema = types.ListObjectsV2Output,
        http_method = "GET",
        http_path = "/{Bucket}?list-type=2",
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
        input_schema = types.ListObjectVersionsInput,
        output_schema = types.ListObjectVersionsOutput,
        http_method = "GET",
        http_path = "/{Bucket}?versions",
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
        input_schema = types.ListPartsInput,
        output_schema = types.ListPartsOutput,
        http_method = "GET",
        http_path = "/{Bucket}/{Key+}?x-id=ListParts",
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
        input_schema = types.PutBucketAbacInput,
        output_schema = types.PutBucketAbacOutput,
        http_method = "PUT",
        http_path = "/{Bucket}?abac",
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
        input_schema = types.PutBucketAccelerateConfigurationInput,
        output_schema = types.PutBucketAccelerateConfigurationOutput,
        http_method = "PUT",
        http_path = "/{Bucket}?accelerate",
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
        input_schema = types.PutBucketAclInput,
        output_schema = types.PutBucketAclOutput,
        http_method = "PUT",
        http_path = "/{Bucket}?acl",
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
        input_schema = types.PutBucketAnalyticsConfigurationInput,
        output_schema = types.PutBucketAnalyticsConfigurationOutput,
        http_method = "PUT",
        http_path = "/{Bucket}?analytics",
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
        input_schema = types.PutBucketCorsInput,
        output_schema = types.PutBucketCorsOutput,
        http_method = "PUT",
        http_path = "/{Bucket}?cors",
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
        input_schema = types.PutBucketEncryptionInput,
        output_schema = types.PutBucketEncryptionOutput,
        http_method = "PUT",
        http_path = "/{Bucket}?encryption",
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
        input_schema = types.PutBucketIntelligentTieringConfigurationInput,
        output_schema = types.PutBucketIntelligentTieringConfigurationOutput,
        http_method = "PUT",
        http_path = "/{Bucket}?intelligent-tiering",
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
        input_schema = types.PutBucketInventoryConfigurationInput,
        output_schema = types.PutBucketInventoryConfigurationOutput,
        http_method = "PUT",
        http_path = "/{Bucket}?inventory",
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
        input_schema = types.PutBucketLifecycleConfigurationInput,
        output_schema = types.PutBucketLifecycleConfigurationOutput,
        http_method = "PUT",
        http_path = "/{Bucket}?lifecycle",
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
        input_schema = types.PutBucketLoggingInput,
        output_schema = types.PutBucketLoggingOutput,
        http_method = "PUT",
        http_path = "/{Bucket}?logging",
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
        input_schema = types.PutBucketMetricsConfigurationInput,
        output_schema = types.PutBucketMetricsConfigurationOutput,
        http_method = "PUT",
        http_path = "/{Bucket}?metrics",
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
        input_schema = types.PutBucketNotificationConfigurationInput,
        output_schema = types.PutBucketNotificationConfigurationOutput,
        http_method = "PUT",
        http_path = "/{Bucket}?notification",
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
        input_schema = types.PutBucketOwnershipControlsInput,
        output_schema = types.PutBucketOwnershipControlsOutput,
        http_method = "PUT",
        http_path = "/{Bucket}?ownershipControls",
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
        input_schema = types.PutBucketPolicyInput,
        output_schema = types.PutBucketPolicyOutput,
        http_method = "PUT",
        http_path = "/{Bucket}?policy",
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
        input_schema = types.PutBucketReplicationInput,
        output_schema = types.PutBucketReplicationOutput,
        http_method = "PUT",
        http_path = "/{Bucket}?replication",
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
        input_schema = types.PutBucketRequestPaymentInput,
        output_schema = types.PutBucketRequestPaymentOutput,
        http_method = "PUT",
        http_path = "/{Bucket}?requestPayment",
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
        input_schema = types.PutBucketTaggingInput,
        output_schema = types.PutBucketTaggingOutput,
        http_method = "PUT",
        http_path = "/{Bucket}?tagging",
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
        input_schema = types.PutBucketVersioningInput,
        output_schema = types.PutBucketVersioningOutput,
        http_method = "PUT",
        http_path = "/{Bucket}?versioning",
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
        input_schema = types.PutBucketWebsiteInput,
        output_schema = types.PutBucketWebsiteOutput,
        http_method = "PUT",
        http_path = "/{Bucket}?website",
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
        input_schema = types.PutObjectInput,
        output_schema = types.PutObjectOutput,
        http_method = "PUT",
        http_path = "/{Bucket}/{Key+}?x-id=PutObject",
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
        input_schema = types.PutObjectAclInput,
        output_schema = types.PutObjectAclOutput,
        http_method = "PUT",
        http_path = "/{Bucket}/{Key+}?acl",
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
        input_schema = types.PutObjectLegalHoldInput,
        output_schema = types.PutObjectLegalHoldOutput,
        http_method = "PUT",
        http_path = "/{Bucket}/{Key+}?legal-hold",
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
        input_schema = types.PutObjectLockConfigurationInput,
        output_schema = types.PutObjectLockConfigurationOutput,
        http_method = "PUT",
        http_path = "/{Bucket}?object-lock",
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
        input_schema = types.PutObjectRetentionInput,
        output_schema = types.PutObjectRetentionOutput,
        http_method = "PUT",
        http_path = "/{Bucket}/{Key+}?retention",
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
        input_schema = types.PutObjectTaggingInput,
        output_schema = types.PutObjectTaggingOutput,
        http_method = "PUT",
        http_path = "/{Bucket}/{Key+}?tagging",
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
        input_schema = types.PutPublicAccessBlockInput,
        output_schema = types.PutPublicAccessBlockOutput,
        http_method = "PUT",
        http_path = "/{Bucket}?publicAccessBlock",
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
        input_schema = types.RenameObjectInput,
        output_schema = types.RenameObjectOutput,
        http_method = "PUT",
        http_path = "/{Bucket}/{Key+}?renameObject",
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
        input_schema = types.RestoreObjectInput,
        output_schema = types.RestoreObjectOutput,
        http_method = "POST",
        http_path = "/{Bucket}/{Key+}?restore",
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
        input_schema = types.SelectObjectContentInput,
        output_schema = types.SelectObjectContentOutput,
        http_method = "POST",
        http_path = "/{Bucket}/{Key+}?select&select-type=2",
        event_stream = types.SelectObjectContentEventStream,
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
        input_schema = types.UpdateBucketMetadataInventoryTableConfigurationInput,
        output_schema = types.UpdateBucketMetadataInventoryTableConfigurationOutput,
        http_method = "PUT",
        http_path = "/{Bucket}?metadataInventoryTable",
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
        input_schema = types.UpdateBucketMetadataJournalTableConfigurationInput,
        output_schema = types.UpdateBucketMetadataJournalTableConfigurationOutput,
        http_method = "PUT",
        http_path = "/{Bucket}?metadataJournalTable",
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
        input_schema = types.UpdateObjectEncryptionInput,
        output_schema = types.UpdateObjectEncryptionOutput,
        http_method = "PUT",
        http_path = "/{Bucket}/{Key+}?encryption",
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
        input_schema = types.UploadPartInput,
        output_schema = types.UploadPartOutput,
        http_method = "PUT",
        http_path = "/{Bucket}/{Key+}?x-id=UploadPart",
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
        input_schema = types.UploadPartCopyInput,
        output_schema = types.UploadPartCopyOutput,
        http_method = "PUT",
        http_path = "/{Bucket}/{Key+}?x-id=UploadPartCopy",
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
        input_schema = types.WriteGetObjectResponseInput,
        output_schema = types.WriteGetObjectResponseOutput,
        http_method = "POST",
        http_path = "/WriteGetObjectResponse",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
