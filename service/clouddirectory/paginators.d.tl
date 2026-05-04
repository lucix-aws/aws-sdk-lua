local record M
    pages_list_applied_schema_arns: function(client: table, input: table): function(): table, table
    pages_list_attached_indices: function(client: table, input: table): function(): table, table
    pages_list_development_schema_arns: function(client: table, input: table): function(): table, table
    pages_list_directories: function(client: table, input: table): function(): table, table
    pages_list_facet_attributes: function(client: table, input: table): function(): table, table
    pages_list_facet_names: function(client: table, input: table): function(): table, table
    pages_list_index: function(client: table, input: table): function(): table, table
    pages_list_managed_schema_arns: function(client: table, input: table): function(): table, table
    pages_list_object_attributes: function(client: table, input: table): function(): table, table
    pages_list_object_children: function(client: table, input: table): function(): table, table
    pages_list_object_parent_paths: function(client: table, input: table): function(): table, table
    pages_list_object_parents: function(client: table, input: table): function(): table, table
    pages_list_object_policies: function(client: table, input: table): function(): table, table
    pages_list_policy_attachments: function(client: table, input: table): function(): table, table
    pages_list_published_schema_arns: function(client: table, input: table): function(): table, table
    pages_list_tags_for_resource: function(client: table, input: table): function(): table, table
    pages_list_typed_link_facet_attributes: function(client: table, input: table): function(): table, table
    pages_list_typed_link_facet_names: function(client: table, input: table): function(): table, table
    pages_lookup_policy: function(client: table, input: table): function(): table, table
end

return M
