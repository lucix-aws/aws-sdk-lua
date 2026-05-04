local record M
    pages_describe_environment_memberships: function(client: table, input: table): function(): table, table
    pages_list_environments: function(client: table, input: table): function(): table, table
end

return M
