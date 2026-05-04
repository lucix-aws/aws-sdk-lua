local record M
    pages_list_application_dependencies: function(client: table, input: table): function(): table, table
    pages_list_application_versions: function(client: table, input: table): function(): table, table
    pages_list_applications: function(client: table, input: table): function(): table, table
end

return M
