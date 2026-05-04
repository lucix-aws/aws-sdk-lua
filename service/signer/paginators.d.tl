local record M
    pages_list_signing_jobs: function(client: table, input: table): function(): table, table
    pages_list_signing_platforms: function(client: table, input: table): function(): table, table
    pages_list_signing_profiles: function(client: table, input: table): function(): table, table
end

return M
