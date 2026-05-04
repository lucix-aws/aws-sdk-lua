local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listAppliedSchemaArns.
function M.pages_list_applied_schema_arns(client, input)
    return paginator.pages(client, "listAppliedSchemaArns", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listAttachedIndices.
function M.pages_list_attached_indices(client, input)
    return paginator.pages(client, "listAttachedIndices", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listDevelopmentSchemaArns.
function M.pages_list_development_schema_arns(client, input)
    return paginator.pages(client, "listDevelopmentSchemaArns", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listDirectories.
function M.pages_list_directories(client, input)
    return paginator.pages(client, "listDirectories", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listFacetAttributes.
function M.pages_list_facet_attributes(client, input)
    return paginator.pages(client, "listFacetAttributes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listFacetNames.
function M.pages_list_facet_names(client, input)
    return paginator.pages(client, "listFacetNames", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listIndex.
function M.pages_list_index(client, input)
    return paginator.pages(client, "listIndex", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listManagedSchemaArns.
function M.pages_list_managed_schema_arns(client, input)
    return paginator.pages(client, "listManagedSchemaArns", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listObjectAttributes.
function M.pages_list_object_attributes(client, input)
    return paginator.pages(client, "listObjectAttributes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listObjectChildren.
function M.pages_list_object_children(client, input)
    return paginator.pages(client, "listObjectChildren", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listObjectParentPaths.
function M.pages_list_object_parent_paths(client, input)
    return paginator.pages(client, "listObjectParentPaths", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listObjectParents.
function M.pages_list_object_parents(client, input)
    return paginator.pages(client, "listObjectParents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listObjectPolicies.
function M.pages_list_object_policies(client, input)
    return paginator.pages(client, "listObjectPolicies", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listPolicyAttachments.
function M.pages_list_policy_attachments(client, input)
    return paginator.pages(client, "listPolicyAttachments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listPublishedSchemaArns.
function M.pages_list_published_schema_arns(client, input)
    return paginator.pages(client, "listPublishedSchemaArns", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listTagsForResource.
function M.pages_list_tags_for_resource(client, input)
    return paginator.pages(client, "listTagsForResource", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listTypedLinkFacetAttributes.
function M.pages_list_typed_link_facet_attributes(client, input)
    return paginator.pages(client, "listTypedLinkFacetAttributes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listTypedLinkFacetNames.
function M.pages_list_typed_link_facet_names(client, input)
    return paginator.pages(client, "listTypedLinkFacetNames", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for lookupPolicy.
function M.pages_lookup_policy(client, input)
    return paginator.pages(client, "lookupPolicy", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
