local types = require("ecr.types")

local record Client
    batchCheckLayerAvailability: function(Client, types.BatchCheckLayerAvailabilityInput): types.BatchCheckLayerAvailabilityOutput, table
    batchDeleteImage: function(Client, types.BatchDeleteImageInput): types.BatchDeleteImageOutput, table
    batchGetImage: function(Client, types.BatchGetImageInput): types.BatchGetImageOutput, table
    batchGetRepositoryScanningConfiguration: function(Client, types.BatchGetRepositoryScanningConfigurationInput): types.BatchGetRepositoryScanningConfigurationOutput, table
    completeLayerUpload: function(Client, types.CompleteLayerUploadInput): types.CompleteLayerUploadOutput, table
    createPullThroughCacheRule: function(Client, types.CreatePullThroughCacheRuleInput): types.CreatePullThroughCacheRuleOutput, table
    createRepository: function(Client, types.CreateRepositoryInput): types.CreateRepositoryOutput, table
    createRepositoryCreationTemplate: function(Client, types.CreateRepositoryCreationTemplateInput): types.CreateRepositoryCreationTemplateOutput, table
    deleteLifecyclePolicy: function(Client, types.DeleteLifecyclePolicyInput): types.DeleteLifecyclePolicyOutput, table
    deletePullThroughCacheRule: function(Client, types.DeletePullThroughCacheRuleInput): types.DeletePullThroughCacheRuleOutput, table
    deleteRegistryPolicy: function(Client, types.DeleteRegistryPolicyInput): types.DeleteRegistryPolicyOutput, table
    deleteRepository: function(Client, types.DeleteRepositoryInput): types.DeleteRepositoryOutput, table
    deleteRepositoryCreationTemplate: function(Client, types.DeleteRepositoryCreationTemplateInput): types.DeleteRepositoryCreationTemplateOutput, table
    deleteRepositoryPolicy: function(Client, types.DeleteRepositoryPolicyInput): types.DeleteRepositoryPolicyOutput, table
    deleteSigningConfiguration: function(Client, types.DeleteSigningConfigurationInput): types.DeleteSigningConfigurationOutput, table
    deregisterPullTimeUpdateExclusion: function(Client, types.DeregisterPullTimeUpdateExclusionInput): types.DeregisterPullTimeUpdateExclusionOutput, table
    describeImageReplicationStatus: function(Client, types.DescribeImageReplicationStatusInput): types.DescribeImageReplicationStatusOutput, table
    describeImages: function(Client, types.DescribeImagesInput): types.DescribeImagesOutput, table
    describeImageScanFindings: function(Client, types.DescribeImageScanFindingsInput): types.DescribeImageScanFindingsOutput, table
    describeImageSigningStatus: function(Client, types.DescribeImageSigningStatusInput): types.DescribeImageSigningStatusOutput, table
    describePullThroughCacheRules: function(Client, types.DescribePullThroughCacheRulesInput): types.DescribePullThroughCacheRulesOutput, table
    describeRegistry: function(Client, types.DescribeRegistryInput): types.DescribeRegistryOutput, table
    describeRepositories: function(Client, types.DescribeRepositoriesInput): types.DescribeRepositoriesOutput, table
    describeRepositoryCreationTemplates: function(Client, types.DescribeRepositoryCreationTemplatesInput): types.DescribeRepositoryCreationTemplatesOutput, table
    getAccountSetting: function(Client, types.GetAccountSettingInput): types.GetAccountSettingOutput, table
    getAuthorizationToken: function(Client, types.GetAuthorizationTokenInput): types.GetAuthorizationTokenOutput, table
    getDownloadUrlForLayer: function(Client, types.GetDownloadUrlForLayerInput): types.GetDownloadUrlForLayerOutput, table
    getLifecyclePolicy: function(Client, types.GetLifecyclePolicyInput): types.GetLifecyclePolicyOutput, table
    getLifecyclePolicyPreview: function(Client, types.GetLifecyclePolicyPreviewInput): types.GetLifecyclePolicyPreviewOutput, table
    getRegistryPolicy: function(Client, types.GetRegistryPolicyInput): types.GetRegistryPolicyOutput, table
    getRegistryScanningConfiguration: function(Client, types.GetRegistryScanningConfigurationInput): types.GetRegistryScanningConfigurationOutput, table
    getRepositoryPolicy: function(Client, types.GetRepositoryPolicyInput): types.GetRepositoryPolicyOutput, table
    getSigningConfiguration: function(Client, types.GetSigningConfigurationInput): types.GetSigningConfigurationOutput, table
    initiateLayerUpload: function(Client, types.InitiateLayerUploadInput): types.InitiateLayerUploadOutput, table
    listImageReferrers: function(Client, types.ListImageReferrersInput): types.ListImageReferrersOutput, table
    listImages: function(Client, types.ListImagesInput): types.ListImagesOutput, table
    listPullTimeUpdateExclusions: function(Client, types.ListPullTimeUpdateExclusionsInput): types.ListPullTimeUpdateExclusionsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putAccountSetting: function(Client, types.PutAccountSettingInput): types.PutAccountSettingOutput, table
    putImage: function(Client, types.PutImageInput): types.PutImageOutput, table
    putImageScanningConfiguration: function(Client, types.PutImageScanningConfigurationInput): types.PutImageScanningConfigurationOutput, table
    putImageTagMutability: function(Client, types.PutImageTagMutabilityInput): types.PutImageTagMutabilityOutput, table
    putLifecyclePolicy: function(Client, types.PutLifecyclePolicyInput): types.PutLifecyclePolicyOutput, table
    putRegistryPolicy: function(Client, types.PutRegistryPolicyInput): types.PutRegistryPolicyOutput, table
    putRegistryScanningConfiguration: function(Client, types.PutRegistryScanningConfigurationInput): types.PutRegistryScanningConfigurationOutput, table
    putReplicationConfiguration: function(Client, types.PutReplicationConfigurationInput): types.PutReplicationConfigurationOutput, table
    putSigningConfiguration: function(Client, types.PutSigningConfigurationInput): types.PutSigningConfigurationOutput, table
    registerPullTimeUpdateExclusion: function(Client, types.RegisterPullTimeUpdateExclusionInput): types.RegisterPullTimeUpdateExclusionOutput, table
    setRepositoryPolicy: function(Client, types.SetRepositoryPolicyInput): types.SetRepositoryPolicyOutput, table
    startImageScan: function(Client, types.StartImageScanInput): types.StartImageScanOutput, table
    startLifecyclePolicyPreview: function(Client, types.StartLifecyclePolicyPreviewInput): types.StartLifecyclePolicyPreviewOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateImageStorageClass: function(Client, types.UpdateImageStorageClassInput): types.UpdateImageStorageClassOutput, table
    updatePullThroughCacheRule: function(Client, types.UpdatePullThroughCacheRuleInput): types.UpdatePullThroughCacheRuleOutput, table
    updateRepositoryCreationTemplate: function(Client, types.UpdateRepositoryCreationTemplateInput): types.UpdateRepositoryCreationTemplateOutput, table
    uploadLayerPart: function(Client, types.UploadLayerPartInput): types.UploadLayerPartOutput, table
    validatePullThroughCacheRule: function(Client, types.ValidatePullThroughCacheRuleInput): types.ValidatePullThroughCacheRuleOutput, table
end

local record M
    new: function(table): Client
end

return M
