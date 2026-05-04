local record M
    pages_list_a_w_s_service_access_for_organization: function(client: table, input: table): function(): table, table
    pages_list_accounts: function(client: table, input: table): function(): table, table
    pages_list_accounts_for_parent: function(client: table, input: table): function(): table, table
    pages_list_accounts_with_invalid_effective_policy: function(client: table, input: table): function(): table, table
    items_list_accounts_with_invalid_effective_policy: function(client: table, input: table): function(): any
    pages_list_children: function(client: table, input: table): function(): table, table
    pages_list_create_account_status: function(client: table, input: table): function(): table, table
    pages_list_delegated_administrators: function(client: table, input: table): function(): table, table
    items_list_delegated_administrators: function(client: table, input: table): function(): any
    pages_list_delegated_services_for_account: function(client: table, input: table): function(): table, table
    items_list_delegated_services_for_account: function(client: table, input: table): function(): any
    pages_list_effective_policy_validation_errors: function(client: table, input: table): function(): table, table
    items_list_effective_policy_validation_errors: function(client: table, input: table): function(): any
    pages_list_handshakes_for_account: function(client: table, input: table): function(): table, table
    pages_list_handshakes_for_organization: function(client: table, input: table): function(): table, table
    pages_list_organizational_units_for_parent: function(client: table, input: table): function(): table, table
    pages_list_parents: function(client: table, input: table): function(): table, table
    pages_list_policies: function(client: table, input: table): function(): table, table
    pages_list_policies_for_target: function(client: table, input: table): function(): table, table
    pages_list_roots: function(client: table, input: table): function(): table, table
    pages_list_tags_for_resource: function(client: table, input: table): function(): table, table
    items_list_tags_for_resource: function(client: table, input: table): function(): any
    pages_list_targets_for_policy: function(client: table, input: table): function(): table, table
end

return M
