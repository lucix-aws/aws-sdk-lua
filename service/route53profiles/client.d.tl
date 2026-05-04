local types = require("route53profiles.types")

local record Client
    associateProfile: function(Client, types.AssociateProfileInput): types.AssociateProfileOutput, table
    associateResourceToProfile: function(Client, types.AssociateResourceToProfileInput): types.AssociateResourceToProfileOutput, table
    createProfile: function(Client, types.CreateProfileInput): types.CreateProfileOutput, table
    deleteProfile: function(Client, types.DeleteProfileInput): types.DeleteProfileOutput, table
    disassociateProfile: function(Client, types.DisassociateProfileInput): types.DisassociateProfileOutput, table
    disassociateResourceFromProfile: function(Client, types.DisassociateResourceFromProfileInput): types.DisassociateResourceFromProfileOutput, table
    getProfile: function(Client, types.GetProfileInput): types.GetProfileOutput, table
    getProfileAssociation: function(Client, types.GetProfileAssociationInput): types.GetProfileAssociationOutput, table
    getProfileResourceAssociation: function(Client, types.GetProfileResourceAssociationInput): types.GetProfileResourceAssociationOutput, table
    listProfileAssociations: function(Client, types.ListProfileAssociationsInput): types.ListProfileAssociationsOutput, table
    listProfileResourceAssociations: function(Client, types.ListProfileResourceAssociationsInput): types.ListProfileResourceAssociationsOutput, table
    listProfiles: function(Client, types.ListProfilesInput): types.ListProfilesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateProfileResourceAssociation: function(Client, types.UpdateProfileResourceAssociationInput): types.UpdateProfileResourceAssociationOutput, table
end

local record M
    new: function(table): Client
end

return M
