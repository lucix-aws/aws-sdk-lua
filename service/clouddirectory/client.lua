



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("clouddirectory.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("clouddirectory.schemas")
local traits = require("smithy.traits")
local types = require("clouddirectory.types")
local sdk_defaults = require("aws.sdk_defaults")








































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonCloudDirectory_20170111"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "clouddirectory", signing_region = c.region } }
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

function C:addFacetToObject(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddFacetToObject, input, options)
end

function C:applySchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.ApplySchema, input, options)
end

function C:attachObject(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachObject, input, options)
end

function C:attachPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachPolicy, input, options)
end

function C:attachToIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachToIndex, input, options)
end

function C:attachTypedLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachTypedLink, input, options)
end

function C:batchRead(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchRead, input, options)
end

function C:batchWrite(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchWrite, input, options)
end

function C:createDirectory(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDirectory, input, options)
end

function C:createFacet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFacet, input, options)
end

function C:createIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIndex, input, options)
end

function C:createObject(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateObject, input, options)
end

function C:createSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSchema, input, options)
end

function C:createTypedLinkFacet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTypedLinkFacet, input, options)
end

function C:deleteDirectory(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDirectory, input, options)
end

function C:deleteFacet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFacet, input, options)
end

function C:deleteObject(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteObject, input, options)
end

function C:deleteSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSchema, input, options)
end

function C:deleteTypedLinkFacet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTypedLinkFacet, input, options)
end

function C:detachFromIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachFromIndex, input, options)
end

function C:detachObject(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachObject, input, options)
end

function C:detachPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachPolicy, input, options)
end

function C:detachTypedLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachTypedLink, input, options)
end

function C:disableDirectory(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableDirectory, input, options)
end

function C:enableDirectory(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableDirectory, input, options)
end

function C:getAppliedSchemaVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAppliedSchemaVersion, input, options)
end

function C:getDirectory(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDirectory, input, options)
end

function C:getFacet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFacet, input, options)
end

function C:getLinkAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLinkAttributes, input, options)
end

function C:getObjectAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetObjectAttributes, input, options)
end

function C:getObjectInformation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetObjectInformation, input, options)
end

function C:getSchemaAsJson(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSchemaAsJson, input, options)
end

function C:getTypedLinkFacetInformation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTypedLinkFacetInformation, input, options)
end

function C:listAppliedSchemaArns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAppliedSchemaArns, input, options)
end

function C:listAttachedIndices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAttachedIndices, input, options)
end

function C:listDevelopmentSchemaArns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDevelopmentSchemaArns, input, options)
end

function C:listDirectories(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDirectories, input, options)
end

function C:listFacetAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFacetAttributes, input, options)
end

function C:listFacetNames(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFacetNames, input, options)
end

function C:listIncomingTypedLinks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIncomingTypedLinks, input, options)
end

function C:listIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIndex, input, options)
end

function C:listManagedSchemaArns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListManagedSchemaArns, input, options)
end

function C:listObjectAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListObjectAttributes, input, options)
end

function C:listObjectChildren(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListObjectChildren, input, options)
end

function C:listObjectParentPaths(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListObjectParentPaths, input, options)
end

function C:listObjectParents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListObjectParents, input, options)
end

function C:listObjectPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListObjectPolicies, input, options)
end

function C:listOutgoingTypedLinks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOutgoingTypedLinks, input, options)
end

function C:listPolicyAttachments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPolicyAttachments, input, options)
end

function C:listPublishedSchemaArns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPublishedSchemaArns, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTypedLinkFacetAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTypedLinkFacetAttributes, input, options)
end

function C:listTypedLinkFacetNames(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTypedLinkFacetNames, input, options)
end

function C:lookupPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.LookupPolicy, input, options)
end

function C:publishSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.PublishSchema, input, options)
end

function C:putSchemaFromJson(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutSchemaFromJson, input, options)
end

function C:removeFacetFromObject(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveFacetFromObject, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateFacet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFacet, input, options)
end

function C:updateLinkAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLinkAttributes, input, options)
end

function C:updateObjectAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateObjectAttributes, input, options)
end

function C:updateSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSchema, input, options)
end

function C:updateTypedLinkFacet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTypedLinkFacet, input, options)
end

function C:upgradeAppliedSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpgradeAppliedSchema, input, options)
end

function C:upgradePublishedSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpgradePublishedSchema, input, options)
end

return M
