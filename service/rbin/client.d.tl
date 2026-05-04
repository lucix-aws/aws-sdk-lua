local types = require("rbin.types")

local record Client
    createRule: function(Client, types.CreateRuleInput): types.CreateRuleOutput, table
    deleteRule: function(Client, types.DeleteRuleInput): types.DeleteRuleOutput, table
    getRule: function(Client, types.GetRuleInput): types.GetRuleOutput, table
    listRules: function(Client, types.ListRulesInput): types.ListRulesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    lockRule: function(Client, types.LockRuleInput): types.LockRuleOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    unlockRule: function(Client, types.UnlockRuleInput): types.UnlockRuleOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateRule: function(Client, types.UpdateRuleInput): types.UpdateRuleOutput, table
end

local record M
    new: function(table): Client
end

return M
