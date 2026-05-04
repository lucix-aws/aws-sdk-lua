local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("workdocs.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("workdocs.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSGorillaBoyService"
    cfg.signing_name = "awsgorillaboyservice"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:abortDocumentVersionUpload(input, options)
    return self:invokeOperation(input, {
        name = "AbortDocumentVersionUpload",
        input_schema = types.AbortDocumentVersionUploadInput,
        output_schema = types.AbortDocumentVersionUploadOutput,
        http_method = "DELETE",
        http_path = "/api/v1/documents/{DocumentId}/versions/{VersionId}",
    }, options)
end

function Client:activateUser(input, options)
    return self:invokeOperation(input, {
        name = "ActivateUser",
        input_schema = types.ActivateUserInput,
        output_schema = types.ActivateUserOutput,
        http_method = "POST",
        http_path = "/api/v1/users/{UserId}/activation",
    }, options)
end

function Client:addResourcePermissions(input, options)
    return self:invokeOperation(input, {
        name = "AddResourcePermissions",
        input_schema = types.AddResourcePermissionsInput,
        output_schema = types.AddResourcePermissionsOutput,
        http_method = "POST",
        http_path = "/api/v1/resources/{ResourceId}/permissions",
    }, options)
end

function Client:createComment(input, options)
    return self:invokeOperation(input, {
        name = "CreateComment",
        input_schema = types.CreateCommentInput,
        output_schema = types.CreateCommentOutput,
        http_method = "POST",
        http_path = "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment",
    }, options)
end

function Client:createCustomMetadata(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomMetadata",
        input_schema = types.CreateCustomMetadataInput,
        output_schema = types.CreateCustomMetadataOutput,
        http_method = "PUT",
        http_path = "/api/v1/resources/{ResourceId}/customMetadata",
    }, options)
end

function Client:createFolder(input, options)
    return self:invokeOperation(input, {
        name = "CreateFolder",
        input_schema = types.CreateFolderInput,
        output_schema = types.CreateFolderOutput,
        http_method = "POST",
        http_path = "/api/v1/folders",
    }, options)
end

function Client:createLabels(input, options)
    return self:invokeOperation(input, {
        name = "CreateLabels",
        input_schema = types.CreateLabelsInput,
        output_schema = types.CreateLabelsOutput,
        http_method = "PUT",
        http_path = "/api/v1/resources/{ResourceId}/labels",
    }, options)
end

function Client:createNotificationSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateNotificationSubscription",
        input_schema = types.CreateNotificationSubscriptionInput,
        output_schema = types.CreateNotificationSubscriptionOutput,
        http_method = "POST",
        http_path = "/api/v1/organizations/{OrganizationId}/subscriptions",
    }, options)
end

function Client:createUser(input, options)
    return self:invokeOperation(input, {
        name = "CreateUser",
        input_schema = types.CreateUserInput,
        output_schema = types.CreateUserOutput,
        http_method = "POST",
        http_path = "/api/v1/users",
    }, options)
end

function Client:deactivateUser(input, options)
    return self:invokeOperation(input, {
        name = "DeactivateUser",
        input_schema = types.DeactivateUserInput,
        output_schema = types.DeactivateUserOutput,
        http_method = "DELETE",
        http_path = "/api/v1/users/{UserId}/activation",
    }, options)
end

function Client:deleteComment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteComment",
        input_schema = types.DeleteCommentInput,
        output_schema = types.DeleteCommentOutput,
        http_method = "DELETE",
        http_path = "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment/{CommentId}",
    }, options)
end

function Client:deleteCustomMetadata(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomMetadata",
        input_schema = types.DeleteCustomMetadataInput,
        output_schema = types.DeleteCustomMetadataOutput,
        http_method = "DELETE",
        http_path = "/api/v1/resources/{ResourceId}/customMetadata",
    }, options)
end

function Client:deleteDocument(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDocument",
        input_schema = types.DeleteDocumentInput,
        output_schema = types.DeleteDocumentOutput,
        http_method = "DELETE",
        http_path = "/api/v1/documents/{DocumentId}",
    }, options)
end

function Client:deleteDocumentVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDocumentVersion",
        input_schema = types.DeleteDocumentVersionInput,
        output_schema = types.DeleteDocumentVersionOutput,
        http_method = "DELETE",
        http_path = "/api/v1/documentVersions/{DocumentId}/versions/{VersionId}",
    }, options)
end

function Client:deleteFolder(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFolder",
        input_schema = types.DeleteFolderInput,
        output_schema = types.DeleteFolderOutput,
        http_method = "DELETE",
        http_path = "/api/v1/folders/{FolderId}",
    }, options)
end

function Client:deleteFolderContents(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFolderContents",
        input_schema = types.DeleteFolderContentsInput,
        output_schema = types.DeleteFolderContentsOutput,
        http_method = "DELETE",
        http_path = "/api/v1/folders/{FolderId}/contents",
    }, options)
end

function Client:deleteLabels(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLabels",
        input_schema = types.DeleteLabelsInput,
        output_schema = types.DeleteLabelsOutput,
        http_method = "DELETE",
        http_path = "/api/v1/resources/{ResourceId}/labels",
    }, options)
end

function Client:deleteNotificationSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNotificationSubscription",
        input_schema = types.DeleteNotificationSubscriptionInput,
        output_schema = types.DeleteNotificationSubscriptionOutput,
        http_method = "DELETE",
        http_path = "/api/v1/organizations/{OrganizationId}/subscriptions/{SubscriptionId}",
    }, options)
end

function Client:deleteUser(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUser",
        input_schema = types.DeleteUserInput,
        output_schema = types.DeleteUserOutput,
        http_method = "DELETE",
        http_path = "/api/v1/users/{UserId}",
    }, options)
end

function Client:describeActivities(input, options)
    return self:invokeOperation(input, {
        name = "DescribeActivities",
        input_schema = types.DescribeActivitiesInput,
        output_schema = types.DescribeActivitiesOutput,
        http_method = "GET",
        http_path = "/api/v1/activities",
    }, options)
end

function Client:describeComments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeComments",
        input_schema = types.DescribeCommentsInput,
        output_schema = types.DescribeCommentsOutput,
        http_method = "GET",
        http_path = "/api/v1/documents/{DocumentId}/versions/{VersionId}/comments",
    }, options)
end

function Client:describeDocumentVersions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDocumentVersions",
        input_schema = types.DescribeDocumentVersionsInput,
        output_schema = types.DescribeDocumentVersionsOutput,
        http_method = "GET",
        http_path = "/api/v1/documents/{DocumentId}/versions",
    }, options)
end

function Client:describeFolderContents(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFolderContents",
        input_schema = types.DescribeFolderContentsInput,
        output_schema = types.DescribeFolderContentsOutput,
        http_method = "GET",
        http_path = "/api/v1/folders/{FolderId}/contents",
    }, options)
end

function Client:describeGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGroups",
        input_schema = types.DescribeGroupsInput,
        output_schema = types.DescribeGroupsOutput,
        http_method = "GET",
        http_path = "/api/v1/groups",
    }, options)
end

function Client:describeNotificationSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNotificationSubscriptions",
        input_schema = types.DescribeNotificationSubscriptionsInput,
        output_schema = types.DescribeNotificationSubscriptionsOutput,
        http_method = "GET",
        http_path = "/api/v1/organizations/{OrganizationId}/subscriptions",
    }, options)
end

function Client:describeResourcePermissions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResourcePermissions",
        input_schema = types.DescribeResourcePermissionsInput,
        output_schema = types.DescribeResourcePermissionsOutput,
        http_method = "GET",
        http_path = "/api/v1/resources/{ResourceId}/permissions",
    }, options)
end

function Client:describeRootFolders(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRootFolders",
        input_schema = types.DescribeRootFoldersInput,
        output_schema = types.DescribeRootFoldersOutput,
        http_method = "GET",
        http_path = "/api/v1/me/root",
    }, options)
end

function Client:describeUsers(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUsers",
        input_schema = types.DescribeUsersInput,
        output_schema = types.DescribeUsersOutput,
        http_method = "GET",
        http_path = "/api/v1/users",
    }, options)
end

function Client:getCurrentUser(input, options)
    return self:invokeOperation(input, {
        name = "GetCurrentUser",
        input_schema = types.GetCurrentUserInput,
        output_schema = types.GetCurrentUserOutput,
        http_method = "GET",
        http_path = "/api/v1/me",
    }, options)
end

function Client:getDocument(input, options)
    return self:invokeOperation(input, {
        name = "GetDocument",
        input_schema = types.GetDocumentInput,
        output_schema = types.GetDocumentOutput,
        http_method = "GET",
        http_path = "/api/v1/documents/{DocumentId}",
    }, options)
end

function Client:getDocumentPath(input, options)
    return self:invokeOperation(input, {
        name = "GetDocumentPath",
        input_schema = types.GetDocumentPathInput,
        output_schema = types.GetDocumentPathOutput,
        http_method = "GET",
        http_path = "/api/v1/documents/{DocumentId}/path",
    }, options)
end

function Client:getDocumentVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetDocumentVersion",
        input_schema = types.GetDocumentVersionInput,
        output_schema = types.GetDocumentVersionOutput,
        http_method = "GET",
        http_path = "/api/v1/documents/{DocumentId}/versions/{VersionId}",
    }, options)
end

function Client:getFolder(input, options)
    return self:invokeOperation(input, {
        name = "GetFolder",
        input_schema = types.GetFolderInput,
        output_schema = types.GetFolderOutput,
        http_method = "GET",
        http_path = "/api/v1/folders/{FolderId}",
    }, options)
end

function Client:getFolderPath(input, options)
    return self:invokeOperation(input, {
        name = "GetFolderPath",
        input_schema = types.GetFolderPathInput,
        output_schema = types.GetFolderPathOutput,
        http_method = "GET",
        http_path = "/api/v1/folders/{FolderId}/path",
    }, options)
end

function Client:getResources(input, options)
    return self:invokeOperation(input, {
        name = "GetResources",
        input_schema = types.GetResourcesInput,
        output_schema = types.GetResourcesOutput,
        http_method = "GET",
        http_path = "/api/v1/resources",
    }, options)
end

function Client:initiateDocumentVersionUpload(input, options)
    return self:invokeOperation(input, {
        name = "InitiateDocumentVersionUpload",
        input_schema = types.InitiateDocumentVersionUploadInput,
        output_schema = types.InitiateDocumentVersionUploadOutput,
        http_method = "POST",
        http_path = "/api/v1/documents",
    }, options)
end

function Client:removeAllResourcePermissions(input, options)
    return self:invokeOperation(input, {
        name = "RemoveAllResourcePermissions",
        input_schema = types.RemoveAllResourcePermissionsInput,
        output_schema = types.RemoveAllResourcePermissionsOutput,
        http_method = "DELETE",
        http_path = "/api/v1/resources/{ResourceId}/permissions",
    }, options)
end

function Client:removeResourcePermission(input, options)
    return self:invokeOperation(input, {
        name = "RemoveResourcePermission",
        input_schema = types.RemoveResourcePermissionInput,
        output_schema = types.RemoveResourcePermissionOutput,
        http_method = "DELETE",
        http_path = "/api/v1/resources/{ResourceId}/permissions/{PrincipalId}",
    }, options)
end

function Client:restoreDocumentVersions(input, options)
    return self:invokeOperation(input, {
        name = "RestoreDocumentVersions",
        input_schema = types.RestoreDocumentVersionsInput,
        output_schema = types.RestoreDocumentVersionsOutput,
        http_method = "POST",
        http_path = "/api/v1/documentVersions/restore/{DocumentId}",
    }, options)
end

function Client:searchResources(input, options)
    return self:invokeOperation(input, {
        name = "SearchResources",
        input_schema = types.SearchResourcesInput,
        output_schema = types.SearchResourcesOutput,
        http_method = "POST",
        http_path = "/api/v1/search",
    }, options)
end

function Client:updateDocument(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDocument",
        input_schema = types.UpdateDocumentInput,
        output_schema = types.UpdateDocumentOutput,
        http_method = "PATCH",
        http_path = "/api/v1/documents/{DocumentId}",
    }, options)
end

function Client:updateDocumentVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDocumentVersion",
        input_schema = types.UpdateDocumentVersionInput,
        output_schema = types.UpdateDocumentVersionOutput,
        http_method = "PATCH",
        http_path = "/api/v1/documents/{DocumentId}/versions/{VersionId}",
    }, options)
end

function Client:updateFolder(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFolder",
        input_schema = types.UpdateFolderInput,
        output_schema = types.UpdateFolderOutput,
        http_method = "PATCH",
        http_path = "/api/v1/folders/{FolderId}",
    }, options)
end

function Client:updateUser(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUser",
        input_schema = types.UpdateUserInput,
        output_schema = types.UpdateUserOutput,
        http_method = "PATCH",
        http_path = "/api/v1/users/{UserId}",
    }, options)
end

return M
