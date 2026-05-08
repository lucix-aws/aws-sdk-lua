



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("qapps.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("qapps.schemas")
local traits = require("smithy.traits")
local types = require("qapps.types")
local sdk_defaults = require("aws.sdk_defaults")









































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "QAppsService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "qapps", signing_region = c.region } }
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

function C:associateLibraryItemReview(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateLibraryItemReview, input, options)
end

function C:associateQAppWithUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateQAppWithUser, input, options)
end

function C:batchCreateCategory(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchCreateCategory, input, options)
end

function C:batchDeleteCategory(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteCategory, input, options)
end

function C:batchUpdateCategory(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateCategory, input, options)
end

function C:createLibraryItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLibraryItem, input, options)
end

function C:createPresignedUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePresignedUrl, input, options)
end

function C:createQApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateQApp, input, options)
end

function C:deleteLibraryItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLibraryItem, input, options)
end

function C:deleteQApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteQApp, input, options)
end

function C:describeQAppPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeQAppPermissions, input, options)
end

function C:disassociateLibraryItemReview(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateLibraryItemReview, input, options)
end

function C:disassociateQAppFromUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateQAppFromUser, input, options)
end

function C:exportQAppSessionData(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportQAppSessionData, input, options)
end

function C:getLibraryItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLibraryItem, input, options)
end

function C:getQApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQApp, input, options)
end

function C:getQAppSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQAppSession, input, options)
end

function C:getQAppSessionMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQAppSessionMetadata, input, options)
end

function C:importDocument(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportDocument, input, options)
end

function C:listCategories(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCategories, input, options)
end

function C:listLibraryItems(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLibraryItems, input, options)
end

function C:listQApps(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQApps, input, options)
end

function C:listQAppSessionData(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQAppSessionData, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:predictQApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.PredictQApp, input, options)
end

function C:startQAppSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartQAppSession, input, options)
end

function C:stopQAppSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopQAppSession, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateLibraryItem(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLibraryItem, input, options)
end

function C:updateLibraryItemMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLibraryItemMetadata, input, options)
end

function C:updateQApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQApp, input, options)
end

function C:updateQAppPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQAppPermissions, input, options)
end

function C:updateQAppSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQAppSession, input, options)
end

function C:updateQAppSessionMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQAppSessionMetadata, input, options)
end

return M
