local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.workdocs"

local M = {}

M.AbortDocumentVersionUploadInput = schema.new({
    id = id.from(_N, "AbortDocumentVersionUploadInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "AbortDocumentVersionUploadInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        DocumentId = schema.new({
            id = id.from(_N, "AbortDocumentVersionUploadInput", "DocumentId"),
            type = "string",
            name = "DocumentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VersionId = schema.new({
            id = id.from(_N, "AbortDocumentVersionUploadInput", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.AbortDocumentVersionUploadOutput = schema.new({
    id = id.from(_N, "AbortDocumentVersionUploadOutput"),
    type = "structure",
})

M.ConcurrentModificationException = schema.new({
    id = id.from(_N, "ConcurrentModificationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ConcurrentModificationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.EntityNotExistsException = schema.new({
    id = id.from(_N, "EntityNotExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "EntityNotExistsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        EntityIds = schema.new({
            id = id.from(_N, "EntityNotExistsException", "EntityIds"),
            type = "list",
            name = "EntityIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.FailedDependencyException = schema.new({
    id = id.from(_N, "FailedDependencyException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "FailedDependencyException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ProhibitedStateException = schema.new({
    id = id.from(_N, "ProhibitedStateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ProhibitedStateException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceUnavailableException = schema.new({
    id = id.from(_N, "ServiceUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UnauthorizedOperationException = schema.new({
    id = id.from(_N, "UnauthorizedOperationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UnauthorizedOperationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        Code = schema.new({
            id = id.from(_N, "UnauthorizedOperationException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
    },
})

M.UnauthorizedResourceAccessException = schema.new({
    id = id.from(_N, "UnauthorizedResourceAccessException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UnauthorizedResourceAccessException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ActivateUserInput = schema.new({
    id = id.from(_N, "ActivateUserInput"),
    type = "structure",
    members = {
        UserId = schema.new({
            id = id.from(_N, "ActivateUserInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        AuthenticationToken = schema.new({
            id = id.from(_N, "ActivateUserInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
    },
})

M.StorageRuleType = schema.new({
    id = id.from(_N, "StorageRuleType"),
    type = "structure",
    members = {
        StorageAllocatedInBytes = schema.new({
            id = id.from(_N, "StorageRuleType", "StorageAllocatedInBytes"),
            type = "long",
            name = "StorageAllocatedInBytes",
            target_id = prelude.Long.id,
        }),
        StorageType = schema.new({
            id = id.from(_N, "StorageRuleType", "StorageType"),
            type = "string",
            name = "StorageType",
            target_id = prelude.String.id,
        }),
    },
})

M.UserStorageMetadata = schema.new({
    id = id.from(_N, "UserStorageMetadata"),
    type = "structure",
    members = {
        StorageUtilizedInBytes = schema.new({
            id = id.from(_N, "UserStorageMetadata", "StorageUtilizedInBytes"),
            type = "long",
            name = "StorageUtilizedInBytes",
            target_id = prelude.Long.id,
        }),
        StorageRule = schema.new({
            id = id.from(_N, "UserStorageMetadata", "StorageRule"),
            type = "structure",
            name = "StorageRule",
            target_id = id.from(_N, "StorageRuleType"),
            target = M.StorageRuleType,
        }),
    },
})

M.User = schema.new({
    id = id.from(_N, "User"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "User", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Username = schema.new({
            id = id.from(_N, "User", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
        }),
        EmailAddress = schema.new({
            id = id.from(_N, "User", "EmailAddress"),
            type = "string",
            name = "EmailAddress",
            target_id = prelude.String.id,
        }),
        GivenName = schema.new({
            id = id.from(_N, "User", "GivenName"),
            type = "string",
            name = "GivenName",
            target_id = prelude.String.id,
        }),
        Surname = schema.new({
            id = id.from(_N, "User", "Surname"),
            type = "string",
            name = "Surname",
            target_id = prelude.String.id,
        }),
        OrganizationId = schema.new({
            id = id.from(_N, "User", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
        }),
        RootFolderId = schema.new({
            id = id.from(_N, "User", "RootFolderId"),
            type = "string",
            name = "RootFolderId",
            target_id = prelude.String.id,
        }),
        RecycleBinFolderId = schema.new({
            id = id.from(_N, "User", "RecycleBinFolderId"),
            type = "string",
            name = "RecycleBinFolderId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "User", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "User", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "User", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        ModifiedTimestamp = schema.new({
            id = id.from(_N, "User", "ModifiedTimestamp"),
            type = "timestamp",
            name = "ModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        TimeZoneId = schema.new({
            id = id.from(_N, "User", "TimeZoneId"),
            type = "string",
            name = "TimeZoneId",
            target_id = prelude.String.id,
        }),
        Locale = schema.new({
            id = id.from(_N, "User", "Locale"),
            type = "string",
            name = "Locale",
            target_id = prelude.String.id,
        }),
        Storage = schema.new({
            id = id.from(_N, "User", "Storage"),
            type = "structure",
            name = "Storage",
            target_id = id.from(_N, "UserStorageMetadata"),
            target = M.UserStorageMetadata,
        }),
    },
})

M.ActivateUserOutput = schema.new({
    id = id.from(_N, "ActivateUserOutput"),
    type = "structure",
    members = {
        User = schema.new({
            id = id.from(_N, "ActivateUserOutput", "User"),
            type = "structure",
            name = "User",
            target_id = id.from(_N, "User"),
            target = M.User,
        }),
    },
})

M.CommentMetadata = schema.new({
    id = id.from(_N, "CommentMetadata"),
    type = "structure",
    members = {
        CommentId = schema.new({
            id = id.from(_N, "CommentMetadata", "CommentId"),
            type = "string",
            name = "CommentId",
            target_id = prelude.String.id,
        }),
        Contributor = schema.new({
            id = id.from(_N, "CommentMetadata", "Contributor"),
            type = "structure",
            name = "Contributor",
            target_id = id.from(_N, "User"),
            target = M.User,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "CommentMetadata", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        CommentStatus = schema.new({
            id = id.from(_N, "CommentMetadata", "CommentStatus"),
            type = "string",
            name = "CommentStatus",
            target_id = prelude.String.id,
        }),
        RecipientId = schema.new({
            id = id.from(_N, "CommentMetadata", "RecipientId"),
            type = "string",
            name = "RecipientId",
            target_id = prelude.String.id,
        }),
        ContributorId = schema.new({
            id = id.from(_N, "CommentMetadata", "ContributorId"),
            type = "string",
            name = "ContributorId",
            target_id = prelude.String.id,
        }),
    },
})

M.UserMetadata = schema.new({
    id = id.from(_N, "UserMetadata"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UserMetadata", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Username = schema.new({
            id = id.from(_N, "UserMetadata", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
        }),
        GivenName = schema.new({
            id = id.from(_N, "UserMetadata", "GivenName"),
            type = "string",
            name = "GivenName",
            target_id = prelude.String.id,
        }),
        Surname = schema.new({
            id = id.from(_N, "UserMetadata", "Surname"),
            type = "string",
            name = "Surname",
            target_id = prelude.String.id,
        }),
        EmailAddress = schema.new({
            id = id.from(_N, "UserMetadata", "EmailAddress"),
            type = "string",
            name = "EmailAddress",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceMetadata = schema.new({
    id = id.from(_N, "ResourceMetadata"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "ResourceMetadata", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ResourceMetadata", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        OriginalName = schema.new({
            id = id.from(_N, "ResourceMetadata", "OriginalName"),
            type = "string",
            name = "OriginalName",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "ResourceMetadata", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        VersionId = schema.new({
            id = id.from(_N, "ResourceMetadata", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
        }),
        Owner = schema.new({
            id = id.from(_N, "ResourceMetadata", "Owner"),
            type = "structure",
            name = "Owner",
            target_id = id.from(_N, "UserMetadata"),
            target = M.UserMetadata,
        }),
        ParentId = schema.new({
            id = id.from(_N, "ResourceMetadata", "ParentId"),
            type = "string",
            name = "ParentId",
            target_id = prelude.String.id,
        }),
    },
})

M.GroupMetadata = schema.new({
    id = id.from(_N, "GroupMetadata"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GroupMetadata", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GroupMetadata", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.Participants = schema.new({
    id = id.from(_N, "Participants"),
    type = "structure",
    members = {
        Users = schema.new({
            id = id.from(_N, "Participants", "Users"),
            type = "list",
            name = "Users",
            target_id = prelude.Document.id,
            list_member = M.UserMetadata,
        }),
        Groups = schema.new({
            id = id.from(_N, "Participants", "Groups"),
            type = "list",
            name = "Groups",
            target_id = prelude.Document.id,
            list_member = M.GroupMetadata,
        }),
    },
})

M.Activity = schema.new({
    id = id.from(_N, "Activity"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "Activity", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        TimeStamp = schema.new({
            id = id.from(_N, "Activity", "TimeStamp"),
            type = "timestamp",
            name = "TimeStamp",
            target_id = prelude.Timestamp.id,
        }),
        IsIndirectActivity = schema.new({
            id = id.from(_N, "Activity", "IsIndirectActivity"),
            type = "boolean",
            name = "IsIndirectActivity",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        OrganizationId = schema.new({
            id = id.from(_N, "Activity", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
        }),
        Initiator = schema.new({
            id = id.from(_N, "Activity", "Initiator"),
            type = "structure",
            name = "Initiator",
            target_id = id.from(_N, "UserMetadata"),
            target = M.UserMetadata,
        }),
        Participants = schema.new({
            id = id.from(_N, "Activity", "Participants"),
            type = "structure",
            name = "Participants",
            target_id = id.from(_N, "Participants"),
            target = M.Participants,
        }),
        ResourceMetadata = schema.new({
            id = id.from(_N, "Activity", "ResourceMetadata"),
            type = "structure",
            name = "ResourceMetadata",
            target_id = id.from(_N, "ResourceMetadata"),
            target = M.ResourceMetadata,
        }),
        OriginalParent = schema.new({
            id = id.from(_N, "Activity", "OriginalParent"),
            type = "structure",
            name = "OriginalParent",
            target_id = id.from(_N, "ResourceMetadata"),
            target = M.ResourceMetadata,
        }),
        CommentMetadata = schema.new({
            id = id.from(_N, "Activity", "CommentMetadata"),
            type = "structure",
            name = "CommentMetadata",
            target_id = id.from(_N, "CommentMetadata"),
            target = M.CommentMetadata,
        }),
    },
})

M.NotificationOptions = schema.new({
    id = id.from(_N, "NotificationOptions"),
    type = "structure",
    members = {
        SendEmail = schema.new({
            id = id.from(_N, "NotificationOptions", "SendEmail"),
            type = "boolean",
            name = "SendEmail",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        EmailMessage = schema.new({
            id = id.from(_N, "NotificationOptions", "EmailMessage"),
            type = "string",
            name = "EmailMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.SharePrincipal = schema.new({
    id = id.from(_N, "SharePrincipal"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "SharePrincipal", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "SharePrincipal", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Role = schema.new({
            id = id.from(_N, "SharePrincipal", "Role"),
            type = "string",
            name = "Role",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddResourcePermissionsInput = schema.new({
    id = id.from(_N, "AddResourcePermissionsInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "AddResourcePermissionsInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "AddResourcePermissionsInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Principals = schema.new({
            id = id.from(_N, "AddResourcePermissionsInput", "Principals"),
            type = "list",
            name = "Principals",
            target_id = prelude.Document.id,
            list_member = M.SharePrincipal,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NotificationOptions = schema.new({
            id = id.from(_N, "AddResourcePermissionsInput", "NotificationOptions"),
            type = "structure",
            name = "NotificationOptions",
            target_id = id.from(_N, "NotificationOptions"),
            target = M.NotificationOptions,
        }),
    },
})

M.ShareResult = schema.new({
    id = id.from(_N, "ShareResult"),
    type = "structure",
    members = {
        PrincipalId = schema.new({
            id = id.from(_N, "ShareResult", "PrincipalId"),
            type = "string",
            name = "PrincipalId",
            target_id = prelude.String.id,
        }),
        InviteePrincipalId = schema.new({
            id = id.from(_N, "ShareResult", "InviteePrincipalId"),
            type = "string",
            name = "InviteePrincipalId",
            target_id = prelude.String.id,
        }),
        Role = schema.new({
            id = id.from(_N, "ShareResult", "Role"),
            type = "string",
            name = "Role",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ShareResult", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ShareId = schema.new({
            id = id.from(_N, "ShareResult", "ShareId"),
            type = "string",
            name = "ShareId",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "ShareResult", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.AddResourcePermissionsOutput = schema.new({
    id = id.from(_N, "AddResourcePermissionsOutput"),
    type = "structure",
    members = {
        ShareResults = schema.new({
            id = id.from(_N, "AddResourcePermissionsOutput", "ShareResults"),
            type = "list",
            name = "ShareResults",
            target_id = prelude.Document.id,
            list_member = M.ShareResult,
        }),
    },
})

M.CreateCommentInput = schema.new({
    id = id.from(_N, "CreateCommentInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "CreateCommentInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        DocumentId = schema.new({
            id = id.from(_N, "CreateCommentInput", "DocumentId"),
            type = "string",
            name = "DocumentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VersionId = schema.new({
            id = id.from(_N, "CreateCommentInput", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ParentId = schema.new({
            id = id.from(_N, "CreateCommentInput", "ParentId"),
            type = "string",
            name = "ParentId",
            target_id = prelude.String.id,
        }),
        ThreadId = schema.new({
            id = id.from(_N, "CreateCommentInput", "ThreadId"),
            type = "string",
            name = "ThreadId",
            target_id = prelude.String.id,
        }),
        Text = schema.new({
            id = id.from(_N, "CreateCommentInput", "Text"),
            type = "string",
            name = "Text",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Visibility = schema.new({
            id = id.from(_N, "CreateCommentInput", "Visibility"),
            type = "string",
            name = "Visibility",
            target_id = prelude.String.id,
        }),
        NotifyCollaborators = schema.new({
            id = id.from(_N, "CreateCommentInput", "NotifyCollaborators"),
            type = "boolean",
            name = "NotifyCollaborators",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.Comment = schema.new({
    id = id.from(_N, "Comment"),
    type = "structure",
    members = {
        CommentId = schema.new({
            id = id.from(_N, "Comment", "CommentId"),
            type = "string",
            name = "CommentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ParentId = schema.new({
            id = id.from(_N, "Comment", "ParentId"),
            type = "string",
            name = "ParentId",
            target_id = prelude.String.id,
        }),
        ThreadId = schema.new({
            id = id.from(_N, "Comment", "ThreadId"),
            type = "string",
            name = "ThreadId",
            target_id = prelude.String.id,
        }),
        Text = schema.new({
            id = id.from(_N, "Comment", "Text"),
            type = "string",
            name = "Text",
            target_id = prelude.String.id,
        }),
        Contributor = schema.new({
            id = id.from(_N, "Comment", "Contributor"),
            type = "structure",
            name = "Contributor",
            target_id = id.from(_N, "User"),
            target = M.User,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "Comment", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Comment", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Visibility = schema.new({
            id = id.from(_N, "Comment", "Visibility"),
            type = "string",
            name = "Visibility",
            target_id = prelude.String.id,
        }),
        RecipientId = schema.new({
            id = id.from(_N, "Comment", "RecipientId"),
            type = "string",
            name = "RecipientId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateCommentOutput = schema.new({
    id = id.from(_N, "CreateCommentOutput"),
    type = "structure",
    members = {
        Comment = schema.new({
            id = id.from(_N, "CreateCommentOutput", "Comment"),
            type = "structure",
            name = "Comment",
            target_id = id.from(_N, "Comment"),
            target = M.Comment,
        }),
    },
})

M.DocumentLockedForCommentsException = schema.new({
    id = id.from(_N, "DocumentLockedForCommentsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DocumentLockedForCommentsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidCommentOperationException = schema.new({
    id = id.from(_N, "InvalidCommentOperationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidCommentOperationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateCustomMetadataInput = schema.new({
    id = id.from(_N, "CreateCustomMetadataInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "CreateCustomMetadataInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "CreateCustomMetadataInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VersionId = schema.new({
            id = id.from(_N, "CreateCustomMetadataInput", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "versionid" },
            },
        }),
        CustomMetadata = schema.new({
            id = id.from(_N, "CreateCustomMetadataInput", "CustomMetadata"),
            type = "map",
            name = "CustomMetadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateCustomMetadataOutput = schema.new({
    id = id.from(_N, "CreateCustomMetadataOutput"),
    type = "structure",
})

M.CustomMetadataLimitExceededException = schema.new({
    id = id.from(_N, "CustomMetadataLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CustomMetadataLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ConflictingOperationException = schema.new({
    id = id.from(_N, "ConflictingOperationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ConflictingOperationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateFolderInput = schema.new({
    id = id.from(_N, "CreateFolderInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "CreateFolderInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateFolderInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ParentFolderId = schema.new({
            id = id.from(_N, "CreateFolderInput", "ParentFolderId"),
            type = "string",
            name = "ParentFolderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FolderMetadata = schema.new({
    id = id.from(_N, "FolderMetadata"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "FolderMetadata", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "FolderMetadata", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        CreatorId = schema.new({
            id = id.from(_N, "FolderMetadata", "CreatorId"),
            type = "string",
            name = "CreatorId",
            target_id = prelude.String.id,
        }),
        ParentFolderId = schema.new({
            id = id.from(_N, "FolderMetadata", "ParentFolderId"),
            type = "string",
            name = "ParentFolderId",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "FolderMetadata", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        ModifiedTimestamp = schema.new({
            id = id.from(_N, "FolderMetadata", "ModifiedTimestamp"),
            type = "timestamp",
            name = "ModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        ResourceState = schema.new({
            id = id.from(_N, "FolderMetadata", "ResourceState"),
            type = "string",
            name = "ResourceState",
            target_id = prelude.String.id,
        }),
        Signature = schema.new({
            id = id.from(_N, "FolderMetadata", "Signature"),
            type = "string",
            name = "Signature",
            target_id = prelude.String.id,
        }),
        Labels = schema.new({
            id = id.from(_N, "FolderMetadata", "Labels"),
            type = "list",
            name = "Labels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Size = schema.new({
            id = id.from(_N, "FolderMetadata", "Size"),
            type = "long",
            name = "Size",
            target_id = prelude.Long.id,
        }),
        LatestVersionSize = schema.new({
            id = id.from(_N, "FolderMetadata", "LatestVersionSize"),
            type = "long",
            name = "LatestVersionSize",
            target_id = prelude.Long.id,
        }),
    },
})

M.CreateFolderOutput = schema.new({
    id = id.from(_N, "CreateFolderOutput"),
    type = "structure",
    members = {
        Metadata = schema.new({
            id = id.from(_N, "CreateFolderOutput", "Metadata"),
            type = "structure",
            name = "Metadata",
            target_id = id.from(_N, "FolderMetadata"),
            target = M.FolderMetadata,
        }),
    },
})

M.EntityAlreadyExistsException = schema.new({
    id = id.from(_N, "EntityAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "EntityAlreadyExistsException", "Message"),
            type = "string",
            name = "Message",
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
        Message = schema.new({
            id = id.from(_N, "LimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateLabelsInput = schema.new({
    id = id.from(_N, "CreateLabelsInput"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "CreateLabelsInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Labels = schema.new({
            id = id.from(_N, "CreateLabelsInput", "Labels"),
            type = "list",
            name = "Labels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AuthenticationToken = schema.new({
            id = id.from(_N, "CreateLabelsInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
    },
})

M.CreateLabelsOutput = schema.new({
    id = id.from(_N, "CreateLabelsOutput"),
    type = "structure",
})

M.TooManyLabelsException = schema.new({
    id = id.from(_N, "TooManyLabelsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyLabelsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateNotificationSubscriptionInput = schema.new({
    id = id.from(_N, "CreateNotificationSubscriptionInput"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "CreateNotificationSubscriptionInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Endpoint = schema.new({
            id = id.from(_N, "CreateNotificationSubscriptionInput", "Endpoint"),
            type = "string",
            name = "Endpoint",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Protocol = schema.new({
            id = id.from(_N, "CreateNotificationSubscriptionInput", "Protocol"),
            type = "string",
            name = "Protocol",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SubscriptionType = schema.new({
            id = id.from(_N, "CreateNotificationSubscriptionInput", "SubscriptionType"),
            type = "string",
            name = "SubscriptionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Subscription = schema.new({
    id = id.from(_N, "Subscription"),
    type = "structure",
    members = {
        SubscriptionId = schema.new({
            id = id.from(_N, "Subscription", "SubscriptionId"),
            type = "string",
            name = "SubscriptionId",
            target_id = prelude.String.id,
        }),
        EndPoint = schema.new({
            id = id.from(_N, "Subscription", "EndPoint"),
            type = "string",
            name = "EndPoint",
            target_id = prelude.String.id,
        }),
        Protocol = schema.new({
            id = id.from(_N, "Subscription", "Protocol"),
            type = "string",
            name = "Protocol",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateNotificationSubscriptionOutput = schema.new({
    id = id.from(_N, "CreateNotificationSubscriptionOutput"),
    type = "structure",
    members = {
        Subscription = schema.new({
            id = id.from(_N, "CreateNotificationSubscriptionOutput", "Subscription"),
            type = "structure",
            name = "Subscription",
            target_id = id.from(_N, "Subscription"),
            target = M.Subscription,
        }),
    },
})

M.InvalidArgumentException = schema.new({
    id = id.from(_N, "InvalidArgumentException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidArgumentException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManySubscriptionsException = schema.new({
    id = id.from(_N, "TooManySubscriptionsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManySubscriptionsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateUserInput = schema.new({
    id = id.from(_N, "CreateUserInput"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "CreateUserInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
        }),
        Username = schema.new({
            id = id.from(_N, "CreateUserInput", "Username"),
            type = "string",
            name = "Username",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EmailAddress = schema.new({
            id = id.from(_N, "CreateUserInput", "EmailAddress"),
            type = "string",
            name = "EmailAddress",
            target_id = prelude.String.id,
        }),
        GivenName = schema.new({
            id = id.from(_N, "CreateUserInput", "GivenName"),
            type = "string",
            name = "GivenName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Surname = schema.new({
            id = id.from(_N, "CreateUserInput", "Surname"),
            type = "string",
            name = "Surname",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Password = schema.new({
            id = id.from(_N, "CreateUserInput", "Password"),
            type = "string",
            name = "Password",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TimeZoneId = schema.new({
            id = id.from(_N, "CreateUserInput", "TimeZoneId"),
            type = "string",
            name = "TimeZoneId",
            target_id = prelude.String.id,
        }),
        StorageRule = schema.new({
            id = id.from(_N, "CreateUserInput", "StorageRule"),
            type = "structure",
            name = "StorageRule",
            target_id = id.from(_N, "StorageRuleType"),
            target = M.StorageRuleType,
        }),
        AuthenticationToken = schema.new({
            id = id.from(_N, "CreateUserInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
    },
})

M.CreateUserOutput = schema.new({
    id = id.from(_N, "CreateUserOutput"),
    type = "structure",
    members = {
        User = schema.new({
            id = id.from(_N, "CreateUserOutput", "User"),
            type = "structure",
            name = "User",
            target_id = id.from(_N, "User"),
            target = M.User,
        }),
    },
})

M.DeactivateUserInput = schema.new({
    id = id.from(_N, "DeactivateUserInput"),
    type = "structure",
    members = {
        UserId = schema.new({
            id = id.from(_N, "DeactivateUserInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        AuthenticationToken = schema.new({
            id = id.from(_N, "DeactivateUserInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
    },
})

M.DeactivateUserOutput = schema.new({
    id = id.from(_N, "DeactivateUserOutput"),
    type = "structure",
})

M.DeleteCommentInput = schema.new({
    id = id.from(_N, "DeleteCommentInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "DeleteCommentInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        DocumentId = schema.new({
            id = id.from(_N, "DeleteCommentInput", "DocumentId"),
            type = "string",
            name = "DocumentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VersionId = schema.new({
            id = id.from(_N, "DeleteCommentInput", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        CommentId = schema.new({
            id = id.from(_N, "DeleteCommentInput", "CommentId"),
            type = "string",
            name = "CommentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteCommentOutput = schema.new({
    id = id.from(_N, "DeleteCommentOutput"),
    type = "structure",
})

M.DeleteCustomMetadataInput = schema.new({
    id = id.from(_N, "DeleteCustomMetadataInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "DeleteCustomMetadataInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "DeleteCustomMetadataInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VersionId = schema.new({
            id = id.from(_N, "DeleteCustomMetadataInput", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "versionId" },
            },
        }),
        Keys = schema.new({
            id = id.from(_N, "DeleteCustomMetadataInput", "Keys"),
            type = "list",
            name = "Keys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "keys" },
            },
        }),
        DeleteAll = schema.new({
            id = id.from(_N, "DeleteCustomMetadataInput", "DeleteAll"),
            type = "boolean",
            name = "DeleteAll",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "deleteAll" },
            },
        }),
    },
})

M.DeleteCustomMetadataOutput = schema.new({
    id = id.from(_N, "DeleteCustomMetadataOutput"),
    type = "structure",
})

M.DeleteDocumentInput = schema.new({
    id = id.from(_N, "DeleteDocumentInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "DeleteDocumentInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        DocumentId = schema.new({
            id = id.from(_N, "DeleteDocumentInput", "DocumentId"),
            type = "string",
            name = "DocumentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteDocumentOutput = schema.new({
    id = id.from(_N, "DeleteDocumentOutput"),
    type = "structure",
})

M.DeleteDocumentVersionInput = schema.new({
    id = id.from(_N, "DeleteDocumentVersionInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "DeleteDocumentVersionInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        DocumentId = schema.new({
            id = id.from(_N, "DeleteDocumentVersionInput", "DocumentId"),
            type = "string",
            name = "DocumentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VersionId = schema.new({
            id = id.from(_N, "DeleteDocumentVersionInput", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DeletePriorVersions = schema.new({
            id = id.from(_N, "DeleteDocumentVersionInput", "DeletePriorVersions"),
            type = "boolean",
            name = "DeletePriorVersions",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "deletePriorVersions" },
            },
        }),
    },
})

M.DeleteDocumentVersionOutput = schema.new({
    id = id.from(_N, "DeleteDocumentVersionOutput"),
    type = "structure",
})

M.InvalidOperationException = schema.new({
    id = id.from(_N, "InvalidOperationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidOperationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteFolderInput = schema.new({
    id = id.from(_N, "DeleteFolderInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "DeleteFolderInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        FolderId = schema.new({
            id = id.from(_N, "DeleteFolderInput", "FolderId"),
            type = "string",
            name = "FolderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteFolderOutput = schema.new({
    id = id.from(_N, "DeleteFolderOutput"),
    type = "structure",
})

M.DeleteFolderContentsInput = schema.new({
    id = id.from(_N, "DeleteFolderContentsInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "DeleteFolderContentsInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        FolderId = schema.new({
            id = id.from(_N, "DeleteFolderContentsInput", "FolderId"),
            type = "string",
            name = "FolderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteFolderContentsOutput = schema.new({
    id = id.from(_N, "DeleteFolderContentsOutput"),
    type = "structure",
})

M.DeleteLabelsInput = schema.new({
    id = id.from(_N, "DeleteLabelsInput"),
    type = "structure",
    members = {
        ResourceId = schema.new({
            id = id.from(_N, "DeleteLabelsInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        AuthenticationToken = schema.new({
            id = id.from(_N, "DeleteLabelsInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        Labels = schema.new({
            id = id.from(_N, "DeleteLabelsInput", "Labels"),
            type = "list",
            name = "Labels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "labels" },
            },
        }),
        DeleteAll = schema.new({
            id = id.from(_N, "DeleteLabelsInput", "DeleteAll"),
            type = "boolean",
            name = "DeleteAll",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "deleteAll" },
            },
        }),
    },
})

M.DeleteLabelsOutput = schema.new({
    id = id.from(_N, "DeleteLabelsOutput"),
    type = "structure",
})

M.DeleteNotificationSubscriptionInput = schema.new({
    id = id.from(_N, "DeleteNotificationSubscriptionInput"),
    type = "structure",
    members = {
        SubscriptionId = schema.new({
            id = id.from(_N, "DeleteNotificationSubscriptionInput", "SubscriptionId"),
            type = "string",
            name = "SubscriptionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        OrganizationId = schema.new({
            id = id.from(_N, "DeleteNotificationSubscriptionInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteNotificationSubscriptionOutput = schema.new({
    id = id.from(_N, "DeleteNotificationSubscriptionOutput"),
    type = "structure",
})

M.DeleteUserInput = schema.new({
    id = id.from(_N, "DeleteUserInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "DeleteUserInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "DeleteUserInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteUserOutput = schema.new({
    id = id.from(_N, "DeleteUserOutput"),
    type = "structure",
})

M.DescribeActivitiesInput = schema.new({
    id = id.from(_N, "DescribeActivitiesInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "DescribeActivitiesInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        StartTime = schema.new({
            id = id.from(_N, "DescribeActivitiesInput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "startTime" },
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "DescribeActivitiesInput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "endTime" },
            },
        }),
        OrganizationId = schema.new({
            id = id.from(_N, "DescribeActivitiesInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "organizationId" },
            },
        }),
        ActivityTypes = schema.new({
            id = id.from(_N, "DescribeActivitiesInput", "ActivityTypes"),
            type = "string",
            name = "ActivityTypes",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "activityTypes" },
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "DescribeActivitiesInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "resourceId" },
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "DescribeActivitiesInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "userId" },
            },
        }),
        IncludeIndirectActivities = schema.new({
            id = id.from(_N, "DescribeActivitiesInput", "IncludeIndirectActivities"),
            type = "boolean",
            name = "IncludeIndirectActivities",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "includeIndirectActivities" },
            },
        }),
        Limit = schema.new({
            id = id.from(_N, "DescribeActivitiesInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeActivitiesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "marker" },
            },
        }),
    },
})

M.DescribeActivitiesOutput = schema.new({
    id = id.from(_N, "DescribeActivitiesOutput"),
    type = "structure",
    members = {
        UserActivities = schema.new({
            id = id.from(_N, "DescribeActivitiesOutput", "UserActivities"),
            type = "list",
            name = "UserActivities",
            target_id = prelude.Document.id,
            list_member = M.Activity,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeActivitiesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeCommentsInput = schema.new({
    id = id.from(_N, "DescribeCommentsInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "DescribeCommentsInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        DocumentId = schema.new({
            id = id.from(_N, "DescribeCommentsInput", "DocumentId"),
            type = "string",
            name = "DocumentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VersionId = schema.new({
            id = id.from(_N, "DescribeCommentsInput", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Limit = schema.new({
            id = id.from(_N, "DescribeCommentsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeCommentsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "marker" },
            },
        }),
    },
})

M.DescribeCommentsOutput = schema.new({
    id = id.from(_N, "DescribeCommentsOutput"),
    type = "structure",
    members = {
        Comments = schema.new({
            id = id.from(_N, "DescribeCommentsOutput", "Comments"),
            type = "list",
            name = "Comments",
            target_id = prelude.Document.id,
            list_member = M.Comment,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeCommentsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDocumentVersionsInput = schema.new({
    id = id.from(_N, "DescribeDocumentVersionsInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "DescribeDocumentVersionsInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        DocumentId = schema.new({
            id = id.from(_N, "DescribeDocumentVersionsInput", "DocumentId"),
            type = "string",
            name = "DocumentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeDocumentVersionsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "marker" },
            },
        }),
        Limit = schema.new({
            id = id.from(_N, "DescribeDocumentVersionsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
        Include = schema.new({
            id = id.from(_N, "DescribeDocumentVersionsInput", "Include"),
            type = "string",
            name = "Include",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "include" },
            },
        }),
        Fields = schema.new({
            id = id.from(_N, "DescribeDocumentVersionsInput", "Fields"),
            type = "string",
            name = "Fields",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "fields" },
            },
        }),
    },
})

M.DocumentVersionMetadata = schema.new({
    id = id.from(_N, "DocumentVersionMetadata"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DocumentVersionMetadata", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "DocumentVersionMetadata", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ContentType = schema.new({
            id = id.from(_N, "DocumentVersionMetadata", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
        }),
        Size = schema.new({
            id = id.from(_N, "DocumentVersionMetadata", "Size"),
            type = "long",
            name = "Size",
            target_id = prelude.Long.id,
        }),
        Signature = schema.new({
            id = id.from(_N, "DocumentVersionMetadata", "Signature"),
            type = "string",
            name = "Signature",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DocumentVersionMetadata", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "DocumentVersionMetadata", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        ModifiedTimestamp = schema.new({
            id = id.from(_N, "DocumentVersionMetadata", "ModifiedTimestamp"),
            type = "timestamp",
            name = "ModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        ContentCreatedTimestamp = schema.new({
            id = id.from(_N, "DocumentVersionMetadata", "ContentCreatedTimestamp"),
            type = "timestamp",
            name = "ContentCreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        ContentModifiedTimestamp = schema.new({
            id = id.from(_N, "DocumentVersionMetadata", "ContentModifiedTimestamp"),
            type = "timestamp",
            name = "ContentModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        CreatorId = schema.new({
            id = id.from(_N, "DocumentVersionMetadata", "CreatorId"),
            type = "string",
            name = "CreatorId",
            target_id = prelude.String.id,
        }),
        Thumbnail = schema.new({
            id = id.from(_N, "DocumentVersionMetadata", "Thumbnail"),
            type = "map",
            name = "Thumbnail",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        Source = schema.new({
            id = id.from(_N, "DocumentVersionMetadata", "Source"),
            type = "map",
            name = "Source",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.DescribeDocumentVersionsOutput = schema.new({
    id = id.from(_N, "DescribeDocumentVersionsOutput"),
    type = "structure",
    members = {
        DocumentVersions = schema.new({
            id = id.from(_N, "DescribeDocumentVersionsOutput", "DocumentVersions"),
            type = "list",
            name = "DocumentVersions",
            target_id = prelude.Document.id,
            list_member = M.DocumentVersionMetadata,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeDocumentVersionsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidPasswordException = schema.new({
    id = id.from(_N, "InvalidPasswordException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidPasswordException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeFolderContentsInput = schema.new({
    id = id.from(_N, "DescribeFolderContentsInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "DescribeFolderContentsInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        FolderId = schema.new({
            id = id.from(_N, "DescribeFolderContentsInput", "FolderId"),
            type = "string",
            name = "FolderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Sort = schema.new({
            id = id.from(_N, "DescribeFolderContentsInput", "Sort"),
            type = "string",
            name = "Sort",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "sort" },
            },
        }),
        Order = schema.new({
            id = id.from(_N, "DescribeFolderContentsInput", "Order"),
            type = "string",
            name = "Order",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "order" },
            },
        }),
        Limit = schema.new({
            id = id.from(_N, "DescribeFolderContentsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeFolderContentsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "marker" },
            },
        }),
        Type = schema.new({
            id = id.from(_N, "DescribeFolderContentsInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "type" },
            },
        }),
        Include = schema.new({
            id = id.from(_N, "DescribeFolderContentsInput", "Include"),
            type = "string",
            name = "Include",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "include" },
            },
        }),
    },
})

M.DocumentMetadata = schema.new({
    id = id.from(_N, "DocumentMetadata"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DocumentMetadata", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        CreatorId = schema.new({
            id = id.from(_N, "DocumentMetadata", "CreatorId"),
            type = "string",
            name = "CreatorId",
            target_id = prelude.String.id,
        }),
        ParentFolderId = schema.new({
            id = id.from(_N, "DocumentMetadata", "ParentFolderId"),
            type = "string",
            name = "ParentFolderId",
            target_id = prelude.String.id,
        }),
        CreatedTimestamp = schema.new({
            id = id.from(_N, "DocumentMetadata", "CreatedTimestamp"),
            type = "timestamp",
            name = "CreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        ModifiedTimestamp = schema.new({
            id = id.from(_N, "DocumentMetadata", "ModifiedTimestamp"),
            type = "timestamp",
            name = "ModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        LatestVersionMetadata = schema.new({
            id = id.from(_N, "DocumentMetadata", "LatestVersionMetadata"),
            type = "structure",
            name = "LatestVersionMetadata",
            target_id = id.from(_N, "DocumentVersionMetadata"),
            target = M.DocumentVersionMetadata,
        }),
        ResourceState = schema.new({
            id = id.from(_N, "DocumentMetadata", "ResourceState"),
            type = "string",
            name = "ResourceState",
            target_id = prelude.String.id,
        }),
        Labels = schema.new({
            id = id.from(_N, "DocumentMetadata", "Labels"),
            type = "list",
            name = "Labels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeFolderContentsOutput = schema.new({
    id = id.from(_N, "DescribeFolderContentsOutput"),
    type = "structure",
    members = {
        Folders = schema.new({
            id = id.from(_N, "DescribeFolderContentsOutput", "Folders"),
            type = "list",
            name = "Folders",
            target_id = prelude.Document.id,
            list_member = M.FolderMetadata,
        }),
        Documents = schema.new({
            id = id.from(_N, "DescribeFolderContentsOutput", "Documents"),
            type = "list",
            name = "Documents",
            target_id = prelude.Document.id,
            list_member = M.DocumentMetadata,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeFolderContentsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeGroupsInput = schema.new({
    id = id.from(_N, "DescribeGroupsInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "DescribeGroupsInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        SearchQuery = schema.new({
            id = id.from(_N, "DescribeGroupsInput", "SearchQuery"),
            type = "string",
            name = "SearchQuery",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "searchQuery" },
            },
        }),
        OrganizationId = schema.new({
            id = id.from(_N, "DescribeGroupsInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "organizationId" },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeGroupsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "marker" },
            },
        }),
        Limit = schema.new({
            id = id.from(_N, "DescribeGroupsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
    },
})

M.DescribeGroupsOutput = schema.new({
    id = id.from(_N, "DescribeGroupsOutput"),
    type = "structure",
    members = {
        Groups = schema.new({
            id = id.from(_N, "DescribeGroupsOutput", "Groups"),
            type = "list",
            name = "Groups",
            target_id = prelude.Document.id,
            list_member = M.GroupMetadata,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeGroupsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeNotificationSubscriptionsInput = schema.new({
    id = id.from(_N, "DescribeNotificationSubscriptionsInput"),
    type = "structure",
    members = {
        OrganizationId = schema.new({
            id = id.from(_N, "DescribeNotificationSubscriptionsInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeNotificationSubscriptionsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "marker" },
            },
        }),
        Limit = schema.new({
            id = id.from(_N, "DescribeNotificationSubscriptionsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
    },
})

M.DescribeNotificationSubscriptionsOutput = schema.new({
    id = id.from(_N, "DescribeNotificationSubscriptionsOutput"),
    type = "structure",
    members = {
        Subscriptions = schema.new({
            id = id.from(_N, "DescribeNotificationSubscriptionsOutput", "Subscriptions"),
            type = "list",
            name = "Subscriptions",
            target_id = prelude.Document.id,
            list_member = M.Subscription,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeNotificationSubscriptionsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeResourcePermissionsInput = schema.new({
    id = id.from(_N, "DescribeResourcePermissionsInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "DescribeResourcePermissionsInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "DescribeResourcePermissionsInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        PrincipalId = schema.new({
            id = id.from(_N, "DescribeResourcePermissionsInput", "PrincipalId"),
            type = "string",
            name = "PrincipalId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "principalId" },
            },
        }),
        Limit = schema.new({
            id = id.from(_N, "DescribeResourcePermissionsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeResourcePermissionsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "marker" },
            },
        }),
    },
})

M.PermissionInfo = schema.new({
    id = id.from(_N, "PermissionInfo"),
    type = "structure",
    members = {
        Role = schema.new({
            id = id.from(_N, "PermissionInfo", "Role"),
            type = "string",
            name = "Role",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "PermissionInfo", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.Principal = schema.new({
    id = id.from(_N, "Principal"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "Principal", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Principal", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Roles = schema.new({
            id = id.from(_N, "Principal", "Roles"),
            type = "list",
            name = "Roles",
            target_id = prelude.Document.id,
            list_member = M.PermissionInfo,
        }),
    },
})

M.DescribeResourcePermissionsOutput = schema.new({
    id = id.from(_N, "DescribeResourcePermissionsOutput"),
    type = "structure",
    members = {
        Principals = schema.new({
            id = id.from(_N, "DescribeResourcePermissionsOutput", "Principals"),
            type = "list",
            name = "Principals",
            target_id = prelude.Document.id,
            list_member = M.Principal,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeResourcePermissionsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeRootFoldersInput = schema.new({
    id = id.from(_N, "DescribeRootFoldersInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "DescribeRootFoldersInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        Limit = schema.new({
            id = id.from(_N, "DescribeRootFoldersInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeRootFoldersInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "marker" },
            },
        }),
    },
})

M.DescribeRootFoldersOutput = schema.new({
    id = id.from(_N, "DescribeRootFoldersOutput"),
    type = "structure",
    members = {
        Folders = schema.new({
            id = id.from(_N, "DescribeRootFoldersOutput", "Folders"),
            type = "list",
            name = "Folders",
            target_id = prelude.Document.id,
            list_member = M.FolderMetadata,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeRootFoldersOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeUsersInput = schema.new({
    id = id.from(_N, "DescribeUsersInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "DescribeUsersInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        OrganizationId = schema.new({
            id = id.from(_N, "DescribeUsersInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "organizationId" },
            },
        }),
        UserIds = schema.new({
            id = id.from(_N, "DescribeUsersInput", "UserIds"),
            type = "string",
            name = "UserIds",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "userIds" },
            },
        }),
        Query = schema.new({
            id = id.from(_N, "DescribeUsersInput", "Query"),
            type = "string",
            name = "Query",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "query" },
            },
        }),
        Include = schema.new({
            id = id.from(_N, "DescribeUsersInput", "Include"),
            type = "string",
            name = "Include",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "include" },
            },
        }),
        Order = schema.new({
            id = id.from(_N, "DescribeUsersInput", "Order"),
            type = "string",
            name = "Order",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "order" },
            },
        }),
        Sort = schema.new({
            id = id.from(_N, "DescribeUsersInput", "Sort"),
            type = "string",
            name = "Sort",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "sort" },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeUsersInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "marker" },
            },
        }),
        Limit = schema.new({
            id = id.from(_N, "DescribeUsersInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
        Fields = schema.new({
            id = id.from(_N, "DescribeUsersInput", "Fields"),
            type = "string",
            name = "Fields",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "fields" },
            },
        }),
    },
})

M.DescribeUsersOutput = schema.new({
    id = id.from(_N, "DescribeUsersOutput"),
    type = "structure",
    members = {
        Users = schema.new({
            id = id.from(_N, "DescribeUsersOutput", "Users"),
            type = "list",
            name = "Users",
            target_id = prelude.Document.id,
            list_member = M.User,
        }),
        TotalNumberOfUsers = schema.new({
            id = id.from(_N, "DescribeUsersOutput", "TotalNumberOfUsers"),
            type = "long",
            name = "TotalNumberOfUsers",
            target_id = prelude.Long.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeUsersOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.RequestedEntityTooLargeException = schema.new({
    id = id.from(_N, "RequestedEntityTooLargeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "RequestedEntityTooLargeException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetCurrentUserInput = schema.new({
    id = id.from(_N, "GetCurrentUserInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "GetCurrentUserInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
    },
})

M.GetCurrentUserOutput = schema.new({
    id = id.from(_N, "GetCurrentUserOutput"),
    type = "structure",
    members = {
        User = schema.new({
            id = id.from(_N, "GetCurrentUserOutput", "User"),
            type = "structure",
            name = "User",
            target_id = id.from(_N, "User"),
            target = M.User,
        }),
    },
})

M.GetDocumentInput = schema.new({
    id = id.from(_N, "GetDocumentInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "GetDocumentInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        DocumentId = schema.new({
            id = id.from(_N, "GetDocumentInput", "DocumentId"),
            type = "string",
            name = "DocumentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IncludeCustomMetadata = schema.new({
            id = id.from(_N, "GetDocumentInput", "IncludeCustomMetadata"),
            type = "boolean",
            name = "IncludeCustomMetadata",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "includeCustomMetadata" },
            },
        }),
    },
})

M.GetDocumentOutput = schema.new({
    id = id.from(_N, "GetDocumentOutput"),
    type = "structure",
    members = {
        Metadata = schema.new({
            id = id.from(_N, "GetDocumentOutput", "Metadata"),
            type = "structure",
            name = "Metadata",
            target_id = id.from(_N, "DocumentMetadata"),
            target = M.DocumentMetadata,
        }),
        CustomMetadata = schema.new({
            id = id.from(_N, "GetDocumentOutput", "CustomMetadata"),
            type = "map",
            name = "CustomMetadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetDocumentPathInput = schema.new({
    id = id.from(_N, "GetDocumentPathInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "GetDocumentPathInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        DocumentId = schema.new({
            id = id.from(_N, "GetDocumentPathInput", "DocumentId"),
            type = "string",
            name = "DocumentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Limit = schema.new({
            id = id.from(_N, "GetDocumentPathInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
        Fields = schema.new({
            id = id.from(_N, "GetDocumentPathInput", "Fields"),
            type = "string",
            name = "Fields",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "fields" },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "GetDocumentPathInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "marker" },
            },
        }),
    },
})

M.ResourcePathComponent = schema.new({
    id = id.from(_N, "ResourcePathComponent"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ResourcePathComponent", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ResourcePathComponent", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourcePath = schema.new({
    id = id.from(_N, "ResourcePath"),
    type = "structure",
    members = {
        Components = schema.new({
            id = id.from(_N, "ResourcePath", "Components"),
            type = "list",
            name = "Components",
            target_id = prelude.Document.id,
            list_member = M.ResourcePathComponent,
        }),
    },
})

M.GetDocumentPathOutput = schema.new({
    id = id.from(_N, "GetDocumentPathOutput"),
    type = "structure",
    members = {
        Path = schema.new({
            id = id.from(_N, "GetDocumentPathOutput", "Path"),
            type = "structure",
            name = "Path",
            target_id = id.from(_N, "ResourcePath"),
            target = M.ResourcePath,
        }),
    },
})

M.GetDocumentVersionInput = schema.new({
    id = id.from(_N, "GetDocumentVersionInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "GetDocumentVersionInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        DocumentId = schema.new({
            id = id.from(_N, "GetDocumentVersionInput", "DocumentId"),
            type = "string",
            name = "DocumentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VersionId = schema.new({
            id = id.from(_N, "GetDocumentVersionInput", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Fields = schema.new({
            id = id.from(_N, "GetDocumentVersionInput", "Fields"),
            type = "string",
            name = "Fields",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "fields" },
            },
        }),
        IncludeCustomMetadata = schema.new({
            id = id.from(_N, "GetDocumentVersionInput", "IncludeCustomMetadata"),
            type = "boolean",
            name = "IncludeCustomMetadata",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "includeCustomMetadata" },
            },
        }),
    },
})

M.GetDocumentVersionOutput = schema.new({
    id = id.from(_N, "GetDocumentVersionOutput"),
    type = "structure",
    members = {
        Metadata = schema.new({
            id = id.from(_N, "GetDocumentVersionOutput", "Metadata"),
            type = "structure",
            name = "Metadata",
            target_id = id.from(_N, "DocumentVersionMetadata"),
            target = M.DocumentVersionMetadata,
        }),
        CustomMetadata = schema.new({
            id = id.from(_N, "GetDocumentVersionOutput", "CustomMetadata"),
            type = "map",
            name = "CustomMetadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetFolderInput = schema.new({
    id = id.from(_N, "GetFolderInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "GetFolderInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        FolderId = schema.new({
            id = id.from(_N, "GetFolderInput", "FolderId"),
            type = "string",
            name = "FolderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        IncludeCustomMetadata = schema.new({
            id = id.from(_N, "GetFolderInput", "IncludeCustomMetadata"),
            type = "boolean",
            name = "IncludeCustomMetadata",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "includeCustomMetadata" },
            },
        }),
    },
})

M.GetFolderOutput = schema.new({
    id = id.from(_N, "GetFolderOutput"),
    type = "structure",
    members = {
        Metadata = schema.new({
            id = id.from(_N, "GetFolderOutput", "Metadata"),
            type = "structure",
            name = "Metadata",
            target_id = id.from(_N, "FolderMetadata"),
            target = M.FolderMetadata,
        }),
        CustomMetadata = schema.new({
            id = id.from(_N, "GetFolderOutput", "CustomMetadata"),
            type = "map",
            name = "CustomMetadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetFolderPathInput = schema.new({
    id = id.from(_N, "GetFolderPathInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "GetFolderPathInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        FolderId = schema.new({
            id = id.from(_N, "GetFolderPathInput", "FolderId"),
            type = "string",
            name = "FolderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Limit = schema.new({
            id = id.from(_N, "GetFolderPathInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
        Fields = schema.new({
            id = id.from(_N, "GetFolderPathInput", "Fields"),
            type = "string",
            name = "Fields",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "fields" },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "GetFolderPathInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "marker" },
            },
        }),
    },
})

M.GetFolderPathOutput = schema.new({
    id = id.from(_N, "GetFolderPathOutput"),
    type = "structure",
    members = {
        Path = schema.new({
            id = id.from(_N, "GetFolderPathOutput", "Path"),
            type = "structure",
            name = "Path",
            target_id = id.from(_N, "ResourcePath"),
            target = M.ResourcePath,
        }),
    },
})

M.GetResourcesInput = schema.new({
    id = id.from(_N, "GetResourcesInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "GetResourcesInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "GetResourcesInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "userId" },
            },
        }),
        CollectionType = schema.new({
            id = id.from(_N, "GetResourcesInput", "CollectionType"),
            type = "string",
            name = "CollectionType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "collectionType" },
            },
        }),
        Limit = schema.new({
            id = id.from(_N, "GetResourcesInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "GetResourcesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "marker" },
            },
        }),
    },
})

M.GetResourcesOutput = schema.new({
    id = id.from(_N, "GetResourcesOutput"),
    type = "structure",
    members = {
        Folders = schema.new({
            id = id.from(_N, "GetResourcesOutput", "Folders"),
            type = "list",
            name = "Folders",
            target_id = prelude.Document.id,
            list_member = M.FolderMetadata,
        }),
        Documents = schema.new({
            id = id.from(_N, "GetResourcesOutput", "Documents"),
            type = "list",
            name = "Documents",
            target_id = prelude.Document.id,
            list_member = M.DocumentMetadata,
        }),
        Marker = schema.new({
            id = id.from(_N, "GetResourcesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DraftUploadOutOfSyncException = schema.new({
    id = id.from(_N, "DraftUploadOutOfSyncException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DraftUploadOutOfSyncException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InitiateDocumentVersionUploadInput = schema.new({
    id = id.from(_N, "InitiateDocumentVersionUploadInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "InitiateDocumentVersionUploadInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        Id = schema.new({
            id = id.from(_N, "InitiateDocumentVersionUploadInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "InitiateDocumentVersionUploadInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ContentCreatedTimestamp = schema.new({
            id = id.from(_N, "InitiateDocumentVersionUploadInput", "ContentCreatedTimestamp"),
            type = "timestamp",
            name = "ContentCreatedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        ContentModifiedTimestamp = schema.new({
            id = id.from(_N, "InitiateDocumentVersionUploadInput", "ContentModifiedTimestamp"),
            type = "timestamp",
            name = "ContentModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        ContentType = schema.new({
            id = id.from(_N, "InitiateDocumentVersionUploadInput", "ContentType"),
            type = "string",
            name = "ContentType",
            target_id = prelude.String.id,
        }),
        DocumentSizeInBytes = schema.new({
            id = id.from(_N, "InitiateDocumentVersionUploadInput", "DocumentSizeInBytes"),
            type = "long",
            name = "DocumentSizeInBytes",
            target_id = prelude.Long.id,
        }),
        ParentFolderId = schema.new({
            id = id.from(_N, "InitiateDocumentVersionUploadInput", "ParentFolderId"),
            type = "string",
            name = "ParentFolderId",
            target_id = prelude.String.id,
        }),
    },
})

M.UploadMetadata = schema.new({
    id = id.from(_N, "UploadMetadata"),
    type = "structure",
    members = {
        UploadUrl = schema.new({
            id = id.from(_N, "UploadMetadata", "UploadUrl"),
            type = "string",
            name = "UploadUrl",
            target_id = prelude.String.id,
        }),
        SignedHeaders = schema.new({
            id = id.from(_N, "UploadMetadata", "SignedHeaders"),
            type = "map",
            name = "SignedHeaders",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.InitiateDocumentVersionUploadOutput = schema.new({
    id = id.from(_N, "InitiateDocumentVersionUploadOutput"),
    type = "structure",
    members = {
        Metadata = schema.new({
            id = id.from(_N, "InitiateDocumentVersionUploadOutput", "Metadata"),
            type = "structure",
            name = "Metadata",
            target_id = id.from(_N, "DocumentMetadata"),
            target = M.DocumentMetadata,
        }),
        UploadMetadata = schema.new({
            id = id.from(_N, "InitiateDocumentVersionUploadOutput", "UploadMetadata"),
            type = "structure",
            name = "UploadMetadata",
            target_id = id.from(_N, "UploadMetadata"),
            target = M.UploadMetadata,
        }),
    },
})

M.ResourceAlreadyCheckedOutException = schema.new({
    id = id.from(_N, "ResourceAlreadyCheckedOutException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceAlreadyCheckedOutException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.StorageLimitExceededException = schema.new({
    id = id.from(_N, "StorageLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "StorageLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.StorageLimitWillExceedException = schema.new({
    id = id.from(_N, "StorageLimitWillExceedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "StorageLimitWillExceedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.RemoveAllResourcePermissionsInput = schema.new({
    id = id.from(_N, "RemoveAllResourcePermissionsInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "RemoveAllResourcePermissionsInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "RemoveAllResourcePermissionsInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.RemoveAllResourcePermissionsOutput = schema.new({
    id = id.from(_N, "RemoveAllResourcePermissionsOutput"),
    type = "structure",
})

M.RemoveResourcePermissionInput = schema.new({
    id = id.from(_N, "RemoveResourcePermissionInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "RemoveResourcePermissionInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "RemoveResourcePermissionInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        PrincipalId = schema.new({
            id = id.from(_N, "RemoveResourcePermissionInput", "PrincipalId"),
            type = "string",
            name = "PrincipalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        PrincipalType = schema.new({
            id = id.from(_N, "RemoveResourcePermissionInput", "PrincipalType"),
            type = "string",
            name = "PrincipalType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "type" },
            },
        }),
    },
})

M.RemoveResourcePermissionOutput = schema.new({
    id = id.from(_N, "RemoveResourcePermissionOutput"),
    type = "structure",
})

M.RestoreDocumentVersionsInput = schema.new({
    id = id.from(_N, "RestoreDocumentVersionsInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "RestoreDocumentVersionsInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        DocumentId = schema.new({
            id = id.from(_N, "RestoreDocumentVersionsInput", "DocumentId"),
            type = "string",
            name = "DocumentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.RestoreDocumentVersionsOutput = schema.new({
    id = id.from(_N, "RestoreDocumentVersionsOutput"),
    type = "structure",
})

M.DateRangeType = schema.new({
    id = id.from(_N, "DateRangeType"),
    type = "structure",
    members = {
        StartValue = schema.new({
            id = id.from(_N, "DateRangeType", "StartValue"),
            type = "timestamp",
            name = "StartValue",
            target_id = prelude.Timestamp.id,
        }),
        EndValue = schema.new({
            id = id.from(_N, "DateRangeType", "EndValue"),
            type = "timestamp",
            name = "EndValue",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.SearchPrincipalType = schema.new({
    id = id.from(_N, "SearchPrincipalType"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "SearchPrincipalType", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Roles = schema.new({
            id = id.from(_N, "SearchPrincipalType", "Roles"),
            type = "list",
            name = "Roles",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.LongRangeType = schema.new({
    id = id.from(_N, "LongRangeType"),
    type = "structure",
    members = {
        StartValue = schema.new({
            id = id.from(_N, "LongRangeType", "StartValue"),
            type = "long",
            name = "StartValue",
            target_id = prelude.Long.id,
        }),
        EndValue = schema.new({
            id = id.from(_N, "LongRangeType", "EndValue"),
            type = "long",
            name = "EndValue",
            target_id = prelude.Long.id,
        }),
    },
})

M.Filters = schema.new({
    id = id.from(_N, "Filters"),
    type = "structure",
    members = {
        TextLocales = schema.new({
            id = id.from(_N, "Filters", "TextLocales"),
            type = "list",
            name = "TextLocales",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ContentCategories = schema.new({
            id = id.from(_N, "Filters", "ContentCategories"),
            type = "list",
            name = "ContentCategories",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ResourceTypes = schema.new({
            id = id.from(_N, "Filters", "ResourceTypes"),
            type = "list",
            name = "ResourceTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Labels = schema.new({
            id = id.from(_N, "Filters", "Labels"),
            type = "list",
            name = "Labels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Principals = schema.new({
            id = id.from(_N, "Filters", "Principals"),
            type = "list",
            name = "Principals",
            target_id = prelude.Document.id,
            list_member = M.SearchPrincipalType,
        }),
        AncestorIds = schema.new({
            id = id.from(_N, "Filters", "AncestorIds"),
            type = "list",
            name = "AncestorIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SearchCollectionTypes = schema.new({
            id = id.from(_N, "Filters", "SearchCollectionTypes"),
            type = "list",
            name = "SearchCollectionTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SizeRange = schema.new({
            id = id.from(_N, "Filters", "SizeRange"),
            type = "structure",
            name = "SizeRange",
            target_id = id.from(_N, "LongRangeType"),
            target = M.LongRangeType,
        }),
        CreatedRange = schema.new({
            id = id.from(_N, "Filters", "CreatedRange"),
            type = "structure",
            name = "CreatedRange",
            target_id = id.from(_N, "DateRangeType"),
            target = M.DateRangeType,
        }),
        ModifiedRange = schema.new({
            id = id.from(_N, "Filters", "ModifiedRange"),
            type = "structure",
            name = "ModifiedRange",
            target_id = id.from(_N, "DateRangeType"),
            target = M.DateRangeType,
        }),
    },
})

M.SearchSortResult = schema.new({
    id = id.from(_N, "SearchSortResult"),
    type = "structure",
    members = {
        Field = schema.new({
            id = id.from(_N, "SearchSortResult", "Field"),
            type = "string",
            name = "Field",
            target_id = prelude.String.id,
        }),
        Order = schema.new({
            id = id.from(_N, "SearchSortResult", "Order"),
            type = "string",
            name = "Order",
            target_id = prelude.String.id,
        }),
    },
})

M.SearchResourcesInput = schema.new({
    id = id.from(_N, "SearchResourcesInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "SearchResourcesInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        QueryText = schema.new({
            id = id.from(_N, "SearchResourcesInput", "QueryText"),
            type = "string",
            name = "QueryText",
            target_id = prelude.String.id,
        }),
        QueryScopes = schema.new({
            id = id.from(_N, "SearchResourcesInput", "QueryScopes"),
            type = "list",
            name = "QueryScopes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        OrganizationId = schema.new({
            id = id.from(_N, "SearchResourcesInput", "OrganizationId"),
            type = "string",
            name = "OrganizationId",
            target_id = prelude.String.id,
        }),
        AdditionalResponseFields = schema.new({
            id = id.from(_N, "SearchResourcesInput", "AdditionalResponseFields"),
            type = "list",
            name = "AdditionalResponseFields",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Filters = schema.new({
            id = id.from(_N, "SearchResourcesInput", "Filters"),
            type = "structure",
            name = "Filters",
            target_id = id.from(_N, "Filters"),
            target = M.Filters,
        }),
        OrderBy = schema.new({
            id = id.from(_N, "SearchResourcesInput", "OrderBy"),
            type = "list",
            name = "OrderBy",
            target_id = prelude.Document.id,
            list_member = M.SearchSortResult,
        }),
        Limit = schema.new({
            id = id.from(_N, "SearchResourcesInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "SearchResourcesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.ResponseItem = schema.new({
    id = id.from(_N, "ResponseItem"),
    type = "structure",
    members = {
        ResourceType = schema.new({
            id = id.from(_N, "ResponseItem", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        WebUrl = schema.new({
            id = id.from(_N, "ResponseItem", "WebUrl"),
            type = "string",
            name = "WebUrl",
            target_id = prelude.String.id,
        }),
        DocumentMetadata = schema.new({
            id = id.from(_N, "ResponseItem", "DocumentMetadata"),
            type = "structure",
            name = "DocumentMetadata",
            target_id = id.from(_N, "DocumentMetadata"),
            target = M.DocumentMetadata,
        }),
        FolderMetadata = schema.new({
            id = id.from(_N, "ResponseItem", "FolderMetadata"),
            type = "structure",
            name = "FolderMetadata",
            target_id = id.from(_N, "FolderMetadata"),
            target = M.FolderMetadata,
        }),
        CommentMetadata = schema.new({
            id = id.from(_N, "ResponseItem", "CommentMetadata"),
            type = "structure",
            name = "CommentMetadata",
            target_id = id.from(_N, "CommentMetadata"),
            target = M.CommentMetadata,
        }),
        DocumentVersionMetadata = schema.new({
            id = id.from(_N, "ResponseItem", "DocumentVersionMetadata"),
            type = "structure",
            name = "DocumentVersionMetadata",
            target_id = id.from(_N, "DocumentVersionMetadata"),
            target = M.DocumentVersionMetadata,
        }),
    },
})

M.SearchResourcesOutput = schema.new({
    id = id.from(_N, "SearchResourcesOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "SearchResourcesOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.ResponseItem,
        }),
        Marker = schema.new({
            id = id.from(_N, "SearchResourcesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDocumentInput = schema.new({
    id = id.from(_N, "UpdateDocumentInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "UpdateDocumentInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        DocumentId = schema.new({
            id = id.from(_N, "UpdateDocumentInput", "DocumentId"),
            type = "string",
            name = "DocumentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateDocumentInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ParentFolderId = schema.new({
            id = id.from(_N, "UpdateDocumentInput", "ParentFolderId"),
            type = "string",
            name = "ParentFolderId",
            target_id = prelude.String.id,
        }),
        ResourceState = schema.new({
            id = id.from(_N, "UpdateDocumentInput", "ResourceState"),
            type = "string",
            name = "ResourceState",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDocumentOutput = schema.new({
    id = id.from(_N, "UpdateDocumentOutput"),
    type = "structure",
})

M.UpdateDocumentVersionInput = schema.new({
    id = id.from(_N, "UpdateDocumentVersionInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "UpdateDocumentVersionInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        DocumentId = schema.new({
            id = id.from(_N, "UpdateDocumentVersionInput", "DocumentId"),
            type = "string",
            name = "DocumentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VersionId = schema.new({
            id = id.from(_N, "UpdateDocumentVersionInput", "VersionId"),
            type = "string",
            name = "VersionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VersionStatus = schema.new({
            id = id.from(_N, "UpdateDocumentVersionInput", "VersionStatus"),
            type = "string",
            name = "VersionStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDocumentVersionOutput = schema.new({
    id = id.from(_N, "UpdateDocumentVersionOutput"),
    type = "structure",
})

M.UpdateFolderInput = schema.new({
    id = id.from(_N, "UpdateFolderInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "UpdateFolderInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        FolderId = schema.new({
            id = id.from(_N, "UpdateFolderInput", "FolderId"),
            type = "string",
            name = "FolderId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateFolderInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ParentFolderId = schema.new({
            id = id.from(_N, "UpdateFolderInput", "ParentFolderId"),
            type = "string",
            name = "ParentFolderId",
            target_id = prelude.String.id,
        }),
        ResourceState = schema.new({
            id = id.from(_N, "UpdateFolderInput", "ResourceState"),
            type = "string",
            name = "ResourceState",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateFolderOutput = schema.new({
    id = id.from(_N, "UpdateFolderOutput"),
    type = "structure",
})

M.DeactivatingLastSystemUserException = schema.new({
    id = id.from(_N, "DeactivatingLastSystemUserException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DeactivatingLastSystemUserException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        Code = schema.new({
            id = id.from(_N, "DeactivatingLastSystemUserException", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
    },
})

M.IllegalUserStateException = schema.new({
    id = id.from(_N, "IllegalUserStateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "IllegalUserStateException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateUserInput = schema.new({
    id = id.from(_N, "UpdateUserInput"),
    type = "structure",
    members = {
        AuthenticationToken = schema.new({
            id = id.from(_N, "UpdateUserInput", "AuthenticationToken"),
            type = "string",
            name = "AuthenticationToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Authentication" },
            },
        }),
        UserId = schema.new({
            id = id.from(_N, "UpdateUserInput", "UserId"),
            type = "string",
            name = "UserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        GivenName = schema.new({
            id = id.from(_N, "UpdateUserInput", "GivenName"),
            type = "string",
            name = "GivenName",
            target_id = prelude.String.id,
        }),
        Surname = schema.new({
            id = id.from(_N, "UpdateUserInput", "Surname"),
            type = "string",
            name = "Surname",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "UpdateUserInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        StorageRule = schema.new({
            id = id.from(_N, "UpdateUserInput", "StorageRule"),
            type = "structure",
            name = "StorageRule",
            target_id = id.from(_N, "StorageRuleType"),
            target = M.StorageRuleType,
        }),
        TimeZoneId = schema.new({
            id = id.from(_N, "UpdateUserInput", "TimeZoneId"),
            type = "string",
            name = "TimeZoneId",
            target_id = prelude.String.id,
        }),
        Locale = schema.new({
            id = id.from(_N, "UpdateUserInput", "Locale"),
            type = "string",
            name = "Locale",
            target_id = prelude.String.id,
        }),
        GrantPoweruserPrivileges = schema.new({
            id = id.from(_N, "UpdateUserInput", "GrantPoweruserPrivileges"),
            type = "string",
            name = "GrantPoweruserPrivileges",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateUserOutput = schema.new({
    id = id.from(_N, "UpdateUserOutput"),
    type = "structure",
    members = {
        User = schema.new({
            id = id.from(_N, "UpdateUserOutput", "User"),
            type = "structure",
            name = "User",
            target_id = id.from(_N, "User"),
            target = M.User,
        }),
    },
})

return M
