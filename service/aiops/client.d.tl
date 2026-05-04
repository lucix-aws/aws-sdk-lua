local types = require("aiops.types")

local record Client
    createInvestigationGroup: function(Client, types.CreateInvestigationGroupInput): types.CreateInvestigationGroupOutput, table
    deleteInvestigationGroup: function(Client, types.DeleteInvestigationGroupInput): types.DeleteInvestigationGroupOutput, table
    deleteInvestigationGroupPolicy: function(Client, types.DeleteInvestigationGroupPolicyInput): types.DeleteInvestigationGroupPolicyOutput, table
    getInvestigationGroup: function(Client, types.GetInvestigationGroupInput): types.GetInvestigationGroupOutput, table
    getInvestigationGroupPolicy: function(Client, types.GetInvestigationGroupPolicyInput): types.GetInvestigationGroupPolicyOutput, table
    listInvestigationGroups: function(Client, types.ListInvestigationGroupsInput): types.ListInvestigationGroupsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putInvestigationGroupPolicy: function(Client, types.PutInvestigationGroupPolicyInput): types.PutInvestigationGroupPolicyOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateInvestigationGroup: function(Client, types.UpdateInvestigationGroupInput): types.UpdateInvestigationGroupOutput, table
end

local record M
    new: function(table): Client
end

return M
