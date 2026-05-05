local M = {}

M.AmbiguousRoleResolutionType = {
    AUTHENTICATED_ROLE = "AuthenticatedRole",
    DENY = "Deny",
}

M.ErrorCode = {
    ACCESS_DENIED = "AccessDenied",
    INTERNAL_SERVER_ERROR = "InternalServerError",
}

M.MappingRuleMatchType = {
    EQUALS = "Equals",
    CONTAINS = "Contains",
    STARTS_WITH = "StartsWith",
    NOT_EQUAL = "NotEqual",
}

M.RoleMappingType = {
    TOKEN = "Token",
    RULES = "Rules",
}

return M
