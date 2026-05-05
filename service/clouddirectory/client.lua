local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("clouddirectory.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("clouddirectory.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonCloudDirectory_20170111"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "clouddirectory", signing_region = cfg.region } }
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

function Client:addFacetToObject(input, options)
    return self:invokeOperation(input, {
        name = "AddFacetToObject",
        input_schema = schemas.AddFacetToObjectInput,
        output_schema = schemas.AddFacetToObjectOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/object/facets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:applySchema(input, options)
    return self:invokeOperation(input, {
        name = "ApplySchema",
        input_schema = schemas.ApplySchemaInput,
        output_schema = schemas.ApplySchemaOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/schema/apply",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachObject(input, options)
    return self:invokeOperation(input, {
        name = "AttachObject",
        input_schema = schemas.AttachObjectInput,
        output_schema = schemas.AttachObjectOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/object/attach",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachPolicy(input, options)
    return self:invokeOperation(input, {
        name = "AttachPolicy",
        input_schema = schemas.AttachPolicyInput,
        output_schema = schemas.AttachPolicyOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/policy/attach",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachToIndex(input, options)
    return self:invokeOperation(input, {
        name = "AttachToIndex",
        input_schema = schemas.AttachToIndexInput,
        output_schema = schemas.AttachToIndexOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/index/attach",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachTypedLink(input, options)
    return self:invokeOperation(input, {
        name = "AttachTypedLink",
        input_schema = schemas.AttachTypedLinkInput,
        output_schema = schemas.AttachTypedLinkOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/attach",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchRead(input, options)
    return self:invokeOperation(input, {
        name = "BatchRead",
        input_schema = schemas.BatchReadInput,
        output_schema = schemas.BatchReadOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/batchread",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchWrite(input, options)
    return self:invokeOperation(input, {
        name = "BatchWrite",
        input_schema = schemas.BatchWriteInput,
        output_schema = schemas.BatchWriteOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/batchwrite",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDirectory(input, options)
    return self:invokeOperation(input, {
        name = "CreateDirectory",
        input_schema = schemas.CreateDirectoryInput,
        output_schema = schemas.CreateDirectoryOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/directory/create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFacet(input, options)
    return self:invokeOperation(input, {
        name = "CreateFacet",
        input_schema = schemas.CreateFacetInput,
        output_schema = schemas.CreateFacetOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/facet/create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIndex(input, options)
    return self:invokeOperation(input, {
        name = "CreateIndex",
        input_schema = schemas.CreateIndexInput,
        output_schema = schemas.CreateIndexOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/index",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createObject(input, options)
    return self:invokeOperation(input, {
        name = "CreateObject",
        input_schema = schemas.CreateObjectInput,
        output_schema = schemas.CreateObjectOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/object",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSchema(input, options)
    return self:invokeOperation(input, {
        name = "CreateSchema",
        input_schema = schemas.CreateSchemaInput,
        output_schema = schemas.CreateSchemaOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/schema/create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTypedLinkFacet(input, options)
    return self:invokeOperation(input, {
        name = "CreateTypedLinkFacet",
        input_schema = schemas.CreateTypedLinkFacetInput,
        output_schema = schemas.CreateTypedLinkFacetOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/facet/create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDirectory(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDirectory",
        input_schema = schemas.DeleteDirectoryInput,
        output_schema = schemas.DeleteDirectoryOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/directory",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFacet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFacet",
        input_schema = schemas.DeleteFacetInput,
        output_schema = schemas.DeleteFacetOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/facet/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteObject(input, options)
    return self:invokeOperation(input, {
        name = "DeleteObject",
        input_schema = schemas.DeleteObjectInput,
        output_schema = schemas.DeleteObjectOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/object/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSchema(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSchema",
        input_schema = schemas.DeleteSchemaInput,
        output_schema = schemas.DeleteSchemaOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/schema",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTypedLinkFacet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTypedLinkFacet",
        input_schema = schemas.DeleteTypedLinkFacetInput,
        output_schema = schemas.DeleteTypedLinkFacetOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/facet/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachFromIndex(input, options)
    return self:invokeOperation(input, {
        name = "DetachFromIndex",
        input_schema = schemas.DetachFromIndexInput,
        output_schema = schemas.DetachFromIndexOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/index/detach",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachObject(input, options)
    return self:invokeOperation(input, {
        name = "DetachObject",
        input_schema = schemas.DetachObjectInput,
        output_schema = schemas.DetachObjectOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/object/detach",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DetachPolicy",
        input_schema = schemas.DetachPolicyInput,
        output_schema = schemas.DetachPolicyOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/policy/detach",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachTypedLink(input, options)
    return self:invokeOperation(input, {
        name = "DetachTypedLink",
        input_schema = schemas.DetachTypedLinkInput,
        output_schema = schemas.DetachTypedLinkOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/detach",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableDirectory(input, options)
    return self:invokeOperation(input, {
        name = "DisableDirectory",
        input_schema = schemas.DisableDirectoryInput,
        output_schema = schemas.DisableDirectoryOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/directory/disable",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableDirectory(input, options)
    return self:invokeOperation(input, {
        name = "EnableDirectory",
        input_schema = schemas.EnableDirectoryInput,
        output_schema = schemas.EnableDirectoryOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/directory/enable",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAppliedSchemaVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetAppliedSchemaVersion",
        input_schema = schemas.GetAppliedSchemaVersionInput,
        output_schema = schemas.GetAppliedSchemaVersionOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/schema/getappliedschema",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDirectory(input, options)
    return self:invokeOperation(input, {
        name = "GetDirectory",
        input_schema = schemas.GetDirectoryInput,
        output_schema = schemas.GetDirectoryOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/directory/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFacet(input, options)
    return self:invokeOperation(input, {
        name = "GetFacet",
        input_schema = schemas.GetFacetInput,
        output_schema = schemas.GetFacetOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/facet",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLinkAttributes(input, options)
    return self:invokeOperation(input, {
        name = "GetLinkAttributes",
        input_schema = schemas.GetLinkAttributesInput,
        output_schema = schemas.GetLinkAttributesOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/attributes/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getObjectAttributes(input, options)
    return self:invokeOperation(input, {
        name = "GetObjectAttributes",
        input_schema = schemas.GetObjectAttributesInput,
        output_schema = schemas.GetObjectAttributesOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/object/attributes/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getObjectInformation(input, options)
    return self:invokeOperation(input, {
        name = "GetObjectInformation",
        input_schema = schemas.GetObjectInformationInput,
        output_schema = schemas.GetObjectInformationOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/object/information",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSchemaAsJson(input, options)
    return self:invokeOperation(input, {
        name = "GetSchemaAsJson",
        input_schema = schemas.GetSchemaAsJsonInput,
        output_schema = schemas.GetSchemaAsJsonOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/schema/json",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTypedLinkFacetInformation(input, options)
    return self:invokeOperation(input, {
        name = "GetTypedLinkFacetInformation",
        input_schema = schemas.GetTypedLinkFacetInformationInput,
        output_schema = schemas.GetTypedLinkFacetInformationOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/facet/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAppliedSchemaArns(input, options)
    return self:invokeOperation(input, {
        name = "ListAppliedSchemaArns",
        input_schema = schemas.ListAppliedSchemaArnsInput,
        output_schema = schemas.ListAppliedSchemaArnsOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/schema/applied",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAttachedIndices(input, options)
    return self:invokeOperation(input, {
        name = "ListAttachedIndices",
        input_schema = schemas.ListAttachedIndicesInput,
        output_schema = schemas.ListAttachedIndicesOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/object/indices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDevelopmentSchemaArns(input, options)
    return self:invokeOperation(input, {
        name = "ListDevelopmentSchemaArns",
        input_schema = schemas.ListDevelopmentSchemaArnsInput,
        output_schema = schemas.ListDevelopmentSchemaArnsOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/schema/development",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDirectories(input, options)
    return self:invokeOperation(input, {
        name = "ListDirectories",
        input_schema = schemas.ListDirectoriesInput,
        output_schema = schemas.ListDirectoriesOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/directory/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFacetAttributes(input, options)
    return self:invokeOperation(input, {
        name = "ListFacetAttributes",
        input_schema = schemas.ListFacetAttributesInput,
        output_schema = schemas.ListFacetAttributesOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/facet/attributes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFacetNames(input, options)
    return self:invokeOperation(input, {
        name = "ListFacetNames",
        input_schema = schemas.ListFacetNamesInput,
        output_schema = schemas.ListFacetNamesOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/facet/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIncomingTypedLinks(input, options)
    return self:invokeOperation(input, {
        name = "ListIncomingTypedLinks",
        input_schema = schemas.ListIncomingTypedLinksInput,
        output_schema = schemas.ListIncomingTypedLinksOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/incoming",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIndex(input, options)
    return self:invokeOperation(input, {
        name = "ListIndex",
        input_schema = schemas.ListIndexInput,
        output_schema = schemas.ListIndexOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/index/targets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listManagedSchemaArns(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedSchemaArns",
        input_schema = schemas.ListManagedSchemaArnsInput,
        output_schema = schemas.ListManagedSchemaArnsOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/schema/managed",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listObjectAttributes(input, options)
    return self:invokeOperation(input, {
        name = "ListObjectAttributes",
        input_schema = schemas.ListObjectAttributesInput,
        output_schema = schemas.ListObjectAttributesOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/object/attributes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listObjectChildren(input, options)
    return self:invokeOperation(input, {
        name = "ListObjectChildren",
        input_schema = schemas.ListObjectChildrenInput,
        output_schema = schemas.ListObjectChildrenOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/object/children",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listObjectParentPaths(input, options)
    return self:invokeOperation(input, {
        name = "ListObjectParentPaths",
        input_schema = schemas.ListObjectParentPathsInput,
        output_schema = schemas.ListObjectParentPathsOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/object/parentpaths",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listObjectParents(input, options)
    return self:invokeOperation(input, {
        name = "ListObjectParents",
        input_schema = schemas.ListObjectParentsInput,
        output_schema = schemas.ListObjectParentsOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/object/parent",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listObjectPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListObjectPolicies",
        input_schema = schemas.ListObjectPoliciesInput,
        output_schema = schemas.ListObjectPoliciesOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/object/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOutgoingTypedLinks(input, options)
    return self:invokeOperation(input, {
        name = "ListOutgoingTypedLinks",
        input_schema = schemas.ListOutgoingTypedLinksInput,
        output_schema = schemas.ListOutgoingTypedLinksOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/outgoing",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPolicyAttachments(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicyAttachments",
        input_schema = schemas.ListPolicyAttachmentsInput,
        output_schema = schemas.ListPolicyAttachmentsOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/policy/attachment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPublishedSchemaArns(input, options)
    return self:invokeOperation(input, {
        name = "ListPublishedSchemaArns",
        input_schema = schemas.ListPublishedSchemaArnsInput,
        output_schema = schemas.ListPublishedSchemaArnsOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/schema/published",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTypedLinkFacetAttributes(input, options)
    return self:invokeOperation(input, {
        name = "ListTypedLinkFacetAttributes",
        input_schema = schemas.ListTypedLinkFacetAttributesInput,
        output_schema = schemas.ListTypedLinkFacetAttributesOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/facet/attributes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTypedLinkFacetNames(input, options)
    return self:invokeOperation(input, {
        name = "ListTypedLinkFacetNames",
        input_schema = schemas.ListTypedLinkFacetNamesInput,
        output_schema = schemas.ListTypedLinkFacetNamesOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/facet/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:lookupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "LookupPolicy",
        input_schema = schemas.LookupPolicyInput,
        output_schema = schemas.LookupPolicyOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/policy/lookup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:publishSchema(input, options)
    return self:invokeOperation(input, {
        name = "PublishSchema",
        input_schema = schemas.PublishSchemaInput,
        output_schema = schemas.PublishSchemaOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/schema/publish",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putSchemaFromJson(input, options)
    return self:invokeOperation(input, {
        name = "PutSchemaFromJson",
        input_schema = schemas.PutSchemaFromJsonInput,
        output_schema = schemas.PutSchemaFromJsonOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/schema/json",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeFacetFromObject(input, options)
    return self:invokeOperation(input, {
        name = "RemoveFacetFromObject",
        input_schema = schemas.RemoveFacetFromObjectInput,
        output_schema = schemas.RemoveFacetFromObjectOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/object/facets/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/tags/add",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/tags/remove",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFacet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFacet",
        input_schema = schemas.UpdateFacetInput,
        output_schema = schemas.UpdateFacetOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/facet",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLinkAttributes(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLinkAttributes",
        input_schema = schemas.UpdateLinkAttributesInput,
        output_schema = schemas.UpdateLinkAttributesOutput,
        http_method = "POST",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/attributes/update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateObjectAttributes(input, options)
    return self:invokeOperation(input, {
        name = "UpdateObjectAttributes",
        input_schema = schemas.UpdateObjectAttributesInput,
        output_schema = schemas.UpdateObjectAttributesOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/object/update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSchema(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSchema",
        input_schema = schemas.UpdateSchemaInput,
        output_schema = schemas.UpdateSchemaOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/schema/update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTypedLinkFacet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTypedLinkFacet",
        input_schema = schemas.UpdateTypedLinkFacetInput,
        output_schema = schemas.UpdateTypedLinkFacetOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/typedlink/facet",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:upgradeAppliedSchema(input, options)
    return self:invokeOperation(input, {
        name = "UpgradeAppliedSchema",
        input_schema = schemas.UpgradeAppliedSchemaInput,
        output_schema = schemas.UpgradeAppliedSchemaOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/schema/upgradeapplied",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:upgradePublishedSchema(input, options)
    return self:invokeOperation(input, {
        name = "UpgradePublishedSchema",
        input_schema = schemas.UpgradePublishedSchemaInput,
        output_schema = schemas.UpgradePublishedSchemaOutput,
        http_method = "PUT",
        http_path = "/amazonclouddirectory/2017-01-11/schema/upgradepublished",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
