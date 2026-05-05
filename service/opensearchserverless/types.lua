local M = {}

M.AccessPolicyType = {
    data = "data",
}

M.StandbyReplicas = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CollectionStatus = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    ACTIVE = "ACTIVE",
    FAILED = "FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.CollectionType = {
    SEARCH = "SEARCH",
    TIMESERIES = "TIMESERIES",
    VECTORSEARCH = "VECTORSEARCH",
}

M.ServerlessVectorAccelerationStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    ALLOWED = "ALLOWED",
}

M.LifecyclePolicyType = {
    retention = "retention",
}

M.ResourceType = {
    index = "index",
}

M.VpcEndpointStatus = {
    PENDING = "PENDING",
    DELETING = "DELETING",
    ACTIVE = "ACTIVE",
    FAILED = "FAILED",
}

M.IamIdentityCenterGroupAttribute = {
    GroupId = "GroupId",
    GroupName = "GroupName",
}

M.IamIdentityCenterUserAttribute = {
    UserId = "UserId",
    UserName = "UserName",
    Email = "Email",
}

M.SecurityConfigType = {
    saml = "saml",
    iamidentitycenter = "iamidentitycenter",
    iamfederation = "iamfederation",
}

M.SecurityPolicyType = {
    encryption = "encryption",
    network = "network",
}

return M
