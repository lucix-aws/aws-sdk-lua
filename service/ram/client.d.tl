local types = require("ram.types")

local record Client
    acceptResourceShareInvitation: function(Client, types.AcceptResourceShareInvitationInput): types.AcceptResourceShareInvitationOutput, table
    associateResourceShare: function(Client, types.AssociateResourceShareInput): types.AssociateResourceShareOutput, table
    associateResourceSharePermission: function(Client, types.AssociateResourceSharePermissionInput): types.AssociateResourceSharePermissionOutput, table
    createPermission: function(Client, types.CreatePermissionInput): types.CreatePermissionOutput, table
    createPermissionVersion: function(Client, types.CreatePermissionVersionInput): types.CreatePermissionVersionOutput, table
    createResourceShare: function(Client, types.CreateResourceShareInput): types.CreateResourceShareOutput, table
    deletePermission: function(Client, types.DeletePermissionInput): types.DeletePermissionOutput, table
    deletePermissionVersion: function(Client, types.DeletePermissionVersionInput): types.DeletePermissionVersionOutput, table
    deleteResourceShare: function(Client, types.DeleteResourceShareInput): types.DeleteResourceShareOutput, table
    disassociateResourceShare: function(Client, types.DisassociateResourceShareInput): types.DisassociateResourceShareOutput, table
    disassociateResourceSharePermission: function(Client, types.DisassociateResourceSharePermissionInput): types.DisassociateResourceSharePermissionOutput, table
    enableSharingWithAwsOrganization: function(Client, types.EnableSharingWithAwsOrganizationInput): types.EnableSharingWithAwsOrganizationOutput, table
    getPermission: function(Client, types.GetPermissionInput): types.GetPermissionOutput, table
    getResourcePolicies: function(Client, types.GetResourcePoliciesInput): types.GetResourcePoliciesOutput, table
    getResourceShareAssociations: function(Client, types.GetResourceShareAssociationsInput): types.GetResourceShareAssociationsOutput, table
    getResourceShareInvitations: function(Client, types.GetResourceShareInvitationsInput): types.GetResourceShareInvitationsOutput, table
    getResourceShares: function(Client, types.GetResourceSharesInput): types.GetResourceSharesOutput, table
    listPendingInvitationResources: function(Client, types.ListPendingInvitationResourcesInput): types.ListPendingInvitationResourcesOutput, table
    listPermissionAssociations: function(Client, types.ListPermissionAssociationsInput): types.ListPermissionAssociationsOutput, table
    listPermissions: function(Client, types.ListPermissionsInput): types.ListPermissionsOutput, table
    listPermissionVersions: function(Client, types.ListPermissionVersionsInput): types.ListPermissionVersionsOutput, table
    listPrincipals: function(Client, types.ListPrincipalsInput): types.ListPrincipalsOutput, table
    listReplacePermissionAssociationsWork: function(Client, types.ListReplacePermissionAssociationsWorkInput): types.ListReplacePermissionAssociationsWorkOutput, table
    listResources: function(Client, types.ListResourcesInput): types.ListResourcesOutput, table
    listResourceSharePermissions: function(Client, types.ListResourceSharePermissionsInput): types.ListResourceSharePermissionsOutput, table
    listResourceTypes: function(Client, types.ListResourceTypesInput): types.ListResourceTypesOutput, table
    listSourceAssociations: function(Client, types.ListSourceAssociationsInput): types.ListSourceAssociationsOutput, table
    promotePermissionCreatedFromPolicy: function(Client, types.PromotePermissionCreatedFromPolicyInput): types.PromotePermissionCreatedFromPolicyOutput, table
    promoteResourceShareCreatedFromPolicy: function(Client, types.PromoteResourceShareCreatedFromPolicyInput): types.PromoteResourceShareCreatedFromPolicyOutput, table
    rejectResourceShareInvitation: function(Client, types.RejectResourceShareInvitationInput): types.RejectResourceShareInvitationOutput, table
    replacePermissionAssociations: function(Client, types.ReplacePermissionAssociationsInput): types.ReplacePermissionAssociationsOutput, table
    setDefaultPermissionVersion: function(Client, types.SetDefaultPermissionVersionInput): types.SetDefaultPermissionVersionOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateResourceShare: function(Client, types.UpdateResourceShareInput): types.UpdateResourceShareOutput, table
end

local record M
    new: function(table): Client
end

return M
