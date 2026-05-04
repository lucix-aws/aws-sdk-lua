local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("clouddirectory.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("clouddirectory.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonCloudDirectory_20170111"
    cfg.signing_name = "amazonclouddirectory_20170111"
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

function Client:addFacetToObject(input, options)
    return self:invokeOperation(input, {
        name = "AddFacetToObject",
        input_schema = types.AddFacetToObjectInput,
        output_schema = types.AddFacetToObjectOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/object/facets",
    }, options)
end

function Client:applySchema(input, options)
    return self:invokeOperation(input, {
        name = "ApplySchema",
        input_schema = types.ApplySchemaInput,
        output_schema = types.ApplySchemaOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/schema/apply",
    }, options)
end

function Client:attachObject(input, options)
    return self:invokeOperation(input, {
        name = "AttachObject",
        input_schema = types.AttachObjectInput,
        output_schema = types.AttachObjectOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/object/attach",
    }, options)
end

function Client:attachPolicy(input, options)
    return self:invokeOperation(input, {
        name = "AttachPolicy",
        input_schema = types.AttachPolicyInput,
        output_schema = types.AttachPolicyOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/policy/attach",
    }, options)
end

function Client:attachToIndex(input, options)
    return self:invokeOperation(input, {
        name = "AttachToIndex",
        input_schema = types.AttachToIndexInput,
        output_schema = types.AttachToIndexOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/index/attach",
    }, options)
end

function Client:attachTypedLink(input, options)
    return self:invokeOperation(input, {
        name = "AttachTypedLink",
        input_schema = types.AttachTypedLinkInput,
        output_schema = types.AttachTypedLinkOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/attach",
    }, options)
end

function Client:batchRead(input, options)
    return self:invokeOperation(input, {
        name = "BatchRead",
        input_schema = types.BatchReadInput,
        output_schema = types.BatchReadOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/batchread",
    }, options)
end

function Client:batchWrite(input, options)
    return self:invokeOperation(input, {
        name = "BatchWrite",
        input_schema = types.BatchWriteInput,
        output_schema = types.BatchWriteOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/batchwrite",
    }, options)
end

function Client:createDirectory(input, options)
    return self:invokeOperation(input, {
        name = "CreateDirectory",
        input_schema = types.CreateDirectoryInput,
        output_schema = types.CreateDirectoryOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/directory/create",
    }, options)
end

function Client:createFacet(input, options)
    return self:invokeOperation(input, {
        name = "CreateFacet",
        input_schema = types.CreateFacetInput,
        output_schema = types.CreateFacetOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/facet/create",
    }, options)
end

function Client:createIndex(input, options)
    return self:invokeOperation(input, {
        name = "CreateIndex",
        input_schema = types.CreateIndexInput,
        output_schema = types.CreateIndexOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/index",
    }, options)
end

function Client:createObject(input, options)
    return self:invokeOperation(input, {
        name = "CreateObject",
        input_schema = types.CreateObjectInput,
        output_schema = types.CreateObjectOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/object",
    }, options)
end

function Client:createSchema(input, options)
    return self:invokeOperation(input, {
        name = "CreateSchema",
        input_schema = types.CreateSchemaInput,
        output_schema = types.CreateSchemaOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/schema/create",
    }, options)
end

function Client:createTypedLinkFacet(input, options)
    return self:invokeOperation(input, {
        name = "CreateTypedLinkFacet",
        input_schema = types.CreateTypedLinkFacetInput,
        output_schema = types.CreateTypedLinkFacetOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/facet/create",
    }, options)
end

function Client:deleteDirectory(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDirectory",
        input_schema = types.DeleteDirectoryInput,
        output_schema = types.DeleteDirectoryOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/directory",
    }, options)
end

function Client:deleteFacet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFacet",
        input_schema = types.DeleteFacetInput,
        output_schema = types.DeleteFacetOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/facet/delete",
    }, options)
end

function Client:deleteObject(input, options)
    return self:invokeOperation(input, {
        name = "DeleteObject",
        input_schema = types.DeleteObjectInput,
        output_schema = types.DeleteObjectOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/object/delete",
    }, options)
end

function Client:deleteSchema(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSchema",
        input_schema = types.DeleteSchemaInput,
        output_schema = types.DeleteSchemaOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/schema",
    }, options)
end

function Client:deleteTypedLinkFacet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTypedLinkFacet",
        input_schema = types.DeleteTypedLinkFacetInput,
        output_schema = types.DeleteTypedLinkFacetOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/facet/delete",
    }, options)
end

function Client:detachFromIndex(input, options)
    return self:invokeOperation(input, {
        name = "DetachFromIndex",
        input_schema = types.DetachFromIndexInput,
        output_schema = types.DetachFromIndexOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/index/detach",
    }, options)
end

function Client:detachObject(input, options)
    return self:invokeOperation(input, {
        name = "DetachObject",
        input_schema = types.DetachObjectInput,
        output_schema = types.DetachObjectOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/object/detach",
    }, options)
end

function Client:detachPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DetachPolicy",
        input_schema = types.DetachPolicyInput,
        output_schema = types.DetachPolicyOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/policy/detach",
    }, options)
end

function Client:detachTypedLink(input, options)
    return self:invokeOperation(input, {
        name = "DetachTypedLink",
        input_schema = types.DetachTypedLinkInput,
        output_schema = types.DetachTypedLinkOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/detach",
    }, options)
end

function Client:disableDirectory(input, options)
    return self:invokeOperation(input, {
        name = "DisableDirectory",
        input_schema = types.DisableDirectoryInput,
        output_schema = types.DisableDirectoryOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/directory/disable",
    }, options)
end

function Client:enableDirectory(input, options)
    return self:invokeOperation(input, {
        name = "EnableDirectory",
        input_schema = types.EnableDirectoryInput,
        output_schema = types.EnableDirectoryOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/directory/enable",
    }, options)
end

function Client:getAppliedSchemaVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetAppliedSchemaVersion",
        input_schema = types.GetAppliedSchemaVersionInput,
        output_schema = types.GetAppliedSchemaVersionOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/schema/getappliedschema",
    }, options)
end

function Client:getDirectory(input, options)
    return self:invokeOperation(input, {
        name = "GetDirectory",
        input_schema = types.GetDirectoryInput,
        output_schema = types.GetDirectoryOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/directory/get",
    }, options)
end

function Client:getFacet(input, options)
    return self:invokeOperation(input, {
        name = "GetFacet",
        input_schema = types.GetFacetInput,
        output_schema = types.GetFacetOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/facet",
    }, options)
end

function Client:getLinkAttributes(input, options)
    return self:invokeOperation(input, {
        name = "GetLinkAttributes",
        input_schema = types.GetLinkAttributesInput,
        output_schema = types.GetLinkAttributesOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/attributes/get",
    }, options)
end

function Client:getObjectAttributes(input, options)
    return self:invokeOperation(input, {
        name = "GetObjectAttributes",
        input_schema = types.GetObjectAttributesInput,
        output_schema = types.GetObjectAttributesOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/object/attributes/get",
    }, options)
end

function Client:getObjectInformation(input, options)
    return self:invokeOperation(input, {
        name = "GetObjectInformation",
        input_schema = types.GetObjectInformationInput,
        output_schema = types.GetObjectInformationOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/object/information",
    }, options)
end

function Client:getSchemaAsJson(input, options)
    return self:invokeOperation(input, {
        name = "GetSchemaAsJson",
        input_schema = types.GetSchemaAsJsonInput,
        output_schema = types.GetSchemaAsJsonOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/schema/json",
    }, options)
end

function Client:getTypedLinkFacetInformation(input, options)
    return self:invokeOperation(input, {
        name = "GetTypedLinkFacetInformation",
        input_schema = types.GetTypedLinkFacetInformationInput,
        output_schema = types.GetTypedLinkFacetInformationOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/facet/get",
    }, options)
end

function Client:listAppliedSchemaArns(input, options)
    return self:invokeOperation(input, {
        name = "ListAppliedSchemaArns",
        input_schema = types.ListAppliedSchemaArnsInput,
        output_schema = types.ListAppliedSchemaArnsOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/schema/applied",
    }, options)
end

function Client:listAttachedIndices(input, options)
    return self:invokeOperation(input, {
        name = "ListAttachedIndices",
        input_schema = types.ListAttachedIndicesInput,
        output_schema = types.ListAttachedIndicesOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/object/indices",
    }, options)
end

function Client:listDevelopmentSchemaArns(input, options)
    return self:invokeOperation(input, {
        name = "ListDevelopmentSchemaArns",
        input_schema = types.ListDevelopmentSchemaArnsInput,
        output_schema = types.ListDevelopmentSchemaArnsOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/schema/development",
    }, options)
end

function Client:listDirectories(input, options)
    return self:invokeOperation(input, {
        name = "ListDirectories",
        input_schema = types.ListDirectoriesInput,
        output_schema = types.ListDirectoriesOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/directory/list",
    }, options)
end

function Client:listFacetAttributes(input, options)
    return self:invokeOperation(input, {
        name = "ListFacetAttributes",
        input_schema = types.ListFacetAttributesInput,
        output_schema = types.ListFacetAttributesOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/facet/attributes",
    }, options)
end

function Client:listFacetNames(input, options)
    return self:invokeOperation(input, {
        name = "ListFacetNames",
        input_schema = types.ListFacetNamesInput,
        output_schema = types.ListFacetNamesOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/facet/list",
    }, options)
end

function Client:listIncomingTypedLinks(input, options)
    return self:invokeOperation(input, {
        name = "ListIncomingTypedLinks",
        input_schema = types.ListIncomingTypedLinksInput,
        output_schema = types.ListIncomingTypedLinksOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/incoming",
    }, options)
end

function Client:listIndex(input, options)
    return self:invokeOperation(input, {
        name = "ListIndex",
        input_schema = types.ListIndexInput,
        output_schema = types.ListIndexOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/index/targets",
    }, options)
end

function Client:listManagedSchemaArns(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedSchemaArns",
        input_schema = types.ListManagedSchemaArnsInput,
        output_schema = types.ListManagedSchemaArnsOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/schema/managed",
    }, options)
end

function Client:listObjectAttributes(input, options)
    return self:invokeOperation(input, {
        name = "ListObjectAttributes",
        input_schema = types.ListObjectAttributesInput,
        output_schema = types.ListObjectAttributesOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/object/attributes",
    }, options)
end

function Client:listObjectChildren(input, options)
    return self:invokeOperation(input, {
        name = "ListObjectChildren",
        input_schema = types.ListObjectChildrenInput,
        output_schema = types.ListObjectChildrenOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/object/children",
    }, options)
end

function Client:listObjectParentPaths(input, options)
    return self:invokeOperation(input, {
        name = "ListObjectParentPaths",
        input_schema = types.ListObjectParentPathsInput,
        output_schema = types.ListObjectParentPathsOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/object/parentpaths",
    }, options)
end

function Client:listObjectParents(input, options)
    return self:invokeOperation(input, {
        name = "ListObjectParents",
        input_schema = types.ListObjectParentsInput,
        output_schema = types.ListObjectParentsOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/object/parent",
    }, options)
end

function Client:listObjectPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListObjectPolicies",
        input_schema = types.ListObjectPoliciesInput,
        output_schema = types.ListObjectPoliciesOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/object/policy",
    }, options)
end

function Client:listOutgoingTypedLinks(input, options)
    return self:invokeOperation(input, {
        name = "ListOutgoingTypedLinks",
        input_schema = types.ListOutgoingTypedLinksInput,
        output_schema = types.ListOutgoingTypedLinksOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/outgoing",
    }, options)
end

function Client:listPolicyAttachments(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicyAttachments",
        input_schema = types.ListPolicyAttachmentsInput,
        output_schema = types.ListPolicyAttachmentsOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/policy/attachment",
    }, options)
end

function Client:listPublishedSchemaArns(input, options)
    return self:invokeOperation(input, {
        name = "ListPublishedSchemaArns",
        input_schema = types.ListPublishedSchemaArnsInput,
        output_schema = types.ListPublishedSchemaArnsOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/schema/published",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/tags",
    }, options)
end

function Client:listTypedLinkFacetAttributes(input, options)
    return self:invokeOperation(input, {
        name = "ListTypedLinkFacetAttributes",
        input_schema = types.ListTypedLinkFacetAttributesInput,
        output_schema = types.ListTypedLinkFacetAttributesOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/facet/attributes",
    }, options)
end

function Client:listTypedLinkFacetNames(input, options)
    return self:invokeOperation(input, {
        name = "ListTypedLinkFacetNames",
        input_schema = types.ListTypedLinkFacetNamesInput,
        output_schema = types.ListTypedLinkFacetNamesOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/facet/list",
    }, options)
end

function Client:lookupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "LookupPolicy",
        input_schema = types.LookupPolicyInput,
        output_schema = types.LookupPolicyOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/policy/lookup",
    }, options)
end

function Client:publishSchema(input, options)
    return self:invokeOperation(input, {
        name = "PublishSchema",
        input_schema = types.PublishSchemaInput,
        output_schema = types.PublishSchemaOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/schema/publish",
    }, options)
end

function Client:putSchemaFromJson(input, options)
    return self:invokeOperation(input, {
        name = "PutSchemaFromJson",
        input_schema = types.PutSchemaFromJsonInput,
        output_schema = types.PutSchemaFromJsonOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/schema/json",
    }, options)
end

function Client:removeFacetFromObject(input, options)
    return self:invokeOperation(input, {
        name = "RemoveFacetFromObject",
        input_schema = types.RemoveFacetFromObjectInput,
        output_schema = types.RemoveFacetFromObjectOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/object/facets/delete",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/tags/add",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/tags/remove",
    }, options)
end

function Client:updateFacet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFacet",
        input_schema = types.UpdateFacetInput,
        output_schema = types.UpdateFacetOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/facet",
    }, options)
end

function Client:updateLinkAttributes(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLinkAttributes",
        input_schema = types.UpdateLinkAttributesInput,
        output_schema = types.UpdateLinkAttributesOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/attributes/update",
    }, options)
end

function Client:updateObjectAttributes(input, options)
    return self:invokeOperation(input, {
        name = "UpdateObjectAttributes",
        input_schema = types.UpdateObjectAttributesInput,
        output_schema = types.UpdateObjectAttributesOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/object/update",
    }, options)
end

function Client:updateSchema(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSchema",
        input_schema = types.UpdateSchemaInput,
        output_schema = types.UpdateSchemaOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/schema/update",
    }, options)
end

function Client:updateTypedLinkFacet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTypedLinkFacet",
        input_schema = types.UpdateTypedLinkFacetInput,
        output_schema = types.UpdateTypedLinkFacetOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/facet",
    }, options)
end

function Client:upgradeAppliedSchema(input, options)
    return self:invokeOperation(input, {
        name = "UpgradeAppliedSchema",
        input_schema = types.UpgradeAppliedSchemaInput,
        output_schema = types.UpgradeAppliedSchemaOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/schema/upgradeapplied",
    }, options)
end

function Client:upgradePublishedSchema(input, options)
    return self:invokeOperation(input, {
        name = "UpgradePublishedSchema",
        input_schema = types.UpgradePublishedSchemaInput,
        output_schema = types.UpgradePublishedSchemaOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/schema/upgradepublished",
    }, options)
end

return M
