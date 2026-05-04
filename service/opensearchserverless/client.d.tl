local types = require("opensearchserverless.types")

local record Client
    batchGetCollection: function(Client, types.BatchGetCollectionInput): types.BatchGetCollectionOutput, table
    batchGetCollectionGroup: function(Client, types.BatchGetCollectionGroupInput): types.BatchGetCollectionGroupOutput, table
    batchGetEffectiveLifecyclePolicy: function(Client, types.BatchGetEffectiveLifecyclePolicyInput): types.BatchGetEffectiveLifecyclePolicyOutput, table
    batchGetLifecyclePolicy: function(Client, types.BatchGetLifecyclePolicyInput): types.BatchGetLifecyclePolicyOutput, table
    batchGetVpcEndpoint: function(Client, types.BatchGetVpcEndpointInput): types.BatchGetVpcEndpointOutput, table
    createAccessPolicy: function(Client, types.CreateAccessPolicyInput): types.CreateAccessPolicyOutput, table
    createCollection: function(Client, types.CreateCollectionInput): types.CreateCollectionOutput, table
    createCollectionGroup: function(Client, types.CreateCollectionGroupInput): types.CreateCollectionGroupOutput, table
    createIndex: function(Client, types.CreateIndexInput): types.CreateIndexOutput, table
    createLifecyclePolicy: function(Client, types.CreateLifecyclePolicyInput): types.CreateLifecyclePolicyOutput, table
    createSecurityConfig: function(Client, types.CreateSecurityConfigInput): types.CreateSecurityConfigOutput, table
    createSecurityPolicy: function(Client, types.CreateSecurityPolicyInput): types.CreateSecurityPolicyOutput, table
    createVpcEndpoint: function(Client, types.CreateVpcEndpointInput): types.CreateVpcEndpointOutput, table
    deleteAccessPolicy: function(Client, types.DeleteAccessPolicyInput): types.DeleteAccessPolicyOutput, table
    deleteCollection: function(Client, types.DeleteCollectionInput): types.DeleteCollectionOutput, table
    deleteCollectionGroup: function(Client, types.DeleteCollectionGroupInput): types.DeleteCollectionGroupOutput, table
    deleteIndex: function(Client, types.DeleteIndexInput): types.DeleteIndexOutput, table
    deleteLifecyclePolicy: function(Client, types.DeleteLifecyclePolicyInput): types.DeleteLifecyclePolicyOutput, table
    deleteSecurityConfig: function(Client, types.DeleteSecurityConfigInput): types.DeleteSecurityConfigOutput, table
    deleteSecurityPolicy: function(Client, types.DeleteSecurityPolicyInput): types.DeleteSecurityPolicyOutput, table
    deleteVpcEndpoint: function(Client, types.DeleteVpcEndpointInput): types.DeleteVpcEndpointOutput, table
    getAccessPolicy: function(Client, types.GetAccessPolicyInput): types.GetAccessPolicyOutput, table
    getAccountSettings: function(Client, types.GetAccountSettingsInput): types.GetAccountSettingsOutput, table
    getIndex: function(Client, types.GetIndexInput): types.GetIndexOutput, table
    getPoliciesStats: function(Client, types.GetPoliciesStatsInput): types.GetPoliciesStatsOutput, table
    getSecurityConfig: function(Client, types.GetSecurityConfigInput): types.GetSecurityConfigOutput, table
    getSecurityPolicy: function(Client, types.GetSecurityPolicyInput): types.GetSecurityPolicyOutput, table
    listAccessPolicies: function(Client, types.ListAccessPoliciesInput): types.ListAccessPoliciesOutput, table
    listCollectionGroups: function(Client, types.ListCollectionGroupsInput): types.ListCollectionGroupsOutput, table
    listCollections: function(Client, types.ListCollectionsInput): types.ListCollectionsOutput, table
    listLifecyclePolicies: function(Client, types.ListLifecyclePoliciesInput): types.ListLifecyclePoliciesOutput, table
    listSecurityConfigs: function(Client, types.ListSecurityConfigsInput): types.ListSecurityConfigsOutput, table
    listSecurityPolicies: function(Client, types.ListSecurityPoliciesInput): types.ListSecurityPoliciesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listVpcEndpoints: function(Client, types.ListVpcEndpointsInput): types.ListVpcEndpointsOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateAccessPolicy: function(Client, types.UpdateAccessPolicyInput): types.UpdateAccessPolicyOutput, table
    updateAccountSettings: function(Client, types.UpdateAccountSettingsInput): types.UpdateAccountSettingsOutput, table
    updateCollection: function(Client, types.UpdateCollectionInput): types.UpdateCollectionOutput, table
    updateCollectionGroup: function(Client, types.UpdateCollectionGroupInput): types.UpdateCollectionGroupOutput, table
    updateIndex: function(Client, types.UpdateIndexInput): types.UpdateIndexOutput, table
    updateLifecyclePolicy: function(Client, types.UpdateLifecyclePolicyInput): types.UpdateLifecyclePolicyOutput, table
    updateSecurityConfig: function(Client, types.UpdateSecurityConfigInput): types.UpdateSecurityConfigOutput, table
    updateSecurityPolicy: function(Client, types.UpdateSecurityPolicyInput): types.UpdateSecurityPolicyOutput, table
    updateVpcEndpoint: function(Client, types.UpdateVpcEndpointInput): types.UpdateVpcEndpointOutput, table
end

local record M
    new: function(table): Client
end

return M
