local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("workdocs.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("workdocs.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSGorillaBoyService"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "workdocs", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:abortDocumentVersionUpload(input, options)
    return self:invokeOperation(input, {
        name = "AbortDocumentVersionUpload",
        input_schema = schemas.AbortDocumentVersionUploadInput,
        output_schema = schemas.AbortDocumentVersionUploadOutput,
        http_method = "DELETE",
        http_path = "/api/v1/documents/{DocumentId}/versions/{VersionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:activateUser(input, options)
    return self:invokeOperation(input, {
        name = "ActivateUser",
        input_schema = schemas.ActivateUserInput,
        output_schema = schemas.ActivateUserOutput,
        http_method = "POST",
        http_path = "/api/v1/users/{UserId}/activation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addResourcePermissions(input, options)
    return self:invokeOperation(input, {
        name = "AddResourcePermissions",
        input_schema = schemas.AddResourcePermissionsInput,
        output_schema = schemas.AddResourcePermissionsOutput,
        http_method = "POST",
        http_path = "/api/v1/resources/{ResourceId}/permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createComment(input, options)
    return self:invokeOperation(input, {
        name = "CreateComment",
        input_schema = schemas.CreateCommentInput,
        output_schema = schemas.CreateCommentOutput,
        http_method = "POST",
        http_path = "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCustomMetadata(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomMetadata",
        input_schema = schemas.CreateCustomMetadataInput,
        output_schema = schemas.CreateCustomMetadataOutput,
        http_method = "PUT",
        http_path = "/api/v1/resources/{ResourceId}/customMetadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFolder(input, options)
    return self:invokeOperation(input, {
        name = "CreateFolder",
        input_schema = schemas.CreateFolderInput,
        output_schema = schemas.CreateFolderOutput,
        http_method = "POST",
        http_path = "/api/v1/folders",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLabels(input, options)
    return self:invokeOperation(input, {
        name = "CreateLabels",
        input_schema = schemas.CreateLabelsInput,
        output_schema = schemas.CreateLabelsOutput,
        http_method = "PUT",
        http_path = "/api/v1/resources/{ResourceId}/labels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNotificationSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateNotificationSubscription",
        input_schema = schemas.CreateNotificationSubscriptionInput,
        output_schema = schemas.CreateNotificationSubscriptionOutput,
        http_method = "POST",
        http_path = "/api/v1/organizations/{OrganizationId}/subscriptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUser(input, options)
    return self:invokeOperation(input, {
        name = "CreateUser",
        input_schema = schemas.CreateUserInput,
        output_schema = schemas.CreateUserOutput,
        http_method = "POST",
        http_path = "/api/v1/users",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deactivateUser(input, options)
    return self:invokeOperation(input, {
        name = "DeactivateUser",
        input_schema = schemas.DeactivateUserInput,
        output_schema = schemas.DeactivateUserOutput,
        http_method = "DELETE",
        http_path = "/api/v1/users/{UserId}/activation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteComment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteComment",
        input_schema = schemas.DeleteCommentInput,
        output_schema = schemas.DeleteCommentOutput,
        http_method = "DELETE",
        http_path = "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment/{CommentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCustomMetadata(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomMetadata",
        input_schema = schemas.DeleteCustomMetadataInput,
        output_schema = schemas.DeleteCustomMetadataOutput,
        http_method = "DELETE",
        http_path = "/api/v1/resources/{ResourceId}/customMetadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDocument(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDocument",
        input_schema = schemas.DeleteDocumentInput,
        output_schema = schemas.DeleteDocumentOutput,
        http_method = "DELETE",
        http_path = "/api/v1/documents/{DocumentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDocumentVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDocumentVersion",
        input_schema = schemas.DeleteDocumentVersionInput,
        output_schema = schemas.DeleteDocumentVersionOutput,
        http_method = "DELETE",
        http_path = "/api/v1/documentVersions/{DocumentId}/versions/{VersionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFolder(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFolder",
        input_schema = schemas.DeleteFolderInput,
        output_schema = schemas.DeleteFolderOutput,
        http_method = "DELETE",
        http_path = "/api/v1/folders/{FolderId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFolderContents(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFolderContents",
        input_schema = schemas.DeleteFolderContentsInput,
        output_schema = schemas.DeleteFolderContentsOutput,
        http_method = "DELETE",
        http_path = "/api/v1/folders/{FolderId}/contents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLabels(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLabels",
        input_schema = schemas.DeleteLabelsInput,
        output_schema = schemas.DeleteLabelsOutput,
        http_method = "DELETE",
        http_path = "/api/v1/resources/{ResourceId}/labels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNotificationSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNotificationSubscription",
        input_schema = schemas.DeleteNotificationSubscriptionInput,
        output_schema = schemas.DeleteNotificationSubscriptionOutput,
        http_method = "DELETE",
        http_path = "/api/v1/organizations/{OrganizationId}/subscriptions/{SubscriptionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUser(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUser",
        input_schema = schemas.DeleteUserInput,
        output_schema = schemas.DeleteUserOutput,
        http_method = "DELETE",
        http_path = "/api/v1/users/{UserId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeActivities(input, options)
    return self:invokeOperation(input, {
        name = "DescribeActivities",
        input_schema = schemas.DescribeActivitiesInput,
        output_schema = schemas.DescribeActivitiesOutput,
        http_method = "GET",
        http_path = "/api/v1/activities",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeComments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeComments",
        input_schema = schemas.DescribeCommentsInput,
        output_schema = schemas.DescribeCommentsOutput,
        http_method = "GET",
        http_path = "/api/v1/documents/{DocumentId}/versions/{VersionId}/comments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDocumentVersions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDocumentVersions",
        input_schema = schemas.DescribeDocumentVersionsInput,
        output_schema = schemas.DescribeDocumentVersionsOutput,
        http_method = "GET",
        http_path = "/api/v1/documents/{DocumentId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFolderContents(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFolderContents",
        input_schema = schemas.DescribeFolderContentsInput,
        output_schema = schemas.DescribeFolderContentsOutput,
        http_method = "GET",
        http_path = "/api/v1/folders/{FolderId}/contents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGroups",
        input_schema = schemas.DescribeGroupsInput,
        output_schema = schemas.DescribeGroupsOutput,
        http_method = "GET",
        http_path = "/api/v1/groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNotificationSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNotificationSubscriptions",
        input_schema = schemas.DescribeNotificationSubscriptionsInput,
        output_schema = schemas.DescribeNotificationSubscriptionsOutput,
        http_method = "GET",
        http_path = "/api/v1/organizations/{OrganizationId}/subscriptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeResourcePermissions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResourcePermissions",
        input_schema = schemas.DescribeResourcePermissionsInput,
        output_schema = schemas.DescribeResourcePermissionsOutput,
        http_method = "GET",
        http_path = "/api/v1/resources/{ResourceId}/permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRootFolders(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRootFolders",
        input_schema = schemas.DescribeRootFoldersInput,
        output_schema = schemas.DescribeRootFoldersOutput,
        http_method = "GET",
        http_path = "/api/v1/me/root",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeUsers(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUsers",
        input_schema = schemas.DescribeUsersInput,
        output_schema = schemas.DescribeUsersOutput,
        http_method = "GET",
        http_path = "/api/v1/users",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCurrentUser(input, options)
    return self:invokeOperation(input, {
        name = "GetCurrentUser",
        input_schema = schemas.GetCurrentUserInput,
        output_schema = schemas.GetCurrentUserOutput,
        http_method = "GET",
        http_path = "/api/v1/me",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDocument(input, options)
    return self:invokeOperation(input, {
        name = "GetDocument",
        input_schema = schemas.GetDocumentInput,
        output_schema = schemas.GetDocumentOutput,
        http_method = "GET",
        http_path = "/api/v1/documents/{DocumentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDocumentPath(input, options)
    return self:invokeOperation(input, {
        name = "GetDocumentPath",
        input_schema = schemas.GetDocumentPathInput,
        output_schema = schemas.GetDocumentPathOutput,
        http_method = "GET",
        http_path = "/api/v1/documents/{DocumentId}/path",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDocumentVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetDocumentVersion",
        input_schema = schemas.GetDocumentVersionInput,
        output_schema = schemas.GetDocumentVersionOutput,
        http_method = "GET",
        http_path = "/api/v1/documents/{DocumentId}/versions/{VersionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFolder(input, options)
    return self:invokeOperation(input, {
        name = "GetFolder",
        input_schema = schemas.GetFolderInput,
        output_schema = schemas.GetFolderOutput,
        http_method = "GET",
        http_path = "/api/v1/folders/{FolderId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFolderPath(input, options)
    return self:invokeOperation(input, {
        name = "GetFolderPath",
        input_schema = schemas.GetFolderPathInput,
        output_schema = schemas.GetFolderPathOutput,
        http_method = "GET",
        http_path = "/api/v1/folders/{FolderId}/path",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResources(input, options)
    return self:invokeOperation(input, {
        name = "GetResources",
        input_schema = schemas.GetResourcesInput,
        output_schema = schemas.GetResourcesOutput,
        http_method = "GET",
        http_path = "/api/v1/resources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:initiateDocumentVersionUpload(input, options)
    return self:invokeOperation(input, {
        name = "InitiateDocumentVersionUpload",
        input_schema = schemas.InitiateDocumentVersionUploadInput,
        output_schema = schemas.InitiateDocumentVersionUploadOutput,
        http_method = "POST",
        http_path = "/api/v1/documents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeAllResourcePermissions(input, options)
    return self:invokeOperation(input, {
        name = "RemoveAllResourcePermissions",
        input_schema = schemas.RemoveAllResourcePermissionsInput,
        output_schema = schemas.RemoveAllResourcePermissionsOutput,
        http_method = "DELETE",
        http_path = "/api/v1/resources/{ResourceId}/permissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeResourcePermission(input, options)
    return self:invokeOperation(input, {
        name = "RemoveResourcePermission",
        input_schema = schemas.RemoveResourcePermissionInput,
        output_schema = schemas.RemoveResourcePermissionOutput,
        http_method = "DELETE",
        http_path = "/api/v1/resources/{ResourceId}/permissions/{PrincipalId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreDocumentVersions(input, options)
    return self:invokeOperation(input, {
        name = "RestoreDocumentVersions",
        input_schema = schemas.RestoreDocumentVersionsInput,
        output_schema = schemas.RestoreDocumentVersionsOutput,
        http_method = "POST",
        http_path = "/api/v1/documentVersions/restore/{DocumentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchResources(input, options)
    return self:invokeOperation(input, {
        name = "SearchResources",
        input_schema = schemas.SearchResourcesInput,
        output_schema = schemas.SearchResourcesOutput,
        http_method = "POST",
        http_path = "/api/v1/search",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDocument(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDocument",
        input_schema = schemas.UpdateDocumentInput,
        output_schema = schemas.UpdateDocumentOutput,
        http_method = "PATCH",
        http_path = "/api/v1/documents/{DocumentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDocumentVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDocumentVersion",
        input_schema = schemas.UpdateDocumentVersionInput,
        output_schema = schemas.UpdateDocumentVersionOutput,
        http_method = "PATCH",
        http_path = "/api/v1/documents/{DocumentId}/versions/{VersionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFolder(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFolder",
        input_schema = schemas.UpdateFolderInput,
        output_schema = schemas.UpdateFolderOutput,
        http_method = "PATCH",
        http_path = "/api/v1/folders/{FolderId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUser(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUser",
        input_schema = schemas.UpdateUserInput,
        output_schema = schemas.UpdateUserOutput,
        http_method = "PATCH",
        http_path = "/api/v1/users/{UserId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
