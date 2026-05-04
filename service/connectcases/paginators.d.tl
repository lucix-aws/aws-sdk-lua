local record M
    pages_get_case: function(client: table, input: table): function(): table, table
    pages_get_case_audit_events: function(client: table, input: table): function(): table, table
    pages_list_case_rules: function(client: table, input: table): function(): table, table
    items_list_case_rules: function(client: table, input: table): function(): any
    pages_list_cases_for_contact: function(client: table, input: table): function(): table, table
    pages_list_domains: function(client: table, input: table): function(): table, table
    pages_list_field_options: function(client: table, input: table): function(): table, table
    pages_list_fields: function(client: table, input: table): function(): table, table
    pages_list_layouts: function(client: table, input: table): function(): table, table
    pages_list_templates: function(client: table, input: table): function(): table, table
    pages_search_all_related_items: function(client: table, input: table): function(): table, table
    items_search_all_related_items: function(client: table, input: table): function(): any
    pages_search_cases: function(client: table, input: table): function(): table, table
    items_search_cases: function(client: table, input: table): function(): any
    pages_search_related_items: function(client: table, input: table): function(): table, table
    items_search_related_items: function(client: table, input: table): function(): any
end

return M
