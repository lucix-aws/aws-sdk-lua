

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.codeartifact"

local M = {}

M.PackageVersionList = schema.new({ type = "list", list_member = prelude.String })

M.PackageVersionRevisionMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.SuccessfulPackageVersionInfoMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.SuccessfulPackageVersionInfo })

M.PackageVersionErrorMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.PackageVersionError })

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.UpstreamRepositoryList = schema.new({ type = "list", list_member = M.UpstreamRepository })

M.RepositoryNameList = schema.new({ type = "list", list_member = prelude.String })

M.AssociatedPackageList = schema.new({ type = "list", list_member = M.AssociatedPackage })

M.DomainSummaryList = schema.new({ type = "list", list_member = M.DomainSummary })

M.PackageGroupSummaryList = schema.new({ type = "list", list_member = M.PackageGroupSummary })

M.PackageSummaryList = schema.new({ type = "list", list_member = M.PackageSummary })

M.AssetSummaryList = schema.new({ type = "list", list_member = M.AssetSummary })

M.PackageDependencyList = schema.new({ type = "list", list_member = M.PackageDependency })

M.PackageVersionSummaryList = schema.new({ type = "list", list_member = M.PackageVersionSummary })

M.RepositorySummaryList = schema.new({ type = "list", list_member = M.RepositorySummary })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.OriginRestrictions = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.PackageGroupAllowedRepositoryList = schema.new({ type = "list", list_member = M.PackageGroupAllowedRepository })

M.PackageGroupAllowedRepositoryUpdates = schema.new({ type = "map", map_key = prelude.String, map_value = M.PackageGroupAllowedRepositoryUpdate })

M.UpstreamRepositoryInfoList = schema.new({ type = "list", list_member = M.UpstreamRepositoryInfo })

M.RepositoryExternalConnectionInfoList = schema.new({ type = "list", list_member = M.RepositoryExternalConnectionInfo })

M.LicenseInfoList = schema.new({ type = "list", list_member = M.LicenseInfo })

M.AssetHashes = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.PackageGroupAllowedRepositoryUpdate = schema.new({ type = "map", map_key = prelude.String, map_value = M.RepositoryNameList })

M.PackageGroupOriginRestrictions = schema.new({ type = "map", map_key = prelude.String, map_value = M.PackageGroupOriginRestriction })

M.AccessDeniedException = schema.new({
   id = id.from(_N, "AccessDeniedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "AccessDeniedException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AssetSummary = schema.new({
   id = id.from(_N, "AssetSummary"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AssetSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      size = schema.new({
         id = id.from(_N, "AssetSummary", "size"),
         type = "long",
         name = "size",
         target_id = prelude.Long.id,
      }),
      hashes = schema.new({
         id = id.from(_N, "AssetSummary", "hashes"),
         type = "map",
         name = "hashes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.AssociatedPackage = schema.new({
   id = id.from(_N, "AssociatedPackage"),
   type = "structure",
   members = {
      format = schema.new({
         id = id.from(_N, "AssociatedPackage", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
      }),
      namespace = schema.new({
         id = id.from(_N, "AssociatedPackage", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
      }),
      package = schema.new({
         id = id.from(_N, "AssociatedPackage", "package"),
         type = "string",
         name = "package",
         target_id = prelude.String.id,
      }),
      associationType = schema.new({
         id = id.from(_N, "AssociatedPackage", "associationType"),
         type = "string",
         name = "associationType",
         target_id = prelude.String.id,
      }),
   },
})

M.AssociateExternalConnectionInput = schema.new({
   id = id.from(_N, "AssociateExternalConnectionRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "AssociateExternalConnectionInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "AssociateExternalConnectionInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "AssociateExternalConnectionInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
      externalConnection = schema.new({
         id = id.from(_N, "AssociateExternalConnectionInput", "externalConnection"),
         type = "string",
         name = "externalConnection",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "external-connection" },
         },
      }),
   },
})

M.RepositoryExternalConnectionInfo = schema.new({
   id = id.from(_N, "RepositoryExternalConnectionInfo"),
   type = "structure",
   members = {
      externalConnectionName = schema.new({
         id = id.from(_N, "RepositoryExternalConnectionInfo", "externalConnectionName"),
         type = "string",
         name = "externalConnectionName",
         target_id = prelude.String.id,
      }),
      packageFormat = schema.new({
         id = id.from(_N, "RepositoryExternalConnectionInfo", "packageFormat"),
         type = "string",
         name = "packageFormat",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "RepositoryExternalConnectionInfo", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
   },
})

M.UpstreamRepositoryInfo = schema.new({
   id = id.from(_N, "UpstreamRepositoryInfo"),
   type = "structure",
   members = {
      repositoryName = schema.new({
         id = id.from(_N, "UpstreamRepositoryInfo", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
      }),
   },
})

M.RepositoryDescription = schema.new({
   id = id.from(_N, "RepositoryDescription"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "RepositoryDescription", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      administratorAccount = schema.new({
         id = id.from(_N, "RepositoryDescription", "administratorAccount"),
         type = "string",
         name = "administratorAccount",
         target_id = prelude.String.id,
      }),
      domainName = schema.new({
         id = id.from(_N, "RepositoryDescription", "domainName"),
         type = "string",
         name = "domainName",
         target_id = prelude.String.id,
      }),
      domainOwner = schema.new({
         id = id.from(_N, "RepositoryDescription", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "RepositoryDescription", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "RepositoryDescription", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      upstreams = schema.new({
         id = id.from(_N, "RepositoryDescription", "upstreams"),
         type = "list",
         name = "upstreams",
         target_id = prelude.Document.id,
         list_member = M.UpstreamRepositoryInfo,
      }),
      externalConnections = schema.new({
         id = id.from(_N, "RepositoryDescription", "externalConnections"),
         type = "list",
         name = "externalConnections",
         target_id = prelude.Document.id,
         list_member = M.RepositoryExternalConnectionInfo,
      }),
      createdTime = schema.new({
         id = id.from(_N, "RepositoryDescription", "createdTime"),
         type = "timestamp",
         name = "createdTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.AssociateExternalConnectionOutput = schema.new({
   id = id.from(_N, "AssociateExternalConnectionResult"),
   type = "structure",
   members = {
      repository = schema.new({
         id = id.from(_N, "AssociateExternalConnectionOutput", "repository"),
         type = "structure",
         name = "repository",
         target_id = id.from(_N, "RepositoryDescription"),
         target = M.RepositoryDescription,
      }),
   },
})

M.ConflictException = schema.new({
   id = id.from(_N, "ConflictException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ConflictException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceId = schema.new({
         id = id.from(_N, "ConflictException", "resourceId"),
         type = "string",
         name = "resourceId",
         target_id = prelude.String.id,
      }),
      resourceType = schema.new({
         id = id.from(_N, "ConflictException", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
      }),
   },
})

M.InternalServerException = schema.new({
   id = id.from(_N, "InternalServerException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InternalServerException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ResourceNotFoundException = schema.new({
   id = id.from(_N, "ResourceNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceId = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "resourceId"),
         type = "string",
         name = "resourceId",
         target_id = prelude.String.id,
      }),
      resourceType = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
      }),
   },
})

M.ServiceQuotaExceededException = schema.new({
   id = id.from(_N, "ServiceQuotaExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceId = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "resourceId"),
         type = "string",
         name = "resourceId",
         target_id = prelude.String.id,
      }),
      resourceType = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
      }),
   },
})

M.ThrottlingException = schema.new({
   id = id.from(_N, "ThrottlingException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ThrottlingException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      retryAfterSeconds = schema.new({
         id = id.from(_N, "ThrottlingException", "retryAfterSeconds"),
         type = "integer",
         name = "retryAfterSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Retry-After" },
         },
      }),
   },
})

M.ValidationException = schema.new({
   id = id.from(_N, "ValidationException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ValidationException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      reason = schema.new({
         id = id.from(_N, "ValidationException", "reason"),
         type = "string",
         name = "reason",
         target_id = prelude.String.id,
      }),
   },
})

M.CopyPackageVersionsInput = schema.new({
   id = id.from(_N, "CopyPackageVersionsRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "CopyPackageVersionsInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "CopyPackageVersionsInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      sourceRepository = schema.new({
         id = id.from(_N, "CopyPackageVersionsInput", "sourceRepository"),
         type = "string",
         name = "sourceRepository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "source-repository" },
         },
      }),
      destinationRepository = schema.new({
         id = id.from(_N, "CopyPackageVersionsInput", "destinationRepository"),
         type = "string",
         name = "destinationRepository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "destination-repository" },
         },
      }),
      format = schema.new({
         id = id.from(_N, "CopyPackageVersionsInput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "format" },
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "CopyPackageVersionsInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namespace" },
         },
      }),
      package = schema.new({
         id = id.from(_N, "CopyPackageVersionsInput", "package"),
         type = "string",
         name = "package",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "package" },
         },
      }),
      versions = schema.new({
         id = id.from(_N, "CopyPackageVersionsInput", "versions"),
         type = "list",
         name = "versions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      versionRevisions = schema.new({
         id = id.from(_N, "CopyPackageVersionsInput", "versionRevisions"),
         type = "map",
         name = "versionRevisions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      allowOverwrite = schema.new({
         id = id.from(_N, "CopyPackageVersionsInput", "allowOverwrite"),
         type = "boolean",
         name = "allowOverwrite",
         target_id = prelude.Boolean.id,
      }),
      includeFromUpstream = schema.new({
         id = id.from(_N, "CopyPackageVersionsInput", "includeFromUpstream"),
         type = "boolean",
         name = "includeFromUpstream",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.PackageVersionError = schema.new({
   id = id.from(_N, "PackageVersionError"),
   type = "structure",
   members = {
      errorCode = schema.new({
         id = id.from(_N, "PackageVersionError", "errorCode"),
         type = "string",
         name = "errorCode",
         target_id = prelude.String.id,
      }),
      errorMessage = schema.new({
         id = id.from(_N, "PackageVersionError", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.SuccessfulPackageVersionInfo = schema.new({
   id = id.from(_N, "SuccessfulPackageVersionInfo"),
   type = "structure",
   members = {
      revision = schema.new({
         id = id.from(_N, "SuccessfulPackageVersionInfo", "revision"),
         type = "string",
         name = "revision",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "SuccessfulPackageVersionInfo", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
   },
})

M.CopyPackageVersionsOutput = schema.new({
   id = id.from(_N, "CopyPackageVersionsResult"),
   type = "structure",
   members = {
      successfulVersions = schema.new({
         id = id.from(_N, "CopyPackageVersionsOutput", "successfulVersions"),
         type = "map",
         name = "successfulVersions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.SuccessfulPackageVersionInfo,
      }),
      failedVersions = schema.new({
         id = id.from(_N, "CopyPackageVersionsOutput", "failedVersions"),
         type = "map",
         name = "failedVersions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.PackageVersionError,
      }),
   },
})

M.Tag = schema.new({
   id = id.from(_N, "Tag"),
   type = "structure",
   members = {
      key = schema.new({
         id = id.from(_N, "Tag", "key"),
         type = "string",
         name = "key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "Tag", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateDomainInput = schema.new({
   id = id.from(_N, "CreateDomainRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "CreateDomainInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      encryptionKey = schema.new({
         id = id.from(_N, "CreateDomainInput", "encryptionKey"),
         type = "string",
         name = "encryptionKey",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateDomainInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.DomainDescription = schema.new({
   id = id.from(_N, "DomainDescription"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "DomainDescription", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      owner = schema.new({
         id = id.from(_N, "DomainDescription", "owner"),
         type = "string",
         name = "owner",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "DomainDescription", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "DomainDescription", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      createdTime = schema.new({
         id = id.from(_N, "DomainDescription", "createdTime"),
         type = "timestamp",
         name = "createdTime",
         target_id = prelude.Timestamp.id,
      }),
      encryptionKey = schema.new({
         id = id.from(_N, "DomainDescription", "encryptionKey"),
         type = "string",
         name = "encryptionKey",
         target_id = prelude.String.id,
      }),
      repositoryCount = schema.new({
         id = id.from(_N, "DomainDescription", "repositoryCount"),
         type = "integer",
         name = "repositoryCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      assetSizeBytes = schema.new({
         id = id.from(_N, "DomainDescription", "assetSizeBytes"),
         type = "long",
         name = "assetSizeBytes",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      s3BucketArn = schema.new({
         id = id.from(_N, "DomainDescription", "s3BucketArn"),
         type = "string",
         name = "s3BucketArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateDomainOutput = schema.new({
   id = id.from(_N, "CreateDomainResult"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "CreateDomainOutput", "domain"),
         type = "structure",
         name = "domain",
         target_id = id.from(_N, "DomainDescription"),
         target = M.DomainDescription,
      }),
   },
})

M.CreatePackageGroupInput = schema.new({
   id = id.from(_N, "CreatePackageGroupRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "CreatePackageGroupInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "CreatePackageGroupInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      packageGroup = schema.new({
         id = id.from(_N, "CreatePackageGroupInput", "packageGroup"),
         type = "string",
         name = "packageGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      contactInfo = schema.new({
         id = id.from(_N, "CreatePackageGroupInput", "contactInfo"),
         type = "string",
         name = "contactInfo",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "CreatePackageGroupInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "CreatePackageGroupInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.PackageGroupReference = schema.new({
   id = id.from(_N, "PackageGroupReference"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "PackageGroupReference", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      pattern = schema.new({
         id = id.from(_N, "PackageGroupReference", "pattern"),
         type = "string",
         name = "pattern",
         target_id = prelude.String.id,
      }),
   },
})

M.PackageGroupOriginRestriction = schema.new({
   id = id.from(_N, "PackageGroupOriginRestriction"),
   type = "structure",
   members = {
      mode = schema.new({
         id = id.from(_N, "PackageGroupOriginRestriction", "mode"),
         type = "string",
         name = "mode",
         target_id = prelude.String.id,
      }),
      effectiveMode = schema.new({
         id = id.from(_N, "PackageGroupOriginRestriction", "effectiveMode"),
         type = "string",
         name = "effectiveMode",
         target_id = prelude.String.id,
      }),
      inheritedFrom = schema.new({
         id = id.from(_N, "PackageGroupOriginRestriction", "inheritedFrom"),
         type = "structure",
         name = "inheritedFrom",
         target_id = id.from(_N, "PackageGroupReference"),
         target = M.PackageGroupReference,
      }),
      repositoriesCount = schema.new({
         id = id.from(_N, "PackageGroupOriginRestriction", "repositoriesCount"),
         type = "long",
         name = "repositoriesCount",
         target_id = prelude.Long.id,
      }),
   },
})

M.PackageGroupOriginConfiguration = schema.new({
   id = id.from(_N, "PackageGroupOriginConfiguration"),
   type = "structure",
   members = {
      restrictions = schema.new({
         id = id.from(_N, "PackageGroupOriginConfiguration", "restrictions"),
         type = "map",
         name = "restrictions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.PackageGroupOriginRestriction,
      }),
   },
})

M.PackageGroupDescription = schema.new({
   id = id.from(_N, "PackageGroupDescription"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "PackageGroupDescription", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      pattern = schema.new({
         id = id.from(_N, "PackageGroupDescription", "pattern"),
         type = "string",
         name = "pattern",
         target_id = prelude.String.id,
      }),
      domainName = schema.new({
         id = id.from(_N, "PackageGroupDescription", "domainName"),
         type = "string",
         name = "domainName",
         target_id = prelude.String.id,
      }),
      domainOwner = schema.new({
         id = id.from(_N, "PackageGroupDescription", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
      }),
      createdTime = schema.new({
         id = id.from(_N, "PackageGroupDescription", "createdTime"),
         type = "timestamp",
         name = "createdTime",
         target_id = prelude.Timestamp.id,
      }),
      contactInfo = schema.new({
         id = id.from(_N, "PackageGroupDescription", "contactInfo"),
         type = "string",
         name = "contactInfo",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "PackageGroupDescription", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      originConfiguration = schema.new({
         id = id.from(_N, "PackageGroupDescription", "originConfiguration"),
         type = "structure",
         name = "originConfiguration",
         target_id = id.from(_N, "PackageGroupOriginConfiguration"),
         target = M.PackageGroupOriginConfiguration,
      }),
      parent = schema.new({
         id = id.from(_N, "PackageGroupDescription", "parent"),
         type = "structure",
         name = "parent",
         target_id = id.from(_N, "PackageGroupReference"),
         target = M.PackageGroupReference,
      }),
   },
})

M.CreatePackageGroupOutput = schema.new({
   id = id.from(_N, "CreatePackageGroupResult"),
   type = "structure",
   members = {
      packageGroup = schema.new({
         id = id.from(_N, "CreatePackageGroupOutput", "packageGroup"),
         type = "structure",
         name = "packageGroup",
         target_id = id.from(_N, "PackageGroupDescription"),
         target = M.PackageGroupDescription,
      }),
   },
})

M.UpstreamRepository = schema.new({
   id = id.from(_N, "UpstreamRepository"),
   type = "structure",
   members = {
      repositoryName = schema.new({
         id = id.from(_N, "UpstreamRepository", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateRepositoryInput = schema.new({
   id = id.from(_N, "CreateRepositoryRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "CreateRepositoryInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "CreateRepositoryInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "CreateRepositoryInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
      description = schema.new({
         id = id.from(_N, "CreateRepositoryInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      upstreams = schema.new({
         id = id.from(_N, "CreateRepositoryInput", "upstreams"),
         type = "list",
         name = "upstreams",
         target_id = prelude.Document.id,
         list_member = M.UpstreamRepository,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateRepositoryInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateRepositoryOutput = schema.new({
   id = id.from(_N, "CreateRepositoryResult"),
   type = "structure",
   members = {
      repository = schema.new({
         id = id.from(_N, "CreateRepositoryOutput", "repository"),
         type = "structure",
         name = "repository",
         target_id = id.from(_N, "RepositoryDescription"),
         target = M.RepositoryDescription,
      }),
   },
})

M.DeleteDomainInput = schema.new({
   id = id.from(_N, "DeleteDomainRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "DeleteDomainInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "DeleteDomainInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
   },
})

M.DeleteDomainOutput = schema.new({
   id = id.from(_N, "DeleteDomainResult"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "DeleteDomainOutput", "domain"),
         type = "structure",
         name = "domain",
         target_id = id.from(_N, "DomainDescription"),
         target = M.DomainDescription,
      }),
   },
})

M.DeleteDomainPermissionsPolicyInput = schema.new({
   id = id.from(_N, "DeleteDomainPermissionsPolicyRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "DeleteDomainPermissionsPolicyInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "DeleteDomainPermissionsPolicyInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      policyRevision = schema.new({
         id = id.from(_N, "DeleteDomainPermissionsPolicyInput", "policyRevision"),
         type = "string",
         name = "policyRevision",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "policy-revision" },
         },
      }),
   },
})

M.ResourcePolicy = schema.new({
   id = id.from(_N, "ResourcePolicy"),
   type = "structure",
   members = {
      resourceArn = schema.new({
         id = id.from(_N, "ResourcePolicy", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
      }),
      revision = schema.new({
         id = id.from(_N, "ResourcePolicy", "revision"),
         type = "string",
         name = "revision",
         target_id = prelude.String.id,
      }),
      document = schema.new({
         id = id.from(_N, "ResourcePolicy", "document"),
         type = "string",
         name = "document",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteDomainPermissionsPolicyOutput = schema.new({
   id = id.from(_N, "DeleteDomainPermissionsPolicyResult"),
   type = "structure",
   members = {
      policy = schema.new({
         id = id.from(_N, "DeleteDomainPermissionsPolicyOutput", "policy"),
         type = "structure",
         name = "policy",
         target_id = id.from(_N, "ResourcePolicy"),
         target = M.ResourcePolicy,
      }),
   },
})

M.DeletePackageInput = schema.new({
   id = id.from(_N, "DeletePackageRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "DeletePackageInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "DeletePackageInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "DeletePackageInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
      format = schema.new({
         id = id.from(_N, "DeletePackageInput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "format" },
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "DeletePackageInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namespace" },
         },
      }),
      package = schema.new({
         id = id.from(_N, "DeletePackageInput", "package"),
         type = "string",
         name = "package",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "package" },
         },
      }),
   },
})

M.PackageOriginRestrictions = schema.new({
   id = id.from(_N, "PackageOriginRestrictions"),
   type = "structure",
   members = {
      publish = schema.new({
         id = id.from(_N, "PackageOriginRestrictions", "publish"),
         type = "string",
         name = "publish",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      upstream = schema.new({
         id = id.from(_N, "PackageOriginRestrictions", "upstream"),
         type = "string",
         name = "upstream",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PackageOriginConfiguration = schema.new({
   id = id.from(_N, "PackageOriginConfiguration"),
   type = "structure",
   members = {
      restrictions = schema.new({
         id = id.from(_N, "PackageOriginConfiguration", "restrictions"),
         type = "structure",
         name = "restrictions",
         target_id = id.from(_N, "PackageOriginRestrictions"),
         target = M.PackageOriginRestrictions,
      }),
   },
})

M.PackageSummary = schema.new({
   id = id.from(_N, "PackageSummary"),
   type = "structure",
   members = {
      format = schema.new({
         id = id.from(_N, "PackageSummary", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
      }),
      namespace = schema.new({
         id = id.from(_N, "PackageSummary", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
      }),
      package = schema.new({
         id = id.from(_N, "PackageSummary", "package"),
         type = "string",
         name = "package",
         target_id = prelude.String.id,
      }),
      originConfiguration = schema.new({
         id = id.from(_N, "PackageSummary", "originConfiguration"),
         type = "structure",
         name = "originConfiguration",
         target_id = id.from(_N, "PackageOriginConfiguration"),
         target = M.PackageOriginConfiguration,
      }),
   },
})

M.DeletePackageOutput = schema.new({
   id = id.from(_N, "DeletePackageResult"),
   type = "structure",
   members = {
      deletedPackage = schema.new({
         id = id.from(_N, "DeletePackageOutput", "deletedPackage"),
         type = "structure",
         name = "deletedPackage",
         target_id = id.from(_N, "PackageSummary"),
         target = M.PackageSummary,
      }),
   },
})

M.DeletePackageGroupInput = schema.new({
   id = id.from(_N, "DeletePackageGroupRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "DeletePackageGroupInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "DeletePackageGroupInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      packageGroup = schema.new({
         id = id.from(_N, "DeletePackageGroupInput", "packageGroup"),
         type = "string",
         name = "packageGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "package-group" },
         },
      }),
   },
})

M.DeletePackageGroupOutput = schema.new({
   id = id.from(_N, "DeletePackageGroupResult"),
   type = "structure",
   members = {
      packageGroup = schema.new({
         id = id.from(_N, "DeletePackageGroupOutput", "packageGroup"),
         type = "structure",
         name = "packageGroup",
         target_id = id.from(_N, "PackageGroupDescription"),
         target = M.PackageGroupDescription,
      }),
   },
})

M.DeletePackageVersionsInput = schema.new({
   id = id.from(_N, "DeletePackageVersionsRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "DeletePackageVersionsInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "DeletePackageVersionsInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "DeletePackageVersionsInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
      format = schema.new({
         id = id.from(_N, "DeletePackageVersionsInput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "format" },
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "DeletePackageVersionsInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namespace" },
         },
      }),
      package = schema.new({
         id = id.from(_N, "DeletePackageVersionsInput", "package"),
         type = "string",
         name = "package",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "package" },
         },
      }),
      versions = schema.new({
         id = id.from(_N, "DeletePackageVersionsInput", "versions"),
         type = "list",
         name = "versions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      expectedStatus = schema.new({
         id = id.from(_N, "DeletePackageVersionsInput", "expectedStatus"),
         type = "string",
         name = "expectedStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.DeletePackageVersionsOutput = schema.new({
   id = id.from(_N, "DeletePackageVersionsResult"),
   type = "structure",
   members = {
      successfulVersions = schema.new({
         id = id.from(_N, "DeletePackageVersionsOutput", "successfulVersions"),
         type = "map",
         name = "successfulVersions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.SuccessfulPackageVersionInfo,
      }),
      failedVersions = schema.new({
         id = id.from(_N, "DeletePackageVersionsOutput", "failedVersions"),
         type = "map",
         name = "failedVersions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.PackageVersionError,
      }),
   },
})

M.DeleteRepositoryInput = schema.new({
   id = id.from(_N, "DeleteRepositoryRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "DeleteRepositoryInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "DeleteRepositoryInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "DeleteRepositoryInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
   },
})

M.DeleteRepositoryOutput = schema.new({
   id = id.from(_N, "DeleteRepositoryResult"),
   type = "structure",
   members = {
      repository = schema.new({
         id = id.from(_N, "DeleteRepositoryOutput", "repository"),
         type = "structure",
         name = "repository",
         target_id = id.from(_N, "RepositoryDescription"),
         target = M.RepositoryDescription,
      }),
   },
})

M.DeleteRepositoryPermissionsPolicyInput = schema.new({
   id = id.from(_N, "DeleteRepositoryPermissionsPolicyRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "DeleteRepositoryPermissionsPolicyInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "DeleteRepositoryPermissionsPolicyInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "DeleteRepositoryPermissionsPolicyInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
      policyRevision = schema.new({
         id = id.from(_N, "DeleteRepositoryPermissionsPolicyInput", "policyRevision"),
         type = "string",
         name = "policyRevision",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "policy-revision" },
         },
      }),
   },
})

M.DeleteRepositoryPermissionsPolicyOutput = schema.new({
   id = id.from(_N, "DeleteRepositoryPermissionsPolicyResult"),
   type = "structure",
   members = {
      policy = schema.new({
         id = id.from(_N, "DeleteRepositoryPermissionsPolicyOutput", "policy"),
         type = "structure",
         name = "policy",
         target_id = id.from(_N, "ResourcePolicy"),
         target = M.ResourcePolicy,
      }),
   },
})

M.DescribeDomainInput = schema.new({
   id = id.from(_N, "DescribeDomainRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "DescribeDomainInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "DescribeDomainInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
   },
})

M.DescribeDomainOutput = schema.new({
   id = id.from(_N, "DescribeDomainResult"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "DescribeDomainOutput", "domain"),
         type = "structure",
         name = "domain",
         target_id = id.from(_N, "DomainDescription"),
         target = M.DomainDescription,
      }),
   },
})

M.DescribePackageInput = schema.new({
   id = id.from(_N, "DescribePackageRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "DescribePackageInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "DescribePackageInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "DescribePackageInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
      format = schema.new({
         id = id.from(_N, "DescribePackageInput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "format" },
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "DescribePackageInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namespace" },
         },
      }),
      package = schema.new({
         id = id.from(_N, "DescribePackageInput", "package"),
         type = "string",
         name = "package",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "package" },
         },
      }),
   },
})

M.PackageDescription = schema.new({
   id = id.from(_N, "PackageDescription"),
   type = "structure",
   members = {
      format = schema.new({
         id = id.from(_N, "PackageDescription", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
      }),
      namespace = schema.new({
         id = id.from(_N, "PackageDescription", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "PackageDescription", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      originConfiguration = schema.new({
         id = id.from(_N, "PackageDescription", "originConfiguration"),
         type = "structure",
         name = "originConfiguration",
         target_id = id.from(_N, "PackageOriginConfiguration"),
         target = M.PackageOriginConfiguration,
      }),
   },
})

M.DescribePackageOutput = schema.new({
   id = id.from(_N, "DescribePackageResult"),
   type = "structure",
   members = {
      package = schema.new({
         id = id.from(_N, "DescribePackageOutput", "package"),
         type = "structure",
         name = "package",
         target_id = id.from(_N, "PackageDescription"),
         target = M.PackageDescription,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribePackageGroupInput = schema.new({
   id = id.from(_N, "DescribePackageGroupRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "DescribePackageGroupInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "DescribePackageGroupInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      packageGroup = schema.new({
         id = id.from(_N, "DescribePackageGroupInput", "packageGroup"),
         type = "string",
         name = "packageGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "package-group" },
         },
      }),
   },
})

M.DescribePackageGroupOutput = schema.new({
   id = id.from(_N, "DescribePackageGroupResult"),
   type = "structure",
   members = {
      packageGroup = schema.new({
         id = id.from(_N, "DescribePackageGroupOutput", "packageGroup"),
         type = "structure",
         name = "packageGroup",
         target_id = id.from(_N, "PackageGroupDescription"),
         target = M.PackageGroupDescription,
      }),
   },
})

M.DescribePackageVersionInput = schema.new({
   id = id.from(_N, "DescribePackageVersionRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "DescribePackageVersionInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "DescribePackageVersionInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "DescribePackageVersionInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
      format = schema.new({
         id = id.from(_N, "DescribePackageVersionInput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "format" },
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "DescribePackageVersionInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namespace" },
         },
      }),
      package = schema.new({
         id = id.from(_N, "DescribePackageVersionInput", "package"),
         type = "string",
         name = "package",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "package" },
         },
      }),
      packageVersion = schema.new({
         id = id.from(_N, "DescribePackageVersionInput", "packageVersion"),
         type = "string",
         name = "packageVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "version" },
         },
      }),
   },
})

M.LicenseInfo = schema.new({
   id = id.from(_N, "LicenseInfo"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "LicenseInfo", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      url = schema.new({
         id = id.from(_N, "LicenseInfo", "url"),
         type = "string",
         name = "url",
         target_id = prelude.String.id,
      }),
   },
})

M.DomainEntryPoint = schema.new({
   id = id.from(_N, "DomainEntryPoint"),
   type = "structure",
   members = {
      repositoryName = schema.new({
         id = id.from(_N, "DomainEntryPoint", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
      }),
      externalConnectionName = schema.new({
         id = id.from(_N, "DomainEntryPoint", "externalConnectionName"),
         type = "string",
         name = "externalConnectionName",
         target_id = prelude.String.id,
      }),
   },
})

M.PackageVersionOrigin = schema.new({
   id = id.from(_N, "PackageVersionOrigin"),
   type = "structure",
   members = {
      domainEntryPoint = schema.new({
         id = id.from(_N, "PackageVersionOrigin", "domainEntryPoint"),
         type = "structure",
         name = "domainEntryPoint",
         target_id = id.from(_N, "DomainEntryPoint"),
         target = M.DomainEntryPoint,
      }),
      originType = schema.new({
         id = id.from(_N, "PackageVersionOrigin", "originType"),
         type = "string",
         name = "originType",
         target_id = prelude.String.id,
      }),
   },
})

M.PackageVersionDescription = schema.new({
   id = id.from(_N, "PackageVersionDescription"),
   type = "structure",
   members = {
      format = schema.new({
         id = id.from(_N, "PackageVersionDescription", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
      }),
      namespace = schema.new({
         id = id.from(_N, "PackageVersionDescription", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
      }),
      packageName = schema.new({
         id = id.from(_N, "PackageVersionDescription", "packageName"),
         type = "string",
         name = "packageName",
         target_id = prelude.String.id,
      }),
      displayName = schema.new({
         id = id.from(_N, "PackageVersionDescription", "displayName"),
         type = "string",
         name = "displayName",
         target_id = prelude.String.id,
      }),
      version = schema.new({
         id = id.from(_N, "PackageVersionDescription", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
      }),
      summary = schema.new({
         id = id.from(_N, "PackageVersionDescription", "summary"),
         type = "string",
         name = "summary",
         target_id = prelude.String.id,
      }),
      homePage = schema.new({
         id = id.from(_N, "PackageVersionDescription", "homePage"),
         type = "string",
         name = "homePage",
         target_id = prelude.String.id,
      }),
      sourceCodeRepository = schema.new({
         id = id.from(_N, "PackageVersionDescription", "sourceCodeRepository"),
         type = "string",
         name = "sourceCodeRepository",
         target_id = prelude.String.id,
      }),
      publishedTime = schema.new({
         id = id.from(_N, "PackageVersionDescription", "publishedTime"),
         type = "timestamp",
         name = "publishedTime",
         target_id = prelude.Timestamp.id,
      }),
      licenses = schema.new({
         id = id.from(_N, "PackageVersionDescription", "licenses"),
         type = "list",
         name = "licenses",
         target_id = prelude.Document.id,
         list_member = M.LicenseInfo,
      }),
      revision = schema.new({
         id = id.from(_N, "PackageVersionDescription", "revision"),
         type = "string",
         name = "revision",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "PackageVersionDescription", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      origin = schema.new({
         id = id.from(_N, "PackageVersionDescription", "origin"),
         type = "structure",
         name = "origin",
         target_id = id.from(_N, "PackageVersionOrigin"),
         target = M.PackageVersionOrigin,
      }),
   },
})

M.DescribePackageVersionOutput = schema.new({
   id = id.from(_N, "DescribePackageVersionResult"),
   type = "structure",
   members = {
      packageVersion = schema.new({
         id = id.from(_N, "DescribePackageVersionOutput", "packageVersion"),
         type = "structure",
         name = "packageVersion",
         target_id = id.from(_N, "PackageVersionDescription"),
         target = M.PackageVersionDescription,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeRepositoryInput = schema.new({
   id = id.from(_N, "DescribeRepositoryRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "DescribeRepositoryInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "DescribeRepositoryInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "DescribeRepositoryInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
   },
})

M.DescribeRepositoryOutput = schema.new({
   id = id.from(_N, "DescribeRepositoryResult"),
   type = "structure",
   members = {
      repository = schema.new({
         id = id.from(_N, "DescribeRepositoryOutput", "repository"),
         type = "structure",
         name = "repository",
         target_id = id.from(_N, "RepositoryDescription"),
         target = M.RepositoryDescription,
      }),
   },
})

M.DisassociateExternalConnectionInput = schema.new({
   id = id.from(_N, "DisassociateExternalConnectionRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "DisassociateExternalConnectionInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "DisassociateExternalConnectionInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "DisassociateExternalConnectionInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
      externalConnection = schema.new({
         id = id.from(_N, "DisassociateExternalConnectionInput", "externalConnection"),
         type = "string",
         name = "externalConnection",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "external-connection" },
         },
      }),
   },
})

M.DisassociateExternalConnectionOutput = schema.new({
   id = id.from(_N, "DisassociateExternalConnectionResult"),
   type = "structure",
   members = {
      repository = schema.new({
         id = id.from(_N, "DisassociateExternalConnectionOutput", "repository"),
         type = "structure",
         name = "repository",
         target_id = id.from(_N, "RepositoryDescription"),
         target = M.RepositoryDescription,
      }),
   },
})

M.DisposePackageVersionsInput = schema.new({
   id = id.from(_N, "DisposePackageVersionsRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "DisposePackageVersionsInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "DisposePackageVersionsInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "DisposePackageVersionsInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
      format = schema.new({
         id = id.from(_N, "DisposePackageVersionsInput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "format" },
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "DisposePackageVersionsInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namespace" },
         },
      }),
      package = schema.new({
         id = id.from(_N, "DisposePackageVersionsInput", "package"),
         type = "string",
         name = "package",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "package" },
         },
      }),
      versions = schema.new({
         id = id.from(_N, "DisposePackageVersionsInput", "versions"),
         type = "list",
         name = "versions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      versionRevisions = schema.new({
         id = id.from(_N, "DisposePackageVersionsInput", "versionRevisions"),
         type = "map",
         name = "versionRevisions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      expectedStatus = schema.new({
         id = id.from(_N, "DisposePackageVersionsInput", "expectedStatus"),
         type = "string",
         name = "expectedStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.DisposePackageVersionsOutput = schema.new({
   id = id.from(_N, "DisposePackageVersionsResult"),
   type = "structure",
   members = {
      successfulVersions = schema.new({
         id = id.from(_N, "DisposePackageVersionsOutput", "successfulVersions"),
         type = "map",
         name = "successfulVersions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.SuccessfulPackageVersionInfo,
      }),
      failedVersions = schema.new({
         id = id.from(_N, "DisposePackageVersionsOutput", "failedVersions"),
         type = "map",
         name = "failedVersions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.PackageVersionError,
      }),
   },
})

M.GetAssociatedPackageGroupInput = schema.new({
   id = id.from(_N, "GetAssociatedPackageGroupRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "GetAssociatedPackageGroupInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "GetAssociatedPackageGroupInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      format = schema.new({
         id = id.from(_N, "GetAssociatedPackageGroupInput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "format" },
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "GetAssociatedPackageGroupInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namespace" },
         },
      }),
      package = schema.new({
         id = id.from(_N, "GetAssociatedPackageGroupInput", "package"),
         type = "string",
         name = "package",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "package" },
         },
      }),
   },
})

M.GetAssociatedPackageGroupOutput = schema.new({
   id = id.from(_N, "GetAssociatedPackageGroupResult"),
   type = "structure",
   members = {
      packageGroup = schema.new({
         id = id.from(_N, "GetAssociatedPackageGroupOutput", "packageGroup"),
         type = "structure",
         name = "packageGroup",
         target_id = id.from(_N, "PackageGroupDescription"),
         target = M.PackageGroupDescription,
      }),
      associationType = schema.new({
         id = id.from(_N, "GetAssociatedPackageGroupOutput", "associationType"),
         type = "string",
         name = "associationType",
         target_id = prelude.String.id,
      }),
   },
})

M.GetAuthorizationTokenInput = schema.new({
   id = id.from(_N, "GetAuthorizationTokenRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "GetAuthorizationTokenInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "GetAuthorizationTokenInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      durationSeconds = schema.new({
         id = id.from(_N, "GetAuthorizationTokenInput", "durationSeconds"),
         type = "long",
         name = "durationSeconds",
         target_id = prelude.Long.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "duration" },
         },
      }),
   },
})

M.GetAuthorizationTokenOutput = schema.new({
   id = id.from(_N, "GetAuthorizationTokenResult"),
   type = "structure",
   members = {
      authorizationToken = schema.new({
         id = id.from(_N, "GetAuthorizationTokenOutput", "authorizationToken"),
         type = "string",
         name = "authorizationToken",
         target_id = prelude.String.id,
      }),
      expiration = schema.new({
         id = id.from(_N, "GetAuthorizationTokenOutput", "expiration"),
         type = "timestamp",
         name = "expiration",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.GetDomainPermissionsPolicyInput = schema.new({
   id = id.from(_N, "GetDomainPermissionsPolicyRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "GetDomainPermissionsPolicyInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "GetDomainPermissionsPolicyInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
   },
})

M.GetDomainPermissionsPolicyOutput = schema.new({
   id = id.from(_N, "GetDomainPermissionsPolicyResult"),
   type = "structure",
   members = {
      policy = schema.new({
         id = id.from(_N, "GetDomainPermissionsPolicyOutput", "policy"),
         type = "structure",
         name = "policy",
         target_id = id.from(_N, "ResourcePolicy"),
         target = M.ResourcePolicy,
      }),
   },
})

M.GetPackageVersionAssetInput = schema.new({
   id = id.from(_N, "GetPackageVersionAssetRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "GetPackageVersionAssetInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "GetPackageVersionAssetInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "GetPackageVersionAssetInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
      format = schema.new({
         id = id.from(_N, "GetPackageVersionAssetInput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "format" },
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "GetPackageVersionAssetInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namespace" },
         },
      }),
      package = schema.new({
         id = id.from(_N, "GetPackageVersionAssetInput", "package"),
         type = "string",
         name = "package",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "package" },
         },
      }),
      packageVersion = schema.new({
         id = id.from(_N, "GetPackageVersionAssetInput", "packageVersion"),
         type = "string",
         name = "packageVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "version" },
         },
      }),
      asset = schema.new({
         id = id.from(_N, "GetPackageVersionAssetInput", "asset"),
         type = "string",
         name = "asset",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "asset" },
         },
      }),
      packageVersionRevision = schema.new({
         id = id.from(_N, "GetPackageVersionAssetInput", "packageVersionRevision"),
         type = "string",
         name = "packageVersionRevision",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "revision" },
         },
      }),
   },
})

M.GetPackageVersionAssetOutput = schema.new({
   id = id.from(_N, "GetPackageVersionAssetResult"),
   type = "structure",
   members = {
      asset = schema.new({
         id = id.from(_N, "GetPackageVersionAssetOutput", "asset"),
         type = "blob",
         name = "asset",
         target_id = prelude.Blob.id,
         traits = {
            [traits.DEFAULT] = { value = "" },
            [traits.HTTP_PAYLOAD] = {},
            [traits.STREAMING] = {},
         },
         direct_traits = {
            [traits.DEFAULT] = { value = "" },
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      assetName = schema.new({
         id = id.from(_N, "GetPackageVersionAssetOutput", "assetName"),
         type = "string",
         name = "assetName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-AssetName" },
         },
      }),
      packageVersion = schema.new({
         id = id.from(_N, "GetPackageVersionAssetOutput", "packageVersion"),
         type = "string",
         name = "packageVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-PackageVersion" },
         },
      }),
      packageVersionRevision = schema.new({
         id = id.from(_N, "GetPackageVersionAssetOutput", "packageVersionRevision"),
         type = "string",
         name = "packageVersionRevision",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-PackageVersionRevision" },
         },
      }),
   },
})

M.GetPackageVersionReadmeInput = schema.new({
   id = id.from(_N, "GetPackageVersionReadmeRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "GetPackageVersionReadmeInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "GetPackageVersionReadmeInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "GetPackageVersionReadmeInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
      format = schema.new({
         id = id.from(_N, "GetPackageVersionReadmeInput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "format" },
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "GetPackageVersionReadmeInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namespace" },
         },
      }),
      package = schema.new({
         id = id.from(_N, "GetPackageVersionReadmeInput", "package"),
         type = "string",
         name = "package",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "package" },
         },
      }),
      packageVersion = schema.new({
         id = id.from(_N, "GetPackageVersionReadmeInput", "packageVersion"),
         type = "string",
         name = "packageVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "version" },
         },
      }),
   },
})

M.GetPackageVersionReadmeOutput = schema.new({
   id = id.from(_N, "GetPackageVersionReadmeResult"),
   type = "structure",
   members = {
      format = schema.new({
         id = id.from(_N, "GetPackageVersionReadmeOutput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
      }),
      namespace = schema.new({
         id = id.from(_N, "GetPackageVersionReadmeOutput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
      }),
      package = schema.new({
         id = id.from(_N, "GetPackageVersionReadmeOutput", "package"),
         type = "string",
         name = "package",
         target_id = prelude.String.id,
      }),
      version = schema.new({
         id = id.from(_N, "GetPackageVersionReadmeOutput", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
      }),
      versionRevision = schema.new({
         id = id.from(_N, "GetPackageVersionReadmeOutput", "versionRevision"),
         type = "string",
         name = "versionRevision",
         target_id = prelude.String.id,
      }),
      readme = schema.new({
         id = id.from(_N, "GetPackageVersionReadmeOutput", "readme"),
         type = "string",
         name = "readme",
         target_id = prelude.String.id,
      }),
   },
})

M.GetRepositoryEndpointInput = schema.new({
   id = id.from(_N, "GetRepositoryEndpointRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "GetRepositoryEndpointInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "GetRepositoryEndpointInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "GetRepositoryEndpointInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
      format = schema.new({
         id = id.from(_N, "GetRepositoryEndpointInput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "format" },
         },
      }),
      endpointType = schema.new({
         id = id.from(_N, "GetRepositoryEndpointInput", "endpointType"),
         type = "string",
         name = "endpointType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "endpointType" },
         },
      }),
   },
})

M.GetRepositoryEndpointOutput = schema.new({
   id = id.from(_N, "GetRepositoryEndpointResult"),
   type = "structure",
   members = {
      repositoryEndpoint = schema.new({
         id = id.from(_N, "GetRepositoryEndpointOutput", "repositoryEndpoint"),
         type = "string",
         name = "repositoryEndpoint",
         target_id = prelude.String.id,
      }),
   },
})

M.GetRepositoryPermissionsPolicyInput = schema.new({
   id = id.from(_N, "GetRepositoryPermissionsPolicyRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "GetRepositoryPermissionsPolicyInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "GetRepositoryPermissionsPolicyInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "GetRepositoryPermissionsPolicyInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
   },
})

M.GetRepositoryPermissionsPolicyOutput = schema.new({
   id = id.from(_N, "GetRepositoryPermissionsPolicyResult"),
   type = "structure",
   members = {
      policy = schema.new({
         id = id.from(_N, "GetRepositoryPermissionsPolicyOutput", "policy"),
         type = "structure",
         name = "policy",
         target_id = id.from(_N, "ResourcePolicy"),
         target = M.ResourcePolicy,
      }),
   },
})

M.ListAllowedRepositoriesForGroupInput = schema.new({
   id = id.from(_N, "ListAllowedRepositoriesForGroupRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "ListAllowedRepositoriesForGroupInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "ListAllowedRepositoriesForGroupInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      packageGroup = schema.new({
         id = id.from(_N, "ListAllowedRepositoriesForGroupInput", "packageGroup"),
         type = "string",
         name = "packageGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "package-group" },
         },
      }),
      originRestrictionType = schema.new({
         id = id.from(_N, "ListAllowedRepositoriesForGroupInput", "originRestrictionType"),
         type = "string",
         name = "originRestrictionType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "originRestrictionType" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListAllowedRepositoriesForGroupInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-results" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAllowedRepositoriesForGroupInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
   },
})

M.ListAllowedRepositoriesForGroupOutput = schema.new({
   id = id.from(_N, "ListAllowedRepositoriesForGroupResult"),
   type = "structure",
   members = {
      allowedRepositories = schema.new({
         id = id.from(_N, "ListAllowedRepositoriesForGroupOutput", "allowedRepositories"),
         type = "list",
         name = "allowedRepositories",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAllowedRepositoriesForGroupOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAssociatedPackagesInput = schema.new({
   id = id.from(_N, "ListAssociatedPackagesRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "ListAssociatedPackagesInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "ListAssociatedPackagesInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      packageGroup = schema.new({
         id = id.from(_N, "ListAssociatedPackagesInput", "packageGroup"),
         type = "string",
         name = "packageGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "package-group" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListAssociatedPackagesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-results" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAssociatedPackagesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
      preview = schema.new({
         id = id.from(_N, "ListAssociatedPackagesInput", "preview"),
         type = "boolean",
         name = "preview",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "preview" },
         },
      }),
   },
})

M.ListAssociatedPackagesOutput = schema.new({
   id = id.from(_N, "ListAssociatedPackagesResult"),
   type = "structure",
   members = {
      packages = schema.new({
         id = id.from(_N, "ListAssociatedPackagesOutput", "packages"),
         type = "list",
         name = "packages",
         target_id = prelude.Document.id,
         list_member = M.AssociatedPackage,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAssociatedPackagesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDomainsInput = schema.new({
   id = id.from(_N, "ListDomainsRequest"),
   type = "structure",
   members = {
      maxResults = schema.new({
         id = id.from(_N, "ListDomainsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDomainsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DomainSummary = schema.new({
   id = id.from(_N, "DomainSummary"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "DomainSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      owner = schema.new({
         id = id.from(_N, "DomainSummary", "owner"),
         type = "string",
         name = "owner",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "DomainSummary", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "DomainSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      createdTime = schema.new({
         id = id.from(_N, "DomainSummary", "createdTime"),
         type = "timestamp",
         name = "createdTime",
         target_id = prelude.Timestamp.id,
      }),
      encryptionKey = schema.new({
         id = id.from(_N, "DomainSummary", "encryptionKey"),
         type = "string",
         name = "encryptionKey",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDomainsOutput = schema.new({
   id = id.from(_N, "ListDomainsResult"),
   type = "structure",
   members = {
      domains = schema.new({
         id = id.from(_N, "ListDomainsOutput", "domains"),
         type = "list",
         name = "domains",
         target_id = prelude.Document.id,
         list_member = M.DomainSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDomainsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPackageGroupsInput = schema.new({
   id = id.from(_N, "ListPackageGroupsRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "ListPackageGroupsInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "ListPackageGroupsInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListPackageGroupsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-results" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListPackageGroupsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
      prefix = schema.new({
         id = id.from(_N, "ListPackageGroupsInput", "prefix"),
         type = "string",
         name = "prefix",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "prefix" },
         },
      }),
   },
})

M.PackageGroupSummary = schema.new({
   id = id.from(_N, "PackageGroupSummary"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "PackageGroupSummary", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      pattern = schema.new({
         id = id.from(_N, "PackageGroupSummary", "pattern"),
         type = "string",
         name = "pattern",
         target_id = prelude.String.id,
      }),
      domainName = schema.new({
         id = id.from(_N, "PackageGroupSummary", "domainName"),
         type = "string",
         name = "domainName",
         target_id = prelude.String.id,
      }),
      domainOwner = schema.new({
         id = id.from(_N, "PackageGroupSummary", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
      }),
      createdTime = schema.new({
         id = id.from(_N, "PackageGroupSummary", "createdTime"),
         type = "timestamp",
         name = "createdTime",
         target_id = prelude.Timestamp.id,
      }),
      contactInfo = schema.new({
         id = id.from(_N, "PackageGroupSummary", "contactInfo"),
         type = "string",
         name = "contactInfo",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "PackageGroupSummary", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      originConfiguration = schema.new({
         id = id.from(_N, "PackageGroupSummary", "originConfiguration"),
         type = "structure",
         name = "originConfiguration",
         target_id = id.from(_N, "PackageGroupOriginConfiguration"),
         target = M.PackageGroupOriginConfiguration,
      }),
      parent = schema.new({
         id = id.from(_N, "PackageGroupSummary", "parent"),
         type = "structure",
         name = "parent",
         target_id = id.from(_N, "PackageGroupReference"),
         target = M.PackageGroupReference,
      }),
   },
})

M.ListPackageGroupsOutput = schema.new({
   id = id.from(_N, "ListPackageGroupsResult"),
   type = "structure",
   members = {
      packageGroups = schema.new({
         id = id.from(_N, "ListPackageGroupsOutput", "packageGroups"),
         type = "list",
         name = "packageGroups",
         target_id = prelude.Document.id,
         list_member = M.PackageGroupSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListPackageGroupsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPackagesInput = schema.new({
   id = id.from(_N, "ListPackagesRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "ListPackagesInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "ListPackagesInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "ListPackagesInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
      format = schema.new({
         id = id.from(_N, "ListPackagesInput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "format" },
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "ListPackagesInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namespace" },
         },
      }),
      packagePrefix = schema.new({
         id = id.from(_N, "ListPackagesInput", "packagePrefix"),
         type = "string",
         name = "packagePrefix",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "package-prefix" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListPackagesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-results" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListPackagesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
      publish = schema.new({
         id = id.from(_N, "ListPackagesInput", "publish"),
         type = "string",
         name = "publish",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "publish" },
         },
      }),
      upstream = schema.new({
         id = id.from(_N, "ListPackagesInput", "upstream"),
         type = "string",
         name = "upstream",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "upstream" },
         },
      }),
   },
})

M.ListPackagesOutput = schema.new({
   id = id.from(_N, "ListPackagesResult"),
   type = "structure",
   members = {
      packages = schema.new({
         id = id.from(_N, "ListPackagesOutput", "packages"),
         type = "list",
         name = "packages",
         target_id = prelude.Document.id,
         list_member = M.PackageSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListPackagesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPackageVersionAssetsInput = schema.new({
   id = id.from(_N, "ListPackageVersionAssetsRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "ListPackageVersionAssetsInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "ListPackageVersionAssetsInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "ListPackageVersionAssetsInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
      format = schema.new({
         id = id.from(_N, "ListPackageVersionAssetsInput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "format" },
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "ListPackageVersionAssetsInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namespace" },
         },
      }),
      package = schema.new({
         id = id.from(_N, "ListPackageVersionAssetsInput", "package"),
         type = "string",
         name = "package",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "package" },
         },
      }),
      packageVersion = schema.new({
         id = id.from(_N, "ListPackageVersionAssetsInput", "packageVersion"),
         type = "string",
         name = "packageVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "version" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListPackageVersionAssetsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-results" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListPackageVersionAssetsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
   },
})

M.ListPackageVersionAssetsOutput = schema.new({
   id = id.from(_N, "ListPackageVersionAssetsResult"),
   type = "structure",
   members = {
      format = schema.new({
         id = id.from(_N, "ListPackageVersionAssetsOutput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
      }),
      namespace = schema.new({
         id = id.from(_N, "ListPackageVersionAssetsOutput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
      }),
      package = schema.new({
         id = id.from(_N, "ListPackageVersionAssetsOutput", "package"),
         type = "string",
         name = "package",
         target_id = prelude.String.id,
      }),
      version = schema.new({
         id = id.from(_N, "ListPackageVersionAssetsOutput", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
      }),
      versionRevision = schema.new({
         id = id.from(_N, "ListPackageVersionAssetsOutput", "versionRevision"),
         type = "string",
         name = "versionRevision",
         target_id = prelude.String.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListPackageVersionAssetsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      assets = schema.new({
         id = id.from(_N, "ListPackageVersionAssetsOutput", "assets"),
         type = "list",
         name = "assets",
         target_id = prelude.Document.id,
         list_member = M.AssetSummary,
      }),
   },
})

M.ListPackageVersionDependenciesInput = schema.new({
   id = id.from(_N, "ListPackageVersionDependenciesRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "ListPackageVersionDependenciesInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "ListPackageVersionDependenciesInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "ListPackageVersionDependenciesInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
      format = schema.new({
         id = id.from(_N, "ListPackageVersionDependenciesInput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "format" },
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "ListPackageVersionDependenciesInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namespace" },
         },
      }),
      package = schema.new({
         id = id.from(_N, "ListPackageVersionDependenciesInput", "package"),
         type = "string",
         name = "package",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "package" },
         },
      }),
      packageVersion = schema.new({
         id = id.from(_N, "ListPackageVersionDependenciesInput", "packageVersion"),
         type = "string",
         name = "packageVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "version" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListPackageVersionDependenciesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
   },
})

M.PackageDependency = schema.new({
   id = id.from(_N, "PackageDependency"),
   type = "structure",
   members = {
      namespace = schema.new({
         id = id.from(_N, "PackageDependency", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
      }),
      package = schema.new({
         id = id.from(_N, "PackageDependency", "package"),
         type = "string",
         name = "package",
         target_id = prelude.String.id,
      }),
      dependencyType = schema.new({
         id = id.from(_N, "PackageDependency", "dependencyType"),
         type = "string",
         name = "dependencyType",
         target_id = prelude.String.id,
      }),
      versionRequirement = schema.new({
         id = id.from(_N, "PackageDependency", "versionRequirement"),
         type = "string",
         name = "versionRequirement",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPackageVersionDependenciesOutput = schema.new({
   id = id.from(_N, "ListPackageVersionDependenciesResult"),
   type = "structure",
   members = {
      format = schema.new({
         id = id.from(_N, "ListPackageVersionDependenciesOutput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
      }),
      namespace = schema.new({
         id = id.from(_N, "ListPackageVersionDependenciesOutput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
      }),
      package = schema.new({
         id = id.from(_N, "ListPackageVersionDependenciesOutput", "package"),
         type = "string",
         name = "package",
         target_id = prelude.String.id,
      }),
      version = schema.new({
         id = id.from(_N, "ListPackageVersionDependenciesOutput", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
      }),
      versionRevision = schema.new({
         id = id.from(_N, "ListPackageVersionDependenciesOutput", "versionRevision"),
         type = "string",
         name = "versionRevision",
         target_id = prelude.String.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListPackageVersionDependenciesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      dependencies = schema.new({
         id = id.from(_N, "ListPackageVersionDependenciesOutput", "dependencies"),
         type = "list",
         name = "dependencies",
         target_id = prelude.Document.id,
         list_member = M.PackageDependency,
      }),
   },
})

M.ListPackageVersionsInput = schema.new({
   id = id.from(_N, "ListPackageVersionsRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "ListPackageVersionsInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "ListPackageVersionsInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "ListPackageVersionsInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
      format = schema.new({
         id = id.from(_N, "ListPackageVersionsInput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "format" },
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "ListPackageVersionsInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namespace" },
         },
      }),
      package = schema.new({
         id = id.from(_N, "ListPackageVersionsInput", "package"),
         type = "string",
         name = "package",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "package" },
         },
      }),
      status = schema.new({
         id = id.from(_N, "ListPackageVersionsInput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "status" },
         },
      }),
      sortBy = schema.new({
         id = id.from(_N, "ListPackageVersionsInput", "sortBy"),
         type = "string",
         name = "sortBy",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "sortBy" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListPackageVersionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-results" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListPackageVersionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
      originType = schema.new({
         id = id.from(_N, "ListPackageVersionsInput", "originType"),
         type = "string",
         name = "originType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "originType" },
         },
      }),
   },
})

M.PackageVersionSummary = schema.new({
   id = id.from(_N, "PackageVersionSummary"),
   type = "structure",
   members = {
      version = schema.new({
         id = id.from(_N, "PackageVersionSummary", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      revision = schema.new({
         id = id.from(_N, "PackageVersionSummary", "revision"),
         type = "string",
         name = "revision",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "PackageVersionSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      origin = schema.new({
         id = id.from(_N, "PackageVersionSummary", "origin"),
         type = "structure",
         name = "origin",
         target_id = id.from(_N, "PackageVersionOrigin"),
         target = M.PackageVersionOrigin,
      }),
   },
})

M.ListPackageVersionsOutput = schema.new({
   id = id.from(_N, "ListPackageVersionsResult"),
   type = "structure",
   members = {
      defaultDisplayVersion = schema.new({
         id = id.from(_N, "ListPackageVersionsOutput", "defaultDisplayVersion"),
         type = "string",
         name = "defaultDisplayVersion",
         target_id = prelude.String.id,
      }),
      format = schema.new({
         id = id.from(_N, "ListPackageVersionsOutput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
      }),
      namespace = schema.new({
         id = id.from(_N, "ListPackageVersionsOutput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
      }),
      package = schema.new({
         id = id.from(_N, "ListPackageVersionsOutput", "package"),
         type = "string",
         name = "package",
         target_id = prelude.String.id,
      }),
      versions = schema.new({
         id = id.from(_N, "ListPackageVersionsOutput", "versions"),
         type = "list",
         name = "versions",
         target_id = prelude.Document.id,
         list_member = M.PackageVersionSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListPackageVersionsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRepositoriesInput = schema.new({
   id = id.from(_N, "ListRepositoriesRequest"),
   type = "structure",
   members = {
      repositoryPrefix = schema.new({
         id = id.from(_N, "ListRepositoriesInput", "repositoryPrefix"),
         type = "string",
         name = "repositoryPrefix",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "repository-prefix" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListRepositoriesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-results" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListRepositoriesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
   },
})

M.RepositorySummary = schema.new({
   id = id.from(_N, "RepositorySummary"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "RepositorySummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      administratorAccount = schema.new({
         id = id.from(_N, "RepositorySummary", "administratorAccount"),
         type = "string",
         name = "administratorAccount",
         target_id = prelude.String.id,
      }),
      domainName = schema.new({
         id = id.from(_N, "RepositorySummary", "domainName"),
         type = "string",
         name = "domainName",
         target_id = prelude.String.id,
      }),
      domainOwner = schema.new({
         id = id.from(_N, "RepositorySummary", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "RepositorySummary", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "RepositorySummary", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      createdTime = schema.new({
         id = id.from(_N, "RepositorySummary", "createdTime"),
         type = "timestamp",
         name = "createdTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListRepositoriesOutput = schema.new({
   id = id.from(_N, "ListRepositoriesResult"),
   type = "structure",
   members = {
      repositories = schema.new({
         id = id.from(_N, "ListRepositoriesOutput", "repositories"),
         type = "list",
         name = "repositories",
         target_id = prelude.Document.id,
         list_member = M.RepositorySummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListRepositoriesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRepositoriesInDomainInput = schema.new({
   id = id.from(_N, "ListRepositoriesInDomainRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "ListRepositoriesInDomainInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "ListRepositoriesInDomainInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      administratorAccount = schema.new({
         id = id.from(_N, "ListRepositoriesInDomainInput", "administratorAccount"),
         type = "string",
         name = "administratorAccount",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "administrator-account" },
         },
      }),
      repositoryPrefix = schema.new({
         id = id.from(_N, "ListRepositoriesInDomainInput", "repositoryPrefix"),
         type = "string",
         name = "repositoryPrefix",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "repository-prefix" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListRepositoriesInDomainInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-results" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListRepositoriesInDomainInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
   },
})

M.ListRepositoriesInDomainOutput = schema.new({
   id = id.from(_N, "ListRepositoriesInDomainResult"),
   type = "structure",
   members = {
      repositories = schema.new({
         id = id.from(_N, "ListRepositoriesInDomainOutput", "repositories"),
         type = "list",
         name = "repositories",
         target_id = prelude.Document.id,
         list_member = M.RepositorySummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListRepositoriesInDomainOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSubPackageGroupsInput = schema.new({
   id = id.from(_N, "ListSubPackageGroupsRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "ListSubPackageGroupsInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "ListSubPackageGroupsInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      packageGroup = schema.new({
         id = id.from(_N, "ListSubPackageGroupsInput", "packageGroup"),
         type = "string",
         name = "packageGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "package-group" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListSubPackageGroupsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-results" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListSubPackageGroupsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
   },
})

M.ListSubPackageGroupsOutput = schema.new({
   id = id.from(_N, "ListSubPackageGroupsResult"),
   type = "structure",
   members = {
      packageGroups = schema.new({
         id = id.from(_N, "ListSubPackageGroupsOutput", "packageGroups"),
         type = "list",
         name = "packageGroups",
         target_id = prelude.Document.id,
         list_member = M.PackageGroupSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListSubPackageGroupsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTagsForResourceInput = schema.new({
   id = id.from(_N, "ListTagsForResourceRequest"),
   type = "structure",
   members = {
      resourceArn = schema.new({
         id = id.from(_N, "ListTagsForResourceInput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "resourceArn" },
         },
      }),
   },
})

M.ListTagsForResourceOutput = schema.new({
   id = id.from(_N, "ListTagsForResourceResult"),
   type = "structure",
   members = {
      tags = schema.new({
         id = id.from(_N, "ListTagsForResourceOutput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.PublishPackageVersionInput = schema.new({
   id = id.from(_N, "PublishPackageVersionRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "PublishPackageVersionInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "PublishPackageVersionInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "PublishPackageVersionInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
      format = schema.new({
         id = id.from(_N, "PublishPackageVersionInput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "format" },
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "PublishPackageVersionInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namespace" },
         },
      }),
      package = schema.new({
         id = id.from(_N, "PublishPackageVersionInput", "package"),
         type = "string",
         name = "package",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "package" },
         },
      }),
      packageVersion = schema.new({
         id = id.from(_N, "PublishPackageVersionInput", "packageVersion"),
         type = "string",
         name = "packageVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "version" },
         },
      }),
      assetContent = schema.new({
         id = id.from(_N, "PublishPackageVersionInput", "assetContent"),
         type = "blob",
         name = "assetContent",
         target_id = prelude.Blob.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.STREAMING] = {},
         },
         direct_traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      assetName = schema.new({
         id = id.from(_N, "PublishPackageVersionInput", "assetName"),
         type = "string",
         name = "assetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "asset" },
         },
      }),
      assetSHA256 = schema.new({
         id = id.from(_N, "PublishPackageVersionInput", "assetSHA256"),
         type = "string",
         name = "assetSHA256",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "x-amz-content-sha256" },
         },
      }),
      unfinished = schema.new({
         id = id.from(_N, "PublishPackageVersionInput", "unfinished"),
         type = "boolean",
         name = "unfinished",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "unfinished" },
         },
      }),
   },
})

M.PublishPackageVersionOutput = schema.new({
   id = id.from(_N, "PublishPackageVersionResult"),
   type = "structure",
   members = {
      format = schema.new({
         id = id.from(_N, "PublishPackageVersionOutput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
      }),
      namespace = schema.new({
         id = id.from(_N, "PublishPackageVersionOutput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
      }),
      package = schema.new({
         id = id.from(_N, "PublishPackageVersionOutput", "package"),
         type = "string",
         name = "package",
         target_id = prelude.String.id,
      }),
      version = schema.new({
         id = id.from(_N, "PublishPackageVersionOutput", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
      }),
      versionRevision = schema.new({
         id = id.from(_N, "PublishPackageVersionOutput", "versionRevision"),
         type = "string",
         name = "versionRevision",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "PublishPackageVersionOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      asset = schema.new({
         id = id.from(_N, "PublishPackageVersionOutput", "asset"),
         type = "structure",
         name = "asset",
         target_id = id.from(_N, "AssetSummary"),
         target = M.AssetSummary,
      }),
   },
})

M.PutDomainPermissionsPolicyInput = schema.new({
   id = id.from(_N, "PutDomainPermissionsPolicyRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "PutDomainPermissionsPolicyInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "PutDomainPermissionsPolicyInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
      }),
      policyRevision = schema.new({
         id = id.from(_N, "PutDomainPermissionsPolicyInput", "policyRevision"),
         type = "string",
         name = "policyRevision",
         target_id = prelude.String.id,
      }),
      policyDocument = schema.new({
         id = id.from(_N, "PutDomainPermissionsPolicyInput", "policyDocument"),
         type = "string",
         name = "policyDocument",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutDomainPermissionsPolicyOutput = schema.new({
   id = id.from(_N, "PutDomainPermissionsPolicyResult"),
   type = "structure",
   members = {
      policy = schema.new({
         id = id.from(_N, "PutDomainPermissionsPolicyOutput", "policy"),
         type = "structure",
         name = "policy",
         target_id = id.from(_N, "ResourcePolicy"),
         target = M.ResourcePolicy,
      }),
   },
})

M.PutPackageOriginConfigurationInput = schema.new({
   id = id.from(_N, "PutPackageOriginConfigurationRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "PutPackageOriginConfigurationInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "PutPackageOriginConfigurationInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "PutPackageOriginConfigurationInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
      format = schema.new({
         id = id.from(_N, "PutPackageOriginConfigurationInput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "format" },
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "PutPackageOriginConfigurationInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namespace" },
         },
      }),
      package = schema.new({
         id = id.from(_N, "PutPackageOriginConfigurationInput", "package"),
         type = "string",
         name = "package",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "package" },
         },
      }),
      restrictions = schema.new({
         id = id.from(_N, "PutPackageOriginConfigurationInput", "restrictions"),
         type = "structure",
         name = "restrictions",
         target_id = id.from(_N, "PackageOriginRestrictions"),
         target = M.PackageOriginRestrictions,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutPackageOriginConfigurationOutput = schema.new({
   id = id.from(_N, "PutPackageOriginConfigurationResult"),
   type = "structure",
   members = {
      originConfiguration = schema.new({
         id = id.from(_N, "PutPackageOriginConfigurationOutput", "originConfiguration"),
         type = "structure",
         name = "originConfiguration",
         target_id = id.from(_N, "PackageOriginConfiguration"),
         target = M.PackageOriginConfiguration,
      }),
   },
})

M.PutRepositoryPermissionsPolicyInput = schema.new({
   id = id.from(_N, "PutRepositoryPermissionsPolicyRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "PutRepositoryPermissionsPolicyInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "PutRepositoryPermissionsPolicyInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "PutRepositoryPermissionsPolicyInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
      policyRevision = schema.new({
         id = id.from(_N, "PutRepositoryPermissionsPolicyInput", "policyRevision"),
         type = "string",
         name = "policyRevision",
         target_id = prelude.String.id,
      }),
      policyDocument = schema.new({
         id = id.from(_N, "PutRepositoryPermissionsPolicyInput", "policyDocument"),
         type = "string",
         name = "policyDocument",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutRepositoryPermissionsPolicyOutput = schema.new({
   id = id.from(_N, "PutRepositoryPermissionsPolicyResult"),
   type = "structure",
   members = {
      policy = schema.new({
         id = id.from(_N, "PutRepositoryPermissionsPolicyOutput", "policy"),
         type = "structure",
         name = "policy",
         target_id = id.from(_N, "ResourcePolicy"),
         target = M.ResourcePolicy,
      }),
   },
})

M.TagResourceInput = schema.new({
   id = id.from(_N, "TagResourceRequest"),
   type = "structure",
   members = {
      resourceArn = schema.new({
         id = id.from(_N, "TagResourceInput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "resourceArn" },
         },
      }),
      tags = schema.new({
         id = id.from(_N, "TagResourceInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TagResourceOutput = schema.new({
   id = id.from(_N, "TagResourceResult"),
   type = "structure",
})

M.UntagResourceInput = schema.new({
   id = id.from(_N, "UntagResourceRequest"),
   type = "structure",
   members = {
      resourceArn = schema.new({
         id = id.from(_N, "UntagResourceInput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "resourceArn" },
         },
      }),
      tagKeys = schema.new({
         id = id.from(_N, "UntagResourceInput", "tagKeys"),
         type = "list",
         name = "tagKeys",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UntagResourceOutput = schema.new({
   id = id.from(_N, "UntagResourceResult"),
   type = "structure",
})

M.UpdatePackageGroupInput = schema.new({
   id = id.from(_N, "UpdatePackageGroupRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "UpdatePackageGroupInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "UpdatePackageGroupInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      packageGroup = schema.new({
         id = id.from(_N, "UpdatePackageGroupInput", "packageGroup"),
         type = "string",
         name = "packageGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      contactInfo = schema.new({
         id = id.from(_N, "UpdatePackageGroupInput", "contactInfo"),
         type = "string",
         name = "contactInfo",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "UpdatePackageGroupInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdatePackageGroupOutput = schema.new({
   id = id.from(_N, "UpdatePackageGroupResult"),
   type = "structure",
   members = {
      packageGroup = schema.new({
         id = id.from(_N, "UpdatePackageGroupOutput", "packageGroup"),
         type = "structure",
         name = "packageGroup",
         target_id = id.from(_N, "PackageGroupDescription"),
         target = M.PackageGroupDescription,
      }),
   },
})

M.PackageGroupAllowedRepository = schema.new({
   id = id.from(_N, "PackageGroupAllowedRepository"),
   type = "structure",
   members = {
      repositoryName = schema.new({
         id = id.from(_N, "PackageGroupAllowedRepository", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
      }),
      originRestrictionType = schema.new({
         id = id.from(_N, "PackageGroupAllowedRepository", "originRestrictionType"),
         type = "string",
         name = "originRestrictionType",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdatePackageGroupOriginConfigurationInput = schema.new({
   id = id.from(_N, "UpdatePackageGroupOriginConfigurationRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "UpdatePackageGroupOriginConfigurationInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "UpdatePackageGroupOriginConfigurationInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      packageGroup = schema.new({
         id = id.from(_N, "UpdatePackageGroupOriginConfigurationInput", "packageGroup"),
         type = "string",
         name = "packageGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "package-group" },
         },
      }),
      restrictions = schema.new({
         id = id.from(_N, "UpdatePackageGroupOriginConfigurationInput", "restrictions"),
         type = "map",
         name = "restrictions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      addAllowedRepositories = schema.new({
         id = id.from(_N, "UpdatePackageGroupOriginConfigurationInput", "addAllowedRepositories"),
         type = "list",
         name = "addAllowedRepositories",
         target_id = prelude.Document.id,
         list_member = M.PackageGroupAllowedRepository,
      }),
      removeAllowedRepositories = schema.new({
         id = id.from(_N, "UpdatePackageGroupOriginConfigurationInput", "removeAllowedRepositories"),
         type = "list",
         name = "removeAllowedRepositories",
         target_id = prelude.Document.id,
         list_member = M.PackageGroupAllowedRepository,
      }),
   },
})

M.UpdatePackageGroupOriginConfigurationOutput = schema.new({
   id = id.from(_N, "UpdatePackageGroupOriginConfigurationResult"),
   type = "structure",
   members = {
      packageGroup = schema.new({
         id = id.from(_N, "UpdatePackageGroupOriginConfigurationOutput", "packageGroup"),
         type = "structure",
         name = "packageGroup",
         target_id = id.from(_N, "PackageGroupDescription"),
         target = M.PackageGroupDescription,
      }),
      allowedRepositoryUpdates = schema.new({
         id = id.from(_N, "UpdatePackageGroupOriginConfigurationOutput", "allowedRepositoryUpdates"),
         type = "map",
         name = "allowedRepositoryUpdates",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "map", map_key = prelude.String, map_value = M.RepositoryNameList }),
      }),
   },
})

M.UpdatePackageVersionsStatusInput = schema.new({
   id = id.from(_N, "UpdatePackageVersionsStatusRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "UpdatePackageVersionsStatusInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "UpdatePackageVersionsStatusInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "UpdatePackageVersionsStatusInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
      format = schema.new({
         id = id.from(_N, "UpdatePackageVersionsStatusInput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "format" },
         },
      }),
      namespace = schema.new({
         id = id.from(_N, "UpdatePackageVersionsStatusInput", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "namespace" },
         },
      }),
      package = schema.new({
         id = id.from(_N, "UpdatePackageVersionsStatusInput", "package"),
         type = "string",
         name = "package",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "package" },
         },
      }),
      versions = schema.new({
         id = id.from(_N, "UpdatePackageVersionsStatusInput", "versions"),
         type = "list",
         name = "versions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      versionRevisions = schema.new({
         id = id.from(_N, "UpdatePackageVersionsStatusInput", "versionRevisions"),
         type = "map",
         name = "versionRevisions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      expectedStatus = schema.new({
         id = id.from(_N, "UpdatePackageVersionsStatusInput", "expectedStatus"),
         type = "string",
         name = "expectedStatus",
         target_id = prelude.String.id,
      }),
      targetStatus = schema.new({
         id = id.from(_N, "UpdatePackageVersionsStatusInput", "targetStatus"),
         type = "string",
         name = "targetStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdatePackageVersionsStatusOutput = schema.new({
   id = id.from(_N, "UpdatePackageVersionsStatusResult"),
   type = "structure",
   members = {
      successfulVersions = schema.new({
         id = id.from(_N, "UpdatePackageVersionsStatusOutput", "successfulVersions"),
         type = "map",
         name = "successfulVersions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.SuccessfulPackageVersionInfo,
      }),
      failedVersions = schema.new({
         id = id.from(_N, "UpdatePackageVersionsStatusOutput", "failedVersions"),
         type = "map",
         name = "failedVersions",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.PackageVersionError,
      }),
   },
})

M.UpdateRepositoryInput = schema.new({
   id = id.from(_N, "UpdateRepositoryRequest"),
   type = "structure",
   members = {
      domain = schema.new({
         id = id.from(_N, "UpdateRepositoryInput", "domain"),
         type = "string",
         name = "domain",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "domain" },
         },
      }),
      domainOwner = schema.new({
         id = id.from(_N, "UpdateRepositoryInput", "domainOwner"),
         type = "string",
         name = "domainOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "domain-owner" },
         },
      }),
      repository = schema.new({
         id = id.from(_N, "UpdateRepositoryInput", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "repository" },
         },
      }),
      description = schema.new({
         id = id.from(_N, "UpdateRepositoryInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      upstreams = schema.new({
         id = id.from(_N, "UpdateRepositoryInput", "upstreams"),
         type = "list",
         name = "upstreams",
         target_id = prelude.Document.id,
         list_member = M.UpstreamRepository,
      }),
   },
})

M.UpdateRepositoryOutput = schema.new({
   id = id.from(_N, "UpdateRepositoryResult"),
   type = "structure",
   members = {
      repository = schema.new({
         id = id.from(_N, "UpdateRepositoryOutput", "repository"),
         type = "structure",
         name = "repository",
         target_id = id.from(_N, "RepositoryDescription"),
         target = M.RepositoryDescription,
      }),
   },
})


for _, s in pairs(M) do
   if type(s) == "table" and (s.type == "structure" or s.type == "union") then
      local members = rawget(s, "_members")
      if members then
         for _, ms in pairs(members) do
            if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
               rawset(ms, "_target", M[ms.target_id.name])
            end
         end
      end
   end
end

M.Service = schema.service({
   id = id.from("com.amazonaws.codeartifact", "CodeArtifactControlPlaneService"),
   version = "2018-09-22",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociateExternalConnection = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "AssociateExternalConnection"),
   input = M.AssociateExternalConnectionInput,
   output = M.AssociateExternalConnectionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/repository/external-connection" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CopyPackageVersions = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "CopyPackageVersions"),
   input = M.CopyPackageVersionsInput,
   output = M.CopyPackageVersionsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/package/versions/copy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateDomain = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "CreateDomain"),
   input = M.CreateDomainInput,
   output = M.CreateDomainOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/domain" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreatePackageGroup = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "CreatePackageGroup"),
   input = M.CreatePackageGroupInput,
   output = M.CreatePackageGroupOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/package-group" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateRepository = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "CreateRepository"),
   input = M.CreateRepositoryInput,
   output = M.CreateRepositoryOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/repository" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteDomain = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "DeleteDomain"),
   input = M.DeleteDomainInput,
   output = M.DeleteDomainOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/domain" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteDomainPermissionsPolicy = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "DeleteDomainPermissionsPolicy"),
   input = M.DeleteDomainPermissionsPolicyInput,
   output = M.DeleteDomainPermissionsPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/domain/permissions/policy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeletePackage = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "DeletePackage"),
   input = M.DeletePackageInput,
   output = M.DeletePackageOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/package" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeletePackageGroup = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "DeletePackageGroup"),
   input = M.DeletePackageGroupInput,
   output = M.DeletePackageGroupOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/package-group" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeletePackageVersions = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "DeletePackageVersions"),
   input = M.DeletePackageVersionsInput,
   output = M.DeletePackageVersionsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/package/versions/delete" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteRepository = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "DeleteRepository"),
   input = M.DeleteRepositoryInput,
   output = M.DeleteRepositoryOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/repository" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteRepositoryPermissionsPolicy = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "DeleteRepositoryPermissionsPolicy"),
   input = M.DeleteRepositoryPermissionsPolicyInput,
   output = M.DeleteRepositoryPermissionsPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/repository/permissions/policies" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeDomain = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "DescribeDomain"),
   input = M.DescribeDomainInput,
   output = M.DescribeDomainOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/domain" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribePackage = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "DescribePackage"),
   input = M.DescribePackageInput,
   output = M.DescribePackageOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/package" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribePackageGroup = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "DescribePackageGroup"),
   input = M.DescribePackageGroupInput,
   output = M.DescribePackageGroupOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/package-group" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribePackageVersion = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "DescribePackageVersion"),
   input = M.DescribePackageVersionInput,
   output = M.DescribePackageVersionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/package/version" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeRepository = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "DescribeRepository"),
   input = M.DescribeRepositoryInput,
   output = M.DescribeRepositoryOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/repository" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociateExternalConnection = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "DisassociateExternalConnection"),
   input = M.DisassociateExternalConnectionInput,
   output = M.DisassociateExternalConnectionOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/repository/external-connection" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisposePackageVersions = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "DisposePackageVersions"),
   input = M.DisposePackageVersionsInput,
   output = M.DisposePackageVersionsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/package/versions/dispose" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAssociatedPackageGroup = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "GetAssociatedPackageGroup"),
   input = M.GetAssociatedPackageGroupInput,
   output = M.GetAssociatedPackageGroupOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/get-associated-package-group" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAuthorizationToken = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "GetAuthorizationToken"),
   input = M.GetAuthorizationTokenInput,
   output = M.GetAuthorizationTokenOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/authorization-token" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDomainPermissionsPolicy = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "GetDomainPermissionsPolicy"),
   input = M.GetDomainPermissionsPolicyInput,
   output = M.GetDomainPermissionsPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/domain/permissions/policy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetPackageVersionAsset = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "GetPackageVersionAsset"),
   input = M.GetPackageVersionAssetInput,
   output = M.GetPackageVersionAssetOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/package/version/asset" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetPackageVersionReadme = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "GetPackageVersionReadme"),
   input = M.GetPackageVersionReadmeInput,
   output = M.GetPackageVersionReadmeOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/package/version/readme" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRepositoryEndpoint = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "GetRepositoryEndpoint"),
   input = M.GetRepositoryEndpointInput,
   output = M.GetRepositoryEndpointOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/repository/endpoint" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRepositoryPermissionsPolicy = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "GetRepositoryPermissionsPolicy"),
   input = M.GetRepositoryPermissionsPolicyInput,
   output = M.GetRepositoryPermissionsPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/repository/permissions/policy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAllowedRepositoriesForGroup = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "ListAllowedRepositoriesForGroup"),
   input = M.ListAllowedRepositoriesForGroupInput,
   output = M.ListAllowedRepositoriesForGroupOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/package-group-allowed-repositories" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAssociatedPackages = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "ListAssociatedPackages"),
   input = M.ListAssociatedPackagesInput,
   output = M.ListAssociatedPackagesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/list-associated-packages" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDomains = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "ListDomains"),
   input = M.ListDomainsInput,
   output = M.ListDomainsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/domains" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPackageGroups = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "ListPackageGroups"),
   input = M.ListPackageGroupsInput,
   output = M.ListPackageGroupsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/package-groups" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPackages = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "ListPackages"),
   input = M.ListPackagesInput,
   output = M.ListPackagesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/packages" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPackageVersionAssets = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "ListPackageVersionAssets"),
   input = M.ListPackageVersionAssetsInput,
   output = M.ListPackageVersionAssetsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/package/version/assets" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPackageVersionDependencies = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "ListPackageVersionDependencies"),
   input = M.ListPackageVersionDependenciesInput,
   output = M.ListPackageVersionDependenciesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/package/version/dependencies" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPackageVersions = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "ListPackageVersions"),
   input = M.ListPackageVersionsInput,
   output = M.ListPackageVersionsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/package/versions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRepositories = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "ListRepositories"),
   input = M.ListRepositoriesInput,
   output = M.ListRepositoriesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/repositories" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRepositoriesInDomain = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "ListRepositoriesInDomain"),
   input = M.ListRepositoriesInDomainInput,
   output = M.ListRepositoriesInDomainOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/domain/repositories" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSubPackageGroups = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "ListSubPackageGroups"),
   input = M.ListSubPackageGroupsInput,
   output = M.ListSubPackageGroupsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/package-groups/sub-groups" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/tags" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PublishPackageVersion = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "PublishPackageVersion"),
   input = M.PublishPackageVersionInput,
   output = M.PublishPackageVersionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/package/version/publish" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutDomainPermissionsPolicy = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "PutDomainPermissionsPolicy"),
   input = M.PutDomainPermissionsPolicyInput,
   output = M.PutDomainPermissionsPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/domain/permissions/policy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutPackageOriginConfiguration = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "PutPackageOriginConfiguration"),
   input = M.PutPackageOriginConfigurationInput,
   output = M.PutPackageOriginConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/package" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutRepositoryPermissionsPolicy = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "PutRepositoryPermissionsPolicy"),
   input = M.PutRepositoryPermissionsPolicyInput,
   output = M.PutRepositoryPermissionsPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/repository/permissions/policy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/tag" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/untag" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdatePackageGroup = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "UpdatePackageGroup"),
   input = M.UpdatePackageGroupInput,
   output = M.UpdatePackageGroupOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/package-group" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdatePackageGroupOriginConfiguration = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "UpdatePackageGroupOriginConfiguration"),
   input = M.UpdatePackageGroupOriginConfigurationInput,
   output = M.UpdatePackageGroupOriginConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/package-group-origin-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdatePackageVersionsStatus = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "UpdatePackageVersionsStatus"),
   input = M.UpdatePackageVersionsStatusInput,
   output = M.UpdatePackageVersionsStatusOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/package/versions/update_status" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateRepository = schema.operation({
   id = id.from("com.amazonaws.codeartifact", "UpdateRepository"),
   input = M.UpdateRepositoryInput,
   output = M.UpdateRepositoryOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/repository" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
