local record M
    pages_list_admin_accounts_for_organization: function(client: table, input: table): function(): table, table
    items_list_admin_accounts_for_organization: function(client: table, input: table): function(): any
    pages_list_admins_managing_account: function(client: table, input: table): function(): table, table
    items_list_admins_managing_account: function(client: table, input: table): function(): any
    pages_list_apps_lists: function(client: table, input: table): function(): table, table
    items_list_apps_lists: function(client: table, input: table): function(): any
    pages_list_compliance_status: function(client: table, input: table): function(): table, table
    items_list_compliance_status: function(client: table, input: table): function(): any
    pages_list_member_accounts: function(client: table, input: table): function(): table, table
    items_list_member_accounts: function(client: table, input: table): function(): any
    pages_list_policies: function(client: table, input: table): function(): table, table
    items_list_policies: function(client: table, input: table): function(): any
    pages_list_protocols_lists: function(client: table, input: table): function(): table, table
    items_list_protocols_lists: function(client: table, input: table): function(): any
    pages_list_third_party_firewall_firewall_policies: function(client: table, input: table): function(): table, table
    items_list_third_party_firewall_firewall_policies: function(client: table, input: table): function(): any
end

return M
