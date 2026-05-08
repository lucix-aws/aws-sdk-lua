



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("workdocs.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("workdocs.schemas")
local traits = require("smithy.traits")
local types = require("workdocs.types")
local sdk_defaults = require("aws.sdk_defaults")


















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSGorillaBoyService"
   if not c.protocol then c.protocol = restjson_protocol.new() end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "workdocs", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:abortDocumentVersionUpload(input, options)
   return self:invokeOperation(schemas.Service, schemas.AbortDocumentVersionUpload, input, options)
end

function C:activateUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.ActivateUser, input, options)
end

function C:addResourcePermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddResourcePermissions, input, options)
end

function C:createComment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateComment, input, options)
end

function C:createCustomMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCustomMetadata, input, options)
end

function C:createFolder(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFolder, input, options)
end

function C:createLabels(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLabels, input, options)
end

function C:createNotificationSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNotificationSubscription, input, options)
end

function C:createUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUser, input, options)
end

function C:deactivateUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeactivateUser, input, options)
end

function C:deleteComment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteComment, input, options)
end

function C:deleteCustomMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCustomMetadata, input, options)
end

function C:deleteDocument(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDocument, input, options)
end

function C:deleteDocumentVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDocumentVersion, input, options)
end

function C:deleteFolder(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFolder, input, options)
end

function C:deleteFolderContents(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFolderContents, input, options)
end

function C:deleteLabels(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLabels, input, options)
end

function C:deleteNotificationSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNotificationSubscription, input, options)
end

function C:deleteUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUser, input, options)
end

function C:describeActivities(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeActivities, input, options)
end

function C:describeComments(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeComments, input, options)
end

function C:describeDocumentVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDocumentVersions, input, options)
end

function C:describeFolderContents(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFolderContents, input, options)
end

function C:describeGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGroups, input, options)
end

function C:describeNotificationSubscriptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNotificationSubscriptions, input, options)
end

function C:describeResourcePermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeResourcePermissions, input, options)
end

function C:describeRootFolders(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRootFolders, input, options)
end

function C:describeUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUsers, input, options)
end

function C:getCurrentUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCurrentUser, input, options)
end

function C:getDocument(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDocument, input, options)
end

function C:getDocumentPath(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDocumentPath, input, options)
end

function C:getDocumentVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDocumentVersion, input, options)
end

function C:getFolder(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFolder, input, options)
end

function C:getFolderPath(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFolderPath, input, options)
end

function C:getResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResources, input, options)
end

function C:initiateDocumentVersionUpload(input, options)
   return self:invokeOperation(schemas.Service, schemas.InitiateDocumentVersionUpload, input, options)
end

function C:removeAllResourcePermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveAllResourcePermissions, input, options)
end

function C:removeResourcePermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveResourcePermission, input, options)
end

function C:restoreDocumentVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreDocumentVersions, input, options)
end

function C:searchResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchResources, input, options)
end

function C:updateDocument(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDocument, input, options)
end

function C:updateDocumentVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDocumentVersion, input, options)
end

function C:updateFolder(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFolder, input, options)
end

function C:updateUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUser, input, options)
end

return M
