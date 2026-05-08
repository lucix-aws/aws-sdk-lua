

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.codegurureviewer"

local M = {}

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ProviderTypes = schema.new({ type = "list", list_member = prelude.String })

M.JobStates = schema.new({ type = "list", list_member = prelude.String })

M.RepositoryNames = schema.new({ type = "list", list_member = prelude.String })

M.CodeReviewSummaries = schema.new({ type = "list", list_member = M.CodeReviewSummary })

M.UserIds = schema.new({ type = "list", list_member = prelude.String })

M.RecommendationIds = schema.new({ type = "list", list_member = prelude.String })

M.RecommendationFeedbackSummaries = schema.new({ type = "list", list_member = M.RecommendationFeedbackSummary })

M.RecommendationSummaries = schema.new({ type = "list", list_member = M.RecommendationSummary })

M.RepositoryAssociationStates = schema.new({ type = "list", list_member = prelude.String })

M.Names = schema.new({ type = "list", list_member = prelude.String })

M.Owners = schema.new({ type = "list", list_member = prelude.String })

M.RepositoryAssociationSummaries = schema.new({ type = "list", list_member = M.RepositoryAssociationSummary })

M.Reactions = schema.new({ type = "list", list_member = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.AnalysisTypes = schema.new({ type = "list", list_member = prelude.String })

M.RuleTags = schema.new({ type = "list", list_member = prelude.String })

M.AccessDeniedException = schema.new({
   id = id.from(_N, "AccessDeniedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "AccessDeniedException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.KMSKeyDetails = schema.new({
   id = id.from(_N, "KMSKeyDetails"),
   type = "structure",
   members = {
      KMSKeyId = schema.new({
         id = id.from(_N, "KMSKeyDetails", "KMSKeyId"),
         type = "string",
         name = "KMSKeyId",
         target_id = prelude.String.id,
      }),
      EncryptionOption = schema.new({
         id = id.from(_N, "KMSKeyDetails", "EncryptionOption"),
         type = "string",
         name = "EncryptionOption",
         target_id = prelude.String.id,
      }),
   },
})

M.ThirdPartySourceRepository = schema.new({
   id = id.from(_N, "ThirdPartySourceRepository"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "ThirdPartySourceRepository", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ConnectionArn = schema.new({
         id = id.from(_N, "ThirdPartySourceRepository", "ConnectionArn"),
         type = "string",
         name = "ConnectionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Owner = schema.new({
         id = id.from(_N, "ThirdPartySourceRepository", "Owner"),
         type = "string",
         name = "Owner",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CodeCommitRepository = schema.new({
   id = id.from(_N, "CodeCommitRepository"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CodeCommitRepository", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.S3Repository = schema.new({
   id = id.from(_N, "S3Repository"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "S3Repository", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BucketName = schema.new({
         id = id.from(_N, "S3Repository", "BucketName"),
         type = "string",
         name = "BucketName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Repository = schema.new({
   id = id.from(_N, "Repository"),
   type = "structure",
   members = {
      CodeCommit = schema.new({
         id = id.from(_N, "Repository", "CodeCommit"),
         type = "structure",
         name = "CodeCommit",
         target_id = id.from(_N, "CodeCommitRepository"),
         target = M.CodeCommitRepository,
      }),
      Bitbucket = schema.new({
         id = id.from(_N, "Repository", "Bitbucket"),
         type = "structure",
         name = "Bitbucket",
         target_id = id.from(_N, "ThirdPartySourceRepository"),
         target = M.ThirdPartySourceRepository,
      }),
      GitHubEnterpriseServer = schema.new({
         id = id.from(_N, "Repository", "GitHubEnterpriseServer"),
         type = "structure",
         name = "GitHubEnterpriseServer",
         target_id = id.from(_N, "ThirdPartySourceRepository"),
         target = M.ThirdPartySourceRepository,
      }),
      S3Bucket = schema.new({
         id = id.from(_N, "Repository", "S3Bucket"),
         type = "structure",
         name = "S3Bucket",
         target_id = id.from(_N, "S3Repository"),
         target = M.S3Repository,
      }),
   },
})

M.AssociateRepositoryInput = schema.new({
   id = id.from(_N, "AssociateRepositoryRequest"),
   type = "structure",
   members = {
      Repository = schema.new({
         id = id.from(_N, "AssociateRepositoryInput", "Repository"),
         type = "structure",
         name = "Repository",
         target_id = id.from(_N, "Repository"),
         target = M.Repository,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientRequestToken = schema.new({
         id = id.from(_N, "AssociateRepositoryInput", "ClientRequestToken"),
         type = "string",
         name = "ClientRequestToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "AssociateRepositoryInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      KMSKeyDetails = schema.new({
         id = id.from(_N, "AssociateRepositoryInput", "KMSKeyDetails"),
         type = "structure",
         name = "KMSKeyDetails",
         target_id = id.from(_N, "KMSKeyDetails"),
         target = M.KMSKeyDetails,
      }),
   },
})

M.CodeArtifacts = schema.new({
   id = id.from(_N, "CodeArtifacts"),
   type = "structure",
   members = {
      SourceCodeArtifactsObjectKey = schema.new({
         id = id.from(_N, "CodeArtifacts", "SourceCodeArtifactsObjectKey"),
         type = "string",
         name = "SourceCodeArtifactsObjectKey",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BuildArtifactsObjectKey = schema.new({
         id = id.from(_N, "CodeArtifacts", "BuildArtifactsObjectKey"),
         type = "string",
         name = "BuildArtifactsObjectKey",
         target_id = prelude.String.id,
      }),
   },
})

M.S3RepositoryDetails = schema.new({
   id = id.from(_N, "S3RepositoryDetails"),
   type = "structure",
   members = {
      BucketName = schema.new({
         id = id.from(_N, "S3RepositoryDetails", "BucketName"),
         type = "string",
         name = "BucketName",
         target_id = prelude.String.id,
      }),
      CodeArtifacts = schema.new({
         id = id.from(_N, "S3RepositoryDetails", "CodeArtifacts"),
         type = "structure",
         name = "CodeArtifacts",
         target_id = id.from(_N, "CodeArtifacts"),
         target = M.CodeArtifacts,
      }),
   },
})

M.RepositoryAssociation = schema.new({
   id = id.from(_N, "RepositoryAssociation"),
   type = "structure",
   members = {
      AssociationId = schema.new({
         id = id.from(_N, "RepositoryAssociation", "AssociationId"),
         type = "string",
         name = "AssociationId",
         target_id = prelude.String.id,
      }),
      AssociationArn = schema.new({
         id = id.from(_N, "RepositoryAssociation", "AssociationArn"),
         type = "string",
         name = "AssociationArn",
         target_id = prelude.String.id,
      }),
      ConnectionArn = schema.new({
         id = id.from(_N, "RepositoryAssociation", "ConnectionArn"),
         type = "string",
         name = "ConnectionArn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "RepositoryAssociation", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Owner = schema.new({
         id = id.from(_N, "RepositoryAssociation", "Owner"),
         type = "string",
         name = "Owner",
         target_id = prelude.String.id,
      }),
      ProviderType = schema.new({
         id = id.from(_N, "RepositoryAssociation", "ProviderType"),
         type = "string",
         name = "ProviderType",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "RepositoryAssociation", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      StateReason = schema.new({
         id = id.from(_N, "RepositoryAssociation", "StateReason"),
         type = "string",
         name = "StateReason",
         target_id = prelude.String.id,
      }),
      LastUpdatedTimeStamp = schema.new({
         id = id.from(_N, "RepositoryAssociation", "LastUpdatedTimeStamp"),
         type = "timestamp",
         name = "LastUpdatedTimeStamp",
         target_id = prelude.Timestamp.id,
      }),
      CreatedTimeStamp = schema.new({
         id = id.from(_N, "RepositoryAssociation", "CreatedTimeStamp"),
         type = "timestamp",
         name = "CreatedTimeStamp",
         target_id = prelude.Timestamp.id,
      }),
      KMSKeyDetails = schema.new({
         id = id.from(_N, "RepositoryAssociation", "KMSKeyDetails"),
         type = "structure",
         name = "KMSKeyDetails",
         target_id = id.from(_N, "KMSKeyDetails"),
         target = M.KMSKeyDetails,
      }),
      S3RepositoryDetails = schema.new({
         id = id.from(_N, "RepositoryAssociation", "S3RepositoryDetails"),
         type = "structure",
         name = "S3RepositoryDetails",
         target_id = id.from(_N, "S3RepositoryDetails"),
         target = M.S3RepositoryDetails,
      }),
   },
})

M.AssociateRepositoryOutput = schema.new({
   id = id.from(_N, "AssociateRepositoryResponse"),
   type = "structure",
   members = {
      RepositoryAssociation = schema.new({
         id = id.from(_N, "AssociateRepositoryOutput", "RepositoryAssociation"),
         type = "structure",
         name = "RepositoryAssociation",
         target_id = id.from(_N, "RepositoryAssociation"),
         target = M.RepositoryAssociation,
      }),
      Tags = schema.new({
         id = id.from(_N, "AssociateRepositoryOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
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
      Message = schema.new({
         id = id.from(_N, "ConflictException", "Message"),
         type = "string",
         name = "Message",
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
      Message = schema.new({
         id = id.from(_N, "InternalServerException", "Message"),
         type = "string",
         name = "Message",
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
      Message = schema.new({
         id = id.from(_N, "ThrottlingException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
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
      Message = schema.new({
         id = id.from(_N, "ValidationException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.RepositoryHeadSourceCodeType = schema.new({
   id = id.from(_N, "RepositoryHeadSourceCodeType"),
   type = "structure",
   members = {
      BranchName = schema.new({
         id = id.from(_N, "RepositoryHeadSourceCodeType", "BranchName"),
         type = "string",
         name = "BranchName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BranchDiffSourceCodeType = schema.new({
   id = id.from(_N, "BranchDiffSourceCodeType"),
   type = "structure",
   members = {
      SourceBranchName = schema.new({
         id = id.from(_N, "BranchDiffSourceCodeType", "SourceBranchName"),
         type = "string",
         name = "SourceBranchName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DestinationBranchName = schema.new({
         id = id.from(_N, "BranchDiffSourceCodeType", "DestinationBranchName"),
         type = "string",
         name = "DestinationBranchName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CommitDiffSourceCodeType = schema.new({
   id = id.from(_N, "CommitDiffSourceCodeType"),
   type = "structure",
   members = {
      SourceCommit = schema.new({
         id = id.from(_N, "CommitDiffSourceCodeType", "SourceCommit"),
         type = "string",
         name = "SourceCommit",
         target_id = prelude.String.id,
      }),
      DestinationCommit = schema.new({
         id = id.from(_N, "CommitDiffSourceCodeType", "DestinationCommit"),
         type = "string",
         name = "DestinationCommit",
         target_id = prelude.String.id,
      }),
      MergeBaseCommit = schema.new({
         id = id.from(_N, "CommitDiffSourceCodeType", "MergeBaseCommit"),
         type = "string",
         name = "MergeBaseCommit",
         target_id = prelude.String.id,
      }),
   },
})

M.EventInfo = schema.new({
   id = id.from(_N, "EventInfo"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "EventInfo", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "EventInfo", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
   },
})

M.RequestMetadata = schema.new({
   id = id.from(_N, "RequestMetadata"),
   type = "structure",
   members = {
      RequestId = schema.new({
         id = id.from(_N, "RequestMetadata", "RequestId"),
         type = "string",
         name = "RequestId",
         target_id = prelude.String.id,
      }),
      Requester = schema.new({
         id = id.from(_N, "RequestMetadata", "Requester"),
         type = "string",
         name = "Requester",
         target_id = prelude.String.id,
      }),
      EventInfo = schema.new({
         id = id.from(_N, "RequestMetadata", "EventInfo"),
         type = "structure",
         name = "EventInfo",
         target_id = id.from(_N, "EventInfo"),
         target = M.EventInfo,
      }),
      VendorName = schema.new({
         id = id.from(_N, "RequestMetadata", "VendorName"),
         type = "string",
         name = "VendorName",
         target_id = prelude.String.id,
      }),
   },
})

M.S3BucketRepository = schema.new({
   id = id.from(_N, "S3BucketRepository"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "S3BucketRepository", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Details = schema.new({
         id = id.from(_N, "S3BucketRepository", "Details"),
         type = "structure",
         name = "Details",
         target_id = id.from(_N, "S3RepositoryDetails"),
         target = M.S3RepositoryDetails,
      }),
   },
})

M.SourceCodeType = schema.new({
   id = id.from(_N, "SourceCodeType"),
   type = "structure",
   members = {
      CommitDiff = schema.new({
         id = id.from(_N, "SourceCodeType", "CommitDiff"),
         type = "structure",
         name = "CommitDiff",
         target_id = id.from(_N, "CommitDiffSourceCodeType"),
         target = M.CommitDiffSourceCodeType,
      }),
      RepositoryHead = schema.new({
         id = id.from(_N, "SourceCodeType", "RepositoryHead"),
         type = "structure",
         name = "RepositoryHead",
         target_id = id.from(_N, "RepositoryHeadSourceCodeType"),
         target = M.RepositoryHeadSourceCodeType,
      }),
      BranchDiff = schema.new({
         id = id.from(_N, "SourceCodeType", "BranchDiff"),
         type = "structure",
         name = "BranchDiff",
         target_id = id.from(_N, "BranchDiffSourceCodeType"),
         target = M.BranchDiffSourceCodeType,
      }),
      S3BucketRepository = schema.new({
         id = id.from(_N, "SourceCodeType", "S3BucketRepository"),
         type = "structure",
         name = "S3BucketRepository",
         target_id = id.from(_N, "S3BucketRepository"),
         target = M.S3BucketRepository,
      }),
      RequestMetadata = schema.new({
         id = id.from(_N, "SourceCodeType", "RequestMetadata"),
         type = "structure",
         name = "RequestMetadata",
         target_id = id.from(_N, "RequestMetadata"),
         target = M.RequestMetadata,
      }),
   },
})

M.RepositoryAnalysis = schema.new({
   id = id.from(_N, "RepositoryAnalysis"),
   type = "structure",
   members = {
      RepositoryHead = schema.new({
         id = id.from(_N, "RepositoryAnalysis", "RepositoryHead"),
         type = "structure",
         name = "RepositoryHead",
         target_id = id.from(_N, "RepositoryHeadSourceCodeType"),
         target = M.RepositoryHeadSourceCodeType,
      }),
      SourceCodeType = schema.new({
         id = id.from(_N, "RepositoryAnalysis", "SourceCodeType"),
         type = "structure",
         name = "SourceCodeType",
         target_id = id.from(_N, "SourceCodeType"),
         target = M.SourceCodeType,
      }),
   },
})

M.CodeReviewType = schema.new({
   id = id.from(_N, "CodeReviewType"),
   type = "structure",
   members = {
      RepositoryAnalysis = schema.new({
         id = id.from(_N, "CodeReviewType", "RepositoryAnalysis"),
         type = "structure",
         name = "RepositoryAnalysis",
         target_id = id.from(_N, "RepositoryAnalysis"),
         target = M.RepositoryAnalysis,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AnalysisTypes = schema.new({
         id = id.from(_N, "CodeReviewType", "AnalysisTypes"),
         type = "list",
         name = "AnalysisTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.CreateCodeReviewInput = schema.new({
   id = id.from(_N, "CreateCodeReviewRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateCodeReviewInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RepositoryAssociationArn = schema.new({
         id = id.from(_N, "CreateCodeReviewInput", "RepositoryAssociationArn"),
         type = "string",
         name = "RepositoryAssociationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Type = schema.new({
         id = id.from(_N, "CreateCodeReviewInput", "Type"),
         type = "structure",
         name = "Type",
         target_id = id.from(_N, "CodeReviewType"),
         target = M.CodeReviewType,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientRequestToken = schema.new({
         id = id.from(_N, "CreateCodeReviewInput", "ClientRequestToken"),
         type = "string",
         name = "ClientRequestToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.Metrics = schema.new({
   id = id.from(_N, "Metrics"),
   type = "structure",
   members = {
      MeteredLinesOfCodeCount = schema.new({
         id = id.from(_N, "Metrics", "MeteredLinesOfCodeCount"),
         type = "long",
         name = "MeteredLinesOfCodeCount",
         target_id = prelude.Long.id,
      }),
      SuppressedLinesOfCodeCount = schema.new({
         id = id.from(_N, "Metrics", "SuppressedLinesOfCodeCount"),
         type = "long",
         name = "SuppressedLinesOfCodeCount",
         target_id = prelude.Long.id,
      }),
      FindingsCount = schema.new({
         id = id.from(_N, "Metrics", "FindingsCount"),
         type = "long",
         name = "FindingsCount",
         target_id = prelude.Long.id,
      }),
   },
})

M.CodeReview = schema.new({
   id = id.from(_N, "CodeReview"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CodeReview", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      CodeReviewArn = schema.new({
         id = id.from(_N, "CodeReview", "CodeReviewArn"),
         type = "string",
         name = "CodeReviewArn",
         target_id = prelude.String.id,
      }),
      RepositoryName = schema.new({
         id = id.from(_N, "CodeReview", "RepositoryName"),
         type = "string",
         name = "RepositoryName",
         target_id = prelude.String.id,
      }),
      Owner = schema.new({
         id = id.from(_N, "CodeReview", "Owner"),
         type = "string",
         name = "Owner",
         target_id = prelude.String.id,
      }),
      ProviderType = schema.new({
         id = id.from(_N, "CodeReview", "ProviderType"),
         type = "string",
         name = "ProviderType",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "CodeReview", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      StateReason = schema.new({
         id = id.from(_N, "CodeReview", "StateReason"),
         type = "string",
         name = "StateReason",
         target_id = prelude.String.id,
      }),
      CreatedTimeStamp = schema.new({
         id = id.from(_N, "CodeReview", "CreatedTimeStamp"),
         type = "timestamp",
         name = "CreatedTimeStamp",
         target_id = prelude.Timestamp.id,
      }),
      LastUpdatedTimeStamp = schema.new({
         id = id.from(_N, "CodeReview", "LastUpdatedTimeStamp"),
         type = "timestamp",
         name = "LastUpdatedTimeStamp",
         target_id = prelude.Timestamp.id,
      }),
      Type = schema.new({
         id = id.from(_N, "CodeReview", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      PullRequestId = schema.new({
         id = id.from(_N, "CodeReview", "PullRequestId"),
         type = "string",
         name = "PullRequestId",
         target_id = prelude.String.id,
      }),
      SourceCodeType = schema.new({
         id = id.from(_N, "CodeReview", "SourceCodeType"),
         type = "structure",
         name = "SourceCodeType",
         target_id = id.from(_N, "SourceCodeType"),
         target = M.SourceCodeType,
      }),
      AssociationArn = schema.new({
         id = id.from(_N, "CodeReview", "AssociationArn"),
         type = "string",
         name = "AssociationArn",
         target_id = prelude.String.id,
      }),
      Metrics = schema.new({
         id = id.from(_N, "CodeReview", "Metrics"),
         type = "structure",
         name = "Metrics",
         target_id = id.from(_N, "Metrics"),
         target = M.Metrics,
      }),
      AnalysisTypes = schema.new({
         id = id.from(_N, "CodeReview", "AnalysisTypes"),
         type = "list",
         name = "AnalysisTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ConfigFileState = schema.new({
         id = id.from(_N, "CodeReview", "ConfigFileState"),
         type = "string",
         name = "ConfigFileState",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateCodeReviewOutput = schema.new({
   id = id.from(_N, "CreateCodeReviewResponse"),
   type = "structure",
   members = {
      CodeReview = schema.new({
         id = id.from(_N, "CreateCodeReviewOutput", "CodeReview"),
         type = "structure",
         name = "CodeReview",
         target_id = id.from(_N, "CodeReview"),
         target = M.CodeReview,
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
      Message = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeCodeReviewInput = schema.new({
   id = id.from(_N, "DescribeCodeReviewRequest"),
   type = "structure",
   members = {
      CodeReviewArn = schema.new({
         id = id.from(_N, "DescribeCodeReviewInput", "CodeReviewArn"),
         type = "string",
         name = "CodeReviewArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeCodeReviewOutput = schema.new({
   id = id.from(_N, "DescribeCodeReviewResponse"),
   type = "structure",
   members = {
      CodeReview = schema.new({
         id = id.from(_N, "DescribeCodeReviewOutput", "CodeReview"),
         type = "structure",
         name = "CodeReview",
         target_id = id.from(_N, "CodeReview"),
         target = M.CodeReview,
      }),
   },
})

M.DescribeRecommendationFeedbackInput = schema.new({
   id = id.from(_N, "DescribeRecommendationFeedbackRequest"),
   type = "structure",
   members = {
      CodeReviewArn = schema.new({
         id = id.from(_N, "DescribeRecommendationFeedbackInput", "CodeReviewArn"),
         type = "string",
         name = "CodeReviewArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      RecommendationId = schema.new({
         id = id.from(_N, "DescribeRecommendationFeedbackInput", "RecommendationId"),
         type = "string",
         name = "RecommendationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "RecommendationId" },
         },
      }),
      UserId = schema.new({
         id = id.from(_N, "DescribeRecommendationFeedbackInput", "UserId"),
         type = "string",
         name = "UserId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "UserId" },
         },
      }),
   },
})

M.RecommendationFeedback = schema.new({
   id = id.from(_N, "RecommendationFeedback"),
   type = "structure",
   members = {
      CodeReviewArn = schema.new({
         id = id.from(_N, "RecommendationFeedback", "CodeReviewArn"),
         type = "string",
         name = "CodeReviewArn",
         target_id = prelude.String.id,
      }),
      RecommendationId = schema.new({
         id = id.from(_N, "RecommendationFeedback", "RecommendationId"),
         type = "string",
         name = "RecommendationId",
         target_id = prelude.String.id,
      }),
      Reactions = schema.new({
         id = id.from(_N, "RecommendationFeedback", "Reactions"),
         type = "list",
         name = "Reactions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      UserId = schema.new({
         id = id.from(_N, "RecommendationFeedback", "UserId"),
         type = "string",
         name = "UserId",
         target_id = prelude.String.id,
      }),
      CreatedTimeStamp = schema.new({
         id = id.from(_N, "RecommendationFeedback", "CreatedTimeStamp"),
         type = "timestamp",
         name = "CreatedTimeStamp",
         target_id = prelude.Timestamp.id,
      }),
      LastUpdatedTimeStamp = schema.new({
         id = id.from(_N, "RecommendationFeedback", "LastUpdatedTimeStamp"),
         type = "timestamp",
         name = "LastUpdatedTimeStamp",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeRecommendationFeedbackOutput = schema.new({
   id = id.from(_N, "DescribeRecommendationFeedbackResponse"),
   type = "structure",
   members = {
      RecommendationFeedback = schema.new({
         id = id.from(_N, "DescribeRecommendationFeedbackOutput", "RecommendationFeedback"),
         type = "structure",
         name = "RecommendationFeedback",
         target_id = id.from(_N, "RecommendationFeedback"),
         target = M.RecommendationFeedback,
      }),
   },
})

M.DescribeRepositoryAssociationInput = schema.new({
   id = id.from(_N, "DescribeRepositoryAssociationRequest"),
   type = "structure",
   members = {
      AssociationArn = schema.new({
         id = id.from(_N, "DescribeRepositoryAssociationInput", "AssociationArn"),
         type = "string",
         name = "AssociationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeRepositoryAssociationOutput = schema.new({
   id = id.from(_N, "DescribeRepositoryAssociationResponse"),
   type = "structure",
   members = {
      RepositoryAssociation = schema.new({
         id = id.from(_N, "DescribeRepositoryAssociationOutput", "RepositoryAssociation"),
         type = "structure",
         name = "RepositoryAssociation",
         target_id = id.from(_N, "RepositoryAssociation"),
         target = M.RepositoryAssociation,
      }),
      Tags = schema.new({
         id = id.from(_N, "DescribeRepositoryAssociationOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.NotFoundException = schema.new({
   id = id.from(_N, "NotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "NotFoundException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.DisassociateRepositoryInput = schema.new({
   id = id.from(_N, "DisassociateRepositoryRequest"),
   type = "structure",
   members = {
      AssociationArn = schema.new({
         id = id.from(_N, "DisassociateRepositoryInput", "AssociationArn"),
         type = "string",
         name = "AssociationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DisassociateRepositoryOutput = schema.new({
   id = id.from(_N, "DisassociateRepositoryResponse"),
   type = "structure",
   members = {
      RepositoryAssociation = schema.new({
         id = id.from(_N, "DisassociateRepositoryOutput", "RepositoryAssociation"),
         type = "structure",
         name = "RepositoryAssociation",
         target_id = id.from(_N, "RepositoryAssociation"),
         target = M.RepositoryAssociation,
      }),
      Tags = schema.new({
         id = id.from(_N, "DisassociateRepositoryOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ListCodeReviewsInput = schema.new({
   id = id.from(_N, "ListCodeReviewsRequest"),
   type = "structure",
   members = {
      ProviderTypes = schema.new({
         id = id.from(_N, "ListCodeReviewsInput", "ProviderTypes"),
         type = "list",
         name = "ProviderTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.HTTP_QUERY] = { name = "ProviderTypes" },
         },
      }),
      States = schema.new({
         id = id.from(_N, "ListCodeReviewsInput", "States"),
         type = "list",
         name = "States",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.HTTP_QUERY] = { name = "States" },
         },
      }),
      RepositoryNames = schema.new({
         id = id.from(_N, "ListCodeReviewsInput", "RepositoryNames"),
         type = "list",
         name = "RepositoryNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.HTTP_QUERY] = { name = "RepositoryNames" },
         },
      }),
      Type = schema.new({
         id = id.from(_N, "ListCodeReviewsInput", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "Type" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListCodeReviewsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCodeReviewsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
   },
})

M.MetricsSummary = schema.new({
   id = id.from(_N, "MetricsSummary"),
   type = "structure",
   members = {
      MeteredLinesOfCodeCount = schema.new({
         id = id.from(_N, "MetricsSummary", "MeteredLinesOfCodeCount"),
         type = "long",
         name = "MeteredLinesOfCodeCount",
         target_id = prelude.Long.id,
      }),
      SuppressedLinesOfCodeCount = schema.new({
         id = id.from(_N, "MetricsSummary", "SuppressedLinesOfCodeCount"),
         type = "long",
         name = "SuppressedLinesOfCodeCount",
         target_id = prelude.Long.id,
      }),
      FindingsCount = schema.new({
         id = id.from(_N, "MetricsSummary", "FindingsCount"),
         type = "long",
         name = "FindingsCount",
         target_id = prelude.Long.id,
      }),
   },
})

M.CodeReviewSummary = schema.new({
   id = id.from(_N, "CodeReviewSummary"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CodeReviewSummary", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      CodeReviewArn = schema.new({
         id = id.from(_N, "CodeReviewSummary", "CodeReviewArn"),
         type = "string",
         name = "CodeReviewArn",
         target_id = prelude.String.id,
      }),
      RepositoryName = schema.new({
         id = id.from(_N, "CodeReviewSummary", "RepositoryName"),
         type = "string",
         name = "RepositoryName",
         target_id = prelude.String.id,
      }),
      Owner = schema.new({
         id = id.from(_N, "CodeReviewSummary", "Owner"),
         type = "string",
         name = "Owner",
         target_id = prelude.String.id,
      }),
      ProviderType = schema.new({
         id = id.from(_N, "CodeReviewSummary", "ProviderType"),
         type = "string",
         name = "ProviderType",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "CodeReviewSummary", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      CreatedTimeStamp = schema.new({
         id = id.from(_N, "CodeReviewSummary", "CreatedTimeStamp"),
         type = "timestamp",
         name = "CreatedTimeStamp",
         target_id = prelude.Timestamp.id,
      }),
      LastUpdatedTimeStamp = schema.new({
         id = id.from(_N, "CodeReviewSummary", "LastUpdatedTimeStamp"),
         type = "timestamp",
         name = "LastUpdatedTimeStamp",
         target_id = prelude.Timestamp.id,
      }),
      Type = schema.new({
         id = id.from(_N, "CodeReviewSummary", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      PullRequestId = schema.new({
         id = id.from(_N, "CodeReviewSummary", "PullRequestId"),
         type = "string",
         name = "PullRequestId",
         target_id = prelude.String.id,
      }),
      MetricsSummary = schema.new({
         id = id.from(_N, "CodeReviewSummary", "MetricsSummary"),
         type = "structure",
         name = "MetricsSummary",
         target_id = id.from(_N, "MetricsSummary"),
         target = M.MetricsSummary,
      }),
      SourceCodeType = schema.new({
         id = id.from(_N, "CodeReviewSummary", "SourceCodeType"),
         type = "structure",
         name = "SourceCodeType",
         target_id = id.from(_N, "SourceCodeType"),
         target = M.SourceCodeType,
      }),
   },
})

M.ListCodeReviewsOutput = schema.new({
   id = id.from(_N, "ListCodeReviewsResponse"),
   type = "structure",
   members = {
      CodeReviewSummaries = schema.new({
         id = id.from(_N, "ListCodeReviewsOutput", "CodeReviewSummaries"),
         type = "list",
         name = "CodeReviewSummaries",
         target_id = prelude.Document.id,
         list_member = M.CodeReviewSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCodeReviewsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRecommendationFeedbackInput = schema.new({
   id = id.from(_N, "ListRecommendationFeedbackRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListRecommendationFeedbackInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListRecommendationFeedbackInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
      CodeReviewArn = schema.new({
         id = id.from(_N, "ListRecommendationFeedbackInput", "CodeReviewArn"),
         type = "string",
         name = "CodeReviewArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      UserIds = schema.new({
         id = id.from(_N, "ListRecommendationFeedbackInput", "UserIds"),
         type = "list",
         name = "UserIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.HTTP_QUERY] = { name = "UserIds" },
         },
      }),
      RecommendationIds = schema.new({
         id = id.from(_N, "ListRecommendationFeedbackInput", "RecommendationIds"),
         type = "list",
         name = "RecommendationIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.HTTP_QUERY] = { name = "RecommendationIds" },
         },
      }),
   },
})

M.RecommendationFeedbackSummary = schema.new({
   id = id.from(_N, "RecommendationFeedbackSummary"),
   type = "structure",
   members = {
      RecommendationId = schema.new({
         id = id.from(_N, "RecommendationFeedbackSummary", "RecommendationId"),
         type = "string",
         name = "RecommendationId",
         target_id = prelude.String.id,
      }),
      Reactions = schema.new({
         id = id.from(_N, "RecommendationFeedbackSummary", "Reactions"),
         type = "list",
         name = "Reactions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      UserId = schema.new({
         id = id.from(_N, "RecommendationFeedbackSummary", "UserId"),
         type = "string",
         name = "UserId",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRecommendationFeedbackOutput = schema.new({
   id = id.from(_N, "ListRecommendationFeedbackResponse"),
   type = "structure",
   members = {
      RecommendationFeedbackSummaries = schema.new({
         id = id.from(_N, "ListRecommendationFeedbackOutput", "RecommendationFeedbackSummaries"),
         type = "list",
         name = "RecommendationFeedbackSummaries",
         target_id = prelude.Document.id,
         list_member = M.RecommendationFeedbackSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRecommendationFeedbackOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRecommendationsInput = schema.new({
   id = id.from(_N, "ListRecommendationsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListRecommendationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListRecommendationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
      CodeReviewArn = schema.new({
         id = id.from(_N, "ListRecommendationsInput", "CodeReviewArn"),
         type = "string",
         name = "CodeReviewArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.RuleMetadata = schema.new({
   id = id.from(_N, "RuleMetadata"),
   type = "structure",
   members = {
      RuleId = schema.new({
         id = id.from(_N, "RuleMetadata", "RuleId"),
         type = "string",
         name = "RuleId",
         target_id = prelude.String.id,
      }),
      RuleName = schema.new({
         id = id.from(_N, "RuleMetadata", "RuleName"),
         type = "string",
         name = "RuleName",
         target_id = prelude.String.id,
      }),
      ShortDescription = schema.new({
         id = id.from(_N, "RuleMetadata", "ShortDescription"),
         type = "string",
         name = "ShortDescription",
         target_id = prelude.String.id,
      }),
      LongDescription = schema.new({
         id = id.from(_N, "RuleMetadata", "LongDescription"),
         type = "string",
         name = "LongDescription",
         target_id = prelude.String.id,
      }),
      RuleTags = schema.new({
         id = id.from(_N, "RuleMetadata", "RuleTags"),
         type = "list",
         name = "RuleTags",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.RecommendationSummary = schema.new({
   id = id.from(_N, "RecommendationSummary"),
   type = "structure",
   members = {
      FilePath = schema.new({
         id = id.from(_N, "RecommendationSummary", "FilePath"),
         type = "string",
         name = "FilePath",
         target_id = prelude.String.id,
      }),
      RecommendationId = schema.new({
         id = id.from(_N, "RecommendationSummary", "RecommendationId"),
         type = "string",
         name = "RecommendationId",
         target_id = prelude.String.id,
      }),
      StartLine = schema.new({
         id = id.from(_N, "RecommendationSummary", "StartLine"),
         type = "integer",
         name = "StartLine",
         target_id = prelude.Integer.id,
      }),
      EndLine = schema.new({
         id = id.from(_N, "RecommendationSummary", "EndLine"),
         type = "integer",
         name = "EndLine",
         target_id = prelude.Integer.id,
      }),
      Description = schema.new({
         id = id.from(_N, "RecommendationSummary", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      RecommendationCategory = schema.new({
         id = id.from(_N, "RecommendationSummary", "RecommendationCategory"),
         type = "string",
         name = "RecommendationCategory",
         target_id = prelude.String.id,
      }),
      RuleMetadata = schema.new({
         id = id.from(_N, "RecommendationSummary", "RuleMetadata"),
         type = "structure",
         name = "RuleMetadata",
         target_id = id.from(_N, "RuleMetadata"),
         target = M.RuleMetadata,
      }),
      Severity = schema.new({
         id = id.from(_N, "RecommendationSummary", "Severity"),
         type = "string",
         name = "Severity",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRecommendationsOutput = schema.new({
   id = id.from(_N, "ListRecommendationsResponse"),
   type = "structure",
   members = {
      RecommendationSummaries = schema.new({
         id = id.from(_N, "ListRecommendationsOutput", "RecommendationSummaries"),
         type = "list",
         name = "RecommendationSummaries",
         target_id = prelude.Document.id,
         list_member = M.RecommendationSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRecommendationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRepositoryAssociationsInput = schema.new({
   id = id.from(_N, "ListRepositoryAssociationsRequest"),
   type = "structure",
   members = {
      ProviderTypes = schema.new({
         id = id.from(_N, "ListRepositoryAssociationsInput", "ProviderTypes"),
         type = "list",
         name = "ProviderTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.HTTP_QUERY] = { name = "ProviderType" },
         },
      }),
      States = schema.new({
         id = id.from(_N, "ListRepositoryAssociationsInput", "States"),
         type = "list",
         name = "States",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.HTTP_QUERY] = { name = "State" },
         },
      }),
      Names = schema.new({
         id = id.from(_N, "ListRepositoryAssociationsInput", "Names"),
         type = "list",
         name = "Names",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.HTTP_QUERY] = { name = "Name" },
         },
      }),
      Owners = schema.new({
         id = id.from(_N, "ListRepositoryAssociationsInput", "Owners"),
         type = "list",
         name = "Owners",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.HTTP_QUERY] = { name = "Owner" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListRepositoryAssociationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRepositoryAssociationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
   },
})

M.RepositoryAssociationSummary = schema.new({
   id = id.from(_N, "RepositoryAssociationSummary"),
   type = "structure",
   members = {
      AssociationArn = schema.new({
         id = id.from(_N, "RepositoryAssociationSummary", "AssociationArn"),
         type = "string",
         name = "AssociationArn",
         target_id = prelude.String.id,
      }),
      ConnectionArn = schema.new({
         id = id.from(_N, "RepositoryAssociationSummary", "ConnectionArn"),
         type = "string",
         name = "ConnectionArn",
         target_id = prelude.String.id,
      }),
      LastUpdatedTimeStamp = schema.new({
         id = id.from(_N, "RepositoryAssociationSummary", "LastUpdatedTimeStamp"),
         type = "timestamp",
         name = "LastUpdatedTimeStamp",
         target_id = prelude.Timestamp.id,
      }),
      AssociationId = schema.new({
         id = id.from(_N, "RepositoryAssociationSummary", "AssociationId"),
         type = "string",
         name = "AssociationId",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "RepositoryAssociationSummary", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Owner = schema.new({
         id = id.from(_N, "RepositoryAssociationSummary", "Owner"),
         type = "string",
         name = "Owner",
         target_id = prelude.String.id,
      }),
      ProviderType = schema.new({
         id = id.from(_N, "RepositoryAssociationSummary", "ProviderType"),
         type = "string",
         name = "ProviderType",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "RepositoryAssociationSummary", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRepositoryAssociationsOutput = schema.new({
   id = id.from(_N, "ListRepositoryAssociationsResponse"),
   type = "structure",
   members = {
      RepositoryAssociationSummaries = schema.new({
         id = id.from(_N, "ListRepositoryAssociationsOutput", "RepositoryAssociationSummaries"),
         type = "list",
         name = "RepositoryAssociationSummaries",
         target_id = prelude.Document.id,
         list_member = M.RepositoryAssociationSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRepositoryAssociationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
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
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ListTagsForResourceOutput = schema.new({
   id = id.from(_N, "ListTagsForResourceResponse"),
   type = "structure",
   members = {
      Tags = schema.new({
         id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.PutRecommendationFeedbackInput = schema.new({
   id = id.from(_N, "PutRecommendationFeedbackRequest"),
   type = "structure",
   members = {
      CodeReviewArn = schema.new({
         id = id.from(_N, "PutRecommendationFeedbackInput", "CodeReviewArn"),
         type = "string",
         name = "CodeReviewArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RecommendationId = schema.new({
         id = id.from(_N, "PutRecommendationFeedbackInput", "RecommendationId"),
         type = "string",
         name = "RecommendationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Reactions = schema.new({
         id = id.from(_N, "PutRecommendationFeedbackInput", "Reactions"),
         type = "list",
         name = "Reactions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutRecommendationFeedbackOutput = schema.new({
   id = id.from(_N, "PutRecommendationFeedbackResponse"),
   type = "structure",
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
            [traits.HTTP_LABEL] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "TagResourceInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
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
            [traits.HTTP_LABEL] = {},
         },
      }),
      TagKeys = schema.new({
         id = id.from(_N, "UntagResourceInput", "TagKeys"),
         type = "list",
         name = "TagKeys",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "tagKeys" },
         },
      }),
   },
})

M.UntagResourceOutput = schema.new({
   id = id.from(_N, "UntagResourceResponse"),
   type = "structure",
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
   id = id.from("com.amazonaws.codegurureviewer", "AWSGuruFrontendService"),
   version = "2019-09-19",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociateRepository = schema.operation({
   id = id.from("com.amazonaws.codegurureviewer", "AssociateRepository"),
   input = M.AssociateRepositoryInput,
   output = M.AssociateRepositoryOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/associations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateCodeReview = schema.operation({
   id = id.from("com.amazonaws.codegurureviewer", "CreateCodeReview"),
   input = M.CreateCodeReviewInput,
   output = M.CreateCodeReviewOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/codereviews" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeCodeReview = schema.operation({
   id = id.from("com.amazonaws.codegurureviewer", "DescribeCodeReview"),
   input = M.DescribeCodeReviewInput,
   output = M.DescribeCodeReviewOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/codereviews/{CodeReviewArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeRecommendationFeedback = schema.operation({
   id = id.from("com.amazonaws.codegurureviewer", "DescribeRecommendationFeedback"),
   input = M.DescribeRecommendationFeedbackInput,
   output = M.DescribeRecommendationFeedbackOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/feedback/{CodeReviewArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeRepositoryAssociation = schema.operation({
   id = id.from("com.amazonaws.codegurureviewer", "DescribeRepositoryAssociation"),
   input = M.DescribeRepositoryAssociationInput,
   output = M.DescribeRepositoryAssociationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/associations/{AssociationArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociateRepository = schema.operation({
   id = id.from("com.amazonaws.codegurureviewer", "DisassociateRepository"),
   input = M.DisassociateRepositoryInput,
   output = M.DisassociateRepositoryOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/associations/{AssociationArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCodeReviews = schema.operation({
   id = id.from("com.amazonaws.codegurureviewer", "ListCodeReviews"),
   input = M.ListCodeReviewsInput,
   output = M.ListCodeReviewsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/codereviews" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRecommendationFeedback = schema.operation({
   id = id.from("com.amazonaws.codegurureviewer", "ListRecommendationFeedback"),
   input = M.ListRecommendationFeedbackInput,
   output = M.ListRecommendationFeedbackOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/feedback/{CodeReviewArn}/RecommendationFeedback" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRecommendations = schema.operation({
   id = id.from("com.amazonaws.codegurureviewer", "ListRecommendations"),
   input = M.ListRecommendationsInput,
   output = M.ListRecommendationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/codereviews/{CodeReviewArn}/Recommendations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRepositoryAssociations = schema.operation({
   id = id.from("com.amazonaws.codegurureviewer", "ListRepositoryAssociations"),
   input = M.ListRepositoryAssociationsInput,
   output = M.ListRepositoryAssociationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/associations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.codegurureviewer", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutRecommendationFeedback = schema.operation({
   id = id.from("com.amazonaws.codegurureviewer", "PutRecommendationFeedback"),
   input = M.PutRecommendationFeedbackInput,
   output = M.PutRecommendationFeedbackOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/feedback" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.codegurureviewer", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.codegurureviewer", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
