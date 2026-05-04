local types = require("mailmanager.types")

local record Client
    createAddonInstance: function(Client, types.CreateAddonInstanceInput): types.CreateAddonInstanceOutput, table
    createAddonSubscription: function(Client, types.CreateAddonSubscriptionInput): types.CreateAddonSubscriptionOutput, table
    createAddressList: function(Client, types.CreateAddressListInput): types.CreateAddressListOutput, table
    createAddressListImportJob: function(Client, types.CreateAddressListImportJobInput): types.CreateAddressListImportJobOutput, table
    createArchive: function(Client, types.CreateArchiveInput): types.CreateArchiveOutput, table
    createIngressPoint: function(Client, types.CreateIngressPointInput): types.CreateIngressPointOutput, table
    createRelay: function(Client, types.CreateRelayInput): types.CreateRelayOutput, table
    createRuleSet: function(Client, types.CreateRuleSetInput): types.CreateRuleSetOutput, table
    createTrafficPolicy: function(Client, types.CreateTrafficPolicyInput): types.CreateTrafficPolicyOutput, table
    deleteAddonInstance: function(Client, types.DeleteAddonInstanceInput): types.DeleteAddonInstanceOutput, table
    deleteAddonSubscription: function(Client, types.DeleteAddonSubscriptionInput): types.DeleteAddonSubscriptionOutput, table
    deleteAddressList: function(Client, types.DeleteAddressListInput): types.DeleteAddressListOutput, table
    deleteArchive: function(Client, types.DeleteArchiveInput): types.DeleteArchiveOutput, table
    deleteIngressPoint: function(Client, types.DeleteIngressPointInput): types.DeleteIngressPointOutput, table
    deleteRelay: function(Client, types.DeleteRelayInput): types.DeleteRelayOutput, table
    deleteRuleSet: function(Client, types.DeleteRuleSetInput): types.DeleteRuleSetOutput, table
    deleteTrafficPolicy: function(Client, types.DeleteTrafficPolicyInput): types.DeleteTrafficPolicyOutput, table
    deregisterMemberFromAddressList: function(Client, types.DeregisterMemberFromAddressListInput): types.DeregisterMemberFromAddressListOutput, table
    getAddonInstance: function(Client, types.GetAddonInstanceInput): types.GetAddonInstanceOutput, table
    getAddonSubscription: function(Client, types.GetAddonSubscriptionInput): types.GetAddonSubscriptionOutput, table
    getAddressList: function(Client, types.GetAddressListInput): types.GetAddressListOutput, table
    getAddressListImportJob: function(Client, types.GetAddressListImportJobInput): types.GetAddressListImportJobOutput, table
    getArchive: function(Client, types.GetArchiveInput): types.GetArchiveOutput, table
    getArchiveExport: function(Client, types.GetArchiveExportInput): types.GetArchiveExportOutput, table
    getArchiveMessage: function(Client, types.GetArchiveMessageInput): types.GetArchiveMessageOutput, table
    getArchiveMessageContent: function(Client, types.GetArchiveMessageContentInput): types.GetArchiveMessageContentOutput, table
    getArchiveSearch: function(Client, types.GetArchiveSearchInput): types.GetArchiveSearchOutput, table
    getArchiveSearchResults: function(Client, types.GetArchiveSearchResultsInput): types.GetArchiveSearchResultsOutput, table
    getIngressPoint: function(Client, types.GetIngressPointInput): types.GetIngressPointOutput, table
    getMemberOfAddressList: function(Client, types.GetMemberOfAddressListInput): types.GetMemberOfAddressListOutput, table
    getRelay: function(Client, types.GetRelayInput): types.GetRelayOutput, table
    getRuleSet: function(Client, types.GetRuleSetInput): types.GetRuleSetOutput, table
    getTrafficPolicy: function(Client, types.GetTrafficPolicyInput): types.GetTrafficPolicyOutput, table
    listAddonInstances: function(Client, types.ListAddonInstancesInput): types.ListAddonInstancesOutput, table
    listAddonSubscriptions: function(Client, types.ListAddonSubscriptionsInput): types.ListAddonSubscriptionsOutput, table
    listAddressListImportJobs: function(Client, types.ListAddressListImportJobsInput): types.ListAddressListImportJobsOutput, table
    listAddressLists: function(Client, types.ListAddressListsInput): types.ListAddressListsOutput, table
    listArchiveExports: function(Client, types.ListArchiveExportsInput): types.ListArchiveExportsOutput, table
    listArchives: function(Client, types.ListArchivesInput): types.ListArchivesOutput, table
    listArchiveSearches: function(Client, types.ListArchiveSearchesInput): types.ListArchiveSearchesOutput, table
    listIngressPoints: function(Client, types.ListIngressPointsInput): types.ListIngressPointsOutput, table
    listMembersOfAddressList: function(Client, types.ListMembersOfAddressListInput): types.ListMembersOfAddressListOutput, table
    listRelays: function(Client, types.ListRelaysInput): types.ListRelaysOutput, table
    listRuleSets: function(Client, types.ListRuleSetsInput): types.ListRuleSetsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTrafficPolicies: function(Client, types.ListTrafficPoliciesInput): types.ListTrafficPoliciesOutput, table
    registerMemberToAddressList: function(Client, types.RegisterMemberToAddressListInput): types.RegisterMemberToAddressListOutput, table
    startAddressListImportJob: function(Client, types.StartAddressListImportJobInput): types.StartAddressListImportJobOutput, table
    startArchiveExport: function(Client, types.StartArchiveExportInput): types.StartArchiveExportOutput, table
    startArchiveSearch: function(Client, types.StartArchiveSearchInput): types.StartArchiveSearchOutput, table
    stopAddressListImportJob: function(Client, types.StopAddressListImportJobInput): types.StopAddressListImportJobOutput, table
    stopArchiveExport: function(Client, types.StopArchiveExportInput): types.StopArchiveExportOutput, table
    stopArchiveSearch: function(Client, types.StopArchiveSearchInput): types.StopArchiveSearchOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateArchive: function(Client, types.UpdateArchiveInput): types.UpdateArchiveOutput, table
    updateIngressPoint: function(Client, types.UpdateIngressPointInput): types.UpdateIngressPointOutput, table
    updateRelay: function(Client, types.UpdateRelayInput): types.UpdateRelayOutput, table
    updateRuleSet: function(Client, types.UpdateRuleSetInput): types.UpdateRuleSetOutput, table
    updateTrafficPolicy: function(Client, types.UpdateTrafficPolicyInput): types.UpdateTrafficPolicyOutput, table
end

local record M
    new: function(table): Client
end

return M
