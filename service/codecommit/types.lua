local M = {}

M.ActorDoesNotExistException = {
    type = "structure",
    id = "ActorDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApprovalState = {
    APPROVE = "APPROVE",
    REVOKE = "REVOKE",
}

M.Approval = {
    type = "structure",
    id = "Approval",
    members = {
        userArn = {
            type = "string",
        },
        approvalState = {
            type = "string",
        },
    },
}

M.OriginApprovalRuleTemplate = {
    type = "structure",
    id = "OriginApprovalRuleTemplate",
    members = {
        approvalRuleTemplateId = {
            type = "string",
        },
        approvalRuleTemplateName = {
            type = "string",
        },
    },
}

M.ApprovalRule = {
    type = "structure",
    id = "ApprovalRule",
    members = {
        approvalRuleId = {
            type = "string",
        },
        approvalRuleName = {
            type = "string",
        },
        approvalRuleContent = {
            type = "string",
        },
        ruleContentSha256 = {
            type = "string",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedUser = {
            type = "string",
        },
        originApprovalRuleTemplate = M.OriginApprovalRuleTemplate,
    },
}

M.ApprovalRuleContentRequiredException = {
    type = "structure",
    id = "ApprovalRuleContentRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApprovalRuleDoesNotExistException = {
    type = "structure",
    id = "ApprovalRuleDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApprovalRuleEventMetadata = {
    type = "structure",
    id = "ApprovalRuleEventMetadata",
    members = {
        approvalRuleName = {
            type = "string",
        },
        approvalRuleId = {
            type = "string",
        },
        approvalRuleContent = {
            type = "string",
        },
    },
}

M.ApprovalRuleNameAlreadyExistsException = {
    type = "structure",
    id = "ApprovalRuleNameAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApprovalRuleNameRequiredException = {
    type = "structure",
    id = "ApprovalRuleNameRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OverrideStatus = {
    OVERRIDE = "OVERRIDE",
    REVOKE = "REVOKE",
}

M.ApprovalRuleOverriddenEventMetadata = {
    type = "structure",
    id = "ApprovalRuleOverriddenEventMetadata",
    members = {
        revisionId = {
            type = "string",
        },
        overrideStatus = {
            type = "string",
        },
    },
}

M.ApprovalRuleTemplate = {
    type = "structure",
    id = "ApprovalRuleTemplate",
    members = {
        approvalRuleTemplateId = {
            type = "string",
        },
        approvalRuleTemplateName = {
            type = "string",
        },
        approvalRuleTemplateDescription = {
            type = "string",
        },
        approvalRuleTemplateContent = {
            type = "string",
        },
        ruleContentSha256 = {
            type = "string",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedUser = {
            type = "string",
        },
    },
}

M.ApprovalRuleTemplateContentRequiredException = {
    type = "structure",
    id = "ApprovalRuleTemplateContentRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApprovalRuleTemplateDoesNotExistException = {
    type = "structure",
    id = "ApprovalRuleTemplateDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApprovalRuleTemplateInUseException = {
    type = "structure",
    id = "ApprovalRuleTemplateInUseException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApprovalRuleTemplateNameAlreadyExistsException = {
    type = "structure",
    id = "ApprovalRuleTemplateNameAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApprovalRuleTemplateNameRequiredException = {
    type = "structure",
    id = "ApprovalRuleTemplateNameRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApprovalStateChangedEventMetadata = {
    type = "structure",
    id = "ApprovalStateChangedEventMetadata",
    members = {
        revisionId = {
            type = "string",
        },
        approvalStatus = {
            type = "string",
        },
    },
}

M.ApprovalStateRequiredException = {
    type = "structure",
    id = "ApprovalStateRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AssociateApprovalRuleTemplateWithRepositoryInput = {
    type = "structure",
    id = "AssociateApprovalRuleTemplateWithRepositoryInput",
    members = {
        approvalRuleTemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateApprovalRuleTemplateWithRepositoryOutput = {
    type = "structure",
    id = "AssociateApprovalRuleTemplateWithRepositoryOutput",
}

M.EncryptionIntegrityChecksFailedException = {
    type = "structure",
    id = "EncryptionIntegrityChecksFailedException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EncryptionKeyAccessDeniedException = {
    type = "structure",
    id = "EncryptionKeyAccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EncryptionKeyDisabledException = {
    type = "structure",
    id = "EncryptionKeyDisabledException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EncryptionKeyNotFoundException = {
    type = "structure",
    id = "EncryptionKeyNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EncryptionKeyUnavailableException = {
    type = "structure",
    id = "EncryptionKeyUnavailableException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidApprovalRuleTemplateNameException = {
    type = "structure",
    id = "InvalidApprovalRuleTemplateNameException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRepositoryNameException = {
    type = "structure",
    id = "InvalidRepositoryNameException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaximumRuleTemplatesAssociatedWithRepositoryException = {
    type = "structure",
    id = "MaximumRuleTemplatesAssociatedWithRepositoryException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RepositoryDoesNotExistException = {
    type = "structure",
    id = "RepositoryDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RepositoryNameRequiredException = {
    type = "structure",
    id = "RepositoryNameRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthorDoesNotExistException = {
    type = "structure",
    id = "AuthorDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchAssociateApprovalRuleTemplateWithRepositoriesInput = {
    type = "structure",
    id = "BatchAssociateApprovalRuleTemplateWithRepositoriesInput",
    members = {
        approvalRuleTemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchAssociateApprovalRuleTemplateWithRepositoriesError = {
    type = "structure",
    id = "BatchAssociateApprovalRuleTemplateWithRepositoriesError",
    members = {
        repositoryName = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.BatchAssociateApprovalRuleTemplateWithRepositoriesOutput = {
    type = "structure",
    id = "BatchAssociateApprovalRuleTemplateWithRepositoriesOutput",
    members = {
        associatedRepositoryNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.BatchAssociateApprovalRuleTemplateWithRepositoriesError,
            traits = {
                required = true,
            },
        },
    },
}

M.MaximumRepositoryNamesExceededException = {
    type = "structure",
    id = "MaximumRepositoryNamesExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RepositoryNamesRequiredException = {
    type = "structure",
    id = "RepositoryNamesRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConflictDetailLevelTypeEnum = {
    FILE_LEVEL = "FILE_LEVEL",
    LINE_LEVEL = "LINE_LEVEL",
}

M.ConflictResolutionStrategyTypeEnum = {
    NONE = "NONE",
    ACCEPT_SOURCE = "ACCEPT_SOURCE",
    ACCEPT_DESTINATION = "ACCEPT_DESTINATION",
    AUTOMERGE = "AUTOMERGE",
}

M.MergeOptionTypeEnum = {
    FAST_FORWARD_MERGE = "FAST_FORWARD_MERGE",
    SQUASH_MERGE = "SQUASH_MERGE",
    THREE_WAY_MERGE = "THREE_WAY_MERGE",
}

M.BatchDescribeMergeConflictsInput = {
    type = "structure",
    id = "BatchDescribeMergeConflictsInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationCommitSpecifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceCommitSpecifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mergeOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxMergeHunks = {
            type = "integer",
        },
        maxConflictFiles = {
            type = "integer",
        },
        filePaths = {
            type = "list",
            member = { type = "string" },
        },
        conflictDetailLevel = {
            type = "string",
        },
        conflictResolutionStrategy = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.FileModeTypeEnum = {
    EXECUTABLE = "EXECUTABLE",
    NORMAL = "NORMAL",
    SYMLINK = "SYMLINK",
}

M.FileModes = {
    type = "structure",
    id = "FileModes",
    members = {
        source = {
            type = "string",
        },
        destination = {
            type = "string",
        },
        base = {
            type = "string",
        },
    },
}

M.FileSizes = {
    type = "structure",
    id = "FileSizes",
    members = {
        source = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        destination = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        base = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.IsBinaryFile = {
    type = "structure",
    id = "IsBinaryFile",
    members = {
        source = {
            type = "boolean",
        },
        destination = {
            type = "boolean",
        },
        base = {
            type = "boolean",
        },
    },
}

M.ChangeTypeEnum = {
    ADDED = "A",
    MODIFIED = "M",
    DELETED = "D",
}

M.MergeOperations = {
    type = "structure",
    id = "MergeOperations",
    members = {
        source = {
            type = "string",
        },
        destination = {
            type = "string",
        },
    },
}

M.ObjectTypeEnum = {
    FILE = "FILE",
    DIRECTORY = "DIRECTORY",
    GIT_LINK = "GIT_LINK",
    SYMBOLIC_LINK = "SYMBOLIC_LINK",
}

M.ObjectTypes = {
    type = "structure",
    id = "ObjectTypes",
    members = {
        source = {
            type = "string",
        },
        destination = {
            type = "string",
        },
        base = {
            type = "string",
        },
    },
}

M.ConflictMetadata = {
    type = "structure",
    id = "ConflictMetadata",
    members = {
        filePath = {
            type = "string",
        },
        fileSizes = M.FileSizes,
        fileModes = M.FileModes,
        objectTypes = M.ObjectTypes,
        numberOfConflicts = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        isBinaryFile = M.IsBinaryFile,
        contentConflict = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        fileModeConflict = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        objectTypeConflict = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        mergeOperations = M.MergeOperations,
    },
}

M.MergeHunkDetail = {
    type = "structure",
    id = "MergeHunkDetail",
    members = {
        startLine = {
            type = "integer",
        },
        endLine = {
            type = "integer",
        },
        hunkContent = {
            type = "string",
        },
    },
}

M.MergeHunk = {
    type = "structure",
    id = "MergeHunk",
    members = {
        isConflict = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        source = M.MergeHunkDetail,
        destination = M.MergeHunkDetail,
        base = M.MergeHunkDetail,
    },
}

M.Conflict = {
    type = "structure",
    id = "Conflict",
    members = {
        conflictMetadata = M.ConflictMetadata,
        mergeHunks = {
            type = "list",
            member = M.MergeHunk,
        },
    },
}

M.BatchDescribeMergeConflictsError = {
    type = "structure",
    id = "BatchDescribeMergeConflictsError",
    members = {
        filePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exceptionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDescribeMergeConflictsOutput = {
    type = "structure",
    id = "BatchDescribeMergeConflictsOutput",
    members = {
        conflicts = {
            type = "list",
            member = M.Conflict,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        errors = {
            type = "list",
            member = M.BatchDescribeMergeConflictsError,
        },
        destinationCommitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceCommitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        baseCommitId = {
            type = "string",
        },
    },
}

M.CommitDoesNotExistException = {
    type = "structure",
    id = "CommitDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CommitRequiredException = {
    type = "structure",
    id = "CommitRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidCommitException = {
    type = "structure",
    id = "InvalidCommitException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidConflictDetailLevelException = {
    type = "structure",
    id = "InvalidConflictDetailLevelException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidConflictResolutionStrategyException = {
    type = "structure",
    id = "InvalidConflictResolutionStrategyException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidContinuationTokenException = {
    type = "structure",
    id = "InvalidContinuationTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidMaxConflictFilesException = {
    type = "structure",
    id = "InvalidMaxConflictFilesException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidMaxMergeHunksException = {
    type = "structure",
    id = "InvalidMaxMergeHunksException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidMergeOptionException = {
    type = "structure",
    id = "InvalidMergeOptionException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaximumFileContentToLoadExceededException = {
    type = "structure",
    id = "MaximumFileContentToLoadExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaximumItemsToCompareExceededException = {
    type = "structure",
    id = "MaximumItemsToCompareExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MergeOptionRequiredException = {
    type = "structure",
    id = "MergeOptionRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TipsDivergenceExceededException = {
    type = "structure",
    id = "TipsDivergenceExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchDisassociateApprovalRuleTemplateFromRepositoriesInput = {
    type = "structure",
    id = "BatchDisassociateApprovalRuleTemplateFromRepositoriesInput",
    members = {
        approvalRuleTemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDisassociateApprovalRuleTemplateFromRepositoriesError = {
    type = "structure",
    id = "BatchDisassociateApprovalRuleTemplateFromRepositoriesError",
    members = {
        repositoryName = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput = {
    type = "structure",
    id = "BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput",
    members = {
        disassociatedRepositoryNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.BatchDisassociateApprovalRuleTemplateFromRepositoriesError,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetCommitsInput = {
    type = "structure",
    id = "BatchGetCommitsInput",
    members = {
        commitIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UserInfo = {
    type = "structure",
    id = "UserInfo",
    members = {
        name = {
            type = "string",
        },
        email = {
            type = "string",
        },
        date = {
            type = "string",
        },
    },
}

M.Commit = {
    type = "structure",
    id = "Commit",
    members = {
        commitId = {
            type = "string",
        },
        treeId = {
            type = "string",
        },
        parents = {
            type = "list",
            member = { type = "string" },
        },
        message = {
            type = "string",
        },
        author = M.UserInfo,
        committer = M.UserInfo,
        additionalData = {
            type = "string",
        },
    },
}

M.BatchGetCommitsError = {
    type = "structure",
    id = "BatchGetCommitsError",
    members = {
        commitId = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.BatchGetCommitsOutput = {
    type = "structure",
    id = "BatchGetCommitsOutput",
    members = {
        commits = {
            type = "list",
            member = M.Commit,
        },
        errors = {
            type = "list",
            member = M.BatchGetCommitsError,
        },
    },
}

M.CommitIdsLimitExceededException = {
    type = "structure",
    id = "CommitIdsLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CommitIdsListRequiredException = {
    type = "structure",
    id = "CommitIdsListRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchGetRepositoriesInput = {
    type = "structure",
    id = "BatchGetRepositoriesInput",
    members = {
        repositoryNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetRepositoriesErrorCodeEnum = {
    ENCRYPTION_INTEGRITY_CHECKS_FAILED_EXCEPTION = "EncryptionIntegrityChecksFailedException",
    ENCRYPTION_KEY_ACCESS_DENIED_EXCEPTION = "EncryptionKeyAccessDeniedException",
    ENCRYPTION_KEY_DISABLED_EXCEPTION = "EncryptionKeyDisabledException",
    ENCRYPTION_KEY_NOT_FOUND_EXCEPTION = "EncryptionKeyNotFoundException",
    ENCRYPTION_KEY_UNAVAILABLE_EXCEPTION = "EncryptionKeyUnavailableException",
    REPOSITORY_DOES_NOT_EXIST_EXCEPTION = "RepositoryDoesNotExistException",
}

M.BatchGetRepositoriesError = {
    type = "structure",
    id = "BatchGetRepositoriesError",
    members = {
        repositoryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.RepositoryMetadata = {
    type = "structure",
    id = "RepositoryMetadata",
    members = {
        accountId = {
            type = "string",
        },
        repositoryId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
        repositoryDescription = {
            type = "string",
        },
        defaultBranch = {
            type = "string",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
        creationDate = {
            type = "timestamp",
        },
        cloneUrlHttp = {
            type = "string",
        },
        cloneUrlSsh = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
    },
}

M.BatchGetRepositoriesOutput = {
    type = "structure",
    id = "BatchGetRepositoriesOutput",
    members = {
        repositories = {
            type = "list",
            member = M.RepositoryMetadata,
        },
        repositoriesNotFound = {
            type = "list",
            member = { type = "string" },
        },
        errors = {
            type = "list",
            member = M.BatchGetRepositoriesError,
        },
    },
}

M.BeforeCommitIdAndAfterCommitIdAreSameException = {
    type = "structure",
    id = "BeforeCommitIdAndAfterCommitIdAreSameException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BlobIdDoesNotExistException = {
    type = "structure",
    id = "BlobIdDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BlobIdRequiredException = {
    type = "structure",
    id = "BlobIdRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BlobMetadata = {
    type = "structure",
    id = "BlobMetadata",
    members = {
        blobId = {
            type = "string",
        },
        path = {
            type = "string",
        },
        mode = {
            type = "string",
        },
    },
}

M.BranchDoesNotExistException = {
    type = "structure",
    id = "BranchDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BranchInfo = {
    type = "structure",
    id = "BranchInfo",
    members = {
        branchName = {
            type = "string",
        },
        commitId = {
            type = "string",
        },
    },
}

M.BranchNameExistsException = {
    type = "structure",
    id = "BranchNameExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BranchNameIsTagNameException = {
    type = "structure",
    id = "BranchNameIsTagNameException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BranchNameRequiredException = {
    type = "structure",
    id = "BranchNameRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CannotDeleteApprovalRuleFromTemplateException = {
    type = "structure",
    id = "CannotDeleteApprovalRuleFromTemplateException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CannotModifyApprovalRuleFromTemplateException = {
    type = "structure",
    id = "CannotModifyApprovalRuleFromTemplateException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClientRequestTokenRequiredException = {
    type = "structure",
    id = "ClientRequestTokenRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateApprovalRuleTemplateInput = {
    type = "structure",
    id = "CreateApprovalRuleTemplateInput",
    members = {
        approvalRuleTemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        approvalRuleTemplateContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
        approvalRuleTemplateDescription = {
            type = "string",
        },
    },
}

M.CreateApprovalRuleTemplateOutput = {
    type = "structure",
    id = "CreateApprovalRuleTemplateOutput",
    members = {
        approvalRuleTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApprovalRuleTemplate }),
    },
}

M.InvalidApprovalRuleTemplateContentException = {
    type = "structure",
    id = "InvalidApprovalRuleTemplateContentException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidApprovalRuleTemplateDescriptionException = {
    type = "structure",
    id = "InvalidApprovalRuleTemplateDescriptionException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NumberOfRuleTemplatesExceededException = {
    type = "structure",
    id = "NumberOfRuleTemplatesExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CommitIdRequiredException = {
    type = "structure",
    id = "CommitIdRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateBranchInput = {
    type = "structure",
    id = "CreateBranchInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        branchName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        commitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateBranchOutput = {
    type = "structure",
    id = "CreateBranchOutput",
}

M.InvalidBranchNameException = {
    type = "structure",
    id = "InvalidBranchNameException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidCommitIdException = {
    type = "structure",
    id = "InvalidCommitIdException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CommitMessageLengthExceededException = {
    type = "structure",
    id = "CommitMessageLengthExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteFileEntry = {
    type = "structure",
    id = "DeleteFileEntry",
    members = {
        filePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SourceFileSpecifier = {
    type = "structure",
    id = "SourceFileSpecifier",
    members = {
        filePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        isMove = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PutFileEntry = {
    type = "structure",
    id = "PutFileEntry",
    members = {
        filePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileMode = {
            type = "string",
        },
        fileContent = {
            type = "blob",
        },
        sourceFile = M.SourceFileSpecifier,
    },
}

M.SetFileModeEntry = {
    type = "structure",
    id = "SetFileModeEntry",
    members = {
        filePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCommitInput = {
    type = "structure",
    id = "CreateCommitInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        branchName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parentCommitId = {
            type = "string",
        },
        authorName = {
            type = "string",
        },
        email = {
            type = "string",
        },
        commitMessage = {
            type = "string",
        },
        keepEmptyFolders = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        putFiles = {
            type = "list",
            member = M.PutFileEntry,
        },
        deleteFiles = {
            type = "list",
            member = M.DeleteFileEntry,
        },
        setFileModes = {
            type = "list",
            member = M.SetFileModeEntry,
        },
    },
}

M.FileMetadata = {
    type = "structure",
    id = "FileMetadata",
    members = {
        absolutePath = {
            type = "string",
        },
        blobId = {
            type = "string",
        },
        fileMode = {
            type = "string",
        },
    },
}

M.CreateCommitOutput = {
    type = "structure",
    id = "CreateCommitOutput",
    members = {
        commitId = {
            type = "string",
        },
        treeId = {
            type = "string",
        },
        filesAdded = {
            type = "list",
            member = M.FileMetadata,
        },
        filesUpdated = {
            type = "list",
            member = M.FileMetadata,
        },
        filesDeleted = {
            type = "list",
            member = M.FileMetadata,
        },
    },
}

M.DirectoryNameConflictsWithFileNameException = {
    type = "structure",
    id = "DirectoryNameConflictsWithFileNameException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FileContentAndSourceFileSpecifiedException = {
    type = "structure",
    id = "FileContentAndSourceFileSpecifiedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FileContentSizeLimitExceededException = {
    type = "structure",
    id = "FileContentSizeLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FileDoesNotExistException = {
    type = "structure",
    id = "FileDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FileEntryRequiredException = {
    type = "structure",
    id = "FileEntryRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FileModeRequiredException = {
    type = "structure",
    id = "FileModeRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FileNameConflictsWithDirectoryNameException = {
    type = "structure",
    id = "FileNameConflictsWithDirectoryNameException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FilePathConflictsWithSubmodulePathException = {
    type = "structure",
    id = "FilePathConflictsWithSubmodulePathException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FolderContentSizeLimitExceededException = {
    type = "structure",
    id = "FolderContentSizeLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDeletionParameterException = {
    type = "structure",
    id = "InvalidDeletionParameterException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidEmailException = {
    type = "structure",
    id = "InvalidEmailException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidFileModeException = {
    type = "structure",
    id = "InvalidFileModeException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParentCommitIdException = {
    type = "structure",
    id = "InvalidParentCommitIdException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidPathException = {
    type = "structure",
    id = "InvalidPathException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaximumFileEntriesExceededException = {
    type = "structure",
    id = "MaximumFileEntriesExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NameLengthExceededException = {
    type = "structure",
    id = "NameLengthExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoChangeException = {
    type = "structure",
    id = "NoChangeException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ParentCommitDoesNotExistException = {
    type = "structure",
    id = "ParentCommitDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ParentCommitIdOutdatedException = {
    type = "structure",
    id = "ParentCommitIdOutdatedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ParentCommitIdRequiredException = {
    type = "structure",
    id = "ParentCommitIdRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PathRequiredException = {
    type = "structure",
    id = "PathRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutFileEntryConflictException = {
    type = "structure",
    id = "PutFileEntryConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RestrictedSourceFileException = {
    type = "structure",
    id = "RestrictedSourceFileException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SamePathRequestException = {
    type = "structure",
    id = "SamePathRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SourceFileOrContentRequiredException = {
    type = "structure",
    id = "SourceFileOrContentRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Target = {
    type = "structure",
    id = "Target",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceReference = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationReference = {
            type = "string",
        },
    },
}

M.CreatePullRequestInput = {
    type = "structure",
    id = "CreatePullRequestInput",
    members = {
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        targets = {
            type = "list",
            member = M.Target,
            traits = {
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.PullRequestStatusEnum = {
    OPEN = "OPEN",
    CLOSED = "CLOSED",
}

M.MergeMetadata = {
    type = "structure",
    id = "MergeMetadata",
    members = {
        isMerged = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        mergedBy = {
            type = "string",
        },
        mergeCommitId = {
            type = "string",
        },
        mergeOption = {
            type = "string",
        },
    },
}

M.PullRequestTarget = {
    type = "structure",
    id = "PullRequestTarget",
    members = {
        repositoryName = {
            type = "string",
        },
        sourceReference = {
            type = "string",
        },
        destinationReference = {
            type = "string",
        },
        destinationCommit = {
            type = "string",
        },
        sourceCommit = {
            type = "string",
        },
        mergeBase = {
            type = "string",
        },
        mergeMetadata = M.MergeMetadata,
    },
}

M.PullRequest = {
    type = "structure",
    id = "PullRequest",
    members = {
        pullRequestId = {
            type = "string",
        },
        title = {
            type = "string",
        },
        description = {
            type = "string",
        },
        lastActivityDate = {
            type = "timestamp",
        },
        creationDate = {
            type = "timestamp",
        },
        pullRequestStatus = {
            type = "string",
        },
        authorArn = {
            type = "string",
        },
        pullRequestTargets = {
            type = "list",
            member = M.PullRequestTarget,
        },
        clientRequestToken = {
            type = "string",
        },
        revisionId = {
            type = "string",
        },
        approvalRules = {
            type = "list",
            member = M.ApprovalRule,
        },
    },
}

M.CreatePullRequestOutput = {
    type = "structure",
    id = "CreatePullRequestOutput",
    members = {
        pullRequest = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PullRequest }),
    },
}

M.IdempotencyParameterMismatchException = {
    type = "structure",
    id = "IdempotencyParameterMismatchException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidClientRequestTokenException = {
    type = "structure",
    id = "InvalidClientRequestTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDescriptionException = {
    type = "structure",
    id = "InvalidDescriptionException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidReferenceNameException = {
    type = "structure",
    id = "InvalidReferenceNameException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTargetException = {
    type = "structure",
    id = "InvalidTargetException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTargetsException = {
    type = "structure",
    id = "InvalidTargetsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTitleException = {
    type = "structure",
    id = "InvalidTitleException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaximumOpenPullRequestsExceededException = {
    type = "structure",
    id = "MaximumOpenPullRequestsExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MultipleRepositoriesInPullRequestException = {
    type = "structure",
    id = "MultipleRepositoriesInPullRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReferenceDoesNotExistException = {
    type = "structure",
    id = "ReferenceDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReferenceNameRequiredException = {
    type = "structure",
    id = "ReferenceNameRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReferenceTypeNotSupportedException = {
    type = "structure",
    id = "ReferenceTypeNotSupportedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SourceAndDestinationAreSameException = {
    type = "structure",
    id = "SourceAndDestinationAreSameException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TargetRequiredException = {
    type = "structure",
    id = "TargetRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TargetsRequiredException = {
    type = "structure",
    id = "TargetsRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TitleRequiredException = {
    type = "structure",
    id = "TitleRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreatePullRequestApprovalRuleInput = {
    type = "structure",
    id = "CreatePullRequestApprovalRuleInput",
    members = {
        pullRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        approvalRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        approvalRuleContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePullRequestApprovalRuleOutput = {
    type = "structure",
    id = "CreatePullRequestApprovalRuleOutput",
    members = {
        approvalRule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApprovalRule }),
    },
}

M.InvalidApprovalRuleContentException = {
    type = "structure",
    id = "InvalidApprovalRuleContentException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidApprovalRuleNameException = {
    type = "structure",
    id = "InvalidApprovalRuleNameException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidPullRequestIdException = {
    type = "structure",
    id = "InvalidPullRequestIdException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NumberOfRulesExceededException = {
    type = "structure",
    id = "NumberOfRulesExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PullRequestAlreadyClosedException = {
    type = "structure",
    id = "PullRequestAlreadyClosedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PullRequestDoesNotExistException = {
    type = "structure",
    id = "PullRequestDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PullRequestIdRequiredException = {
    type = "structure",
    id = "PullRequestIdRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateRepositoryInput = {
    type = "structure",
    id = "CreateRepositoryInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryDescription = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        kmsKeyId = {
            type = "string",
        },
    },
}

M.CreateRepositoryOutput = {
    type = "structure",
    id = "CreateRepositoryOutput",
    members = {
        repositoryMetadata = M.RepositoryMetadata,
    },
}

M.EncryptionKeyInvalidIdException = {
    type = "structure",
    id = "EncryptionKeyInvalidIdException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EncryptionKeyInvalidUsageException = {
    type = "structure",
    id = "EncryptionKeyInvalidUsageException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRepositoryDescriptionException = {
    type = "structure",
    id = "InvalidRepositoryDescriptionException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSystemTagUsageException = {
    type = "structure",
    id = "InvalidSystemTagUsageException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTagsMapException = {
    type = "structure",
    id = "InvalidTagsMapException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OperationNotAllowedException = {
    type = "structure",
    id = "OperationNotAllowedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RepositoryLimitExceededException = {
    type = "structure",
    id = "RepositoryLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RepositoryNameExistsException = {
    type = "structure",
    id = "RepositoryNameExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagPolicyException = {
    type = "structure",
    id = "TagPolicyException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConcurrentReferenceUpdateException = {
    type = "structure",
    id = "ConcurrentReferenceUpdateException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReplacementTypeEnum = {
    KEEP_BASE = "KEEP_BASE",
    KEEP_SOURCE = "KEEP_SOURCE",
    KEEP_DESTINATION = "KEEP_DESTINATION",
    USE_NEW_CONTENT = "USE_NEW_CONTENT",
}

M.ReplaceContentEntry = {
    type = "structure",
    id = "ReplaceContentEntry",
    members = {
        filePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        replacementType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = {
            type = "blob",
        },
        fileMode = {
            type = "string",
        },
    },
}

M.ConflictResolution = {
    type = "structure",
    id = "ConflictResolution",
    members = {
        replaceContents = {
            type = "list",
            member = M.ReplaceContentEntry,
        },
        deleteFiles = {
            type = "list",
            member = M.DeleteFileEntry,
        },
        setFileModes = {
            type = "list",
            member = M.SetFileModeEntry,
        },
    },
}

M.CreateUnreferencedMergeCommitInput = {
    type = "structure",
    id = "CreateUnreferencedMergeCommitInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceCommitSpecifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationCommitSpecifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mergeOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
        conflictDetailLevel = {
            type = "string",
        },
        conflictResolutionStrategy = {
            type = "string",
        },
        authorName = {
            type = "string",
        },
        email = {
            type = "string",
        },
        commitMessage = {
            type = "string",
        },
        keepEmptyFolders = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        conflictResolution = M.ConflictResolution,
    },
}

M.CreateUnreferencedMergeCommitOutput = {
    type = "structure",
    id = "CreateUnreferencedMergeCommitOutput",
    members = {
        commitId = {
            type = "string",
        },
        treeId = {
            type = "string",
        },
    },
}

M.InvalidConflictResolutionException = {
    type = "structure",
    id = "InvalidConflictResolutionException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidReplacementContentException = {
    type = "structure",
    id = "InvalidReplacementContentException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidReplacementTypeException = {
    type = "structure",
    id = "InvalidReplacementTypeException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ManualMergeRequiredException = {
    type = "structure",
    id = "ManualMergeRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaximumConflictResolutionEntriesExceededException = {
    type = "structure",
    id = "MaximumConflictResolutionEntriesExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MultipleConflictResolutionEntriesException = {
    type = "structure",
    id = "MultipleConflictResolutionEntriesException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReplacementContentRequiredException = {
    type = "structure",
    id = "ReplacementContentRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReplacementTypeRequiredException = {
    type = "structure",
    id = "ReplacementTypeRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteApprovalRuleTemplateInput = {
    type = "structure",
    id = "DeleteApprovalRuleTemplateInput",
    members = {
        approvalRuleTemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteApprovalRuleTemplateOutput = {
    type = "structure",
    id = "DeleteApprovalRuleTemplateOutput",
    members = {
        approvalRuleTemplateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DefaultBranchCannotBeDeletedException = {
    type = "structure",
    id = "DefaultBranchCannotBeDeletedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteBranchInput = {
    type = "structure",
    id = "DeleteBranchInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        branchName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteBranchOutput = {
    type = "structure",
    id = "DeleteBranchOutput",
    members = {
        deletedBranch = M.BranchInfo,
    },
}

M.CommentDeletedException = {
    type = "structure",
    id = "CommentDeletedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CommentDoesNotExistException = {
    type = "structure",
    id = "CommentDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CommentIdRequiredException = {
    type = "structure",
    id = "CommentIdRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteCommentContentInput = {
    type = "structure",
    id = "DeleteCommentContentInput",
    members = {
        commentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Comment = {
    type = "structure",
    id = "Comment",
    members = {
        commentId = {
            type = "string",
        },
        content = {
            type = "string",
        },
        inReplyTo = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
        },
        lastModifiedDate = {
            type = "timestamp",
        },
        authorArn = {
            type = "string",
        },
        deleted = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        clientRequestToken = {
            type = "string",
        },
        callerReactions = {
            type = "list",
            member = { type = "string" },
        },
        reactionCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
    },
}

M.DeleteCommentContentOutput = {
    type = "structure",
    id = "DeleteCommentContentOutput",
    members = {
        comment = M.Comment,
    },
}

M.InvalidCommentIdException = {
    type = "structure",
    id = "InvalidCommentIdException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteFileInput = {
    type = "structure",
    id = "DeleteFileInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        branchName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parentCommitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        keepEmptyFolders = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        commitMessage = {
            type = "string",
        },
        name = {
            type = "string",
        },
        email = {
            type = "string",
        },
    },
}

M.DeleteFileOutput = {
    type = "structure",
    id = "DeleteFileOutput",
    members = {
        commitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        treeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePullRequestApprovalRuleInput = {
    type = "structure",
    id = "DeletePullRequestApprovalRuleInput",
    members = {
        pullRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        approvalRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePullRequestApprovalRuleOutput = {
    type = "structure",
    id = "DeletePullRequestApprovalRuleOutput",
    members = {
        approvalRuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRepositoryInput = {
    type = "structure",
    id = "DeleteRepositoryInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRepositoryOutput = {
    type = "structure",
    id = "DeleteRepositoryOutput",
    members = {
        repositoryId = {
            type = "string",
        },
    },
}

M.DescribeMergeConflictsInput = {
    type = "structure",
    id = "DescribeMergeConflictsInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationCommitSpecifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceCommitSpecifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mergeOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxMergeHunks = {
            type = "integer",
        },
        filePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        conflictDetailLevel = {
            type = "string",
        },
        conflictResolutionStrategy = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeMergeConflictsOutput = {
    type = "structure",
    id = "DescribeMergeConflictsOutput",
    members = {
        conflictMetadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConflictMetadata }),
        mergeHunks = {
            type = "list",
            member = M.MergeHunk,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        destinationCommitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceCommitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        baseCommitId = {
            type = "string",
        },
    },
}

M.PullRequestEventType = {
    PULL_REQUEST_CREATED = "PULL_REQUEST_CREATED",
    PULL_REQUEST_STATUS_CHANGED = "PULL_REQUEST_STATUS_CHANGED",
    PULL_REQUEST_SOURCE_REFERENCE_UPDATED = "PULL_REQUEST_SOURCE_REFERENCE_UPDATED",
    PULL_REQUEST_MERGE_STATE_CHANGED = "PULL_REQUEST_MERGE_STATE_CHANGED",
    PULL_REQUEST_APPROVAL_RULE_CREATED = "PULL_REQUEST_APPROVAL_RULE_CREATED",
    PULL_REQUEST_APPROVAL_RULE_UPDATED = "PULL_REQUEST_APPROVAL_RULE_UPDATED",
    PULL_REQUEST_APPROVAL_RULE_DELETED = "PULL_REQUEST_APPROVAL_RULE_DELETED",
    PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN = "PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN",
    PULL_REQUEST_APPROVAL_STATE_CHANGED = "PULL_REQUEST_APPROVAL_STATE_CHANGED",
}

M.DescribePullRequestEventsInput = {
    type = "structure",
    id = "DescribePullRequestEventsInput",
    members = {
        pullRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pullRequestEventType = {
            type = "string",
        },
        actorArn = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.PullRequestCreatedEventMetadata = {
    type = "structure",
    id = "PullRequestCreatedEventMetadata",
    members = {
        repositoryName = {
            type = "string",
        },
        sourceCommitId = {
            type = "string",
        },
        destinationCommitId = {
            type = "string",
        },
        mergeBase = {
            type = "string",
        },
    },
}

M.PullRequestMergedStateChangedEventMetadata = {
    type = "structure",
    id = "PullRequestMergedStateChangedEventMetadata",
    members = {
        repositoryName = {
            type = "string",
        },
        destinationReference = {
            type = "string",
        },
        mergeMetadata = M.MergeMetadata,
    },
}

M.PullRequestSourceReferenceUpdatedEventMetadata = {
    type = "structure",
    id = "PullRequestSourceReferenceUpdatedEventMetadata",
    members = {
        repositoryName = {
            type = "string",
        },
        beforeCommitId = {
            type = "string",
        },
        afterCommitId = {
            type = "string",
        },
        mergeBase = {
            type = "string",
        },
    },
}

M.PullRequestStatusChangedEventMetadata = {
    type = "structure",
    id = "PullRequestStatusChangedEventMetadata",
    members = {
        pullRequestStatus = {
            type = "string",
        },
    },
}

M.PullRequestEvent = {
    type = "structure",
    id = "PullRequestEvent",
    members = {
        pullRequestId = {
            type = "string",
        },
        eventDate = {
            type = "timestamp",
        },
        pullRequestEventType = {
            type = "string",
        },
        actorArn = {
            type = "string",
        },
        pullRequestCreatedEventMetadata = M.PullRequestCreatedEventMetadata,
        pullRequestStatusChangedEventMetadata = M.PullRequestStatusChangedEventMetadata,
        pullRequestSourceReferenceUpdatedEventMetadata = M.PullRequestSourceReferenceUpdatedEventMetadata,
        pullRequestMergedStateChangedEventMetadata = M.PullRequestMergedStateChangedEventMetadata,
        approvalRuleEventMetadata = M.ApprovalRuleEventMetadata,
        approvalStateChangedEventMetadata = M.ApprovalStateChangedEventMetadata,
        approvalRuleOverriddenEventMetadata = M.ApprovalRuleOverriddenEventMetadata,
    },
}

M.DescribePullRequestEventsOutput = {
    type = "structure",
    id = "DescribePullRequestEventsOutput",
    members = {
        pullRequestEvents = {
            type = "list",
            member = M.PullRequestEvent,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InvalidActorArnException = {
    type = "structure",
    id = "InvalidActorArnException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidMaxResultsException = {
    type = "structure",
    id = "InvalidMaxResultsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidPullRequestEventTypeException = {
    type = "structure",
    id = "InvalidPullRequestEventTypeException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DisassociateApprovalRuleTemplateFromRepositoryInput = {
    type = "structure",
    id = "DisassociateApprovalRuleTemplateFromRepositoryInput",
    members = {
        approvalRuleTemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateApprovalRuleTemplateFromRepositoryOutput = {
    type = "structure",
    id = "DisassociateApprovalRuleTemplateFromRepositoryOutput",
}

M.EvaluatePullRequestApprovalRulesInput = {
    type = "structure",
    id = "EvaluatePullRequestApprovalRulesInput",
    members = {
        pullRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Evaluation = {
    type = "structure",
    id = "Evaluation",
    members = {
        approved = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        overridden = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        approvalRulesSatisfied = {
            type = "list",
            member = { type = "string" },
        },
        approvalRulesNotSatisfied = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EvaluatePullRequestApprovalRulesOutput = {
    type = "structure",
    id = "EvaluatePullRequestApprovalRulesOutput",
    members = {
        evaluation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Evaluation }),
    },
}

M.InvalidRevisionIdException = {
    type = "structure",
    id = "InvalidRevisionIdException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RevisionIdRequiredException = {
    type = "structure",
    id = "RevisionIdRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RevisionNotCurrentException = {
    type = "structure",
    id = "RevisionNotCurrentException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetApprovalRuleTemplateInput = {
    type = "structure",
    id = "GetApprovalRuleTemplateInput",
    members = {
        approvalRuleTemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetApprovalRuleTemplateOutput = {
    type = "structure",
    id = "GetApprovalRuleTemplateOutput",
    members = {
        approvalRuleTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApprovalRuleTemplate }),
    },
}

M.FileTooLargeException = {
    type = "structure",
    id = "FileTooLargeException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetBlobInput = {
    type = "structure",
    id = "GetBlobInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetBlobOutput = {
    type = "structure",
    id = "GetBlobOutput",
    members = {
        content = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidBlobIdException = {
    type = "structure",
    id = "InvalidBlobIdException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetBranchInput = {
    type = "structure",
    id = "GetBranchInput",
    members = {
        repositoryName = {
            type = "string",
        },
        branchName = {
            type = "string",
        },
    },
}

M.GetBranchOutput = {
    type = "structure",
    id = "GetBranchOutput",
    members = {
        branch = M.BranchInfo,
    },
}

M.GetCommentInput = {
    type = "structure",
    id = "GetCommentInput",
    members = {
        commentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCommentOutput = {
    type = "structure",
    id = "GetCommentOutput",
    members = {
        comment = M.Comment,
    },
}

M.GetCommentReactionsInput = {
    type = "structure",
    id = "GetCommentReactionsInput",
    members = {
        commentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reactionUserArn = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ReactionValueFormats = {
    type = "structure",
    id = "ReactionValueFormats",
    members = {
        emoji = {
            type = "string",
        },
        shortCode = {
            type = "string",
        },
        unicode = {
            type = "string",
        },
    },
}

M.ReactionForComment = {
    type = "structure",
    id = "ReactionForComment",
    members = {
        reaction = M.ReactionValueFormats,
        reactionUsers = {
            type = "list",
            member = { type = "string" },
        },
        reactionsFromDeletedUsersCount = {
            type = "integer",
        },
    },
}

M.GetCommentReactionsOutput = {
    type = "structure",
    id = "GetCommentReactionsOutput",
    members = {
        reactionsForComment = {
            type = "list",
            member = M.ReactionForComment,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InvalidReactionUserArnException = {
    type = "structure",
    id = "InvalidReactionUserArnException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetCommentsForComparedCommitInput = {
    type = "structure",
    id = "GetCommentsForComparedCommitInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        beforeCommitId = {
            type = "string",
        },
        afterCommitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.RelativeFileVersionEnum = {
    BEFORE = "BEFORE",
    AFTER = "AFTER",
}

M.Location = {
    type = "structure",
    id = "Location",
    members = {
        filePath = {
            type = "string",
        },
        filePosition = {
            type = "long",
        },
        relativeFileVersion = {
            type = "string",
        },
    },
}

M.CommentsForComparedCommit = {
    type = "structure",
    id = "CommentsForComparedCommit",
    members = {
        repositoryName = {
            type = "string",
        },
        beforeCommitId = {
            type = "string",
        },
        afterCommitId = {
            type = "string",
        },
        beforeBlobId = {
            type = "string",
        },
        afterBlobId = {
            type = "string",
        },
        location = M.Location,
        comments = {
            type = "list",
            member = M.Comment,
        },
    },
}

M.GetCommentsForComparedCommitOutput = {
    type = "structure",
    id = "GetCommentsForComparedCommitOutput",
    members = {
        commentsForComparedCommitData = {
            type = "list",
            member = M.CommentsForComparedCommit,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetCommentsForPullRequestInput = {
    type = "structure",
    id = "GetCommentsForPullRequestInput",
    members = {
        pullRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryName = {
            type = "string",
        },
        beforeCommitId = {
            type = "string",
        },
        afterCommitId = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.CommentsForPullRequest = {
    type = "structure",
    id = "CommentsForPullRequest",
    members = {
        pullRequestId = {
            type = "string",
        },
        repositoryName = {
            type = "string",
        },
        beforeCommitId = {
            type = "string",
        },
        afterCommitId = {
            type = "string",
        },
        beforeBlobId = {
            type = "string",
        },
        afterBlobId = {
            type = "string",
        },
        location = M.Location,
        comments = {
            type = "list",
            member = M.Comment,
        },
    },
}

M.GetCommentsForPullRequestOutput = {
    type = "structure",
    id = "GetCommentsForPullRequestOutput",
    members = {
        commentsForPullRequestData = {
            type = "list",
            member = M.CommentsForPullRequest,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RepositoryNotAssociatedWithPullRequestException = {
    type = "structure",
    id = "RepositoryNotAssociatedWithPullRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CommitIdDoesNotExistException = {
    type = "structure",
    id = "CommitIdDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetCommitInput = {
    type = "structure",
    id = "GetCommitInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        commitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCommitOutput = {
    type = "structure",
    id = "GetCommitOutput",
    members = {
        commit = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Commit }),
    },
}

M.GetDifferencesInput = {
    type = "structure",
    id = "GetDifferencesInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        beforeCommitSpecifier = {
            type = "string",
        },
        afterCommitSpecifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        beforePath = {
            type = "string",
        },
        afterPath = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Difference = {
    type = "structure",
    id = "Difference",
    members = {
        beforeBlob = M.BlobMetadata,
        afterBlob = M.BlobMetadata,
        changeType = {
            type = "string",
        },
    },
}

M.GetDifferencesOutput = {
    type = "structure",
    id = "GetDifferencesOutput",
    members = {
        differences = {
            type = "list",
            member = M.Difference,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PathDoesNotExistException = {
    type = "structure",
    id = "PathDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetFileInput = {
    type = "structure",
    id = "GetFileInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        commitSpecifier = {
            type = "string",
        },
        filePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetFileOutput = {
    type = "structure",
    id = "GetFileOutput",
    members = {
        commitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileSize = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        fileContent = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.FolderDoesNotExistException = {
    type = "structure",
    id = "FolderDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetFolderInput = {
    type = "structure",
    id = "GetFolderInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        commitSpecifier = {
            type = "string",
        },
        folderPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.File = {
    type = "structure",
    id = "File",
    members = {
        blobId = {
            type = "string",
        },
        absolutePath = {
            type = "string",
        },
        relativePath = {
            type = "string",
        },
        fileMode = {
            type = "string",
        },
    },
}

M.Folder = {
    type = "structure",
    id = "Folder",
    members = {
        treeId = {
            type = "string",
        },
        absolutePath = {
            type = "string",
        },
        relativePath = {
            type = "string",
        },
    },
}

M.SubModule = {
    type = "structure",
    id = "SubModule",
    members = {
        commitId = {
            type = "string",
        },
        absolutePath = {
            type = "string",
        },
        relativePath = {
            type = "string",
        },
    },
}

M.SymbolicLink = {
    type = "structure",
    id = "SymbolicLink",
    members = {
        blobId = {
            type = "string",
        },
        absolutePath = {
            type = "string",
        },
        relativePath = {
            type = "string",
        },
        fileMode = {
            type = "string",
        },
    },
}

M.GetFolderOutput = {
    type = "structure",
    id = "GetFolderOutput",
    members = {
        commitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        folderPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        treeId = {
            type = "string",
        },
        subFolders = {
            type = "list",
            member = M.Folder,
        },
        files = {
            type = "list",
            member = M.File,
        },
        symbolicLinks = {
            type = "list",
            member = M.SymbolicLink,
        },
        subModules = {
            type = "list",
            member = M.SubModule,
        },
    },
}

M.GetMergeCommitInput = {
    type = "structure",
    id = "GetMergeCommitInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceCommitSpecifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationCommitSpecifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        conflictDetailLevel = {
            type = "string",
        },
        conflictResolutionStrategy = {
            type = "string",
        },
    },
}

M.GetMergeCommitOutput = {
    type = "structure",
    id = "GetMergeCommitOutput",
    members = {
        sourceCommitId = {
            type = "string",
        },
        destinationCommitId = {
            type = "string",
        },
        baseCommitId = {
            type = "string",
        },
        mergedCommitId = {
            type = "string",
        },
    },
}

M.GetMergeConflictsInput = {
    type = "structure",
    id = "GetMergeConflictsInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationCommitSpecifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceCommitSpecifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mergeOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
        conflictDetailLevel = {
            type = "string",
        },
        maxConflictFiles = {
            type = "integer",
        },
        conflictResolutionStrategy = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetMergeConflictsOutput = {
    type = "structure",
    id = "GetMergeConflictsOutput",
    members = {
        mergeable = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        destinationCommitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceCommitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        baseCommitId = {
            type = "string",
        },
        conflictMetadataList = {
            type = "list",
            member = M.ConflictMetadata,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InvalidDestinationCommitSpecifierException = {
    type = "structure",
    id = "InvalidDestinationCommitSpecifierException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSourceCommitSpecifierException = {
    type = "structure",
    id = "InvalidSourceCommitSpecifierException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetMergeOptionsInput = {
    type = "structure",
    id = "GetMergeOptionsInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceCommitSpecifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationCommitSpecifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        conflictDetailLevel = {
            type = "string",
        },
        conflictResolutionStrategy = {
            type = "string",
        },
    },
}

M.GetMergeOptionsOutput = {
    type = "structure",
    id = "GetMergeOptionsOutput",
    members = {
        mergeOptions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        sourceCommitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationCommitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        baseCommitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPullRequestInput = {
    type = "structure",
    id = "GetPullRequestInput",
    members = {
        pullRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPullRequestOutput = {
    type = "structure",
    id = "GetPullRequestOutput",
    members = {
        pullRequest = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PullRequest }),
    },
}

M.GetPullRequestApprovalStatesInput = {
    type = "structure",
    id = "GetPullRequestApprovalStatesInput",
    members = {
        pullRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPullRequestApprovalStatesOutput = {
    type = "structure",
    id = "GetPullRequestApprovalStatesOutput",
    members = {
        approvals = {
            type = "list",
            member = M.Approval,
        },
    },
}

M.GetPullRequestOverrideStateInput = {
    type = "structure",
    id = "GetPullRequestOverrideStateInput",
    members = {
        pullRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPullRequestOverrideStateOutput = {
    type = "structure",
    id = "GetPullRequestOverrideStateOutput",
    members = {
        overridden = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        overrider = {
            type = "string",
        },
    },
}

M.GetRepositoryInput = {
    type = "structure",
    id = "GetRepositoryInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRepositoryOutput = {
    type = "structure",
    id = "GetRepositoryOutput",
    members = {
        repositoryMetadata = M.RepositoryMetadata,
    },
}

M.GetRepositoryTriggersInput = {
    type = "structure",
    id = "GetRepositoryTriggersInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RepositoryTriggerEventEnum = {
    ALL = "all",
    UPDATE_REFERENCE = "updateReference",
    CREATE_REFERENCE = "createReference",
    DELETE_REFERENCE = "deleteReference",
}

M.RepositoryTrigger = {
    type = "structure",
    id = "RepositoryTrigger",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customData = {
            type = "string",
        },
        branches = {
            type = "list",
            member = { type = "string" },
        },
        events = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetRepositoryTriggersOutput = {
    type = "structure",
    id = "GetRepositoryTriggersOutput",
    members = {
        configurationId = {
            type = "string",
        },
        triggers = {
            type = "list",
            member = M.RepositoryTrigger,
        },
    },
}

M.ListApprovalRuleTemplatesInput = {
    type = "structure",
    id = "ListApprovalRuleTemplatesInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListApprovalRuleTemplatesOutput = {
    type = "structure",
    id = "ListApprovalRuleTemplatesOutput",
    members = {
        approvalRuleTemplateNames = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAssociatedApprovalRuleTemplatesForRepositoryInput = {
    type = "structure",
    id = "ListAssociatedApprovalRuleTemplatesForRepositoryInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListAssociatedApprovalRuleTemplatesForRepositoryOutput = {
    type = "structure",
    id = "ListAssociatedApprovalRuleTemplatesForRepositoryOutput",
    members = {
        approvalRuleTemplateNames = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBranchesInput = {
    type = "structure",
    id = "ListBranchesInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBranchesOutput = {
    type = "structure",
    id = "ListBranchesOutput",
    members = {
        branches = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListFileCommitHistoryInput = {
    type = "structure",
    id = "ListFileCommitHistoryInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        commitSpecifier = {
            type = "string",
        },
        filePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.FileVersion = {
    type = "structure",
    id = "FileVersion",
    members = {
        commit = M.Commit,
        blobId = {
            type = "string",
        },
        path = {
            type = "string",
        },
        revisionChildren = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListFileCommitHistoryOutput = {
    type = "structure",
    id = "ListFileCommitHistoryOutput",
    members = {
        revisionDag = {
            type = "list",
            member = M.FileVersion,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InvalidAuthorArnException = {
    type = "structure",
    id = "InvalidAuthorArnException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidPullRequestStatusException = {
    type = "structure",
    id = "InvalidPullRequestStatusException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListPullRequestsInput = {
    type = "structure",
    id = "ListPullRequestsInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorArn = {
            type = "string",
        },
        pullRequestStatus = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListPullRequestsOutput = {
    type = "structure",
    id = "ListPullRequestsOutput",
    members = {
        pullRequestIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InvalidOrderException = {
    type = "structure",
    id = "InvalidOrderException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSortByException = {
    type = "structure",
    id = "InvalidSortByException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OrderEnum = {
    ASCENDING = "ascending",
    DESCENDING = "descending",
}

M.SortByEnum = {
    REPOSITORY_NAME = "repositoryName",
    MODIFIED_DATE = "lastModifiedDate",
}

M.ListRepositoriesInput = {
    type = "structure",
    id = "ListRepositoriesInput",
    members = {
        nextToken = {
            type = "string",
        },
        sortBy = {
            type = "string",
        },
        order = {
            type = "string",
        },
    },
}

M.RepositoryNameIdPair = {
    type = "structure",
    id = "RepositoryNameIdPair",
    members = {
        repositoryName = {
            type = "string",
        },
        repositoryId = {
            type = "string",
        },
    },
}

M.ListRepositoriesOutput = {
    type = "structure",
    id = "ListRepositoriesOutput",
    members = {
        repositories = {
            type = "list",
            member = M.RepositoryNameIdPair,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRepositoriesForApprovalRuleTemplateInput = {
    type = "structure",
    id = "ListRepositoriesForApprovalRuleTemplateInput",
    members = {
        approvalRuleTemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListRepositoriesForApprovalRuleTemplateOutput = {
    type = "structure",
    id = "ListRepositoriesForApprovalRuleTemplateOutput",
    members = {
        repositoryNames = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InvalidResourceArnException = {
    type = "structure",
    id = "InvalidResourceArnException",
    error = "client",
    members = {
        message = {
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
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ResourceArnRequiredException = {
    type = "structure",
    id = "ResourceArnRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTargetBranchException = {
    type = "structure",
    id = "InvalidTargetBranchException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MergeBranchesByFastForwardInput = {
    type = "structure",
    id = "MergeBranchesByFastForwardInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceCommitSpecifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationCommitSpecifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetBranch = {
            type = "string",
        },
    },
}

M.MergeBranchesByFastForwardOutput = {
    type = "structure",
    id = "MergeBranchesByFastForwardOutput",
    members = {
        commitId = {
            type = "string",
        },
        treeId = {
            type = "string",
        },
    },
}

M.MergeBranchesBySquashInput = {
    type = "structure",
    id = "MergeBranchesBySquashInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceCommitSpecifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationCommitSpecifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetBranch = {
            type = "string",
        },
        conflictDetailLevel = {
            type = "string",
        },
        conflictResolutionStrategy = {
            type = "string",
        },
        authorName = {
            type = "string",
        },
        email = {
            type = "string",
        },
        commitMessage = {
            type = "string",
        },
        keepEmptyFolders = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        conflictResolution = M.ConflictResolution,
    },
}

M.MergeBranchesBySquashOutput = {
    type = "structure",
    id = "MergeBranchesBySquashOutput",
    members = {
        commitId = {
            type = "string",
        },
        treeId = {
            type = "string",
        },
    },
}

M.MergeBranchesByThreeWayInput = {
    type = "structure",
    id = "MergeBranchesByThreeWayInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceCommitSpecifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationCommitSpecifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetBranch = {
            type = "string",
        },
        conflictDetailLevel = {
            type = "string",
        },
        conflictResolutionStrategy = {
            type = "string",
        },
        authorName = {
            type = "string",
        },
        email = {
            type = "string",
        },
        commitMessage = {
            type = "string",
        },
        keepEmptyFolders = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        conflictResolution = M.ConflictResolution,
    },
}

M.MergeBranchesByThreeWayOutput = {
    type = "structure",
    id = "MergeBranchesByThreeWayOutput",
    members = {
        commitId = {
            type = "string",
        },
        treeId = {
            type = "string",
        },
    },
}

M.MergePullRequestByFastForwardInput = {
    type = "structure",
    id = "MergePullRequestByFastForwardInput",
    members = {
        pullRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceCommitId = {
            type = "string",
        },
    },
}

M.MergePullRequestByFastForwardOutput = {
    type = "structure",
    id = "MergePullRequestByFastForwardOutput",
    members = {
        pullRequest = M.PullRequest,
    },
}

M.PullRequestApprovalRulesNotSatisfiedException = {
    type = "structure",
    id = "PullRequestApprovalRulesNotSatisfiedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TipOfSourceReferenceIsDifferentException = {
    type = "structure",
    id = "TipOfSourceReferenceIsDifferentException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MergePullRequestBySquashInput = {
    type = "structure",
    id = "MergePullRequestBySquashInput",
    members = {
        pullRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceCommitId = {
            type = "string",
        },
        conflictDetailLevel = {
            type = "string",
        },
        conflictResolutionStrategy = {
            type = "string",
        },
        commitMessage = {
            type = "string",
        },
        authorName = {
            type = "string",
        },
        email = {
            type = "string",
        },
        keepEmptyFolders = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        conflictResolution = M.ConflictResolution,
    },
}

M.MergePullRequestBySquashOutput = {
    type = "structure",
    id = "MergePullRequestBySquashOutput",
    members = {
        pullRequest = M.PullRequest,
    },
}

M.MergePullRequestByThreeWayInput = {
    type = "structure",
    id = "MergePullRequestByThreeWayInput",
    members = {
        pullRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceCommitId = {
            type = "string",
        },
        conflictDetailLevel = {
            type = "string",
        },
        conflictResolutionStrategy = {
            type = "string",
        },
        commitMessage = {
            type = "string",
        },
        authorName = {
            type = "string",
        },
        email = {
            type = "string",
        },
        keepEmptyFolders = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        conflictResolution = M.ConflictResolution,
    },
}

M.MergePullRequestByThreeWayOutput = {
    type = "structure",
    id = "MergePullRequestByThreeWayOutput",
    members = {
        pullRequest = M.PullRequest,
    },
}

M.InvalidOverrideStatusException = {
    type = "structure",
    id = "InvalidOverrideStatusException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OverrideAlreadySetException = {
    type = "structure",
    id = "OverrideAlreadySetException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OverridePullRequestApprovalRulesInput = {
    type = "structure",
    id = "OverridePullRequestApprovalRulesInput",
    members = {
        pullRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        overrideStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OverridePullRequestApprovalRulesOutput = {
    type = "structure",
    id = "OverridePullRequestApprovalRulesOutput",
}

M.OverrideStatusRequiredException = {
    type = "structure",
    id = "OverrideStatusRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CommentContentRequiredException = {
    type = "structure",
    id = "CommentContentRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CommentContentSizeLimitExceededException = {
    type = "structure",
    id = "CommentContentSizeLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidFileLocationException = {
    type = "structure",
    id = "InvalidFileLocationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidFilePositionException = {
    type = "structure",
    id = "InvalidFilePositionException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRelativeFileVersionEnumException = {
    type = "structure",
    id = "InvalidRelativeFileVersionEnumException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PostCommentForComparedCommitInput = {
    type = "structure",
    id = "PostCommentForComparedCommitInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        beforeCommitId = {
            type = "string",
        },
        afterCommitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        location = M.Location,
        content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.PostCommentForComparedCommitOutput = {
    type = "structure",
    id = "PostCommentForComparedCommitOutput",
    members = {
        repositoryName = {
            type = "string",
        },
        beforeCommitId = {
            type = "string",
        },
        afterCommitId = {
            type = "string",
        },
        beforeBlobId = {
            type = "string",
        },
        afterBlobId = {
            type = "string",
        },
        location = M.Location,
        comment = M.Comment,
    },
}

M.PostCommentForPullRequestInput = {
    type = "structure",
    id = "PostCommentForPullRequestInput",
    members = {
        pullRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        beforeCommitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        afterCommitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        location = M.Location,
        content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.PostCommentForPullRequestOutput = {
    type = "structure",
    id = "PostCommentForPullRequestOutput",
    members = {
        repositoryName = {
            type = "string",
        },
        pullRequestId = {
            type = "string",
        },
        beforeCommitId = {
            type = "string",
        },
        afterCommitId = {
            type = "string",
        },
        beforeBlobId = {
            type = "string",
        },
        afterBlobId = {
            type = "string",
        },
        location = M.Location,
        comment = M.Comment,
    },
}

M.PostCommentReplyInput = {
    type = "structure",
    id = "PostCommentReplyInput",
    members = {
        inReplyTo = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        content = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PostCommentReplyOutput = {
    type = "structure",
    id = "PostCommentReplyOutput",
    members = {
        comment = M.Comment,
    },
}

M.InvalidReactionValueException = {
    type = "structure",
    id = "InvalidReactionValueException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutCommentReactionInput = {
    type = "structure",
    id = "PutCommentReactionInput",
    members = {
        commentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reactionValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutCommentReactionOutput = {
    type = "structure",
    id = "PutCommentReactionOutput",
}

M.ReactionLimitExceededException = {
    type = "structure",
    id = "ReactionLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReactionValueRequiredException = {
    type = "structure",
    id = "ReactionValueRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FileContentRequiredException = {
    type = "structure",
    id = "FileContentRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutFileInput = {
    type = "structure",
    id = "PutFileInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        branchName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileContent = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        filePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileMode = {
            type = "string",
        },
        parentCommitId = {
            type = "string",
        },
        commitMessage = {
            type = "string",
        },
        name = {
            type = "string",
        },
        email = {
            type = "string",
        },
    },
}

M.PutFileOutput = {
    type = "structure",
    id = "PutFileOutput",
    members = {
        commitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        treeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SameFileContentException = {
    type = "structure",
    id = "SameFileContentException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRepositoryTriggerBranchNameException = {
    type = "structure",
    id = "InvalidRepositoryTriggerBranchNameException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRepositoryTriggerCustomDataException = {
    type = "structure",
    id = "InvalidRepositoryTriggerCustomDataException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRepositoryTriggerDestinationArnException = {
    type = "structure",
    id = "InvalidRepositoryTriggerDestinationArnException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRepositoryTriggerEventsException = {
    type = "structure",
    id = "InvalidRepositoryTriggerEventsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRepositoryTriggerNameException = {
    type = "structure",
    id = "InvalidRepositoryTriggerNameException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRepositoryTriggerRegionException = {
    type = "structure",
    id = "InvalidRepositoryTriggerRegionException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaximumBranchesExceededException = {
    type = "structure",
    id = "MaximumBranchesExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaximumRepositoryTriggersExceededException = {
    type = "structure",
    id = "MaximumRepositoryTriggersExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutRepositoryTriggersInput = {
    type = "structure",
    id = "PutRepositoryTriggersInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        triggers = {
            type = "list",
            member = M.RepositoryTrigger,
            traits = {
                required = true,
            },
        },
    },
}

M.PutRepositoryTriggersOutput = {
    type = "structure",
    id = "PutRepositoryTriggersOutput",
    members = {
        configurationId = {
            type = "string",
        },
    },
}

M.RepositoryTriggerBranchNameListRequiredException = {
    type = "structure",
    id = "RepositoryTriggerBranchNameListRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RepositoryTriggerDestinationArnRequiredException = {
    type = "structure",
    id = "RepositoryTriggerDestinationArnRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RepositoryTriggerEventsListRequiredException = {
    type = "structure",
    id = "RepositoryTriggerEventsListRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RepositoryTriggerNameRequiredException = {
    type = "structure",
    id = "RepositoryTriggerNameRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RepositoryTriggersListRequiredException = {
    type = "structure",
    id = "RepositoryTriggersListRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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

M.TagsMapRequiredException = {
    type = "structure",
    id = "TagsMapRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TestRepositoryTriggersInput = {
    type = "structure",
    id = "TestRepositoryTriggersInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        triggers = {
            type = "list",
            member = M.RepositoryTrigger,
            traits = {
                required = true,
            },
        },
    },
}

M.RepositoryTriggerExecutionFailure = {
    type = "structure",
    id = "RepositoryTriggerExecutionFailure",
    members = {
        trigger = {
            type = "string",
        },
        failureMessage = {
            type = "string",
        },
    },
}

M.TestRepositoryTriggersOutput = {
    type = "structure",
    id = "TestRepositoryTriggersOutput",
    members = {
        successfulExecutions = {
            type = "list",
            member = { type = "string" },
        },
        failedExecutions = {
            type = "list",
            member = M.RepositoryTriggerExecutionFailure,
        },
    },
}

M.InvalidTagKeysListException = {
    type = "structure",
    id = "InvalidTagKeysListException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagKeysListRequiredException = {
    type = "structure",
    id = "TagKeysListRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
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

M.InvalidRuleContentSha256Exception = {
    type = "structure",
    id = "InvalidRuleContentSha256Exception",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateApprovalRuleTemplateContentInput = {
    type = "structure",
    id = "UpdateApprovalRuleTemplateContentInput",
    members = {
        approvalRuleTemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        newRuleContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
        existingRuleContentSha256 = {
            type = "string",
        },
    },
}

M.UpdateApprovalRuleTemplateContentOutput = {
    type = "structure",
    id = "UpdateApprovalRuleTemplateContentOutput",
    members = {
        approvalRuleTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApprovalRuleTemplate }),
    },
}

M.UpdateApprovalRuleTemplateDescriptionInput = {
    type = "structure",
    id = "UpdateApprovalRuleTemplateDescriptionInput",
    members = {
        approvalRuleTemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        approvalRuleTemplateDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateApprovalRuleTemplateDescriptionOutput = {
    type = "structure",
    id = "UpdateApprovalRuleTemplateDescriptionOutput",
    members = {
        approvalRuleTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApprovalRuleTemplate }),
    },
}

M.UpdateApprovalRuleTemplateNameInput = {
    type = "structure",
    id = "UpdateApprovalRuleTemplateNameInput",
    members = {
        oldApprovalRuleTemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        newApprovalRuleTemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateApprovalRuleTemplateNameOutput = {
    type = "structure",
    id = "UpdateApprovalRuleTemplateNameOutput",
    members = {
        approvalRuleTemplate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApprovalRuleTemplate }),
    },
}

M.CommentNotCreatedByCallerException = {
    type = "structure",
    id = "CommentNotCreatedByCallerException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateCommentInput = {
    type = "structure",
    id = "UpdateCommentInput",
    members = {
        commentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCommentOutput = {
    type = "structure",
    id = "UpdateCommentOutput",
    members = {
        comment = M.Comment,
    },
}

M.UpdateDefaultBranchInput = {
    type = "structure",
    id = "UpdateDefaultBranchInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        defaultBranchName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDefaultBranchOutput = {
    type = "structure",
    id = "UpdateDefaultBranchOutput",
}

M.UpdatePullRequestApprovalRuleContentInput = {
    type = "structure",
    id = "UpdatePullRequestApprovalRuleContentInput",
    members = {
        pullRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        approvalRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        existingRuleContentSha256 = {
            type = "string",
        },
        newRuleContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePullRequestApprovalRuleContentOutput = {
    type = "structure",
    id = "UpdatePullRequestApprovalRuleContentOutput",
    members = {
        approvalRule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApprovalRule }),
    },
}

M.InvalidApprovalStateException = {
    type = "structure",
    id = "InvalidApprovalStateException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaximumNumberOfApprovalsExceededException = {
    type = "structure",
    id = "MaximumNumberOfApprovalsExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PullRequestCannotBeApprovedByAuthorException = {
    type = "structure",
    id = "PullRequestCannotBeApprovedByAuthorException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdatePullRequestApprovalStateInput = {
    type = "structure",
    id = "UpdatePullRequestApprovalStateInput",
    members = {
        pullRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        approvalState = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePullRequestApprovalStateOutput = {
    type = "structure",
    id = "UpdatePullRequestApprovalStateOutput",
}

M.UpdatePullRequestDescriptionInput = {
    type = "structure",
    id = "UpdatePullRequestDescriptionInput",
    members = {
        pullRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePullRequestDescriptionOutput = {
    type = "structure",
    id = "UpdatePullRequestDescriptionOutput",
    members = {
        pullRequest = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PullRequest }),
    },
}

M.InvalidPullRequestStatusUpdateException = {
    type = "structure",
    id = "InvalidPullRequestStatusUpdateException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PullRequestStatusRequiredException = {
    type = "structure",
    id = "PullRequestStatusRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdatePullRequestStatusInput = {
    type = "structure",
    id = "UpdatePullRequestStatusInput",
    members = {
        pullRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pullRequestStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePullRequestStatusOutput = {
    type = "structure",
    id = "UpdatePullRequestStatusOutput",
    members = {
        pullRequest = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PullRequest }),
    },
}

M.UpdatePullRequestTitleInput = {
    type = "structure",
    id = "UpdatePullRequestTitleInput",
    members = {
        pullRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePullRequestTitleOutput = {
    type = "structure",
    id = "UpdatePullRequestTitleOutput",
    members = {
        pullRequest = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PullRequest }),
    },
}

M.UpdateRepositoryDescriptionInput = {
    type = "structure",
    id = "UpdateRepositoryDescriptionInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryDescription = {
            type = "string",
        },
    },
}

M.UpdateRepositoryDescriptionOutput = {
    type = "structure",
    id = "UpdateRepositoryDescriptionOutput",
}

M.EncryptionKeyRequiredException = {
    type = "structure",
    id = "EncryptionKeyRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateRepositoryEncryptionKeyInput = {
    type = "structure",
    id = "UpdateRepositoryEncryptionKeyInput",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRepositoryEncryptionKeyOutput = {
    type = "structure",
    id = "UpdateRepositoryEncryptionKeyOutput",
    members = {
        repositoryId = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
        originalKmsKeyId = {
            type = "string",
        },
    },
}

M.UpdateRepositoryNameInput = {
    type = "structure",
    id = "UpdateRepositoryNameInput",
    members = {
        oldName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        newName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRepositoryNameOutput = {
    type = "structure",
    id = "UpdateRepositoryNameOutput",
}

return M
