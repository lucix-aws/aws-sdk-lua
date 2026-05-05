local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.codecommit"

local M = {}

M.ActorDoesNotExistException = schema.new({
    id = id.from(_N, "ActorDoesNotExistException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ActorDoesNotExistException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.Approval = schema.new({
    id = id.from(_N, "Approval"),
    type = "structure",
    members = {
        userArn = schema.new({
            id = id.from(_N, "Approval", "userArn"),
            type = "string",
            name = "userArn",
            target_id = prelude.String.id,
        }),
        approvalState = schema.new({
            id = id.from(_N, "Approval", "approvalState"),
            type = "string",
            name = "approvalState",
            target_id = prelude.String.id,
        }),
    },
})

M.OriginApprovalRuleTemplate = schema.new({
    id = id.from(_N, "OriginApprovalRuleTemplate"),
    type = "structure",
    members = {
        approvalRuleTemplateId = schema.new({
            id = id.from(_N, "OriginApprovalRuleTemplate", "approvalRuleTemplateId"),
            type = "string",
            name = "approvalRuleTemplateId",
            target_id = prelude.String.id,
        }),
        approvalRuleTemplateName = schema.new({
            id = id.from(_N, "OriginApprovalRuleTemplate", "approvalRuleTemplateName"),
            type = "string",
            name = "approvalRuleTemplateName",
            target_id = prelude.String.id,
        }),
    },
})

M.ApprovalRule = schema.new({
    id = id.from(_N, "ApprovalRule"),
    type = "structure",
    members = {
        approvalRuleId = schema.new({
            id = id.from(_N, "ApprovalRule", "approvalRuleId"),
            type = "string",
            name = "approvalRuleId",
            target_id = prelude.String.id,
        }),
        approvalRuleName = schema.new({
            id = id.from(_N, "ApprovalRule", "approvalRuleName"),
            type = "string",
            name = "approvalRuleName",
            target_id = prelude.String.id,
        }),
        approvalRuleContent = schema.new({
            id = id.from(_N, "ApprovalRule", "approvalRuleContent"),
            type = "string",
            name = "approvalRuleContent",
            target_id = prelude.String.id,
        }),
        ruleContentSha256 = schema.new({
            id = id.from(_N, "ApprovalRule", "ruleContentSha256"),
            type = "string",
            name = "ruleContentSha256",
            target_id = prelude.String.id,
        }),
        lastModifiedDate = schema.new({
            id = id.from(_N, "ApprovalRule", "lastModifiedDate"),
            type = "timestamp",
            name = "lastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        creationDate = schema.new({
            id = id.from(_N, "ApprovalRule", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
        }),
        lastModifiedUser = schema.new({
            id = id.from(_N, "ApprovalRule", "lastModifiedUser"),
            type = "string",
            name = "lastModifiedUser",
            target_id = prelude.String.id,
        }),
        originApprovalRuleTemplate = schema.new({
            id = id.from(_N, "ApprovalRule", "originApprovalRuleTemplate"),
            type = "structure",
            name = "originApprovalRuleTemplate",
            target_id = id.from(_N, "OriginApprovalRuleTemplate"),
            target = M.OriginApprovalRuleTemplate,
        }),
    },
})

M.ApprovalRuleContentRequiredException = schema.new({
    id = id.from(_N, "ApprovalRuleContentRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ApprovalRuleContentRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ApprovalRuleDoesNotExistException = schema.new({
    id = id.from(_N, "ApprovalRuleDoesNotExistException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ApprovalRuleDoesNotExistException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ApprovalRuleEventMetadata = schema.new({
    id = id.from(_N, "ApprovalRuleEventMetadata"),
    type = "structure",
    members = {
        approvalRuleName = schema.new({
            id = id.from(_N, "ApprovalRuleEventMetadata", "approvalRuleName"),
            type = "string",
            name = "approvalRuleName",
            target_id = prelude.String.id,
        }),
        approvalRuleId = schema.new({
            id = id.from(_N, "ApprovalRuleEventMetadata", "approvalRuleId"),
            type = "string",
            name = "approvalRuleId",
            target_id = prelude.String.id,
        }),
        approvalRuleContent = schema.new({
            id = id.from(_N, "ApprovalRuleEventMetadata", "approvalRuleContent"),
            type = "string",
            name = "approvalRuleContent",
            target_id = prelude.String.id,
        }),
    },
})

M.ApprovalRuleNameAlreadyExistsException = schema.new({
    id = id.from(_N, "ApprovalRuleNameAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ApprovalRuleNameAlreadyExistsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ApprovalRuleNameRequiredException = schema.new({
    id = id.from(_N, "ApprovalRuleNameRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ApprovalRuleNameRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ApprovalRuleOverriddenEventMetadata = schema.new({
    id = id.from(_N, "ApprovalRuleOverriddenEventMetadata"),
    type = "structure",
    members = {
        revisionId = schema.new({
            id = id.from(_N, "ApprovalRuleOverriddenEventMetadata", "revisionId"),
            type = "string",
            name = "revisionId",
            target_id = prelude.String.id,
        }),
        overrideStatus = schema.new({
            id = id.from(_N, "ApprovalRuleOverriddenEventMetadata", "overrideStatus"),
            type = "string",
            name = "overrideStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ApprovalRuleTemplate = schema.new({
    id = id.from(_N, "ApprovalRuleTemplate"),
    type = "structure",
    members = {
        approvalRuleTemplateId = schema.new({
            id = id.from(_N, "ApprovalRuleTemplate", "approvalRuleTemplateId"),
            type = "string",
            name = "approvalRuleTemplateId",
            target_id = prelude.String.id,
        }),
        approvalRuleTemplateName = schema.new({
            id = id.from(_N, "ApprovalRuleTemplate", "approvalRuleTemplateName"),
            type = "string",
            name = "approvalRuleTemplateName",
            target_id = prelude.String.id,
        }),
        approvalRuleTemplateDescription = schema.new({
            id = id.from(_N, "ApprovalRuleTemplate", "approvalRuleTemplateDescription"),
            type = "string",
            name = "approvalRuleTemplateDescription",
            target_id = prelude.String.id,
        }),
        approvalRuleTemplateContent = schema.new({
            id = id.from(_N, "ApprovalRuleTemplate", "approvalRuleTemplateContent"),
            type = "string",
            name = "approvalRuleTemplateContent",
            target_id = prelude.String.id,
        }),
        ruleContentSha256 = schema.new({
            id = id.from(_N, "ApprovalRuleTemplate", "ruleContentSha256"),
            type = "string",
            name = "ruleContentSha256",
            target_id = prelude.String.id,
        }),
        lastModifiedDate = schema.new({
            id = id.from(_N, "ApprovalRuleTemplate", "lastModifiedDate"),
            type = "timestamp",
            name = "lastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        creationDate = schema.new({
            id = id.from(_N, "ApprovalRuleTemplate", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
        }),
        lastModifiedUser = schema.new({
            id = id.from(_N, "ApprovalRuleTemplate", "lastModifiedUser"),
            type = "string",
            name = "lastModifiedUser",
            target_id = prelude.String.id,
        }),
    },
})

M.ApprovalRuleTemplateContentRequiredException = schema.new({
    id = id.from(_N, "ApprovalRuleTemplateContentRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ApprovalRuleTemplateContentRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ApprovalRuleTemplateDoesNotExistException = schema.new({
    id = id.from(_N, "ApprovalRuleTemplateDoesNotExistException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ApprovalRuleTemplateDoesNotExistException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ApprovalRuleTemplateInUseException = schema.new({
    id = id.from(_N, "ApprovalRuleTemplateInUseException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ApprovalRuleTemplateInUseException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ApprovalRuleTemplateNameAlreadyExistsException = schema.new({
    id = id.from(_N, "ApprovalRuleTemplateNameAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ApprovalRuleTemplateNameAlreadyExistsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ApprovalRuleTemplateNameRequiredException = schema.new({
    id = id.from(_N, "ApprovalRuleTemplateNameRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ApprovalRuleTemplateNameRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ApprovalStateChangedEventMetadata = schema.new({
    id = id.from(_N, "ApprovalStateChangedEventMetadata"),
    type = "structure",
    members = {
        revisionId = schema.new({
            id = id.from(_N, "ApprovalStateChangedEventMetadata", "revisionId"),
            type = "string",
            name = "revisionId",
            target_id = prelude.String.id,
        }),
        approvalStatus = schema.new({
            id = id.from(_N, "ApprovalStateChangedEventMetadata", "approvalStatus"),
            type = "string",
            name = "approvalStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ApprovalStateRequiredException = schema.new({
    id = id.from(_N, "ApprovalStateRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ApprovalStateRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateApprovalRuleTemplateWithRepositoryInput = schema.new({
    id = id.from(_N, "AssociateApprovalRuleTemplateWithRepositoryInput"),
    type = "structure",
    members = {
        approvalRuleTemplateName = schema.new({
            id = id.from(_N, "AssociateApprovalRuleTemplateWithRepositoryInput", "approvalRuleTemplateName"),
            type = "string",
            name = "approvalRuleTemplateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        repositoryName = schema.new({
            id = id.from(_N, "AssociateApprovalRuleTemplateWithRepositoryInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateApprovalRuleTemplateWithRepositoryOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.EncryptionIntegrityChecksFailedException = schema.new({
    id = id.from(_N, "EncryptionIntegrityChecksFailedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "EncryptionIntegrityChecksFailedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.EncryptionKeyAccessDeniedException = schema.new({
    id = id.from(_N, "EncryptionKeyAccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "EncryptionKeyAccessDeniedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.EncryptionKeyDisabledException = schema.new({
    id = id.from(_N, "EncryptionKeyDisabledException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "EncryptionKeyDisabledException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.EncryptionKeyNotFoundException = schema.new({
    id = id.from(_N, "EncryptionKeyNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "EncryptionKeyNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.EncryptionKeyUnavailableException = schema.new({
    id = id.from(_N, "EncryptionKeyUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "EncryptionKeyUnavailableException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidApprovalRuleTemplateNameException = schema.new({
    id = id.from(_N, "InvalidApprovalRuleTemplateNameException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidApprovalRuleTemplateNameException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRepositoryNameException = schema.new({
    id = id.from(_N, "InvalidRepositoryNameException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidRepositoryNameException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.MaximumRuleTemplatesAssociatedWithRepositoryException = schema.new({
    id = id.from(_N, "MaximumRuleTemplatesAssociatedWithRepositoryException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MaximumRuleTemplatesAssociatedWithRepositoryException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.RepositoryDoesNotExistException = schema.new({
    id = id.from(_N, "RepositoryDoesNotExistException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "RepositoryDoesNotExistException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.RepositoryNameRequiredException = schema.new({
    id = id.from(_N, "RepositoryNameRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "RepositoryNameRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AuthorDoesNotExistException = schema.new({
    id = id.from(_N, "AuthorDoesNotExistException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AuthorDoesNotExistException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchAssociateApprovalRuleTemplateWithRepositoriesInput = schema.new({
    id = id.from(_N, "BatchAssociateApprovalRuleTemplateWithRepositoriesInput"),
    type = "structure",
    members = {
        approvalRuleTemplateName = schema.new({
            id = id.from(_N, "BatchAssociateApprovalRuleTemplateWithRepositoriesInput", "approvalRuleTemplateName"),
            type = "string",
            name = "approvalRuleTemplateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        repositoryNames = schema.new({
            id = id.from(_N, "BatchAssociateApprovalRuleTemplateWithRepositoriesInput", "repositoryNames"),
            type = "list",
            name = "repositoryNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchAssociateApprovalRuleTemplateWithRepositoriesError = schema.new({
    id = id.from(_N, "BatchAssociateApprovalRuleTemplateWithRepositoriesError"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "BatchAssociateApprovalRuleTemplateWithRepositoriesError", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "BatchAssociateApprovalRuleTemplateWithRepositoriesError", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "BatchAssociateApprovalRuleTemplateWithRepositoriesError", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchAssociateApprovalRuleTemplateWithRepositoriesOutput = schema.new({
    id = id.from(_N, "BatchAssociateApprovalRuleTemplateWithRepositoriesOutput"),
    type = "structure",
    members = {
        associatedRepositoryNames = schema.new({
            id = id.from(_N, "BatchAssociateApprovalRuleTemplateWithRepositoriesOutput", "associatedRepositoryNames"),
            type = "list",
            name = "associatedRepositoryNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errors = schema.new({
            id = id.from(_N, "BatchAssociateApprovalRuleTemplateWithRepositoriesOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchAssociateApprovalRuleTemplateWithRepositoriesError,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MaximumRepositoryNamesExceededException = schema.new({
    id = id.from(_N, "MaximumRepositoryNamesExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MaximumRepositoryNamesExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.RepositoryNamesRequiredException = schema.new({
    id = id.from(_N, "RepositoryNamesRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "RepositoryNamesRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchDescribeMergeConflictsInput = schema.new({
    id = id.from(_N, "BatchDescribeMergeConflictsInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "BatchDescribeMergeConflictsInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationCommitSpecifier = schema.new({
            id = id.from(_N, "BatchDescribeMergeConflictsInput", "destinationCommitSpecifier"),
            type = "string",
            name = "destinationCommitSpecifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceCommitSpecifier = schema.new({
            id = id.from(_N, "BatchDescribeMergeConflictsInput", "sourceCommitSpecifier"),
            type = "string",
            name = "sourceCommitSpecifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        mergeOption = schema.new({
            id = id.from(_N, "BatchDescribeMergeConflictsInput", "mergeOption"),
            type = "string",
            name = "mergeOption",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxMergeHunks = schema.new({
            id = id.from(_N, "BatchDescribeMergeConflictsInput", "maxMergeHunks"),
            type = "integer",
            name = "maxMergeHunks",
            target_id = prelude.Integer.id,
        }),
        maxConflictFiles = schema.new({
            id = id.from(_N, "BatchDescribeMergeConflictsInput", "maxConflictFiles"),
            type = "integer",
            name = "maxConflictFiles",
            target_id = prelude.Integer.id,
        }),
        filePaths = schema.new({
            id = id.from(_N, "BatchDescribeMergeConflictsInput", "filePaths"),
            type = "list",
            name = "filePaths",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        conflictDetailLevel = schema.new({
            id = id.from(_N, "BatchDescribeMergeConflictsInput", "conflictDetailLevel"),
            type = "string",
            name = "conflictDetailLevel",
            target_id = prelude.String.id,
        }),
        conflictResolutionStrategy = schema.new({
            id = id.from(_N, "BatchDescribeMergeConflictsInput", "conflictResolutionStrategy"),
            type = "string",
            name = "conflictResolutionStrategy",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "BatchDescribeMergeConflictsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.FileModes = schema.new({
    id = id.from(_N, "FileModes"),
    type = "structure",
    members = {
        source = schema.new({
            id = id.from(_N, "FileModes", "source"),
            type = "string",
            name = "source",
            target_id = prelude.String.id,
        }),
        destination = schema.new({
            id = id.from(_N, "FileModes", "destination"),
            type = "string",
            name = "destination",
            target_id = prelude.String.id,
        }),
        base = schema.new({
            id = id.from(_N, "FileModes", "base"),
            type = "string",
            name = "base",
            target_id = prelude.String.id,
        }),
    },
})

M.FileSizes = schema.new({
    id = id.from(_N, "FileSizes"),
    type = "structure",
    members = {
        source = schema.new({
            id = id.from(_N, "FileSizes", "source"),
            type = "long",
            name = "source",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        destination = schema.new({
            id = id.from(_N, "FileSizes", "destination"),
            type = "long",
            name = "destination",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        base = schema.new({
            id = id.from(_N, "FileSizes", "base"),
            type = "long",
            name = "base",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.IsBinaryFile = schema.new({
    id = id.from(_N, "IsBinaryFile"),
    type = "structure",
    members = {
        source = schema.new({
            id = id.from(_N, "IsBinaryFile", "source"),
            type = "boolean",
            name = "source",
            target_id = prelude.Boolean.id,
        }),
        destination = schema.new({
            id = id.from(_N, "IsBinaryFile", "destination"),
            type = "boolean",
            name = "destination",
            target_id = prelude.Boolean.id,
        }),
        base = schema.new({
            id = id.from(_N, "IsBinaryFile", "base"),
            type = "boolean",
            name = "base",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.MergeOperations = schema.new({
    id = id.from(_N, "MergeOperations"),
    type = "structure",
    members = {
        source = schema.new({
            id = id.from(_N, "MergeOperations", "source"),
            type = "string",
            name = "source",
            target_id = prelude.String.id,
        }),
        destination = schema.new({
            id = id.from(_N, "MergeOperations", "destination"),
            type = "string",
            name = "destination",
            target_id = prelude.String.id,
        }),
    },
})

M.ObjectTypes = schema.new({
    id = id.from(_N, "ObjectTypes"),
    type = "structure",
    members = {
        source = schema.new({
            id = id.from(_N, "ObjectTypes", "source"),
            type = "string",
            name = "source",
            target_id = prelude.String.id,
        }),
        destination = schema.new({
            id = id.from(_N, "ObjectTypes", "destination"),
            type = "string",
            name = "destination",
            target_id = prelude.String.id,
        }),
        base = schema.new({
            id = id.from(_N, "ObjectTypes", "base"),
            type = "string",
            name = "base",
            target_id = prelude.String.id,
        }),
    },
})

M.ConflictMetadata = schema.new({
    id = id.from(_N, "ConflictMetadata"),
    type = "structure",
    members = {
        filePath = schema.new({
            id = id.from(_N, "ConflictMetadata", "filePath"),
            type = "string",
            name = "filePath",
            target_id = prelude.String.id,
        }),
        fileSizes = schema.new({
            id = id.from(_N, "ConflictMetadata", "fileSizes"),
            type = "structure",
            name = "fileSizes",
            target_id = id.from(_N, "FileSizes"),
            target = M.FileSizes,
        }),
        fileModes = schema.new({
            id = id.from(_N, "ConflictMetadata", "fileModes"),
            type = "structure",
            name = "fileModes",
            target_id = id.from(_N, "FileModes"),
            target = M.FileModes,
        }),
        objectTypes = schema.new({
            id = id.from(_N, "ConflictMetadata", "objectTypes"),
            type = "structure",
            name = "objectTypes",
            target_id = id.from(_N, "ObjectTypes"),
            target = M.ObjectTypes,
        }),
        numberOfConflicts = schema.new({
            id = id.from(_N, "ConflictMetadata", "numberOfConflicts"),
            type = "integer",
            name = "numberOfConflicts",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        isBinaryFile = schema.new({
            id = id.from(_N, "ConflictMetadata", "isBinaryFile"),
            type = "structure",
            name = "isBinaryFile",
            target_id = id.from(_N, "IsBinaryFile"),
            target = M.IsBinaryFile,
        }),
        contentConflict = schema.new({
            id = id.from(_N, "ConflictMetadata", "contentConflict"),
            type = "boolean",
            name = "contentConflict",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        fileModeConflict = schema.new({
            id = id.from(_N, "ConflictMetadata", "fileModeConflict"),
            type = "boolean",
            name = "fileModeConflict",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        objectTypeConflict = schema.new({
            id = id.from(_N, "ConflictMetadata", "objectTypeConflict"),
            type = "boolean",
            name = "objectTypeConflict",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        mergeOperations = schema.new({
            id = id.from(_N, "ConflictMetadata", "mergeOperations"),
            type = "structure",
            name = "mergeOperations",
            target_id = id.from(_N, "MergeOperations"),
            target = M.MergeOperations,
        }),
    },
})

M.MergeHunkDetail = schema.new({
    id = id.from(_N, "MergeHunkDetail"),
    type = "structure",
    members = {
        startLine = schema.new({
            id = id.from(_N, "MergeHunkDetail", "startLine"),
            type = "integer",
            name = "startLine",
            target_id = prelude.Integer.id,
        }),
        endLine = schema.new({
            id = id.from(_N, "MergeHunkDetail", "endLine"),
            type = "integer",
            name = "endLine",
            target_id = prelude.Integer.id,
        }),
        hunkContent = schema.new({
            id = id.from(_N, "MergeHunkDetail", "hunkContent"),
            type = "string",
            name = "hunkContent",
            target_id = prelude.String.id,
        }),
    },
})

M.MergeHunk = schema.new({
    id = id.from(_N, "MergeHunk"),
    type = "structure",
    members = {
        isConflict = schema.new({
            id = id.from(_N, "MergeHunk", "isConflict"),
            type = "boolean",
            name = "isConflict",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        source = schema.new({
            id = id.from(_N, "MergeHunk", "source"),
            type = "structure",
            name = "source",
            target_id = id.from(_N, "MergeHunkDetail"),
            target = M.MergeHunkDetail,
        }),
        destination = schema.new({
            id = id.from(_N, "MergeHunk", "destination"),
            type = "structure",
            name = "destination",
            target_id = id.from(_N, "MergeHunkDetail"),
            target = M.MergeHunkDetail,
        }),
        base = schema.new({
            id = id.from(_N, "MergeHunk", "base"),
            type = "structure",
            name = "base",
            target_id = id.from(_N, "MergeHunkDetail"),
            target = M.MergeHunkDetail,
        }),
    },
})

M.Conflict = schema.new({
    id = id.from(_N, "Conflict"),
    type = "structure",
    members = {
        conflictMetadata = schema.new({
            id = id.from(_N, "Conflict", "conflictMetadata"),
            type = "structure",
            name = "conflictMetadata",
            target_id = id.from(_N, "ConflictMetadata"),
            target = M.ConflictMetadata,
        }),
        mergeHunks = schema.new({
            id = id.from(_N, "Conflict", "mergeHunks"),
            type = "list",
            name = "mergeHunks",
            target_id = prelude.Document.id,
            list_member = M.MergeHunk,
        }),
    },
})

M.BatchDescribeMergeConflictsError = schema.new({
    id = id.from(_N, "BatchDescribeMergeConflictsError"),
    type = "structure",
    members = {
        filePath = schema.new({
            id = id.from(_N, "BatchDescribeMergeConflictsError", "filePath"),
            type = "string",
            name = "filePath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        exceptionName = schema.new({
            id = id.from(_N, "BatchDescribeMergeConflictsError", "exceptionName"),
            type = "string",
            name = "exceptionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "BatchDescribeMergeConflictsError", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchDescribeMergeConflictsOutput = schema.new({
    id = id.from(_N, "BatchDescribeMergeConflictsOutput"),
    type = "structure",
    members = {
        conflicts = schema.new({
            id = id.from(_N, "BatchDescribeMergeConflictsOutput", "conflicts"),
            type = "list",
            name = "conflicts",
            target_id = prelude.Document.id,
            list_member = M.Conflict,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "BatchDescribeMergeConflictsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        errors = schema.new({
            id = id.from(_N, "BatchDescribeMergeConflictsOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchDescribeMergeConflictsError,
        }),
        destinationCommitId = schema.new({
            id = id.from(_N, "BatchDescribeMergeConflictsOutput", "destinationCommitId"),
            type = "string",
            name = "destinationCommitId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceCommitId = schema.new({
            id = id.from(_N, "BatchDescribeMergeConflictsOutput", "sourceCommitId"),
            type = "string",
            name = "sourceCommitId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        baseCommitId = schema.new({
            id = id.from(_N, "BatchDescribeMergeConflictsOutput", "baseCommitId"),
            type = "string",
            name = "baseCommitId",
            target_id = prelude.String.id,
        }),
    },
})

M.CommitDoesNotExistException = schema.new({
    id = id.from(_N, "CommitDoesNotExistException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CommitDoesNotExistException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CommitRequiredException = schema.new({
    id = id.from(_N, "CommitRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CommitRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidCommitException = schema.new({
    id = id.from(_N, "InvalidCommitException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidCommitException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidConflictDetailLevelException = schema.new({
    id = id.from(_N, "InvalidConflictDetailLevelException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidConflictDetailLevelException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidConflictResolutionStrategyException = schema.new({
    id = id.from(_N, "InvalidConflictResolutionStrategyException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidConflictResolutionStrategyException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidContinuationTokenException = schema.new({
    id = id.from(_N, "InvalidContinuationTokenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidContinuationTokenException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidMaxConflictFilesException = schema.new({
    id = id.from(_N, "InvalidMaxConflictFilesException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidMaxConflictFilesException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidMaxMergeHunksException = schema.new({
    id = id.from(_N, "InvalidMaxMergeHunksException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidMaxMergeHunksException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidMergeOptionException = schema.new({
    id = id.from(_N, "InvalidMergeOptionException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidMergeOptionException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.MaximumFileContentToLoadExceededException = schema.new({
    id = id.from(_N, "MaximumFileContentToLoadExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MaximumFileContentToLoadExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.MaximumItemsToCompareExceededException = schema.new({
    id = id.from(_N, "MaximumItemsToCompareExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MaximumItemsToCompareExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.MergeOptionRequiredException = schema.new({
    id = id.from(_N, "MergeOptionRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MergeOptionRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TipsDivergenceExceededException = schema.new({
    id = id.from(_N, "TipsDivergenceExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TipsDivergenceExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchDisassociateApprovalRuleTemplateFromRepositoriesInput = schema.new({
    id = id.from(_N, "BatchDisassociateApprovalRuleTemplateFromRepositoriesInput"),
    type = "structure",
    members = {
        approvalRuleTemplateName = schema.new({
            id = id.from(_N, "BatchDisassociateApprovalRuleTemplateFromRepositoriesInput", "approvalRuleTemplateName"),
            type = "string",
            name = "approvalRuleTemplateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        repositoryNames = schema.new({
            id = id.from(_N, "BatchDisassociateApprovalRuleTemplateFromRepositoriesInput", "repositoryNames"),
            type = "list",
            name = "repositoryNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchDisassociateApprovalRuleTemplateFromRepositoriesError = schema.new({
    id = id.from(_N, "BatchDisassociateApprovalRuleTemplateFromRepositoriesError"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "BatchDisassociateApprovalRuleTemplateFromRepositoriesError", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "BatchDisassociateApprovalRuleTemplateFromRepositoriesError", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "BatchDisassociateApprovalRuleTemplateFromRepositoriesError", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput = schema.new({
    id = id.from(_N, "BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput"),
    type = "structure",
    members = {
        disassociatedRepositoryNames = schema.new({
            id = id.from(_N, "BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput", "disassociatedRepositoryNames"),
            type = "list",
            name = "disassociatedRepositoryNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errors = schema.new({
            id = id.from(_N, "BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchDisassociateApprovalRuleTemplateFromRepositoriesError,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchGetCommitsInput = schema.new({
    id = id.from(_N, "BatchGetCommitsInput"),
    type = "structure",
    members = {
        commitIds = schema.new({
            id = id.from(_N, "BatchGetCommitsInput", "commitIds"),
            type = "list",
            name = "commitIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        repositoryName = schema.new({
            id = id.from(_N, "BatchGetCommitsInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UserInfo = schema.new({
    id = id.from(_N, "UserInfo"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "UserInfo", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        email = schema.new({
            id = id.from(_N, "UserInfo", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
        }),
        date = schema.new({
            id = id.from(_N, "UserInfo", "date"),
            type = "string",
            name = "date",
            target_id = prelude.String.id,
        }),
    },
})

M.Commit = schema.new({
    id = id.from(_N, "Commit"),
    type = "structure",
    members = {
        commitId = schema.new({
            id = id.from(_N, "Commit", "commitId"),
            type = "string",
            name = "commitId",
            target_id = prelude.String.id,
        }),
        treeId = schema.new({
            id = id.from(_N, "Commit", "treeId"),
            type = "string",
            name = "treeId",
            target_id = prelude.String.id,
        }),
        parents = schema.new({
            id = id.from(_N, "Commit", "parents"),
            type = "list",
            name = "parents",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        message = schema.new({
            id = id.from(_N, "Commit", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        author = schema.new({
            id = id.from(_N, "Commit", "author"),
            type = "structure",
            name = "author",
            target_id = id.from(_N, "UserInfo"),
            target = M.UserInfo,
        }),
        committer = schema.new({
            id = id.from(_N, "Commit", "committer"),
            type = "structure",
            name = "committer",
            target_id = id.from(_N, "UserInfo"),
            target = M.UserInfo,
        }),
        additionalData = schema.new({
            id = id.from(_N, "Commit", "additionalData"),
            type = "string",
            name = "additionalData",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchGetCommitsError = schema.new({
    id = id.from(_N, "BatchGetCommitsError"),
    type = "structure",
    members = {
        commitId = schema.new({
            id = id.from(_N, "BatchGetCommitsError", "commitId"),
            type = "string",
            name = "commitId",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "BatchGetCommitsError", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "BatchGetCommitsError", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchGetCommitsOutput = schema.new({
    id = id.from(_N, "BatchGetCommitsOutput"),
    type = "structure",
    members = {
        commits = schema.new({
            id = id.from(_N, "BatchGetCommitsOutput", "commits"),
            type = "list",
            name = "commits",
            target_id = prelude.Document.id,
            list_member = M.Commit,
        }),
        errors = schema.new({
            id = id.from(_N, "BatchGetCommitsOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchGetCommitsError,
        }),
    },
})

M.CommitIdsLimitExceededException = schema.new({
    id = id.from(_N, "CommitIdsLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CommitIdsLimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CommitIdsListRequiredException = schema.new({
    id = id.from(_N, "CommitIdsListRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CommitIdsListRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchGetRepositoriesInput = schema.new({
    id = id.from(_N, "BatchGetRepositoriesInput"),
    type = "structure",
    members = {
        repositoryNames = schema.new({
            id = id.from(_N, "BatchGetRepositoriesInput", "repositoryNames"),
            type = "list",
            name = "repositoryNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchGetRepositoriesError = schema.new({
    id = id.from(_N, "BatchGetRepositoriesError"),
    type = "structure",
    members = {
        repositoryId = schema.new({
            id = id.from(_N, "BatchGetRepositoriesError", "repositoryId"),
            type = "string",
            name = "repositoryId",
            target_id = prelude.String.id,
        }),
        repositoryName = schema.new({
            id = id.from(_N, "BatchGetRepositoriesError", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "BatchGetRepositoriesError", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "BatchGetRepositoriesError", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.RepositoryMetadata = schema.new({
    id = id.from(_N, "RepositoryMetadata"),
    type = "structure",
    members = {
        accountId = schema.new({
            id = id.from(_N, "RepositoryMetadata", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
        }),
        repositoryId = schema.new({
            id = id.from(_N, "RepositoryMetadata", "repositoryId"),
            type = "string",
            name = "repositoryId",
            target_id = prelude.String.id,
        }),
        repositoryName = schema.new({
            id = id.from(_N, "RepositoryMetadata", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
        }),
        repositoryDescription = schema.new({
            id = id.from(_N, "RepositoryMetadata", "repositoryDescription"),
            type = "string",
            name = "repositoryDescription",
            target_id = prelude.String.id,
        }),
        defaultBranch = schema.new({
            id = id.from(_N, "RepositoryMetadata", "defaultBranch"),
            type = "string",
            name = "defaultBranch",
            target_id = prelude.String.id,
        }),
        lastModifiedDate = schema.new({
            id = id.from(_N, "RepositoryMetadata", "lastModifiedDate"),
            type = "timestamp",
            name = "lastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        creationDate = schema.new({
            id = id.from(_N, "RepositoryMetadata", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
        }),
        cloneUrlHttp = schema.new({
            id = id.from(_N, "RepositoryMetadata", "cloneUrlHttp"),
            type = "string",
            name = "cloneUrlHttp",
            target_id = prelude.String.id,
        }),
        cloneUrlSsh = schema.new({
            id = id.from(_N, "RepositoryMetadata", "cloneUrlSsh"),
            type = "string",
            name = "cloneUrlSsh",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "RepositoryMetadata", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "RepositoryMetadata", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchGetRepositoriesOutput = schema.new({
    id = id.from(_N, "BatchGetRepositoriesOutput"),
    type = "structure",
    members = {
        repositories = schema.new({
            id = id.from(_N, "BatchGetRepositoriesOutput", "repositories"),
            type = "list",
            name = "repositories",
            target_id = prelude.Document.id,
            list_member = M.RepositoryMetadata,
        }),
        repositoriesNotFound = schema.new({
            id = id.from(_N, "BatchGetRepositoriesOutput", "repositoriesNotFound"),
            type = "list",
            name = "repositoriesNotFound",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        errors = schema.new({
            id = id.from(_N, "BatchGetRepositoriesOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchGetRepositoriesError,
        }),
    },
})

M.BeforeCommitIdAndAfterCommitIdAreSameException = schema.new({
    id = id.from(_N, "BeforeCommitIdAndAfterCommitIdAreSameException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "BeforeCommitIdAndAfterCommitIdAreSameException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.BlobIdDoesNotExistException = schema.new({
    id = id.from(_N, "BlobIdDoesNotExistException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "BlobIdDoesNotExistException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.BlobIdRequiredException = schema.new({
    id = id.from(_N, "BlobIdRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "BlobIdRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.BlobMetadata = schema.new({
    id = id.from(_N, "BlobMetadata"),
    type = "structure",
    members = {
        blobId = schema.new({
            id = id.from(_N, "BlobMetadata", "blobId"),
            type = "string",
            name = "blobId",
            target_id = prelude.String.id,
        }),
        path = schema.new({
            id = id.from(_N, "BlobMetadata", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
        }),
        mode = schema.new({
            id = id.from(_N, "BlobMetadata", "mode"),
            type = "string",
            name = "mode",
            target_id = prelude.String.id,
        }),
    },
})

M.BranchDoesNotExistException = schema.new({
    id = id.from(_N, "BranchDoesNotExistException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "BranchDoesNotExistException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.BranchInfo = schema.new({
    id = id.from(_N, "BranchInfo"),
    type = "structure",
    members = {
        branchName = schema.new({
            id = id.from(_N, "BranchInfo", "branchName"),
            type = "string",
            name = "branchName",
            target_id = prelude.String.id,
        }),
        commitId = schema.new({
            id = id.from(_N, "BranchInfo", "commitId"),
            type = "string",
            name = "commitId",
            target_id = prelude.String.id,
        }),
    },
})

M.BranchNameExistsException = schema.new({
    id = id.from(_N, "BranchNameExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "BranchNameExistsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.BranchNameIsTagNameException = schema.new({
    id = id.from(_N, "BranchNameIsTagNameException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "BranchNameIsTagNameException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.BranchNameRequiredException = schema.new({
    id = id.from(_N, "BranchNameRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "BranchNameRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CannotDeleteApprovalRuleFromTemplateException = schema.new({
    id = id.from(_N, "CannotDeleteApprovalRuleFromTemplateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CannotDeleteApprovalRuleFromTemplateException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CannotModifyApprovalRuleFromTemplateException = schema.new({
    id = id.from(_N, "CannotModifyApprovalRuleFromTemplateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CannotModifyApprovalRuleFromTemplateException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ClientRequestTokenRequiredException = schema.new({
    id = id.from(_N, "ClientRequestTokenRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ClientRequestTokenRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateApprovalRuleTemplateInput = schema.new({
    id = id.from(_N, "CreateApprovalRuleTemplateInput"),
    type = "structure",
    members = {
        approvalRuleTemplateName = schema.new({
            id = id.from(_N, "CreateApprovalRuleTemplateInput", "approvalRuleTemplateName"),
            type = "string",
            name = "approvalRuleTemplateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        approvalRuleTemplateContent = schema.new({
            id = id.from(_N, "CreateApprovalRuleTemplateInput", "approvalRuleTemplateContent"),
            type = "string",
            name = "approvalRuleTemplateContent",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        approvalRuleTemplateDescription = schema.new({
            id = id.from(_N, "CreateApprovalRuleTemplateInput", "approvalRuleTemplateDescription"),
            type = "string",
            name = "approvalRuleTemplateDescription",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateApprovalRuleTemplateOutput = schema.new({
    id = id.from(_N, "CreateApprovalRuleTemplateOutput"),
    type = "structure",
    members = {
        approvalRuleTemplate = schema.new({
            id = id.from(_N, "CreateApprovalRuleTemplateOutput", "approvalRuleTemplate"),
            type = "structure",
            name = "approvalRuleTemplate",
            target_id = id.from(_N, "ApprovalRuleTemplate"),
            target = M.ApprovalRuleTemplate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InvalidApprovalRuleTemplateContentException = schema.new({
    id = id.from(_N, "InvalidApprovalRuleTemplateContentException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidApprovalRuleTemplateContentException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidApprovalRuleTemplateDescriptionException = schema.new({
    id = id.from(_N, "InvalidApprovalRuleTemplateDescriptionException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidApprovalRuleTemplateDescriptionException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.NumberOfRuleTemplatesExceededException = schema.new({
    id = id.from(_N, "NumberOfRuleTemplatesExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NumberOfRuleTemplatesExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CommitIdRequiredException = schema.new({
    id = id.from(_N, "CommitIdRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CommitIdRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateBranchInput = schema.new({
    id = id.from(_N, "CreateBranchInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "CreateBranchInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        branchName = schema.new({
            id = id.from(_N, "CreateBranchInput", "branchName"),
            type = "string",
            name = "branchName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        commitId = schema.new({
            id = id.from(_N, "CreateBranchInput", "commitId"),
            type = "string",
            name = "commitId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateBranchOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.InvalidBranchNameException = schema.new({
    id = id.from(_N, "InvalidBranchNameException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidBranchNameException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidCommitIdException = schema.new({
    id = id.from(_N, "InvalidCommitIdException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidCommitIdException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CommitMessageLengthExceededException = schema.new({
    id = id.from(_N, "CommitMessageLengthExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CommitMessageLengthExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteFileEntry = schema.new({
    id = id.from(_N, "DeleteFileEntry"),
    type = "structure",
    members = {
        filePath = schema.new({
            id = id.from(_N, "DeleteFileEntry", "filePath"),
            type = "string",
            name = "filePath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SourceFileSpecifier = schema.new({
    id = id.from(_N, "SourceFileSpecifier"),
    type = "structure",
    members = {
        filePath = schema.new({
            id = id.from(_N, "SourceFileSpecifier", "filePath"),
            type = "string",
            name = "filePath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        isMove = schema.new({
            id = id.from(_N, "SourceFileSpecifier", "isMove"),
            type = "boolean",
            name = "isMove",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.PutFileEntry = schema.new({
    id = id.from(_N, "PutFileEntry"),
    type = "structure",
    members = {
        filePath = schema.new({
            id = id.from(_N, "PutFileEntry", "filePath"),
            type = "string",
            name = "filePath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fileMode = schema.new({
            id = id.from(_N, "PutFileEntry", "fileMode"),
            type = "string",
            name = "fileMode",
            target_id = prelude.String.id,
        }),
        fileContent = schema.new({
            id = id.from(_N, "PutFileEntry", "fileContent"),
            type = "blob",
            name = "fileContent",
            target_id = prelude.Blob.id,
        }),
        sourceFile = schema.new({
            id = id.from(_N, "PutFileEntry", "sourceFile"),
            type = "structure",
            name = "sourceFile",
            target_id = id.from(_N, "SourceFileSpecifier"),
            target = M.SourceFileSpecifier,
        }),
    },
})

M.SetFileModeEntry = schema.new({
    id = id.from(_N, "SetFileModeEntry"),
    type = "structure",
    members = {
        filePath = schema.new({
            id = id.from(_N, "SetFileModeEntry", "filePath"),
            type = "string",
            name = "filePath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fileMode = schema.new({
            id = id.from(_N, "SetFileModeEntry", "fileMode"),
            type = "string",
            name = "fileMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateCommitInput = schema.new({
    id = id.from(_N, "CreateCommitInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "CreateCommitInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        branchName = schema.new({
            id = id.from(_N, "CreateCommitInput", "branchName"),
            type = "string",
            name = "branchName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        parentCommitId = schema.new({
            id = id.from(_N, "CreateCommitInput", "parentCommitId"),
            type = "string",
            name = "parentCommitId",
            target_id = prelude.String.id,
        }),
        authorName = schema.new({
            id = id.from(_N, "CreateCommitInput", "authorName"),
            type = "string",
            name = "authorName",
            target_id = prelude.String.id,
        }),
        email = schema.new({
            id = id.from(_N, "CreateCommitInput", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
        }),
        commitMessage = schema.new({
            id = id.from(_N, "CreateCommitInput", "commitMessage"),
            type = "string",
            name = "commitMessage",
            target_id = prelude.String.id,
        }),
        keepEmptyFolders = schema.new({
            id = id.from(_N, "CreateCommitInput", "keepEmptyFolders"),
            type = "boolean",
            name = "keepEmptyFolders",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        putFiles = schema.new({
            id = id.from(_N, "CreateCommitInput", "putFiles"),
            type = "list",
            name = "putFiles",
            target_id = prelude.Document.id,
            list_member = M.PutFileEntry,
        }),
        deleteFiles = schema.new({
            id = id.from(_N, "CreateCommitInput", "deleteFiles"),
            type = "list",
            name = "deleteFiles",
            target_id = prelude.Document.id,
            list_member = M.DeleteFileEntry,
        }),
        setFileModes = schema.new({
            id = id.from(_N, "CreateCommitInput", "setFileModes"),
            type = "list",
            name = "setFileModes",
            target_id = prelude.Document.id,
            list_member = M.SetFileModeEntry,
        }),
    },
})

M.FileMetadata = schema.new({
    id = id.from(_N, "FileMetadata"),
    type = "structure",
    members = {
        absolutePath = schema.new({
            id = id.from(_N, "FileMetadata", "absolutePath"),
            type = "string",
            name = "absolutePath",
            target_id = prelude.String.id,
        }),
        blobId = schema.new({
            id = id.from(_N, "FileMetadata", "blobId"),
            type = "string",
            name = "blobId",
            target_id = prelude.String.id,
        }),
        fileMode = schema.new({
            id = id.from(_N, "FileMetadata", "fileMode"),
            type = "string",
            name = "fileMode",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateCommitOutput = schema.new({
    id = id.from(_N, "CreateCommitOutput"),
    type = "structure",
    members = {
        commitId = schema.new({
            id = id.from(_N, "CreateCommitOutput", "commitId"),
            type = "string",
            name = "commitId",
            target_id = prelude.String.id,
        }),
        treeId = schema.new({
            id = id.from(_N, "CreateCommitOutput", "treeId"),
            type = "string",
            name = "treeId",
            target_id = prelude.String.id,
        }),
        filesAdded = schema.new({
            id = id.from(_N, "CreateCommitOutput", "filesAdded"),
            type = "list",
            name = "filesAdded",
            target_id = prelude.Document.id,
            list_member = M.FileMetadata,
        }),
        filesUpdated = schema.new({
            id = id.from(_N, "CreateCommitOutput", "filesUpdated"),
            type = "list",
            name = "filesUpdated",
            target_id = prelude.Document.id,
            list_member = M.FileMetadata,
        }),
        filesDeleted = schema.new({
            id = id.from(_N, "CreateCommitOutput", "filesDeleted"),
            type = "list",
            name = "filesDeleted",
            target_id = prelude.Document.id,
            list_member = M.FileMetadata,
        }),
    },
})

M.DirectoryNameConflictsWithFileNameException = schema.new({
    id = id.from(_N, "DirectoryNameConflictsWithFileNameException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DirectoryNameConflictsWithFileNameException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.FileContentAndSourceFileSpecifiedException = schema.new({
    id = id.from(_N, "FileContentAndSourceFileSpecifiedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "FileContentAndSourceFileSpecifiedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.FileContentSizeLimitExceededException = schema.new({
    id = id.from(_N, "FileContentSizeLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "FileContentSizeLimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.FileDoesNotExistException = schema.new({
    id = id.from(_N, "FileDoesNotExistException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "FileDoesNotExistException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.FileEntryRequiredException = schema.new({
    id = id.from(_N, "FileEntryRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "FileEntryRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.FileModeRequiredException = schema.new({
    id = id.from(_N, "FileModeRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "FileModeRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.FileNameConflictsWithDirectoryNameException = schema.new({
    id = id.from(_N, "FileNameConflictsWithDirectoryNameException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "FileNameConflictsWithDirectoryNameException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.FilePathConflictsWithSubmodulePathException = schema.new({
    id = id.from(_N, "FilePathConflictsWithSubmodulePathException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "FilePathConflictsWithSubmodulePathException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.FolderContentSizeLimitExceededException = schema.new({
    id = id.from(_N, "FolderContentSizeLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "FolderContentSizeLimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidDeletionParameterException = schema.new({
    id = id.from(_N, "InvalidDeletionParameterException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidDeletionParameterException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidEmailException = schema.new({
    id = id.from(_N, "InvalidEmailException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidEmailException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidFileModeException = schema.new({
    id = id.from(_N, "InvalidFileModeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidFileModeException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidParentCommitIdException = schema.new({
    id = id.from(_N, "InvalidParentCommitIdException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidParentCommitIdException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidPathException = schema.new({
    id = id.from(_N, "InvalidPathException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidPathException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.MaximumFileEntriesExceededException = schema.new({
    id = id.from(_N, "MaximumFileEntriesExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MaximumFileEntriesExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.NameLengthExceededException = schema.new({
    id = id.from(_N, "NameLengthExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NameLengthExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoChangeException = schema.new({
    id = id.from(_N, "NoChangeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NoChangeException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ParentCommitDoesNotExistException = schema.new({
    id = id.from(_N, "ParentCommitDoesNotExistException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ParentCommitDoesNotExistException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ParentCommitIdOutdatedException = schema.new({
    id = id.from(_N, "ParentCommitIdOutdatedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ParentCommitIdOutdatedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ParentCommitIdRequiredException = schema.new({
    id = id.from(_N, "ParentCommitIdRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ParentCommitIdRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PathRequiredException = schema.new({
    id = id.from(_N, "PathRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "PathRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PutFileEntryConflictException = schema.new({
    id = id.from(_N, "PutFileEntryConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "PutFileEntryConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.RestrictedSourceFileException = schema.new({
    id = id.from(_N, "RestrictedSourceFileException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "RestrictedSourceFileException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SamePathRequestException = schema.new({
    id = id.from(_N, "SamePathRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SamePathRequestException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SourceFileOrContentRequiredException = schema.new({
    id = id.from(_N, "SourceFileOrContentRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SourceFileOrContentRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.Target = schema.new({
    id = id.from(_N, "Target"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "Target", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceReference = schema.new({
            id = id.from(_N, "Target", "sourceReference"),
            type = "string",
            name = "sourceReference",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationReference = schema.new({
            id = id.from(_N, "Target", "destinationReference"),
            type = "string",
            name = "destinationReference",
            target_id = prelude.String.id,
        }),
    },
})

M.CreatePullRequestInput = schema.new({
    id = id.from(_N, "CreatePullRequestInput"),
    type = "structure",
    members = {
        title = schema.new({
            id = id.from(_N, "CreatePullRequestInput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreatePullRequestInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        targets = schema.new({
            id = id.from(_N, "CreatePullRequestInput", "targets"),
            type = "list",
            name = "targets",
            target_id = prelude.Document.id,
            list_member = M.Target,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "CreatePullRequestInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.MergeMetadata = schema.new({
    id = id.from(_N, "MergeMetadata"),
    type = "structure",
    members = {
        isMerged = schema.new({
            id = id.from(_N, "MergeMetadata", "isMerged"),
            type = "boolean",
            name = "isMerged",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        mergedBy = schema.new({
            id = id.from(_N, "MergeMetadata", "mergedBy"),
            type = "string",
            name = "mergedBy",
            target_id = prelude.String.id,
        }),
        mergeCommitId = schema.new({
            id = id.from(_N, "MergeMetadata", "mergeCommitId"),
            type = "string",
            name = "mergeCommitId",
            target_id = prelude.String.id,
        }),
        mergeOption = schema.new({
            id = id.from(_N, "MergeMetadata", "mergeOption"),
            type = "string",
            name = "mergeOption",
            target_id = prelude.String.id,
        }),
    },
})

M.PullRequestTarget = schema.new({
    id = id.from(_N, "PullRequestTarget"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "PullRequestTarget", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
        }),
        sourceReference = schema.new({
            id = id.from(_N, "PullRequestTarget", "sourceReference"),
            type = "string",
            name = "sourceReference",
            target_id = prelude.String.id,
        }),
        destinationReference = schema.new({
            id = id.from(_N, "PullRequestTarget", "destinationReference"),
            type = "string",
            name = "destinationReference",
            target_id = prelude.String.id,
        }),
        destinationCommit = schema.new({
            id = id.from(_N, "PullRequestTarget", "destinationCommit"),
            type = "string",
            name = "destinationCommit",
            target_id = prelude.String.id,
        }),
        sourceCommit = schema.new({
            id = id.from(_N, "PullRequestTarget", "sourceCommit"),
            type = "string",
            name = "sourceCommit",
            target_id = prelude.String.id,
        }),
        mergeBase = schema.new({
            id = id.from(_N, "PullRequestTarget", "mergeBase"),
            type = "string",
            name = "mergeBase",
            target_id = prelude.String.id,
        }),
        mergeMetadata = schema.new({
            id = id.from(_N, "PullRequestTarget", "mergeMetadata"),
            type = "structure",
            name = "mergeMetadata",
            target_id = id.from(_N, "MergeMetadata"),
            target = M.MergeMetadata,
        }),
    },
})

M.PullRequest = schema.new({
    id = id.from(_N, "PullRequest"),
    type = "structure",
    members = {
        pullRequestId = schema.new({
            id = id.from(_N, "PullRequest", "pullRequestId"),
            type = "string",
            name = "pullRequestId",
            target_id = prelude.String.id,
        }),
        title = schema.new({
            id = id.from(_N, "PullRequest", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "PullRequest", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        lastActivityDate = schema.new({
            id = id.from(_N, "PullRequest", "lastActivityDate"),
            type = "timestamp",
            name = "lastActivityDate",
            target_id = prelude.Timestamp.id,
        }),
        creationDate = schema.new({
            id = id.from(_N, "PullRequest", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
        }),
        pullRequestStatus = schema.new({
            id = id.from(_N, "PullRequest", "pullRequestStatus"),
            type = "string",
            name = "pullRequestStatus",
            target_id = prelude.String.id,
        }),
        authorArn = schema.new({
            id = id.from(_N, "PullRequest", "authorArn"),
            type = "string",
            name = "authorArn",
            target_id = prelude.String.id,
        }),
        pullRequestTargets = schema.new({
            id = id.from(_N, "PullRequest", "pullRequestTargets"),
            type = "list",
            name = "pullRequestTargets",
            target_id = prelude.Document.id,
            list_member = M.PullRequestTarget,
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "PullRequest", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
        }),
        revisionId = schema.new({
            id = id.from(_N, "PullRequest", "revisionId"),
            type = "string",
            name = "revisionId",
            target_id = prelude.String.id,
        }),
        approvalRules = schema.new({
            id = id.from(_N, "PullRequest", "approvalRules"),
            type = "list",
            name = "approvalRules",
            target_id = prelude.Document.id,
            list_member = M.ApprovalRule,
        }),
    },
})

M.CreatePullRequestOutput = schema.new({
    id = id.from(_N, "CreatePullRequestOutput"),
    type = "structure",
    members = {
        pullRequest = schema.new({
            id = id.from(_N, "CreatePullRequestOutput", "pullRequest"),
            type = "structure",
            name = "pullRequest",
            target_id = id.from(_N, "PullRequest"),
            target = M.PullRequest,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IdempotencyParameterMismatchException = schema.new({
    id = id.from(_N, "IdempotencyParameterMismatchException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "IdempotencyParameterMismatchException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidClientRequestTokenException = schema.new({
    id = id.from(_N, "InvalidClientRequestTokenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidClientRequestTokenException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidDescriptionException = schema.new({
    id = id.from(_N, "InvalidDescriptionException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidDescriptionException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidReferenceNameException = schema.new({
    id = id.from(_N, "InvalidReferenceNameException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidReferenceNameException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidTargetException = schema.new({
    id = id.from(_N, "InvalidTargetException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidTargetException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidTargetsException = schema.new({
    id = id.from(_N, "InvalidTargetsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidTargetsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidTitleException = schema.new({
    id = id.from(_N, "InvalidTitleException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidTitleException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.MaximumOpenPullRequestsExceededException = schema.new({
    id = id.from(_N, "MaximumOpenPullRequestsExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MaximumOpenPullRequestsExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.MultipleRepositoriesInPullRequestException = schema.new({
    id = id.from(_N, "MultipleRepositoriesInPullRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MultipleRepositoriesInPullRequestException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ReferenceDoesNotExistException = schema.new({
    id = id.from(_N, "ReferenceDoesNotExistException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReferenceDoesNotExistException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ReferenceNameRequiredException = schema.new({
    id = id.from(_N, "ReferenceNameRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReferenceNameRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ReferenceTypeNotSupportedException = schema.new({
    id = id.from(_N, "ReferenceTypeNotSupportedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReferenceTypeNotSupportedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SourceAndDestinationAreSameException = schema.new({
    id = id.from(_N, "SourceAndDestinationAreSameException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SourceAndDestinationAreSameException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TargetRequiredException = schema.new({
    id = id.from(_N, "TargetRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TargetRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TargetsRequiredException = schema.new({
    id = id.from(_N, "TargetsRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TargetsRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TitleRequiredException = schema.new({
    id = id.from(_N, "TitleRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TitleRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreatePullRequestApprovalRuleInput = schema.new({
    id = id.from(_N, "CreatePullRequestApprovalRuleInput"),
    type = "structure",
    members = {
        pullRequestId = schema.new({
            id = id.from(_N, "CreatePullRequestApprovalRuleInput", "pullRequestId"),
            type = "string",
            name = "pullRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        approvalRuleName = schema.new({
            id = id.from(_N, "CreatePullRequestApprovalRuleInput", "approvalRuleName"),
            type = "string",
            name = "approvalRuleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        approvalRuleContent = schema.new({
            id = id.from(_N, "CreatePullRequestApprovalRuleInput", "approvalRuleContent"),
            type = "string",
            name = "approvalRuleContent",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreatePullRequestApprovalRuleOutput = schema.new({
    id = id.from(_N, "CreatePullRequestApprovalRuleOutput"),
    type = "structure",
    members = {
        approvalRule = schema.new({
            id = id.from(_N, "CreatePullRequestApprovalRuleOutput", "approvalRule"),
            type = "structure",
            name = "approvalRule",
            target_id = id.from(_N, "ApprovalRule"),
            target = M.ApprovalRule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InvalidApprovalRuleContentException = schema.new({
    id = id.from(_N, "InvalidApprovalRuleContentException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidApprovalRuleContentException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidApprovalRuleNameException = schema.new({
    id = id.from(_N, "InvalidApprovalRuleNameException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidApprovalRuleNameException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidPullRequestIdException = schema.new({
    id = id.from(_N, "InvalidPullRequestIdException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidPullRequestIdException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.NumberOfRulesExceededException = schema.new({
    id = id.from(_N, "NumberOfRulesExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NumberOfRulesExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PullRequestAlreadyClosedException = schema.new({
    id = id.from(_N, "PullRequestAlreadyClosedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "PullRequestAlreadyClosedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PullRequestDoesNotExistException = schema.new({
    id = id.from(_N, "PullRequestDoesNotExistException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "PullRequestDoesNotExistException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PullRequestIdRequiredException = schema.new({
    id = id.from(_N, "PullRequestIdRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "PullRequestIdRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateRepositoryInput = schema.new({
    id = id.from(_N, "CreateRepositoryInput"),
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
        repositoryDescription = schema.new({
            id = id.from(_N, "CreateRepositoryInput", "repositoryDescription"),
            type = "string",
            name = "repositoryDescription",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateRepositoryInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "CreateRepositoryInput", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateRepositoryOutput = schema.new({
    id = id.from(_N, "CreateRepositoryOutput"),
    type = "structure",
    members = {
        repositoryMetadata = schema.new({
            id = id.from(_N, "CreateRepositoryOutput", "repositoryMetadata"),
            type = "structure",
            name = "repositoryMetadata",
            target_id = id.from(_N, "RepositoryMetadata"),
            target = M.RepositoryMetadata,
        }),
    },
})

M.EncryptionKeyInvalidIdException = schema.new({
    id = id.from(_N, "EncryptionKeyInvalidIdException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "EncryptionKeyInvalidIdException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.EncryptionKeyInvalidUsageException = schema.new({
    id = id.from(_N, "EncryptionKeyInvalidUsageException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "EncryptionKeyInvalidUsageException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRepositoryDescriptionException = schema.new({
    id = id.from(_N, "InvalidRepositoryDescriptionException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidRepositoryDescriptionException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidSystemTagUsageException = schema.new({
    id = id.from(_N, "InvalidSystemTagUsageException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidSystemTagUsageException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidTagsMapException = schema.new({
    id = id.from(_N, "InvalidTagsMapException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidTagsMapException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.OperationNotAllowedException = schema.new({
    id = id.from(_N, "OperationNotAllowedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "OperationNotAllowedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.RepositoryLimitExceededException = schema.new({
    id = id.from(_N, "RepositoryLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "RepositoryLimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.RepositoryNameExistsException = schema.new({
    id = id.from(_N, "RepositoryNameExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "RepositoryNameExistsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TagPolicyException = schema.new({
    id = id.from(_N, "TagPolicyException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TagPolicyException", "message"),
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

M.ConcurrentReferenceUpdateException = schema.new({
    id = id.from(_N, "ConcurrentReferenceUpdateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConcurrentReferenceUpdateException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplaceContentEntry = schema.new({
    id = id.from(_N, "ReplaceContentEntry"),
    type = "structure",
    members = {
        filePath = schema.new({
            id = id.from(_N, "ReplaceContentEntry", "filePath"),
            type = "string",
            name = "filePath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        replacementType = schema.new({
            id = id.from(_N, "ReplaceContentEntry", "replacementType"),
            type = "string",
            name = "replacementType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        content = schema.new({
            id = id.from(_N, "ReplaceContentEntry", "content"),
            type = "blob",
            name = "content",
            target_id = prelude.Blob.id,
        }),
        fileMode = schema.new({
            id = id.from(_N, "ReplaceContentEntry", "fileMode"),
            type = "string",
            name = "fileMode",
            target_id = prelude.String.id,
        }),
    },
})

M.ConflictResolution = schema.new({
    id = id.from(_N, "ConflictResolution"),
    type = "structure",
    members = {
        replaceContents = schema.new({
            id = id.from(_N, "ConflictResolution", "replaceContents"),
            type = "list",
            name = "replaceContents",
            target_id = prelude.Document.id,
            list_member = M.ReplaceContentEntry,
        }),
        deleteFiles = schema.new({
            id = id.from(_N, "ConflictResolution", "deleteFiles"),
            type = "list",
            name = "deleteFiles",
            target_id = prelude.Document.id,
            list_member = M.DeleteFileEntry,
        }),
        setFileModes = schema.new({
            id = id.from(_N, "ConflictResolution", "setFileModes"),
            type = "list",
            name = "setFileModes",
            target_id = prelude.Document.id,
            list_member = M.SetFileModeEntry,
        }),
    },
})

M.CreateUnreferencedMergeCommitInput = schema.new({
    id = id.from(_N, "CreateUnreferencedMergeCommitInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "CreateUnreferencedMergeCommitInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceCommitSpecifier = schema.new({
            id = id.from(_N, "CreateUnreferencedMergeCommitInput", "sourceCommitSpecifier"),
            type = "string",
            name = "sourceCommitSpecifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationCommitSpecifier = schema.new({
            id = id.from(_N, "CreateUnreferencedMergeCommitInput", "destinationCommitSpecifier"),
            type = "string",
            name = "destinationCommitSpecifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        mergeOption = schema.new({
            id = id.from(_N, "CreateUnreferencedMergeCommitInput", "mergeOption"),
            type = "string",
            name = "mergeOption",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        conflictDetailLevel = schema.new({
            id = id.from(_N, "CreateUnreferencedMergeCommitInput", "conflictDetailLevel"),
            type = "string",
            name = "conflictDetailLevel",
            target_id = prelude.String.id,
        }),
        conflictResolutionStrategy = schema.new({
            id = id.from(_N, "CreateUnreferencedMergeCommitInput", "conflictResolutionStrategy"),
            type = "string",
            name = "conflictResolutionStrategy",
            target_id = prelude.String.id,
        }),
        authorName = schema.new({
            id = id.from(_N, "CreateUnreferencedMergeCommitInput", "authorName"),
            type = "string",
            name = "authorName",
            target_id = prelude.String.id,
        }),
        email = schema.new({
            id = id.from(_N, "CreateUnreferencedMergeCommitInput", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
        }),
        commitMessage = schema.new({
            id = id.from(_N, "CreateUnreferencedMergeCommitInput", "commitMessage"),
            type = "string",
            name = "commitMessage",
            target_id = prelude.String.id,
        }),
        keepEmptyFolders = schema.new({
            id = id.from(_N, "CreateUnreferencedMergeCommitInput", "keepEmptyFolders"),
            type = "boolean",
            name = "keepEmptyFolders",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        conflictResolution = schema.new({
            id = id.from(_N, "CreateUnreferencedMergeCommitInput", "conflictResolution"),
            type = "structure",
            name = "conflictResolution",
            target_id = id.from(_N, "ConflictResolution"),
            target = M.ConflictResolution,
        }),
    },
})

M.CreateUnreferencedMergeCommitOutput = schema.new({
    id = id.from(_N, "CreateUnreferencedMergeCommitOutput"),
    type = "structure",
    members = {
        commitId = schema.new({
            id = id.from(_N, "CreateUnreferencedMergeCommitOutput", "commitId"),
            type = "string",
            name = "commitId",
            target_id = prelude.String.id,
        }),
        treeId = schema.new({
            id = id.from(_N, "CreateUnreferencedMergeCommitOutput", "treeId"),
            type = "string",
            name = "treeId",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidConflictResolutionException = schema.new({
    id = id.from(_N, "InvalidConflictResolutionException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidConflictResolutionException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidReplacementContentException = schema.new({
    id = id.from(_N, "InvalidReplacementContentException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidReplacementContentException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidReplacementTypeException = schema.new({
    id = id.from(_N, "InvalidReplacementTypeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidReplacementTypeException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ManualMergeRequiredException = schema.new({
    id = id.from(_N, "ManualMergeRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ManualMergeRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.MaximumConflictResolutionEntriesExceededException = schema.new({
    id = id.from(_N, "MaximumConflictResolutionEntriesExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MaximumConflictResolutionEntriesExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.MultipleConflictResolutionEntriesException = schema.new({
    id = id.from(_N, "MultipleConflictResolutionEntriesException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MultipleConflictResolutionEntriesException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplacementContentRequiredException = schema.new({
    id = id.from(_N, "ReplacementContentRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReplacementContentRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplacementTypeRequiredException = schema.new({
    id = id.from(_N, "ReplacementTypeRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReplacementTypeRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteApprovalRuleTemplateInput = schema.new({
    id = id.from(_N, "DeleteApprovalRuleTemplateInput"),
    type = "structure",
    members = {
        approvalRuleTemplateName = schema.new({
            id = id.from(_N, "DeleteApprovalRuleTemplateInput", "approvalRuleTemplateName"),
            type = "string",
            name = "approvalRuleTemplateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteApprovalRuleTemplateOutput = schema.new({
    id = id.from(_N, "DeleteApprovalRuleTemplateOutput"),
    type = "structure",
    members = {
        approvalRuleTemplateId = schema.new({
            id = id.from(_N, "DeleteApprovalRuleTemplateOutput", "approvalRuleTemplateId"),
            type = "string",
            name = "approvalRuleTemplateId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DefaultBranchCannotBeDeletedException = schema.new({
    id = id.from(_N, "DefaultBranchCannotBeDeletedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DefaultBranchCannotBeDeletedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteBranchInput = schema.new({
    id = id.from(_N, "DeleteBranchInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "DeleteBranchInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        branchName = schema.new({
            id = id.from(_N, "DeleteBranchInput", "branchName"),
            type = "string",
            name = "branchName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteBranchOutput = schema.new({
    id = id.from(_N, "DeleteBranchOutput"),
    type = "structure",
    members = {
        deletedBranch = schema.new({
            id = id.from(_N, "DeleteBranchOutput", "deletedBranch"),
            type = "structure",
            name = "deletedBranch",
            target_id = id.from(_N, "BranchInfo"),
            target = M.BranchInfo,
        }),
    },
})

M.CommentDeletedException = schema.new({
    id = id.from(_N, "CommentDeletedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CommentDeletedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CommentDoesNotExistException = schema.new({
    id = id.from(_N, "CommentDoesNotExistException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CommentDoesNotExistException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CommentIdRequiredException = schema.new({
    id = id.from(_N, "CommentIdRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CommentIdRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteCommentContentInput = schema.new({
    id = id.from(_N, "DeleteCommentContentInput"),
    type = "structure",
    members = {
        commentId = schema.new({
            id = id.from(_N, "DeleteCommentContentInput", "commentId"),
            type = "string",
            name = "commentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Comment = schema.new({
    id = id.from(_N, "Comment"),
    type = "structure",
    members = {
        commentId = schema.new({
            id = id.from(_N, "Comment", "commentId"),
            type = "string",
            name = "commentId",
            target_id = prelude.String.id,
        }),
        content = schema.new({
            id = id.from(_N, "Comment", "content"),
            type = "string",
            name = "content",
            target_id = prelude.String.id,
        }),
        inReplyTo = schema.new({
            id = id.from(_N, "Comment", "inReplyTo"),
            type = "string",
            name = "inReplyTo",
            target_id = prelude.String.id,
        }),
        creationDate = schema.new({
            id = id.from(_N, "Comment", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
        }),
        lastModifiedDate = schema.new({
            id = id.from(_N, "Comment", "lastModifiedDate"),
            type = "timestamp",
            name = "lastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
        authorArn = schema.new({
            id = id.from(_N, "Comment", "authorArn"),
            type = "string",
            name = "authorArn",
            target_id = prelude.String.id,
        }),
        deleted = schema.new({
            id = id.from(_N, "Comment", "deleted"),
            type = "boolean",
            name = "deleted",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "Comment", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
        }),
        callerReactions = schema.new({
            id = id.from(_N, "Comment", "callerReactions"),
            type = "list",
            name = "callerReactions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        reactionCounts = schema.new({
            id = id.from(_N, "Comment", "reactionCounts"),
            type = "map",
            name = "reactionCounts",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Integer,
        }),
    },
})

M.DeleteCommentContentOutput = schema.new({
    id = id.from(_N, "DeleteCommentContentOutput"),
    type = "structure",
    members = {
        comment = schema.new({
            id = id.from(_N, "DeleteCommentContentOutput", "comment"),
            type = "structure",
            name = "comment",
            target_id = id.from(_N, "Comment"),
            target = M.Comment,
        }),
    },
})

M.InvalidCommentIdException = schema.new({
    id = id.from(_N, "InvalidCommentIdException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidCommentIdException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteFileInput = schema.new({
    id = id.from(_N, "DeleteFileInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "DeleteFileInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        branchName = schema.new({
            id = id.from(_N, "DeleteFileInput", "branchName"),
            type = "string",
            name = "branchName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filePath = schema.new({
            id = id.from(_N, "DeleteFileInput", "filePath"),
            type = "string",
            name = "filePath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        parentCommitId = schema.new({
            id = id.from(_N, "DeleteFileInput", "parentCommitId"),
            type = "string",
            name = "parentCommitId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        keepEmptyFolders = schema.new({
            id = id.from(_N, "DeleteFileInput", "keepEmptyFolders"),
            type = "boolean",
            name = "keepEmptyFolders",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        commitMessage = schema.new({
            id = id.from(_N, "DeleteFileInput", "commitMessage"),
            type = "string",
            name = "commitMessage",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "DeleteFileInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        email = schema.new({
            id = id.from(_N, "DeleteFileInput", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteFileOutput = schema.new({
    id = id.from(_N, "DeleteFileOutput"),
    type = "structure",
    members = {
        commitId = schema.new({
            id = id.from(_N, "DeleteFileOutput", "commitId"),
            type = "string",
            name = "commitId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        blobId = schema.new({
            id = id.from(_N, "DeleteFileOutput", "blobId"),
            type = "string",
            name = "blobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        treeId = schema.new({
            id = id.from(_N, "DeleteFileOutput", "treeId"),
            type = "string",
            name = "treeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filePath = schema.new({
            id = id.from(_N, "DeleteFileOutput", "filePath"),
            type = "string",
            name = "filePath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeletePullRequestApprovalRuleInput = schema.new({
    id = id.from(_N, "DeletePullRequestApprovalRuleInput"),
    type = "structure",
    members = {
        pullRequestId = schema.new({
            id = id.from(_N, "DeletePullRequestApprovalRuleInput", "pullRequestId"),
            type = "string",
            name = "pullRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        approvalRuleName = schema.new({
            id = id.from(_N, "DeletePullRequestApprovalRuleInput", "approvalRuleName"),
            type = "string",
            name = "approvalRuleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeletePullRequestApprovalRuleOutput = schema.new({
    id = id.from(_N, "DeletePullRequestApprovalRuleOutput"),
    type = "structure",
    members = {
        approvalRuleId = schema.new({
            id = id.from(_N, "DeletePullRequestApprovalRuleOutput", "approvalRuleId"),
            type = "string",
            name = "approvalRuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRepositoryInput = schema.new({
    id = id.from(_N, "DeleteRepositoryInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "DeleteRepositoryInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRepositoryOutput = schema.new({
    id = id.from(_N, "DeleteRepositoryOutput"),
    type = "structure",
    members = {
        repositoryId = schema.new({
            id = id.from(_N, "DeleteRepositoryOutput", "repositoryId"),
            type = "string",
            name = "repositoryId",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMergeConflictsInput = schema.new({
    id = id.from(_N, "DescribeMergeConflictsInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "DescribeMergeConflictsInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationCommitSpecifier = schema.new({
            id = id.from(_N, "DescribeMergeConflictsInput", "destinationCommitSpecifier"),
            type = "string",
            name = "destinationCommitSpecifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceCommitSpecifier = schema.new({
            id = id.from(_N, "DescribeMergeConflictsInput", "sourceCommitSpecifier"),
            type = "string",
            name = "sourceCommitSpecifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        mergeOption = schema.new({
            id = id.from(_N, "DescribeMergeConflictsInput", "mergeOption"),
            type = "string",
            name = "mergeOption",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxMergeHunks = schema.new({
            id = id.from(_N, "DescribeMergeConflictsInput", "maxMergeHunks"),
            type = "integer",
            name = "maxMergeHunks",
            target_id = prelude.Integer.id,
        }),
        filePath = schema.new({
            id = id.from(_N, "DescribeMergeConflictsInput", "filePath"),
            type = "string",
            name = "filePath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        conflictDetailLevel = schema.new({
            id = id.from(_N, "DescribeMergeConflictsInput", "conflictDetailLevel"),
            type = "string",
            name = "conflictDetailLevel",
            target_id = prelude.String.id,
        }),
        conflictResolutionStrategy = schema.new({
            id = id.from(_N, "DescribeMergeConflictsInput", "conflictResolutionStrategy"),
            type = "string",
            name = "conflictResolutionStrategy",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeMergeConflictsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMergeConflictsOutput = schema.new({
    id = id.from(_N, "DescribeMergeConflictsOutput"),
    type = "structure",
    members = {
        conflictMetadata = schema.new({
            id = id.from(_N, "DescribeMergeConflictsOutput", "conflictMetadata"),
            type = "structure",
            name = "conflictMetadata",
            target_id = id.from(_N, "ConflictMetadata"),
            target = M.ConflictMetadata,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        mergeHunks = schema.new({
            id = id.from(_N, "DescribeMergeConflictsOutput", "mergeHunks"),
            type = "list",
            name = "mergeHunks",
            target_id = prelude.Document.id,
            list_member = M.MergeHunk,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeMergeConflictsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        destinationCommitId = schema.new({
            id = id.from(_N, "DescribeMergeConflictsOutput", "destinationCommitId"),
            type = "string",
            name = "destinationCommitId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceCommitId = schema.new({
            id = id.from(_N, "DescribeMergeConflictsOutput", "sourceCommitId"),
            type = "string",
            name = "sourceCommitId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        baseCommitId = schema.new({
            id = id.from(_N, "DescribeMergeConflictsOutput", "baseCommitId"),
            type = "string",
            name = "baseCommitId",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribePullRequestEventsInput = schema.new({
    id = id.from(_N, "DescribePullRequestEventsInput"),
    type = "structure",
    members = {
        pullRequestId = schema.new({
            id = id.from(_N, "DescribePullRequestEventsInput", "pullRequestId"),
            type = "string",
            name = "pullRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        pullRequestEventType = schema.new({
            id = id.from(_N, "DescribePullRequestEventsInput", "pullRequestEventType"),
            type = "string",
            name = "pullRequestEventType",
            target_id = prelude.String.id,
        }),
        actorArn = schema.new({
            id = id.from(_N, "DescribePullRequestEventsInput", "actorArn"),
            type = "string",
            name = "actorArn",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribePullRequestEventsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribePullRequestEventsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.PullRequestCreatedEventMetadata = schema.new({
    id = id.from(_N, "PullRequestCreatedEventMetadata"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "PullRequestCreatedEventMetadata", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
        }),
        sourceCommitId = schema.new({
            id = id.from(_N, "PullRequestCreatedEventMetadata", "sourceCommitId"),
            type = "string",
            name = "sourceCommitId",
            target_id = prelude.String.id,
        }),
        destinationCommitId = schema.new({
            id = id.from(_N, "PullRequestCreatedEventMetadata", "destinationCommitId"),
            type = "string",
            name = "destinationCommitId",
            target_id = prelude.String.id,
        }),
        mergeBase = schema.new({
            id = id.from(_N, "PullRequestCreatedEventMetadata", "mergeBase"),
            type = "string",
            name = "mergeBase",
            target_id = prelude.String.id,
        }),
    },
})

M.PullRequestMergedStateChangedEventMetadata = schema.new({
    id = id.from(_N, "PullRequestMergedStateChangedEventMetadata"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "PullRequestMergedStateChangedEventMetadata", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
        }),
        destinationReference = schema.new({
            id = id.from(_N, "PullRequestMergedStateChangedEventMetadata", "destinationReference"),
            type = "string",
            name = "destinationReference",
            target_id = prelude.String.id,
        }),
        mergeMetadata = schema.new({
            id = id.from(_N, "PullRequestMergedStateChangedEventMetadata", "mergeMetadata"),
            type = "structure",
            name = "mergeMetadata",
            target_id = id.from(_N, "MergeMetadata"),
            target = M.MergeMetadata,
        }),
    },
})

M.PullRequestSourceReferenceUpdatedEventMetadata = schema.new({
    id = id.from(_N, "PullRequestSourceReferenceUpdatedEventMetadata"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "PullRequestSourceReferenceUpdatedEventMetadata", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
        }),
        beforeCommitId = schema.new({
            id = id.from(_N, "PullRequestSourceReferenceUpdatedEventMetadata", "beforeCommitId"),
            type = "string",
            name = "beforeCommitId",
            target_id = prelude.String.id,
        }),
        afterCommitId = schema.new({
            id = id.from(_N, "PullRequestSourceReferenceUpdatedEventMetadata", "afterCommitId"),
            type = "string",
            name = "afterCommitId",
            target_id = prelude.String.id,
        }),
        mergeBase = schema.new({
            id = id.from(_N, "PullRequestSourceReferenceUpdatedEventMetadata", "mergeBase"),
            type = "string",
            name = "mergeBase",
            target_id = prelude.String.id,
        }),
    },
})

M.PullRequestStatusChangedEventMetadata = schema.new({
    id = id.from(_N, "PullRequestStatusChangedEventMetadata"),
    type = "structure",
    members = {
        pullRequestStatus = schema.new({
            id = id.from(_N, "PullRequestStatusChangedEventMetadata", "pullRequestStatus"),
            type = "string",
            name = "pullRequestStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.PullRequestEvent = schema.new({
    id = id.from(_N, "PullRequestEvent"),
    type = "structure",
    members = {
        pullRequestId = schema.new({
            id = id.from(_N, "PullRequestEvent", "pullRequestId"),
            type = "string",
            name = "pullRequestId",
            target_id = prelude.String.id,
        }),
        eventDate = schema.new({
            id = id.from(_N, "PullRequestEvent", "eventDate"),
            type = "timestamp",
            name = "eventDate",
            target_id = prelude.Timestamp.id,
        }),
        pullRequestEventType = schema.new({
            id = id.from(_N, "PullRequestEvent", "pullRequestEventType"),
            type = "string",
            name = "pullRequestEventType",
            target_id = prelude.String.id,
        }),
        actorArn = schema.new({
            id = id.from(_N, "PullRequestEvent", "actorArn"),
            type = "string",
            name = "actorArn",
            target_id = prelude.String.id,
        }),
        pullRequestCreatedEventMetadata = schema.new({
            id = id.from(_N, "PullRequestEvent", "pullRequestCreatedEventMetadata"),
            type = "structure",
            name = "pullRequestCreatedEventMetadata",
            target_id = id.from(_N, "PullRequestCreatedEventMetadata"),
            target = M.PullRequestCreatedEventMetadata,
        }),
        pullRequestStatusChangedEventMetadata = schema.new({
            id = id.from(_N, "PullRequestEvent", "pullRequestStatusChangedEventMetadata"),
            type = "structure",
            name = "pullRequestStatusChangedEventMetadata",
            target_id = id.from(_N, "PullRequestStatusChangedEventMetadata"),
            target = M.PullRequestStatusChangedEventMetadata,
        }),
        pullRequestSourceReferenceUpdatedEventMetadata = schema.new({
            id = id.from(_N, "PullRequestEvent", "pullRequestSourceReferenceUpdatedEventMetadata"),
            type = "structure",
            name = "pullRequestSourceReferenceUpdatedEventMetadata",
            target_id = id.from(_N, "PullRequestSourceReferenceUpdatedEventMetadata"),
            target = M.PullRequestSourceReferenceUpdatedEventMetadata,
        }),
        pullRequestMergedStateChangedEventMetadata = schema.new({
            id = id.from(_N, "PullRequestEvent", "pullRequestMergedStateChangedEventMetadata"),
            type = "structure",
            name = "pullRequestMergedStateChangedEventMetadata",
            target_id = id.from(_N, "PullRequestMergedStateChangedEventMetadata"),
            target = M.PullRequestMergedStateChangedEventMetadata,
        }),
        approvalRuleEventMetadata = schema.new({
            id = id.from(_N, "PullRequestEvent", "approvalRuleEventMetadata"),
            type = "structure",
            name = "approvalRuleEventMetadata",
            target_id = id.from(_N, "ApprovalRuleEventMetadata"),
            target = M.ApprovalRuleEventMetadata,
        }),
        approvalStateChangedEventMetadata = schema.new({
            id = id.from(_N, "PullRequestEvent", "approvalStateChangedEventMetadata"),
            type = "structure",
            name = "approvalStateChangedEventMetadata",
            target_id = id.from(_N, "ApprovalStateChangedEventMetadata"),
            target = M.ApprovalStateChangedEventMetadata,
        }),
        approvalRuleOverriddenEventMetadata = schema.new({
            id = id.from(_N, "PullRequestEvent", "approvalRuleOverriddenEventMetadata"),
            type = "structure",
            name = "approvalRuleOverriddenEventMetadata",
            target_id = id.from(_N, "ApprovalRuleOverriddenEventMetadata"),
            target = M.ApprovalRuleOverriddenEventMetadata,
        }),
    },
})

M.DescribePullRequestEventsOutput = schema.new({
    id = id.from(_N, "DescribePullRequestEventsOutput"),
    type = "structure",
    members = {
        pullRequestEvents = schema.new({
            id = id.from(_N, "DescribePullRequestEventsOutput", "pullRequestEvents"),
            type = "list",
            name = "pullRequestEvents",
            target_id = prelude.Document.id,
            list_member = M.PullRequestEvent,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribePullRequestEventsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidActorArnException = schema.new({
    id = id.from(_N, "InvalidActorArnException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidActorArnException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidMaxResultsException = schema.new({
    id = id.from(_N, "InvalidMaxResultsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidMaxResultsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidPullRequestEventTypeException = schema.new({
    id = id.from(_N, "InvalidPullRequestEventTypeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidPullRequestEventTypeException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DisassociateApprovalRuleTemplateFromRepositoryInput = schema.new({
    id = id.from(_N, "DisassociateApprovalRuleTemplateFromRepositoryInput"),
    type = "structure",
    members = {
        approvalRuleTemplateName = schema.new({
            id = id.from(_N, "DisassociateApprovalRuleTemplateFromRepositoryInput", "approvalRuleTemplateName"),
            type = "string",
            name = "approvalRuleTemplateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        repositoryName = schema.new({
            id = id.from(_N, "DisassociateApprovalRuleTemplateFromRepositoryInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateApprovalRuleTemplateFromRepositoryOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.EvaluatePullRequestApprovalRulesInput = schema.new({
    id = id.from(_N, "EvaluatePullRequestApprovalRulesInput"),
    type = "structure",
    members = {
        pullRequestId = schema.new({
            id = id.from(_N, "EvaluatePullRequestApprovalRulesInput", "pullRequestId"),
            type = "string",
            name = "pullRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        revisionId = schema.new({
            id = id.from(_N, "EvaluatePullRequestApprovalRulesInput", "revisionId"),
            type = "string",
            name = "revisionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Evaluation = schema.new({
    id = id.from(_N, "Evaluation"),
    type = "structure",
    members = {
        approved = schema.new({
            id = id.from(_N, "Evaluation", "approved"),
            type = "boolean",
            name = "approved",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        overridden = schema.new({
            id = id.from(_N, "Evaluation", "overridden"),
            type = "boolean",
            name = "overridden",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        approvalRulesSatisfied = schema.new({
            id = id.from(_N, "Evaluation", "approvalRulesSatisfied"),
            type = "list",
            name = "approvalRulesSatisfied",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        approvalRulesNotSatisfied = schema.new({
            id = id.from(_N, "Evaluation", "approvalRulesNotSatisfied"),
            type = "list",
            name = "approvalRulesNotSatisfied",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.EvaluatePullRequestApprovalRulesOutput = schema.new({
    id = id.from(_N, "EvaluatePullRequestApprovalRulesOutput"),
    type = "structure",
    members = {
        evaluation = schema.new({
            id = id.from(_N, "EvaluatePullRequestApprovalRulesOutput", "evaluation"),
            type = "structure",
            name = "evaluation",
            target_id = id.from(_N, "Evaluation"),
            target = M.Evaluation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InvalidRevisionIdException = schema.new({
    id = id.from(_N, "InvalidRevisionIdException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidRevisionIdException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.RevisionIdRequiredException = schema.new({
    id = id.from(_N, "RevisionIdRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "RevisionIdRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.RevisionNotCurrentException = schema.new({
    id = id.from(_N, "RevisionNotCurrentException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "RevisionNotCurrentException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetApprovalRuleTemplateInput = schema.new({
    id = id.from(_N, "GetApprovalRuleTemplateInput"),
    type = "structure",
    members = {
        approvalRuleTemplateName = schema.new({
            id = id.from(_N, "GetApprovalRuleTemplateInput", "approvalRuleTemplateName"),
            type = "string",
            name = "approvalRuleTemplateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetApprovalRuleTemplateOutput = schema.new({
    id = id.from(_N, "GetApprovalRuleTemplateOutput"),
    type = "structure",
    members = {
        approvalRuleTemplate = schema.new({
            id = id.from(_N, "GetApprovalRuleTemplateOutput", "approvalRuleTemplate"),
            type = "structure",
            name = "approvalRuleTemplate",
            target_id = id.from(_N, "ApprovalRuleTemplate"),
            target = M.ApprovalRuleTemplate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FileTooLargeException = schema.new({
    id = id.from(_N, "FileTooLargeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "FileTooLargeException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetBlobInput = schema.new({
    id = id.from(_N, "GetBlobInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "GetBlobInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        blobId = schema.new({
            id = id.from(_N, "GetBlobInput", "blobId"),
            type = "string",
            name = "blobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetBlobOutput = schema.new({
    id = id.from(_N, "GetBlobOutput"),
    type = "structure",
    members = {
        content = schema.new({
            id = id.from(_N, "GetBlobOutput", "content"),
            type = "blob",
            name = "content",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InvalidBlobIdException = schema.new({
    id = id.from(_N, "InvalidBlobIdException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidBlobIdException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetBranchInput = schema.new({
    id = id.from(_N, "GetBranchInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "GetBranchInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
        }),
        branchName = schema.new({
            id = id.from(_N, "GetBranchInput", "branchName"),
            type = "string",
            name = "branchName",
            target_id = prelude.String.id,
        }),
    },
})

M.GetBranchOutput = schema.new({
    id = id.from(_N, "GetBranchOutput"),
    type = "structure",
    members = {
        branch = schema.new({
            id = id.from(_N, "GetBranchOutput", "branch"),
            type = "structure",
            name = "branch",
            target_id = id.from(_N, "BranchInfo"),
            target = M.BranchInfo,
        }),
    },
})

M.GetCommentInput = schema.new({
    id = id.from(_N, "GetCommentInput"),
    type = "structure",
    members = {
        commentId = schema.new({
            id = id.from(_N, "GetCommentInput", "commentId"),
            type = "string",
            name = "commentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetCommentOutput = schema.new({
    id = id.from(_N, "GetCommentOutput"),
    type = "structure",
    members = {
        comment = schema.new({
            id = id.from(_N, "GetCommentOutput", "comment"),
            type = "structure",
            name = "comment",
            target_id = id.from(_N, "Comment"),
            target = M.Comment,
        }),
    },
})

M.GetCommentReactionsInput = schema.new({
    id = id.from(_N, "GetCommentReactionsInput"),
    type = "structure",
    members = {
        commentId = schema.new({
            id = id.from(_N, "GetCommentReactionsInput", "commentId"),
            type = "string",
            name = "commentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reactionUserArn = schema.new({
            id = id.from(_N, "GetCommentReactionsInput", "reactionUserArn"),
            type = "string",
            name = "reactionUserArn",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetCommentReactionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "GetCommentReactionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ReactionValueFormats = schema.new({
    id = id.from(_N, "ReactionValueFormats"),
    type = "structure",
    members = {
        emoji = schema.new({
            id = id.from(_N, "ReactionValueFormats", "emoji"),
            type = "string",
            name = "emoji",
            target_id = prelude.String.id,
        }),
        shortCode = schema.new({
            id = id.from(_N, "ReactionValueFormats", "shortCode"),
            type = "string",
            name = "shortCode",
            target_id = prelude.String.id,
        }),
        unicode = schema.new({
            id = id.from(_N, "ReactionValueFormats", "unicode"),
            type = "string",
            name = "unicode",
            target_id = prelude.String.id,
        }),
    },
})

M.ReactionForComment = schema.new({
    id = id.from(_N, "ReactionForComment"),
    type = "structure",
    members = {
        reaction = schema.new({
            id = id.from(_N, "ReactionForComment", "reaction"),
            type = "structure",
            name = "reaction",
            target_id = id.from(_N, "ReactionValueFormats"),
            target = M.ReactionValueFormats,
        }),
        reactionUsers = schema.new({
            id = id.from(_N, "ReactionForComment", "reactionUsers"),
            type = "list",
            name = "reactionUsers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        reactionsFromDeletedUsersCount = schema.new({
            id = id.from(_N, "ReactionForComment", "reactionsFromDeletedUsersCount"),
            type = "integer",
            name = "reactionsFromDeletedUsersCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.GetCommentReactionsOutput = schema.new({
    id = id.from(_N, "GetCommentReactionsOutput"),
    type = "structure",
    members = {
        reactionsForComment = schema.new({
            id = id.from(_N, "GetCommentReactionsOutput", "reactionsForComment"),
            type = "list",
            name = "reactionsForComment",
            target_id = prelude.Document.id,
            list_member = M.ReactionForComment,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetCommentReactionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidReactionUserArnException = schema.new({
    id = id.from(_N, "InvalidReactionUserArnException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidReactionUserArnException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetCommentsForComparedCommitInput = schema.new({
    id = id.from(_N, "GetCommentsForComparedCommitInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "GetCommentsForComparedCommitInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        beforeCommitId = schema.new({
            id = id.from(_N, "GetCommentsForComparedCommitInput", "beforeCommitId"),
            type = "string",
            name = "beforeCommitId",
            target_id = prelude.String.id,
        }),
        afterCommitId = schema.new({
            id = id.from(_N, "GetCommentsForComparedCommitInput", "afterCommitId"),
            type = "string",
            name = "afterCommitId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetCommentsForComparedCommitInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "GetCommentsForComparedCommitInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.Location = schema.new({
    id = id.from(_N, "Location"),
    type = "structure",
    members = {
        filePath = schema.new({
            id = id.from(_N, "Location", "filePath"),
            type = "string",
            name = "filePath",
            target_id = prelude.String.id,
        }),
        filePosition = schema.new({
            id = id.from(_N, "Location", "filePosition"),
            type = "long",
            name = "filePosition",
            target_id = prelude.Long.id,
        }),
        relativeFileVersion = schema.new({
            id = id.from(_N, "Location", "relativeFileVersion"),
            type = "string",
            name = "relativeFileVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.CommentsForComparedCommit = schema.new({
    id = id.from(_N, "CommentsForComparedCommit"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "CommentsForComparedCommit", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
        }),
        beforeCommitId = schema.new({
            id = id.from(_N, "CommentsForComparedCommit", "beforeCommitId"),
            type = "string",
            name = "beforeCommitId",
            target_id = prelude.String.id,
        }),
        afterCommitId = schema.new({
            id = id.from(_N, "CommentsForComparedCommit", "afterCommitId"),
            type = "string",
            name = "afterCommitId",
            target_id = prelude.String.id,
        }),
        beforeBlobId = schema.new({
            id = id.from(_N, "CommentsForComparedCommit", "beforeBlobId"),
            type = "string",
            name = "beforeBlobId",
            target_id = prelude.String.id,
        }),
        afterBlobId = schema.new({
            id = id.from(_N, "CommentsForComparedCommit", "afterBlobId"),
            type = "string",
            name = "afterBlobId",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "CommentsForComparedCommit", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "Location"),
            target = M.Location,
        }),
        comments = schema.new({
            id = id.from(_N, "CommentsForComparedCommit", "comments"),
            type = "list",
            name = "comments",
            target_id = prelude.Document.id,
            list_member = M.Comment,
        }),
    },
})

M.GetCommentsForComparedCommitOutput = schema.new({
    id = id.from(_N, "GetCommentsForComparedCommitOutput"),
    type = "structure",
    members = {
        commentsForComparedCommitData = schema.new({
            id = id.from(_N, "GetCommentsForComparedCommitOutput", "commentsForComparedCommitData"),
            type = "list",
            name = "commentsForComparedCommitData",
            target_id = prelude.Document.id,
            list_member = M.CommentsForComparedCommit,
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetCommentsForComparedCommitOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetCommentsForPullRequestInput = schema.new({
    id = id.from(_N, "GetCommentsForPullRequestInput"),
    type = "structure",
    members = {
        pullRequestId = schema.new({
            id = id.from(_N, "GetCommentsForPullRequestInput", "pullRequestId"),
            type = "string",
            name = "pullRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        repositoryName = schema.new({
            id = id.from(_N, "GetCommentsForPullRequestInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
        }),
        beforeCommitId = schema.new({
            id = id.from(_N, "GetCommentsForPullRequestInput", "beforeCommitId"),
            type = "string",
            name = "beforeCommitId",
            target_id = prelude.String.id,
        }),
        afterCommitId = schema.new({
            id = id.from(_N, "GetCommentsForPullRequestInput", "afterCommitId"),
            type = "string",
            name = "afterCommitId",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetCommentsForPullRequestInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "GetCommentsForPullRequestInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CommentsForPullRequest = schema.new({
    id = id.from(_N, "CommentsForPullRequest"),
    type = "structure",
    members = {
        pullRequestId = schema.new({
            id = id.from(_N, "CommentsForPullRequest", "pullRequestId"),
            type = "string",
            name = "pullRequestId",
            target_id = prelude.String.id,
        }),
        repositoryName = schema.new({
            id = id.from(_N, "CommentsForPullRequest", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
        }),
        beforeCommitId = schema.new({
            id = id.from(_N, "CommentsForPullRequest", "beforeCommitId"),
            type = "string",
            name = "beforeCommitId",
            target_id = prelude.String.id,
        }),
        afterCommitId = schema.new({
            id = id.from(_N, "CommentsForPullRequest", "afterCommitId"),
            type = "string",
            name = "afterCommitId",
            target_id = prelude.String.id,
        }),
        beforeBlobId = schema.new({
            id = id.from(_N, "CommentsForPullRequest", "beforeBlobId"),
            type = "string",
            name = "beforeBlobId",
            target_id = prelude.String.id,
        }),
        afterBlobId = schema.new({
            id = id.from(_N, "CommentsForPullRequest", "afterBlobId"),
            type = "string",
            name = "afterBlobId",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "CommentsForPullRequest", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "Location"),
            target = M.Location,
        }),
        comments = schema.new({
            id = id.from(_N, "CommentsForPullRequest", "comments"),
            type = "list",
            name = "comments",
            target_id = prelude.Document.id,
            list_member = M.Comment,
        }),
    },
})

M.GetCommentsForPullRequestOutput = schema.new({
    id = id.from(_N, "GetCommentsForPullRequestOutput"),
    type = "structure",
    members = {
        commentsForPullRequestData = schema.new({
            id = id.from(_N, "GetCommentsForPullRequestOutput", "commentsForPullRequestData"),
            type = "list",
            name = "commentsForPullRequestData",
            target_id = prelude.Document.id,
            list_member = M.CommentsForPullRequest,
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetCommentsForPullRequestOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RepositoryNotAssociatedWithPullRequestException = schema.new({
    id = id.from(_N, "RepositoryNotAssociatedWithPullRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "RepositoryNotAssociatedWithPullRequestException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CommitIdDoesNotExistException = schema.new({
    id = id.from(_N, "CommitIdDoesNotExistException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CommitIdDoesNotExistException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetCommitInput = schema.new({
    id = id.from(_N, "GetCommitInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "GetCommitInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        commitId = schema.new({
            id = id.from(_N, "GetCommitInput", "commitId"),
            type = "string",
            name = "commitId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetCommitOutput = schema.new({
    id = id.from(_N, "GetCommitOutput"),
    type = "structure",
    members = {
        commit = schema.new({
            id = id.from(_N, "GetCommitOutput", "commit"),
            type = "structure",
            name = "commit",
            target_id = id.from(_N, "Commit"),
            target = M.Commit,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetDifferencesInput = schema.new({
    id = id.from(_N, "GetDifferencesInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "GetDifferencesInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        beforeCommitSpecifier = schema.new({
            id = id.from(_N, "GetDifferencesInput", "beforeCommitSpecifier"),
            type = "string",
            name = "beforeCommitSpecifier",
            target_id = prelude.String.id,
        }),
        afterCommitSpecifier = schema.new({
            id = id.from(_N, "GetDifferencesInput", "afterCommitSpecifier"),
            type = "string",
            name = "afterCommitSpecifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        beforePath = schema.new({
            id = id.from(_N, "GetDifferencesInput", "beforePath"),
            type = "string",
            name = "beforePath",
            target_id = prelude.String.id,
        }),
        afterPath = schema.new({
            id = id.from(_N, "GetDifferencesInput", "afterPath"),
            type = "string",
            name = "afterPath",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetDifferencesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetDifferencesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.Difference = schema.new({
    id = id.from(_N, "Difference"),
    type = "structure",
    members = {
        beforeBlob = schema.new({
            id = id.from(_N, "Difference", "beforeBlob"),
            type = "structure",
            name = "beforeBlob",
            target_id = id.from(_N, "BlobMetadata"),
            target = M.BlobMetadata,
        }),
        afterBlob = schema.new({
            id = id.from(_N, "Difference", "afterBlob"),
            type = "structure",
            name = "afterBlob",
            target_id = id.from(_N, "BlobMetadata"),
            target = M.BlobMetadata,
        }),
        changeType = schema.new({
            id = id.from(_N, "Difference", "changeType"),
            type = "string",
            name = "changeType",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDifferencesOutput = schema.new({
    id = id.from(_N, "GetDifferencesOutput"),
    type = "structure",
    members = {
        differences = schema.new({
            id = id.from(_N, "GetDifferencesOutput", "differences"),
            type = "list",
            name = "differences",
            target_id = prelude.Document.id,
            list_member = M.Difference,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetDifferencesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PathDoesNotExistException = schema.new({
    id = id.from(_N, "PathDoesNotExistException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "PathDoesNotExistException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetFileInput = schema.new({
    id = id.from(_N, "GetFileInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "GetFileInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        commitSpecifier = schema.new({
            id = id.from(_N, "GetFileInput", "commitSpecifier"),
            type = "string",
            name = "commitSpecifier",
            target_id = prelude.String.id,
        }),
        filePath = schema.new({
            id = id.from(_N, "GetFileInput", "filePath"),
            type = "string",
            name = "filePath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetFileOutput = schema.new({
    id = id.from(_N, "GetFileOutput"),
    type = "structure",
    members = {
        commitId = schema.new({
            id = id.from(_N, "GetFileOutput", "commitId"),
            type = "string",
            name = "commitId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        blobId = schema.new({
            id = id.from(_N, "GetFileOutput", "blobId"),
            type = "string",
            name = "blobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filePath = schema.new({
            id = id.from(_N, "GetFileOutput", "filePath"),
            type = "string",
            name = "filePath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fileMode = schema.new({
            id = id.from(_N, "GetFileOutput", "fileMode"),
            type = "string",
            name = "fileMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fileSize = schema.new({
            id = id.from(_N, "GetFileOutput", "fileSize"),
            type = "long",
            name = "fileSize",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        fileContent = schema.new({
            id = id.from(_N, "GetFileOutput", "fileContent"),
            type = "blob",
            name = "fileContent",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FolderDoesNotExistException = schema.new({
    id = id.from(_N, "FolderDoesNotExistException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "FolderDoesNotExistException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetFolderInput = schema.new({
    id = id.from(_N, "GetFolderInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "GetFolderInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        commitSpecifier = schema.new({
            id = id.from(_N, "GetFolderInput", "commitSpecifier"),
            type = "string",
            name = "commitSpecifier",
            target_id = prelude.String.id,
        }),
        folderPath = schema.new({
            id = id.from(_N, "GetFolderInput", "folderPath"),
            type = "string",
            name = "folderPath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.File = schema.new({
    id = id.from(_N, "File"),
    type = "structure",
    members = {
        blobId = schema.new({
            id = id.from(_N, "File", "blobId"),
            type = "string",
            name = "blobId",
            target_id = prelude.String.id,
        }),
        absolutePath = schema.new({
            id = id.from(_N, "File", "absolutePath"),
            type = "string",
            name = "absolutePath",
            target_id = prelude.String.id,
        }),
        relativePath = schema.new({
            id = id.from(_N, "File", "relativePath"),
            type = "string",
            name = "relativePath",
            target_id = prelude.String.id,
        }),
        fileMode = schema.new({
            id = id.from(_N, "File", "fileMode"),
            type = "string",
            name = "fileMode",
            target_id = prelude.String.id,
        }),
    },
})

M.Folder = schema.new({
    id = id.from(_N, "Folder"),
    type = "structure",
    members = {
        treeId = schema.new({
            id = id.from(_N, "Folder", "treeId"),
            type = "string",
            name = "treeId",
            target_id = prelude.String.id,
        }),
        absolutePath = schema.new({
            id = id.from(_N, "Folder", "absolutePath"),
            type = "string",
            name = "absolutePath",
            target_id = prelude.String.id,
        }),
        relativePath = schema.new({
            id = id.from(_N, "Folder", "relativePath"),
            type = "string",
            name = "relativePath",
            target_id = prelude.String.id,
        }),
    },
})

M.SubModule = schema.new({
    id = id.from(_N, "SubModule"),
    type = "structure",
    members = {
        commitId = schema.new({
            id = id.from(_N, "SubModule", "commitId"),
            type = "string",
            name = "commitId",
            target_id = prelude.String.id,
        }),
        absolutePath = schema.new({
            id = id.from(_N, "SubModule", "absolutePath"),
            type = "string",
            name = "absolutePath",
            target_id = prelude.String.id,
        }),
        relativePath = schema.new({
            id = id.from(_N, "SubModule", "relativePath"),
            type = "string",
            name = "relativePath",
            target_id = prelude.String.id,
        }),
    },
})

M.SymbolicLink = schema.new({
    id = id.from(_N, "SymbolicLink"),
    type = "structure",
    members = {
        blobId = schema.new({
            id = id.from(_N, "SymbolicLink", "blobId"),
            type = "string",
            name = "blobId",
            target_id = prelude.String.id,
        }),
        absolutePath = schema.new({
            id = id.from(_N, "SymbolicLink", "absolutePath"),
            type = "string",
            name = "absolutePath",
            target_id = prelude.String.id,
        }),
        relativePath = schema.new({
            id = id.from(_N, "SymbolicLink", "relativePath"),
            type = "string",
            name = "relativePath",
            target_id = prelude.String.id,
        }),
        fileMode = schema.new({
            id = id.from(_N, "SymbolicLink", "fileMode"),
            type = "string",
            name = "fileMode",
            target_id = prelude.String.id,
        }),
    },
})

M.GetFolderOutput = schema.new({
    id = id.from(_N, "GetFolderOutput"),
    type = "structure",
    members = {
        commitId = schema.new({
            id = id.from(_N, "GetFolderOutput", "commitId"),
            type = "string",
            name = "commitId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        folderPath = schema.new({
            id = id.from(_N, "GetFolderOutput", "folderPath"),
            type = "string",
            name = "folderPath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        treeId = schema.new({
            id = id.from(_N, "GetFolderOutput", "treeId"),
            type = "string",
            name = "treeId",
            target_id = prelude.String.id,
        }),
        subFolders = schema.new({
            id = id.from(_N, "GetFolderOutput", "subFolders"),
            type = "list",
            name = "subFolders",
            target_id = prelude.Document.id,
            list_member = M.Folder,
        }),
        files = schema.new({
            id = id.from(_N, "GetFolderOutput", "files"),
            type = "list",
            name = "files",
            target_id = prelude.Document.id,
            list_member = M.File,
        }),
        symbolicLinks = schema.new({
            id = id.from(_N, "GetFolderOutput", "symbolicLinks"),
            type = "list",
            name = "symbolicLinks",
            target_id = prelude.Document.id,
            list_member = M.SymbolicLink,
        }),
        subModules = schema.new({
            id = id.from(_N, "GetFolderOutput", "subModules"),
            type = "list",
            name = "subModules",
            target_id = prelude.Document.id,
            list_member = M.SubModule,
        }),
    },
})

M.GetMergeCommitInput = schema.new({
    id = id.from(_N, "GetMergeCommitInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "GetMergeCommitInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceCommitSpecifier = schema.new({
            id = id.from(_N, "GetMergeCommitInput", "sourceCommitSpecifier"),
            type = "string",
            name = "sourceCommitSpecifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationCommitSpecifier = schema.new({
            id = id.from(_N, "GetMergeCommitInput", "destinationCommitSpecifier"),
            type = "string",
            name = "destinationCommitSpecifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        conflictDetailLevel = schema.new({
            id = id.from(_N, "GetMergeCommitInput", "conflictDetailLevel"),
            type = "string",
            name = "conflictDetailLevel",
            target_id = prelude.String.id,
        }),
        conflictResolutionStrategy = schema.new({
            id = id.from(_N, "GetMergeCommitInput", "conflictResolutionStrategy"),
            type = "string",
            name = "conflictResolutionStrategy",
            target_id = prelude.String.id,
        }),
    },
})

M.GetMergeCommitOutput = schema.new({
    id = id.from(_N, "GetMergeCommitOutput"),
    type = "structure",
    members = {
        sourceCommitId = schema.new({
            id = id.from(_N, "GetMergeCommitOutput", "sourceCommitId"),
            type = "string",
            name = "sourceCommitId",
            target_id = prelude.String.id,
        }),
        destinationCommitId = schema.new({
            id = id.from(_N, "GetMergeCommitOutput", "destinationCommitId"),
            type = "string",
            name = "destinationCommitId",
            target_id = prelude.String.id,
        }),
        baseCommitId = schema.new({
            id = id.from(_N, "GetMergeCommitOutput", "baseCommitId"),
            type = "string",
            name = "baseCommitId",
            target_id = prelude.String.id,
        }),
        mergedCommitId = schema.new({
            id = id.from(_N, "GetMergeCommitOutput", "mergedCommitId"),
            type = "string",
            name = "mergedCommitId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetMergeConflictsInput = schema.new({
    id = id.from(_N, "GetMergeConflictsInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "GetMergeConflictsInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationCommitSpecifier = schema.new({
            id = id.from(_N, "GetMergeConflictsInput", "destinationCommitSpecifier"),
            type = "string",
            name = "destinationCommitSpecifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceCommitSpecifier = schema.new({
            id = id.from(_N, "GetMergeConflictsInput", "sourceCommitSpecifier"),
            type = "string",
            name = "sourceCommitSpecifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        mergeOption = schema.new({
            id = id.from(_N, "GetMergeConflictsInput", "mergeOption"),
            type = "string",
            name = "mergeOption",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        conflictDetailLevel = schema.new({
            id = id.from(_N, "GetMergeConflictsInput", "conflictDetailLevel"),
            type = "string",
            name = "conflictDetailLevel",
            target_id = prelude.String.id,
        }),
        maxConflictFiles = schema.new({
            id = id.from(_N, "GetMergeConflictsInput", "maxConflictFiles"),
            type = "integer",
            name = "maxConflictFiles",
            target_id = prelude.Integer.id,
        }),
        conflictResolutionStrategy = schema.new({
            id = id.from(_N, "GetMergeConflictsInput", "conflictResolutionStrategy"),
            type = "string",
            name = "conflictResolutionStrategy",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetMergeConflictsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetMergeConflictsOutput = schema.new({
    id = id.from(_N, "GetMergeConflictsOutput"),
    type = "structure",
    members = {
        mergeable = schema.new({
            id = id.from(_N, "GetMergeConflictsOutput", "mergeable"),
            type = "boolean",
            name = "mergeable",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        destinationCommitId = schema.new({
            id = id.from(_N, "GetMergeConflictsOutput", "destinationCommitId"),
            type = "string",
            name = "destinationCommitId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceCommitId = schema.new({
            id = id.from(_N, "GetMergeConflictsOutput", "sourceCommitId"),
            type = "string",
            name = "sourceCommitId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        baseCommitId = schema.new({
            id = id.from(_N, "GetMergeConflictsOutput", "baseCommitId"),
            type = "string",
            name = "baseCommitId",
            target_id = prelude.String.id,
        }),
        conflictMetadataList = schema.new({
            id = id.from(_N, "GetMergeConflictsOutput", "conflictMetadataList"),
            type = "list",
            name = "conflictMetadataList",
            target_id = prelude.Document.id,
            list_member = M.ConflictMetadata,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetMergeConflictsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidDestinationCommitSpecifierException = schema.new({
    id = id.from(_N, "InvalidDestinationCommitSpecifierException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidDestinationCommitSpecifierException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidSourceCommitSpecifierException = schema.new({
    id = id.from(_N, "InvalidSourceCommitSpecifierException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidSourceCommitSpecifierException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetMergeOptionsInput = schema.new({
    id = id.from(_N, "GetMergeOptionsInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "GetMergeOptionsInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceCommitSpecifier = schema.new({
            id = id.from(_N, "GetMergeOptionsInput", "sourceCommitSpecifier"),
            type = "string",
            name = "sourceCommitSpecifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationCommitSpecifier = schema.new({
            id = id.from(_N, "GetMergeOptionsInput", "destinationCommitSpecifier"),
            type = "string",
            name = "destinationCommitSpecifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        conflictDetailLevel = schema.new({
            id = id.from(_N, "GetMergeOptionsInput", "conflictDetailLevel"),
            type = "string",
            name = "conflictDetailLevel",
            target_id = prelude.String.id,
        }),
        conflictResolutionStrategy = schema.new({
            id = id.from(_N, "GetMergeOptionsInput", "conflictResolutionStrategy"),
            type = "string",
            name = "conflictResolutionStrategy",
            target_id = prelude.String.id,
        }),
    },
})

M.GetMergeOptionsOutput = schema.new({
    id = id.from(_N, "GetMergeOptionsOutput"),
    type = "structure",
    members = {
        mergeOptions = schema.new({
            id = id.from(_N, "GetMergeOptionsOutput", "mergeOptions"),
            type = "list",
            name = "mergeOptions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceCommitId = schema.new({
            id = id.from(_N, "GetMergeOptionsOutput", "sourceCommitId"),
            type = "string",
            name = "sourceCommitId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationCommitId = schema.new({
            id = id.from(_N, "GetMergeOptionsOutput", "destinationCommitId"),
            type = "string",
            name = "destinationCommitId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        baseCommitId = schema.new({
            id = id.from(_N, "GetMergeOptionsOutput", "baseCommitId"),
            type = "string",
            name = "baseCommitId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetPullRequestInput = schema.new({
    id = id.from(_N, "GetPullRequestInput"),
    type = "structure",
    members = {
        pullRequestId = schema.new({
            id = id.from(_N, "GetPullRequestInput", "pullRequestId"),
            type = "string",
            name = "pullRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetPullRequestOutput = schema.new({
    id = id.from(_N, "GetPullRequestOutput"),
    type = "structure",
    members = {
        pullRequest = schema.new({
            id = id.from(_N, "GetPullRequestOutput", "pullRequest"),
            type = "structure",
            name = "pullRequest",
            target_id = id.from(_N, "PullRequest"),
            target = M.PullRequest,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetPullRequestApprovalStatesInput = schema.new({
    id = id.from(_N, "GetPullRequestApprovalStatesInput"),
    type = "structure",
    members = {
        pullRequestId = schema.new({
            id = id.from(_N, "GetPullRequestApprovalStatesInput", "pullRequestId"),
            type = "string",
            name = "pullRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        revisionId = schema.new({
            id = id.from(_N, "GetPullRequestApprovalStatesInput", "revisionId"),
            type = "string",
            name = "revisionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetPullRequestApprovalStatesOutput = schema.new({
    id = id.from(_N, "GetPullRequestApprovalStatesOutput"),
    type = "structure",
    members = {
        approvals = schema.new({
            id = id.from(_N, "GetPullRequestApprovalStatesOutput", "approvals"),
            type = "list",
            name = "approvals",
            target_id = prelude.Document.id,
            list_member = M.Approval,
        }),
    },
})

M.GetPullRequestOverrideStateInput = schema.new({
    id = id.from(_N, "GetPullRequestOverrideStateInput"),
    type = "structure",
    members = {
        pullRequestId = schema.new({
            id = id.from(_N, "GetPullRequestOverrideStateInput", "pullRequestId"),
            type = "string",
            name = "pullRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        revisionId = schema.new({
            id = id.from(_N, "GetPullRequestOverrideStateInput", "revisionId"),
            type = "string",
            name = "revisionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetPullRequestOverrideStateOutput = schema.new({
    id = id.from(_N, "GetPullRequestOverrideStateOutput"),
    type = "structure",
    members = {
        overridden = schema.new({
            id = id.from(_N, "GetPullRequestOverrideStateOutput", "overridden"),
            type = "boolean",
            name = "overridden",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        overrider = schema.new({
            id = id.from(_N, "GetPullRequestOverrideStateOutput", "overrider"),
            type = "string",
            name = "overrider",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRepositoryInput = schema.new({
    id = id.from(_N, "GetRepositoryInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "GetRepositoryInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRepositoryOutput = schema.new({
    id = id.from(_N, "GetRepositoryOutput"),
    type = "structure",
    members = {
        repositoryMetadata = schema.new({
            id = id.from(_N, "GetRepositoryOutput", "repositoryMetadata"),
            type = "structure",
            name = "repositoryMetadata",
            target_id = id.from(_N, "RepositoryMetadata"),
            target = M.RepositoryMetadata,
        }),
    },
})

M.GetRepositoryTriggersInput = schema.new({
    id = id.from(_N, "GetRepositoryTriggersInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "GetRepositoryTriggersInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RepositoryTrigger = schema.new({
    id = id.from(_N, "RepositoryTrigger"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "RepositoryTrigger", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationArn = schema.new({
            id = id.from(_N, "RepositoryTrigger", "destinationArn"),
            type = "string",
            name = "destinationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        customData = schema.new({
            id = id.from(_N, "RepositoryTrigger", "customData"),
            type = "string",
            name = "customData",
            target_id = prelude.String.id,
        }),
        branches = schema.new({
            id = id.from(_N, "RepositoryTrigger", "branches"),
            type = "list",
            name = "branches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        events = schema.new({
            id = id.from(_N, "RepositoryTrigger", "events"),
            type = "list",
            name = "events",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRepositoryTriggersOutput = schema.new({
    id = id.from(_N, "GetRepositoryTriggersOutput"),
    type = "structure",
    members = {
        configurationId = schema.new({
            id = id.from(_N, "GetRepositoryTriggersOutput", "configurationId"),
            type = "string",
            name = "configurationId",
            target_id = prelude.String.id,
        }),
        triggers = schema.new({
            id = id.from(_N, "GetRepositoryTriggersOutput", "triggers"),
            type = "list",
            name = "triggers",
            target_id = prelude.Document.id,
            list_member = M.RepositoryTrigger,
        }),
    },
})

M.ListApprovalRuleTemplatesInput = schema.new({
    id = id.from(_N, "ListApprovalRuleTemplatesInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListApprovalRuleTemplatesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListApprovalRuleTemplatesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListApprovalRuleTemplatesOutput = schema.new({
    id = id.from(_N, "ListApprovalRuleTemplatesOutput"),
    type = "structure",
    members = {
        approvalRuleTemplateNames = schema.new({
            id = id.from(_N, "ListApprovalRuleTemplatesOutput", "approvalRuleTemplateNames"),
            type = "list",
            name = "approvalRuleTemplateNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListApprovalRuleTemplatesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAssociatedApprovalRuleTemplatesForRepositoryInput = schema.new({
    id = id.from(_N, "ListAssociatedApprovalRuleTemplatesForRepositoryInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "ListAssociatedApprovalRuleTemplatesForRepositoryInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssociatedApprovalRuleTemplatesForRepositoryInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAssociatedApprovalRuleTemplatesForRepositoryInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListAssociatedApprovalRuleTemplatesForRepositoryOutput = schema.new({
    id = id.from(_N, "ListAssociatedApprovalRuleTemplatesForRepositoryOutput"),
    type = "structure",
    members = {
        approvalRuleTemplateNames = schema.new({
            id = id.from(_N, "ListAssociatedApprovalRuleTemplatesForRepositoryOutput", "approvalRuleTemplateNames"),
            type = "list",
            name = "approvalRuleTemplateNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAssociatedApprovalRuleTemplatesForRepositoryOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBranchesInput = schema.new({
    id = id.from(_N, "ListBranchesInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "ListBranchesInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBranchesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBranchesOutput = schema.new({
    id = id.from(_N, "ListBranchesOutput"),
    type = "structure",
    members = {
        branches = schema.new({
            id = id.from(_N, "ListBranchesOutput", "branches"),
            type = "list",
            name = "branches",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBranchesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFileCommitHistoryInput = schema.new({
    id = id.from(_N, "ListFileCommitHistoryRequest"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "ListFileCommitHistoryInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        commitSpecifier = schema.new({
            id = id.from(_N, "ListFileCommitHistoryInput", "commitSpecifier"),
            type = "string",
            name = "commitSpecifier",
            target_id = prelude.String.id,
        }),
        filePath = schema.new({
            id = id.from(_N, "ListFileCommitHistoryInput", "filePath"),
            type = "string",
            name = "filePath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListFileCommitHistoryInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListFileCommitHistoryInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.FileVersion = schema.new({
    id = id.from(_N, "FileVersion"),
    type = "structure",
    members = {
        commit = schema.new({
            id = id.from(_N, "FileVersion", "commit"),
            type = "structure",
            name = "commit",
            target_id = id.from(_N, "Commit"),
            target = M.Commit,
        }),
        blobId = schema.new({
            id = id.from(_N, "FileVersion", "blobId"),
            type = "string",
            name = "blobId",
            target_id = prelude.String.id,
        }),
        path = schema.new({
            id = id.from(_N, "FileVersion", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
        }),
        revisionChildren = schema.new({
            id = id.from(_N, "FileVersion", "revisionChildren"),
            type = "list",
            name = "revisionChildren",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListFileCommitHistoryOutput = schema.new({
    id = id.from(_N, "ListFileCommitHistoryResponse"),
    type = "structure",
    members = {
        revisionDag = schema.new({
            id = id.from(_N, "ListFileCommitHistoryOutput", "revisionDag"),
            type = "list",
            name = "revisionDag",
            target_id = prelude.Document.id,
            list_member = M.FileVersion,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListFileCommitHistoryOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidAuthorArnException = schema.new({
    id = id.from(_N, "InvalidAuthorArnException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidAuthorArnException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidPullRequestStatusException = schema.new({
    id = id.from(_N, "InvalidPullRequestStatusException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidPullRequestStatusException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPullRequestsInput = schema.new({
    id = id.from(_N, "ListPullRequestsInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "ListPullRequestsInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authorArn = schema.new({
            id = id.from(_N, "ListPullRequestsInput", "authorArn"),
            type = "string",
            name = "authorArn",
            target_id = prelude.String.id,
        }),
        pullRequestStatus = schema.new({
            id = id.from(_N, "ListPullRequestsInput", "pullRequestStatus"),
            type = "string",
            name = "pullRequestStatus",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPullRequestsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListPullRequestsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListPullRequestsOutput = schema.new({
    id = id.from(_N, "ListPullRequestsOutput"),
    type = "structure",
    members = {
        pullRequestIds = schema.new({
            id = id.from(_N, "ListPullRequestsOutput", "pullRequestIds"),
            type = "list",
            name = "pullRequestIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPullRequestsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidOrderException = schema.new({
    id = id.from(_N, "InvalidOrderException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidOrderException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidSortByException = schema.new({
    id = id.from(_N, "InvalidSortByException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidSortByException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRepositoriesInput = schema.new({
    id = id.from(_N, "ListRepositoriesInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListRepositoriesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        sortBy = schema.new({
            id = id.from(_N, "ListRepositoriesInput", "sortBy"),
            type = "string",
            name = "sortBy",
            target_id = prelude.String.id,
        }),
        order = schema.new({
            id = id.from(_N, "ListRepositoriesInput", "order"),
            type = "string",
            name = "order",
            target_id = prelude.String.id,
        }),
    },
})

M.RepositoryNameIdPair = schema.new({
    id = id.from(_N, "RepositoryNameIdPair"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "RepositoryNameIdPair", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
        }),
        repositoryId = schema.new({
            id = id.from(_N, "RepositoryNameIdPair", "repositoryId"),
            type = "string",
            name = "repositoryId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRepositoriesOutput = schema.new({
    id = id.from(_N, "ListRepositoriesOutput"),
    type = "structure",
    members = {
        repositories = schema.new({
            id = id.from(_N, "ListRepositoriesOutput", "repositories"),
            type = "list",
            name = "repositories",
            target_id = prelude.Document.id,
            list_member = M.RepositoryNameIdPair,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRepositoriesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRepositoriesForApprovalRuleTemplateInput = schema.new({
    id = id.from(_N, "ListRepositoriesForApprovalRuleTemplateInput"),
    type = "structure",
    members = {
        approvalRuleTemplateName = schema.new({
            id = id.from(_N, "ListRepositoriesForApprovalRuleTemplateInput", "approvalRuleTemplateName"),
            type = "string",
            name = "approvalRuleTemplateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRepositoriesForApprovalRuleTemplateInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListRepositoriesForApprovalRuleTemplateInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListRepositoriesForApprovalRuleTemplateOutput = schema.new({
    id = id.from(_N, "ListRepositoriesForApprovalRuleTemplateOutput"),
    type = "structure",
    members = {
        repositoryNames = schema.new({
            id = id.from(_N, "ListRepositoriesForApprovalRuleTemplateOutput", "repositoryNames"),
            type = "list",
            name = "repositoryNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRepositoriesForApprovalRuleTemplateOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidResourceArnException = schema.new({
    id = id.from(_N, "InvalidResourceArnException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidResourceArnException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
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
        nextToken = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceOutput"),
    type = "structure",
    members = {
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceArnRequiredException = schema.new({
    id = id.from(_N, "ResourceArnRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceArnRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidTargetBranchException = schema.new({
    id = id.from(_N, "InvalidTargetBranchException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidTargetBranchException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.MergeBranchesByFastForwardInput = schema.new({
    id = id.from(_N, "MergeBranchesByFastForwardInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "MergeBranchesByFastForwardInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceCommitSpecifier = schema.new({
            id = id.from(_N, "MergeBranchesByFastForwardInput", "sourceCommitSpecifier"),
            type = "string",
            name = "sourceCommitSpecifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationCommitSpecifier = schema.new({
            id = id.from(_N, "MergeBranchesByFastForwardInput", "destinationCommitSpecifier"),
            type = "string",
            name = "destinationCommitSpecifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        targetBranch = schema.new({
            id = id.from(_N, "MergeBranchesByFastForwardInput", "targetBranch"),
            type = "string",
            name = "targetBranch",
            target_id = prelude.String.id,
        }),
    },
})

M.MergeBranchesByFastForwardOutput = schema.new({
    id = id.from(_N, "MergeBranchesByFastForwardOutput"),
    type = "structure",
    members = {
        commitId = schema.new({
            id = id.from(_N, "MergeBranchesByFastForwardOutput", "commitId"),
            type = "string",
            name = "commitId",
            target_id = prelude.String.id,
        }),
        treeId = schema.new({
            id = id.from(_N, "MergeBranchesByFastForwardOutput", "treeId"),
            type = "string",
            name = "treeId",
            target_id = prelude.String.id,
        }),
    },
})

M.MergeBranchesBySquashInput = schema.new({
    id = id.from(_N, "MergeBranchesBySquashInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "MergeBranchesBySquashInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceCommitSpecifier = schema.new({
            id = id.from(_N, "MergeBranchesBySquashInput", "sourceCommitSpecifier"),
            type = "string",
            name = "sourceCommitSpecifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationCommitSpecifier = schema.new({
            id = id.from(_N, "MergeBranchesBySquashInput", "destinationCommitSpecifier"),
            type = "string",
            name = "destinationCommitSpecifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        targetBranch = schema.new({
            id = id.from(_N, "MergeBranchesBySquashInput", "targetBranch"),
            type = "string",
            name = "targetBranch",
            target_id = prelude.String.id,
        }),
        conflictDetailLevel = schema.new({
            id = id.from(_N, "MergeBranchesBySquashInput", "conflictDetailLevel"),
            type = "string",
            name = "conflictDetailLevel",
            target_id = prelude.String.id,
        }),
        conflictResolutionStrategy = schema.new({
            id = id.from(_N, "MergeBranchesBySquashInput", "conflictResolutionStrategy"),
            type = "string",
            name = "conflictResolutionStrategy",
            target_id = prelude.String.id,
        }),
        authorName = schema.new({
            id = id.from(_N, "MergeBranchesBySquashInput", "authorName"),
            type = "string",
            name = "authorName",
            target_id = prelude.String.id,
        }),
        email = schema.new({
            id = id.from(_N, "MergeBranchesBySquashInput", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
        }),
        commitMessage = schema.new({
            id = id.from(_N, "MergeBranchesBySquashInput", "commitMessage"),
            type = "string",
            name = "commitMessage",
            target_id = prelude.String.id,
        }),
        keepEmptyFolders = schema.new({
            id = id.from(_N, "MergeBranchesBySquashInput", "keepEmptyFolders"),
            type = "boolean",
            name = "keepEmptyFolders",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        conflictResolution = schema.new({
            id = id.from(_N, "MergeBranchesBySquashInput", "conflictResolution"),
            type = "structure",
            name = "conflictResolution",
            target_id = id.from(_N, "ConflictResolution"),
            target = M.ConflictResolution,
        }),
    },
})

M.MergeBranchesBySquashOutput = schema.new({
    id = id.from(_N, "MergeBranchesBySquashOutput"),
    type = "structure",
    members = {
        commitId = schema.new({
            id = id.from(_N, "MergeBranchesBySquashOutput", "commitId"),
            type = "string",
            name = "commitId",
            target_id = prelude.String.id,
        }),
        treeId = schema.new({
            id = id.from(_N, "MergeBranchesBySquashOutput", "treeId"),
            type = "string",
            name = "treeId",
            target_id = prelude.String.id,
        }),
    },
})

M.MergeBranchesByThreeWayInput = schema.new({
    id = id.from(_N, "MergeBranchesByThreeWayInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "MergeBranchesByThreeWayInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceCommitSpecifier = schema.new({
            id = id.from(_N, "MergeBranchesByThreeWayInput", "sourceCommitSpecifier"),
            type = "string",
            name = "sourceCommitSpecifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destinationCommitSpecifier = schema.new({
            id = id.from(_N, "MergeBranchesByThreeWayInput", "destinationCommitSpecifier"),
            type = "string",
            name = "destinationCommitSpecifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        targetBranch = schema.new({
            id = id.from(_N, "MergeBranchesByThreeWayInput", "targetBranch"),
            type = "string",
            name = "targetBranch",
            target_id = prelude.String.id,
        }),
        conflictDetailLevel = schema.new({
            id = id.from(_N, "MergeBranchesByThreeWayInput", "conflictDetailLevel"),
            type = "string",
            name = "conflictDetailLevel",
            target_id = prelude.String.id,
        }),
        conflictResolutionStrategy = schema.new({
            id = id.from(_N, "MergeBranchesByThreeWayInput", "conflictResolutionStrategy"),
            type = "string",
            name = "conflictResolutionStrategy",
            target_id = prelude.String.id,
        }),
        authorName = schema.new({
            id = id.from(_N, "MergeBranchesByThreeWayInput", "authorName"),
            type = "string",
            name = "authorName",
            target_id = prelude.String.id,
        }),
        email = schema.new({
            id = id.from(_N, "MergeBranchesByThreeWayInput", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
        }),
        commitMessage = schema.new({
            id = id.from(_N, "MergeBranchesByThreeWayInput", "commitMessage"),
            type = "string",
            name = "commitMessage",
            target_id = prelude.String.id,
        }),
        keepEmptyFolders = schema.new({
            id = id.from(_N, "MergeBranchesByThreeWayInput", "keepEmptyFolders"),
            type = "boolean",
            name = "keepEmptyFolders",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        conflictResolution = schema.new({
            id = id.from(_N, "MergeBranchesByThreeWayInput", "conflictResolution"),
            type = "structure",
            name = "conflictResolution",
            target_id = id.from(_N, "ConflictResolution"),
            target = M.ConflictResolution,
        }),
    },
})

M.MergeBranchesByThreeWayOutput = schema.new({
    id = id.from(_N, "MergeBranchesByThreeWayOutput"),
    type = "structure",
    members = {
        commitId = schema.new({
            id = id.from(_N, "MergeBranchesByThreeWayOutput", "commitId"),
            type = "string",
            name = "commitId",
            target_id = prelude.String.id,
        }),
        treeId = schema.new({
            id = id.from(_N, "MergeBranchesByThreeWayOutput", "treeId"),
            type = "string",
            name = "treeId",
            target_id = prelude.String.id,
        }),
    },
})

M.MergePullRequestByFastForwardInput = schema.new({
    id = id.from(_N, "MergePullRequestByFastForwardInput"),
    type = "structure",
    members = {
        pullRequestId = schema.new({
            id = id.from(_N, "MergePullRequestByFastForwardInput", "pullRequestId"),
            type = "string",
            name = "pullRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        repositoryName = schema.new({
            id = id.from(_N, "MergePullRequestByFastForwardInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceCommitId = schema.new({
            id = id.from(_N, "MergePullRequestByFastForwardInput", "sourceCommitId"),
            type = "string",
            name = "sourceCommitId",
            target_id = prelude.String.id,
        }),
    },
})

M.MergePullRequestByFastForwardOutput = schema.new({
    id = id.from(_N, "MergePullRequestByFastForwardOutput"),
    type = "structure",
    members = {
        pullRequest = schema.new({
            id = id.from(_N, "MergePullRequestByFastForwardOutput", "pullRequest"),
            type = "structure",
            name = "pullRequest",
            target_id = id.from(_N, "PullRequest"),
            target = M.PullRequest,
        }),
    },
})

M.PullRequestApprovalRulesNotSatisfiedException = schema.new({
    id = id.from(_N, "PullRequestApprovalRulesNotSatisfiedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "PullRequestApprovalRulesNotSatisfiedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TipOfSourceReferenceIsDifferentException = schema.new({
    id = id.from(_N, "TipOfSourceReferenceIsDifferentException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TipOfSourceReferenceIsDifferentException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.MergePullRequestBySquashInput = schema.new({
    id = id.from(_N, "MergePullRequestBySquashInput"),
    type = "structure",
    members = {
        pullRequestId = schema.new({
            id = id.from(_N, "MergePullRequestBySquashInput", "pullRequestId"),
            type = "string",
            name = "pullRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        repositoryName = schema.new({
            id = id.from(_N, "MergePullRequestBySquashInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceCommitId = schema.new({
            id = id.from(_N, "MergePullRequestBySquashInput", "sourceCommitId"),
            type = "string",
            name = "sourceCommitId",
            target_id = prelude.String.id,
        }),
        conflictDetailLevel = schema.new({
            id = id.from(_N, "MergePullRequestBySquashInput", "conflictDetailLevel"),
            type = "string",
            name = "conflictDetailLevel",
            target_id = prelude.String.id,
        }),
        conflictResolutionStrategy = schema.new({
            id = id.from(_N, "MergePullRequestBySquashInput", "conflictResolutionStrategy"),
            type = "string",
            name = "conflictResolutionStrategy",
            target_id = prelude.String.id,
        }),
        commitMessage = schema.new({
            id = id.from(_N, "MergePullRequestBySquashInput", "commitMessage"),
            type = "string",
            name = "commitMessage",
            target_id = prelude.String.id,
        }),
        authorName = schema.new({
            id = id.from(_N, "MergePullRequestBySquashInput", "authorName"),
            type = "string",
            name = "authorName",
            target_id = prelude.String.id,
        }),
        email = schema.new({
            id = id.from(_N, "MergePullRequestBySquashInput", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
        }),
        keepEmptyFolders = schema.new({
            id = id.from(_N, "MergePullRequestBySquashInput", "keepEmptyFolders"),
            type = "boolean",
            name = "keepEmptyFolders",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        conflictResolution = schema.new({
            id = id.from(_N, "MergePullRequestBySquashInput", "conflictResolution"),
            type = "structure",
            name = "conflictResolution",
            target_id = id.from(_N, "ConflictResolution"),
            target = M.ConflictResolution,
        }),
    },
})

M.MergePullRequestBySquashOutput = schema.new({
    id = id.from(_N, "MergePullRequestBySquashOutput"),
    type = "structure",
    members = {
        pullRequest = schema.new({
            id = id.from(_N, "MergePullRequestBySquashOutput", "pullRequest"),
            type = "structure",
            name = "pullRequest",
            target_id = id.from(_N, "PullRequest"),
            target = M.PullRequest,
        }),
    },
})

M.MergePullRequestByThreeWayInput = schema.new({
    id = id.from(_N, "MergePullRequestByThreeWayInput"),
    type = "structure",
    members = {
        pullRequestId = schema.new({
            id = id.from(_N, "MergePullRequestByThreeWayInput", "pullRequestId"),
            type = "string",
            name = "pullRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        repositoryName = schema.new({
            id = id.from(_N, "MergePullRequestByThreeWayInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceCommitId = schema.new({
            id = id.from(_N, "MergePullRequestByThreeWayInput", "sourceCommitId"),
            type = "string",
            name = "sourceCommitId",
            target_id = prelude.String.id,
        }),
        conflictDetailLevel = schema.new({
            id = id.from(_N, "MergePullRequestByThreeWayInput", "conflictDetailLevel"),
            type = "string",
            name = "conflictDetailLevel",
            target_id = prelude.String.id,
        }),
        conflictResolutionStrategy = schema.new({
            id = id.from(_N, "MergePullRequestByThreeWayInput", "conflictResolutionStrategy"),
            type = "string",
            name = "conflictResolutionStrategy",
            target_id = prelude.String.id,
        }),
        commitMessage = schema.new({
            id = id.from(_N, "MergePullRequestByThreeWayInput", "commitMessage"),
            type = "string",
            name = "commitMessage",
            target_id = prelude.String.id,
        }),
        authorName = schema.new({
            id = id.from(_N, "MergePullRequestByThreeWayInput", "authorName"),
            type = "string",
            name = "authorName",
            target_id = prelude.String.id,
        }),
        email = schema.new({
            id = id.from(_N, "MergePullRequestByThreeWayInput", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
        }),
        keepEmptyFolders = schema.new({
            id = id.from(_N, "MergePullRequestByThreeWayInput", "keepEmptyFolders"),
            type = "boolean",
            name = "keepEmptyFolders",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        conflictResolution = schema.new({
            id = id.from(_N, "MergePullRequestByThreeWayInput", "conflictResolution"),
            type = "structure",
            name = "conflictResolution",
            target_id = id.from(_N, "ConflictResolution"),
            target = M.ConflictResolution,
        }),
    },
})

M.MergePullRequestByThreeWayOutput = schema.new({
    id = id.from(_N, "MergePullRequestByThreeWayOutput"),
    type = "structure",
    members = {
        pullRequest = schema.new({
            id = id.from(_N, "MergePullRequestByThreeWayOutput", "pullRequest"),
            type = "structure",
            name = "pullRequest",
            target_id = id.from(_N, "PullRequest"),
            target = M.PullRequest,
        }),
    },
})

M.InvalidOverrideStatusException = schema.new({
    id = id.from(_N, "InvalidOverrideStatusException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidOverrideStatusException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.OverrideAlreadySetException = schema.new({
    id = id.from(_N, "OverrideAlreadySetException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "OverrideAlreadySetException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.OverridePullRequestApprovalRulesInput = schema.new({
    id = id.from(_N, "OverridePullRequestApprovalRulesInput"),
    type = "structure",
    members = {
        pullRequestId = schema.new({
            id = id.from(_N, "OverridePullRequestApprovalRulesInput", "pullRequestId"),
            type = "string",
            name = "pullRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        revisionId = schema.new({
            id = id.from(_N, "OverridePullRequestApprovalRulesInput", "revisionId"),
            type = "string",
            name = "revisionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        overrideStatus = schema.new({
            id = id.from(_N, "OverridePullRequestApprovalRulesInput", "overrideStatus"),
            type = "string",
            name = "overrideStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.OverridePullRequestApprovalRulesOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.OverrideStatusRequiredException = schema.new({
    id = id.from(_N, "OverrideStatusRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "OverrideStatusRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CommentContentRequiredException = schema.new({
    id = id.from(_N, "CommentContentRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CommentContentRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CommentContentSizeLimitExceededException = schema.new({
    id = id.from(_N, "CommentContentSizeLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CommentContentSizeLimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidFileLocationException = schema.new({
    id = id.from(_N, "InvalidFileLocationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidFileLocationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidFilePositionException = schema.new({
    id = id.from(_N, "InvalidFilePositionException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidFilePositionException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRelativeFileVersionEnumException = schema.new({
    id = id.from(_N, "InvalidRelativeFileVersionEnumException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidRelativeFileVersionEnumException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PostCommentForComparedCommitInput = schema.new({
    id = id.from(_N, "PostCommentForComparedCommitInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "PostCommentForComparedCommitInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        beforeCommitId = schema.new({
            id = id.from(_N, "PostCommentForComparedCommitInput", "beforeCommitId"),
            type = "string",
            name = "beforeCommitId",
            target_id = prelude.String.id,
        }),
        afterCommitId = schema.new({
            id = id.from(_N, "PostCommentForComparedCommitInput", "afterCommitId"),
            type = "string",
            name = "afterCommitId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        location = schema.new({
            id = id.from(_N, "PostCommentForComparedCommitInput", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "Location"),
            target = M.Location,
        }),
        content = schema.new({
            id = id.from(_N, "PostCommentForComparedCommitInput", "content"),
            type = "string",
            name = "content",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "PostCommentForComparedCommitInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.PostCommentForComparedCommitOutput = schema.new({
    id = id.from(_N, "PostCommentForComparedCommitOutput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "PostCommentForComparedCommitOutput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
        }),
        beforeCommitId = schema.new({
            id = id.from(_N, "PostCommentForComparedCommitOutput", "beforeCommitId"),
            type = "string",
            name = "beforeCommitId",
            target_id = prelude.String.id,
        }),
        afterCommitId = schema.new({
            id = id.from(_N, "PostCommentForComparedCommitOutput", "afterCommitId"),
            type = "string",
            name = "afterCommitId",
            target_id = prelude.String.id,
        }),
        beforeBlobId = schema.new({
            id = id.from(_N, "PostCommentForComparedCommitOutput", "beforeBlobId"),
            type = "string",
            name = "beforeBlobId",
            target_id = prelude.String.id,
        }),
        afterBlobId = schema.new({
            id = id.from(_N, "PostCommentForComparedCommitOutput", "afterBlobId"),
            type = "string",
            name = "afterBlobId",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "PostCommentForComparedCommitOutput", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "Location"),
            target = M.Location,
        }),
        comment = schema.new({
            id = id.from(_N, "PostCommentForComparedCommitOutput", "comment"),
            type = "structure",
            name = "comment",
            target_id = id.from(_N, "Comment"),
            target = M.Comment,
        }),
    },
})

M.PostCommentForPullRequestInput = schema.new({
    id = id.from(_N, "PostCommentForPullRequestInput"),
    type = "structure",
    members = {
        pullRequestId = schema.new({
            id = id.from(_N, "PostCommentForPullRequestInput", "pullRequestId"),
            type = "string",
            name = "pullRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        repositoryName = schema.new({
            id = id.from(_N, "PostCommentForPullRequestInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        beforeCommitId = schema.new({
            id = id.from(_N, "PostCommentForPullRequestInput", "beforeCommitId"),
            type = "string",
            name = "beforeCommitId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        afterCommitId = schema.new({
            id = id.from(_N, "PostCommentForPullRequestInput", "afterCommitId"),
            type = "string",
            name = "afterCommitId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        location = schema.new({
            id = id.from(_N, "PostCommentForPullRequestInput", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "Location"),
            target = M.Location,
        }),
        content = schema.new({
            id = id.from(_N, "PostCommentForPullRequestInput", "content"),
            type = "string",
            name = "content",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "PostCommentForPullRequestInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.PostCommentForPullRequestOutput = schema.new({
    id = id.from(_N, "PostCommentForPullRequestOutput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "PostCommentForPullRequestOutput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
        }),
        pullRequestId = schema.new({
            id = id.from(_N, "PostCommentForPullRequestOutput", "pullRequestId"),
            type = "string",
            name = "pullRequestId",
            target_id = prelude.String.id,
        }),
        beforeCommitId = schema.new({
            id = id.from(_N, "PostCommentForPullRequestOutput", "beforeCommitId"),
            type = "string",
            name = "beforeCommitId",
            target_id = prelude.String.id,
        }),
        afterCommitId = schema.new({
            id = id.from(_N, "PostCommentForPullRequestOutput", "afterCommitId"),
            type = "string",
            name = "afterCommitId",
            target_id = prelude.String.id,
        }),
        beforeBlobId = schema.new({
            id = id.from(_N, "PostCommentForPullRequestOutput", "beforeBlobId"),
            type = "string",
            name = "beforeBlobId",
            target_id = prelude.String.id,
        }),
        afterBlobId = schema.new({
            id = id.from(_N, "PostCommentForPullRequestOutput", "afterBlobId"),
            type = "string",
            name = "afterBlobId",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "PostCommentForPullRequestOutput", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "Location"),
            target = M.Location,
        }),
        comment = schema.new({
            id = id.from(_N, "PostCommentForPullRequestOutput", "comment"),
            type = "structure",
            name = "comment",
            target_id = id.from(_N, "Comment"),
            target = M.Comment,
        }),
    },
})

M.PostCommentReplyInput = schema.new({
    id = id.from(_N, "PostCommentReplyInput"),
    type = "structure",
    members = {
        inReplyTo = schema.new({
            id = id.from(_N, "PostCommentReplyInput", "inReplyTo"),
            type = "string",
            name = "inReplyTo",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientRequestToken = schema.new({
            id = id.from(_N, "PostCommentReplyInput", "clientRequestToken"),
            type = "string",
            name = "clientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        content = schema.new({
            id = id.from(_N, "PostCommentReplyInput", "content"),
            type = "string",
            name = "content",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PostCommentReplyOutput = schema.new({
    id = id.from(_N, "PostCommentReplyOutput"),
    type = "structure",
    members = {
        comment = schema.new({
            id = id.from(_N, "PostCommentReplyOutput", "comment"),
            type = "structure",
            name = "comment",
            target_id = id.from(_N, "Comment"),
            target = M.Comment,
        }),
    },
})

M.InvalidReactionValueException = schema.new({
    id = id.from(_N, "InvalidReactionValueException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidReactionValueException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PutCommentReactionInput = schema.new({
    id = id.from(_N, "PutCommentReactionInput"),
    type = "structure",
    members = {
        commentId = schema.new({
            id = id.from(_N, "PutCommentReactionInput", "commentId"),
            type = "string",
            name = "commentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reactionValue = schema.new({
            id = id.from(_N, "PutCommentReactionInput", "reactionValue"),
            type = "string",
            name = "reactionValue",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutCommentReactionOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.ReactionLimitExceededException = schema.new({
    id = id.from(_N, "ReactionLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReactionLimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ReactionValueRequiredException = schema.new({
    id = id.from(_N, "ReactionValueRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReactionValueRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.FileContentRequiredException = schema.new({
    id = id.from(_N, "FileContentRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "FileContentRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PutFileInput = schema.new({
    id = id.from(_N, "PutFileInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "PutFileInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        branchName = schema.new({
            id = id.from(_N, "PutFileInput", "branchName"),
            type = "string",
            name = "branchName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fileContent = schema.new({
            id = id.from(_N, "PutFileInput", "fileContent"),
            type = "blob",
            name = "fileContent",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filePath = schema.new({
            id = id.from(_N, "PutFileInput", "filePath"),
            type = "string",
            name = "filePath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fileMode = schema.new({
            id = id.from(_N, "PutFileInput", "fileMode"),
            type = "string",
            name = "fileMode",
            target_id = prelude.String.id,
        }),
        parentCommitId = schema.new({
            id = id.from(_N, "PutFileInput", "parentCommitId"),
            type = "string",
            name = "parentCommitId",
            target_id = prelude.String.id,
        }),
        commitMessage = schema.new({
            id = id.from(_N, "PutFileInput", "commitMessage"),
            type = "string",
            name = "commitMessage",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "PutFileInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        email = schema.new({
            id = id.from(_N, "PutFileInput", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
        }),
    },
})

M.PutFileOutput = schema.new({
    id = id.from(_N, "PutFileOutput"),
    type = "structure",
    members = {
        commitId = schema.new({
            id = id.from(_N, "PutFileOutput", "commitId"),
            type = "string",
            name = "commitId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        blobId = schema.new({
            id = id.from(_N, "PutFileOutput", "blobId"),
            type = "string",
            name = "blobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        treeId = schema.new({
            id = id.from(_N, "PutFileOutput", "treeId"),
            type = "string",
            name = "treeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SameFileContentException = schema.new({
    id = id.from(_N, "SameFileContentException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SameFileContentException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRepositoryTriggerBranchNameException = schema.new({
    id = id.from(_N, "InvalidRepositoryTriggerBranchNameException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidRepositoryTriggerBranchNameException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRepositoryTriggerCustomDataException = schema.new({
    id = id.from(_N, "InvalidRepositoryTriggerCustomDataException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidRepositoryTriggerCustomDataException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRepositoryTriggerDestinationArnException = schema.new({
    id = id.from(_N, "InvalidRepositoryTriggerDestinationArnException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidRepositoryTriggerDestinationArnException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRepositoryTriggerEventsException = schema.new({
    id = id.from(_N, "InvalidRepositoryTriggerEventsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidRepositoryTriggerEventsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRepositoryTriggerNameException = schema.new({
    id = id.from(_N, "InvalidRepositoryTriggerNameException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidRepositoryTriggerNameException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRepositoryTriggerRegionException = schema.new({
    id = id.from(_N, "InvalidRepositoryTriggerRegionException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidRepositoryTriggerRegionException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.MaximumBranchesExceededException = schema.new({
    id = id.from(_N, "MaximumBranchesExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MaximumBranchesExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.MaximumRepositoryTriggersExceededException = schema.new({
    id = id.from(_N, "MaximumRepositoryTriggersExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MaximumRepositoryTriggersExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PutRepositoryTriggersInput = schema.new({
    id = id.from(_N, "PutRepositoryTriggersInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "PutRepositoryTriggersInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        triggers = schema.new({
            id = id.from(_N, "PutRepositoryTriggersInput", "triggers"),
            type = "list",
            name = "triggers",
            target_id = prelude.Document.id,
            list_member = M.RepositoryTrigger,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutRepositoryTriggersOutput = schema.new({
    id = id.from(_N, "PutRepositoryTriggersOutput"),
    type = "structure",
    members = {
        configurationId = schema.new({
            id = id.from(_N, "PutRepositoryTriggersOutput", "configurationId"),
            type = "string",
            name = "configurationId",
            target_id = prelude.String.id,
        }),
    },
})

M.RepositoryTriggerBranchNameListRequiredException = schema.new({
    id = id.from(_N, "RepositoryTriggerBranchNameListRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "RepositoryTriggerBranchNameListRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.RepositoryTriggerDestinationArnRequiredException = schema.new({
    id = id.from(_N, "RepositoryTriggerDestinationArnRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "RepositoryTriggerDestinationArnRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.RepositoryTriggerEventsListRequiredException = schema.new({
    id = id.from(_N, "RepositoryTriggerEventsListRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "RepositoryTriggerEventsListRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.RepositoryTriggerNameRequiredException = schema.new({
    id = id.from(_N, "RepositoryTriggerNameRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "RepositoryTriggerNameRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.RepositoryTriggersListRequiredException = schema.new({
    id = id.from(_N, "RepositoryTriggersListRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "RepositoryTriggersListRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
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
            type = "map",
            name = "tags",
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
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.TagsMapRequiredException = schema.new({
    id = id.from(_N, "TagsMapRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TagsMapRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TestRepositoryTriggersInput = schema.new({
    id = id.from(_N, "TestRepositoryTriggersInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "TestRepositoryTriggersInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        triggers = schema.new({
            id = id.from(_N, "TestRepositoryTriggersInput", "triggers"),
            type = "list",
            name = "triggers",
            target_id = prelude.Document.id,
            list_member = M.RepositoryTrigger,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RepositoryTriggerExecutionFailure = schema.new({
    id = id.from(_N, "RepositoryTriggerExecutionFailure"),
    type = "structure",
    members = {
        trigger = schema.new({
            id = id.from(_N, "RepositoryTriggerExecutionFailure", "trigger"),
            type = "string",
            name = "trigger",
            target_id = prelude.String.id,
        }),
        failureMessage = schema.new({
            id = id.from(_N, "RepositoryTriggerExecutionFailure", "failureMessage"),
            type = "string",
            name = "failureMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.TestRepositoryTriggersOutput = schema.new({
    id = id.from(_N, "TestRepositoryTriggersOutput"),
    type = "structure",
    members = {
        successfulExecutions = schema.new({
            id = id.from(_N, "TestRepositoryTriggersOutput", "successfulExecutions"),
            type = "list",
            name = "successfulExecutions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        failedExecutions = schema.new({
            id = id.from(_N, "TestRepositoryTriggersOutput", "failedExecutions"),
            type = "list",
            name = "failedExecutions",
            target_id = prelude.Document.id,
            list_member = M.RepositoryTriggerExecutionFailure,
        }),
    },
})

M.InvalidTagKeysListException = schema.new({
    id = id.from(_N, "InvalidTagKeysListException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidTagKeysListException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TagKeysListRequiredException = schema.new({
    id = id.from(_N, "TagKeysListRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TagKeysListRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
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
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.InvalidRuleContentSha256Exception = schema.new({
    id = id.from(_N, "InvalidRuleContentSha256Exception"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidRuleContentSha256Exception", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateApprovalRuleTemplateContentInput = schema.new({
    id = id.from(_N, "UpdateApprovalRuleTemplateContentInput"),
    type = "structure",
    members = {
        approvalRuleTemplateName = schema.new({
            id = id.from(_N, "UpdateApprovalRuleTemplateContentInput", "approvalRuleTemplateName"),
            type = "string",
            name = "approvalRuleTemplateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        newRuleContent = schema.new({
            id = id.from(_N, "UpdateApprovalRuleTemplateContentInput", "newRuleContent"),
            type = "string",
            name = "newRuleContent",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        existingRuleContentSha256 = schema.new({
            id = id.from(_N, "UpdateApprovalRuleTemplateContentInput", "existingRuleContentSha256"),
            type = "string",
            name = "existingRuleContentSha256",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateApprovalRuleTemplateContentOutput = schema.new({
    id = id.from(_N, "UpdateApprovalRuleTemplateContentOutput"),
    type = "structure",
    members = {
        approvalRuleTemplate = schema.new({
            id = id.from(_N, "UpdateApprovalRuleTemplateContentOutput", "approvalRuleTemplate"),
            type = "structure",
            name = "approvalRuleTemplate",
            target_id = id.from(_N, "ApprovalRuleTemplate"),
            target = M.ApprovalRuleTemplate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateApprovalRuleTemplateDescriptionInput = schema.new({
    id = id.from(_N, "UpdateApprovalRuleTemplateDescriptionInput"),
    type = "structure",
    members = {
        approvalRuleTemplateName = schema.new({
            id = id.from(_N, "UpdateApprovalRuleTemplateDescriptionInput", "approvalRuleTemplateName"),
            type = "string",
            name = "approvalRuleTemplateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        approvalRuleTemplateDescription = schema.new({
            id = id.from(_N, "UpdateApprovalRuleTemplateDescriptionInput", "approvalRuleTemplateDescription"),
            type = "string",
            name = "approvalRuleTemplateDescription",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateApprovalRuleTemplateDescriptionOutput = schema.new({
    id = id.from(_N, "UpdateApprovalRuleTemplateDescriptionOutput"),
    type = "structure",
    members = {
        approvalRuleTemplate = schema.new({
            id = id.from(_N, "UpdateApprovalRuleTemplateDescriptionOutput", "approvalRuleTemplate"),
            type = "structure",
            name = "approvalRuleTemplate",
            target_id = id.from(_N, "ApprovalRuleTemplate"),
            target = M.ApprovalRuleTemplate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateApprovalRuleTemplateNameInput = schema.new({
    id = id.from(_N, "UpdateApprovalRuleTemplateNameInput"),
    type = "structure",
    members = {
        oldApprovalRuleTemplateName = schema.new({
            id = id.from(_N, "UpdateApprovalRuleTemplateNameInput", "oldApprovalRuleTemplateName"),
            type = "string",
            name = "oldApprovalRuleTemplateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        newApprovalRuleTemplateName = schema.new({
            id = id.from(_N, "UpdateApprovalRuleTemplateNameInput", "newApprovalRuleTemplateName"),
            type = "string",
            name = "newApprovalRuleTemplateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateApprovalRuleTemplateNameOutput = schema.new({
    id = id.from(_N, "UpdateApprovalRuleTemplateNameOutput"),
    type = "structure",
    members = {
        approvalRuleTemplate = schema.new({
            id = id.from(_N, "UpdateApprovalRuleTemplateNameOutput", "approvalRuleTemplate"),
            type = "structure",
            name = "approvalRuleTemplate",
            target_id = id.from(_N, "ApprovalRuleTemplate"),
            target = M.ApprovalRuleTemplate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CommentNotCreatedByCallerException = schema.new({
    id = id.from(_N, "CommentNotCreatedByCallerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CommentNotCreatedByCallerException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateCommentInput = schema.new({
    id = id.from(_N, "UpdateCommentInput"),
    type = "structure",
    members = {
        commentId = schema.new({
            id = id.from(_N, "UpdateCommentInput", "commentId"),
            type = "string",
            name = "commentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        content = schema.new({
            id = id.from(_N, "UpdateCommentInput", "content"),
            type = "string",
            name = "content",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateCommentOutput = schema.new({
    id = id.from(_N, "UpdateCommentOutput"),
    type = "structure",
    members = {
        comment = schema.new({
            id = id.from(_N, "UpdateCommentOutput", "comment"),
            type = "structure",
            name = "comment",
            target_id = id.from(_N, "Comment"),
            target = M.Comment,
        }),
    },
})

M.UpdateDefaultBranchInput = schema.new({
    id = id.from(_N, "UpdateDefaultBranchInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "UpdateDefaultBranchInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        defaultBranchName = schema.new({
            id = id.from(_N, "UpdateDefaultBranchInput", "defaultBranchName"),
            type = "string",
            name = "defaultBranchName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateDefaultBranchOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.UpdatePullRequestApprovalRuleContentInput = schema.new({
    id = id.from(_N, "UpdatePullRequestApprovalRuleContentInput"),
    type = "structure",
    members = {
        pullRequestId = schema.new({
            id = id.from(_N, "UpdatePullRequestApprovalRuleContentInput", "pullRequestId"),
            type = "string",
            name = "pullRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        approvalRuleName = schema.new({
            id = id.from(_N, "UpdatePullRequestApprovalRuleContentInput", "approvalRuleName"),
            type = "string",
            name = "approvalRuleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        existingRuleContentSha256 = schema.new({
            id = id.from(_N, "UpdatePullRequestApprovalRuleContentInput", "existingRuleContentSha256"),
            type = "string",
            name = "existingRuleContentSha256",
            target_id = prelude.String.id,
        }),
        newRuleContent = schema.new({
            id = id.from(_N, "UpdatePullRequestApprovalRuleContentInput", "newRuleContent"),
            type = "string",
            name = "newRuleContent",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdatePullRequestApprovalRuleContentOutput = schema.new({
    id = id.from(_N, "UpdatePullRequestApprovalRuleContentOutput"),
    type = "structure",
    members = {
        approvalRule = schema.new({
            id = id.from(_N, "UpdatePullRequestApprovalRuleContentOutput", "approvalRule"),
            type = "structure",
            name = "approvalRule",
            target_id = id.from(_N, "ApprovalRule"),
            target = M.ApprovalRule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InvalidApprovalStateException = schema.new({
    id = id.from(_N, "InvalidApprovalStateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidApprovalStateException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.MaximumNumberOfApprovalsExceededException = schema.new({
    id = id.from(_N, "MaximumNumberOfApprovalsExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MaximumNumberOfApprovalsExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PullRequestCannotBeApprovedByAuthorException = schema.new({
    id = id.from(_N, "PullRequestCannotBeApprovedByAuthorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "PullRequestCannotBeApprovedByAuthorException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdatePullRequestApprovalStateInput = schema.new({
    id = id.from(_N, "UpdatePullRequestApprovalStateInput"),
    type = "structure",
    members = {
        pullRequestId = schema.new({
            id = id.from(_N, "UpdatePullRequestApprovalStateInput", "pullRequestId"),
            type = "string",
            name = "pullRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        revisionId = schema.new({
            id = id.from(_N, "UpdatePullRequestApprovalStateInput", "revisionId"),
            type = "string",
            name = "revisionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        approvalState = schema.new({
            id = id.from(_N, "UpdatePullRequestApprovalStateInput", "approvalState"),
            type = "string",
            name = "approvalState",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdatePullRequestApprovalStateOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.UpdatePullRequestDescriptionInput = schema.new({
    id = id.from(_N, "UpdatePullRequestDescriptionInput"),
    type = "structure",
    members = {
        pullRequestId = schema.new({
            id = id.from(_N, "UpdatePullRequestDescriptionInput", "pullRequestId"),
            type = "string",
            name = "pullRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdatePullRequestDescriptionInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdatePullRequestDescriptionOutput = schema.new({
    id = id.from(_N, "UpdatePullRequestDescriptionOutput"),
    type = "structure",
    members = {
        pullRequest = schema.new({
            id = id.from(_N, "UpdatePullRequestDescriptionOutput", "pullRequest"),
            type = "structure",
            name = "pullRequest",
            target_id = id.from(_N, "PullRequest"),
            target = M.PullRequest,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InvalidPullRequestStatusUpdateException = schema.new({
    id = id.from(_N, "InvalidPullRequestStatusUpdateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidPullRequestStatusUpdateException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PullRequestStatusRequiredException = schema.new({
    id = id.from(_N, "PullRequestStatusRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "PullRequestStatusRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdatePullRequestStatusInput = schema.new({
    id = id.from(_N, "UpdatePullRequestStatusInput"),
    type = "structure",
    members = {
        pullRequestId = schema.new({
            id = id.from(_N, "UpdatePullRequestStatusInput", "pullRequestId"),
            type = "string",
            name = "pullRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        pullRequestStatus = schema.new({
            id = id.from(_N, "UpdatePullRequestStatusInput", "pullRequestStatus"),
            type = "string",
            name = "pullRequestStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdatePullRequestStatusOutput = schema.new({
    id = id.from(_N, "UpdatePullRequestStatusOutput"),
    type = "structure",
    members = {
        pullRequest = schema.new({
            id = id.from(_N, "UpdatePullRequestStatusOutput", "pullRequest"),
            type = "structure",
            name = "pullRequest",
            target_id = id.from(_N, "PullRequest"),
            target = M.PullRequest,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdatePullRequestTitleInput = schema.new({
    id = id.from(_N, "UpdatePullRequestTitleInput"),
    type = "structure",
    members = {
        pullRequestId = schema.new({
            id = id.from(_N, "UpdatePullRequestTitleInput", "pullRequestId"),
            type = "string",
            name = "pullRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        title = schema.new({
            id = id.from(_N, "UpdatePullRequestTitleInput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdatePullRequestTitleOutput = schema.new({
    id = id.from(_N, "UpdatePullRequestTitleOutput"),
    type = "structure",
    members = {
        pullRequest = schema.new({
            id = id.from(_N, "UpdatePullRequestTitleOutput", "pullRequest"),
            type = "structure",
            name = "pullRequest",
            target_id = id.from(_N, "PullRequest"),
            target = M.PullRequest,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRepositoryDescriptionInput = schema.new({
    id = id.from(_N, "UpdateRepositoryDescriptionInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "UpdateRepositoryDescriptionInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        repositoryDescription = schema.new({
            id = id.from(_N, "UpdateRepositoryDescriptionInput", "repositoryDescription"),
            type = "string",
            name = "repositoryDescription",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateRepositoryDescriptionOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.EncryptionKeyRequiredException = schema.new({
    id = id.from(_N, "EncryptionKeyRequiredException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "EncryptionKeyRequiredException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateRepositoryEncryptionKeyInput = schema.new({
    id = id.from(_N, "UpdateRepositoryEncryptionKeyInput"),
    type = "structure",
    members = {
        repositoryName = schema.new({
            id = id.from(_N, "UpdateRepositoryEncryptionKeyInput", "repositoryName"),
            type = "string",
            name = "repositoryName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "UpdateRepositoryEncryptionKeyInput", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRepositoryEncryptionKeyOutput = schema.new({
    id = id.from(_N, "UpdateRepositoryEncryptionKeyOutput"),
    type = "structure",
    members = {
        repositoryId = schema.new({
            id = id.from(_N, "UpdateRepositoryEncryptionKeyOutput", "repositoryId"),
            type = "string",
            name = "repositoryId",
            target_id = prelude.String.id,
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "UpdateRepositoryEncryptionKeyOutput", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
        originalKmsKeyId = schema.new({
            id = id.from(_N, "UpdateRepositoryEncryptionKeyOutput", "originalKmsKeyId"),
            type = "string",
            name = "originalKmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateRepositoryNameInput = schema.new({
    id = id.from(_N, "UpdateRepositoryNameInput"),
    type = "structure",
    members = {
        oldName = schema.new({
            id = id.from(_N, "UpdateRepositoryNameInput", "oldName"),
            type = "string",
            name = "oldName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        newName = schema.new({
            id = id.from(_N, "UpdateRepositoryNameInput", "newName"),
            type = "string",
            name = "newName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRepositoryNameOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

-- Fix forward references for recursive schemas
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

return M
