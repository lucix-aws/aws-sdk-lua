local record AbortDocumentVersionUploadInput
    AuthenticationToken: string
    DocumentId: string
    VersionId: string
end

local record AbortDocumentVersionUploadOutput
end

local record ActivateUserInput
    UserId: string
    AuthenticationToken: string
end

local record ActivateUserOutput
    User: User
end

local record AddResourcePermissionsInput
    AuthenticationToken: string
    ResourceId: string
    Principals: {SharePrincipal}
    NotificationOptions: NotificationOptions
end

local record AddResourcePermissionsOutput
    ShareResults: {ShareResult}
end

local record CreateCommentInput
    AuthenticationToken: string
    DocumentId: string
    VersionId: string
    ParentId: string
    ThreadId: string
    Text: string
    Visibility: string
    NotifyCollaborators: boolean
end

local record CreateCommentOutput
    Comment: Comment
end

local record CreateCustomMetadataInput
    AuthenticationToken: string
    ResourceId: string
    VersionId: string
    CustomMetadata: {string : string}
end

local record CreateCustomMetadataOutput
end

local record CreateFolderInput
    AuthenticationToken: string
    Name: string
    ParentFolderId: string
end

local record CreateFolderOutput
    Metadata: FolderMetadata
end

local record CreateLabelsInput
    ResourceId: string
    Labels: {string}
    AuthenticationToken: string
end

local record CreateLabelsOutput
end

local record CreateNotificationSubscriptionInput
    OrganizationId: string
    Endpoint: string
    Protocol: string
    SubscriptionType: string
end

local record CreateNotificationSubscriptionOutput
    Subscription: Subscription
end

local record CreateUserInput
    OrganizationId: string
    Username: string
    EmailAddress: string
    GivenName: string
    Surname: string
    Password: string
    TimeZoneId: string
    StorageRule: StorageRuleType
    AuthenticationToken: string
end

local record CreateUserOutput
    User: User
end

local record DeactivateUserInput
    UserId: string
    AuthenticationToken: string
end

local record DeactivateUserOutput
end

local record DeleteCommentInput
    AuthenticationToken: string
    DocumentId: string
    VersionId: string
    CommentId: string
end

local record DeleteCommentOutput
end

local record DeleteCustomMetadataInput
    AuthenticationToken: string
    ResourceId: string
    VersionId: string
    Keys: {string}
    DeleteAll: boolean
end

local record DeleteCustomMetadataOutput
end

local record DeleteDocumentInput
    AuthenticationToken: string
    DocumentId: string
end

local record DeleteDocumentOutput
end

local record DeleteDocumentVersionInput
    AuthenticationToken: string
    DocumentId: string
    VersionId: string
    DeletePriorVersions: boolean
end

local record DeleteDocumentVersionOutput
end

local record DeleteFolderInput
    AuthenticationToken: string
    FolderId: string
end

local record DeleteFolderOutput
end

local record DeleteFolderContentsInput
    AuthenticationToken: string
    FolderId: string
end

local record DeleteFolderContentsOutput
end

local record DeleteLabelsInput
    ResourceId: string
    AuthenticationToken: string
    Labels: {string}
    DeleteAll: boolean
end

local record DeleteLabelsOutput
end

local record DeleteNotificationSubscriptionInput
    SubscriptionId: string
    OrganizationId: string
end

local record DeleteNotificationSubscriptionOutput
end

local record DeleteUserInput
    AuthenticationToken: string
    UserId: string
end

local record DeleteUserOutput
end

local record DescribeActivitiesInput
    AuthenticationToken: string
    StartTime: number
    EndTime: number
    OrganizationId: string
    ActivityTypes: string
    ResourceId: string
    UserId: string
    IncludeIndirectActivities: boolean
    Limit: number
    Marker: string
end

local record DescribeActivitiesOutput
    UserActivities: {Activity}
    Marker: string
end

local record DescribeCommentsInput
    AuthenticationToken: string
    DocumentId: string
    VersionId: string
    Limit: number
    Marker: string
end

local record DescribeCommentsOutput
    Comments: {Comment}
    Marker: string
end

local record DescribeDocumentVersionsInput
    AuthenticationToken: string
    DocumentId: string
    Marker: string
    Limit: number
    Include: string
    Fields: string
end

local record DescribeDocumentVersionsOutput
    DocumentVersions: {DocumentVersionMetadata}
    Marker: string
end

local record DescribeFolderContentsInput
    AuthenticationToken: string
    FolderId: string
    Sort: string
    Order: string
    Limit: number
    Marker: string
    Type: string
    Include: string
end

local record DescribeFolderContentsOutput
    Folders: {FolderMetadata}
    Documents: {DocumentMetadata}
    Marker: string
end

local record DescribeGroupsInput
    AuthenticationToken: string
    SearchQuery: string
    OrganizationId: string
    Marker: string
    Limit: number
end

local record DescribeGroupsOutput
    Groups: {GroupMetadata}
    Marker: string
end

local record DescribeNotificationSubscriptionsInput
    OrganizationId: string
    Marker: string
    Limit: number
end

local record DescribeNotificationSubscriptionsOutput
    Subscriptions: {Subscription}
    Marker: string
end

local record DescribeResourcePermissionsInput
    AuthenticationToken: string
    ResourceId: string
    PrincipalId: string
    Limit: number
    Marker: string
end

local record DescribeResourcePermissionsOutput
    Principals: {Principal}
    Marker: string
end

local record DescribeRootFoldersInput
    AuthenticationToken: string
    Limit: number
    Marker: string
end

local record DescribeRootFoldersOutput
    Folders: {FolderMetadata}
    Marker: string
end

local record DescribeUsersInput
    AuthenticationToken: string
    OrganizationId: string
    UserIds: string
    Query: string
    Include: string
    Order: string
    Sort: string
    Marker: string
    Limit: number
    Fields: string
end

local record DescribeUsersOutput
    Users: {User}
    TotalNumberOfUsers: number
    Marker: string
end

local record GetCurrentUserInput
    AuthenticationToken: string
end

local record GetCurrentUserOutput
    User: User
end

local record GetDocumentInput
    AuthenticationToken: string
    DocumentId: string
    IncludeCustomMetadata: boolean
end

local record GetDocumentOutput
    Metadata: DocumentMetadata
    CustomMetadata: {string : string}
end

local record GetDocumentPathInput
    AuthenticationToken: string
    DocumentId: string
    Limit: number
    Fields: string
    Marker: string
end

local record GetDocumentPathOutput
    Path: ResourcePath
end

local record GetDocumentVersionInput
    AuthenticationToken: string
    DocumentId: string
    VersionId: string
    Fields: string
    IncludeCustomMetadata: boolean
end

local record GetDocumentVersionOutput
    Metadata: DocumentVersionMetadata
    CustomMetadata: {string : string}
end

local record GetFolderInput
    AuthenticationToken: string
    FolderId: string
    IncludeCustomMetadata: boolean
end

local record GetFolderOutput
    Metadata: FolderMetadata
    CustomMetadata: {string : string}
end

local record GetFolderPathInput
    AuthenticationToken: string
    FolderId: string
    Limit: number
    Fields: string
    Marker: string
end

local record GetFolderPathOutput
    Path: ResourcePath
end

local record GetResourcesInput
    AuthenticationToken: string
    UserId: string
    CollectionType: string
    Limit: number
    Marker: string
end

local record GetResourcesOutput
    Folders: {FolderMetadata}
    Documents: {DocumentMetadata}
    Marker: string
end

local record InitiateDocumentVersionUploadInput
    AuthenticationToken: string
    Id: string
    Name: string
    ContentCreatedTimestamp: number
    ContentModifiedTimestamp: number
    ContentType: string
    DocumentSizeInBytes: number
    ParentFolderId: string
end

local record InitiateDocumentVersionUploadOutput
    Metadata: DocumentMetadata
    UploadMetadata: UploadMetadata
end

local record RemoveAllResourcePermissionsInput
    AuthenticationToken: string
    ResourceId: string
end

local record RemoveAllResourcePermissionsOutput
end

local record RemoveResourcePermissionInput
    AuthenticationToken: string
    ResourceId: string
    PrincipalId: string
    PrincipalType: string
end

local record RemoveResourcePermissionOutput
end

local record RestoreDocumentVersionsInput
    AuthenticationToken: string
    DocumentId: string
end

local record RestoreDocumentVersionsOutput
end

local record SearchResourcesInput
    AuthenticationToken: string
    QueryText: string
    QueryScopes: {string}
    OrganizationId: string
    AdditionalResponseFields: {string}
    Filters: Filters
    OrderBy: {SearchSortResult}
    Limit: number
    Marker: string
end

local record SearchResourcesOutput
    Items: {ResponseItem}
    Marker: string
end

local record UpdateDocumentInput
    AuthenticationToken: string
    DocumentId: string
    Name: string
    ParentFolderId: string
    ResourceState: string
end

local record UpdateDocumentOutput
end

local record UpdateDocumentVersionInput
    AuthenticationToken: string
    DocumentId: string
    VersionId: string
    VersionStatus: string
end

local record UpdateDocumentVersionOutput
end

local record UpdateFolderInput
    AuthenticationToken: string
    FolderId: string
    Name: string
    ParentFolderId: string
    ResourceState: string
end

local record UpdateFolderOutput
end

local record UpdateUserInput
    AuthenticationToken: string
    UserId: string
    GivenName: string
    Surname: string
    Type: string
    StorageRule: StorageRuleType
    TimeZoneId: string
    Locale: string
    GrantPoweruserPrivileges: string
end

local record UpdateUserOutput
    User: User
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record ProhibitedStateException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record FailedDependencyException
    Message: string
end

local record ProhibitedStateException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record DocumentLockedForCommentsException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record InvalidCommentOperationException
    Message: string
end

local record ProhibitedStateException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record CustomMetadataLimitExceededException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record ProhibitedStateException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record ConflictingOperationException
    Message: string
end

local record EntityAlreadyExistsException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ProhibitedStateException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyLabelsException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManySubscriptionsException
    Message: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record EntityAlreadyExistsException
    Message: string
end

local record FailedDependencyException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record DocumentLockedForCommentsException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record ProhibitedStateException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record ProhibitedStateException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record ConflictingOperationException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ProhibitedStateException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record ConflictingOperationException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ProhibitedStateException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record ConflictingOperationException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ProhibitedStateException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record ConflictingOperationException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record ProhibitedStateException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record ProhibitedStateException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record ProhibitedStateException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record FailedDependencyException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record ProhibitedStateException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidPasswordException
    Message: string
end

local record ProhibitedStateException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ProhibitedStateException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record FailedDependencyException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record FailedDependencyException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record FailedDependencyException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record RequestedEntityTooLargeException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidPasswordException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record InvalidPasswordException
    Message: string
end

local record ProhibitedStateException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ProhibitedStateException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record FailedDependencyException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record DraftUploadOutOfSyncException
    Message: string
end

local record EntityAlreadyExistsException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidPasswordException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ProhibitedStateException
    Message: string
end

local record ResourceAlreadyCheckedOutException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record StorageLimitExceededException
    Message: string
end

local record StorageLimitWillExceedException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record FailedDependencyException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record FailedDependencyException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record ConflictingOperationException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ProhibitedStateException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record ConflictingOperationException
    Message: string
end

local record EntityAlreadyExistsException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ProhibitedStateException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record InvalidOperationException
    Message: string
end

local record ProhibitedStateException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record ConflictingOperationException
    Message: string
end

local record EntityAlreadyExistsException
    Message: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ProhibitedStateException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local record DeactivatingLastSystemUserException
    Message: string
    Code: string
end

local record EntityNotExistsException
    Message: string
    EntityIds: {string}
end

local record FailedDependencyException
    Message: string
end

local record IllegalUserStateException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ProhibitedStateException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnauthorizedOperationException
    Message: string
    Code: string
end

local record UnauthorizedResourceAccessException
    Message: string
end

local type SubscriptionType = "ALL"

local type UserType = "USER" | "ADMIN" | "POWERUSER" | "MINIMALUSER" | "WORKSPACESUSER"

local type DocumentVersionStatus = "ACTIVE"

local type UserSortType = "USER_NAME" | "FULL_NAME" | "STORAGE_LIMIT" | "USER_STATUS" | "STORAGE_USED"

local type UserFilterType = "ALL" | "ACTIVE_PENDING"

local type SubscriptionProtocolType = "HTTPS" | "SQS"

local type ResourceSortType = "DATE" | "NAME"

local type BooleanEnumType = "TRUE" | "FALSE"

local type OrderType = "ASCENDING" | "DESCENDING"

local type PrincipalType = "USER" | "GROUP" | "INVITE" | "ANONYMOUS" | "ORGANIZATION"

local type ResourceStateType = "ACTIVE" | "RESTORING" | "RECYCLING" | "RECYCLED"

local type LocaleType = "en" | "fr" | "ko" | "de" | "es" | "ja" | "ru" | "zh_CN" | "zh_TW" | "pt_BR" | "default"

local type CommentVisibilityType = "PUBLIC" | "PRIVATE"

local type ResourceCollectionType = "SHARED_WITH_ME"

local type FolderContentType = "ALL" | "DOCUMENT" | "FOLDER"

local record M
    AbortDocumentVersionUploadInput: AbortDocumentVersionUploadInput
    AbortDocumentVersionUploadOutput: AbortDocumentVersionUploadOutput
    ActivateUserInput: ActivateUserInput
    ActivateUserOutput: ActivateUserOutput
    AddResourcePermissionsInput: AddResourcePermissionsInput
    AddResourcePermissionsOutput: AddResourcePermissionsOutput
    CreateCommentInput: CreateCommentInput
    CreateCommentOutput: CreateCommentOutput
    CreateCustomMetadataInput: CreateCustomMetadataInput
    CreateCustomMetadataOutput: CreateCustomMetadataOutput
    CreateFolderInput: CreateFolderInput
    CreateFolderOutput: CreateFolderOutput
    CreateLabelsInput: CreateLabelsInput
    CreateLabelsOutput: CreateLabelsOutput
    CreateNotificationSubscriptionInput: CreateNotificationSubscriptionInput
    CreateNotificationSubscriptionOutput: CreateNotificationSubscriptionOutput
    CreateUserInput: CreateUserInput
    CreateUserOutput: CreateUserOutput
    DeactivateUserInput: DeactivateUserInput
    DeactivateUserOutput: DeactivateUserOutput
    DeleteCommentInput: DeleteCommentInput
    DeleteCommentOutput: DeleteCommentOutput
    DeleteCustomMetadataInput: DeleteCustomMetadataInput
    DeleteCustomMetadataOutput: DeleteCustomMetadataOutput
    DeleteDocumentInput: DeleteDocumentInput
    DeleteDocumentOutput: DeleteDocumentOutput
    DeleteDocumentVersionInput: DeleteDocumentVersionInput
    DeleteDocumentVersionOutput: DeleteDocumentVersionOutput
    DeleteFolderInput: DeleteFolderInput
    DeleteFolderOutput: DeleteFolderOutput
    DeleteFolderContentsInput: DeleteFolderContentsInput
    DeleteFolderContentsOutput: DeleteFolderContentsOutput
    DeleteLabelsInput: DeleteLabelsInput
    DeleteLabelsOutput: DeleteLabelsOutput
    DeleteNotificationSubscriptionInput: DeleteNotificationSubscriptionInput
    DeleteNotificationSubscriptionOutput: DeleteNotificationSubscriptionOutput
    DeleteUserInput: DeleteUserInput
    DeleteUserOutput: DeleteUserOutput
    DescribeActivitiesInput: DescribeActivitiesInput
    DescribeActivitiesOutput: DescribeActivitiesOutput
    DescribeCommentsInput: DescribeCommentsInput
    DescribeCommentsOutput: DescribeCommentsOutput
    DescribeDocumentVersionsInput: DescribeDocumentVersionsInput
    DescribeDocumentVersionsOutput: DescribeDocumentVersionsOutput
    DescribeFolderContentsInput: DescribeFolderContentsInput
    DescribeFolderContentsOutput: DescribeFolderContentsOutput
    DescribeGroupsInput: DescribeGroupsInput
    DescribeGroupsOutput: DescribeGroupsOutput
    DescribeNotificationSubscriptionsInput: DescribeNotificationSubscriptionsInput
    DescribeNotificationSubscriptionsOutput: DescribeNotificationSubscriptionsOutput
    DescribeResourcePermissionsInput: DescribeResourcePermissionsInput
    DescribeResourcePermissionsOutput: DescribeResourcePermissionsOutput
    DescribeRootFoldersInput: DescribeRootFoldersInput
    DescribeRootFoldersOutput: DescribeRootFoldersOutput
    DescribeUsersInput: DescribeUsersInput
    DescribeUsersOutput: DescribeUsersOutput
    GetCurrentUserInput: GetCurrentUserInput
    GetCurrentUserOutput: GetCurrentUserOutput
    GetDocumentInput: GetDocumentInput
    GetDocumentOutput: GetDocumentOutput
    GetDocumentPathInput: GetDocumentPathInput
    GetDocumentPathOutput: GetDocumentPathOutput
    GetDocumentVersionInput: GetDocumentVersionInput
    GetDocumentVersionOutput: GetDocumentVersionOutput
    GetFolderInput: GetFolderInput
    GetFolderOutput: GetFolderOutput
    GetFolderPathInput: GetFolderPathInput
    GetFolderPathOutput: GetFolderPathOutput
    GetResourcesInput: GetResourcesInput
    GetResourcesOutput: GetResourcesOutput
    InitiateDocumentVersionUploadInput: InitiateDocumentVersionUploadInput
    InitiateDocumentVersionUploadOutput: InitiateDocumentVersionUploadOutput
    RemoveAllResourcePermissionsInput: RemoveAllResourcePermissionsInput
    RemoveAllResourcePermissionsOutput: RemoveAllResourcePermissionsOutput
    RemoveResourcePermissionInput: RemoveResourcePermissionInput
    RemoveResourcePermissionOutput: RemoveResourcePermissionOutput
    RestoreDocumentVersionsInput: RestoreDocumentVersionsInput
    RestoreDocumentVersionsOutput: RestoreDocumentVersionsOutput
    SearchResourcesInput: SearchResourcesInput
    SearchResourcesOutput: SearchResourcesOutput
    UpdateDocumentInput: UpdateDocumentInput
    UpdateDocumentOutput: UpdateDocumentOutput
    UpdateDocumentVersionInput: UpdateDocumentVersionInput
    UpdateDocumentVersionOutput: UpdateDocumentVersionOutput
    UpdateFolderInput: UpdateFolderInput
    UpdateFolderOutput: UpdateFolderOutput
    UpdateUserInput: UpdateUserInput
    UpdateUserOutput: UpdateUserOutput
end

return M
