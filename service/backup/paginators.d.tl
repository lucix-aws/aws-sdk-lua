local record M
    pages_list_backup_job_summaries: function(client: table, input: table): function(): table, table
    pages_list_backup_jobs: function(client: table, input: table): function(): table, table
    items_list_backup_jobs: function(client: table, input: table): function(): any
    pages_list_backup_plan_templates: function(client: table, input: table): function(): table, table
    items_list_backup_plan_templates: function(client: table, input: table): function(): any
    pages_list_backup_plan_versions: function(client: table, input: table): function(): table, table
    items_list_backup_plan_versions: function(client: table, input: table): function(): any
    pages_list_backup_plans: function(client: table, input: table): function(): table, table
    items_list_backup_plans: function(client: table, input: table): function(): any
    pages_list_backup_selections: function(client: table, input: table): function(): table, table
    items_list_backup_selections: function(client: table, input: table): function(): any
    pages_list_backup_vaults: function(client: table, input: table): function(): table, table
    items_list_backup_vaults: function(client: table, input: table): function(): any
    pages_list_copy_job_summaries: function(client: table, input: table): function(): table, table
    pages_list_copy_jobs: function(client: table, input: table): function(): table, table
    items_list_copy_jobs: function(client: table, input: table): function(): any
    pages_list_frameworks: function(client: table, input: table): function(): table, table
    pages_list_indexed_recovery_points: function(client: table, input: table): function(): table, table
    items_list_indexed_recovery_points: function(client: table, input: table): function(): any
    pages_list_legal_holds: function(client: table, input: table): function(): table, table
    items_list_legal_holds: function(client: table, input: table): function(): any
    pages_list_protected_resources: function(client: table, input: table): function(): table, table
    items_list_protected_resources: function(client: table, input: table): function(): any
    pages_list_protected_resources_by_backup_vault: function(client: table, input: table): function(): table, table
    items_list_protected_resources_by_backup_vault: function(client: table, input: table): function(): any
    pages_list_recovery_points_by_backup_vault: function(client: table, input: table): function(): table, table
    items_list_recovery_points_by_backup_vault: function(client: table, input: table): function(): any
    pages_list_recovery_points_by_legal_hold: function(client: table, input: table): function(): table, table
    items_list_recovery_points_by_legal_hold: function(client: table, input: table): function(): any
    pages_list_recovery_points_by_resource: function(client: table, input: table): function(): table, table
    items_list_recovery_points_by_resource: function(client: table, input: table): function(): any
    pages_list_report_jobs: function(client: table, input: table): function(): table, table
    pages_list_report_plans: function(client: table, input: table): function(): table, table
    pages_list_restore_access_backup_vaults: function(client: table, input: table): function(): table, table
    items_list_restore_access_backup_vaults: function(client: table, input: table): function(): any
    pages_list_restore_job_summaries: function(client: table, input: table): function(): table, table
    pages_list_restore_jobs: function(client: table, input: table): function(): table, table
    items_list_restore_jobs: function(client: table, input: table): function(): any
    pages_list_restore_jobs_by_protected_resource: function(client: table, input: table): function(): table, table
    items_list_restore_jobs_by_protected_resource: function(client: table, input: table): function(): any
    pages_list_restore_testing_plans: function(client: table, input: table): function(): table, table
    items_list_restore_testing_plans: function(client: table, input: table): function(): any
    pages_list_restore_testing_selections: function(client: table, input: table): function(): table, table
    items_list_restore_testing_selections: function(client: table, input: table): function(): any
    pages_list_scan_job_summaries: function(client: table, input: table): function(): table, table
    items_list_scan_job_summaries: function(client: table, input: table): function(): any
    pages_list_scan_jobs: function(client: table, input: table): function(): table, table
    items_list_scan_jobs: function(client: table, input: table): function(): any
    pages_list_tags: function(client: table, input: table): function(): table, table
    pages_list_tiering_configurations: function(client: table, input: table): function(): table, table
    items_list_tiering_configurations: function(client: table, input: table): function(): any
end

return M
