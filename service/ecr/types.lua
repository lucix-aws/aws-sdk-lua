local M = {}

M.LayerFailureCode = {
    InvalidLayerDigest = "InvalidLayerDigest",
    MissingLayerDigest = "MissingLayerDigest",
}

M.LayerAvailability = {
    AVAILABLE = "AVAILABLE",
    UNAVAILABLE = "UNAVAILABLE",
    ARCHIVED = "ARCHIVED",
}

M.ImageFailureCode = {
    InvalidImageDigest = "InvalidImageDigest",
    InvalidImageTag = "InvalidImageTag",
    ImageTagDoesNotMatchDigest = "ImageTagDoesNotMatchDigest",
    ImageNotFound = "ImageNotFound",
    MissingDigestAndTag = "MissingDigestAndTag",
    ImageReferencedByManifestList = "ImageReferencedByManifestList",
    KmsError = "KmsError",
    UpstreamAccessDenied = "UpstreamAccessDenied",
    UpstreamTooManyRequests = "UpstreamTooManyRequests",
    UpstreamUnavailable = "UpstreamUnavailable",
    ImageInaccessible = "ImageInaccessible",
}

M.ScanningConfigurationFailureCode = {
    REPOSITORY_NOT_FOUND = "REPOSITORY_NOT_FOUND",
}

M.ScanningRepositoryFilterType = {
    WILDCARD = "WILDCARD",
}

M.ScanFrequency = {
    SCAN_ON_PUSH = "SCAN_ON_PUSH",
    CONTINUOUS_SCAN = "CONTINUOUS_SCAN",
    MANUAL = "MANUAL",
}

M.UpstreamRegistry = {
    Ecr = "ecr",
    EcrPublic = "ecr-public",
    Quay = "quay",
    K8s = "k8s",
    DockerHub = "docker-hub",
    GitHubContainerRegistry = "github-container-registry",
    AzureContainerRegistry = "azure-container-registry",
    GitLabContainerRegistry = "gitlab-container-registry",
    Chainguard = "chainguard",
}

M.EncryptionType = {
    AES256 = "AES256",
    KMS = "KMS",
    KMS_DSSE = "KMS_DSSE",
}

M.ImageTagMutability = {
    MUTABLE = "MUTABLE",
    IMMUTABLE = "IMMUTABLE",
    IMMUTABLE_WITH_EXCLUSION = "IMMUTABLE_WITH_EXCLUSION",
    MUTABLE_WITH_EXCLUSION = "MUTABLE_WITH_EXCLUSION",
}

M.ImageTagMutabilityExclusionFilterType = {
    WILDCARD = "WILDCARD",
}

M.RCTAppliedFor = {
    REPLICATION = "REPLICATION",
    PULL_THROUGH_CACHE = "PULL_THROUGH_CACHE",
    CREATE_ON_PUSH = "CREATE_ON_PUSH",
}

M.SigningRepositoryFilterType = {
    WILDCARD_MATCH = "WILDCARD_MATCH",
}

M.ReplicationStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETE = "COMPLETE",
    FAILED = "FAILED",
}

M.ImageStatusFilter = {
    ACTIVE = "ACTIVE",
    ARCHIVED = "ARCHIVED",
    ACTIVATING = "ACTIVATING",
    ANY = "ANY",
}

M.TagStatus = {
    TAGGED = "TAGGED",
    UNTAGGED = "UNTAGGED",
    ANY = "ANY",
}

M.FindingSeverity = {
    INFORMATIONAL = "INFORMATIONAL",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
    CRITICAL = "CRITICAL",
    UNDEFINED = "UNDEFINED",
}

M.ScanStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETE = "COMPLETE",
    FAILED = "FAILED",
    UNSUPPORTED_IMAGE = "UNSUPPORTED_IMAGE",
    ACTIVE = "ACTIVE",
    PENDING = "PENDING",
    SCAN_ELIGIBILITY_EXPIRED = "SCAN_ELIGIBILITY_EXPIRED",
    FINDINGS_UNAVAILABLE = "FINDINGS_UNAVAILABLE",
    LIMIT_EXCEEDED = "LIMIT_EXCEEDED",
    IMAGE_ARCHIVED = "IMAGE_ARCHIVED",
}

M.ImageStatus = {
    ACTIVE = "ACTIVE",
    ARCHIVED = "ARCHIVED",
    ACTIVATING = "ACTIVATING",
}

M.SigningStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETE = "COMPLETE",
    FAILED = "FAILED",
}

M.RepositoryFilterType = {
    PREFIX_MATCH = "PREFIX_MATCH",
}

M.LifecyclePolicyTargetStorageClass = {
    ARCHIVE = "ARCHIVE",
}

M.ImageActionType = {
    EXPIRE = "EXPIRE",
    TRANSITION = "TRANSITION",
}

M.LifecyclePolicyStorageClass = {
    ARCHIVE = "ARCHIVE",
    STANDARD = "STANDARD",
}

M.LifecyclePolicyPreviewStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETE = "COMPLETE",
    EXPIRED = "EXPIRED",
    FAILED = "FAILED",
}

M.ScanType = {
    BASIC = "BASIC",
    ENHANCED = "ENHANCED",
}

M.ArtifactStatusFilter = {
    ACTIVE = "ACTIVE",
    ARCHIVED = "ARCHIVED",
    ACTIVATING = "ACTIVATING",
    ANY = "ANY",
}

M.ArtifactStatus = {
    ACTIVE = "ACTIVE",
    ARCHIVED = "ARCHIVED",
    ACTIVATING = "ACTIVATING",
}

M.TargetStorageClass = {
    STANDARD = "STANDARD",
    ARCHIVE = "ARCHIVE",
}

return M
