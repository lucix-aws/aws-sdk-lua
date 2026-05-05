local M = {}

M.AccessControlRuleEffect = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.AccessEffect = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.AvailabilityProviderType = {
    EWS = "EWS",
    LAMBDA = "LAMBDA",
}

M.ImpersonationRoleType = {
    FULL_ACCESS = "FULL_ACCESS",
    READ_ONLY = "READ_ONLY",
}

M.MobileDeviceAccessRuleEffect = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.ResourceType = {
    ROOM = "ROOM",
    EQUIPMENT = "EQUIPMENT",
}

M.UserRole = {
    USER = "USER",
    RESOURCE = "RESOURCE",
    SYSTEM_USER = "SYSTEM_USER",
    REMOTE_USER = "REMOTE_USER",
}

M.MemberType = {
    GROUP = "GROUP",
    USER = "USER",
}

M.EntityType = {
    GROUP = "GROUP",
    USER = "USER",
    RESOURCE = "RESOURCE",
}

M.EntityState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    DELETED = "DELETED",
}

M.IdentityProviderAuthenticationMode = {
    IDENTITY_PROVIDER_ONLY = "IDENTITY_PROVIDER_ONLY",
    IDENTITY_PROVIDER_AND_DIRECTORY = "IDENTITY_PROVIDER_AND_DIRECTORY",
}

M.PersonalAccessTokenConfigurationStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.MailboxExportJobState = {
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    CANCELLED = "CANCELLED",
}

M.DnsRecordVerificationStatus = {
    PENDING = "PENDING",
    VERIFIED = "VERIFIED",
    FAILED = "FAILED",
}

M.RetentionAction = {
    NONE = "NONE",
    DELETE = "DELETE",
    PERMANENTLY_DELETE = "PERMANENTLY_DELETE",
}

M.FolderName = {
    INBOX = "INBOX",
    DELETED_ITEMS = "DELETED_ITEMS",
    SENT_ITEMS = "SENT_ITEMS",
    DRAFTS = "DRAFTS",
    JUNK_EMAIL = "JUNK_EMAIL",
}

M.PermissionType = {
    FULL_ACCESS = "FULL_ACCESS",
    SEND_AS = "SEND_AS",
    SEND_ON_BEHALF = "SEND_ON_BEHALF",
}

return M
