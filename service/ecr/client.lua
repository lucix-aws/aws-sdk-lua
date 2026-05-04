local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ecr.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("ecr.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonEC2ContainerRegistry_V20150921"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ecr", signing_region = cfg.region } }
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

function Client:batchCheckLayerAvailability(input, options)
    return self:invokeOperation(input, {
        name = "BatchCheckLayerAvailability",
        input_schema = types.BatchCheckLayerAvailabilityInput,
        output_schema = types.BatchCheckLayerAvailabilityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeleteImage(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteImage",
        input_schema = types.BatchDeleteImageInput,
        output_schema = types.BatchDeleteImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetImage(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetImage",
        input_schema = types.BatchGetImageInput,
        output_schema = types.BatchGetImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetRepositoryScanningConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetRepositoryScanningConfiguration",
        input_schema = types.BatchGetRepositoryScanningConfigurationInput,
        output_schema = types.BatchGetRepositoryScanningConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:completeLayerUpload(input, options)
    return self:invokeOperation(input, {
        name = "CompleteLayerUpload",
        input_schema = types.CompleteLayerUploadInput,
        output_schema = types.CompleteLayerUploadOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPullThroughCacheRule(input, options)
    return self:invokeOperation(input, {
        name = "CreatePullThroughCacheRule",
        input_schema = types.CreatePullThroughCacheRuleInput,
        output_schema = types.CreatePullThroughCacheRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRepository(input, options)
    return self:invokeOperation(input, {
        name = "CreateRepository",
        input_schema = types.CreateRepositoryInput,
        output_schema = types.CreateRepositoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRepositoryCreationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateRepositoryCreationTemplate",
        input_schema = types.CreateRepositoryCreationTemplateInput,
        output_schema = types.CreateRepositoryCreationTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLifecyclePolicy",
        input_schema = types.DeleteLifecyclePolicyInput,
        output_schema = types.DeleteLifecyclePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePullThroughCacheRule(input, options)
    return self:invokeOperation(input, {
        name = "DeletePullThroughCacheRule",
        input_schema = types.DeletePullThroughCacheRuleInput,
        output_schema = types.DeletePullThroughCacheRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRegistryPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRegistryPolicy",
        input_schema = types.DeleteRegistryPolicyInput,
        output_schema = types.DeleteRegistryPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRepository(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRepository",
        input_schema = types.DeleteRepositoryInput,
        output_schema = types.DeleteRepositoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRepositoryCreationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRepositoryCreationTemplate",
        input_schema = types.DeleteRepositoryCreationTemplateInput,
        output_schema = types.DeleteRepositoryCreationTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRepositoryPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRepositoryPolicy",
        input_schema = types.DeleteRepositoryPolicyInput,
        output_schema = types.DeleteRepositoryPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSigningConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSigningConfiguration",
        input_schema = types.DeleteSigningConfigurationInput,
        output_schema = types.DeleteSigningConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterPullTimeUpdateExclusion(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterPullTimeUpdateExclusion",
        input_schema = types.DeregisterPullTimeUpdateExclusionInput,
        output_schema = types.DeregisterPullTimeUpdateExclusionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeImageReplicationStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImageReplicationStatus",
        input_schema = types.DescribeImageReplicationStatusInput,
        output_schema = types.DescribeImageReplicationStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeImages(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImages",
        input_schema = types.DescribeImagesInput,
        output_schema = types.DescribeImagesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeImageScanFindings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImageScanFindings",
        input_schema = types.DescribeImageScanFindingsInput,
        output_schema = types.DescribeImageScanFindingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeImageSigningStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImageSigningStatus",
        input_schema = types.DescribeImageSigningStatusInput,
        output_schema = types.DescribeImageSigningStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePullThroughCacheRules(input, options)
    return self:invokeOperation(input, {
        name = "DescribePullThroughCacheRules",
        input_schema = types.DescribePullThroughCacheRulesInput,
        output_schema = types.DescribePullThroughCacheRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRegistry(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRegistry",
        input_schema = types.DescribeRegistryInput,
        output_schema = types.DescribeRegistryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRepositories(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRepositories",
        input_schema = types.DescribeRepositoriesInput,
        output_schema = types.DescribeRepositoriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRepositoryCreationTemplates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRepositoryCreationTemplates",
        input_schema = types.DescribeRepositoryCreationTemplatesInput,
        output_schema = types.DescribeRepositoryCreationTemplatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccountSetting(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountSetting",
        input_schema = types.GetAccountSettingInput,
        output_schema = types.GetAccountSettingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAuthorizationToken(input, options)
    return self:invokeOperation(input, {
        name = "GetAuthorizationToken",
        input_schema = types.GetAuthorizationTokenInput,
        output_schema = types.GetAuthorizationTokenOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDownloadUrlForLayer(input, options)
    return self:invokeOperation(input, {
        name = "GetDownloadUrlForLayer",
        input_schema = types.GetDownloadUrlForLayerInput,
        output_schema = types.GetDownloadUrlForLayerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetLifecyclePolicy",
        input_schema = types.GetLifecyclePolicyInput,
        output_schema = types.GetLifecyclePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLifecyclePolicyPreview(input, options)
    return self:invokeOperation(input, {
        name = "GetLifecyclePolicyPreview",
        input_schema = types.GetLifecyclePolicyPreviewInput,
        output_schema = types.GetLifecyclePolicyPreviewOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRegistryPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetRegistryPolicy",
        input_schema = types.GetRegistryPolicyInput,
        output_schema = types.GetRegistryPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRegistryScanningConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetRegistryScanningConfiguration",
        input_schema = types.GetRegistryScanningConfigurationInput,
        output_schema = types.GetRegistryScanningConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRepositoryPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetRepositoryPolicy",
        input_schema = types.GetRepositoryPolicyInput,
        output_schema = types.GetRepositoryPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSigningConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetSigningConfiguration",
        input_schema = types.GetSigningConfigurationInput,
        output_schema = types.GetSigningConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:initiateLayerUpload(input, options)
    return self:invokeOperation(input, {
        name = "InitiateLayerUpload",
        input_schema = types.InitiateLayerUploadInput,
        output_schema = types.InitiateLayerUploadOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listImageReferrers(input, options)
    return self:invokeOperation(input, {
        name = "ListImageReferrers",
        input_schema = types.ListImageReferrersInput,
        output_schema = types.ListImageReferrersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listImages(input, options)
    return self:invokeOperation(input, {
        name = "ListImages",
        input_schema = types.ListImagesInput,
        output_schema = types.ListImagesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPullTimeUpdateExclusions(input, options)
    return self:invokeOperation(input, {
        name = "ListPullTimeUpdateExclusions",
        input_schema = types.ListPullTimeUpdateExclusionsInput,
        output_schema = types.ListPullTimeUpdateExclusionsOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAccountSetting(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountSetting",
        input_schema = types.PutAccountSettingInput,
        output_schema = types.PutAccountSettingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putImage(input, options)
    return self:invokeOperation(input, {
        name = "PutImage",
        input_schema = types.PutImageInput,
        output_schema = types.PutImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putImageScanningConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutImageScanningConfiguration",
        input_schema = types.PutImageScanningConfigurationInput,
        output_schema = types.PutImageScanningConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putImageTagMutability(input, options)
    return self:invokeOperation(input, {
        name = "PutImageTagMutability",
        input_schema = types.PutImageTagMutabilityInput,
        output_schema = types.PutImageTagMutabilityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutLifecyclePolicy",
        input_schema = types.PutLifecyclePolicyInput,
        output_schema = types.PutLifecyclePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRegistryPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutRegistryPolicy",
        input_schema = types.PutRegistryPolicyInput,
        output_schema = types.PutRegistryPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRegistryScanningConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutRegistryScanningConfiguration",
        input_schema = types.PutRegistryScanningConfigurationInput,
        output_schema = types.PutRegistryScanningConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putReplicationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutReplicationConfiguration",
        input_schema = types.PutReplicationConfigurationInput,
        output_schema = types.PutReplicationConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putSigningConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutSigningConfiguration",
        input_schema = types.PutSigningConfigurationInput,
        output_schema = types.PutSigningConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerPullTimeUpdateExclusion(input, options)
    return self:invokeOperation(input, {
        name = "RegisterPullTimeUpdateExclusion",
        input_schema = types.RegisterPullTimeUpdateExclusionInput,
        output_schema = types.RegisterPullTimeUpdateExclusionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setRepositoryPolicy(input, options)
    return self:invokeOperation(input, {
        name = "SetRepositoryPolicy",
        input_schema = types.SetRepositoryPolicyInput,
        output_schema = types.SetRepositoryPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startImageScan(input, options)
    return self:invokeOperation(input, {
        name = "StartImageScan",
        input_schema = types.StartImageScanInput,
        output_schema = types.StartImageScanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startLifecyclePolicyPreview(input, options)
    return self:invokeOperation(input, {
        name = "StartLifecyclePolicyPreview",
        input_schema = types.StartLifecyclePolicyPreviewInput,
        output_schema = types.StartLifecyclePolicyPreviewOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateImageStorageClass(input, options)
    return self:invokeOperation(input, {
        name = "UpdateImageStorageClass",
        input_schema = types.UpdateImageStorageClassInput,
        output_schema = types.UpdateImageStorageClassOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePullThroughCacheRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePullThroughCacheRule",
        input_schema = types.UpdatePullThroughCacheRuleInput,
        output_schema = types.UpdatePullThroughCacheRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRepositoryCreationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRepositoryCreationTemplate",
        input_schema = types.UpdateRepositoryCreationTemplateInput,
        output_schema = types.UpdateRepositoryCreationTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:uploadLayerPart(input, options)
    return self:invokeOperation(input, {
        name = "UploadLayerPart",
        input_schema = types.UploadLayerPartInput,
        output_schema = types.UploadLayerPartOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:validatePullThroughCacheRule(input, options)
    return self:invokeOperation(input, {
        name = "ValidatePullThroughCacheRule",
        input_schema = types.ValidatePullThroughCacheRuleInput,
        output_schema = types.ValidatePullThroughCacheRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
