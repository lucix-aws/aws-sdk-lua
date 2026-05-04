local types = require("organizations.types")

local record Client
    acceptHandshake: function(Client, types.AcceptHandshakeInput): types.AcceptHandshakeOutput, table
    attachPolicy: function(Client, types.AttachPolicyInput): types.AttachPolicyOutput, table
    cancelHandshake: function(Client, types.CancelHandshakeInput): types.CancelHandshakeOutput, table
    closeAccount: function(Client, types.CloseAccountInput): types.CloseAccountOutput, table
    createAccount: function(Client, types.CreateAccountInput): types.CreateAccountOutput, table
    createGovCloudAccount: function(Client, types.CreateGovCloudAccountInput): types.CreateGovCloudAccountOutput, table
    createOrganization: function(Client, types.CreateOrganizationInput): types.CreateOrganizationOutput, table
    createOrganizationalUnit: function(Client, types.CreateOrganizationalUnitInput): types.CreateOrganizationalUnitOutput, table
    createPolicy: function(Client, types.CreatePolicyInput): types.CreatePolicyOutput, table
    declineHandshake: function(Client, types.DeclineHandshakeInput): types.DeclineHandshakeOutput, table
    deleteOrganization: function(Client, types.DeleteOrganizationInput): types.DeleteOrganizationOutput, table
    deleteOrganizationalUnit: function(Client, types.DeleteOrganizationalUnitInput): types.DeleteOrganizationalUnitOutput, table
    deletePolicy: function(Client, types.DeletePolicyInput): types.DeletePolicyOutput, table
    deleteResourcePolicy: function(Client, types.DeleteResourcePolicyInput): types.DeleteResourcePolicyOutput, table
    deregisterDelegatedAdministrator: function(Client, types.DeregisterDelegatedAdministratorInput): types.DeregisterDelegatedAdministratorOutput, table
    describeAccount: function(Client, types.DescribeAccountInput): types.DescribeAccountOutput, table
    describeCreateAccountStatus: function(Client, types.DescribeCreateAccountStatusInput): types.DescribeCreateAccountStatusOutput, table
    describeEffectivePolicy: function(Client, types.DescribeEffectivePolicyInput): types.DescribeEffectivePolicyOutput, table
    describeHandshake: function(Client, types.DescribeHandshakeInput): types.DescribeHandshakeOutput, table
    describeOrganization: function(Client, types.DescribeOrganizationInput): types.DescribeOrganizationOutput, table
    describeOrganizationalUnit: function(Client, types.DescribeOrganizationalUnitInput): types.DescribeOrganizationalUnitOutput, table
    describePolicy: function(Client, types.DescribePolicyInput): types.DescribePolicyOutput, table
    describeResourcePolicy: function(Client, types.DescribeResourcePolicyInput): types.DescribeResourcePolicyOutput, table
    describeResponsibilityTransfer: function(Client, types.DescribeResponsibilityTransferInput): types.DescribeResponsibilityTransferOutput, table
    detachPolicy: function(Client, types.DetachPolicyInput): types.DetachPolicyOutput, table
    disableAWSServiceAccess: function(Client, types.DisableAWSServiceAccessInput): types.DisableAWSServiceAccessOutput, table
    disablePolicyType: function(Client, types.DisablePolicyTypeInput): types.DisablePolicyTypeOutput, table
    enableAllFeatures: function(Client, types.EnableAllFeaturesInput): types.EnableAllFeaturesOutput, table
    enableAWSServiceAccess: function(Client, types.EnableAWSServiceAccessInput): types.EnableAWSServiceAccessOutput, table
    enablePolicyType: function(Client, types.EnablePolicyTypeInput): types.EnablePolicyTypeOutput, table
    inviteAccountToOrganization: function(Client, types.InviteAccountToOrganizationInput): types.InviteAccountToOrganizationOutput, table
    inviteOrganizationToTransferResponsibility: function(Client, types.InviteOrganizationToTransferResponsibilityInput): types.InviteOrganizationToTransferResponsibilityOutput, table
    leaveOrganization: function(Client, types.LeaveOrganizationInput): types.LeaveOrganizationOutput, table
    listAccounts: function(Client, types.ListAccountsInput): types.ListAccountsOutput, table
    listAccountsForParent: function(Client, types.ListAccountsForParentInput): types.ListAccountsForParentOutput, table
    listAccountsWithInvalidEffectivePolicy: function(Client, types.ListAccountsWithInvalidEffectivePolicyInput): types.ListAccountsWithInvalidEffectivePolicyOutput, table
    listAWSServiceAccessForOrganization: function(Client, types.ListAWSServiceAccessForOrganizationInput): types.ListAWSServiceAccessForOrganizationOutput, table
    listChildren: function(Client, types.ListChildrenInput): types.ListChildrenOutput, table
    listCreateAccountStatus: function(Client, types.ListCreateAccountStatusInput): types.ListCreateAccountStatusOutput, table
    listDelegatedAdministrators: function(Client, types.ListDelegatedAdministratorsInput): types.ListDelegatedAdministratorsOutput, table
    listDelegatedServicesForAccount: function(Client, types.ListDelegatedServicesForAccountInput): types.ListDelegatedServicesForAccountOutput, table
    listEffectivePolicyValidationErrors: function(Client, types.ListEffectivePolicyValidationErrorsInput): types.ListEffectivePolicyValidationErrorsOutput, table
    listHandshakesForAccount: function(Client, types.ListHandshakesForAccountInput): types.ListHandshakesForAccountOutput, table
    listHandshakesForOrganization: function(Client, types.ListHandshakesForOrganizationInput): types.ListHandshakesForOrganizationOutput, table
    listInboundResponsibilityTransfers: function(Client, types.ListInboundResponsibilityTransfersInput): types.ListInboundResponsibilityTransfersOutput, table
    listOrganizationalUnitsForParent: function(Client, types.ListOrganizationalUnitsForParentInput): types.ListOrganizationalUnitsForParentOutput, table
    listOutboundResponsibilityTransfers: function(Client, types.ListOutboundResponsibilityTransfersInput): types.ListOutboundResponsibilityTransfersOutput, table
    listParents: function(Client, types.ListParentsInput): types.ListParentsOutput, table
    listPolicies: function(Client, types.ListPoliciesInput): types.ListPoliciesOutput, table
    listPoliciesForTarget: function(Client, types.ListPoliciesForTargetInput): types.ListPoliciesForTargetOutput, table
    listRoots: function(Client, types.ListRootsInput): types.ListRootsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTargetsForPolicy: function(Client, types.ListTargetsForPolicyInput): types.ListTargetsForPolicyOutput, table
    moveAccount: function(Client, types.MoveAccountInput): types.MoveAccountOutput, table
    putResourcePolicy: function(Client, types.PutResourcePolicyInput): types.PutResourcePolicyOutput, table
    registerDelegatedAdministrator: function(Client, types.RegisterDelegatedAdministratorInput): types.RegisterDelegatedAdministratorOutput, table
    removeAccountFromOrganization: function(Client, types.RemoveAccountFromOrganizationInput): types.RemoveAccountFromOrganizationOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    terminateResponsibilityTransfer: function(Client, types.TerminateResponsibilityTransferInput): types.TerminateResponsibilityTransferOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateOrganizationalUnit: function(Client, types.UpdateOrganizationalUnitInput): types.UpdateOrganizationalUnitOutput, table
    updatePolicy: function(Client, types.UpdatePolicyInput): types.UpdatePolicyOutput, table
    updateResponsibilityTransfer: function(Client, types.UpdateResponsibilityTransferInput): types.UpdateResponsibilityTransferOutput, table
end

local record M
    new: function(table): Client
end

return M
