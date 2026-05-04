local types = require("cognitoidentity.types")

local record Client
    createIdentityPool: function(Client, types.CreateIdentityPoolInput): types.CreateIdentityPoolOutput, table
    deleteIdentities: function(Client, types.DeleteIdentitiesInput): types.DeleteIdentitiesOutput, table
    deleteIdentityPool: function(Client, types.DeleteIdentityPoolInput): types.DeleteIdentityPoolOutput, table
    describeIdentity: function(Client, types.DescribeIdentityInput): types.DescribeIdentityOutput, table
    describeIdentityPool: function(Client, types.DescribeIdentityPoolInput): types.DescribeIdentityPoolOutput, table
    getCredentialsForIdentity: function(Client, types.GetCredentialsForIdentityInput): types.GetCredentialsForIdentityOutput, table
    getId: function(Client, types.GetIdInput): types.GetIdOutput, table
    getIdentityPoolRoles: function(Client, types.GetIdentityPoolRolesInput): types.GetIdentityPoolRolesOutput, table
    getOpenIdToken: function(Client, types.GetOpenIdTokenInput): types.GetOpenIdTokenOutput, table
    getOpenIdTokenForDeveloperIdentity: function(Client, types.GetOpenIdTokenForDeveloperIdentityInput): types.GetOpenIdTokenForDeveloperIdentityOutput, table
    getPrincipalTagAttributeMap: function(Client, types.GetPrincipalTagAttributeMapInput): types.GetPrincipalTagAttributeMapOutput, table
    listIdentities: function(Client, types.ListIdentitiesInput): types.ListIdentitiesOutput, table
    listIdentityPools: function(Client, types.ListIdentityPoolsInput): types.ListIdentityPoolsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    lookupDeveloperIdentity: function(Client, types.LookupDeveloperIdentityInput): types.LookupDeveloperIdentityOutput, table
    mergeDeveloperIdentities: function(Client, types.MergeDeveloperIdentitiesInput): types.MergeDeveloperIdentitiesOutput, table
    setIdentityPoolRoles: function(Client, types.SetIdentityPoolRolesInput): types.SetIdentityPoolRolesOutput, table
    setPrincipalTagAttributeMap: function(Client, types.SetPrincipalTagAttributeMapInput): types.SetPrincipalTagAttributeMapOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    unlinkDeveloperIdentity: function(Client, types.UnlinkDeveloperIdentityInput): types.UnlinkDeveloperIdentityOutput, table
    unlinkIdentity: function(Client, types.UnlinkIdentityInput): types.UnlinkIdentityOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateIdentityPool: function(Client, types.UpdateIdentityPoolInput): types.UpdateIdentityPoolOutput, table
end

local record M
    new: function(table): Client
end

return M
