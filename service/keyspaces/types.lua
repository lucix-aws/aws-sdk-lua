local M = {}

M.ThroughputMode = {
    PAY_PER_REQUEST = "PAY_PER_REQUEST",
    PROVISIONED = "PROVISIONED",
}

M.CdcPropagateTags = {
    TABLE = "TABLE",
    NONE = "NONE",
}

M.CdcStatus = {
    ENABLED = "ENABLED",
    ENABLING = "ENABLING",
    DISABLED = "DISABLED",
    DISABLING = "DISABLING",
}

M.ViewType = {
    NEW_IMAGE = "NEW_IMAGE",
    OLD_IMAGE = "OLD_IMAGE",
    KEYS_ONLY = "KEYS_ONLY",
    NEW_AND_OLD_IMAGES = "NEW_AND_OLD_IMAGES",
}

M.ClientSideTimestampsStatus = {
    ENABLED = "ENABLED",
}

M.SortOrder = {
    ASC = "ASC",
    DESC = "DESC",
}

M.rs = {
    SINGLE_REGION = "SINGLE_REGION",
    MULTI_REGION = "MULTI_REGION",
}

M.EncryptionType = {
    CUSTOMER_MANAGED_KMS_KEY = "CUSTOMER_MANAGED_KMS_KEY",
    AWS_OWNED_KMS_KEY = "AWS_OWNED_KMS_KEY",
}

M.PointInTimeRecoveryStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.TimeToLiveStatus = {
    ENABLED = "ENABLED",
}

M.KeyspaceStatus = {
    ACTIVE = "ACTIVE",
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
}

M.TableStatus = {
    ACTIVE = "ACTIVE",
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    DELETED = "DELETED",
    RESTORING = "RESTORING",
    INACCESSIBLE_ENCRYPTION_CREDENTIALS = "INACCESSIBLE_ENCRYPTION_CREDENTIALS",
}

M.WarmThroughputStatus = {
    AVAILABLE = "AVAILABLE",
    UPDATING = "UPDATING",
}

M.TypeStatus = {
    ACTIVE = "ACTIVE",
    CREATING = "CREATING",
    DELETING = "DELETING",
    RESTORING = "RESTORING",
}

return M
