local M = {}

M.AbortDocumentVersionUploadInput = {
    type = "structure",
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
}

M.ConcurrentModificationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EntityNotExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        EntityIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.FailedDependencyException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ProhibitedStateException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnauthorizedOperationException = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ActivateUserInput = {
    type = "structure",
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
    members = {
        StorageAllocatedInBytes = {
            type = "number",
        },
        StorageType = {
            type = "string",
        },
    },
}

M.UserStorageMetadata = {
    type = "structure",
    members = {
        StorageUtilizedInBytes = {
            type = "number",
        },
        StorageRule = {
            type = "structure",
        },
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
        Storage = {
            type = "structure",
        },
    },
}

M.ActivateUserOutput = {
    type = "structure",
    members = {
        User = {
            type = "structure",
        },
    },
}

M.CommentStatusType = {
    DRAFT = "DRAFT",
    PUBLISHED = "PUBLISHED",
    DELETED = "DELETED",
}

M.CommentMetadata = {
    type = "structure",
    members = {
        CommentId = {
            type = "string",
        },
        Contributor = {
            type = "structure",
        },
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
        Owner = {
            type = "structure",
        },
        ParentId = {
            type = "string",
        },
    },
}

M.GroupMetadata = {
    type = "structure",
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
    members = {
        Users = {
            type = "list",
            member_type = "structure",
        },
        Groups = {
            type = "list",
            member_type = "structure",
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
    members = {
        Type = {
            type = "string",
        },
        TimeStamp = {
            type = "timestamp",
        },
        IsIndirectActivity = {
            type = "boolean",
        },
        OrganizationId = {
            type = "string",
        },
        Initiator = {
            type = "structure",
        },
        Participants = {
            type = "structure",
        },
        ResourceMetadata = {
            type = "structure",
        },
        OriginalParent = {
            type = "structure",
        },
        CommentMetadata = {
            type = "structure",
        },
    },
}

M.AdditionalResponseFieldType = {
    WEBURL = "WEBURL",
}

M.NotificationOptions = {
    type = "structure",
    members = {
        SendEmail = {
            type = "boolean",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        NotificationOptions = {
            type = "structure",
        },
    },
}

M.ShareStatusType = {
    SUCCESS = "SUCCESS",
    FAILURE = "FAILURE",
}

M.ShareResult = {
    type = "structure",
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
    members = {
        ShareResults = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CommentVisibilityType = {
    PUBLIC = "PUBLIC",
    PRIVATE = "PRIVATE",
}

M.CreateCommentInput = {
    type = "structure",
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
        },
    },
}

M.Comment = {
    type = "structure",
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
        Contributor = {
            type = "structure",
        },
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
    members = {
        Comment = {
            type = "structure",
        },
    },
}

M.DocumentLockedForCommentsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidCommentOperationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateCustomMetadataInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCustomMetadataOutput = {
    type = "structure",
}

M.CustomMetadataLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConflictingOperationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateFolderInput = {
    type = "structure",
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
            member_type = "string",
        },
        Size = {
            type = "number",
        },
        LatestVersionSize = {
            type = "number",
        },
    },
}

M.CreateFolderOutput = {
    type = "structure",
    members = {
        Metadata = {
            type = "structure",
        },
    },
}

M.EntityAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateLabelsInput = {
    type = "structure",
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
            member_type = "string",
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
}

M.TooManyLabelsException = {
    type = "structure",
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
    members = {
        Subscription = {
            type = "structure",
        },
    },
}

M.InvalidArgumentException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManySubscriptionsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateUserInput = {
    type = "structure",
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
        StorageRule = {
            type = "structure",
        },
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
    members = {
        User = {
            type = "structure",
        },
    },
}

M.DeactivateUserInput = {
    type = "structure",
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
}

M.DeleteCommentInput = {
    type = "structure",
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
}

M.DeleteCustomMetadataInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                http_query = "keys",
            },
        },
        DeleteAll = {
            type = "boolean",
            traits = {
                http_query = "deleteAll",
            },
        },
    },
}

M.DeleteCustomMetadataOutput = {
    type = "structure",
}

M.DeleteDocumentInput = {
    type = "structure",
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
}

M.DeleteDocumentVersionInput = {
    type = "structure",
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
                http_query = "deletePriorVersions",
                required = true,
            },
        },
    },
}

M.DeleteDocumentVersionOutput = {
    type = "structure",
}

M.InvalidOperationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteFolderInput = {
    type = "structure",
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
}

M.DeleteFolderContentsInput = {
    type = "structure",
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
}

M.DeleteLabelsInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                http_query = "labels",
            },
        },
        DeleteAll = {
            type = "boolean",
            traits = {
                http_query = "deleteAll",
            },
        },
    },
}

M.DeleteLabelsOutput = {
    type = "structure",
}

M.DeleteNotificationSubscriptionInput = {
    type = "structure",
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
}

M.DeleteUserInput = {
    type = "structure",
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
}

M.DescribeActivitiesInput = {
    type = "structure",
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
                http_query = "includeIndirectActivities",
            },
        },
        Limit = {
            type = "number",
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
    members = {
        UserActivities = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeCommentsInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        Comments = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeDocumentVersionsInput = {
    type = "structure",
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
            type = "number",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
        Source = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeDocumentVersionsOutput = {
    type = "structure",
    members = {
        DocumentVersions = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
    },
}

M.InvalidPasswordException = {
    type = "structure",
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
            type = "number",
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
        LatestVersionMetadata = {
            type = "structure",
        },
        ResourceState = {
            type = "string",
        },
        Labels = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeFolderContentsOutput = {
    type = "structure",
    members = {
        Folders = {
            type = "list",
            member_type = "structure",
        },
        Documents = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeGroupsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "limit",
            },
        },
    },
}

M.DescribeGroupsOutput = {
    type = "structure",
    members = {
        Groups = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeNotificationSubscriptionsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "limit",
            },
        },
    },
}

M.DescribeNotificationSubscriptionsOutput = {
    type = "structure",
    members = {
        Subscriptions = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeResourcePermissionsInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        Id = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Roles = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeResourcePermissionsOutput = {
    type = "structure",
    members = {
        Principals = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DescribeRootFoldersInput = {
    type = "structure",
    members = {
        AuthenticationToken = {
            type = "string",
            traits = {
                http_header = "Authentication",
                required = true,
            },
        },
        Limit = {
            type = "number",
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
    members = {
        Folders = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
    members = {
        Users = {
            type = "list",
            member_type = "structure",
        },
        TotalNumberOfUsers = {
            type = "number",
        },
        Marker = {
            type = "string",
        },
    },
}

M.RequestedEntityTooLargeException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetCurrentUserInput = {
    type = "structure",
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
    members = {
        User = {
            type = "structure",
        },
    },
}

M.GetDocumentInput = {
    type = "structure",
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
                http_query = "includeCustomMetadata",
            },
        },
    },
}

M.GetDocumentOutput = {
    type = "structure",
    members = {
        Metadata = {
            type = "structure",
        },
        CustomMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetDocumentPathInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        Components = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetDocumentPathOutput = {
    type = "structure",
    members = {
        Path = {
            type = "structure",
        },
    },
}

M.GetDocumentVersionInput = {
    type = "structure",
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
                http_query = "includeCustomMetadata",
            },
        },
    },
}

M.GetDocumentVersionOutput = {
    type = "structure",
    members = {
        Metadata = {
            type = "structure",
        },
        CustomMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetFolderInput = {
    type = "structure",
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
                http_query = "includeCustomMetadata",
            },
        },
    },
}

M.GetFolderOutput = {
    type = "structure",
    members = {
        Metadata = {
            type = "structure",
        },
        CustomMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetFolderPathInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        Path = {
            type = "structure",
        },
    },
}

M.ResourceCollectionType = {
    SHARED_WITH_ME = "SHARED_WITH_ME",
}

M.GetResourcesInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        Folders = {
            type = "list",
            member_type = "structure",
        },
        Documents = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DraftUploadOutOfSyncException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InitiateDocumentVersionUploadInput = {
    type = "structure",
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
            type = "number",
        },
        ParentFolderId = {
            type = "string",
        },
    },
}

M.UploadMetadata = {
    type = "structure",
    members = {
        UploadUrl = {
            type = "string",
        },
        SignedHeaders = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.InitiateDocumentVersionUploadOutput = {
    type = "structure",
    members = {
        Metadata = {
            type = "structure",
        },
        UploadMetadata = {
            type = "structure",
        },
    },
}

M.ResourceAlreadyCheckedOutException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StorageLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StorageLimitWillExceedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RemoveAllResourcePermissionsInput = {
    type = "structure",
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
}

M.RemoveResourcePermissionInput = {
    type = "structure",
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
}

M.RestoreDocumentVersionsInput = {
    type = "structure",
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
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Roles = {
            type = "list",
            member_type = "string",
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
    members = {
        StartValue = {
            type = "number",
        },
        EndValue = {
            type = "number",
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
    members = {
        TextLocales = {
            type = "list",
            member_type = "string",
        },
        ContentCategories = {
            type = "list",
            member_type = "string",
        },
        ResourceTypes = {
            type = "list",
            member_type = "string",
        },
        Labels = {
            type = "list",
            member_type = "string",
        },
        Principals = {
            type = "list",
            member_type = "structure",
        },
        AncestorIds = {
            type = "list",
            member_type = "string",
        },
        SearchCollectionTypes = {
            type = "list",
            member_type = "string",
        },
        SizeRange = {
            type = "structure",
        },
        CreatedRange = {
            type = "structure",
        },
        ModifiedRange = {
            type = "structure",
        },
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
            member_type = "string",
        },
        OrganizationId = {
            type = "string",
        },
        AdditionalResponseFields = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "structure",
        },
        OrderBy = {
            type = "list",
            member_type = "structure",
        },
        Limit = {
            type = "number",
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
    members = {
        ResourceType = {
            type = "string",
        },
        WebUrl = {
            type = "string",
        },
        DocumentMetadata = {
            type = "structure",
        },
        FolderMetadata = {
            type = "structure",
        },
        CommentMetadata = {
            type = "structure",
        },
        DocumentVersionMetadata = {
            type = "structure",
        },
    },
}

M.SearchResourcesOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        Marker = {
            type = "string",
        },
    },
}

M.UpdateDocumentInput = {
    type = "structure",
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
}

M.DocumentVersionStatus = {
    ACTIVE = "ACTIVE",
}

M.UpdateDocumentVersionInput = {
    type = "structure",
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
}

M.UpdateFolderInput = {
    type = "structure",
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
}

M.DeactivatingLastSystemUserException = {
    type = "structure",
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
        StorageRule = {
            type = "structure",
        },
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
    members = {
        User = {
            type = "structure",
        },
    },
}

return M
