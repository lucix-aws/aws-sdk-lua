local M = {}

M.ShareMethod = {
    ORGANIZATIONS = "ORGANIZATIONS",
    HANDSHAKE = "HANDSHAKE",
}

M.ShareStatus = {
    SHARED = "Shared",
    PENDING_ACCEPTANCE = "PendingAcceptance",
    REJECTED = "Rejected",
    REJECTING = "Rejecting",
    REJECT_FAILED = "RejectFailed",
    SHARING = "Sharing",
    SHARE_FAILED = "ShareFailed",
    DELETED = "Deleted",
    DELETING = "Deleting",
}

M.CaEnrollmentPolicyStatus = {
    IN_PROGRESS = "InProgress",
    SUCCESS = "Success",
    FAILED = "Failed",
    DISABLING = "Disabling",
    DISABLED = "Disabled",
    IMPAIRED = "Impaired",
}

M.CertificateState = {
    REGISTERING = "Registering",
    REGISTERED = "Registered",
    REGISTER_FAILED = "RegisterFailed",
    DEREGISTERING = "Deregistering",
    DEREGISTERED = "Deregistered",
    DEREGISTER_FAILED = "DeregisterFailed",
}

M.CertificateType = {
    CLIENT_CERT_AUTH = "ClientCertAuth",
    CLIENT_LDAPS = "ClientLDAPS",
}

M.ClientAuthenticationStatus = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
}

M.ClientAuthenticationType = {
    SMART_CARD = "SmartCard",
    SMART_CARD_OR_PASSWORD = "SmartCardOrPassword",
}

M.ReplicationScope = {
    Domain = "Domain",
}

M.NetworkType = {
    DUAL_STACK = "Dual-stack",
    IPV4_ONLY = "IPv4",
    IPV6_ONLY = "IPv6",
}

M.DirectorySize = {
    SMALL = "Small",
    LARGE = "Large",
}

M.DirectoryEdition = {
    ENTERPRISE = "Enterprise",
    STANDARD = "Standard",
    HYBRID = "Hybrid",
}

M.SelectiveAuth = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
}

M.TrustDirection = {
    ONE_WAY_OUTGOING = "One-Way: Outgoing",
    ONE_WAY_INCOMING = "One-Way: Incoming",
    TWO_WAY = "Two-Way",
}

M.TrustType = {
    FOREST = "Forest",
    EXTERNAL = "External",
}

M.DataAccessStatus = {
    DISABLED = "Disabled",
    DISABLING = "Disabling",
    ENABLED = "Enabled",
    ENABLING = "Enabling",
    FAILED = "Failed",
}

M.OSVersion = {
    VERSION_2012 = "SERVER_2012",
    VERSION_2019 = "SERVER_2019",
}

M.RadiusAuthenticationProtocol = {
    PAP = "PAP",
    CHAP = "CHAP",
    MSCHAPV1 = "MS-CHAPv1",
    MSCHAPV2 = "MS-CHAPv2",
}

M.RadiusStatus = {
    CREATING = "Creating",
    COMPLETED = "Completed",
    FAILED = "Failed",
}

M.DirectoryStage = {
    REQUESTED = "Requested",
    CREATING = "Creating",
    CREATED = "Created",
    ACTIVE = "Active",
    INOPERABLE = "Inoperable",
    IMPAIRED = "Impaired",
    RESTORING = "Restoring",
    RESTOREFAILED = "RestoreFailed",
    DELETING = "Deleting",
    DELETED = "Deleted",
    FAILED = "Failed",
    UPDATING = "Updating",
}

M.DirectoryType = {
    SIMPLE_AD = "SimpleAD",
    AD_CONNECTOR = "ADConnector",
    MICROSOFT_AD = "MicrosoftAD",
    SHARED_MICROSOFT_AD = "SharedMicrosoftAD",
}

M.DomainControllerStatus = {
    CREATING = "Creating",
    ACTIVE = "Active",
    IMPAIRED = "Impaired",
    RESTORING = "Restoring",
    DELETING = "Deleting",
    DELETED = "Deleted",
    FAILED = "Failed",
    UPDATING = "Updating",
}

M.TopicStatus = {
    REGISTERED = "Registered",
    TOPIC_NOT_FOUND = "Topic not found",
    FAILED = "Failed",
    DELETED = "Deleted",
}

M.HybridUpdateType = {
    SELF_MANAGED_INSTANCES = "SelfManagedInstances",
    HYBRID_ADMINISTRATOR_ACCOUNT = "HybridAdministratorAccount",
}

M.UpdateStatus = {
    UPDATED = "Updated",
    UPDATING = "Updating",
    UPDATE_FAILED = "UpdateFailed",
}

M.LDAPSType = {
    CLIENT = "Client",
}

M.LDAPSStatus = {
    ENABLING = "Enabling",
    ENABLED = "Enabled",
    ENABLE_FAILED = "EnableFailed",
    DISABLED = "Disabled",
}

M.RegionType = {
    PRIMARY = "Primary",
    ADDITIONAL = "Additional",
}

M.DirectoryConfigurationStatus = {
    REQUESTED = "Requested",
    UPDATING = "Updating",
    UPDATED = "Updated",
    FAILED = "Failed",
    DEFAULT = "Default",
}

M.SnapshotStatus = {
    CREATING = "Creating",
    COMPLETED = "Completed",
    FAILED = "Failed",
}

M.SnapshotType = {
    AUTO = "Auto",
    MANUAL = "Manual",
}

M.TrustState = {
    CREATING = "Creating",
    CREATED = "Created",
    VERIFYING = "Verifying",
    VERIFY_FAILED = "VerifyFailed",
    VERIFIED = "Verified",
    UPDATING = "Updating",
    UPDATE_FAILED = "UpdateFailed",
    UPDATED = "Updated",
    DELETING = "Deleting",
    DELETED = "Deleted",
    FAILED = "Failed",
}

M.UpdateType = {
    OS = "OS",
    NETWORK = "NETWORK",
    SIZE = "SIZE",
}

M.IpRouteStatusMsg = {
    ADDING = "Adding",
    ADDED = "Added",
    REMOVING = "Removing",
    REMOVED = "Removed",
    ADD_FAILED = "AddFailed",
    REMOVE_FAILED = "RemoveFailed",
}

M.SchemaExtensionStatus = {
    INITIALIZING = "Initializing",
    CREATING_SNAPSHOT = "CreatingSnapshot",
    UPDATING_SCHEMA = "UpdatingSchema",
    REPLICATING = "Replicating",
    CANCEL_IN_PROGRESS = "CancelInProgress",
    ROLLBACK_IN_PROGRESS = "RollbackInProgress",
    CANCELLED = "Cancelled",
    FAILED = "Failed",
    COMPLETED = "Completed",
}

M.TargetType = {
    ACCOUNT = "ACCOUNT",
}

return M
