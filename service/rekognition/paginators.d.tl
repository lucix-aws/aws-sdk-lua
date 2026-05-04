local record M
    pages_describe_project_versions: function(client: table, input: table): function(): table, table
    items_describe_project_versions: function(client: table, input: table): function(): any
    pages_describe_projects: function(client: table, input: table): function(): table, table
    items_describe_projects: function(client: table, input: table): function(): any
    pages_get_celebrity_recognition: function(client: table, input: table): function(): table, table
    pages_get_content_moderation: function(client: table, input: table): function(): table, table
    pages_get_face_detection: function(client: table, input: table): function(): table, table
    pages_get_face_search: function(client: table, input: table): function(): table, table
    pages_get_label_detection: function(client: table, input: table): function(): table, table
    pages_get_person_tracking: function(client: table, input: table): function(): table, table
    pages_get_segment_detection: function(client: table, input: table): function(): table, table
    pages_get_text_detection: function(client: table, input: table): function(): table, table
    pages_list_collections: function(client: table, input: table): function(): table, table
    items_list_collections: function(client: table, input: table): function(): any
    pages_list_dataset_entries: function(client: table, input: table): function(): table, table
    items_list_dataset_entries: function(client: table, input: table): function(): any
    pages_list_dataset_labels: function(client: table, input: table): function(): table, table
    items_list_dataset_labels: function(client: table, input: table): function(): any
    pages_list_faces: function(client: table, input: table): function(): table, table
    items_list_faces: function(client: table, input: table): function(): any
    pages_list_media_analysis_jobs: function(client: table, input: table): function(): table, table
    pages_list_project_policies: function(client: table, input: table): function(): table, table
    items_list_project_policies: function(client: table, input: table): function(): any
    pages_list_stream_processors: function(client: table, input: table): function(): table, table
    pages_list_users: function(client: table, input: table): function(): table, table
    items_list_users: function(client: table, input: table): function(): any
end

return M
