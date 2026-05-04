local types = require("dlm.types")

local record Client
    createLifecyclePolicy: function(Client, types.CreateLifecyclePolicyInput): types.CreateLifecyclePolicyOutput, table
    deleteLifecyclePolicy: function(Client, types.DeleteLifecyclePolicyInput): types.DeleteLifecyclePolicyOutput, table
    getLifecyclePolicies: function(Client, types.GetLifecyclePoliciesInput): types.GetLifecyclePoliciesOutput, table
    getLifecyclePolicy: function(Client, types.GetLifecyclePolicyInput): types.GetLifecyclePolicyOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateLifecyclePolicy: function(Client, types.UpdateLifecyclePolicyInput): types.UpdateLifecyclePolicyOutput, table
end

local record M
    new: function(table): Client
end

return M
