

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.ecrpublic"

local M = {}

M.BatchedOperationLayerDigestList = schema.new({ type = "list", list_member = prelude.String })

M.LayerList = schema.new({ type = "list", list_member = M.Layer })

M.LayerFailureList = schema.new({ type = "list", list_member = M.LayerFailure })

M.ImageIdentifierList = schema.new({ type = "list", list_member = M.ImageIdentifier })

M.ImageFailureList = schema.new({ type = "list", list_member = M.ImageFailure })

M.LayerDigestList = schema.new({ type = "list", list_member = prelude.String })

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.ImageDetailList = schema.new({ type = "list", list_member = M.ImageDetail })

M.ImageTagDetailList = schema.new({ type = "list", list_member = M.ImageTagDetail })

M.RegistryList = schema.new({ type = "list", list_member = M.Registry })

M.RepositoryNameList = schema.new({ type = "list", list_member = prelude.String })

M.RepositoryList = schema.new({ type = "list", list_member = M.Repository })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.ArchitectureList = schema.new({ type = "list", list_member = prelude.String })

M.OperatingSystemList = schema.new({ type = "list", list_member = prelude.String })

M.ImageTagList = schema.new({ type = "list", list_member = prelude.String })

M.RegistryAliasList = schema.new({ type = "list", list_member = M.RegistryAlias })

M.AuthorizationData = schema.new({
   id = id.from(_N, "AuthorizationData"),
   type = "structure",
   members = {
      authorizationToken = schema.new({
         id = id.from(_N, "AuthorizationData", "authorizationToken"),
         type = "string",
         name = "authorizationToken",
         target_id = prelude.String.id,
      }),
      expiresAt = schema.new({
         id = id.from(_N, "AuthorizationData", "expiresAt"),
         type = "timestamp",
         name = "expiresAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.BatchCheckLayerAvailabilityInput = schema.new({
   id = id.from(_N, "BatchCheckLayerAvailabilityRequest"),
   type = "structure",
   members = {
      registryId = schema.new({
         id = id.from(_N, "BatchCheckLayerAvailabilityInput", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryName = schema.new({
         id = id.from(_N, "BatchCheckLayerAvailabilityInput", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      layerDigests = schema.new({
         id = id.from(_N, "BatchCheckLayerAvailabilityInput", "layerDigests"),
         type = "list",
         name = "layerDigests",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.LayerFailure = schema.new({
   id = id.from(_N, "LayerFailure"),
   type = "structure",
   members = {
      layerDigest = schema.new({
         id = id.from(_N, "LayerFailure", "layerDigest"),
         type = "string",
         name = "layerDigest",
         target_id = prelude.String.id,
      }),
      failureCode = schema.new({
         id = id.from(_N, "LayerFailure", "failureCode"),
         type = "string",
         name = "failureCode",
         target_id = prelude.String.id,
      }),
      failureReason = schema.new({
         id = id.from(_N, "LayerFailure", "failureReason"),
         type = "string",
         name = "failureReason",
         target_id = prelude.String.id,
      }),
   },
})

M.Layer = schema.new({
   id = id.from(_N, "Layer"),
   type = "structure",
   members = {
      layerDigest = schema.new({
         id = id.from(_N, "Layer", "layerDigest"),
         type = "string",
         name = "layerDigest",
         target_id = prelude.String.id,
      }),
      layerAvailability = schema.new({
         id = id.from(_N, "Layer", "layerAvailability"),
         type = "string",
         name = "layerAvailability",
         target_id = prelude.String.id,
      }),
      layerSize = schema.new({
         id = id.from(_N, "Layer", "layerSize"),
         type = "long",
         name = "layerSize",
         target_id = prelude.Long.id,
      }),
      mediaType = schema.new({
         id = id.from(_N, "Layer", "mediaType"),
         type = "string",
         name = "mediaType",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchCheckLayerAvailabilityOutput = schema.new({
   id = id.from(_N, "BatchCheckLayerAvailabilityResponse"),
   type = "structure",
   members = {
      layers = schema.new({
         id = id.from(_N, "BatchCheckLayerAvailabilityOutput", "layers"),
         type = "list",
         name = "layers",
         target_id = prelude.Document.id,
         list_member = M.Layer,
      }),
      failures = schema.new({
         id = id.from(_N, "BatchCheckLayerAvailabilityOutput", "failures"),
         type = "list",
         name = "failures",
         target_id = prelude.Document.id,
         list_member = M.LayerFailure,
      }),
   },
})

M.InvalidParameterException = schema.new({
   id = id.from(_N, "InvalidParameterException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidParameterException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.RegistryNotFoundException = schema.new({
   id = id.from(_N, "RegistryNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "RegistryNotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.RepositoryNotFoundException = schema.new({
   id = id.from(_N, "RepositoryNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "RepositoryNotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ServerException = schema.new({
   id = id.from(_N, "ServerException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ServerException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.UnsupportedCommandException = schema.new({
   id = id.from(_N, "UnsupportedCommandException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "UnsupportedCommandException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ImageIdentifier = schema.new({
   id = id.from(_N, "ImageIdentifier"),
   type = "structure",
   members = {
      imageDigest = schema.new({
         id = id.from(_N, "ImageIdentifier", "imageDigest"),
         type = "string",
         name = "imageDigest",
         target_id = prelude.String.id,
      }),
      imageTag = schema.new({
         id = id.from(_N, "ImageIdentifier", "imageTag"),
         type = "string",
         name = "imageTag",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchDeleteImageInput = schema.new({
   id = id.from(_N, "BatchDeleteImageRequest"),
   type = "structure",
   members = {
      registryId = schema.new({
         id = id.from(_N, "BatchDeleteImageInput", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryName = schema.new({
         id = id.from(_N, "BatchDeleteImageInput", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      imageIds = schema.new({
         id = id.from(_N, "BatchDeleteImageInput", "imageIds"),
         type = "list",
         name = "imageIds",
         target_id = prelude.Document.id,
         list_member = M.ImageIdentifier,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ImageFailure = schema.new({
   id = id.from(_N, "ImageFailure"),
   type = "structure",
   members = {
      imageId = schema.new({
         id = id.from(_N, "ImageFailure", "imageId"),
         type = "structure",
         name = "imageId",
         target_id = id.from(_N, "ImageIdentifier"),
         target = M.ImageIdentifier,
      }),
      failureCode = schema.new({
         id = id.from(_N, "ImageFailure", "failureCode"),
         type = "string",
         name = "failureCode",
         target_id = prelude.String.id,
      }),
      failureReason = schema.new({
         id = id.from(_N, "ImageFailure", "failureReason"),
         type = "string",
         name = "failureReason",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchDeleteImageOutput = schema.new({
   id = id.from(_N, "BatchDeleteImageResponse"),
   type = "structure",
   members = {
      imageIds = schema.new({
         id = id.from(_N, "BatchDeleteImageOutput", "imageIds"),
         type = "list",
         name = "imageIds",
         target_id = prelude.Document.id,
         list_member = M.ImageIdentifier,
      }),
      failures = schema.new({
         id = id.from(_N, "BatchDeleteImageOutput", "failures"),
         type = "list",
         name = "failures",
         target_id = prelude.Document.id,
         list_member = M.ImageFailure,
      }),
   },
})

M.CompleteLayerUploadInput = schema.new({
   id = id.from(_N, "CompleteLayerUploadRequest"),
   type = "structure",
   members = {
      registryId = schema.new({
         id = id.from(_N, "CompleteLayerUploadInput", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryName = schema.new({
         id = id.from(_N, "CompleteLayerUploadInput", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      uploadId = schema.new({
         id = id.from(_N, "CompleteLayerUploadInput", "uploadId"),
         type = "string",
         name = "uploadId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      layerDigests = schema.new({
         id = id.from(_N, "CompleteLayerUploadInput", "layerDigests"),
         type = "list",
         name = "layerDigests",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CompleteLayerUploadOutput = schema.new({
   id = id.from(_N, "CompleteLayerUploadResponse"),
   type = "structure",
   members = {
      registryId = schema.new({
         id = id.from(_N, "CompleteLayerUploadOutput", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryName = schema.new({
         id = id.from(_N, "CompleteLayerUploadOutput", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
      }),
      uploadId = schema.new({
         id = id.from(_N, "CompleteLayerUploadOutput", "uploadId"),
         type = "string",
         name = "uploadId",
         target_id = prelude.String.id,
      }),
      layerDigest = schema.new({
         id = id.from(_N, "CompleteLayerUploadOutput", "layerDigest"),
         type = "string",
         name = "layerDigest",
         target_id = prelude.String.id,
      }),
   },
})

M.EmptyUploadException = schema.new({
   id = id.from(_N, "EmptyUploadException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "EmptyUploadException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidLayerException = schema.new({
   id = id.from(_N, "InvalidLayerException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidLayerException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.LayerAlreadyExistsException = schema.new({
   id = id.from(_N, "LayerAlreadyExistsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "LayerAlreadyExistsException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.LayerPartTooSmallException = schema.new({
   id = id.from(_N, "LayerPartTooSmallException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "LayerPartTooSmallException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.UploadNotFoundException = schema.new({
   id = id.from(_N, "UploadNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "UploadNotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.RepositoryCatalogDataInput = schema.new({
   id = id.from(_N, "RepositoryCatalogDataInput"),
   type = "structure",
   members = {
      description = schema.new({
         id = id.from(_N, "RepositoryCatalogDataInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      architectures = schema.new({
         id = id.from(_N, "RepositoryCatalogDataInput", "architectures"),
         type = "list",
         name = "architectures",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      operatingSystems = schema.new({
         id = id.from(_N, "RepositoryCatalogDataInput", "operatingSystems"),
         type = "list",
         name = "operatingSystems",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      logoImageBlob = schema.new({
         id = id.from(_N, "RepositoryCatalogDataInput", "logoImageBlob"),
         type = "blob",
         name = "logoImageBlob",
         target_id = prelude.Blob.id,
      }),
      aboutText = schema.new({
         id = id.from(_N, "RepositoryCatalogDataInput", "aboutText"),
         type = "string",
         name = "aboutText",
         target_id = prelude.String.id,
      }),
      usageText = schema.new({
         id = id.from(_N, "RepositoryCatalogDataInput", "usageText"),
         type = "string",
         name = "usageText",
         target_id = prelude.String.id,
      }),
   },
})

M.Tag = schema.new({
   id = id.from(_N, "Tag"),
   type = "structure",
   members = {
      Key = schema.new({
         id = id.from(_N, "Tag", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
      }),
      Value = schema.new({
         id = id.from(_N, "Tag", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateRepositoryInput = schema.new({
   id = id.from(_N, "CreateRepositoryRequest"),
   type = "structure",
   members = {
      repositoryName = schema.new({
         id = id.from(_N, "CreateRepositoryInput", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      catalogData = schema.new({
         id = id.from(_N, "CreateRepositoryInput", "catalogData"),
         type = "structure",
         name = "catalogData",
         target_id = id.from(_N, "RepositoryCatalogDataInput"),
         target = M.RepositoryCatalogDataInput,
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

M.RepositoryCatalogData = schema.new({
   id = id.from(_N, "RepositoryCatalogData"),
   type = "structure",
   members = {
      description = schema.new({
         id = id.from(_N, "RepositoryCatalogData", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      architectures = schema.new({
         id = id.from(_N, "RepositoryCatalogData", "architectures"),
         type = "list",
         name = "architectures",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      operatingSystems = schema.new({
         id = id.from(_N, "RepositoryCatalogData", "operatingSystems"),
         type = "list",
         name = "operatingSystems",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      logoUrl = schema.new({
         id = id.from(_N, "RepositoryCatalogData", "logoUrl"),
         type = "string",
         name = "logoUrl",
         target_id = prelude.String.id,
      }),
      aboutText = schema.new({
         id = id.from(_N, "RepositoryCatalogData", "aboutText"),
         type = "string",
         name = "aboutText",
         target_id = prelude.String.id,
      }),
      usageText = schema.new({
         id = id.from(_N, "RepositoryCatalogData", "usageText"),
         type = "string",
         name = "usageText",
         target_id = prelude.String.id,
      }),
      marketplaceCertified = schema.new({
         id = id.from(_N, "RepositoryCatalogData", "marketplaceCertified"),
         type = "boolean",
         name = "marketplaceCertified",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.Repository = schema.new({
   id = id.from(_N, "Repository"),
   type = "structure",
   members = {
      repositoryArn = schema.new({
         id = id.from(_N, "Repository", "repositoryArn"),
         type = "string",
         name = "repositoryArn",
         target_id = prelude.String.id,
      }),
      registryId = schema.new({
         id = id.from(_N, "Repository", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryName = schema.new({
         id = id.from(_N, "Repository", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
      }),
      repositoryUri = schema.new({
         id = id.from(_N, "Repository", "repositoryUri"),
         type = "string",
         name = "repositoryUri",
         target_id = prelude.String.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "Repository", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.CreateRepositoryOutput = schema.new({
   id = id.from(_N, "CreateRepositoryResponse"),
   type = "structure",
   members = {
      repository = schema.new({
         id = id.from(_N, "CreateRepositoryOutput", "repository"),
         type = "structure",
         name = "repository",
         target_id = id.from(_N, "Repository"),
         target = M.Repository,
      }),
      catalogData = schema.new({
         id = id.from(_N, "CreateRepositoryOutput", "catalogData"),
         type = "structure",
         name = "catalogData",
         target_id = id.from(_N, "RepositoryCatalogData"),
         target = M.RepositoryCatalogData,
      }),
   },
})

M.InvalidTagParameterException = schema.new({
   id = id.from(_N, "InvalidTagParameterException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidTagParameterException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.LimitExceededException = schema.new({
   id = id.from(_N, "LimitExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "LimitExceededException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.RepositoryAlreadyExistsException = schema.new({
   id = id.from(_N, "RepositoryAlreadyExistsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "RepositoryAlreadyExistsException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.TooManyTagsException = schema.new({
   id = id.from(_N, "TooManyTagsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "TooManyTagsException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteRepositoryInput = schema.new({
   id = id.from(_N, "DeleteRepositoryRequest"),
   type = "structure",
   members = {
      registryId = schema.new({
         id = id.from(_N, "DeleteRepositoryInput", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryName = schema.new({
         id = id.from(_N, "DeleteRepositoryInput", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      force = schema.new({
         id = id.from(_N, "DeleteRepositoryInput", "force"),
         type = "boolean",
         name = "force",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.DeleteRepositoryOutput = schema.new({
   id = id.from(_N, "DeleteRepositoryResponse"),
   type = "structure",
   members = {
      repository = schema.new({
         id = id.from(_N, "DeleteRepositoryOutput", "repository"),
         type = "structure",
         name = "repository",
         target_id = id.from(_N, "Repository"),
         target = M.Repository,
      }),
   },
})

M.RepositoryNotEmptyException = schema.new({
   id = id.from(_N, "RepositoryNotEmptyException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "RepositoryNotEmptyException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteRepositoryPolicyInput = schema.new({
   id = id.from(_N, "DeleteRepositoryPolicyRequest"),
   type = "structure",
   members = {
      registryId = schema.new({
         id = id.from(_N, "DeleteRepositoryPolicyInput", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryName = schema.new({
         id = id.from(_N, "DeleteRepositoryPolicyInput", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteRepositoryPolicyOutput = schema.new({
   id = id.from(_N, "DeleteRepositoryPolicyResponse"),
   type = "structure",
   members = {
      registryId = schema.new({
         id = id.from(_N, "DeleteRepositoryPolicyOutput", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryName = schema.new({
         id = id.from(_N, "DeleteRepositoryPolicyOutput", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
      }),
      policyText = schema.new({
         id = id.from(_N, "DeleteRepositoryPolicyOutput", "policyText"),
         type = "string",
         name = "policyText",
         target_id = prelude.String.id,
      }),
   },
})

M.RepositoryPolicyNotFoundException = schema.new({
   id = id.from(_N, "RepositoryPolicyNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "RepositoryPolicyNotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeImagesInput = schema.new({
   id = id.from(_N, "DescribeImagesRequest"),
   type = "structure",
   members = {
      registryId = schema.new({
         id = id.from(_N, "DescribeImagesInput", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryName = schema.new({
         id = id.from(_N, "DescribeImagesInput", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      imageIds = schema.new({
         id = id.from(_N, "DescribeImagesInput", "imageIds"),
         type = "list",
         name = "imageIds",
         target_id = prelude.Document.id,
         list_member = M.ImageIdentifier,
      }),
      nextToken = schema.new({
         id = id.from(_N, "DescribeImagesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "DescribeImagesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ImageDetail = schema.new({
   id = id.from(_N, "ImageDetail"),
   type = "structure",
   members = {
      registryId = schema.new({
         id = id.from(_N, "ImageDetail", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryName = schema.new({
         id = id.from(_N, "ImageDetail", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
      }),
      imageDigest = schema.new({
         id = id.from(_N, "ImageDetail", "imageDigest"),
         type = "string",
         name = "imageDigest",
         target_id = prelude.String.id,
      }),
      imageTags = schema.new({
         id = id.from(_N, "ImageDetail", "imageTags"),
         type = "list",
         name = "imageTags",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      imageSizeInBytes = schema.new({
         id = id.from(_N, "ImageDetail", "imageSizeInBytes"),
         type = "long",
         name = "imageSizeInBytes",
         target_id = prelude.Long.id,
      }),
      imagePushedAt = schema.new({
         id = id.from(_N, "ImageDetail", "imagePushedAt"),
         type = "timestamp",
         name = "imagePushedAt",
         target_id = prelude.Timestamp.id,
      }),
      imageManifestMediaType = schema.new({
         id = id.from(_N, "ImageDetail", "imageManifestMediaType"),
         type = "string",
         name = "imageManifestMediaType",
         target_id = prelude.String.id,
      }),
      artifactMediaType = schema.new({
         id = id.from(_N, "ImageDetail", "artifactMediaType"),
         type = "string",
         name = "artifactMediaType",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeImagesOutput = schema.new({
   id = id.from(_N, "DescribeImagesResponse"),
   type = "structure",
   members = {
      imageDetails = schema.new({
         id = id.from(_N, "DescribeImagesOutput", "imageDetails"),
         type = "list",
         name = "imageDetails",
         target_id = prelude.Document.id,
         list_member = M.ImageDetail,
      }),
      nextToken = schema.new({
         id = id.from(_N, "DescribeImagesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ImageNotFoundException = schema.new({
   id = id.from(_N, "ImageNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ImageNotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeImageTagsInput = schema.new({
   id = id.from(_N, "DescribeImageTagsRequest"),
   type = "structure",
   members = {
      registryId = schema.new({
         id = id.from(_N, "DescribeImageTagsInput", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryName = schema.new({
         id = id.from(_N, "DescribeImageTagsInput", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "DescribeImageTagsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "DescribeImageTagsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ReferencedImageDetail = schema.new({
   id = id.from(_N, "ReferencedImageDetail"),
   type = "structure",
   members = {
      imageDigest = schema.new({
         id = id.from(_N, "ReferencedImageDetail", "imageDigest"),
         type = "string",
         name = "imageDigest",
         target_id = prelude.String.id,
      }),
      imageSizeInBytes = schema.new({
         id = id.from(_N, "ReferencedImageDetail", "imageSizeInBytes"),
         type = "long",
         name = "imageSizeInBytes",
         target_id = prelude.Long.id,
      }),
      imagePushedAt = schema.new({
         id = id.from(_N, "ReferencedImageDetail", "imagePushedAt"),
         type = "timestamp",
         name = "imagePushedAt",
         target_id = prelude.Timestamp.id,
      }),
      imageManifestMediaType = schema.new({
         id = id.from(_N, "ReferencedImageDetail", "imageManifestMediaType"),
         type = "string",
         name = "imageManifestMediaType",
         target_id = prelude.String.id,
      }),
      artifactMediaType = schema.new({
         id = id.from(_N, "ReferencedImageDetail", "artifactMediaType"),
         type = "string",
         name = "artifactMediaType",
         target_id = prelude.String.id,
      }),
   },
})

M.ImageTagDetail = schema.new({
   id = id.from(_N, "ImageTagDetail"),
   type = "structure",
   members = {
      imageTag = schema.new({
         id = id.from(_N, "ImageTagDetail", "imageTag"),
         type = "string",
         name = "imageTag",
         target_id = prelude.String.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "ImageTagDetail", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      imageDetail = schema.new({
         id = id.from(_N, "ImageTagDetail", "imageDetail"),
         type = "structure",
         name = "imageDetail",
         target_id = id.from(_N, "ReferencedImageDetail"),
         target = M.ReferencedImageDetail,
      }),
   },
})

M.DescribeImageTagsOutput = schema.new({
   id = id.from(_N, "DescribeImageTagsResponse"),
   type = "structure",
   members = {
      imageTagDetails = schema.new({
         id = id.from(_N, "DescribeImageTagsOutput", "imageTagDetails"),
         type = "list",
         name = "imageTagDetails",
         target_id = prelude.Document.id,
         list_member = M.ImageTagDetail,
      }),
      nextToken = schema.new({
         id = id.from(_N, "DescribeImageTagsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeRegistriesInput = schema.new({
   id = id.from(_N, "DescribeRegistriesRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "DescribeRegistriesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "DescribeRegistriesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.RegistryAlias = schema.new({
   id = id.from(_N, "RegistryAlias"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "RegistryAlias", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "RegistryAlias", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      primaryRegistryAlias = schema.new({
         id = id.from(_N, "RegistryAlias", "primaryRegistryAlias"),
         type = "boolean",
         name = "primaryRegistryAlias",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
      defaultRegistryAlias = schema.new({
         id = id.from(_N, "RegistryAlias", "defaultRegistryAlias"),
         type = "boolean",
         name = "defaultRegistryAlias",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.Registry = schema.new({
   id = id.from(_N, "Registry"),
   type = "structure",
   members = {
      registryId = schema.new({
         id = id.from(_N, "Registry", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      registryArn = schema.new({
         id = id.from(_N, "Registry", "registryArn"),
         type = "string",
         name = "registryArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      registryUri = schema.new({
         id = id.from(_N, "Registry", "registryUri"),
         type = "string",
         name = "registryUri",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      verified = schema.new({
         id = id.from(_N, "Registry", "verified"),
         type = "boolean",
         name = "verified",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      aliases = schema.new({
         id = id.from(_N, "Registry", "aliases"),
         type = "list",
         name = "aliases",
         target_id = prelude.Document.id,
         list_member = M.RegistryAlias,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeRegistriesOutput = schema.new({
   id = id.from(_N, "DescribeRegistriesResponse"),
   type = "structure",
   members = {
      registries = schema.new({
         id = id.from(_N, "DescribeRegistriesOutput", "registries"),
         type = "list",
         name = "registries",
         target_id = prelude.Document.id,
         list_member = M.Registry,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "DescribeRegistriesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeRepositoriesInput = schema.new({
   id = id.from(_N, "DescribeRepositoriesRequest"),
   type = "structure",
   members = {
      registryId = schema.new({
         id = id.from(_N, "DescribeRepositoriesInput", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryNames = schema.new({
         id = id.from(_N, "DescribeRepositoriesInput", "repositoryNames"),
         type = "list",
         name = "repositoryNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      nextToken = schema.new({
         id = id.from(_N, "DescribeRepositoriesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "DescribeRepositoriesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.DescribeRepositoriesOutput = schema.new({
   id = id.from(_N, "DescribeRepositoriesResponse"),
   type = "structure",
   members = {
      repositories = schema.new({
         id = id.from(_N, "DescribeRepositoriesOutput", "repositories"),
         type = "list",
         name = "repositories",
         target_id = prelude.Document.id,
         list_member = M.Repository,
      }),
      nextToken = schema.new({
         id = id.from(_N, "DescribeRepositoriesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetAuthorizationTokenInput = schema.new({
   id = id.from(_N, "GetAuthorizationTokenRequest"),
   type = "structure",
})

M.GetAuthorizationTokenOutput = schema.new({
   id = id.from(_N, "GetAuthorizationTokenResponse"),
   type = "structure",
   members = {
      authorizationData = schema.new({
         id = id.from(_N, "GetAuthorizationTokenOutput", "authorizationData"),
         type = "structure",
         name = "authorizationData",
         target_id = id.from(_N, "AuthorizationData"),
         target = M.AuthorizationData,
      }),
   },
})

M.GetRegistryCatalogDataInput = schema.new({
   id = id.from(_N, "GetRegistryCatalogDataRequest"),
   type = "structure",
})

M.RegistryCatalogData = schema.new({
   id = id.from(_N, "RegistryCatalogData"),
   type = "structure",
   members = {
      displayName = schema.new({
         id = id.from(_N, "RegistryCatalogData", "displayName"),
         type = "string",
         name = "displayName",
         target_id = prelude.String.id,
      }),
   },
})

M.GetRegistryCatalogDataOutput = schema.new({
   id = id.from(_N, "GetRegistryCatalogDataResponse"),
   type = "structure",
   members = {
      registryCatalogData = schema.new({
         id = id.from(_N, "GetRegistryCatalogDataOutput", "registryCatalogData"),
         type = "structure",
         name = "registryCatalogData",
         target_id = id.from(_N, "RegistryCatalogData"),
         target = M.RegistryCatalogData,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetRepositoryCatalogDataInput = schema.new({
   id = id.from(_N, "GetRepositoryCatalogDataRequest"),
   type = "structure",
   members = {
      registryId = schema.new({
         id = id.from(_N, "GetRepositoryCatalogDataInput", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryName = schema.new({
         id = id.from(_N, "GetRepositoryCatalogDataInput", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetRepositoryCatalogDataOutput = schema.new({
   id = id.from(_N, "GetRepositoryCatalogDataResponse"),
   type = "structure",
   members = {
      catalogData = schema.new({
         id = id.from(_N, "GetRepositoryCatalogDataOutput", "catalogData"),
         type = "structure",
         name = "catalogData",
         target_id = id.from(_N, "RepositoryCatalogData"),
         target = M.RepositoryCatalogData,
      }),
   },
})

M.RepositoryCatalogDataNotFoundException = schema.new({
   id = id.from(_N, "RepositoryCatalogDataNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "RepositoryCatalogDataNotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.GetRepositoryPolicyInput = schema.new({
   id = id.from(_N, "GetRepositoryPolicyRequest"),
   type = "structure",
   members = {
      registryId = schema.new({
         id = id.from(_N, "GetRepositoryPolicyInput", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryName = schema.new({
         id = id.from(_N, "GetRepositoryPolicyInput", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetRepositoryPolicyOutput = schema.new({
   id = id.from(_N, "GetRepositoryPolicyResponse"),
   type = "structure",
   members = {
      registryId = schema.new({
         id = id.from(_N, "GetRepositoryPolicyOutput", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryName = schema.new({
         id = id.from(_N, "GetRepositoryPolicyOutput", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
      }),
      policyText = schema.new({
         id = id.from(_N, "GetRepositoryPolicyOutput", "policyText"),
         type = "string",
         name = "policyText",
         target_id = prelude.String.id,
      }),
   },
})

M.Image = schema.new({
   id = id.from(_N, "Image"),
   type = "structure",
   members = {
      registryId = schema.new({
         id = id.from(_N, "Image", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryName = schema.new({
         id = id.from(_N, "Image", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
      }),
      imageId = schema.new({
         id = id.from(_N, "Image", "imageId"),
         type = "structure",
         name = "imageId",
         target_id = id.from(_N, "ImageIdentifier"),
         target = M.ImageIdentifier,
      }),
      imageManifest = schema.new({
         id = id.from(_N, "Image", "imageManifest"),
         type = "string",
         name = "imageManifest",
         target_id = prelude.String.id,
      }),
      imageManifestMediaType = schema.new({
         id = id.from(_N, "Image", "imageManifestMediaType"),
         type = "string",
         name = "imageManifestMediaType",
         target_id = prelude.String.id,
      }),
   },
})

M.ImageAlreadyExistsException = schema.new({
   id = id.from(_N, "ImageAlreadyExistsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ImageAlreadyExistsException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ImageDigestDoesNotMatchException = schema.new({
   id = id.from(_N, "ImageDigestDoesNotMatchException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ImageDigestDoesNotMatchException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ImageTagAlreadyExistsException = schema.new({
   id = id.from(_N, "ImageTagAlreadyExistsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ImageTagAlreadyExistsException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InitiateLayerUploadInput = schema.new({
   id = id.from(_N, "InitiateLayerUploadRequest"),
   type = "structure",
   members = {
      registryId = schema.new({
         id = id.from(_N, "InitiateLayerUploadInput", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryName = schema.new({
         id = id.from(_N, "InitiateLayerUploadInput", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.InitiateLayerUploadOutput = schema.new({
   id = id.from(_N, "InitiateLayerUploadResponse"),
   type = "structure",
   members = {
      uploadId = schema.new({
         id = id.from(_N, "InitiateLayerUploadOutput", "uploadId"),
         type = "string",
         name = "uploadId",
         target_id = prelude.String.id,
      }),
      partSize = schema.new({
         id = id.from(_N, "InitiateLayerUploadOutput", "partSize"),
         type = "long",
         name = "partSize",
         target_id = prelude.Long.id,
      }),
   },
})

M.InvalidLayerPartException = schema.new({
   id = id.from(_N, "InvalidLayerPartException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      registryId = schema.new({
         id = id.from(_N, "InvalidLayerPartException", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryName = schema.new({
         id = id.from(_N, "InvalidLayerPartException", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
      }),
      uploadId = schema.new({
         id = id.from(_N, "InvalidLayerPartException", "uploadId"),
         type = "string",
         name = "uploadId",
         target_id = prelude.String.id,
      }),
      lastValidByteReceived = schema.new({
         id = id.from(_N, "InvalidLayerPartException", "lastValidByteReceived"),
         type = "long",
         name = "lastValidByteReceived",
         target_id = prelude.Long.id,
      }),
      message = schema.new({
         id = id.from(_N, "InvalidLayerPartException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.LayersNotFoundException = schema.new({
   id = id.from(_N, "LayersNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "LayersNotFoundException", "message"),
         type = "string",
         name = "message",
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
         },
      }),
   },
})

M.ListTagsForResourceOutput = schema.new({
   id = id.from(_N, "ListTagsForResourceResponse"),
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

M.PutImageInput = schema.new({
   id = id.from(_N, "PutImageRequest"),
   type = "structure",
   members = {
      registryId = schema.new({
         id = id.from(_N, "PutImageInput", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryName = schema.new({
         id = id.from(_N, "PutImageInput", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      imageManifest = schema.new({
         id = id.from(_N, "PutImageInput", "imageManifest"),
         type = "string",
         name = "imageManifest",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      imageManifestMediaType = schema.new({
         id = id.from(_N, "PutImageInput", "imageManifestMediaType"),
         type = "string",
         name = "imageManifestMediaType",
         target_id = prelude.String.id,
      }),
      imageTag = schema.new({
         id = id.from(_N, "PutImageInput", "imageTag"),
         type = "string",
         name = "imageTag",
         target_id = prelude.String.id,
      }),
      imageDigest = schema.new({
         id = id.from(_N, "PutImageInput", "imageDigest"),
         type = "string",
         name = "imageDigest",
         target_id = prelude.String.id,
      }),
   },
})

M.PutImageOutput = schema.new({
   id = id.from(_N, "PutImageResponse"),
   type = "structure",
   members = {
      image = schema.new({
         id = id.from(_N, "PutImageOutput", "image"),
         type = "structure",
         name = "image",
         target_id = id.from(_N, "Image"),
         target = M.Image,
      }),
   },
})

M.ReferencedImagesNotFoundException = schema.new({
   id = id.from(_N, "ReferencedImagesNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ReferencedImagesNotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.PutRegistryCatalogDataInput = schema.new({
   id = id.from(_N, "PutRegistryCatalogDataRequest"),
   type = "structure",
   members = {
      displayName = schema.new({
         id = id.from(_N, "PutRegistryCatalogDataInput", "displayName"),
         type = "string",
         name = "displayName",
         target_id = prelude.String.id,
      }),
   },
})

M.PutRegistryCatalogDataOutput = schema.new({
   id = id.from(_N, "PutRegistryCatalogDataResponse"),
   type = "structure",
   members = {
      registryCatalogData = schema.new({
         id = id.from(_N, "PutRegistryCatalogDataOutput", "registryCatalogData"),
         type = "structure",
         name = "registryCatalogData",
         target_id = id.from(_N, "RegistryCatalogData"),
         target = M.RegistryCatalogData,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutRepositoryCatalogDataInput = schema.new({
   id = id.from(_N, "PutRepositoryCatalogDataRequest"),
   type = "structure",
   members = {
      registryId = schema.new({
         id = id.from(_N, "PutRepositoryCatalogDataInput", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryName = schema.new({
         id = id.from(_N, "PutRepositoryCatalogDataInput", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      catalogData = schema.new({
         id = id.from(_N, "PutRepositoryCatalogDataInput", "catalogData"),
         type = "structure",
         name = "catalogData",
         target_id = id.from(_N, "RepositoryCatalogDataInput"),
         target = M.RepositoryCatalogDataInput,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutRepositoryCatalogDataOutput = schema.new({
   id = id.from(_N, "PutRepositoryCatalogDataResponse"),
   type = "structure",
   members = {
      catalogData = schema.new({
         id = id.from(_N, "PutRepositoryCatalogDataOutput", "catalogData"),
         type = "structure",
         name = "catalogData",
         target_id = id.from(_N, "RepositoryCatalogData"),
         target = M.RepositoryCatalogData,
      }),
   },
})

M.SetRepositoryPolicyInput = schema.new({
   id = id.from(_N, "SetRepositoryPolicyRequest"),
   type = "structure",
   members = {
      registryId = schema.new({
         id = id.from(_N, "SetRepositoryPolicyInput", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryName = schema.new({
         id = id.from(_N, "SetRepositoryPolicyInput", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      policyText = schema.new({
         id = id.from(_N, "SetRepositoryPolicyInput", "policyText"),
         type = "string",
         name = "policyText",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      force = schema.new({
         id = id.from(_N, "SetRepositoryPolicyInput", "force"),
         type = "boolean",
         name = "force",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.SetRepositoryPolicyOutput = schema.new({
   id = id.from(_N, "SetRepositoryPolicyResponse"),
   type = "structure",
   members = {
      registryId = schema.new({
         id = id.from(_N, "SetRepositoryPolicyOutput", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryName = schema.new({
         id = id.from(_N, "SetRepositoryPolicyOutput", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
      }),
      policyText = schema.new({
         id = id.from(_N, "SetRepositoryPolicyOutput", "policyText"),
         type = "string",
         name = "policyText",
         target_id = prelude.String.id,
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
   id = id.from(_N, "TagResourceResponse"),
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
   id = id.from(_N, "UntagResourceResponse"),
   type = "structure",
})

M.UploadLayerPartInput = schema.new({
   id = id.from(_N, "UploadLayerPartRequest"),
   type = "structure",
   members = {
      registryId = schema.new({
         id = id.from(_N, "UploadLayerPartInput", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryName = schema.new({
         id = id.from(_N, "UploadLayerPartInput", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      uploadId = schema.new({
         id = id.from(_N, "UploadLayerPartInput", "uploadId"),
         type = "string",
         name = "uploadId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      partFirstByte = schema.new({
         id = id.from(_N, "UploadLayerPartInput", "partFirstByte"),
         type = "long",
         name = "partFirstByte",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      partLastByte = schema.new({
         id = id.from(_N, "UploadLayerPartInput", "partLastByte"),
         type = "long",
         name = "partLastByte",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      layerPartBlob = schema.new({
         id = id.from(_N, "UploadLayerPartInput", "layerPartBlob"),
         type = "blob",
         name = "layerPartBlob",
         target_id = prelude.Blob.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UploadLayerPartOutput = schema.new({
   id = id.from(_N, "UploadLayerPartResponse"),
   type = "structure",
   members = {
      registryId = schema.new({
         id = id.from(_N, "UploadLayerPartOutput", "registryId"),
         type = "string",
         name = "registryId",
         target_id = prelude.String.id,
      }),
      repositoryName = schema.new({
         id = id.from(_N, "UploadLayerPartOutput", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
      }),
      uploadId = schema.new({
         id = id.from(_N, "UploadLayerPartOutput", "uploadId"),
         type = "string",
         name = "uploadId",
         target_id = prelude.String.id,
      }),
      lastByteReceived = schema.new({
         id = id.from(_N, "UploadLayerPartOutput", "lastByteReceived"),
         type = "long",
         name = "lastByteReceived",
         target_id = prelude.Long.id,
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
   id = id.from("com.amazonaws.ecrpublic", "SpencerFrontendService"),
   version = "2020-10-30",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchCheckLayerAvailability = schema.operation({
   id = id.from("com.amazonaws.ecrpublic", "BatchCheckLayerAvailability"),
   input = M.BatchCheckLayerAvailabilityInput,
   output = M.BatchCheckLayerAvailabilityOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchDeleteImage = schema.operation({
   id = id.from("com.amazonaws.ecrpublic", "BatchDeleteImage"),
   input = M.BatchDeleteImageInput,
   output = M.BatchDeleteImageOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CompleteLayerUpload = schema.operation({
   id = id.from("com.amazonaws.ecrpublic", "CompleteLayerUpload"),
   input = M.CompleteLayerUploadInput,
   output = M.CompleteLayerUploadOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateRepository = schema.operation({
   id = id.from("com.amazonaws.ecrpublic", "CreateRepository"),
   input = M.CreateRepositoryInput,
   output = M.CreateRepositoryOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteRepository = schema.operation({
   id = id.from("com.amazonaws.ecrpublic", "DeleteRepository"),
   input = M.DeleteRepositoryInput,
   output = M.DeleteRepositoryOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteRepositoryPolicy = schema.operation({
   id = id.from("com.amazonaws.ecrpublic", "DeleteRepositoryPolicy"),
   input = M.DeleteRepositoryPolicyInput,
   output = M.DeleteRepositoryPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeImages = schema.operation({
   id = id.from("com.amazonaws.ecrpublic", "DescribeImages"),
   input = M.DescribeImagesInput,
   output = M.DescribeImagesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeImageTags = schema.operation({
   id = id.from("com.amazonaws.ecrpublic", "DescribeImageTags"),
   input = M.DescribeImageTagsInput,
   output = M.DescribeImageTagsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeRegistries = schema.operation({
   id = id.from("com.amazonaws.ecrpublic", "DescribeRegistries"),
   input = M.DescribeRegistriesInput,
   output = M.DescribeRegistriesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeRepositories = schema.operation({
   id = id.from("com.amazonaws.ecrpublic", "DescribeRepositories"),
   input = M.DescribeRepositoriesInput,
   output = M.DescribeRepositoriesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAuthorizationToken = schema.operation({
   id = id.from("com.amazonaws.ecrpublic", "GetAuthorizationToken"),
   input = M.GetAuthorizationTokenInput,
   output = M.GetAuthorizationTokenOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRegistryCatalogData = schema.operation({
   id = id.from("com.amazonaws.ecrpublic", "GetRegistryCatalogData"),
   input = M.GetRegistryCatalogDataInput,
   output = M.GetRegistryCatalogDataOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRepositoryCatalogData = schema.operation({
   id = id.from("com.amazonaws.ecrpublic", "GetRepositoryCatalogData"),
   input = M.GetRepositoryCatalogDataInput,
   output = M.GetRepositoryCatalogDataOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRepositoryPolicy = schema.operation({
   id = id.from("com.amazonaws.ecrpublic", "GetRepositoryPolicy"),
   input = M.GetRepositoryPolicyInput,
   output = M.GetRepositoryPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.InitiateLayerUpload = schema.operation({
   id = id.from("com.amazonaws.ecrpublic", "InitiateLayerUpload"),
   input = M.InitiateLayerUploadInput,
   output = M.InitiateLayerUploadOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.ecrpublic", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutImage = schema.operation({
   id = id.from("com.amazonaws.ecrpublic", "PutImage"),
   input = M.PutImageInput,
   output = M.PutImageOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutRegistryCatalogData = schema.operation({
   id = id.from("com.amazonaws.ecrpublic", "PutRegistryCatalogData"),
   input = M.PutRegistryCatalogDataInput,
   output = M.PutRegistryCatalogDataOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutRepositoryCatalogData = schema.operation({
   id = id.from("com.amazonaws.ecrpublic", "PutRepositoryCatalogData"),
   input = M.PutRepositoryCatalogDataInput,
   output = M.PutRepositoryCatalogDataOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SetRepositoryPolicy = schema.operation({
   id = id.from("com.amazonaws.ecrpublic", "SetRepositoryPolicy"),
   input = M.SetRepositoryPolicyInput,
   output = M.SetRepositoryPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.ecrpublic", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.ecrpublic", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UploadLayerPart = schema.operation({
   id = id.from("com.amazonaws.ecrpublic", "UploadLayerPart"),
   input = M.UploadLayerPartInput,
   output = M.UploadLayerPartOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
