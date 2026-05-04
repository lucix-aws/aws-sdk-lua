local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AllowPublish = {
    ALLOW = "ALLOW",
    BLOCK = "BLOCK",
}

M.AllowUpstream = {
    ALLOW = "ALLOW",
    BLOCK = "BLOCK",
}

M.HashAlgorithm = {
    MD5 = "MD5",
    SHA1 = "SHA-1",
    SHA256 = "SHA-256",
    SHA512 = "SHA-512",
}

M.AssetSummary = {
    type = "structure",
    id = "AssetSummary",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        size = {
            type = "long",
        },
        hashes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PackageGroupAssociationType = {
    STRONG = "STRONG",
    WEAK = "WEAK",
}

M.PackageFormat = {
    NPM = "npm",
    PYPI = "pypi",
    MAVEN = "maven",
    NUGET = "nuget",
    GENERIC = "generic",
    RUBY = "ruby",
    SWIFT = "swift",
    CARGO = "cargo",
}

M.AssociatedPackage = {
    type = "structure",
    id = "AssociatedPackage",
    members = {
        format = {
            type = "string",
        },
        namespace = {
            type = "string",
        },
        package = {
            type = "string",
        },
        associationType = {
            type = "string",
        },
    },
}

M.AssociateExternalConnectionInput = {
    type = "structure",
    id = "AssociateExternalConnectionInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
        externalConnection = {
            type = "string",
            traits = {
                http_query = "external-connection",
                required = true,
            },
        },
    },
}

M.ExternalConnectionStatus = {
    AVAILABLE = "Available",
}

M.RepositoryExternalConnectionInfo = {
    type = "structure",
    id = "RepositoryExternalConnectionInfo",
    members = {
        externalConnectionName = {
            type = "string",
        },
        packageFormat = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.UpstreamRepositoryInfo = {
    type = "structure",
    id = "UpstreamRepositoryInfo",
    members = {
        repositoryName = {
            type = "string",
        },
    },
}

M.RepositoryDescription = {
    type = "structure",
    id = "RepositoryDescription",
    members = {
        name = {
            type = "string",
        },
        administratorAccount = {
            type = "string",
        },
        domainName = {
            type = "string",
        },
        domainOwner = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        description = {
            type = "string",
        },
        upstreams = {
            type = "list",
            member = M.UpstreamRepositoryInfo,
        },
        externalConnections = {
            type = "list",
            member = M.RepositoryExternalConnectionInfo,
        },
        createdTime = {
            type = "timestamp",
        },
    },
}

M.AssociateExternalConnectionOutput = {
    type = "structure",
    id = "AssociateExternalConnectionOutput",
    members = {
        repository = M.RepositoryDescription,
    },
}

M.ResourceType = {
    DOMAIN = "domain",
    REPOSITORY = "repository",
    PACKAGE = "package",
    PACKAGE_VERSION = "package-version",
    ASSET = "asset",
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionReason = {
    CANNOT_PARSE = "CANNOT_PARSE",
    ENCRYPTION_KEY_ERROR = "ENCRYPTION_KEY_ERROR",
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    UNKNOWN_OPERATION = "UNKNOWN_OPERATION",
    OTHER = "OTHER",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
        },
    },
}

M.CopyPackageVersionsInput = {
    type = "structure",
    id = "CopyPackageVersionsInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        sourceRepository = {
            type = "string",
            traits = {
                http_query = "source-repository",
                required = true,
            },
        },
        destinationRepository = {
            type = "string",
            traits = {
                http_query = "destination-repository",
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                http_query = "format",
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        package = {
            type = "string",
            traits = {
                http_query = "package",
                required = true,
            },
        },
        versions = {
            type = "list",
            member = { type = "string" },
        },
        versionRevisions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        allowOverwrite = {
            type = "boolean",
        },
        includeFromUpstream = {
            type = "boolean",
        },
    },
}

M.PackageVersionErrorCode = {
    ALREADY_EXISTS = "ALREADY_EXISTS",
    MISMATCHED_REVISION = "MISMATCHED_REVISION",
    MISMATCHED_STATUS = "MISMATCHED_STATUS",
    NOT_ALLOWED = "NOT_ALLOWED",
    NOT_FOUND = "NOT_FOUND",
    SKIPPED = "SKIPPED",
}

M.PackageVersionError = {
    type = "structure",
    id = "PackageVersionError",
    members = {
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.PackageVersionStatus = {
    PUBLISHED = "Published",
    UNFINISHED = "Unfinished",
    UNLISTED = "Unlisted",
    ARCHIVED = "Archived",
    DISPOSED = "Disposed",
    DELETED = "Deleted",
}

M.SuccessfulPackageVersionInfo = {
    type = "structure",
    id = "SuccessfulPackageVersionInfo",
    members = {
        revision = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.CopyPackageVersionsOutput = {
    type = "structure",
    id = "CopyPackageVersionsOutput",
    members = {
        successfulVersions = {
            type = "map",
            key = { type = "string" },
            value = M.SuccessfulPackageVersionInfo,
        },
        failedVersions = {
            type = "map",
            key = { type = "string" },
            value = M.PackageVersionError,
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDomainInput = {
    type = "structure",
    id = "CreateDomainInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        encryptionKey = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DomainStatus = {
    ACTIVE = "Active",
    DELETED = "Deleted",
}

M.DomainDescription = {
    type = "structure",
    id = "DomainDescription",
    members = {
        name = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdTime = {
            type = "timestamp",
        },
        encryptionKey = {
            type = "string",
        },
        repositoryCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        assetSizeBytes = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        s3BucketArn = {
            type = "string",
        },
    },
}

M.CreateDomainOutput = {
    type = "structure",
    id = "CreateDomainOutput",
    members = {
        domain = M.DomainDescription,
    },
}

M.CreatePackageGroupInput = {
    type = "structure",
    id = "CreatePackageGroupInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        packageGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contactInfo = {
            type = "string",
        },
        description = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PackageGroupOriginRestrictionType = {
    EXTERNAL_UPSTREAM = "EXTERNAL_UPSTREAM",
    INTERNAL_UPSTREAM = "INTERNAL_UPSTREAM",
    PUBLISH = "PUBLISH",
}

M.PackageGroupOriginRestrictionMode = {
    ALLOW = "ALLOW",
    ALLOW_SPECIFIC_REPOSITORIES = "ALLOW_SPECIFIC_REPOSITORIES",
    BLOCK = "BLOCK",
    INHERIT = "INHERIT",
}

M.PackageGroupReference = {
    type = "structure",
    id = "PackageGroupReference",
    members = {
        arn = {
            type = "string",
        },
        pattern = {
            type = "string",
        },
    },
}

M.PackageGroupOriginRestriction = {
    type = "structure",
    id = "PackageGroupOriginRestriction",
    members = {
        mode = {
            type = "string",
        },
        effectiveMode = {
            type = "string",
        },
        inheritedFrom = M.PackageGroupReference,
        repositoriesCount = {
            type = "long",
        },
    },
}

M.PackageGroupOriginConfiguration = {
    type = "structure",
    id = "PackageGroupOriginConfiguration",
    members = {
        restrictions = {
            type = "map",
            key = { type = "string" },
            value = M.PackageGroupOriginRestriction,
        },
    },
}

M.PackageGroupDescription = {
    type = "structure",
    id = "PackageGroupDescription",
    members = {
        arn = {
            type = "string",
        },
        pattern = {
            type = "string",
        },
        domainName = {
            type = "string",
        },
        domainOwner = {
            type = "string",
        },
        createdTime = {
            type = "timestamp",
        },
        contactInfo = {
            type = "string",
        },
        description = {
            type = "string",
        },
        originConfiguration = M.PackageGroupOriginConfiguration,
        parent = M.PackageGroupReference,
    },
}

M.CreatePackageGroupOutput = {
    type = "structure",
    id = "CreatePackageGroupOutput",
    members = {
        packageGroup = M.PackageGroupDescription,
    },
}

M.UpstreamRepository = {
    type = "structure",
    id = "UpstreamRepository",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateRepositoryInput = {
    type = "structure",
    id = "CreateRepositoryInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
        description = {
            type = "string",
        },
        upstreams = {
            type = "list",
            member = M.UpstreamRepository,
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateRepositoryOutput = {
    type = "structure",
    id = "CreateRepositoryOutput",
    members = {
        repository = M.RepositoryDescription,
    },
}

M.DeleteDomainInput = {
    type = "structure",
    id = "DeleteDomainInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
    },
}

M.DeleteDomainOutput = {
    type = "structure",
    id = "DeleteDomainOutput",
    members = {
        domain = M.DomainDescription,
    },
}

M.DeleteDomainPermissionsPolicyInput = {
    type = "structure",
    id = "DeleteDomainPermissionsPolicyInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        policyRevision = {
            type = "string",
            traits = {
                http_query = "policy-revision",
            },
        },
    },
}

M.ResourcePolicy = {
    type = "structure",
    id = "ResourcePolicy",
    members = {
        resourceArn = {
            type = "string",
        },
        revision = {
            type = "string",
        },
        document = {
            type = "string",
        },
    },
}

M.DeleteDomainPermissionsPolicyOutput = {
    type = "structure",
    id = "DeleteDomainPermissionsPolicyOutput",
    members = {
        policy = M.ResourcePolicy,
    },
}

M.DeletePackageInput = {
    type = "structure",
    id = "DeletePackageInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                http_query = "format",
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        package = {
            type = "string",
            traits = {
                http_query = "package",
                required = true,
            },
        },
    },
}

M.PackageOriginRestrictions = {
    type = "structure",
    id = "PackageOriginRestrictions",
    members = {
        publish = {
            type = "string",
            traits = {
                required = true,
            },
        },
        upstream = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PackageOriginConfiguration = {
    type = "structure",
    id = "PackageOriginConfiguration",
    members = {
        restrictions = M.PackageOriginRestrictions,
    },
}

M.PackageSummary = {
    type = "structure",
    id = "PackageSummary",
    members = {
        format = {
            type = "string",
        },
        namespace = {
            type = "string",
        },
        package = {
            type = "string",
        },
        originConfiguration = M.PackageOriginConfiguration,
    },
}

M.DeletePackageOutput = {
    type = "structure",
    id = "DeletePackageOutput",
    members = {
        deletedPackage = M.PackageSummary,
    },
}

M.DeletePackageGroupInput = {
    type = "structure",
    id = "DeletePackageGroupInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        packageGroup = {
            type = "string",
            traits = {
                http_query = "package-group",
                required = true,
            },
        },
    },
}

M.DeletePackageGroupOutput = {
    type = "structure",
    id = "DeletePackageGroupOutput",
    members = {
        packageGroup = M.PackageGroupDescription,
    },
}

M.DeletePackageVersionsInput = {
    type = "structure",
    id = "DeletePackageVersionsInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                http_query = "format",
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        package = {
            type = "string",
            traits = {
                http_query = "package",
                required = true,
            },
        },
        versions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        expectedStatus = {
            type = "string",
        },
    },
}

M.DeletePackageVersionsOutput = {
    type = "structure",
    id = "DeletePackageVersionsOutput",
    members = {
        successfulVersions = {
            type = "map",
            key = { type = "string" },
            value = M.SuccessfulPackageVersionInfo,
        },
        failedVersions = {
            type = "map",
            key = { type = "string" },
            value = M.PackageVersionError,
        },
    },
}

M.DeleteRepositoryInput = {
    type = "structure",
    id = "DeleteRepositoryInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
    },
}

M.DeleteRepositoryOutput = {
    type = "structure",
    id = "DeleteRepositoryOutput",
    members = {
        repository = M.RepositoryDescription,
    },
}

M.DeleteRepositoryPermissionsPolicyInput = {
    type = "structure",
    id = "DeleteRepositoryPermissionsPolicyInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
        policyRevision = {
            type = "string",
            traits = {
                http_query = "policy-revision",
            },
        },
    },
}

M.DeleteRepositoryPermissionsPolicyOutput = {
    type = "structure",
    id = "DeleteRepositoryPermissionsPolicyOutput",
    members = {
        policy = M.ResourcePolicy,
    },
}

M.DescribeDomainInput = {
    type = "structure",
    id = "DescribeDomainInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
    },
}

M.DescribeDomainOutput = {
    type = "structure",
    id = "DescribeDomainOutput",
    members = {
        domain = M.DomainDescription,
    },
}

M.DescribePackageInput = {
    type = "structure",
    id = "DescribePackageInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                http_query = "format",
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        package = {
            type = "string",
            traits = {
                http_query = "package",
                required = true,
            },
        },
    },
}

M.PackageDescription = {
    type = "structure",
    id = "PackageDescription",
    members = {
        format = {
            type = "string",
        },
        namespace = {
            type = "string",
        },
        name = {
            type = "string",
        },
        originConfiguration = M.PackageOriginConfiguration,
    },
}

M.DescribePackageOutput = {
    type = "structure",
    id = "DescribePackageOutput",
    members = {
        package = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PackageDescription }),
    },
}

M.DescribePackageGroupInput = {
    type = "structure",
    id = "DescribePackageGroupInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        packageGroup = {
            type = "string",
            traits = {
                http_query = "package-group",
                required = true,
            },
        },
    },
}

M.DescribePackageGroupOutput = {
    type = "structure",
    id = "DescribePackageGroupOutput",
    members = {
        packageGroup = M.PackageGroupDescription,
    },
}

M.DescribePackageVersionInput = {
    type = "structure",
    id = "DescribePackageVersionInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                http_query = "format",
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        package = {
            type = "string",
            traits = {
                http_query = "package",
                required = true,
            },
        },
        packageVersion = {
            type = "string",
            traits = {
                http_query = "version",
                required = true,
            },
        },
    },
}

M.LicenseInfo = {
    type = "structure",
    id = "LicenseInfo",
    members = {
        name = {
            type = "string",
        },
        url = {
            type = "string",
        },
    },
}

M.DomainEntryPoint = {
    type = "structure",
    id = "DomainEntryPoint",
    members = {
        repositoryName = {
            type = "string",
        },
        externalConnectionName = {
            type = "string",
        },
    },
}

M.PackageVersionOriginType = {
    INTERNAL = "INTERNAL",
    EXTERNAL = "EXTERNAL",
    UNKNOWN = "UNKNOWN",
}

M.PackageVersionOrigin = {
    type = "structure",
    id = "PackageVersionOrigin",
    members = {
        domainEntryPoint = M.DomainEntryPoint,
        originType = {
            type = "string",
        },
    },
}

M.PackageVersionDescription = {
    type = "structure",
    id = "PackageVersionDescription",
    members = {
        format = {
            type = "string",
        },
        namespace = {
            type = "string",
        },
        packageName = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        version = {
            type = "string",
        },
        summary = {
            type = "string",
        },
        homePage = {
            type = "string",
        },
        sourceCodeRepository = {
            type = "string",
        },
        publishedTime = {
            type = "timestamp",
        },
        licenses = {
            type = "list",
            member = M.LicenseInfo,
        },
        revision = {
            type = "string",
        },
        status = {
            type = "string",
        },
        origin = M.PackageVersionOrigin,
    },
}

M.DescribePackageVersionOutput = {
    type = "structure",
    id = "DescribePackageVersionOutput",
    members = {
        packageVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PackageVersionDescription }),
    },
}

M.DescribeRepositoryInput = {
    type = "structure",
    id = "DescribeRepositoryInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
    },
}

M.DescribeRepositoryOutput = {
    type = "structure",
    id = "DescribeRepositoryOutput",
    members = {
        repository = M.RepositoryDescription,
    },
}

M.DisassociateExternalConnectionInput = {
    type = "structure",
    id = "DisassociateExternalConnectionInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
        externalConnection = {
            type = "string",
            traits = {
                http_query = "external-connection",
                required = true,
            },
        },
    },
}

M.DisassociateExternalConnectionOutput = {
    type = "structure",
    id = "DisassociateExternalConnectionOutput",
    members = {
        repository = M.RepositoryDescription,
    },
}

M.DisposePackageVersionsInput = {
    type = "structure",
    id = "DisposePackageVersionsInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                http_query = "format",
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        package = {
            type = "string",
            traits = {
                http_query = "package",
                required = true,
            },
        },
        versions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        versionRevisions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        expectedStatus = {
            type = "string",
        },
    },
}

M.DisposePackageVersionsOutput = {
    type = "structure",
    id = "DisposePackageVersionsOutput",
    members = {
        successfulVersions = {
            type = "map",
            key = { type = "string" },
            value = M.SuccessfulPackageVersionInfo,
        },
        failedVersions = {
            type = "map",
            key = { type = "string" },
            value = M.PackageVersionError,
        },
    },
}

M.GetAssociatedPackageGroupInput = {
    type = "structure",
    id = "GetAssociatedPackageGroupInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        format = {
            type = "string",
            traits = {
                http_query = "format",
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        package = {
            type = "string",
            traits = {
                http_query = "package",
                required = true,
            },
        },
    },
}

M.GetAssociatedPackageGroupOutput = {
    type = "structure",
    id = "GetAssociatedPackageGroupOutput",
    members = {
        packageGroup = M.PackageGroupDescription,
        associationType = {
            type = "string",
        },
    },
}

M.GetAuthorizationTokenInput = {
    type = "structure",
    id = "GetAuthorizationTokenInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        durationSeconds = {
            type = "long",
            traits = {
                http_query = "duration",
            },
        },
    },
}

M.GetAuthorizationTokenOutput = {
    type = "structure",
    id = "GetAuthorizationTokenOutput",
    members = {
        authorizationToken = {
            type = "string",
        },
        expiration = {
            type = "timestamp",
        },
    },
}

M.GetDomainPermissionsPolicyInput = {
    type = "structure",
    id = "GetDomainPermissionsPolicyInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
    },
}

M.GetDomainPermissionsPolicyOutput = {
    type = "structure",
    id = "GetDomainPermissionsPolicyOutput",
    members = {
        policy = M.ResourcePolicy,
    },
}

M.GetPackageVersionAssetInput = {
    type = "structure",
    id = "GetPackageVersionAssetInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                http_query = "format",
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        package = {
            type = "string",
            traits = {
                http_query = "package",
                required = true,
            },
        },
        packageVersion = {
            type = "string",
            traits = {
                http_query = "version",
                required = true,
            },
        },
        asset = {
            type = "string",
            traits = {
                http_query = "asset",
                required = true,
            },
        },
        packageVersionRevision = {
            type = "string",
            traits = {
                http_query = "revision",
            },
        },
    },
}

M.GetPackageVersionAssetOutput = {
    type = "structure",
    id = "GetPackageVersionAssetOutput",
    members = {
        asset = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
        assetName = {
            type = "string",
            traits = {
                http_header = "X-AssetName",
            },
        },
        packageVersion = {
            type = "string",
            traits = {
                http_header = "X-PackageVersion",
            },
        },
        packageVersionRevision = {
            type = "string",
            traits = {
                http_header = "X-PackageVersionRevision",
            },
        },
    },
}

M.GetPackageVersionReadmeInput = {
    type = "structure",
    id = "GetPackageVersionReadmeInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                http_query = "format",
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        package = {
            type = "string",
            traits = {
                http_query = "package",
                required = true,
            },
        },
        packageVersion = {
            type = "string",
            traits = {
                http_query = "version",
                required = true,
            },
        },
    },
}

M.GetPackageVersionReadmeOutput = {
    type = "structure",
    id = "GetPackageVersionReadmeOutput",
    members = {
        format = {
            type = "string",
        },
        namespace = {
            type = "string",
        },
        package = {
            type = "string",
        },
        version = {
            type = "string",
        },
        versionRevision = {
            type = "string",
        },
        readme = {
            type = "string",
        },
    },
}

M.EndpointType = {
    DUALSTACK = "dualstack",
    IPV4 = "ipv4",
}

M.GetRepositoryEndpointInput = {
    type = "structure",
    id = "GetRepositoryEndpointInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                http_query = "format",
                required = true,
            },
        },
        endpointType = {
            type = "string",
            traits = {
                http_query = "endpointType",
            },
        },
    },
}

M.GetRepositoryEndpointOutput = {
    type = "structure",
    id = "GetRepositoryEndpointOutput",
    members = {
        repositoryEndpoint = {
            type = "string",
        },
    },
}

M.GetRepositoryPermissionsPolicyInput = {
    type = "structure",
    id = "GetRepositoryPermissionsPolicyInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
    },
}

M.GetRepositoryPermissionsPolicyOutput = {
    type = "structure",
    id = "GetRepositoryPermissionsPolicyOutput",
    members = {
        policy = M.ResourcePolicy,
    },
}

M.ListAllowedRepositoriesForGroupInput = {
    type = "structure",
    id = "ListAllowedRepositoriesForGroupInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        packageGroup = {
            type = "string",
            traits = {
                http_query = "package-group",
                required = true,
            },
        },
        originRestrictionType = {
            type = "string",
            traits = {
                http_query = "originRestrictionType",
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.ListAllowedRepositoriesForGroupOutput = {
    type = "structure",
    id = "ListAllowedRepositoriesForGroupOutput",
    members = {
        allowedRepositories = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAssociatedPackagesInput = {
    type = "structure",
    id = "ListAssociatedPackagesInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        packageGroup = {
            type = "string",
            traits = {
                http_query = "package-group",
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        preview = {
            type = "boolean",
            traits = {
                http_query = "preview",
            },
        },
    },
}

M.ListAssociatedPackagesOutput = {
    type = "structure",
    id = "ListAssociatedPackagesOutput",
    members = {
        packages = {
            type = "list",
            member = M.AssociatedPackage,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDomainsInput = {
    type = "structure",
    id = "ListDomainsInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DomainSummary = {
    type = "structure",
    id = "DomainSummary",
    members = {
        name = {
            type = "string",
        },
        owner = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdTime = {
            type = "timestamp",
        },
        encryptionKey = {
            type = "string",
        },
    },
}

M.ListDomainsOutput = {
    type = "structure",
    id = "ListDomainsOutput",
    members = {
        domains = {
            type = "list",
            member = M.DomainSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPackageGroupsInput = {
    type = "structure",
    id = "ListPackageGroupsInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        prefix = {
            type = "string",
            traits = {
                http_query = "prefix",
            },
        },
    },
}

M.PackageGroupSummary = {
    type = "structure",
    id = "PackageGroupSummary",
    members = {
        arn = {
            type = "string",
        },
        pattern = {
            type = "string",
        },
        domainName = {
            type = "string",
        },
        domainOwner = {
            type = "string",
        },
        createdTime = {
            type = "timestamp",
        },
        contactInfo = {
            type = "string",
        },
        description = {
            type = "string",
        },
        originConfiguration = M.PackageGroupOriginConfiguration,
        parent = M.PackageGroupReference,
    },
}

M.ListPackageGroupsOutput = {
    type = "structure",
    id = "ListPackageGroupsOutput",
    members = {
        packageGroups = {
            type = "list",
            member = M.PackageGroupSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPackagesInput = {
    type = "structure",
    id = "ListPackagesInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                http_query = "format",
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        packagePrefix = {
            type = "string",
            traits = {
                http_query = "package-prefix",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        publish = {
            type = "string",
            traits = {
                http_query = "publish",
            },
        },
        upstream = {
            type = "string",
            traits = {
                http_query = "upstream",
            },
        },
    },
}

M.ListPackagesOutput = {
    type = "structure",
    id = "ListPackagesOutput",
    members = {
        packages = {
            type = "list",
            member = M.PackageSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPackageVersionAssetsInput = {
    type = "structure",
    id = "ListPackageVersionAssetsInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                http_query = "format",
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        package = {
            type = "string",
            traits = {
                http_query = "package",
                required = true,
            },
        },
        packageVersion = {
            type = "string",
            traits = {
                http_query = "version",
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.ListPackageVersionAssetsOutput = {
    type = "structure",
    id = "ListPackageVersionAssetsOutput",
    members = {
        format = {
            type = "string",
        },
        namespace = {
            type = "string",
        },
        package = {
            type = "string",
        },
        version = {
            type = "string",
        },
        versionRevision = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        assets = {
            type = "list",
            member = M.AssetSummary,
        },
    },
}

M.ListPackageVersionDependenciesInput = {
    type = "structure",
    id = "ListPackageVersionDependenciesInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                http_query = "format",
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        package = {
            type = "string",
            traits = {
                http_query = "package",
                required = true,
            },
        },
        packageVersion = {
            type = "string",
            traits = {
                http_query = "version",
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.PackageDependency = {
    type = "structure",
    id = "PackageDependency",
    members = {
        namespace = {
            type = "string",
        },
        package = {
            type = "string",
        },
        dependencyType = {
            type = "string",
        },
        versionRequirement = {
            type = "string",
        },
    },
}

M.ListPackageVersionDependenciesOutput = {
    type = "structure",
    id = "ListPackageVersionDependenciesOutput",
    members = {
        format = {
            type = "string",
        },
        namespace = {
            type = "string",
        },
        package = {
            type = "string",
        },
        version = {
            type = "string",
        },
        versionRevision = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        dependencies = {
            type = "list",
            member = M.PackageDependency,
        },
    },
}

M.PackageVersionSortType = {
    PUBLISHED_TIME = "PUBLISHED_TIME",
}

M.ListPackageVersionsInput = {
    type = "structure",
    id = "ListPackageVersionsInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                http_query = "format",
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        package = {
            type = "string",
            traits = {
                http_query = "package",
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        sortBy = {
            type = "string",
            traits = {
                http_query = "sortBy",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        originType = {
            type = "string",
            traits = {
                http_query = "originType",
            },
        },
    },
}

M.PackageVersionSummary = {
    type = "structure",
    id = "PackageVersionSummary",
    members = {
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revision = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        origin = M.PackageVersionOrigin,
    },
}

M.ListPackageVersionsOutput = {
    type = "structure",
    id = "ListPackageVersionsOutput",
    members = {
        defaultDisplayVersion = {
            type = "string",
        },
        format = {
            type = "string",
        },
        namespace = {
            type = "string",
        },
        package = {
            type = "string",
        },
        versions = {
            type = "list",
            member = M.PackageVersionSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRepositoriesInput = {
    type = "structure",
    id = "ListRepositoriesInput",
    members = {
        repositoryPrefix = {
            type = "string",
            traits = {
                http_query = "repository-prefix",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.RepositorySummary = {
    type = "structure",
    id = "RepositorySummary",
    members = {
        name = {
            type = "string",
        },
        administratorAccount = {
            type = "string",
        },
        domainName = {
            type = "string",
        },
        domainOwner = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        description = {
            type = "string",
        },
        createdTime = {
            type = "timestamp",
        },
    },
}

M.ListRepositoriesOutput = {
    type = "structure",
    id = "ListRepositoriesOutput",
    members = {
        repositories = {
            type = "list",
            member = M.RepositorySummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRepositoriesInDomainInput = {
    type = "structure",
    id = "ListRepositoriesInDomainInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        administratorAccount = {
            type = "string",
            traits = {
                http_query = "administrator-account",
            },
        },
        repositoryPrefix = {
            type = "string",
            traits = {
                http_query = "repository-prefix",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.ListRepositoriesInDomainOutput = {
    type = "structure",
    id = "ListRepositoriesInDomainOutput",
    members = {
        repositories = {
            type = "list",
            member = M.RepositorySummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSubPackageGroupsInput = {
    type = "structure",
    id = "ListSubPackageGroupsInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        packageGroup = {
            type = "string",
            traits = {
                http_query = "package-group",
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.ListSubPackageGroupsOutput = {
    type = "structure",
    id = "ListSubPackageGroupsOutput",
    members = {
        packageGroups = {
            type = "list",
            member = M.PackageGroupSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PublishPackageVersionInput = {
    type = "structure",
    id = "PublishPackageVersionInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                http_query = "format",
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        package = {
            type = "string",
            traits = {
                http_query = "package",
                required = true,
            },
        },
        packageVersion = {
            type = "string",
            traits = {
                http_query = "version",
                required = true,
            },
        },
        assetContent = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
        assetName = {
            type = "string",
            traits = {
                http_query = "asset",
                required = true,
            },
        },
        assetSHA256 = {
            type = "string",
            traits = {
                http_header = "x-amz-content-sha256",
                required = true,
            },
        },
        unfinished = {
            type = "boolean",
            traits = {
                http_query = "unfinished",
            },
        },
    },
}

M.PublishPackageVersionOutput = {
    type = "structure",
    id = "PublishPackageVersionOutput",
    members = {
        format = {
            type = "string",
        },
        namespace = {
            type = "string",
        },
        package = {
            type = "string",
        },
        version = {
            type = "string",
        },
        versionRevision = {
            type = "string",
        },
        status = {
            type = "string",
        },
        asset = M.AssetSummary,
    },
}

M.PutDomainPermissionsPolicyInput = {
    type = "structure",
    id = "PutDomainPermissionsPolicyInput",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainOwner = {
            type = "string",
        },
        policyRevision = {
            type = "string",
        },
        policyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutDomainPermissionsPolicyOutput = {
    type = "structure",
    id = "PutDomainPermissionsPolicyOutput",
    members = {
        policy = M.ResourcePolicy,
    },
}

M.PutPackageOriginConfigurationInput = {
    type = "structure",
    id = "PutPackageOriginConfigurationInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                http_query = "format",
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        package = {
            type = "string",
            traits = {
                http_query = "package",
                required = true,
            },
        },
        restrictions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PackageOriginRestrictions }),
    },
}

M.PutPackageOriginConfigurationOutput = {
    type = "structure",
    id = "PutPackageOriginConfigurationOutput",
    members = {
        originConfiguration = M.PackageOriginConfiguration,
    },
}

M.PutRepositoryPermissionsPolicyInput = {
    type = "structure",
    id = "PutRepositoryPermissionsPolicyInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
        policyRevision = {
            type = "string",
        },
        policyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutRepositoryPermissionsPolicyOutput = {
    type = "structure",
    id = "PutRepositoryPermissionsPolicyOutput",
    members = {
        policy = M.ResourcePolicy,
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdatePackageGroupInput = {
    type = "structure",
    id = "UpdatePackageGroupInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        packageGroup = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contactInfo = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.UpdatePackageGroupOutput = {
    type = "structure",
    id = "UpdatePackageGroupOutput",
    members = {
        packageGroup = M.PackageGroupDescription,
    },
}

M.PackageGroupAllowedRepository = {
    type = "structure",
    id = "PackageGroupAllowedRepository",
    members = {
        repositoryName = {
            type = "string",
        },
        originRestrictionType = {
            type = "string",
        },
    },
}

M.UpdatePackageGroupOriginConfigurationInput = {
    type = "structure",
    id = "UpdatePackageGroupOriginConfigurationInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        packageGroup = {
            type = "string",
            traits = {
                http_query = "package-group",
                required = true,
            },
        },
        restrictions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        addAllowedRepositories = {
            type = "list",
            member = M.PackageGroupAllowedRepository,
        },
        removeAllowedRepositories = {
            type = "list",
            member = M.PackageGroupAllowedRepository,
        },
    },
}

M.PackageGroupAllowedRepositoryUpdateType = {
    ADDED = "ADDED",
    REMOVED = "REMOVED",
}

M.UpdatePackageGroupOriginConfigurationOutput = {
    type = "structure",
    id = "UpdatePackageGroupOriginConfigurationOutput",
    members = {
        packageGroup = M.PackageGroupDescription,
        allowedRepositoryUpdates = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
        },
    },
}

M.UpdatePackageVersionsStatusInput = {
    type = "structure",
    id = "UpdatePackageVersionsStatusInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
        format = {
            type = "string",
            traits = {
                http_query = "format",
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                http_query = "namespace",
            },
        },
        package = {
            type = "string",
            traits = {
                http_query = "package",
                required = true,
            },
        },
        versions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        versionRevisions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        expectedStatus = {
            type = "string",
        },
        targetStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePackageVersionsStatusOutput = {
    type = "structure",
    id = "UpdatePackageVersionsStatusOutput",
    members = {
        successfulVersions = {
            type = "map",
            key = { type = "string" },
            value = M.SuccessfulPackageVersionInfo,
        },
        failedVersions = {
            type = "map",
            key = { type = "string" },
            value = M.PackageVersionError,
        },
    },
}

M.UpdateRepositoryInput = {
    type = "structure",
    id = "UpdateRepositoryInput",
    members = {
        domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        domainOwner = {
            type = "string",
            traits = {
                http_query = "domain-owner",
            },
        },
        repository = {
            type = "string",
            traits = {
                http_query = "repository",
                required = true,
            },
        },
        description = {
            type = "string",
        },
        upstreams = {
            type = "list",
            member = M.UpstreamRepository,
        },
    },
}

M.UpdateRepositoryOutput = {
    type = "structure",
    id = "UpdateRepositoryOutput",
    members = {
        repository = M.RepositoryDescription,
    },
}

return M
