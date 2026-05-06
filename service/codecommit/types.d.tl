local record AssociateApprovalRuleTemplateWithRepositoryInput
    approvalRuleTemplateName: string
    repositoryName: string
end

local record AssociateApprovalRuleTemplateWithRepositoryOutput
end

local record BatchAssociateApprovalRuleTemplateWithRepositoriesInput
    approvalRuleTemplateName: string
    repositoryNames: {string}
end

local record BatchAssociateApprovalRuleTemplateWithRepositoriesOutput
    associatedRepositoryNames: {string}
    errors: {BatchAssociateApprovalRuleTemplateWithRepositoriesError}
end

local record BatchDescribeMergeConflictsInput
    repositoryName: string
    destinationCommitSpecifier: string
    sourceCommitSpecifier: string
    mergeOption: string
    maxMergeHunks: number
    maxConflictFiles: number
    filePaths: {string}
    conflictDetailLevel: string
    conflictResolutionStrategy: string
    nextToken: string
end

local record BatchDescribeMergeConflictsOutput
    conflicts: {Conflict}
    nextToken: string
    errors: {BatchDescribeMergeConflictsError}
    destinationCommitId: string
    sourceCommitId: string
    baseCommitId: string
end

local record BatchDisassociateApprovalRuleTemplateFromRepositoriesInput
    approvalRuleTemplateName: string
    repositoryNames: {string}
end

local record BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput
    disassociatedRepositoryNames: {string}
    errors: {BatchDisassociateApprovalRuleTemplateFromRepositoriesError}
end

local record BatchGetCommitsInput
    commitIds: {string}
    repositoryName: string
end

local record BatchGetCommitsOutput
    commits: {Commit}
    errors: {BatchGetCommitsError}
end

local record BatchGetRepositoriesInput
    repositoryNames: {string}
end

local record BatchGetRepositoriesOutput
    repositories: {RepositoryMetadata}
    repositoriesNotFound: {string}
    errors: {BatchGetRepositoriesError}
end

local record CreateApprovalRuleTemplateInput
    approvalRuleTemplateName: string
    approvalRuleTemplateContent: string
    approvalRuleTemplateDescription: string
end

local record CreateApprovalRuleTemplateOutput
    approvalRuleTemplate: ApprovalRuleTemplate
end

local record CreateBranchInput
    repositoryName: string
    branchName: string
    commitId: string
end

local record CreateBranchOutput
end

local record CreateCommitInput
    repositoryName: string
    branchName: string
    parentCommitId: string
    authorName: string
    email: string
    commitMessage: string
    keepEmptyFolders: boolean
    putFiles: {PutFileEntry}
    deleteFiles: {DeleteFileEntry}
    setFileModes: {SetFileModeEntry}
end

local record CreateCommitOutput
    commitId: string
    treeId: string
    filesAdded: {FileMetadata}
    filesUpdated: {FileMetadata}
    filesDeleted: {FileMetadata}
end

local record CreatePullRequestInput
    title: string
    description: string
    targets: {Target}
    clientRequestToken: string
end

local record CreatePullRequestOutput
    pullRequest: PullRequest
end

local record CreatePullRequestApprovalRuleInput
    pullRequestId: string
    approvalRuleName: string
    approvalRuleContent: string
end

local record CreatePullRequestApprovalRuleOutput
    approvalRule: ApprovalRule
end

local record CreateRepositoryInput
    repositoryName: string
    repositoryDescription: string
    tags: {string : string}
    kmsKeyId: string
end

local record CreateRepositoryOutput
    repositoryMetadata: RepositoryMetadata
end

local record CreateUnreferencedMergeCommitInput
    repositoryName: string
    sourceCommitSpecifier: string
    destinationCommitSpecifier: string
    mergeOption: string
    conflictDetailLevel: string
    conflictResolutionStrategy: string
    authorName: string
    email: string
    commitMessage: string
    keepEmptyFolders: boolean
    conflictResolution: ConflictResolution
end

local record CreateUnreferencedMergeCommitOutput
    commitId: string
    treeId: string
end

local record DeleteApprovalRuleTemplateInput
    approvalRuleTemplateName: string
end

local record DeleteApprovalRuleTemplateOutput
    approvalRuleTemplateId: string
end

local record DeleteBranchInput
    repositoryName: string
    branchName: string
end

local record DeleteBranchOutput
    deletedBranch: BranchInfo
end

local record DeleteCommentContentInput
    commentId: string
end

local record DeleteCommentContentOutput
    comment: Comment
end

local record DeleteFileInput
    repositoryName: string
    branchName: string
    filePath: string
    parentCommitId: string
    keepEmptyFolders: boolean
    commitMessage: string
    name: string
    email: string
end

local record DeleteFileOutput
    commitId: string
    blobId: string
    treeId: string
    filePath: string
end

local record DeletePullRequestApprovalRuleInput
    pullRequestId: string
    approvalRuleName: string
end

local record DeletePullRequestApprovalRuleOutput
    approvalRuleId: string
end

local record DeleteRepositoryInput
    repositoryName: string
end

local record DeleteRepositoryOutput
    repositoryId: string
end

local record DescribeMergeConflictsInput
    repositoryName: string
    destinationCommitSpecifier: string
    sourceCommitSpecifier: string
    mergeOption: string
    maxMergeHunks: number
    filePath: string
    conflictDetailLevel: string
    conflictResolutionStrategy: string
    nextToken: string
end

local record DescribeMergeConflictsOutput
    conflictMetadata: ConflictMetadata
    mergeHunks: {MergeHunk}
    nextToken: string
    destinationCommitId: string
    sourceCommitId: string
    baseCommitId: string
end

local record DescribePullRequestEventsInput
    pullRequestId: string
    pullRequestEventType: string
    actorArn: string
    nextToken: string
    maxResults: number
end

local record DescribePullRequestEventsOutput
    pullRequestEvents: {PullRequestEvent}
    nextToken: string
end

local record DisassociateApprovalRuleTemplateFromRepositoryInput
    approvalRuleTemplateName: string
    repositoryName: string
end

local record DisassociateApprovalRuleTemplateFromRepositoryOutput
end

local record EvaluatePullRequestApprovalRulesInput
    pullRequestId: string
    revisionId: string
end

local record EvaluatePullRequestApprovalRulesOutput
    evaluation: Evaluation
end

local record GetApprovalRuleTemplateInput
    approvalRuleTemplateName: string
end

local record GetApprovalRuleTemplateOutput
    approvalRuleTemplate: ApprovalRuleTemplate
end

local record GetBlobInput
    repositoryName: string
    blobId: string
end

local record GetBlobOutput
    content: string
end

local record GetBranchInput
    repositoryName: string
    branchName: string
end

local record GetBranchOutput
    branch: BranchInfo
end

local record GetCommentInput
    commentId: string
end

local record GetCommentOutput
    comment: Comment
end

local record GetCommentReactionsInput
    commentId: string
    reactionUserArn: string
    nextToken: string
    maxResults: number
end

local record GetCommentReactionsOutput
    reactionsForComment: {ReactionForComment}
    nextToken: string
end

local record GetCommentsForComparedCommitInput
    repositoryName: string
    beforeCommitId: string
    afterCommitId: string
    nextToken: string
    maxResults: number
end

local record GetCommentsForComparedCommitOutput
    commentsForComparedCommitData: {CommentsForComparedCommit}
    nextToken: string
end

local record GetCommentsForPullRequestInput
    pullRequestId: string
    repositoryName: string
    beforeCommitId: string
    afterCommitId: string
    nextToken: string
    maxResults: number
end

local record GetCommentsForPullRequestOutput
    commentsForPullRequestData: {CommentsForPullRequest}
    nextToken: string
end

local record GetCommitInput
    repositoryName: string
    commitId: string
end

local record GetCommitOutput
    commit: Commit
end

local record GetDifferencesInput
    repositoryName: string
    beforeCommitSpecifier: string
    afterCommitSpecifier: string
    beforePath: string
    afterPath: string
    MaxResults: number
    NextToken: string
end

local record GetDifferencesOutput
    differences: {Difference}
    NextToken: string
end

local record GetFileInput
    repositoryName: string
    commitSpecifier: string
    filePath: string
end

local record GetFileOutput
    commitId: string
    blobId: string
    filePath: string
    fileMode: string
    fileSize: number
    fileContent: string
end

local record GetFolderInput
    repositoryName: string
    commitSpecifier: string
    folderPath: string
end

local record GetFolderOutput
    commitId: string
    folderPath: string
    treeId: string
    subFolders: {Folder}
    files: {File}
    symbolicLinks: {SymbolicLink}
    subModules: {SubModule}
end

local record GetMergeCommitInput
    repositoryName: string
    sourceCommitSpecifier: string
    destinationCommitSpecifier: string
    conflictDetailLevel: string
    conflictResolutionStrategy: string
end

local record GetMergeCommitOutput
    sourceCommitId: string
    destinationCommitId: string
    baseCommitId: string
    mergedCommitId: string
end

local record GetMergeConflictsInput
    repositoryName: string
    destinationCommitSpecifier: string
    sourceCommitSpecifier: string
    mergeOption: string
    conflictDetailLevel: string
    maxConflictFiles: number
    conflictResolutionStrategy: string
    nextToken: string
end

local record GetMergeConflictsOutput
    mergeable: boolean
    destinationCommitId: string
    sourceCommitId: string
    baseCommitId: string
    conflictMetadataList: {ConflictMetadata}
    nextToken: string
end

local record GetMergeOptionsInput
    repositoryName: string
    sourceCommitSpecifier: string
    destinationCommitSpecifier: string
    conflictDetailLevel: string
    conflictResolutionStrategy: string
end

local record GetMergeOptionsOutput
    mergeOptions: {string}
    sourceCommitId: string
    destinationCommitId: string
    baseCommitId: string
end

local record GetPullRequestInput
    pullRequestId: string
end

local record GetPullRequestOutput
    pullRequest: PullRequest
end

local record GetPullRequestApprovalStatesInput
    pullRequestId: string
    revisionId: string
end

local record GetPullRequestApprovalStatesOutput
    approvals: {Approval}
end

local record GetPullRequestOverrideStateInput
    pullRequestId: string
    revisionId: string
end

local record GetPullRequestOverrideStateOutput
    overridden: boolean
    overrider: string
end

local record GetRepositoryInput
    repositoryName: string
end

local record GetRepositoryOutput
    repositoryMetadata: RepositoryMetadata
end

local record GetRepositoryTriggersInput
    repositoryName: string
end

local record GetRepositoryTriggersOutput
    configurationId: string
    triggers: {RepositoryTrigger}
end

local record ListApprovalRuleTemplatesInput
    nextToken: string
    maxResults: number
end

local record ListApprovalRuleTemplatesOutput
    approvalRuleTemplateNames: {string}
    nextToken: string
end

local record ListAssociatedApprovalRuleTemplatesForRepositoryInput
    repositoryName: string
    nextToken: string
    maxResults: number
end

local record ListAssociatedApprovalRuleTemplatesForRepositoryOutput
    approvalRuleTemplateNames: {string}
    nextToken: string
end

local record ListBranchesInput
    repositoryName: string
    nextToken: string
end

local record ListBranchesOutput
    branches: {string}
    nextToken: string
end

local record ListFileCommitHistoryInput
    repositoryName: string
    commitSpecifier: string
    filePath: string
    maxResults: number
    nextToken: string
end

local record ListFileCommitHistoryOutput
    revisionDag: {FileVersion}
    nextToken: string
end

local record ListPullRequestsInput
    repositoryName: string
    authorArn: string
    pullRequestStatus: string
    nextToken: string
    maxResults: number
end

local record ListPullRequestsOutput
    pullRequestIds: {string}
    nextToken: string
end

local record ListRepositoriesInput
    nextToken: string
    sortBy: string
    order: string
end

local record ListRepositoriesOutput
    repositories: {RepositoryNameIdPair}
    nextToken: string
end

local record ListRepositoriesForApprovalRuleTemplateInput
    approvalRuleTemplateName: string
    nextToken: string
    maxResults: number
end

local record ListRepositoriesForApprovalRuleTemplateOutput
    repositoryNames: {string}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
    nextToken: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
    nextToken: string
end

local record MergeBranchesByFastForwardInput
    repositoryName: string
    sourceCommitSpecifier: string
    destinationCommitSpecifier: string
    targetBranch: string
end

local record MergeBranchesByFastForwardOutput
    commitId: string
    treeId: string
end

local record MergeBranchesBySquashInput
    repositoryName: string
    sourceCommitSpecifier: string
    destinationCommitSpecifier: string
    targetBranch: string
    conflictDetailLevel: string
    conflictResolutionStrategy: string
    authorName: string
    email: string
    commitMessage: string
    keepEmptyFolders: boolean
    conflictResolution: ConflictResolution
end

local record MergeBranchesBySquashOutput
    commitId: string
    treeId: string
end

local record MergeBranchesByThreeWayInput
    repositoryName: string
    sourceCommitSpecifier: string
    destinationCommitSpecifier: string
    targetBranch: string
    conflictDetailLevel: string
    conflictResolutionStrategy: string
    authorName: string
    email: string
    commitMessage: string
    keepEmptyFolders: boolean
    conflictResolution: ConflictResolution
end

local record MergeBranchesByThreeWayOutput
    commitId: string
    treeId: string
end

local record MergePullRequestByFastForwardInput
    pullRequestId: string
    repositoryName: string
    sourceCommitId: string
end

local record MergePullRequestByFastForwardOutput
    pullRequest: PullRequest
end

local record MergePullRequestBySquashInput
    pullRequestId: string
    repositoryName: string
    sourceCommitId: string
    conflictDetailLevel: string
    conflictResolutionStrategy: string
    commitMessage: string
    authorName: string
    email: string
    keepEmptyFolders: boolean
    conflictResolution: ConflictResolution
end

local record MergePullRequestBySquashOutput
    pullRequest: PullRequest
end

local record MergePullRequestByThreeWayInput
    pullRequestId: string
    repositoryName: string
    sourceCommitId: string
    conflictDetailLevel: string
    conflictResolutionStrategy: string
    commitMessage: string
    authorName: string
    email: string
    keepEmptyFolders: boolean
    conflictResolution: ConflictResolution
end

local record MergePullRequestByThreeWayOutput
    pullRequest: PullRequest
end

local record OverridePullRequestApprovalRulesInput
    pullRequestId: string
    revisionId: string
    overrideStatus: string
end

local record OverridePullRequestApprovalRulesOutput
end

local record PostCommentForComparedCommitInput
    repositoryName: string
    beforeCommitId: string
    afterCommitId: string
    location: Location
    content: string
    clientRequestToken: string
end

local record PostCommentForComparedCommitOutput
    repositoryName: string
    beforeCommitId: string
    afterCommitId: string
    beforeBlobId: string
    afterBlobId: string
    location: Location
    comment: Comment
end

local record PostCommentForPullRequestInput
    pullRequestId: string
    repositoryName: string
    beforeCommitId: string
    afterCommitId: string
    location: Location
    content: string
    clientRequestToken: string
end

local record PostCommentForPullRequestOutput
    repositoryName: string
    pullRequestId: string
    beforeCommitId: string
    afterCommitId: string
    beforeBlobId: string
    afterBlobId: string
    location: Location
    comment: Comment
end

local record PostCommentReplyInput
    inReplyTo: string
    clientRequestToken: string
    content: string
end

local record PostCommentReplyOutput
    comment: Comment
end

local record PutCommentReactionInput
    commentId: string
    reactionValue: string
end

local record PutCommentReactionOutput
end

local record PutFileInput
    repositoryName: string
    branchName: string
    fileContent: string
    filePath: string
    fileMode: string
    parentCommitId: string
    commitMessage: string
    name: string
    email: string
end

local record PutFileOutput
    commitId: string
    blobId: string
    treeId: string
end

local record PutRepositoryTriggersInput
    repositoryName: string
    triggers: {RepositoryTrigger}
end

local record PutRepositoryTriggersOutput
    configurationId: string
end

local record TagResourceInput
    resourceArn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record TestRepositoryTriggersInput
    repositoryName: string
    triggers: {RepositoryTrigger}
end

local record TestRepositoryTriggersOutput
    successfulExecutions: {string}
    failedExecutions: {RepositoryTriggerExecutionFailure}
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateApprovalRuleTemplateContentInput
    approvalRuleTemplateName: string
    newRuleContent: string
    existingRuleContentSha256: string
end

local record UpdateApprovalRuleTemplateContentOutput
    approvalRuleTemplate: ApprovalRuleTemplate
end

local record UpdateApprovalRuleTemplateDescriptionInput
    approvalRuleTemplateName: string
    approvalRuleTemplateDescription: string
end

local record UpdateApprovalRuleTemplateDescriptionOutput
    approvalRuleTemplate: ApprovalRuleTemplate
end

local record UpdateApprovalRuleTemplateNameInput
    oldApprovalRuleTemplateName: string
    newApprovalRuleTemplateName: string
end

local record UpdateApprovalRuleTemplateNameOutput
    approvalRuleTemplate: ApprovalRuleTemplate
end

local record UpdateCommentInput
    commentId: string
    content: string
end

local record UpdateCommentOutput
    comment: Comment
end

local record UpdateDefaultBranchInput
    repositoryName: string
    defaultBranchName: string
end

local record UpdateDefaultBranchOutput
end

local record UpdatePullRequestApprovalRuleContentInput
    pullRequestId: string
    approvalRuleName: string
    existingRuleContentSha256: string
    newRuleContent: string
end

local record UpdatePullRequestApprovalRuleContentOutput
    approvalRule: ApprovalRule
end

local record UpdatePullRequestApprovalStateInput
    pullRequestId: string
    revisionId: string
    approvalState: string
end

local record UpdatePullRequestApprovalStateOutput
end

local record UpdatePullRequestDescriptionInput
    pullRequestId: string
    description: string
end

local record UpdatePullRequestDescriptionOutput
    pullRequest: PullRequest
end

local record UpdatePullRequestStatusInput
    pullRequestId: string
    pullRequestStatus: string
end

local record UpdatePullRequestStatusOutput
    pullRequest: PullRequest
end

local record UpdatePullRequestTitleInput
    pullRequestId: string
    title: string
end

local record UpdatePullRequestTitleOutput
    pullRequest: PullRequest
end

local record UpdateRepositoryDescriptionInput
    repositoryName: string
    repositoryDescription: string
end

local record UpdateRepositoryDescriptionOutput
end

local record UpdateRepositoryEncryptionKeyInput
    repositoryName: string
    kmsKeyId: string
end

local record UpdateRepositoryEncryptionKeyOutput
    repositoryId: string
    kmsKeyId: string
    originalKmsKeyId: string
end

local record UpdateRepositoryNameInput
    oldName: string
    newName: string
end

local record UpdateRepositoryNameOutput
end

local record ApprovalRuleTemplateDoesNotExistException
    message: string
end

local record ApprovalRuleTemplateNameRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidApprovalRuleTemplateNameException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record MaximumRuleTemplatesAssociatedWithRepositoryException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record ApprovalRuleTemplateDoesNotExistException
    message: string
end

local record ApprovalRuleTemplateNameRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidApprovalRuleTemplateNameException
    message: string
end

local record MaximumRepositoryNamesExceededException
    message: string
end

local record RepositoryNamesRequiredException
    message: string
end

local record CommitDoesNotExistException
    message: string
end

local record CommitRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidCommitException
    message: string
end

local record InvalidConflictDetailLevelException
    message: string
end

local record InvalidConflictResolutionStrategyException
    message: string
end

local record InvalidContinuationTokenException
    message: string
end

local record InvalidMaxConflictFilesException
    message: string
end

local record InvalidMaxMergeHunksException
    message: string
end

local record InvalidMergeOptionException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record MaximumFileContentToLoadExceededException
    message: string
end

local record MaximumItemsToCompareExceededException
    message: string
end

local record MergeOptionRequiredException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record TipsDivergenceExceededException
    message: string
end

local record ApprovalRuleTemplateDoesNotExistException
    message: string
end

local record ApprovalRuleTemplateNameRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidApprovalRuleTemplateNameException
    message: string
end

local record MaximumRepositoryNamesExceededException
    message: string
end

local record RepositoryNamesRequiredException
    message: string
end

local record CommitIdsLimitExceededException
    message: string
end

local record CommitIdsListRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record MaximumRepositoryNamesExceededException
    message: string
end

local record RepositoryNamesRequiredException
    message: string
end

local record ApprovalRuleTemplateContentRequiredException
    message: string
end

local record ApprovalRuleTemplateNameAlreadyExistsException
    message: string
end

local record ApprovalRuleTemplateNameRequiredException
    message: string
end

local record InvalidApprovalRuleTemplateContentException
    message: string
end

local record InvalidApprovalRuleTemplateDescriptionException
    message: string
end

local record InvalidApprovalRuleTemplateNameException
    message: string
end

local record NumberOfRuleTemplatesExceededException
    message: string
end

local record BranchNameExistsException
    message: string
end

local record BranchNameRequiredException
    message: string
end

local record CommitDoesNotExistException
    message: string
end

local record CommitIdRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidBranchNameException
    message: string
end

local record InvalidCommitIdException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record BranchDoesNotExistException
    message: string
end

local record BranchNameIsTagNameException
    message: string
end

local record BranchNameRequiredException
    message: string
end

local record CommitMessageLengthExceededException
    message: string
end

local record DirectoryNameConflictsWithFileNameException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record FileContentAndSourceFileSpecifiedException
    message: string
end

local record FileContentSizeLimitExceededException
    message: string
end

local record FileDoesNotExistException
    message: string
end

local record FileEntryRequiredException
    message: string
end

local record FileModeRequiredException
    message: string
end

local record FileNameConflictsWithDirectoryNameException
    message: string
end

local record FilePathConflictsWithSubmodulePathException
    message: string
end

local record FolderContentSizeLimitExceededException
    message: string
end

local record InvalidBranchNameException
    message: string
end

local record InvalidDeletionParameterException
    message: string
end

local record InvalidEmailException
    message: string
end

local record InvalidFileModeException
    message: string
end

local record InvalidParentCommitIdException
    message: string
end

local record InvalidPathException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record MaximumFileEntriesExceededException
    message: string
end

local record NameLengthExceededException
    message: string
end

local record NoChangeException
    message: string
end

local record ParentCommitDoesNotExistException
    message: string
end

local record ParentCommitIdOutdatedException
    message: string
end

local record ParentCommitIdRequiredException
    message: string
end

local record PathRequiredException
    message: string
end

local record PutFileEntryConflictException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record RestrictedSourceFileException
    message: string
end

local record SamePathRequestException
    message: string
end

local record SourceFileOrContentRequiredException
    message: string
end

local record ClientRequestTokenRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record IdempotencyParameterMismatchException
    message: string
end

local record InvalidClientRequestTokenException
    message: string
end

local record InvalidDescriptionException
    message: string
end

local record InvalidReferenceNameException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record InvalidTargetException
    message: string
end

local record InvalidTargetsException
    message: string
end

local record InvalidTitleException
    message: string
end

local record MaximumOpenPullRequestsExceededException
    message: string
end

local record MultipleRepositoriesInPullRequestException
    message: string
end

local record ReferenceDoesNotExistException
    message: string
end

local record ReferenceNameRequiredException
    message: string
end

local record ReferenceTypeNotSupportedException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record SourceAndDestinationAreSameException
    message: string
end

local record TargetRequiredException
    message: string
end

local record TargetsRequiredException
    message: string
end

local record TitleRequiredException
    message: string
end

local record ApprovalRuleContentRequiredException
    message: string
end

local record ApprovalRuleNameAlreadyExistsException
    message: string
end

local record ApprovalRuleNameRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidApprovalRuleContentException
    message: string
end

local record InvalidApprovalRuleNameException
    message: string
end

local record InvalidPullRequestIdException
    message: string
end

local record NumberOfRulesExceededException
    message: string
end

local record PullRequestAlreadyClosedException
    message: string
end

local record PullRequestDoesNotExistException
    message: string
end

local record PullRequestIdRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyInvalidIdException
    message: string
end

local record EncryptionKeyInvalidUsageException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidRepositoryDescriptionException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record InvalidSystemTagUsageException
    message: string
end

local record InvalidTagsMapException
    message: string
end

local record OperationNotAllowedException
    message: string
end

local record RepositoryLimitExceededException
    message: string
end

local record RepositoryNameExistsException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record TagPolicyException
    message: string
end

local record TooManyTagsException
    message: string
end

local record CommitDoesNotExistException
    message: string
end

local record CommitMessageLengthExceededException
    message: string
end

local record CommitRequiredException
    message: string
end

local record ConcurrentReferenceUpdateException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record FileContentSizeLimitExceededException
    message: string
end

local record FileModeRequiredException
    message: string
end

local record FolderContentSizeLimitExceededException
    message: string
end

local record InvalidCommitException
    message: string
end

local record InvalidConflictDetailLevelException
    message: string
end

local record InvalidConflictResolutionException
    message: string
end

local record InvalidConflictResolutionStrategyException
    message: string
end

local record InvalidEmailException
    message: string
end

local record InvalidFileModeException
    message: string
end

local record InvalidMergeOptionException
    message: string
end

local record InvalidPathException
    message: string
end

local record InvalidReplacementContentException
    message: string
end

local record InvalidReplacementTypeException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record ManualMergeRequiredException
    message: string
end

local record MaximumConflictResolutionEntriesExceededException
    message: string
end

local record MaximumFileContentToLoadExceededException
    message: string
end

local record MaximumItemsToCompareExceededException
    message: string
end

local record MergeOptionRequiredException
    message: string
end

local record MultipleConflictResolutionEntriesException
    message: string
end

local record NameLengthExceededException
    message: string
end

local record PathRequiredException
    message: string
end

local record ReplacementContentRequiredException
    message: string
end

local record ReplacementTypeRequiredException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record TipsDivergenceExceededException
    message: string
end

local record ApprovalRuleTemplateInUseException
    message: string
end

local record ApprovalRuleTemplateNameRequiredException
    message: string
end

local record InvalidApprovalRuleTemplateNameException
    message: string
end

local record BranchNameRequiredException
    message: string
end

local record DefaultBranchCannotBeDeletedException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidBranchNameException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record CommentDeletedException
    message: string
end

local record CommentDoesNotExistException
    message: string
end

local record CommentIdRequiredException
    message: string
end

local record InvalidCommentIdException
    message: string
end

local record BranchDoesNotExistException
    message: string
end

local record BranchNameIsTagNameException
    message: string
end

local record BranchNameRequiredException
    message: string
end

local record CommitMessageLengthExceededException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record FileDoesNotExistException
    message: string
end

local record InvalidBranchNameException
    message: string
end

local record InvalidEmailException
    message: string
end

local record InvalidParentCommitIdException
    message: string
end

local record InvalidPathException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record NameLengthExceededException
    message: string
end

local record ParentCommitDoesNotExistException
    message: string
end

local record ParentCommitIdOutdatedException
    message: string
end

local record ParentCommitIdRequiredException
    message: string
end

local record PathRequiredException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record ApprovalRuleNameRequiredException
    message: string
end

local record CannotDeleteApprovalRuleFromTemplateException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidApprovalRuleNameException
    message: string
end

local record InvalidPullRequestIdException
    message: string
end

local record PullRequestAlreadyClosedException
    message: string
end

local record PullRequestDoesNotExistException
    message: string
end

local record PullRequestIdRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record CommitDoesNotExistException
    message: string
end

local record CommitRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record FileDoesNotExistException
    message: string
end

local record InvalidCommitException
    message: string
end

local record InvalidConflictDetailLevelException
    message: string
end

local record InvalidConflictResolutionStrategyException
    message: string
end

local record InvalidContinuationTokenException
    message: string
end

local record InvalidMaxMergeHunksException
    message: string
end

local record InvalidMergeOptionException
    message: string
end

local record InvalidPathException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record MaximumFileContentToLoadExceededException
    message: string
end

local record MaximumItemsToCompareExceededException
    message: string
end

local record MergeOptionRequiredException
    message: string
end

local record PathRequiredException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record TipsDivergenceExceededException
    message: string
end

local record ActorDoesNotExistException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidActorArnException
    message: string
end

local record InvalidContinuationTokenException
    message: string
end

local record InvalidMaxResultsException
    message: string
end

local record InvalidPullRequestEventTypeException
    message: string
end

local record InvalidPullRequestIdException
    message: string
end

local record PullRequestDoesNotExistException
    message: string
end

local record PullRequestIdRequiredException
    message: string
end

local record ApprovalRuleTemplateDoesNotExistException
    message: string
end

local record ApprovalRuleTemplateNameRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidApprovalRuleTemplateNameException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidPullRequestIdException
    message: string
end

local record InvalidRevisionIdException
    message: string
end

local record PullRequestDoesNotExistException
    message: string
end

local record PullRequestIdRequiredException
    message: string
end

local record RevisionIdRequiredException
    message: string
end

local record RevisionNotCurrentException
    message: string
end

local record ApprovalRuleTemplateDoesNotExistException
    message: string
end

local record ApprovalRuleTemplateNameRequiredException
    message: string
end

local record InvalidApprovalRuleTemplateNameException
    message: string
end

local record BlobIdDoesNotExistException
    message: string
end

local record BlobIdRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record FileTooLargeException
    message: string
end

local record InvalidBlobIdException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record BranchDoesNotExistException
    message: string
end

local record BranchNameRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidBranchNameException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record CommentDeletedException
    message: string
end

local record CommentDoesNotExistException
    message: string
end

local record CommentIdRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidCommentIdException
    message: string
end

local record CommentDeletedException
    message: string
end

local record CommentDoesNotExistException
    message: string
end

local record CommentIdRequiredException
    message: string
end

local record InvalidCommentIdException
    message: string
end

local record InvalidContinuationTokenException
    message: string
end

local record InvalidMaxResultsException
    message: string
end

local record InvalidReactionUserArnException
    message: string
end

local record CommitDoesNotExistException
    message: string
end

local record CommitIdRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidCommitIdException
    message: string
end

local record InvalidContinuationTokenException
    message: string
end

local record InvalidMaxResultsException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record CommitDoesNotExistException
    message: string
end

local record CommitIdRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidCommitIdException
    message: string
end

local record InvalidContinuationTokenException
    message: string
end

local record InvalidMaxResultsException
    message: string
end

local record InvalidPullRequestIdException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record PullRequestDoesNotExistException
    message: string
end

local record PullRequestIdRequiredException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record RepositoryNotAssociatedWithPullRequestException
    message: string
end

local record CommitIdDoesNotExistException
    message: string
end

local record CommitIdRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidCommitIdException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record CommitDoesNotExistException
    message: string
end

local record CommitRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidCommitException
    message: string
end

local record InvalidCommitIdException
    message: string
end

local record InvalidContinuationTokenException
    message: string
end

local record InvalidMaxResultsException
    message: string
end

local record InvalidPathException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record PathDoesNotExistException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record CommitDoesNotExistException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record FileDoesNotExistException
    message: string
end

local record FileTooLargeException
    message: string
end

local record InvalidCommitException
    message: string
end

local record InvalidPathException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record PathRequiredException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record CommitDoesNotExistException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record FolderDoesNotExistException
    message: string
end

local record InvalidCommitException
    message: string
end

local record InvalidPathException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record PathRequiredException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record CommitDoesNotExistException
    message: string
end

local record CommitRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidCommitException
    message: string
end

local record InvalidConflictDetailLevelException
    message: string
end

local record InvalidConflictResolutionStrategyException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record CommitDoesNotExistException
    message: string
end

local record CommitRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidCommitException
    message: string
end

local record InvalidConflictDetailLevelException
    message: string
end

local record InvalidConflictResolutionStrategyException
    message: string
end

local record InvalidContinuationTokenException
    message: string
end

local record InvalidDestinationCommitSpecifierException
    message: string
end

local record InvalidMaxConflictFilesException
    message: string
end

local record InvalidMergeOptionException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record InvalidSourceCommitSpecifierException
    message: string
end

local record MaximumFileContentToLoadExceededException
    message: string
end

local record MaximumItemsToCompareExceededException
    message: string
end

local record MergeOptionRequiredException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record TipsDivergenceExceededException
    message: string
end

local record CommitDoesNotExistException
    message: string
end

local record CommitRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidCommitException
    message: string
end

local record InvalidConflictDetailLevelException
    message: string
end

local record InvalidConflictResolutionStrategyException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record MaximumFileContentToLoadExceededException
    message: string
end

local record MaximumItemsToCompareExceededException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record TipsDivergenceExceededException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidPullRequestIdException
    message: string
end

local record PullRequestDoesNotExistException
    message: string
end

local record PullRequestIdRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidPullRequestIdException
    message: string
end

local record InvalidRevisionIdException
    message: string
end

local record PullRequestDoesNotExistException
    message: string
end

local record PullRequestIdRequiredException
    message: string
end

local record RevisionIdRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidPullRequestIdException
    message: string
end

local record InvalidRevisionIdException
    message: string
end

local record PullRequestDoesNotExistException
    message: string
end

local record PullRequestIdRequiredException
    message: string
end

local record RevisionIdRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record InvalidContinuationTokenException
    message: string
end

local record InvalidMaxResultsException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidContinuationTokenException
    message: string
end

local record InvalidMaxResultsException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidContinuationTokenException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record CommitDoesNotExistException
    message: string
end

local record CommitRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidCommitException
    message: string
end

local record InvalidContinuationTokenException
    message: string
end

local record InvalidMaxResultsException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record TipsDivergenceExceededException
    message: string
end

local record AuthorDoesNotExistException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidAuthorArnException
    message: string
end

local record InvalidContinuationTokenException
    message: string
end

local record InvalidMaxResultsException
    message: string
end

local record InvalidPullRequestStatusException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record InvalidContinuationTokenException
    message: string
end

local record InvalidOrderException
    message: string
end

local record InvalidSortByException
    message: string
end

local record ApprovalRuleTemplateDoesNotExistException
    message: string
end

local record ApprovalRuleTemplateNameRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidApprovalRuleTemplateNameException
    message: string
end

local record InvalidContinuationTokenException
    message: string
end

local record InvalidMaxResultsException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record InvalidResourceArnException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record ResourceArnRequiredException
    message: string
end

local record BranchDoesNotExistException
    message: string
end

local record BranchNameIsTagNameException
    message: string
end

local record BranchNameRequiredException
    message: string
end

local record CommitDoesNotExistException
    message: string
end

local record CommitRequiredException
    message: string
end

local record ConcurrentReferenceUpdateException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidBranchNameException
    message: string
end

local record InvalidCommitException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record InvalidTargetBranchException
    message: string
end

local record ManualMergeRequiredException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record TipsDivergenceExceededException
    message: string
end

local record BranchDoesNotExistException
    message: string
end

local record BranchNameIsTagNameException
    message: string
end

local record BranchNameRequiredException
    message: string
end

local record CommitDoesNotExistException
    message: string
end

local record CommitMessageLengthExceededException
    message: string
end

local record CommitRequiredException
    message: string
end

local record ConcurrentReferenceUpdateException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record FileContentSizeLimitExceededException
    message: string
end

local record FileModeRequiredException
    message: string
end

local record FolderContentSizeLimitExceededException
    message: string
end

local record InvalidBranchNameException
    message: string
end

local record InvalidCommitException
    message: string
end

local record InvalidConflictDetailLevelException
    message: string
end

local record InvalidConflictResolutionException
    message: string
end

local record InvalidConflictResolutionStrategyException
    message: string
end

local record InvalidEmailException
    message: string
end

local record InvalidFileModeException
    message: string
end

local record InvalidPathException
    message: string
end

local record InvalidReplacementContentException
    message: string
end

local record InvalidReplacementTypeException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record InvalidTargetBranchException
    message: string
end

local record ManualMergeRequiredException
    message: string
end

local record MaximumConflictResolutionEntriesExceededException
    message: string
end

local record MaximumFileContentToLoadExceededException
    message: string
end

local record MaximumItemsToCompareExceededException
    message: string
end

local record MultipleConflictResolutionEntriesException
    message: string
end

local record NameLengthExceededException
    message: string
end

local record PathRequiredException
    message: string
end

local record ReplacementContentRequiredException
    message: string
end

local record ReplacementTypeRequiredException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record TipsDivergenceExceededException
    message: string
end

local record BranchDoesNotExistException
    message: string
end

local record BranchNameIsTagNameException
    message: string
end

local record BranchNameRequiredException
    message: string
end

local record CommitDoesNotExistException
    message: string
end

local record CommitMessageLengthExceededException
    message: string
end

local record CommitRequiredException
    message: string
end

local record ConcurrentReferenceUpdateException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record FileContentSizeLimitExceededException
    message: string
end

local record FileModeRequiredException
    message: string
end

local record FolderContentSizeLimitExceededException
    message: string
end

local record InvalidBranchNameException
    message: string
end

local record InvalidCommitException
    message: string
end

local record InvalidConflictDetailLevelException
    message: string
end

local record InvalidConflictResolutionException
    message: string
end

local record InvalidConflictResolutionStrategyException
    message: string
end

local record InvalidEmailException
    message: string
end

local record InvalidFileModeException
    message: string
end

local record InvalidPathException
    message: string
end

local record InvalidReplacementContentException
    message: string
end

local record InvalidReplacementTypeException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record InvalidTargetBranchException
    message: string
end

local record ManualMergeRequiredException
    message: string
end

local record MaximumConflictResolutionEntriesExceededException
    message: string
end

local record MaximumFileContentToLoadExceededException
    message: string
end

local record MaximumItemsToCompareExceededException
    message: string
end

local record MultipleConflictResolutionEntriesException
    message: string
end

local record NameLengthExceededException
    message: string
end

local record PathRequiredException
    message: string
end

local record ReplacementContentRequiredException
    message: string
end

local record ReplacementTypeRequiredException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record TipsDivergenceExceededException
    message: string
end

local record ConcurrentReferenceUpdateException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidCommitIdException
    message: string
end

local record InvalidPullRequestIdException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record ManualMergeRequiredException
    message: string
end

local record PullRequestAlreadyClosedException
    message: string
end

local record PullRequestApprovalRulesNotSatisfiedException
    message: string
end

local record PullRequestDoesNotExistException
    message: string
end

local record PullRequestIdRequiredException
    message: string
end

local record ReferenceDoesNotExistException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record RepositoryNotAssociatedWithPullRequestException
    message: string
end

local record TipOfSourceReferenceIsDifferentException
    message: string
end

local record CommitMessageLengthExceededException
    message: string
end

local record ConcurrentReferenceUpdateException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record FileContentSizeLimitExceededException
    message: string
end

local record FolderContentSizeLimitExceededException
    message: string
end

local record InvalidCommitIdException
    message: string
end

local record InvalidConflictDetailLevelException
    message: string
end

local record InvalidConflictResolutionException
    message: string
end

local record InvalidConflictResolutionStrategyException
    message: string
end

local record InvalidEmailException
    message: string
end

local record InvalidFileModeException
    message: string
end

local record InvalidPathException
    message: string
end

local record InvalidPullRequestIdException
    message: string
end

local record InvalidReplacementContentException
    message: string
end

local record InvalidReplacementTypeException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record ManualMergeRequiredException
    message: string
end

local record MaximumConflictResolutionEntriesExceededException
    message: string
end

local record MaximumFileContentToLoadExceededException
    message: string
end

local record MaximumItemsToCompareExceededException
    message: string
end

local record MultipleConflictResolutionEntriesException
    message: string
end

local record NameLengthExceededException
    message: string
end

local record PathRequiredException
    message: string
end

local record PullRequestAlreadyClosedException
    message: string
end

local record PullRequestApprovalRulesNotSatisfiedException
    message: string
end

local record PullRequestDoesNotExistException
    message: string
end

local record PullRequestIdRequiredException
    message: string
end

local record ReplacementContentRequiredException
    message: string
end

local record ReplacementTypeRequiredException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record RepositoryNotAssociatedWithPullRequestException
    message: string
end

local record TipOfSourceReferenceIsDifferentException
    message: string
end

local record TipsDivergenceExceededException
    message: string
end

local record CommitMessageLengthExceededException
    message: string
end

local record ConcurrentReferenceUpdateException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record FileContentSizeLimitExceededException
    message: string
end

local record FolderContentSizeLimitExceededException
    message: string
end

local record InvalidCommitIdException
    message: string
end

local record InvalidConflictDetailLevelException
    message: string
end

local record InvalidConflictResolutionException
    message: string
end

local record InvalidConflictResolutionStrategyException
    message: string
end

local record InvalidEmailException
    message: string
end

local record InvalidFileModeException
    message: string
end

local record InvalidPathException
    message: string
end

local record InvalidPullRequestIdException
    message: string
end

local record InvalidReplacementContentException
    message: string
end

local record InvalidReplacementTypeException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record ManualMergeRequiredException
    message: string
end

local record MaximumConflictResolutionEntriesExceededException
    message: string
end

local record MaximumFileContentToLoadExceededException
    message: string
end

local record MaximumItemsToCompareExceededException
    message: string
end

local record MultipleConflictResolutionEntriesException
    message: string
end

local record NameLengthExceededException
    message: string
end

local record PathRequiredException
    message: string
end

local record PullRequestAlreadyClosedException
    message: string
end

local record PullRequestApprovalRulesNotSatisfiedException
    message: string
end

local record PullRequestDoesNotExistException
    message: string
end

local record PullRequestIdRequiredException
    message: string
end

local record ReplacementContentRequiredException
    message: string
end

local record ReplacementTypeRequiredException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record RepositoryNotAssociatedWithPullRequestException
    message: string
end

local record TipOfSourceReferenceIsDifferentException
    message: string
end

local record TipsDivergenceExceededException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidOverrideStatusException
    message: string
end

local record InvalidPullRequestIdException
    message: string
end

local record InvalidRevisionIdException
    message: string
end

local record OverrideAlreadySetException
    message: string
end

local record OverrideStatusRequiredException
    message: string
end

local record PullRequestAlreadyClosedException
    message: string
end

local record PullRequestDoesNotExistException
    message: string
end

local record PullRequestIdRequiredException
    message: string
end

local record RevisionIdRequiredException
    message: string
end

local record RevisionNotCurrentException
    message: string
end

local record BeforeCommitIdAndAfterCommitIdAreSameException
    message: string
end

local record ClientRequestTokenRequiredException
    message: string
end

local record CommentContentRequiredException
    message: string
end

local record CommentContentSizeLimitExceededException
    message: string
end

local record CommitDoesNotExistException
    message: string
end

local record CommitIdRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record IdempotencyParameterMismatchException
    message: string
end

local record InvalidClientRequestTokenException
    message: string
end

local record InvalidCommitIdException
    message: string
end

local record InvalidFileLocationException
    message: string
end

local record InvalidFilePositionException
    message: string
end

local record InvalidPathException
    message: string
end

local record InvalidRelativeFileVersionEnumException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record PathDoesNotExistException
    message: string
end

local record PathRequiredException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record BeforeCommitIdAndAfterCommitIdAreSameException
    message: string
end

local record ClientRequestTokenRequiredException
    message: string
end

local record CommentContentRequiredException
    message: string
end

local record CommentContentSizeLimitExceededException
    message: string
end

local record CommitDoesNotExistException
    message: string
end

local record CommitIdRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record IdempotencyParameterMismatchException
    message: string
end

local record InvalidClientRequestTokenException
    message: string
end

local record InvalidCommitIdException
    message: string
end

local record InvalidFileLocationException
    message: string
end

local record InvalidFilePositionException
    message: string
end

local record InvalidPathException
    message: string
end

local record InvalidPullRequestIdException
    message: string
end

local record InvalidRelativeFileVersionEnumException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record PathDoesNotExistException
    message: string
end

local record PathRequiredException
    message: string
end

local record PullRequestDoesNotExistException
    message: string
end

local record PullRequestIdRequiredException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record RepositoryNotAssociatedWithPullRequestException
    message: string
end

local record ClientRequestTokenRequiredException
    message: string
end

local record CommentContentRequiredException
    message: string
end

local record CommentContentSizeLimitExceededException
    message: string
end

local record CommentDoesNotExistException
    message: string
end

local record CommentIdRequiredException
    message: string
end

local record IdempotencyParameterMismatchException
    message: string
end

local record InvalidClientRequestTokenException
    message: string
end

local record InvalidCommentIdException
    message: string
end

local record CommentDeletedException
    message: string
end

local record CommentDoesNotExistException
    message: string
end

local record CommentIdRequiredException
    message: string
end

local record InvalidCommentIdException
    message: string
end

local record InvalidReactionValueException
    message: string
end

local record ReactionLimitExceededException
    message: string
end

local record ReactionValueRequiredException
    message: string
end

local record BranchDoesNotExistException
    message: string
end

local record BranchNameIsTagNameException
    message: string
end

local record BranchNameRequiredException
    message: string
end

local record CommitMessageLengthExceededException
    message: string
end

local record DirectoryNameConflictsWithFileNameException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record FileContentRequiredException
    message: string
end

local record FileContentSizeLimitExceededException
    message: string
end

local record FileNameConflictsWithDirectoryNameException
    message: string
end

local record FilePathConflictsWithSubmodulePathException
    message: string
end

local record FolderContentSizeLimitExceededException
    message: string
end

local record InvalidBranchNameException
    message: string
end

local record InvalidDeletionParameterException
    message: string
end

local record InvalidEmailException
    message: string
end

local record InvalidFileModeException
    message: string
end

local record InvalidParentCommitIdException
    message: string
end

local record InvalidPathException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record NameLengthExceededException
    message: string
end

local record ParentCommitDoesNotExistException
    message: string
end

local record ParentCommitIdOutdatedException
    message: string
end

local record ParentCommitIdRequiredException
    message: string
end

local record PathRequiredException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record SameFileContentException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record InvalidRepositoryTriggerBranchNameException
    message: string
end

local record InvalidRepositoryTriggerCustomDataException
    message: string
end

local record InvalidRepositoryTriggerDestinationArnException
    message: string
end

local record InvalidRepositoryTriggerEventsException
    message: string
end

local record InvalidRepositoryTriggerNameException
    message: string
end

local record InvalidRepositoryTriggerRegionException
    message: string
end

local record MaximumBranchesExceededException
    message: string
end

local record MaximumRepositoryTriggersExceededException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record RepositoryTriggerBranchNameListRequiredException
    message: string
end

local record RepositoryTriggerDestinationArnRequiredException
    message: string
end

local record RepositoryTriggerEventsListRequiredException
    message: string
end

local record RepositoryTriggerNameRequiredException
    message: string
end

local record RepositoryTriggersListRequiredException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record InvalidResourceArnException
    message: string
end

local record InvalidSystemTagUsageException
    message: string
end

local record InvalidTagsMapException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record ResourceArnRequiredException
    message: string
end

local record TagPolicyException
    message: string
end

local record TagsMapRequiredException
    message: string
end

local record TooManyTagsException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record InvalidRepositoryTriggerBranchNameException
    message: string
end

local record InvalidRepositoryTriggerCustomDataException
    message: string
end

local record InvalidRepositoryTriggerDestinationArnException
    message: string
end

local record InvalidRepositoryTriggerEventsException
    message: string
end

local record InvalidRepositoryTriggerNameException
    message: string
end

local record InvalidRepositoryTriggerRegionException
    message: string
end

local record MaximumBranchesExceededException
    message: string
end

local record MaximumRepositoryTriggersExceededException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record RepositoryTriggerBranchNameListRequiredException
    message: string
end

local record RepositoryTriggerDestinationArnRequiredException
    message: string
end

local record RepositoryTriggerEventsListRequiredException
    message: string
end

local record RepositoryTriggerNameRequiredException
    message: string
end

local record RepositoryTriggersListRequiredException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record InvalidResourceArnException
    message: string
end

local record InvalidSystemTagUsageException
    message: string
end

local record InvalidTagKeysListException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record ResourceArnRequiredException
    message: string
end

local record TagKeysListRequiredException
    message: string
end

local record TagPolicyException
    message: string
end

local record TooManyTagsException
    message: string
end

local record ApprovalRuleTemplateContentRequiredException
    message: string
end

local record ApprovalRuleTemplateDoesNotExistException
    message: string
end

local record ApprovalRuleTemplateNameRequiredException
    message: string
end

local record InvalidApprovalRuleTemplateContentException
    message: string
end

local record InvalidApprovalRuleTemplateNameException
    message: string
end

local record InvalidRuleContentSha256Exception
    message: string
end

local record ApprovalRuleTemplateDoesNotExistException
    message: string
end

local record ApprovalRuleTemplateNameRequiredException
    message: string
end

local record InvalidApprovalRuleTemplateDescriptionException
    message: string
end

local record InvalidApprovalRuleTemplateNameException
    message: string
end

local record ApprovalRuleTemplateDoesNotExistException
    message: string
end

local record ApprovalRuleTemplateNameAlreadyExistsException
    message: string
end

local record ApprovalRuleTemplateNameRequiredException
    message: string
end

local record InvalidApprovalRuleTemplateNameException
    message: string
end

local record CommentContentRequiredException
    message: string
end

local record CommentContentSizeLimitExceededException
    message: string
end

local record CommentDeletedException
    message: string
end

local record CommentDoesNotExistException
    message: string
end

local record CommentIdRequiredException
    message: string
end

local record CommentNotCreatedByCallerException
    message: string
end

local record InvalidCommentIdException
    message: string
end

local record BranchDoesNotExistException
    message: string
end

local record BranchNameRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidBranchNameException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record ApprovalRuleContentRequiredException
    message: string
end

local record ApprovalRuleDoesNotExistException
    message: string
end

local record ApprovalRuleNameRequiredException
    message: string
end

local record CannotModifyApprovalRuleFromTemplateException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidApprovalRuleContentException
    message: string
end

local record InvalidApprovalRuleNameException
    message: string
end

local record InvalidPullRequestIdException
    message: string
end

local record InvalidRuleContentSha256Exception
    message: string
end

local record PullRequestAlreadyClosedException
    message: string
end

local record PullRequestDoesNotExistException
    message: string
end

local record PullRequestIdRequiredException
    message: string
end

local record ApprovalStateRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidApprovalStateException
    message: string
end

local record InvalidPullRequestIdException
    message: string
end

local record InvalidRevisionIdException
    message: string
end

local record MaximumNumberOfApprovalsExceededException
    message: string
end

local record PullRequestAlreadyClosedException
    message: string
end

local record PullRequestCannotBeApprovedByAuthorException
    message: string
end

local record PullRequestDoesNotExistException
    message: string
end

local record PullRequestIdRequiredException
    message: string
end

local record RevisionIdRequiredException
    message: string
end

local record RevisionNotCurrentException
    message: string
end

local record InvalidDescriptionException
    message: string
end

local record InvalidPullRequestIdException
    message: string
end

local record PullRequestAlreadyClosedException
    message: string
end

local record PullRequestDoesNotExistException
    message: string
end

local record PullRequestIdRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidPullRequestIdException
    message: string
end

local record InvalidPullRequestStatusException
    message: string
end

local record InvalidPullRequestStatusUpdateException
    message: string
end

local record PullRequestDoesNotExistException
    message: string
end

local record PullRequestIdRequiredException
    message: string
end

local record PullRequestStatusRequiredException
    message: string
end

local record InvalidPullRequestIdException
    message: string
end

local record InvalidTitleException
    message: string
end

local record PullRequestAlreadyClosedException
    message: string
end

local record PullRequestDoesNotExistException
    message: string
end

local record PullRequestIdRequiredException
    message: string
end

local record TitleRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidRepositoryDescriptionException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record EncryptionIntegrityChecksFailedException
    message: string
end

local record EncryptionKeyAccessDeniedException
    message: string
end

local record EncryptionKeyDisabledException
    message: string
end

local record EncryptionKeyInvalidIdException
    message: string
end

local record EncryptionKeyInvalidUsageException
    message: string
end

local record EncryptionKeyNotFoundException
    message: string
end

local record EncryptionKeyRequiredException
    message: string
end

local record EncryptionKeyUnavailableException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local record InvalidRepositoryNameException
    message: string
end

local record RepositoryDoesNotExistException
    message: string
end

local record RepositoryNameExistsException
    message: string
end

local record RepositoryNameRequiredException
    message: string
end

local type MergeOptionTypeEnum = "FAST_FORWARD_MERGE" | "SQUASH_MERGE" | "THREE_WAY_MERGE"

local type SortByEnum = "repositoryName" | "lastModifiedDate"

local type OrderEnum = "ascending" | "descending"

local type PullRequestStatusEnum = "OPEN" | "CLOSED"

local type ConflictDetailLevelTypeEnum = "FILE_LEVEL" | "LINE_LEVEL"

local type OverrideStatus = "OVERRIDE" | "REVOKE"

local type FileModeTypeEnum = "EXECUTABLE" | "NORMAL" | "SYMLINK"

local type ApprovalState = "APPROVE" | "REVOKE"

local type ConflictResolutionStrategyTypeEnum = "NONE" | "ACCEPT_SOURCE" | "ACCEPT_DESTINATION" | "AUTOMERGE"

local type PullRequestEventType = "PULL_REQUEST_CREATED" | "PULL_REQUEST_STATUS_CHANGED" | "PULL_REQUEST_SOURCE_REFERENCE_UPDATED" | "PULL_REQUEST_MERGE_STATE_CHANGED" | "PULL_REQUEST_APPROVAL_RULE_CREATED" | "PULL_REQUEST_APPROVAL_RULE_UPDATED" | "PULL_REQUEST_APPROVAL_RULE_DELETED" | "PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN" | "PULL_REQUEST_APPROVAL_STATE_CHANGED"

local record M
    AssociateApprovalRuleTemplateWithRepositoryInput: AssociateApprovalRuleTemplateWithRepositoryInput
    AssociateApprovalRuleTemplateWithRepositoryOutput: AssociateApprovalRuleTemplateWithRepositoryOutput
    BatchAssociateApprovalRuleTemplateWithRepositoriesInput: BatchAssociateApprovalRuleTemplateWithRepositoriesInput
    BatchAssociateApprovalRuleTemplateWithRepositoriesOutput: BatchAssociateApprovalRuleTemplateWithRepositoriesOutput
    BatchDescribeMergeConflictsInput: BatchDescribeMergeConflictsInput
    BatchDescribeMergeConflictsOutput: BatchDescribeMergeConflictsOutput
    BatchDisassociateApprovalRuleTemplateFromRepositoriesInput: BatchDisassociateApprovalRuleTemplateFromRepositoriesInput
    BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput: BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput
    BatchGetCommitsInput: BatchGetCommitsInput
    BatchGetCommitsOutput: BatchGetCommitsOutput
    BatchGetRepositoriesInput: BatchGetRepositoriesInput
    BatchGetRepositoriesOutput: BatchGetRepositoriesOutput
    CreateApprovalRuleTemplateInput: CreateApprovalRuleTemplateInput
    CreateApprovalRuleTemplateOutput: CreateApprovalRuleTemplateOutput
    CreateBranchInput: CreateBranchInput
    CreateBranchOutput: CreateBranchOutput
    CreateCommitInput: CreateCommitInput
    CreateCommitOutput: CreateCommitOutput
    CreatePullRequestInput: CreatePullRequestInput
    CreatePullRequestOutput: CreatePullRequestOutput
    CreatePullRequestApprovalRuleInput: CreatePullRequestApprovalRuleInput
    CreatePullRequestApprovalRuleOutput: CreatePullRequestApprovalRuleOutput
    CreateRepositoryInput: CreateRepositoryInput
    CreateRepositoryOutput: CreateRepositoryOutput
    CreateUnreferencedMergeCommitInput: CreateUnreferencedMergeCommitInput
    CreateUnreferencedMergeCommitOutput: CreateUnreferencedMergeCommitOutput
    DeleteApprovalRuleTemplateInput: DeleteApprovalRuleTemplateInput
    DeleteApprovalRuleTemplateOutput: DeleteApprovalRuleTemplateOutput
    DeleteBranchInput: DeleteBranchInput
    DeleteBranchOutput: DeleteBranchOutput
    DeleteCommentContentInput: DeleteCommentContentInput
    DeleteCommentContentOutput: DeleteCommentContentOutput
    DeleteFileInput: DeleteFileInput
    DeleteFileOutput: DeleteFileOutput
    DeletePullRequestApprovalRuleInput: DeletePullRequestApprovalRuleInput
    DeletePullRequestApprovalRuleOutput: DeletePullRequestApprovalRuleOutput
    DeleteRepositoryInput: DeleteRepositoryInput
    DeleteRepositoryOutput: DeleteRepositoryOutput
    DescribeMergeConflictsInput: DescribeMergeConflictsInput
    DescribeMergeConflictsOutput: DescribeMergeConflictsOutput
    DescribePullRequestEventsInput: DescribePullRequestEventsInput
    DescribePullRequestEventsOutput: DescribePullRequestEventsOutput
    DisassociateApprovalRuleTemplateFromRepositoryInput: DisassociateApprovalRuleTemplateFromRepositoryInput
    DisassociateApprovalRuleTemplateFromRepositoryOutput: DisassociateApprovalRuleTemplateFromRepositoryOutput
    EvaluatePullRequestApprovalRulesInput: EvaluatePullRequestApprovalRulesInput
    EvaluatePullRequestApprovalRulesOutput: EvaluatePullRequestApprovalRulesOutput
    GetApprovalRuleTemplateInput: GetApprovalRuleTemplateInput
    GetApprovalRuleTemplateOutput: GetApprovalRuleTemplateOutput
    GetBlobInput: GetBlobInput
    GetBlobOutput: GetBlobOutput
    GetBranchInput: GetBranchInput
    GetBranchOutput: GetBranchOutput
    GetCommentInput: GetCommentInput
    GetCommentOutput: GetCommentOutput
    GetCommentReactionsInput: GetCommentReactionsInput
    GetCommentReactionsOutput: GetCommentReactionsOutput
    GetCommentsForComparedCommitInput: GetCommentsForComparedCommitInput
    GetCommentsForComparedCommitOutput: GetCommentsForComparedCommitOutput
    GetCommentsForPullRequestInput: GetCommentsForPullRequestInput
    GetCommentsForPullRequestOutput: GetCommentsForPullRequestOutput
    GetCommitInput: GetCommitInput
    GetCommitOutput: GetCommitOutput
    GetDifferencesInput: GetDifferencesInput
    GetDifferencesOutput: GetDifferencesOutput
    GetFileInput: GetFileInput
    GetFileOutput: GetFileOutput
    GetFolderInput: GetFolderInput
    GetFolderOutput: GetFolderOutput
    GetMergeCommitInput: GetMergeCommitInput
    GetMergeCommitOutput: GetMergeCommitOutput
    GetMergeConflictsInput: GetMergeConflictsInput
    GetMergeConflictsOutput: GetMergeConflictsOutput
    GetMergeOptionsInput: GetMergeOptionsInput
    GetMergeOptionsOutput: GetMergeOptionsOutput
    GetPullRequestInput: GetPullRequestInput
    GetPullRequestOutput: GetPullRequestOutput
    GetPullRequestApprovalStatesInput: GetPullRequestApprovalStatesInput
    GetPullRequestApprovalStatesOutput: GetPullRequestApprovalStatesOutput
    GetPullRequestOverrideStateInput: GetPullRequestOverrideStateInput
    GetPullRequestOverrideStateOutput: GetPullRequestOverrideStateOutput
    GetRepositoryInput: GetRepositoryInput
    GetRepositoryOutput: GetRepositoryOutput
    GetRepositoryTriggersInput: GetRepositoryTriggersInput
    GetRepositoryTriggersOutput: GetRepositoryTriggersOutput
    ListApprovalRuleTemplatesInput: ListApprovalRuleTemplatesInput
    ListApprovalRuleTemplatesOutput: ListApprovalRuleTemplatesOutput
    ListAssociatedApprovalRuleTemplatesForRepositoryInput: ListAssociatedApprovalRuleTemplatesForRepositoryInput
    ListAssociatedApprovalRuleTemplatesForRepositoryOutput: ListAssociatedApprovalRuleTemplatesForRepositoryOutput
    ListBranchesInput: ListBranchesInput
    ListBranchesOutput: ListBranchesOutput
    ListFileCommitHistoryInput: ListFileCommitHistoryInput
    ListFileCommitHistoryOutput: ListFileCommitHistoryOutput
    ListPullRequestsInput: ListPullRequestsInput
    ListPullRequestsOutput: ListPullRequestsOutput
    ListRepositoriesInput: ListRepositoriesInput
    ListRepositoriesOutput: ListRepositoriesOutput
    ListRepositoriesForApprovalRuleTemplateInput: ListRepositoriesForApprovalRuleTemplateInput
    ListRepositoriesForApprovalRuleTemplateOutput: ListRepositoriesForApprovalRuleTemplateOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    MergeBranchesByFastForwardInput: MergeBranchesByFastForwardInput
    MergeBranchesByFastForwardOutput: MergeBranchesByFastForwardOutput
    MergeBranchesBySquashInput: MergeBranchesBySquashInput
    MergeBranchesBySquashOutput: MergeBranchesBySquashOutput
    MergeBranchesByThreeWayInput: MergeBranchesByThreeWayInput
    MergeBranchesByThreeWayOutput: MergeBranchesByThreeWayOutput
    MergePullRequestByFastForwardInput: MergePullRequestByFastForwardInput
    MergePullRequestByFastForwardOutput: MergePullRequestByFastForwardOutput
    MergePullRequestBySquashInput: MergePullRequestBySquashInput
    MergePullRequestBySquashOutput: MergePullRequestBySquashOutput
    MergePullRequestByThreeWayInput: MergePullRequestByThreeWayInput
    MergePullRequestByThreeWayOutput: MergePullRequestByThreeWayOutput
    OverridePullRequestApprovalRulesInput: OverridePullRequestApprovalRulesInput
    OverridePullRequestApprovalRulesOutput: OverridePullRequestApprovalRulesOutput
    PostCommentForComparedCommitInput: PostCommentForComparedCommitInput
    PostCommentForComparedCommitOutput: PostCommentForComparedCommitOutput
    PostCommentForPullRequestInput: PostCommentForPullRequestInput
    PostCommentForPullRequestOutput: PostCommentForPullRequestOutput
    PostCommentReplyInput: PostCommentReplyInput
    PostCommentReplyOutput: PostCommentReplyOutput
    PutCommentReactionInput: PutCommentReactionInput
    PutCommentReactionOutput: PutCommentReactionOutput
    PutFileInput: PutFileInput
    PutFileOutput: PutFileOutput
    PutRepositoryTriggersInput: PutRepositoryTriggersInput
    PutRepositoryTriggersOutput: PutRepositoryTriggersOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TestRepositoryTriggersInput: TestRepositoryTriggersInput
    TestRepositoryTriggersOutput: TestRepositoryTriggersOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateApprovalRuleTemplateContentInput: UpdateApprovalRuleTemplateContentInput
    UpdateApprovalRuleTemplateContentOutput: UpdateApprovalRuleTemplateContentOutput
    UpdateApprovalRuleTemplateDescriptionInput: UpdateApprovalRuleTemplateDescriptionInput
    UpdateApprovalRuleTemplateDescriptionOutput: UpdateApprovalRuleTemplateDescriptionOutput
    UpdateApprovalRuleTemplateNameInput: UpdateApprovalRuleTemplateNameInput
    UpdateApprovalRuleTemplateNameOutput: UpdateApprovalRuleTemplateNameOutput
    UpdateCommentInput: UpdateCommentInput
    UpdateCommentOutput: UpdateCommentOutput
    UpdateDefaultBranchInput: UpdateDefaultBranchInput
    UpdateDefaultBranchOutput: UpdateDefaultBranchOutput
    UpdatePullRequestApprovalRuleContentInput: UpdatePullRequestApprovalRuleContentInput
    UpdatePullRequestApprovalRuleContentOutput: UpdatePullRequestApprovalRuleContentOutput
    UpdatePullRequestApprovalStateInput: UpdatePullRequestApprovalStateInput
    UpdatePullRequestApprovalStateOutput: UpdatePullRequestApprovalStateOutput
    UpdatePullRequestDescriptionInput: UpdatePullRequestDescriptionInput
    UpdatePullRequestDescriptionOutput: UpdatePullRequestDescriptionOutput
    UpdatePullRequestStatusInput: UpdatePullRequestStatusInput
    UpdatePullRequestStatusOutput: UpdatePullRequestStatusOutput
    UpdatePullRequestTitleInput: UpdatePullRequestTitleInput
    UpdatePullRequestTitleOutput: UpdatePullRequestTitleOutput
    UpdateRepositoryDescriptionInput: UpdateRepositoryDescriptionInput
    UpdateRepositoryDescriptionOutput: UpdateRepositoryDescriptionOutput
    UpdateRepositoryEncryptionKeyInput: UpdateRepositoryEncryptionKeyInput
    UpdateRepositoryEncryptionKeyOutput: UpdateRepositoryEncryptionKeyOutput
    UpdateRepositoryNameInput: UpdateRepositoryNameInput
    UpdateRepositoryNameOutput: UpdateRepositoryNameOutput
end

return M
