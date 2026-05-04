local M = {}

M.ActorDoesNotExistException = {
    type = "structure",
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
        originApprovalRuleTemplate = {
            type = "structure",
        },
    },
}

M.ApprovalRuleContentRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApprovalRuleDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApprovalRuleEventMetadata = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApprovalRuleNameRequiredException = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApprovalRuleTemplateDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApprovalRuleTemplateInUseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApprovalRuleTemplateNameAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApprovalRuleTemplateNameRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApprovalStateChangedEventMetadata = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AssociateApprovalRuleTemplateWithRepositoryInput = {
    type = "structure",
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
}

M.EncryptionIntegrityChecksFailedException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EncryptionKeyAccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EncryptionKeyDisabledException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EncryptionKeyNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EncryptionKeyUnavailableException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidApprovalRuleTemplateNameException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRepositoryNameException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaximumRuleTemplatesAssociatedWithRepositoryException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RepositoryDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RepositoryNameRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AuthorDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchAssociateApprovalRuleTemplateWithRepositoriesInput = {
    type = "structure",
    members = {
        approvalRuleTemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchAssociateApprovalRuleTemplateWithRepositoriesError = {
    type = "structure",
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
    members = {
        associatedRepositoryNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.MaximumRepositoryNamesExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RepositoryNamesRequiredException = {
    type = "structure",
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
            type = "number",
        },
        maxConflictFiles = {
            type = "number",
        },
        filePaths = {
            type = "list",
            member_type = "string",
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
    members = {
        source = {
            type = "number",
        },
        destination = {
            type = "number",
        },
        base = {
            type = "number",
        },
    },
}

M.IsBinaryFile = {
    type = "structure",
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
    members = {
        filePath = {
            type = "string",
        },
        fileSizes = {
            type = "structure",
        },
        fileModes = {
            type = "structure",
        },
        objectTypes = {
            type = "structure",
        },
        numberOfConflicts = {
            type = "number",
        },
        isBinaryFile = {
            type = "structure",
        },
        contentConflict = {
            type = "boolean",
        },
        fileModeConflict = {
            type = "boolean",
        },
        objectTypeConflict = {
            type = "boolean",
        },
        mergeOperations = {
            type = "structure",
        },
    },
}

M.MergeHunkDetail = {
    type = "structure",
    members = {
        startLine = {
            type = "number",
        },
        endLine = {
            type = "number",
        },
        hunkContent = {
            type = "string",
        },
    },
}

M.MergeHunk = {
    type = "structure",
    members = {
        isConflict = {
            type = "boolean",
        },
        source = {
            type = "structure",
        },
        destination = {
            type = "structure",
        },
        base = {
            type = "structure",
        },
    },
}

M.Conflict = {
    type = "structure",
    members = {
        conflictMetadata = {
            type = "structure",
        },
        mergeHunks = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchDescribeMergeConflictsError = {
    type = "structure",
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
    members = {
        conflicts = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        errors = {
            type = "list",
            member_type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CommitRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidCommitException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidConflictDetailLevelException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidConflictResolutionStrategyException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidContinuationTokenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidMaxConflictFilesException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidMaxMergeHunksException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidMergeOptionException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaximumFileContentToLoadExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaximumItemsToCompareExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MergeOptionRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TipsDivergenceExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchDisassociateApprovalRuleTemplateFromRepositoriesInput = {
    type = "structure",
    members = {
        approvalRuleTemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repositoryNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDisassociateApprovalRuleTemplateFromRepositoriesError = {
    type = "structure",
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
    members = {
        disassociatedRepositoryNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetCommitsInput = {
    type = "structure",
    members = {
        commitIds = {
            type = "list",
            member_type = "string",
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
    members = {
        commitId = {
            type = "string",
        },
        treeId = {
            type = "string",
        },
        parents = {
            type = "list",
            member_type = "string",
        },
        message = {
            type = "string",
        },
        author = {
            type = "structure",
        },
        committer = {
            type = "structure",
        },
        additionalData = {
            type = "string",
        },
    },
}

M.BatchGetCommitsError = {
    type = "structure",
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
    members = {
        commits = {
            type = "list",
            member_type = "structure",
        },
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CommitIdsLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CommitIdsListRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchGetRepositoriesInput = {
    type = "structure",
    members = {
        repositoryNames = {
            type = "list",
            member_type = "string",
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
    members = {
        repositories = {
            type = "list",
            member_type = "structure",
        },
        repositoriesNotFound = {
            type = "list",
            member_type = "string",
        },
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BeforeCommitIdAndAfterCommitIdAreSameException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BlobIdDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BlobIdRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BlobMetadata = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BranchInfo = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BranchNameIsTagNameException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BranchNameRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CannotDeleteApprovalRuleFromTemplateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CannotModifyApprovalRuleFromTemplateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClientRequestTokenRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateApprovalRuleTemplateInput = {
    type = "structure",
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
    members = {
        approvalRuleTemplate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidApprovalRuleTemplateContentException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidApprovalRuleTemplateDescriptionException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NumberOfRuleTemplatesExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CommitIdRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateBranchInput = {
    type = "structure",
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
}

M.InvalidBranchNameException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidCommitIdException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CommitMessageLengthExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteFileEntry = {
    type = "structure",
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
    members = {
        filePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        isMove = {
            type = "boolean",
        },
    },
}

M.PutFileEntry = {
    type = "structure",
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
        sourceFile = {
            type = "structure",
        },
    },
}

M.SetFileModeEntry = {
    type = "structure",
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
        },
        putFiles = {
            type = "list",
            member_type = "structure",
        },
        deleteFiles = {
            type = "list",
            member_type = "structure",
        },
        setFileModes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.FileMetadata = {
    type = "structure",
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
    members = {
        commitId = {
            type = "string",
        },
        treeId = {
            type = "string",
        },
        filesAdded = {
            type = "list",
            member_type = "structure",
        },
        filesUpdated = {
            type = "list",
            member_type = "structure",
        },
        filesDeleted = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DirectoryNameConflictsWithFileNameException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FileContentAndSourceFileSpecifiedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FileContentSizeLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FileDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FileEntryRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FileModeRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FileNameConflictsWithDirectoryNameException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FilePathConflictsWithSubmodulePathException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FolderContentSizeLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDeletionParameterException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidEmailException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidFileModeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParentCommitIdException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidPathException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaximumFileEntriesExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NameLengthExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoChangeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ParentCommitDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ParentCommitIdOutdatedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ParentCommitIdRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PathRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutFileEntryConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RestrictedSourceFileException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SamePathRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SourceFileOrContentRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Target = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
        },
    },
}

M.PullRequestStatusEnum = {
    OPEN = "OPEN",
    CLOSED = "CLOSED",
}

M.MergeMetadata = {
    type = "structure",
    members = {
        isMerged = {
            type = "boolean",
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
        mergeMetadata = {
            type = "structure",
        },
    },
}

M.PullRequest = {
    type = "structure",
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
            member_type = "structure",
        },
        clientRequestToken = {
            type = "string",
        },
        revisionId = {
            type = "string",
        },
        approvalRules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreatePullRequestOutput = {
    type = "structure",
    members = {
        pullRequest = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.IdempotencyParameterMismatchException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidClientRequestTokenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDescriptionException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidReferenceNameException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTargetException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTargetsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTitleException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaximumOpenPullRequestsExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MultipleRepositoriesInPullRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReferenceDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReferenceNameRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReferenceTypeNotSupportedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SourceAndDestinationAreSameException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TargetRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TargetsRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TitleRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreatePullRequestApprovalRuleInput = {
    type = "structure",
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
    members = {
        approvalRule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidApprovalRuleContentException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidApprovalRuleNameException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidPullRequestIdException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NumberOfRulesExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PullRequestAlreadyClosedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PullRequestDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PullRequestIdRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateRepositoryInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
    },
}

M.CreateRepositoryOutput = {
    type = "structure",
    members = {
        repositoryMetadata = {
            type = "structure",
        },
    },
}

M.EncryptionKeyInvalidIdException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EncryptionKeyInvalidUsageException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRepositoryDescriptionException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSystemTagUsageException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTagsMapException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OperationNotAllowedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RepositoryLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RepositoryNameExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagPolicyException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConcurrentReferenceUpdateException = {
    type = "structure",
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
    members = {
        replaceContents = {
            type = "list",
            member_type = "structure",
        },
        deleteFiles = {
            type = "list",
            member_type = "structure",
        },
        setFileModes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateUnreferencedMergeCommitInput = {
    type = "structure",
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
        },
        conflictResolution = {
            type = "structure",
        },
    },
}

M.CreateUnreferencedMergeCommitOutput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidReplacementContentException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidReplacementTypeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ManualMergeRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaximumConflictResolutionEntriesExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MultipleConflictResolutionEntriesException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReplacementContentRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReplacementTypeRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteApprovalRuleTemplateInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteBranchInput = {
    type = "structure",
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
    members = {
        deletedBranch = {
            type = "structure",
        },
    },
}

M.CommentDeletedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CommentDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CommentIdRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteCommentContentInput = {
    type = "structure",
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
        },
        clientRequestToken = {
            type = "string",
        },
        callerReactions = {
            type = "list",
            member_type = "string",
        },
        reactionCounts = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
    },
}

M.DeleteCommentContentOutput = {
    type = "structure",
    members = {
        comment = {
            type = "structure",
        },
    },
}

M.InvalidCommentIdException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteFileInput = {
    type = "structure",
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
    members = {
        repositoryId = {
            type = "string",
        },
    },
}

M.DescribeMergeConflictsInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        conflictMetadata = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        mergeHunks = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.PullRequestCreatedEventMetadata = {
    type = "structure",
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
    members = {
        repositoryName = {
            type = "string",
        },
        destinationReference = {
            type = "string",
        },
        mergeMetadata = {
            type = "structure",
        },
    },
}

M.PullRequestSourceReferenceUpdatedEventMetadata = {
    type = "structure",
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
    members = {
        pullRequestStatus = {
            type = "string",
        },
    },
}

M.PullRequestEvent = {
    type = "structure",
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
        pullRequestCreatedEventMetadata = {
            type = "structure",
        },
        pullRequestStatusChangedEventMetadata = {
            type = "structure",
        },
        pullRequestSourceReferenceUpdatedEventMetadata = {
            type = "structure",
        },
        pullRequestMergedStateChangedEventMetadata = {
            type = "structure",
        },
        approvalRuleEventMetadata = {
            type = "structure",
        },
        approvalStateChangedEventMetadata = {
            type = "structure",
        },
        approvalRuleOverriddenEventMetadata = {
            type = "structure",
        },
    },
}

M.DescribePullRequestEventsOutput = {
    type = "structure",
    members = {
        pullRequestEvents = {
            type = "list",
            member_type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidMaxResultsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidPullRequestEventTypeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DisassociateApprovalRuleTemplateFromRepositoryInput = {
    type = "structure",
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
}

M.EvaluatePullRequestApprovalRulesInput = {
    type = "structure",
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
    members = {
        approved = {
            type = "boolean",
        },
        overridden = {
            type = "boolean",
        },
        approvalRulesSatisfied = {
            type = "list",
            member_type = "string",
        },
        approvalRulesNotSatisfied = {
            type = "list",
            member_type = "string",
        },
    },
}

M.EvaluatePullRequestApprovalRulesOutput = {
    type = "structure",
    members = {
        evaluation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidRevisionIdException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RevisionIdRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RevisionNotCurrentException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetApprovalRuleTemplateInput = {
    type = "structure",
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
    members = {
        approvalRuleTemplate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.FileTooLargeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetBlobInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetBranchInput = {
    type = "structure",
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
    members = {
        branch = {
            type = "structure",
        },
    },
}

M.GetCommentInput = {
    type = "structure",
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
    members = {
        comment = {
            type = "structure",
        },
    },
}

M.GetCommentReactionsInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.ReactionValueFormats = {
    type = "structure",
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
    members = {
        reaction = {
            type = "structure",
        },
        reactionUsers = {
            type = "list",
            member_type = "string",
        },
        reactionsFromDeletedUsersCount = {
            type = "number",
        },
    },
}

M.GetCommentReactionsOutput = {
    type = "structure",
    members = {
        reactionsForComment = {
            type = "list",
            member_type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetCommentsForComparedCommitInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.RelativeFileVersionEnum = {
    BEFORE = "BEFORE",
    AFTER = "AFTER",
}

M.Location = {
    type = "structure",
    members = {
        filePath = {
            type = "string",
        },
        filePosition = {
            type = "number",
        },
        relativeFileVersion = {
            type = "string",
        },
    },
}

M.CommentsForComparedCommit = {
    type = "structure",
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
        location = {
            type = "structure",
        },
        comments = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetCommentsForComparedCommitOutput = {
    type = "structure",
    members = {
        commentsForComparedCommitData = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetCommentsForPullRequestInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.CommentsForPullRequest = {
    type = "structure",
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
        location = {
            type = "structure",
        },
        comments = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetCommentsForPullRequestOutput = {
    type = "structure",
    members = {
        commentsForPullRequestData = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RepositoryNotAssociatedWithPullRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CommitIdDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetCommitInput = {
    type = "structure",
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
    members = {
        commit = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDifferencesInput = {
    type = "structure",
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
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Difference = {
    type = "structure",
    members = {
        beforeBlob = {
            type = "structure",
        },
        afterBlob = {
            type = "structure",
        },
        changeType = {
            type = "string",
        },
    },
}

M.GetDifferencesOutput = {
    type = "structure",
    members = {
        differences = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PathDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetFileInput = {
    type = "structure",
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
            type = "number",
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
    },
}

M.FolderDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetFolderInput = {
    type = "structure",
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
            member_type = "structure",
        },
        files = {
            type = "list",
            member_type = "structure",
        },
        symbolicLinks = {
            type = "list",
            member_type = "structure",
        },
        subModules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetMergeCommitInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        mergeable = {
            type = "boolean",
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
            member_type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSourceCommitSpecifierException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetMergeOptionsInput = {
    type = "structure",
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
    members = {
        mergeOptions = {
            type = "list",
            member_type = "string",
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
    members = {
        pullRequest = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPullRequestApprovalStatesInput = {
    type = "structure",
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
    members = {
        approvals = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetPullRequestOverrideStateInput = {
    type = "structure",
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
    members = {
        overridden = {
            type = "boolean",
        },
        overrider = {
            type = "string",
        },
    },
}

M.GetRepositoryInput = {
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

M.GetRepositoryOutput = {
    type = "structure",
    members = {
        repositoryMetadata = {
            type = "structure",
        },
    },
}

M.GetRepositoryTriggersInput = {
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

M.RepositoryTriggerEventEnum = {
    ALL = "all",
    UPDATE_REFERENCE = "updateReference",
    CREATE_REFERENCE = "createReference",
    DELETE_REFERENCE = "deleteReference",
}

M.RepositoryTrigger = {
    type = "structure",
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
            member_type = "string",
        },
        events = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRepositoryTriggersOutput = {
    type = "structure",
    members = {
        configurationId = {
            type = "string",
        },
        triggers = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListApprovalRuleTemplatesInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.ListApprovalRuleTemplatesOutput = {
    type = "structure",
    members = {
        approvalRuleTemplateNames = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAssociatedApprovalRuleTemplatesForRepositoryInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.ListAssociatedApprovalRuleTemplatesForRepositoryOutput = {
    type = "structure",
    members = {
        approvalRuleTemplateNames = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBranchesInput = {
    type = "structure",
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
    members = {
        branches = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListFileCommitHistoryInput = {
    type = "structure",
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
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.FileVersion = {
    type = "structure",
    members = {
        commit = {
            type = "structure",
        },
        blobId = {
            type = "string",
        },
        path = {
            type = "string",
        },
        revisionChildren = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListFileCommitHistoryOutput = {
    type = "structure",
    members = {
        revisionDag = {
            type = "list",
            member_type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidPullRequestStatusException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListPullRequestsInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.ListPullRequestsOutput = {
    type = "structure",
    members = {
        pullRequestIds = {
            type = "list",
            member_type = "string",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSortByException = {
    type = "structure",
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
    members = {
        repositories = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRepositoriesForApprovalRuleTemplateInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.ListRepositoriesForApprovalRuleTemplateOutput = {
    type = "structure",
    members = {
        repositoryNames = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InvalidResourceArnException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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
    members = {
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ResourceArnRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTargetBranchException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MergeBranchesByFastForwardInput = {
    type = "structure",
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
        },
        conflictResolution = {
            type = "structure",
        },
    },
}

M.MergeBranchesBySquashOutput = {
    type = "structure",
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
        },
        conflictResolution = {
            type = "structure",
        },
    },
}

M.MergeBranchesByThreeWayOutput = {
    type = "structure",
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
    members = {
        pullRequest = {
            type = "structure",
        },
    },
}

M.PullRequestApprovalRulesNotSatisfiedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TipOfSourceReferenceIsDifferentException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MergePullRequestBySquashInput = {
    type = "structure",
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
        },
        conflictResolution = {
            type = "structure",
        },
    },
}

M.MergePullRequestBySquashOutput = {
    type = "structure",
    members = {
        pullRequest = {
            type = "structure",
        },
    },
}

M.MergePullRequestByThreeWayInput = {
    type = "structure",
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
        },
        conflictResolution = {
            type = "structure",
        },
    },
}

M.MergePullRequestByThreeWayOutput = {
    type = "structure",
    members = {
        pullRequest = {
            type = "structure",
        },
    },
}

M.InvalidOverrideStatusException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OverrideAlreadySetException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OverridePullRequestApprovalRulesInput = {
    type = "structure",
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
}

M.OverrideStatusRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CommentContentRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CommentContentSizeLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidFileLocationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidFilePositionException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRelativeFileVersionEnumException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PostCommentForComparedCommitInput = {
    type = "structure",
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
        location = {
            type = "structure",
        },
        content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
        },
    },
}

M.PostCommentForComparedCommitOutput = {
    type = "structure",
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
        location = {
            type = "structure",
        },
        comment = {
            type = "structure",
        },
    },
}

M.PostCommentForPullRequestInput = {
    type = "structure",
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
        location = {
            type = "structure",
        },
        content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
        },
    },
}

M.PostCommentForPullRequestOutput = {
    type = "structure",
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
        location = {
            type = "structure",
        },
        comment = {
            type = "structure",
        },
    },
}

M.PostCommentReplyInput = {
    type = "structure",
    members = {
        inReplyTo = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientRequestToken = {
            type = "string",
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
    members = {
        comment = {
            type = "structure",
        },
    },
}

M.InvalidReactionValueException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutCommentReactionInput = {
    type = "structure",
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
}

M.ReactionLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReactionValueRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.FileContentRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutFileInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRepositoryTriggerBranchNameException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRepositoryTriggerCustomDataException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRepositoryTriggerDestinationArnException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRepositoryTriggerEventsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRepositoryTriggerNameException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRepositoryTriggerRegionException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaximumBranchesExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaximumRepositoryTriggersExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutRepositoryTriggersInput = {
    type = "structure",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        triggers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutRepositoryTriggersOutput = {
    type = "structure",
    members = {
        configurationId = {
            type = "string",
        },
    },
}

M.RepositoryTriggerBranchNameListRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RepositoryTriggerDestinationArnRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RepositoryTriggerEventsListRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RepositoryTriggerNameRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RepositoryTriggersListRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.TagsMapRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TestRepositoryTriggersInput = {
    type = "structure",
    members = {
        repositoryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        triggers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RepositoryTriggerExecutionFailure = {
    type = "structure",
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
    members = {
        successfulExecutions = {
            type = "list",
            member_type = "string",
        },
        failedExecutions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InvalidTagKeysListException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagKeysListRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.InvalidRuleContentSha256Exception = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateApprovalRuleTemplateContentInput = {
    type = "structure",
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
    members = {
        approvalRuleTemplate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateApprovalRuleTemplateDescriptionInput = {
    type = "structure",
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
    members = {
        approvalRuleTemplate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateApprovalRuleTemplateNameInput = {
    type = "structure",
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
    members = {
        approvalRuleTemplate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CommentNotCreatedByCallerException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateCommentInput = {
    type = "structure",
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
    members = {
        comment = {
            type = "structure",
        },
    },
}

M.UpdateDefaultBranchInput = {
    type = "structure",
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
}

M.UpdatePullRequestApprovalRuleContentInput = {
    type = "structure",
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
    members = {
        approvalRule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidApprovalStateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MaximumNumberOfApprovalsExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PullRequestCannotBeApprovedByAuthorException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdatePullRequestApprovalStateInput = {
    type = "structure",
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
}

M.UpdatePullRequestDescriptionInput = {
    type = "structure",
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
    members = {
        pullRequest = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidPullRequestStatusUpdateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PullRequestStatusRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdatePullRequestStatusInput = {
    type = "structure",
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
    members = {
        pullRequest = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePullRequestTitleInput = {
    type = "structure",
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
    members = {
        pullRequest = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRepositoryDescriptionInput = {
    type = "structure",
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
}

M.EncryptionKeyRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateRepositoryEncryptionKeyInput = {
    type = "structure",
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
}

return M
