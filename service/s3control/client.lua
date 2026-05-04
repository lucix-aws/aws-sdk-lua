local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("s3control.endpoint_rules")
local restxml_protocol = require("protocol.restxml")
local sdk_defaults = require("sdk_defaults")
local types = require("s3control.types")

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
        input_schema = types.AssociateAccessGrantsIdentityCenterInput,
        output_schema = types.AssociateAccessGrantsIdentityCenterOutput,
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
        input_schema = types.CreateAccessGrantInput,
        output_schema = types.CreateAccessGrantOutput,
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
        input_schema = types.CreateAccessGrantsInstanceInput,
        output_schema = types.CreateAccessGrantsInstanceOutput,
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
        input_schema = types.CreateAccessGrantsLocationInput,
        output_schema = types.CreateAccessGrantsLocationOutput,
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
        input_schema = types.CreateAccessPointInput,
        output_schema = types.CreateAccessPointOutput,
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
        input_schema = types.CreateAccessPointForObjectLambdaInput,
        output_schema = types.CreateAccessPointForObjectLambdaOutput,
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
        input_schema = types.CreateBucketInput,
        output_schema = types.CreateBucketOutput,
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
        input_schema = types.CreateJobInput,
        output_schema = types.CreateJobOutput,
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
        input_schema = types.CreateMultiRegionAccessPointOperationInput,
        output_schema = types.CreateMultiRegionAccessPointOutput,
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
        input_schema = types.CreateStorageLensGroupInput,
        output_schema = types.CreateStorageLensGroupOutput,
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
        input_schema = types.DeleteAccessGrantInput,
        output_schema = types.DeleteAccessGrantOutput,
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
        input_schema = types.DeleteAccessGrantsInstanceInput,
        output_schema = types.DeleteAccessGrantsInstanceOutput,
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
        input_schema = types.DeleteAccessGrantsInstanceResourcePolicyInput,
        output_schema = types.DeleteAccessGrantsInstanceResourcePolicyOutput,
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
        input_schema = types.DeleteAccessGrantsLocationInput,
        output_schema = types.DeleteAccessGrantsLocationOutput,
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
        input_schema = types.DeleteAccessPointInput,
        output_schema = types.DeleteAccessPointOutput,
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
        input_schema = types.DeleteAccessPointForObjectLambdaInput,
        output_schema = types.DeleteAccessPointForObjectLambdaOutput,
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
        input_schema = types.DeleteAccessPointPolicyInput,
        output_schema = types.DeleteAccessPointPolicyOutput,
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
        input_schema = types.DeleteAccessPointPolicyForObjectLambdaInput,
        output_schema = types.DeleteAccessPointPolicyForObjectLambdaOutput,
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
        input_schema = types.DeleteAccessPointScopeInput,
        output_schema = types.DeleteAccessPointScopeOutput,
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
        input_schema = types.DeleteBucketInput,
        output_schema = types.DeleteBucketOutput,
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
        input_schema = types.DeleteBucketLifecycleConfigurationInput,
        output_schema = types.DeleteBucketLifecycleConfigurationOutput,
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
        input_schema = types.DeleteBucketPolicyInput,
        output_schema = types.DeleteBucketPolicyOutput,
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
        input_schema = types.DeleteBucketReplicationInput,
        output_schema = types.DeleteBucketReplicationOutput,
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
        input_schema = types.DeleteBucketTaggingInput,
        output_schema = types.DeleteBucketTaggingOutput,
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
        input_schema = types.DeleteJobTaggingInput,
        output_schema = types.DeleteJobTaggingOutput,
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
        input_schema = types.DeleteMultiRegionAccessPointOperationInput,
        output_schema = types.DeleteMultiRegionAccessPointOutput,
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
        input_schema = types.DeletePublicAccessBlockInput,
        output_schema = types.DeletePublicAccessBlockOutput,
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
        input_schema = types.DeleteStorageLensConfigurationInput,
        output_schema = types.DeleteStorageLensConfigurationOutput,
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
        input_schema = types.DeleteStorageLensConfigurationTaggingInput,
        output_schema = types.DeleteStorageLensConfigurationTaggingOutput,
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
        input_schema = types.DeleteStorageLensGroupInput,
        output_schema = types.DeleteStorageLensGroupOutput,
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
        input_schema = types.DescribeJobInput,
        output_schema = types.DescribeJobOutput,
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
        input_schema = types.DescribeMultiRegionAccessPointOperationInput,
        output_schema = types.DescribeMultiRegionAccessPointOperationOutput,
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
        input_schema = types.DissociateAccessGrantsIdentityCenterInput,
        output_schema = types.DissociateAccessGrantsIdentityCenterOutput,
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
        input_schema = types.GetAccessGrantInput,
        output_schema = types.GetAccessGrantOutput,
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
        input_schema = types.GetAccessGrantsInstanceInput,
        output_schema = types.GetAccessGrantsInstanceOutput,
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
        input_schema = types.GetAccessGrantsInstanceForPrefixInput,
        output_schema = types.GetAccessGrantsInstanceForPrefixOutput,
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
        input_schema = types.GetAccessGrantsInstanceResourcePolicyInput,
        output_schema = types.GetAccessGrantsInstanceResourcePolicyOutput,
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
        input_schema = types.GetAccessGrantsLocationInput,
        output_schema = types.GetAccessGrantsLocationOutput,
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
        input_schema = types.GetAccessPointInput,
        output_schema = types.GetAccessPointOutput,
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
        input_schema = types.GetAccessPointConfigurationForObjectLambdaInput,
        output_schema = types.GetAccessPointConfigurationForObjectLambdaOutput,
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
        input_schema = types.GetAccessPointForObjectLambdaInput,
        output_schema = types.GetAccessPointForObjectLambdaOutput,
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
        input_schema = types.GetAccessPointPolicyInput,
        output_schema = types.GetAccessPointPolicyOutput,
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
        input_schema = types.GetAccessPointPolicyForObjectLambdaInput,
        output_schema = types.GetAccessPointPolicyForObjectLambdaOutput,
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
        input_schema = types.GetAccessPointPolicyStatusInput,
        output_schema = types.GetAccessPointPolicyStatusOutput,
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
        input_schema = types.GetAccessPointPolicyStatusForObjectLambdaInput,
        output_schema = types.GetAccessPointPolicyStatusForObjectLambdaOutput,
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
        input_schema = types.GetAccessPointScopeInput,
        output_schema = types.GetAccessPointScopeOutput,
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
        input_schema = types.GetBucketInput,
        output_schema = types.GetBucketOutput,
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
        input_schema = types.GetBucketLifecycleConfigurationInput,
        output_schema = types.GetBucketLifecycleConfigurationOutput,
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
        input_schema = types.GetBucketPolicyInput,
        output_schema = types.GetBucketPolicyOutput,
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
        input_schema = types.GetBucketReplicationInput,
        output_schema = types.GetBucketReplicationOutput,
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
        input_schema = types.GetBucketTaggingInput,
        output_schema = types.GetBucketTaggingOutput,
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
        input_schema = types.GetBucketVersioningInput,
        output_schema = types.GetBucketVersioningOutput,
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
        input_schema = types.GetDataAccessInput,
        output_schema = types.GetDataAccessOutput,
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
        input_schema = types.GetJobTaggingInput,
        output_schema = types.GetJobTaggingOutput,
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
        input_schema = types.GetMultiRegionAccessPointInput,
        output_schema = types.GetMultiRegionAccessPointOutput,
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
        input_schema = types.GetMultiRegionAccessPointPolicyInput,
        output_schema = types.GetMultiRegionAccessPointPolicyOutput,
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
        input_schema = types.GetMultiRegionAccessPointPolicyStatusInput,
        output_schema = types.GetMultiRegionAccessPointPolicyStatusOutput,
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
        input_schema = types.GetMultiRegionAccessPointRoutesInput,
        output_schema = types.GetMultiRegionAccessPointRoutesOutput,
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
        input_schema = types.GetPublicAccessBlockInput,
        output_schema = types.GetPublicAccessBlockOutput,
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
        input_schema = types.GetStorageLensConfigurationInput,
        output_schema = types.GetStorageLensConfigurationOutput,
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
        input_schema = types.GetStorageLensConfigurationTaggingInput,
        output_schema = types.GetStorageLensConfigurationTaggingOutput,
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
        input_schema = types.GetStorageLensGroupInput,
        output_schema = types.GetStorageLensGroupOutput,
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
        input_schema = types.ListAccessGrantsInput,
        output_schema = types.ListAccessGrantsOutput,
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
        input_schema = types.ListAccessGrantsInstancesInput,
        output_schema = types.ListAccessGrantsInstancesOutput,
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
        input_schema = types.ListAccessGrantsLocationsInput,
        output_schema = types.ListAccessGrantsLocationsOutput,
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
        input_schema = types.ListAccessPointsInput,
        output_schema = types.ListAccessPointsOutput,
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
        input_schema = types.ListAccessPointsForDirectoryBucketsInput,
        output_schema = types.ListAccessPointsForDirectoryBucketsOutput,
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
        input_schema = types.ListAccessPointsForObjectLambdaInput,
        output_schema = types.ListAccessPointsForObjectLambdaOutput,
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
        input_schema = types.ListCallerAccessGrantsInput,
        output_schema = types.ListCallerAccessGrantsOutput,
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
        input_schema = types.ListJobsInput,
        output_schema = types.ListJobsOutput,
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
        input_schema = types.ListMultiRegionAccessPointsInput,
        output_schema = types.ListMultiRegionAccessPointsOutput,
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
        input_schema = types.ListRegionalBucketsInput,
        output_schema = types.ListRegionalBucketsOutput,
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
        input_schema = types.ListStorageLensConfigurationsInput,
        output_schema = types.ListStorageLensConfigurationsOutput,
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
        input_schema = types.ListStorageLensGroupsInput,
        output_schema = types.ListStorageLensGroupsOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
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
        input_schema = types.PutAccessGrantsInstanceResourcePolicyInput,
        output_schema = types.PutAccessGrantsInstanceResourcePolicyOutput,
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
        input_schema = types.PutAccessPointConfigurationForObjectLambdaInput,
        output_schema = types.PutAccessPointConfigurationForObjectLambdaOutput,
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
        input_schema = types.PutAccessPointPolicyInput,
        output_schema = types.PutAccessPointPolicyOutput,
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
        input_schema = types.PutAccessPointPolicyForObjectLambdaInput,
        output_schema = types.PutAccessPointPolicyForObjectLambdaOutput,
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
        input_schema = types.PutAccessPointScopeInput,
        output_schema = types.PutAccessPointScopeOutput,
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
        input_schema = types.PutBucketLifecycleConfigurationInput,
        output_schema = types.PutBucketLifecycleConfigurationOutput,
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
        input_schema = types.PutBucketPolicyInput,
        output_schema = types.PutBucketPolicyOutput,
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
        input_schema = types.PutBucketReplicationInput,
        output_schema = types.PutBucketReplicationOutput,
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
        input_schema = types.PutBucketTaggingInput,
        output_schema = types.PutBucketTaggingOutput,
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
        input_schema = types.PutBucketVersioningInput,
        output_schema = types.PutBucketVersioningOutput,
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
        input_schema = types.PutJobTaggingInput,
        output_schema = types.PutJobTaggingOutput,
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
        input_schema = types.PutMultiRegionAccessPointPolicyOperationInput,
        output_schema = types.PutMultiRegionAccessPointPolicyOutput,
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
        input_schema = types.PutPublicAccessBlockInput,
        output_schema = types.PutPublicAccessBlockOutput,
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
        input_schema = types.PutStorageLensConfigurationInput,
        output_schema = types.PutStorageLensConfigurationOutput,
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
        input_schema = types.PutStorageLensConfigurationTaggingInput,
        output_schema = types.PutStorageLensConfigurationTaggingOutput,
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
        input_schema = types.SubmitMultiRegionAccessPointRoutesInput,
        output_schema = types.SubmitMultiRegionAccessPointRoutesOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
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
        input_schema = types.UpdateAccessGrantsLocationInput,
        output_schema = types.UpdateAccessGrantsLocationOutput,
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
        input_schema = types.UpdateJobPriorityInput,
        output_schema = types.UpdateJobPriorityOutput,
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
        input_schema = types.UpdateJobStatusInput,
        output_schema = types.UpdateJobStatusOutput,
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
        input_schema = types.UpdateStorageLensGroupInput,
        output_schema = types.UpdateStorageLensGroupOutput,
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
