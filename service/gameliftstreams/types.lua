local M = {}

M.StreamGroupLocationStatus = {
    ACTIVATING = "ACTIVATING",
    ACTIVE = "ACTIVE",
    ERROR = "ERROR",
    REMOVING = "REMOVING",
}

M.ApplicationStatus = {
    INITIALIZED = "INITIALIZED",
    PROCESSING = "PROCESSING",
    READY = "READY",
    DELETING = "DELETING",
    ERROR = "ERROR",
}

M.ApplicationStatusReason = {
    INTERNAL_ERROR = "internalError",
    ACCESS_DENIED = "accessDenied",
    SOURCE_MODIFIED = "sourceModified",
}

M.RuntimeEnvironmentType = {
    PROTON = "PROTON",
    WINDOWS = "WINDOWS",
    UBUNTU = "UBUNTU",
}

M.ReplicationStatusType = {
    REPLICATING = "REPLICATING",
    COMPLETED = "COMPLETED",
}

M.StreamClass = {
    gen4n_high = "gen4n_high",
    gen4n_ultra = "gen4n_ultra",
    gen4n_win2022 = "gen4n_win2022",
    gen5n_high = "gen5n_high",
    gen5n_ultra = "gen5n_ultra",
    gen5n_win2022 = "gen5n_win2022",
    gen6n_small = "gen6n_small",
    gen6n_medium = "gen6n_medium",
    gen6n_high = "gen6n_high",
    gen6n_ultra = "gen6n_ultra",
    gen6n_ultra_win2022 = "gen6n_ultra_win2022",
    gen6n_pro = "gen6n_pro",
    gen6n_pro_win2022 = "gen6n_pro_win2022",
    gen6n_small_win2022 = "gen6n_small_win2022",
    gen6n_medium_win2022 = "gen6n_medium_win2022",
    gen6e_pro = "gen6e_pro",
    gen6e_pro_win2022 = "gen6e_pro_win2022",
}

M.StreamGroupStatus = {
    ACTIVATING = "ACTIVATING",
    UPDATING_LOCATIONS = "UPDATING_LOCATIONS",
    ACTIVE = "ACTIVE",
    ACTIVE_WITH_ERRORS = "ACTIVE_WITH_ERRORS",
    ERROR = "ERROR",
    DELETING = "DELETING",
    EXPIRED = "EXPIRED",
}

M.StreamGroupStatusReason = {
    INTERNAL_ERROR = "internalError",
    NO_AVAILABLE_INSTANCES = "noAvailableInstances",
}

M.ExportFilesStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    PENDING = "PENDING",
}

M.Protocol = {
    WEBRTC = "WebRTC",
}

M.StreamSessionStatus = {
    ACTIVATING = "ACTIVATING",
    ACTIVE = "ACTIVE",
    CONNECTED = "CONNECTED",
    PENDING_CLIENT_RECONNECTION = "PENDING_CLIENT_RECONNECTION",
    RECONNECTING = "RECONNECTING",
    TERMINATING = "TERMINATING",
    TERMINATED = "TERMINATED",
    ERROR = "ERROR",
}

M.StreamSessionStatusReason = {
    INTERNAL_ERROR = "internalError",
    INVALID_SIGNAL_REQUEST = "invalidSignalRequest",
    PLACEMENT_TIMEOUT = "placementTimeout",
    APP_LOG_S3_DESTINATION_ERROR = "applicationLogS3DestinationError",
    APPLICATION_EXIT = "applicationExit",
    CONNECTION_TIMEOUT = "connectionTimeout",
    RECONNECTION_TIMEOUT = "reconnectionTimeout",
    MAX_SESSION_LENGTH_TIMEOUT = "maxSessionLengthTimeout",
    IDLE_TIMEOUT = "idleTimeout",
    API_TERMINATED = "apiTerminated",
}

return M
