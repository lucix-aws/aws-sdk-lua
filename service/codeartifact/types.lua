local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        repositoryName = {
            type = "string",
        },
    },
}

M.RepositoryDescription = {
    type = "structure",
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
    members = {
        domain = M.DomainDescription,
    },
}

M.CreatePackageGroupInput = {
    type = "structure",
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
    members = {
        packageGroup = M.PackageGroupDescription,
    },
}

M.UpstreamRepository = {
    type = "structure",
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
    members = {
        repository = M.RepositoryDescription,
    },
}

M.DeleteDomainInput = {
    type = "structure",
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
    members = {
        domain = M.DomainDescription,
    },
}

M.DeleteDomainPermissionsPolicyInput = {
    type = "structure",
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
    members = {
        policy = M.ResourcePolicy,
    },
}

M.DeletePackageInput = {
    type = "structure",
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
    members = {
        restrictions = M.PackageOriginRestrictions,
    },
}

M.PackageSummary = {
    type = "structure",
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
    members = {
        deletedPackage = M.PackageSummary,
    },
}

M.DeletePackageGroupInput = {
    type = "structure",
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
    members = {
        packageGroup = M.PackageGroupDescription,
    },
}

M.DeletePackageVersionsInput = {
    type = "structure",
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
    members = {
        repository = M.RepositoryDescription,
    },
}

M.DeleteRepositoryPermissionsPolicyInput = {
    type = "structure",
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
    members = {
        policy = M.ResourcePolicy,
    },
}

M.DescribeDomainInput = {
    type = "structure",
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
    members = {
        domain = M.DomainDescription,
    },
}

M.DescribePackageInput = {
    type = "structure",
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
    members = {
        package = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PackageDescription }),
    },
}

M.DescribePackageGroupInput = {
    type = "structure",
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
    members = {
        packageGroup = M.PackageGroupDescription,
    },
}

M.DescribePackageVersionInput = {
    type = "structure",
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
    members = {
        domainEntryPoint = M.DomainEntryPoint,
        originType = {
            type = "string",
        },
    },
}

M.PackageVersionDescription = {
    type = "structure",
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
    members = {
        packageVersion = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PackageVersionDescription }),
    },
}

M.DescribeRepositoryInput = {
    type = "structure",
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
    members = {
        repository = M.RepositoryDescription,
    },
}

M.DisassociateExternalConnectionInput = {
    type = "structure",
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
    members = {
        repository = M.RepositoryDescription,
    },
}

M.DisposePackageVersionsInput = {
    type = "structure",
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
    members = {
        packageGroup = M.PackageGroupDescription,
        associationType = {
            type = "string",
        },
    },
}

M.GetAuthorizationTokenInput = {
    type = "structure",
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
    members = {
        policy = M.ResourcePolicy,
    },
}

M.GetPackageVersionAssetInput = {
    type = "structure",
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
    members = {
        repositoryEndpoint = {
            type = "string",
        },
    },
}

M.GetRepositoryPermissionsPolicyInput = {
    type = "structure",
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
    members = {
        policy = M.ResourcePolicy,
    },
}

M.ListAllowedRepositoriesForGroupInput = {
    type = "structure",
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
    members = {
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PublishPackageVersionInput = {
    type = "structure",
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
    members = {
        policy = M.ResourcePolicy,
    },
}

M.PutPackageOriginConfigurationInput = {
    type = "structure",
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
    members = {
        originConfiguration = M.PackageOriginConfiguration,
    },
}

M.PutRepositoryPermissionsPolicyInput = {
    type = "structure",
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
    members = {
        policy = M.ResourcePolicy,
    },
}

M.TagResourceInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.UpdatePackageGroupInput = {
    type = "structure",
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
    members = {
        packageGroup = M.PackageGroupDescription,
    },
}

M.PackageGroupAllowedRepository = {
    type = "structure",
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
    members = {
        repository = M.RepositoryDescription,
    },
}

return M
