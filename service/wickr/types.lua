local M = {}

M.AccessLevel = {
    STANDARD = "STANDARD",
    PREMIUM = "PREMIUM",
}

M.BotStatus = {
    PENDING = 1,
    ACTIVE = 2,
}

M.DataRetentionActionType = {
    ENABLE = "ENABLE",
    DISABLE = "DISABLE",
    PUBKEY_MSG_ACK = "PUBKEY_MSG_ACK",
}

M.SortDirection = {
    ASC = "ASC",
    DESC = "DESC",
}

M.UserStatus = {
    PENDING = 1,
    ACTIVE = 2,
}

M.Status = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
    FORCE_ENABLED = "FORCE_ENABLED",
}

return M
