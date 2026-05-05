local M = {}

M.LayerFailureCode = {
    InvalidLayerDigest = "InvalidLayerDigest",
    MissingLayerDigest = "MissingLayerDigest",
}

M.LayerAvailability = {
    AVAILABLE = "AVAILABLE",
    UNAVAILABLE = "UNAVAILABLE",
}

M.ImageFailureCode = {
    InvalidImageDigest = "InvalidImageDigest",
    InvalidImageTag = "InvalidImageTag",
    ImageTagDoesNotMatchDigest = "ImageTagDoesNotMatchDigest",
    ImageNotFound = "ImageNotFound",
    MissingDigestAndTag = "MissingDigestAndTag",
    ImageReferencedByManifestList = "ImageReferencedByManifestList",
    KmsError = "KmsError",
}

M.RegistryAliasStatus = {
    ACTIVE = "ACTIVE",
    PENDING = "PENDING",
    REJECTED = "REJECTED",
}

return M
