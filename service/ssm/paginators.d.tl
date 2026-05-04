local record M
    pages_describe_activations: function(client: table, input: table): function(): table, table
    items_describe_activations: function(client: table, input: table): function(): any
    pages_describe_association_execution_targets: function(client: table, input: table): function(): table, table
    items_describe_association_execution_targets: function(client: table, input: table): function(): any
    pages_describe_association_executions: function(client: table, input: table): function(): table, table
    items_describe_association_executions: function(client: table, input: table): function(): any
    pages_describe_automation_executions: function(client: table, input: table): function(): table, table
    items_describe_automation_executions: function(client: table, input: table): function(): any
    pages_describe_automation_step_executions: function(client: table, input: table): function(): table, table
    items_describe_automation_step_executions: function(client: table, input: table): function(): any
    pages_describe_available_patches: function(client: table, input: table): function(): table, table
    items_describe_available_patches: function(client: table, input: table): function(): any
    pages_describe_effective_instance_associations: function(client: table, input: table): function(): table, table
    items_describe_effective_instance_associations: function(client: table, input: table): function(): any
    pages_describe_effective_patches_for_patch_baseline: function(client: table, input: table): function(): table, table
    items_describe_effective_patches_for_patch_baseline: function(client: table, input: table): function(): any
    pages_describe_instance_associations_status: function(client: table, input: table): function(): table, table
    items_describe_instance_associations_status: function(client: table, input: table): function(): any
    pages_describe_instance_information: function(client: table, input: table): function(): table, table
    items_describe_instance_information: function(client: table, input: table): function(): any
    pages_describe_instance_patch_states: function(client: table, input: table): function(): table, table
    items_describe_instance_patch_states: function(client: table, input: table): function(): any
    pages_describe_instance_patch_states_for_patch_group: function(client: table, input: table): function(): table, table
    items_describe_instance_patch_states_for_patch_group: function(client: table, input: table): function(): any
    pages_describe_instance_patches: function(client: table, input: table): function(): table, table
    items_describe_instance_patches: function(client: table, input: table): function(): any
    pages_describe_instance_properties: function(client: table, input: table): function(): table, table
    items_describe_instance_properties: function(client: table, input: table): function(): any
    pages_describe_inventory_deletions: function(client: table, input: table): function(): table, table
    items_describe_inventory_deletions: function(client: table, input: table): function(): any
    pages_describe_maintenance_window_execution_task_invocations: function(client: table, input: table): function(): table, table
    items_describe_maintenance_window_execution_task_invocations: function(client: table, input: table): function(): any
    pages_describe_maintenance_window_execution_tasks: function(client: table, input: table): function(): table, table
    items_describe_maintenance_window_execution_tasks: function(client: table, input: table): function(): any
    pages_describe_maintenance_window_executions: function(client: table, input: table): function(): table, table
    items_describe_maintenance_window_executions: function(client: table, input: table): function(): any
    pages_describe_maintenance_window_schedule: function(client: table, input: table): function(): table, table
    items_describe_maintenance_window_schedule: function(client: table, input: table): function(): any
    pages_describe_maintenance_window_targets: function(client: table, input: table): function(): table, table
    items_describe_maintenance_window_targets: function(client: table, input: table): function(): any
    pages_describe_maintenance_window_tasks: function(client: table, input: table): function(): table, table
    items_describe_maintenance_window_tasks: function(client: table, input: table): function(): any
    pages_describe_maintenance_windows: function(client: table, input: table): function(): table, table
    items_describe_maintenance_windows: function(client: table, input: table): function(): any
    pages_describe_maintenance_windows_for_target: function(client: table, input: table): function(): table, table
    items_describe_maintenance_windows_for_target: function(client: table, input: table): function(): any
    pages_describe_ops_items: function(client: table, input: table): function(): table, table
    items_describe_ops_items: function(client: table, input: table): function(): any
    pages_describe_parameters: function(client: table, input: table): function(): table, table
    pages_describe_patch_baselines: function(client: table, input: table): function(): table, table
    items_describe_patch_baselines: function(client: table, input: table): function(): any
    pages_describe_patch_groups: function(client: table, input: table): function(): table, table
    items_describe_patch_groups: function(client: table, input: table): function(): any
    pages_describe_patch_properties: function(client: table, input: table): function(): table, table
    items_describe_patch_properties: function(client: table, input: table): function(): any
    pages_describe_sessions: function(client: table, input: table): function(): table, table
    items_describe_sessions: function(client: table, input: table): function(): any
    pages_get_inventory: function(client: table, input: table): function(): table, table
    items_get_inventory: function(client: table, input: table): function(): any
    pages_get_inventory_schema: function(client: table, input: table): function(): table, table
    items_get_inventory_schema: function(client: table, input: table): function(): any
    pages_get_ops_summary: function(client: table, input: table): function(): table, table
    items_get_ops_summary: function(client: table, input: table): function(): any
    pages_get_parameter_history: function(client: table, input: table): function(): table, table
    pages_get_parameters_by_path: function(client: table, input: table): function(): table, table
    pages_get_resource_policies: function(client: table, input: table): function(): table, table
    items_get_resource_policies: function(client: table, input: table): function(): any
    pages_list_association_versions: function(client: table, input: table): function(): table, table
    items_list_association_versions: function(client: table, input: table): function(): any
    pages_list_associations: function(client: table, input: table): function(): table, table
    items_list_associations: function(client: table, input: table): function(): any
    pages_list_command_invocations: function(client: table, input: table): function(): table, table
    items_list_command_invocations: function(client: table, input: table): function(): any
    pages_list_commands: function(client: table, input: table): function(): table, table
    items_list_commands: function(client: table, input: table): function(): any
    pages_list_compliance_items: function(client: table, input: table): function(): table, table
    items_list_compliance_items: function(client: table, input: table): function(): any
    pages_list_compliance_summaries: function(client: table, input: table): function(): table, table
    items_list_compliance_summaries: function(client: table, input: table): function(): any
    pages_list_document_versions: function(client: table, input: table): function(): table, table
    items_list_document_versions: function(client: table, input: table): function(): any
    pages_list_documents: function(client: table, input: table): function(): table, table
    items_list_documents: function(client: table, input: table): function(): any
    pages_list_nodes: function(client: table, input: table): function(): table, table
    items_list_nodes: function(client: table, input: table): function(): any
    pages_list_nodes_summary: function(client: table, input: table): function(): table, table
    items_list_nodes_summary: function(client: table, input: table): function(): any
    pages_list_ops_item_events: function(client: table, input: table): function(): table, table
    items_list_ops_item_events: function(client: table, input: table): function(): any
    pages_list_ops_item_related_items: function(client: table, input: table): function(): table, table
    items_list_ops_item_related_items: function(client: table, input: table): function(): any
    pages_list_ops_metadata: function(client: table, input: table): function(): table, table
    items_list_ops_metadata: function(client: table, input: table): function(): any
    pages_list_resource_compliance_summaries: function(client: table, input: table): function(): table, table
    items_list_resource_compliance_summaries: function(client: table, input: table): function(): any
    pages_list_resource_data_sync: function(client: table, input: table): function(): table, table
    items_list_resource_data_sync: function(client: table, input: table): function(): any
end

return M
