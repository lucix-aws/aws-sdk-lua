local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("s3control.endpoint_rules")
local restxml_protocol = require("smithy.protocol.restxml")
local schemas = require("s3control.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSS3ControlServiceV20180820"
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

function Client:associateAccessGrantsIdentityCenter(input, options)
    return self:invokeOperation(input, {
        name = "AssociateAccessGrantsIdentityCenter",
        input_schema = schemas.AssociateAccessGrantsIdentityCenterInput,
        output_schema = schemas.AssociateAccessGrantsIdentityCenterOutput,
        http_method = "POST",
        http_path = "/v20180820/accessgrantsinstance/identitycenter",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:createAccessGrant(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessGrant",
        input_schema = schemas.CreateAccessGrantInput,
        output_schema = schemas.CreateAccessGrantOutput,
        http_method = "POST",
        http_path = "/v20180820/accessgrantsinstance/grant",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:createAccessGrantsInstance(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessGrantsInstance",
        input_schema = schemas.CreateAccessGrantsInstanceInput,
        output_schema = schemas.CreateAccessGrantsInstanceOutput,
        http_method = "POST",
        http_path = "/v20180820/accessgrantsinstance",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:createAccessGrantsLocation(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessGrantsLocation",
        input_schema = schemas.CreateAccessGrantsLocationInput,
        output_schema = schemas.CreateAccessGrantsLocationOutput,
        http_method = "POST",
        http_path = "/v20180820/accessgrantsinstance/location",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:createAccessPoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessPoint",
        input_schema = schemas.CreateAccessPointInput,
        output_schema = schemas.CreateAccessPointOutput,
        http_method = "PUT",
        http_path = "/v20180820/accesspoint/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccessPointName = "Name",
            AccountId = "AccountId",
            Bucket = "Bucket",
        },
    }, options)
end

function Client:createAccessPointForObjectLambda(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessPointForObjectLambda",
        input_schema = schemas.CreateAccessPointForObjectLambdaInput,
        output_schema = schemas.CreateAccessPointForObjectLambdaOutput,
        http_method = "PUT",
        http_path = "/v20180820/accesspointforobjectlambda/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:createBucket(input, options)
    return self:invokeOperation(input, {
        name = "CreateBucket",
        input_schema = schemas.CreateBucketInput,
        output_schema = schemas.CreateBucketOutput,
        http_method = "PUT",
        http_path = "/v20180820/bucket/{Bucket}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            Bucket = "Bucket",
            OutpostId = "OutpostId",
        },
    }, options)
end

function Client:createJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateJob",
        input_schema = schemas.CreateJobInput,
        output_schema = schemas.CreateJobOutput,
        http_method = "POST",
        http_path = "/v20180820/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:createMultiRegionAccessPoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateMultiRegionAccessPoint",
        input_schema = schemas.CreateMultiRegionAccessPointOperationInput,
        output_schema = schemas.CreateMultiRegionAccessPointOutput,
        http_method = "POST",
        http_path = "/v20180820/async-requests/mrap/create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:createStorageLensGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateStorageLensGroup",
        input_schema = schemas.CreateStorageLensGroupInput,
        output_schema = schemas.CreateStorageLensGroupOutput,
        http_method = "POST",
        http_path = "/v20180820/storagelensgroup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:deleteAccessGrant(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessGrant",
        input_schema = schemas.DeleteAccessGrantInput,
        output_schema = schemas.DeleteAccessGrantOutput,
        http_method = "DELETE",
        http_path = "/v20180820/accessgrantsinstance/grant/{AccessGrantId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:deleteAccessGrantsInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessGrantsInstance",
        input_schema = schemas.DeleteAccessGrantsInstanceInput,
        output_schema = schemas.DeleteAccessGrantsInstanceOutput,
        http_method = "DELETE",
        http_path = "/v20180820/accessgrantsinstance",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:deleteAccessGrantsInstanceResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessGrantsInstanceResourcePolicy",
        input_schema = schemas.DeleteAccessGrantsInstanceResourcePolicyInput,
        output_schema = schemas.DeleteAccessGrantsInstanceResourcePolicyOutput,
        http_method = "DELETE",
        http_path = "/v20180820/accessgrantsinstance/resourcepolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:deleteAccessGrantsLocation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessGrantsLocation",
        input_schema = schemas.DeleteAccessGrantsLocationInput,
        output_schema = schemas.DeleteAccessGrantsLocationOutput,
        http_method = "DELETE",
        http_path = "/v20180820/accessgrantsinstance/location/{AccessGrantsLocationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:deleteAccessPoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessPoint",
        input_schema = schemas.DeleteAccessPointInput,
        output_schema = schemas.DeleteAccessPointOutput,
        http_method = "DELETE",
        http_path = "/v20180820/accesspoint/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccessPointName = "Name",
            AccountId = "AccountId",
        },
    }, options)
end

function Client:deleteAccessPointForObjectLambda(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessPointForObjectLambda",
        input_schema = schemas.DeleteAccessPointForObjectLambdaInput,
        output_schema = schemas.DeleteAccessPointForObjectLambdaOutput,
        http_method = "DELETE",
        http_path = "/v20180820/accesspointforobjectlambda/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:deleteAccessPointPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessPointPolicy",
        input_schema = schemas.DeleteAccessPointPolicyInput,
        output_schema = schemas.DeleteAccessPointPolicyOutput,
        http_method = "DELETE",
        http_path = "/v20180820/accesspoint/{Name}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccessPointName = "Name",
            AccountId = "AccountId",
        },
    }, options)
end

function Client:deleteAccessPointPolicyForObjectLambda(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessPointPolicyForObjectLambda",
        input_schema = schemas.DeleteAccessPointPolicyForObjectLambdaInput,
        output_schema = schemas.DeleteAccessPointPolicyForObjectLambdaOutput,
        http_method = "DELETE",
        http_path = "/v20180820/accesspointforobjectlambda/{Name}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:deleteAccessPointScope(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessPointScope",
        input_schema = schemas.DeleteAccessPointScopeInput,
        output_schema = schemas.DeleteAccessPointScopeOutput,
        http_method = "DELETE",
        http_path = "/v20180820/accesspoint/{Name}/scope",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccessPointName = "Name",
            AccountId = "AccountId",
        },
    }, options)
end

function Client:deleteBucket(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBucket",
        input_schema = schemas.DeleteBucketInput,
        output_schema = schemas.DeleteBucketOutput,
        http_method = "DELETE",
        http_path = "/v20180820/bucket/{Bucket}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
            Bucket = "Bucket",
        },
    }, options)
end

function Client:deleteBucketLifecycleConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBucketLifecycleConfiguration",
        input_schema = schemas.DeleteBucketLifecycleConfigurationInput,
        output_schema = schemas.DeleteBucketLifecycleConfigurationOutput,
        http_method = "DELETE",
        http_path = "/v20180820/bucket/{Bucket}/lifecycleconfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
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
        http_path = "/v20180820/bucket/{Bucket}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
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
        http_path = "/v20180820/bucket/{Bucket}/replication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
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
        http_path = "/v20180820/bucket/{Bucket}/tagging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
            Bucket = "Bucket",
        },
    }, options)
end

function Client:deleteJobTagging(input, options)
    return self:invokeOperation(input, {
        name = "DeleteJobTagging",
        input_schema = schemas.DeleteJobTaggingInput,
        output_schema = schemas.DeleteJobTaggingOutput,
        http_method = "DELETE",
        http_path = "/v20180820/jobs/{JobId}/tagging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:deleteMultiRegionAccessPoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMultiRegionAccessPoint",
        input_schema = schemas.DeleteMultiRegionAccessPointOperationInput,
        output_schema = schemas.DeleteMultiRegionAccessPointOutput,
        http_method = "POST",
        http_path = "/v20180820/async-requests/mrap/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:deletePublicAccessBlock(input, options)
    return self:invokeOperation(input, {
        name = "DeletePublicAccessBlock",
        input_schema = schemas.DeletePublicAccessBlockInput,
        output_schema = schemas.DeletePublicAccessBlockOutput,
        http_method = "DELETE",
        http_path = "/v20180820/configuration/publicAccessBlock",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:deleteStorageLensConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStorageLensConfiguration",
        input_schema = schemas.DeleteStorageLensConfigurationInput,
        output_schema = schemas.DeleteStorageLensConfigurationOutput,
        http_method = "DELETE",
        http_path = "/v20180820/storagelens/{ConfigId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:deleteStorageLensConfigurationTagging(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStorageLensConfigurationTagging",
        input_schema = schemas.DeleteStorageLensConfigurationTaggingInput,
        output_schema = schemas.DeleteStorageLensConfigurationTaggingOutput,
        http_method = "DELETE",
        http_path = "/v20180820/storagelens/{ConfigId}/tagging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:deleteStorageLensGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStorageLensGroup",
        input_schema = schemas.DeleteStorageLensGroupInput,
        output_schema = schemas.DeleteStorageLensGroupOutput,
        http_method = "DELETE",
        http_path = "/v20180820/storagelensgroup/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:describeJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJob",
        input_schema = schemas.DescribeJobInput,
        output_schema = schemas.DescribeJobOutput,
        http_method = "GET",
        http_path = "/v20180820/jobs/{JobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:describeMultiRegionAccessPointOperation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMultiRegionAccessPointOperation",
        input_schema = schemas.DescribeMultiRegionAccessPointOperationInput,
        output_schema = schemas.DescribeMultiRegionAccessPointOperationOutput,
        http_method = "GET",
        http_path = "/v20180820/async-requests/mrap/{RequestTokenARN+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:dissociateAccessGrantsIdentityCenter(input, options)
    return self:invokeOperation(input, {
        name = "DissociateAccessGrantsIdentityCenter",
        input_schema = schemas.DissociateAccessGrantsIdentityCenterInput,
        output_schema = schemas.DissociateAccessGrantsIdentityCenterOutput,
        http_method = "DELETE",
        http_path = "/v20180820/accessgrantsinstance/identitycenter",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:getAccessGrant(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessGrant",
        input_schema = schemas.GetAccessGrantInput,
        output_schema = schemas.GetAccessGrantOutput,
        http_method = "GET",
        http_path = "/v20180820/accessgrantsinstance/grant/{AccessGrantId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:getAccessGrantsInstance(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessGrantsInstance",
        input_schema = schemas.GetAccessGrantsInstanceInput,
        output_schema = schemas.GetAccessGrantsInstanceOutput,
        http_method = "GET",
        http_path = "/v20180820/accessgrantsinstance",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:getAccessGrantsInstanceForPrefix(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessGrantsInstanceForPrefix",
        input_schema = schemas.GetAccessGrantsInstanceForPrefixInput,
        output_schema = schemas.GetAccessGrantsInstanceForPrefixOutput,
        http_method = "GET",
        http_path = "/v20180820/accessgrantsinstance/prefix",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:getAccessGrantsInstanceResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessGrantsInstanceResourcePolicy",
        input_schema = schemas.GetAccessGrantsInstanceResourcePolicyInput,
        output_schema = schemas.GetAccessGrantsInstanceResourcePolicyOutput,
        http_method = "GET",
        http_path = "/v20180820/accessgrantsinstance/resourcepolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:getAccessGrantsLocation(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessGrantsLocation",
        input_schema = schemas.GetAccessGrantsLocationInput,
        output_schema = schemas.GetAccessGrantsLocationOutput,
        http_method = "GET",
        http_path = "/v20180820/accessgrantsinstance/location/{AccessGrantsLocationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:getAccessPoint(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessPoint",
        input_schema = schemas.GetAccessPointInput,
        output_schema = schemas.GetAccessPointOutput,
        http_method = "GET",
        http_path = "/v20180820/accesspoint/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccessPointName = "Name",
            AccountId = "AccountId",
        },
    }, options)
end

function Client:getAccessPointConfigurationForObjectLambda(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessPointConfigurationForObjectLambda",
        input_schema = schemas.GetAccessPointConfigurationForObjectLambdaInput,
        output_schema = schemas.GetAccessPointConfigurationForObjectLambdaOutput,
        http_method = "GET",
        http_path = "/v20180820/accesspointforobjectlambda/{Name}/configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:getAccessPointForObjectLambda(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessPointForObjectLambda",
        input_schema = schemas.GetAccessPointForObjectLambdaInput,
        output_schema = schemas.GetAccessPointForObjectLambdaOutput,
        http_method = "GET",
        http_path = "/v20180820/accesspointforobjectlambda/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:getAccessPointPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessPointPolicy",
        input_schema = schemas.GetAccessPointPolicyInput,
        output_schema = schemas.GetAccessPointPolicyOutput,
        http_method = "GET",
        http_path = "/v20180820/accesspoint/{Name}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccessPointName = "Name",
            AccountId = "AccountId",
        },
    }, options)
end

function Client:getAccessPointPolicyForObjectLambda(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessPointPolicyForObjectLambda",
        input_schema = schemas.GetAccessPointPolicyForObjectLambdaInput,
        output_schema = schemas.GetAccessPointPolicyForObjectLambdaOutput,
        http_method = "GET",
        http_path = "/v20180820/accesspointforobjectlambda/{Name}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:getAccessPointPolicyStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessPointPolicyStatus",
        input_schema = schemas.GetAccessPointPolicyStatusInput,
        output_schema = schemas.GetAccessPointPolicyStatusOutput,
        http_method = "GET",
        http_path = "/v20180820/accesspoint/{Name}/policyStatus",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccessPointName = "Name",
            AccountId = "AccountId",
        },
    }, options)
end

function Client:getAccessPointPolicyStatusForObjectLambda(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessPointPolicyStatusForObjectLambda",
        input_schema = schemas.GetAccessPointPolicyStatusForObjectLambdaInput,
        output_schema = schemas.GetAccessPointPolicyStatusForObjectLambdaOutput,
        http_method = "GET",
        http_path = "/v20180820/accesspointforobjectlambda/{Name}/policyStatus",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:getAccessPointScope(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessPointScope",
        input_schema = schemas.GetAccessPointScopeInput,
        output_schema = schemas.GetAccessPointScopeOutput,
        http_method = "GET",
        http_path = "/v20180820/accesspoint/{Name}/scope",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccessPointName = "Name",
            AccountId = "AccountId",
        },
    }, options)
end

function Client:getBucket(input, options)
    return self:invokeOperation(input, {
        name = "GetBucket",
        input_schema = schemas.GetBucketInput,
        output_schema = schemas.GetBucketOutput,
        http_method = "GET",
        http_path = "/v20180820/bucket/{Bucket}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
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
        http_path = "/v20180820/bucket/{Bucket}/lifecycleconfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
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
        http_path = "/v20180820/bucket/{Bucket}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
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
        http_path = "/v20180820/bucket/{Bucket}/replication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
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
        http_path = "/v20180820/bucket/{Bucket}/tagging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
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
        http_path = "/v20180820/bucket/{Bucket}/versioning",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
            Bucket = "Bucket",
        },
    }, options)
end

function Client:getDataAccess(input, options)
    return self:invokeOperation(input, {
        name = "GetDataAccess",
        input_schema = schemas.GetDataAccessInput,
        output_schema = schemas.GetDataAccessOutput,
        http_method = "GET",
        http_path = "/v20180820/accessgrantsinstance/dataaccess",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:getJobTagging(input, options)
    return self:invokeOperation(input, {
        name = "GetJobTagging",
        input_schema = schemas.GetJobTaggingInput,
        output_schema = schemas.GetJobTaggingOutput,
        http_method = "GET",
        http_path = "/v20180820/jobs/{JobId}/tagging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:getMultiRegionAccessPoint(input, options)
    return self:invokeOperation(input, {
        name = "GetMultiRegionAccessPoint",
        input_schema = schemas.GetMultiRegionAccessPointInput,
        output_schema = schemas.GetMultiRegionAccessPointOutput,
        http_method = "GET",
        http_path = "/v20180820/mrap/instances/{Name+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:getMultiRegionAccessPointPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetMultiRegionAccessPointPolicy",
        input_schema = schemas.GetMultiRegionAccessPointPolicyInput,
        output_schema = schemas.GetMultiRegionAccessPointPolicyOutput,
        http_method = "GET",
        http_path = "/v20180820/mrap/instances/{Name+}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:getMultiRegionAccessPointPolicyStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetMultiRegionAccessPointPolicyStatus",
        input_schema = schemas.GetMultiRegionAccessPointPolicyStatusInput,
        output_schema = schemas.GetMultiRegionAccessPointPolicyStatusOutput,
        http_method = "GET",
        http_path = "/v20180820/mrap/instances/{Name+}/policystatus",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:getMultiRegionAccessPointRoutes(input, options)
    return self:invokeOperation(input, {
        name = "GetMultiRegionAccessPointRoutes",
        input_schema = schemas.GetMultiRegionAccessPointRoutesInput,
        output_schema = schemas.GetMultiRegionAccessPointRoutesOutput,
        http_method = "GET",
        http_path = "/v20180820/mrap/instances/{Mrap+}/routes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:getPublicAccessBlock(input, options)
    return self:invokeOperation(input, {
        name = "GetPublicAccessBlock",
        input_schema = schemas.GetPublicAccessBlockInput,
        output_schema = schemas.GetPublicAccessBlockOutput,
        http_method = "GET",
        http_path = "/v20180820/configuration/publicAccessBlock",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:getStorageLensConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetStorageLensConfiguration",
        input_schema = schemas.GetStorageLensConfigurationInput,
        output_schema = schemas.GetStorageLensConfigurationOutput,
        http_method = "GET",
        http_path = "/v20180820/storagelens/{ConfigId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:getStorageLensConfigurationTagging(input, options)
    return self:invokeOperation(input, {
        name = "GetStorageLensConfigurationTagging",
        input_schema = schemas.GetStorageLensConfigurationTaggingInput,
        output_schema = schemas.GetStorageLensConfigurationTaggingOutput,
        http_method = "GET",
        http_path = "/v20180820/storagelens/{ConfigId}/tagging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:getStorageLensGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetStorageLensGroup",
        input_schema = schemas.GetStorageLensGroupInput,
        output_schema = schemas.GetStorageLensGroupOutput,
        http_method = "GET",
        http_path = "/v20180820/storagelensgroup/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:listAccessGrants(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessGrants",
        input_schema = schemas.ListAccessGrantsInput,
        output_schema = schemas.ListAccessGrantsOutput,
        http_method = "GET",
        http_path = "/v20180820/accessgrantsinstance/grants",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:listAccessGrantsInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessGrantsInstances",
        input_schema = schemas.ListAccessGrantsInstancesInput,
        output_schema = schemas.ListAccessGrantsInstancesOutput,
        http_method = "GET",
        http_path = "/v20180820/accessgrantsinstances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:listAccessGrantsLocations(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessGrantsLocations",
        input_schema = schemas.ListAccessGrantsLocationsInput,
        output_schema = schemas.ListAccessGrantsLocationsOutput,
        http_method = "GET",
        http_path = "/v20180820/accessgrantsinstance/locations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:listAccessPoints(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessPoints",
        input_schema = schemas.ListAccessPointsInput,
        output_schema = schemas.ListAccessPointsOutput,
        http_method = "GET",
        http_path = "/v20180820/accesspoint",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
            Bucket = "Bucket",
        },
    }, options)
end

function Client:listAccessPointsForDirectoryBuckets(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessPointsForDirectoryBuckets",
        input_schema = schemas.ListAccessPointsForDirectoryBucketsInput,
        output_schema = schemas.ListAccessPointsForDirectoryBucketsOutput,
        http_method = "GET",
        http_path = "/v20180820/accesspointfordirectory",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:listAccessPointsForObjectLambda(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessPointsForObjectLambda",
        input_schema = schemas.ListAccessPointsForObjectLambdaInput,
        output_schema = schemas.ListAccessPointsForObjectLambdaOutput,
        http_method = "GET",
        http_path = "/v20180820/accesspointforobjectlambda",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:listCallerAccessGrants(input, options)
    return self:invokeOperation(input, {
        name = "ListCallerAccessGrants",
        input_schema = schemas.ListCallerAccessGrantsInput,
        output_schema = schemas.ListCallerAccessGrantsOutput,
        http_method = "GET",
        http_path = "/v20180820/accessgrantsinstance/caller/grants",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:listJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListJobs",
        input_schema = schemas.ListJobsInput,
        output_schema = schemas.ListJobsOutput,
        http_method = "GET",
        http_path = "/v20180820/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:listMultiRegionAccessPoints(input, options)
    return self:invokeOperation(input, {
        name = "ListMultiRegionAccessPoints",
        input_schema = schemas.ListMultiRegionAccessPointsInput,
        output_schema = schemas.ListMultiRegionAccessPointsOutput,
        http_method = "GET",
        http_path = "/v20180820/mrap/instances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:listRegionalBuckets(input, options)
    return self:invokeOperation(input, {
        name = "ListRegionalBuckets",
        input_schema = schemas.ListRegionalBucketsInput,
        output_schema = schemas.ListRegionalBucketsOutput,
        http_method = "GET",
        http_path = "/v20180820/bucket",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
            OutpostId = "OutpostId",
        },
    }, options)
end

function Client:listStorageLensConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListStorageLensConfigurations",
        input_schema = schemas.ListStorageLensConfigurationsInput,
        output_schema = schemas.ListStorageLensConfigurationsOutput,
        http_method = "GET",
        http_path = "/v20180820/storagelens",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:listStorageLensGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListStorageLensGroups",
        input_schema = schemas.ListStorageLensGroupsInput,
        output_schema = schemas.ListStorageLensGroupsOutput,
        http_method = "GET",
        http_path = "/v20180820/storagelensgroup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/v20180820/tags/{ResourceArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
            ResourceArn = "ResourceArn",
        },
    }, options)
end

function Client:putAccessGrantsInstanceResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutAccessGrantsInstanceResourcePolicy",
        input_schema = schemas.PutAccessGrantsInstanceResourcePolicyInput,
        output_schema = schemas.PutAccessGrantsInstanceResourcePolicyOutput,
        http_method = "PUT",
        http_path = "/v20180820/accessgrantsinstance/resourcepolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:putAccessPointConfigurationForObjectLambda(input, options)
    return self:invokeOperation(input, {
        name = "PutAccessPointConfigurationForObjectLambda",
        input_schema = schemas.PutAccessPointConfigurationForObjectLambdaInput,
        output_schema = schemas.PutAccessPointConfigurationForObjectLambdaOutput,
        http_method = "PUT",
        http_path = "/v20180820/accesspointforobjectlambda/{Name}/configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:putAccessPointPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutAccessPointPolicy",
        input_schema = schemas.PutAccessPointPolicyInput,
        output_schema = schemas.PutAccessPointPolicyOutput,
        http_method = "PUT",
        http_path = "/v20180820/accesspoint/{Name}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccessPointName = "Name",
            AccountId = "AccountId",
        },
    }, options)
end

function Client:putAccessPointPolicyForObjectLambda(input, options)
    return self:invokeOperation(input, {
        name = "PutAccessPointPolicyForObjectLambda",
        input_schema = schemas.PutAccessPointPolicyForObjectLambdaInput,
        output_schema = schemas.PutAccessPointPolicyForObjectLambdaOutput,
        http_method = "PUT",
        http_path = "/v20180820/accesspointforobjectlambda/{Name}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:putAccessPointScope(input, options)
    return self:invokeOperation(input, {
        name = "PutAccessPointScope",
        input_schema = schemas.PutAccessPointScopeInput,
        output_schema = schemas.PutAccessPointScopeOutput,
        http_method = "PUT",
        http_path = "/v20180820/accesspoint/{Name}/scope",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccessPointName = "Name",
            AccountId = "AccountId",
        },
    }, options)
end

function Client:putBucketLifecycleConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutBucketLifecycleConfiguration",
        input_schema = schemas.PutBucketLifecycleConfigurationInput,
        output_schema = schemas.PutBucketLifecycleConfigurationOutput,
        http_method = "PUT",
        http_path = "/v20180820/bucket/{Bucket}/lifecycleconfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
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
        http_path = "/v20180820/bucket/{Bucket}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
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
        http_path = "/v20180820/bucket/{Bucket}/replication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
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
        http_path = "/v20180820/bucket/{Bucket}/tagging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
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
        http_path = "/v20180820/bucket/{Bucket}/versioning",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
            Bucket = "Bucket",
        },
    }, options)
end

function Client:putJobTagging(input, options)
    return self:invokeOperation(input, {
        name = "PutJobTagging",
        input_schema = schemas.PutJobTaggingInput,
        output_schema = schemas.PutJobTaggingOutput,
        http_method = "PUT",
        http_path = "/v20180820/jobs/{JobId}/tagging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:putMultiRegionAccessPointPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutMultiRegionAccessPointPolicy",
        input_schema = schemas.PutMultiRegionAccessPointPolicyOperationInput,
        output_schema = schemas.PutMultiRegionAccessPointPolicyOutput,
        http_method = "POST",
        http_path = "/v20180820/async-requests/mrap/put-policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:putPublicAccessBlock(input, options)
    return self:invokeOperation(input, {
        name = "PutPublicAccessBlock",
        input_schema = schemas.PutPublicAccessBlockInput,
        output_schema = schemas.PutPublicAccessBlockOutput,
        http_method = "PUT",
        http_path = "/v20180820/configuration/publicAccessBlock",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:putStorageLensConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutStorageLensConfiguration",
        input_schema = schemas.PutStorageLensConfigurationInput,
        output_schema = schemas.PutStorageLensConfigurationOutput,
        http_method = "PUT",
        http_path = "/v20180820/storagelens/{ConfigId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:putStorageLensConfigurationTagging(input, options)
    return self:invokeOperation(input, {
        name = "PutStorageLensConfigurationTagging",
        input_schema = schemas.PutStorageLensConfigurationTaggingInput,
        output_schema = schemas.PutStorageLensConfigurationTaggingOutput,
        http_method = "PUT",
        http_path = "/v20180820/storagelens/{ConfigId}/tagging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:submitMultiRegionAccessPointRoutes(input, options)
    return self:invokeOperation(input, {
        name = "SubmitMultiRegionAccessPointRoutes",
        input_schema = schemas.SubmitMultiRegionAccessPointRoutesInput,
        output_schema = schemas.SubmitMultiRegionAccessPointRoutesOutput,
        http_method = "PATCH",
        http_path = "/v20180820/mrap/instances/{Mrap+}/routes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/v20180820/tags/{ResourceArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
            ResourceArn = "ResourceArn",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/v20180820/tags/{ResourceArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
            ResourceArn = "ResourceArn",
        },
    }, options)
end

function Client:updateAccessGrantsLocation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccessGrantsLocation",
        input_schema = schemas.UpdateAccessGrantsLocationInput,
        output_schema = schemas.UpdateAccessGrantsLocationOutput,
        http_method = "PUT",
        http_path = "/v20180820/accessgrantsinstance/location/{AccessGrantsLocationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:updateJobPriority(input, options)
    return self:invokeOperation(input, {
        name = "UpdateJobPriority",
        input_schema = schemas.UpdateJobPriorityInput,
        output_schema = schemas.UpdateJobPriorityOutput,
        http_method = "POST",
        http_path = "/v20180820/jobs/{JobId}/priority",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:updateJobStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateJobStatus",
        input_schema = schemas.UpdateJobStatusInput,
        output_schema = schemas.UpdateJobStatusOutput,
        http_method = "POST",
        http_path = "/v20180820/jobs/{JobId}/status",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

function Client:updateStorageLensGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStorageLensGroup",
        input_schema = schemas.UpdateStorageLensGroupInput,
        output_schema = schemas.UpdateStorageLensGroupOutput,
        http_method = "PUT",
        http_path = "/v20180820/storagelensgroup/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            AccountId = "AccountId",
        },
    }, options)
end

return M
