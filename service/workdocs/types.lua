local M = {}

M.AbortDocumentVersionUploadInput = {
    type = "structure",
    id = "AbortDocumentVersionUploadInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        DocumentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AbortDocumentVersionUploadOutput = {
    type = "structure",
    id = "AbortDocumentVersionUploadOutput",
}

M.ConcurrentModificationException = {
    type = "structure",
    id = "ConcurrentModificationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EntityNotExistsException = {
    type = "structure",
    id = "EntityNotExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        EntityIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.FailedDependencyException = {
    type = "structure",
    id = "FailedDependencyException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ProhibitedStateException = {
    type = "structure",
    id = "ProhibitedStateException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    id = "ServiceUnavailableException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnauthorizedOperationException = {
    type = "structure",
    id = "UnauthorizedOperationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.UnauthorizedResourceAccessException = {
    type = "structure",
    id = "UnauthorizedResourceAccessException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ActivateUserInput = {
    type = "structure",
    id = "ActivateUserInput",
    members = {
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
    },
}

M.LocaleType = {
    EN = "en",
    FR = "fr",
    KO = "ko",
    DE = "de",
    ES = "es",
    JA = "ja",
    RU = "ru",
    ZH_CN = "zh_CN",
    ZH_TW = "zh_TW",
    PT_BR = "pt_BR",
    DEFAULT = "default",
}

M.UserStatusType = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    PENDING = "PENDING",
}

M.StorageType = {
    UNLIMITED = "UNLIMITED",
    QUOTA = "QUOTA",
}

M.StorageRuleType = {
    type = "structure",
    id = "StorageRuleType",
    members = {
        StorageAllocatedInBytes = {
            type = "long",
        },
        StorageType = {
            type = "string",
        },
    },
}

M.UserStorageMetadata = {
    type = "structure",
    id = "UserStorageMetadata",
    members = {
        StorageUtilizedInBytes = {
            type = "long",
        },
        StorageRule = M.StorageRuleType,
    },
}

M.UserType = {
    USER = "USER",
    ADMIN = "ADMIN",
    POWERUSER = "POWERUSER",
    MINIMALUSER = "MINIMALUSER",
    WORKSPACESUSER = "WORKSPACESUSER",
}

M.User = {
    type = "structure",
    id = "User",
    members = {
        Id = {
            type = "string",
        },
        Username = {
            type = "string",
        },
        EmailAddress = {
            type = "string",
        },
        GivenName = {
            type = "string",
        },
        Surname = {
            type = "string",
        },
        OrganizationId = {
            type = "string",
        },
        RootFolderId = {
            type = "string",
        },
        RecycleBinFolderId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        ModifiedTimestamp = {
            type = "timestamp",
        },
        TimeZoneId = {
            type = "string",
        },
        Locale = {
            type = "string",
        },
        Storage = M.UserStorageMetadata,
    },
}

M.ActivateUserOutput = {
    type = "structure",
    id = "ActivateUserOutput",
    members = {
        User = M.User,
    },
}

M.CommentStatusType = {
    DRAFT = "DRAFT",
    PUBLISHED = "PUBLISHED",
    DELETED = "DELETED",
}

M.CommentMetadata = {
    type = "structure",
    id = "CommentMetadata",
    members = {
        CommentId = {
            type = "string",
        },
        Contributor = M.User,
        CreatedTimestamp = {
            type = "timestamp",
        },
        CommentStatus = {
            type = "string",
        },
        RecipientId = {
            type = "string",
        },
        ContributorId = {
            type = "string",
        },
    },
}

M.UserMetadata = {
    type = "structure",
    id = "UserMetadata",
    members = {
        Id = {
            type = "string",
        },
        Username = {
            type = "string",
        },
        GivenName = {
            type = "string",
        },
        Surname = {
            type = "string",
        },
        EmailAddress = {
            type = "string",
        },
    },
}

M.ResourceType = {
    FOLDER = "FOLDER",
    DOCUMENT = "DOCUMENT",
}

M.ResourceMetadata = {
    type = "structure",
    id = "ResourceMetadata",
    members = {
        Type = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        OriginalName = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
        Owner = M.UserMetadata,
        ParentId = {
            type = "string",
        },
    },
}

M.GroupMetadata = {
    type = "structure",
    id = "GroupMetadata",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.Participants = {
    type = "structure",
    id = "Participants",
    members = {
        Users = {
            type = "list",
            member = M.UserMetadata,
        },
        Groups = {
            type = "list",
            member = M.GroupMetadata,
        },
    },
}

M.ActivityType = {
    DOCUMENT_CHECKED_IN = "DOCUMENT_CHECKED_IN",
    DOCUMENT_CHECKED_OUT = "DOCUMENT_CHECKED_OUT",
    DOCUMENT_RENAMED = "DOCUMENT_RENAMED",
    DOCUMENT_VERSION_UPLOADED = "DOCUMENT_VERSION_UPLOADED",
    DOCUMENT_VERSION_DELETED = "DOCUMENT_VERSION_DELETED",
    DOCUMENT_VERSION_VIEWED = "DOCUMENT_VERSION_VIEWED",
    DOCUMENT_VERSION_DOWNLOADED = "DOCUMENT_VERSION_DOWNLOADED",
    DOCUMENT_RECYCLED = "DOCUMENT_RECYCLED",
    DOCUMENT_RESTORED = "DOCUMENT_RESTORED",
    DOCUMENT_REVERTED = "DOCUMENT_REVERTED",
    DOCUMENT_SHARED = "DOCUMENT_SHARED",
    DOCUMENT_UNSHARED = "DOCUMENT_UNSHARED",
    DOCUMENT_SHARE_PERMISSION_CHANGED = "DOCUMENT_SHARE_PERMISSION_CHANGED",
    DOCUMENT_SHAREABLE_LINK_CREATED = "DOCUMENT_SHAREABLE_LINK_CREATED",
    DOCUMENT_SHAREABLE_LINK_REMOVED = "DOCUMENT_SHAREABLE_LINK_REMOVED",
    DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED = "DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED",
    DOCUMENT_MOVED = "DOCUMENT_MOVED",
    DOCUMENT_COMMENT_ADDED = "DOCUMENT_COMMENT_ADDED",
    DOCUMENT_COMMENT_DELETED = "DOCUMENT_COMMENT_DELETED",
    DOCUMENT_ANNOTATION_ADDED = "DOCUMENT_ANNOTATION_ADDED",
    DOCUMENT_ANNOTATION_DELETED = "DOCUMENT_ANNOTATION_DELETED",
    FOLDER_CREATED = "FOLDER_CREATED",
    FOLDER_DELETED = "FOLDER_DELETED",
    FOLDER_RENAMED = "FOLDER_RENAMED",
    FOLDER_RECYCLED = "FOLDER_RECYCLED",
    FOLDER_RESTORED = "FOLDER_RESTORED",
    FOLDER_SHARED = "FOLDER_SHARED",
    FOLDER_UNSHARED = "FOLDER_UNSHARED",
    FOLDER_SHARE_PERMISSION_CHANGED = "FOLDER_SHARE_PERMISSION_CHANGED",
    FOLDER_SHAREABLE_LINK_CREATED = "FOLDER_SHAREABLE_LINK_CREATED",
    FOLDER_SHAREABLE_LINK_REMOVED = "FOLDER_SHAREABLE_LINK_REMOVED",
    FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED = "FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED",
    FOLDER_MOVED = "FOLDER_MOVED",
}

M.Activity = {
    type = "structure",
    id = "Activity",
    members = {
        Type = {
            type = "string",
        },
        TimeStamp = {
            type = "timestamp",
        },
        IsIndirectActivity = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        OrganizationId = {
            type = "string",
        },
        Initiator = M.UserMetadata,
        Participants = M.Participants,
        ResourceMetadata = M.ResourceMetadata,
        OriginalParent = M.ResourceMetadata,
        CommentMetadata = M.CommentMetadata,
    },
}

M.AdditionalResponseFieldType = {
    WEBURL = "WEBURL",
}

M.NotificationOptions = {
    type = "structure",
    id = "NotificationOptions",
    members = {
        SendEmail = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        EmailMessage = {
            type = "string",
        },
    },
}

M.RoleType = {
    VIEWER = "VIEWER",
    CONTRIBUTOR = "CONTRIBUTOR",
    OWNER = "OWNER",
    COOWNER = "COOWNER",
}

M.PrincipalType = {
    USER = "USER",
    GROUP = "GROUP",
    INVITE = "INVITE",
    ANONYMOUS = "ANONYMOUS",
    ORGANIZATION = "ORGANIZATION",
}

M.SharePrincipal = {
    type = "structure",
    id = "SharePrincipal",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Role = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AddResourcePermissionsInput = {
    type = "structure",
    id = "AddResourcePermissionsInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Principals = {
            type = "list",
            member = M.SharePrincipal,
            traits = {
                required = true,
            },
        },
        NotificationOptions = M.NotificationOptions,
    },
}

M.ShareStatusType = {
    SUCCESS = "SUCCESS",
    FAILURE = "FAILURE",
}

M.ShareResult = {
    type = "structure",
    id = "ShareResult",
    members = {
        PrincipalId = {
            type = "string",
        },
        InviteePrincipalId = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ShareId = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.AddResourcePermissionsOutput = {
    type = "structure",
    id = "AddResourcePermissionsOutput",
    members = {
        ShareResults = {
            type = "list",
            member = M.ShareResult,
        },
    },
}

M.CommentVisibilityType = {
    PUBLIC = "PUBLIC",
    PRIVATE = "PRIVATE",
}

M.CreateCommentInput = {
    type = "structure",
    id = "CreateCommentInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        DocumentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ParentId = {
            type = "string",
        },
        ThreadId = {
            type = "string",
        },
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Visibility = {
            type = "string",
        },
        NotifyCollaborators = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.Comment = {
    type = "structure",
    id = "Comment",
    members = {
        CommentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParentId = {
            type = "string",
        },
        ThreadId = {
            type = "string",
        },
        Text = {
            type = "string",
        },
        Contributor = M.User,
        CreatedTimestamp = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
        RecipientId = {
            type = "string",
        },
    },
}

M.CreateCommentOutput = {
    type = "structure",
    id = "CreateCommentOutput",
    members = {
        Comment = M.Comment,
    },
}

M.DocumentLockedForCommentsException = {
    type = "structure",
    id = "DocumentLockedForCommentsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidCommentOperationException = {
    type = "structure",
    id = "InvalidCommentOperationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateCustomMetadataInput = {
    type = "structure",
    id = "CreateCustomMetadataInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_query = "versionid",
            },
        },
        CustomMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCustomMetadataOutput = {
    type = "structure",
    id = "CreateCustomMetadataOutput",
}

M.CustomMetadataLimitExceededException = {
    type = "structure",
    id = "CustomMetadataLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConflictingOperationException = {
    type = "structure",
    id = "ConflictingOperationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateFolderInput = {
    type = "structure",
    id = "CreateFolderInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        Name = {
            type = "string",
        },
        ParentFolderId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceStateType = {
    ACTIVE = "ACTIVE",
    RESTORING = "RESTORING",
    RECYCLING = "RECYCLING",
    RECYCLED = "RECYCLED",
}

M.FolderMetadata = {
    type = "structure",
    id = "FolderMetadata",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        CreatorId = {
            type = "string",
        },
        ParentFolderId = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        ModifiedTimestamp = {
            type = "timestamp",
        },
        ResourceState = {
            type = "string",
        },
        Signature = {
            type = "string",
        },
        Labels = {
            type = "list",
            member = { type = "string" },
        },
        Size = {
            type = "long",
        },
        LatestVersionSize = {
            type = "long",
        },
    },
}

M.CreateFolderOutput = {
    type = "structure",
    id = "CreateFolderOutput",
    members = {
        Metadata = M.FolderMetadata,
    },
}

M.EntityAlreadyExistsException = {
    type = "structure",
    id = "EntityAlreadyExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateLabelsInput = {
    type = "structure",
    id = "CreateLabelsInput",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Labels = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
    },
}

M.CreateLabelsOutput = {
    type = "structure",
    id = "CreateLabelsOutput",
}

M.TooManyLabelsException = {
    type = "structure",
    id = "TooManyLabelsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SubscriptionProtocolType = {
    HTTPS = "HTTPS",
    SQS = "SQS",
}

M.SubscriptionType = {
    ALL = "ALL",
}

M.CreateNotificationSubscriptionInput = {
    type = "structure",
    id = "CreateNotificationSubscriptionInput",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Endpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubscriptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Subscription = {
    type = "structure",
    id = "Subscription",
    members = {
        SubscriptionId = {
            type = "string",
        },
        EndPoint = {
            type = "string",
        },
        Protocol = {
            type = "string",
        },
    },
}

M.CreateNotificationSubscriptionOutput = {
    type = "structure",
    id = "CreateNotificationSubscriptionOutput",
    members = {
        Subscription = M.Subscription,
    },
}

M.InvalidArgumentException = {
    type = "structure",
    id = "InvalidArgumentException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManySubscriptionsException = {
    type = "structure",
    id = "TooManySubscriptionsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateUserInput = {
    type = "structure",
    id = "CreateUserInput",
    members = {
        OrganizationId = {
            type = "string",
        },
        Username = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EmailAddress = {
            type = "string",
        },
        GivenName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Surname = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Password = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimeZoneId = {
            type = "string",
        },
        StorageRule = M.StorageRuleType,
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
    },
}

M.CreateUserOutput = {
    type = "structure",
    id = "CreateUserOutput",
    members = {
        User = M.User,
    },
}

M.DeactivateUserInput = {
    type = "structure",
    id = "DeactivateUserInput",
    members = {
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
    },
}

M.DeactivateUserOutput = {
    type = "structure",
    id = "DeactivateUserOutput",
}

M.DeleteCommentInput = {
    type = "structure",
    id = "DeleteCommentInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        DocumentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CommentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCommentOutput = {
    type = "structure",
    id = "DeleteCommentOutput",
}

M.DeleteCustomMetadataInput = {
    type = "structure",
    id = "DeleteCustomMetadataInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_query = "versionId",
            },
        },
        Keys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "keys",
            },
        },
        DeleteAll = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "deleteAll",
            },
        },
    },
}

M.DeleteCustomMetadataOutput = {
    type = "structure",
    id = "DeleteCustomMetadataOutput",
}

M.DeleteDocumentInput = {
    type = "structure",
    id = "DeleteDocumentInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        DocumentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDocumentOutput = {
    type = "structure",
    id = "DeleteDocumentOutput",
}

M.DeleteDocumentVersionInput = {
    type = "structure",
    id = "DeleteDocumentVersionInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        DocumentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeletePriorVersions = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "deletePriorVersions",
                required = true,
            },
        },
    },
}

M.DeleteDocumentVersionOutput = {
    type = "structure",
    id = "DeleteDocumentVersionOutput",
}

M.InvalidOperationException = {
    type = "structure",
    id = "InvalidOperationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteFolderInput = {
    type = "structure",
    id = "DeleteFolderInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        FolderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFolderOutput = {
    type = "structure",
    id = "DeleteFolderOutput",
}

M.DeleteFolderContentsInput = {
    type = "structure",
    id = "DeleteFolderContentsInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        FolderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFolderContentsOutput = {
    type = "structure",
    id = "DeleteFolderContentsOutput",
}

M.DeleteLabelsInput = {
    type = "structure",
    id = "DeleteLabelsInput",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        Labels = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "labels",
            },
        },
        DeleteAll = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "deleteAll",
            },
        },
    },
}

M.DeleteLabelsOutput = {
    type = "structure",
    id = "DeleteLabelsOutput",
}

M.DeleteNotificationSubscriptionInput = {
    type = "structure",
    id = "DeleteNotificationSubscriptionInput",
    members = {
        SubscriptionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OrganizationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteNotificationSubscriptionOutput = {
    type = "structure",
    id = "DeleteNotificationSubscriptionOutput",
}

M.DeleteUserInput = {
    type = "structure",
    id = "DeleteUserInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteUserOutput = {
    type = "structure",
    id = "DeleteUserOutput",
}

M.DescribeActivitiesInput = {
    type = "structure",
    id = "DescribeActivitiesInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                http_query = "startTime",
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
            },
        },
        OrganizationId = {
            type = "string",
            traits = {
                http_query = "organizationId",
            },
        },
        ActivityTypes = {
            type = "string",
            traits = {
                http_query = "activityTypes",
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                http_query = "resourceId",
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_query = "userId",
            },
        },
        IncludeIndirectActivities = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "includeIndirectActivities",
            },
        },
        Limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
    },
}

M.DescribeActivitiesOutput = {
    type = "structure",
    id = "DescribeActivitiesOutput",
    members = {
        UserActivities = {
            type = "list",
            member = M.Activity,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeCommentsInput = {
    type = "structure",
    id = "DescribeCommentsInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        DocumentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
    },
}

M.DescribeCommentsOutput = {
    type = "structure",
    id = "DescribeCommentsOutput",
    members = {
        Comments = {
            type = "list",
            member = M.Comment,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDocumentVersionsInput = {
    type = "structure",
    id = "DescribeDocumentVersionsInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        DocumentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        Limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        Include = {
            type = "string",
            traits = {
                http_query = "include",
            },
        },
        Fields = {
            type = "string",
            traits = {
                http_query = "fields",
            },
        },
    },
}

M.DocumentSourceType = {
    ORIGINAL = "ORIGINAL",
    WITH_COMMENTS = "WITH_COMMENTS",
}

M.DocumentStatusType = {
    INITIALIZED = "INITIALIZED",
    ACTIVE = "ACTIVE",
}

M.DocumentThumbnailType = {
    SMALL = "SMALL",
    SMALL_HQ = "SMALL_HQ",
    LARGE = "LARGE",
}

M.DocumentVersionMetadata = {
    type = "structure",
    id = "DocumentVersionMetadata",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ContentType = {
            type = "string",
        },
        Size = {
            type = "long",
        },
        Signature = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        ModifiedTimestamp = {
            type = "timestamp",
        },
        ContentCreatedTimestamp = {
            type = "timestamp",
        },
        ContentModifiedTimestamp = {
            type = "timestamp",
        },
        CreatorId = {
            type = "string",
        },
        Thumbnail = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Source = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeDocumentVersionsOutput = {
    type = "structure",
    id = "DescribeDocumentVersionsOutput",
    members = {
        DocumentVersions = {
            type = "list",
            member = M.DocumentVersionMetadata,
        },
        Marker = {
            type = "string",
        },
    },
}

M.InvalidPasswordException = {
    type = "structure",
    id = "InvalidPasswordException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OrderType = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.ResourceSortType = {
    DATE = "DATE",
    NAME = "NAME",
}

M.FolderContentType = {
    ALL = "ALL",
    DOCUMENT = "DOCUMENT",
    FOLDER = "FOLDER",
}

M.DescribeFolderContentsInput = {
    type = "structure",
    id = "DescribeFolderContentsInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        FolderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Sort = {
            type = "string",
            traits = {
                http_query = "sort",
            },
        },
        Order = {
            type = "string",
            traits = {
                http_query = "order",
            },
        },
        Limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        Type = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
        Include = {
            type = "string",
            traits = {
                http_query = "include",
            },
        },
    },
}

M.DocumentMetadata = {
    type = "structure",
    id = "DocumentMetadata",
    members = {
        Id = {
            type = "string",
        },
        CreatorId = {
            type = "string",
        },
        ParentFolderId = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        ModifiedTimestamp = {
            type = "timestamp",
        },
        LatestVersionMetadata = M.DocumentVersionMetadata,
        ResourceState = {
            type = "string",
        },
        Labels = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeFolderContentsOutput = {
    type = "structure",
    id = "DescribeFolderContentsOutput",
    members = {
        Folders = {
            type = "list",
            member = M.FolderMetadata,
        },
        Documents = {
            type = "list",
            member = M.DocumentMetadata,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeGroupsInput = {
    type = "structure",
    id = "DescribeGroupsInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        SearchQuery = {
            type = "string",
            traits = {
                http_query = "searchQuery",
                required = true,
            },
        },
        OrganizationId = {
            type = "string",
            traits = {
                http_query = "organizationId",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        Limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
    },
}

M.DescribeGroupsOutput = {
    type = "structure",
    id = "DescribeGroupsOutput",
    members = {
        Groups = {
            type = "list",
            member = M.GroupMetadata,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeNotificationSubscriptionsInput = {
    type = "structure",
    id = "DescribeNotificationSubscriptionsInput",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        Limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
    },
}

M.DescribeNotificationSubscriptionsOutput = {
    type = "structure",
    id = "DescribeNotificationSubscriptionsOutput",
    members = {
        Subscriptions = {
            type = "list",
            member = M.Subscription,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeResourcePermissionsInput = {
    type = "structure",
    id = "DescribeResourcePermissionsInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PrincipalId = {
            type = "string",
            traits = {
                http_query = "principalId",
            },
        },
        Limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
    },
}

M.RolePermissionType = {
    DIRECT = "DIRECT",
    INHERITED = "INHERITED",
}

M.PermissionInfo = {
    type = "structure",
    id = "PermissionInfo",
    members = {
        Role = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.Principal = {
    type = "structure",
    id = "Principal",
    members = {
        Id = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Roles = {
            type = "list",
            member = M.PermissionInfo,
        },
    },
}

M.DescribeResourcePermissionsOutput = {
    type = "structure",
    id = "DescribeResourcePermissionsOutput",
    members = {
        Principals = {
            type = "list",
            member = M.Principal,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeRootFoldersInput = {
    type = "structure",
    id = "DescribeRootFoldersInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
                required = true,
            },
        },
        Limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
    },
}

M.DescribeRootFoldersOutput = {
    type = "structure",
    id = "DescribeRootFoldersOutput",
    members = {
        Folders = {
            type = "list",
            member = M.FolderMetadata,
        },
        Marker = {
            type = "string",
        },
    },
}

M.UserFilterType = {
    ALL = "ALL",
    ACTIVE_PENDING = "ACTIVE_PENDING",
}

M.UserSortType = {
    USER_NAME = "USER_NAME",
    FULL_NAME = "FULL_NAME",
    STORAGE_LIMIT = "STORAGE_LIMIT",
    USER_STATUS = "USER_STATUS",
    STORAGE_USED = "STORAGE_USED",
}

M.DescribeUsersInput = {
    type = "structure",
    id = "DescribeUsersInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        OrganizationId = {
            type = "string",
            traits = {
                http_query = "organizationId",
            },
        },
        UserIds = {
            type = "string",
            traits = {
                http_query = "userIds",
            },
        },
        Query = {
            type = "string",
            traits = {
                http_query = "query",
            },
        },
        Include = {
            type = "string",
            traits = {
                http_query = "include",
            },
        },
        Order = {
            type = "string",
            traits = {
                http_query = "order",
            },
        },
        Sort = {
            type = "string",
            traits = {
                http_query = "sort",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        Limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        Fields = {
            type = "string",
            traits = {
                http_query = "fields",
            },
        },
    },
}

M.DescribeUsersOutput = {
    type = "structure",
    id = "DescribeUsersOutput",
    members = {
        Users = {
            type = "list",
            member = M.User,
        },
        TotalNumberOfUsers = {
            type = "long",
        },
        Marker = {
            type = "string",
        },
    },
}

M.RequestedEntityTooLargeException = {
    type = "structure",
    id = "RequestedEntityTooLargeException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetCurrentUserInput = {
    type = "structure",
    id = "GetCurrentUserInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
                required = true,
            },
        },
    },
}

M.GetCurrentUserOutput = {
    type = "structure",
    id = "GetCurrentUserOutput",
    members = {
        User = M.User,
    },
}

M.GetDocumentInput = {
    type = "structure",
    id = "GetDocumentInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        DocumentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IncludeCustomMetadata = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "includeCustomMetadata",
            },
        },
    },
}

M.GetDocumentOutput = {
    type = "structure",
    id = "GetDocumentOutput",
    members = {
        Metadata = M.DocumentMetadata,
        CustomMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetDocumentPathInput = {
    type = "structure",
    id = "GetDocumentPathInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        DocumentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        Fields = {
            type = "string",
            traits = {
                http_query = "fields",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
    },
}

M.ResourcePathComponent = {
    type = "structure",
    id = "ResourcePathComponent",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.ResourcePath = {
    type = "structure",
    id = "ResourcePath",
    members = {
        Components = {
            type = "list",
            member = M.ResourcePathComponent,
        },
    },
}

M.GetDocumentPathOutput = {
    type = "structure",
    id = "GetDocumentPathOutput",
    members = {
        Path = M.ResourcePath,
    },
}

M.GetDocumentVersionInput = {
    type = "structure",
    id = "GetDocumentVersionInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        DocumentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Fields = {
            type = "string",
            traits = {
                http_query = "fields",
            },
        },
        IncludeCustomMetadata = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "includeCustomMetadata",
            },
        },
    },
}

M.GetDocumentVersionOutput = {
    type = "structure",
    id = "GetDocumentVersionOutput",
    members = {
        Metadata = M.DocumentVersionMetadata,
        CustomMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetFolderInput = {
    type = "structure",
    id = "GetFolderInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        FolderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IncludeCustomMetadata = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "includeCustomMetadata",
            },
        },
    },
}

M.GetFolderOutput = {
    type = "structure",
    id = "GetFolderOutput",
    members = {
        Metadata = M.FolderMetadata,
        CustomMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetFolderPathInput = {
    type = "structure",
    id = "GetFolderPathInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        FolderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        Fields = {
            type = "string",
            traits = {
                http_query = "fields",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
    },
}

M.GetFolderPathOutput = {
    type = "structure",
    id = "GetFolderPathOutput",
    members = {
        Path = M.ResourcePath,
    },
}

M.ResourceCollectionType = {
    SHARED_WITH_ME = "SHARED_WITH_ME",
}

M.GetResourcesInput = {
    type = "structure",
    id = "GetResourcesInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_query = "userId",
            },
        },
        CollectionType = {
            type = "string",
            traits = {
                http_query = "collectionType",
            },
        },
        Limit = {
            type = "integer",
            traits = {
                http_query = "limit",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
    },
}

M.GetResourcesOutput = {
    type = "structure",
    id = "GetResourcesOutput",
    members = {
        Folders = {
            type = "list",
            member = M.FolderMetadata,
        },
        Documents = {
            type = "list",
            member = M.DocumentMetadata,
        },
        Marker = {
            type = "string",
        },
    },
}

M.DraftUploadOutOfSyncException = {
    type = "structure",
    id = "DraftUploadOutOfSyncException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InitiateDocumentVersionUploadInput = {
    type = "structure",
    id = "InitiateDocumentVersionUploadInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ContentCreatedTimestamp = {
            type = "timestamp",
        },
        ContentModifiedTimestamp = {
            type = "timestamp",
        },
        ContentType = {
            type = "string",
        },
        DocumentSizeInBytes = {
            type = "long",
        },
        ParentFolderId = {
            type = "string",
        },
    },
}

M.UploadMetadata = {
    type = "structure",
    id = "UploadMetadata",
    members = {
        UploadUrl = {
            type = "string",
        },
        SignedHeaders = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.InitiateDocumentVersionUploadOutput = {
    type = "structure",
    id = "InitiateDocumentVersionUploadOutput",
    members = {
        Metadata = M.DocumentMetadata,
        UploadMetadata = M.UploadMetadata,
    },
}

M.ResourceAlreadyCheckedOutException = {
    type = "structure",
    id = "ResourceAlreadyCheckedOutException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StorageLimitExceededException = {
    type = "structure",
    id = "StorageLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StorageLimitWillExceedException = {
    type = "structure",
    id = "StorageLimitWillExceedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RemoveAllResourcePermissionsInput = {
    type = "structure",
    id = "RemoveAllResourcePermissionsInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RemoveAllResourcePermissionsOutput = {
    type = "structure",
    id = "RemoveAllResourcePermissionsOutput",
}

M.RemoveResourcePermissionInput = {
    type = "structure",
    id = "RemoveResourcePermissionInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PrincipalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PrincipalType = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
    },
}

M.RemoveResourcePermissionOutput = {
    type = "structure",
    id = "RemoveResourcePermissionOutput",
}

M.RestoreDocumentVersionsInput = {
    type = "structure",
    id = "RestoreDocumentVersionsInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        DocumentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RestoreDocumentVersionsOutput = {
    type = "structure",
    id = "RestoreDocumentVersionsOutput",
}

M.ContentCategoryType = {
    IMAGE = "IMAGE",
    DOCUMENT = "DOCUMENT",
    PDF = "PDF",
    SPREADSHEET = "SPREADSHEET",
    PRESENTATION = "PRESENTATION",
    AUDIO = "AUDIO",
    VIDEO = "VIDEO",
    SOURCE_CODE = "SOURCE_CODE",
    OTHER = "OTHER",
}

M.DateRangeType = {
    type = "structure",
    id = "DateRangeType",
    members = {
        StartValue = {
            type = "timestamp",
        },
        EndValue = {
            type = "timestamp",
        },
    },
}

M.PrincipalRoleType = {
    VIEWER = "VIEWER",
    CONTRIBUTOR = "CONTRIBUTOR",
    OWNER = "OWNER",
    COOWNER = "COOWNER",
}

M.SearchPrincipalType = {
    type = "structure",
    id = "SearchPrincipalType",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Roles = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SearchResourceType = {
    FOLDER = "FOLDER",
    DOCUMENT = "DOCUMENT",
    COMMENT = "COMMENT",
    DOCUMENT_VERSION = "DOCUMENT_VERSION",
}

M.SearchCollectionType = {
    OWNED = "OWNED",
    SHARED_WITH_ME = "SHARED_WITH_ME",
}

M.LongRangeType = {
    type = "structure",
    id = "LongRangeType",
    members = {
        StartValue = {
            type = "long",
        },
        EndValue = {
            type = "long",
        },
    },
}

M.LanguageCodeType = {
    AR = "AR",
    BG = "BG",
    BN = "BN",
    DA = "DA",
    DE = "DE",
    CS = "CS",
    EL = "EL",
    EN = "EN",
    ES = "ES",
    FA = "FA",
    FI = "FI",
    FR = "FR",
    HI = "HI",
    HU = "HU",
    ID = "ID",
    IT = "IT",
    JA = "JA",
    KO = "KO",
    LT = "LT",
    LV = "LV",
    NL = "NL",
    NO = "NO",
    PT = "PT",
    RO = "RO",
    RU = "RU",
    SV = "SV",
    SW = "SW",
    TH = "TH",
    TR = "TR",
    ZH = "ZH",
    DEFAULT = "DEFAULT",
}

M.Filters = {
    type = "structure",
    id = "Filters",
    members = {
        TextLocales = {
            type = "list",
            member = { type = "string" },
        },
        ContentCategories = {
            type = "list",
            member = { type = "string" },
        },
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
        Labels = {
            type = "list",
            member = { type = "string" },
        },
        Principals = {
            type = "list",
            member = M.SearchPrincipalType,
        },
        AncestorIds = {
            type = "list",
            member = { type = "string" },
        },
        SearchCollectionTypes = {
            type = "list",
            member = { type = "string" },
        },
        SizeRange = M.LongRangeType,
        CreatedRange = M.DateRangeType,
        ModifiedRange = M.DateRangeType,
    },
}

M.OrderByFieldType = {
    RELEVANCE = "RELEVANCE",
    NAME = "NAME",
    SIZE = "SIZE",
    CREATED_TIMESTAMP = "CREATED_TIMESTAMP",
    MODIFIED_TIMESTAMP = "MODIFIED_TIMESTAMP",
}

M.SortOrder = {
    ASC = "ASC",
    DESC = "DESC",
}

M.SearchSortResult = {
    type = "structure",
    id = "SearchSortResult",
    members = {
        Field = {
            type = "string",
        },
        Order = {
            type = "string",
        },
    },
}

M.SearchQueryScopeType = {
    NAME = "NAME",
    CONTENT = "CONTENT",
}

M.SearchResourcesInput = {
    type = "structure",
    id = "SearchResourcesInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        QueryText = {
            type = "string",
        },
        QueryScopes = {
            type = "list",
            member = { type = "string" },
        },
        OrganizationId = {
            type = "string",
        },
        AdditionalResponseFields = {
            type = "list",
            member = { type = "string" },
        },
        Filters = M.Filters,
        OrderBy = {
            type = "list",
            member = M.SearchSortResult,
        },
        Limit = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.ResponseItemType = {
    DOCUMENT = "DOCUMENT",
    FOLDER = "FOLDER",
    COMMENT = "COMMENT",
    DOCUMENT_VERSION = "DOCUMENT_VERSION",
}

M.ResponseItem = {
    type = "structure",
    id = "ResponseItem",
    members = {
        ResourceType = {
            type = "string",
        },
        WebUrl = {
            type = "string",
        },
        DocumentMetadata = M.DocumentMetadata,
        FolderMetadata = M.FolderMetadata,
        CommentMetadata = M.CommentMetadata,
        DocumentVersionMetadata = M.DocumentVersionMetadata,
    },
}

M.SearchResourcesOutput = {
    type = "structure",
    id = "SearchResourcesOutput",
    members = {
        Items = {
            type = "list",
            member = M.ResponseItem,
        },
        Marker = {
            type = "string",
        },
    },
}

M.UpdateDocumentInput = {
    type = "structure",
    id = "UpdateDocumentInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        DocumentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        ParentFolderId = {
            type = "string",
        },
        ResourceState = {
            type = "string",
        },
    },
}

M.UpdateDocumentOutput = {
    type = "structure",
    id = "UpdateDocumentOutput",
}

M.DocumentVersionStatus = {
    ACTIVE = "ACTIVE",
}

M.UpdateDocumentVersionInput = {
    type = "structure",
    id = "UpdateDocumentVersionInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        DocumentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionStatus = {
            type = "string",
        },
    },
}

M.UpdateDocumentVersionOutput = {
    type = "structure",
    id = "UpdateDocumentVersionOutput",
}

M.UpdateFolderInput = {
    type = "structure",
    id = "UpdateFolderInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        FolderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        ParentFolderId = {
            type = "string",
        },
        ResourceState = {
            type = "string",
        },
    },
}

M.UpdateFolderOutput = {
    type = "structure",
    id = "UpdateFolderOutput",
}

M.DeactivatingLastSystemUserException = {
    type = "structure",
    id = "DeactivatingLastSystemUserException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
    },
}

M.IllegalUserStateException = {
    type = "structure",
    id = "IllegalUserStateException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BooleanEnumType = {
    TRUE = "TRUE",
    FALSE = "FALSE",
}

M.UpdateUserInput = {
    type = "structure",
    id = "UpdateUserInput",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GivenName = {
            type = "string",
        },
        Surname = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        StorageRule = M.StorageRuleType,
        TimeZoneId = {
            type = "string",
        },
        Locale = {
            type = "string",
        },
        GrantPoweruserPrivileges = {
            type = "string",
        },
    },
}

M.UpdateUserOutput = {
    type = "structure",
    id = "UpdateUserOutput",
    members = {
        User = M.User,
    },
}

return M
