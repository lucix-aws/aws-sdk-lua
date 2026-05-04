local record M
    pages_list_accounts: function(client: table, input: table): function(): table, table
    items_list_accounts: function(client: table, input: table): function(): any
    pages_list_automation_event_steps: function(client: table, input: table): function(): table, table
    items_list_automation_event_steps: function(client: table, input: table): function(): any
    pages_list_automation_event_summaries: function(client: table, input: table): function(): table, table
    items_list_automation_event_summaries: function(client: table, input: table): function(): any
    pages_list_automation_events: function(client: table, input: table): function(): table, table
    items_list_automation_events: function(client: table, input: table): function(): any
    pages_list_automation_rule_preview: function(client: table, input: table): function(): table, table
    items_list_automation_rule_preview: function(client: table, input: table): function(): any
    pages_list_automation_rule_preview_summaries: function(client: table, input: table): function(): table, table
    items_list_automation_rule_preview_summaries: function(client: table, input: table): function(): any
    pages_list_automation_rules: function(client: table, input: table): function(): table, table
    items_list_automation_rules: function(client: table, input: table): function(): any
    pages_list_recommended_action_summaries: function(client: table, input: table): function(): table, table
    items_list_recommended_action_summaries: function(client: table, input: table): function(): any
    pages_list_recommended_actions: function(client: table, input: table): function(): table, table
    items_list_recommended_actions: function(client: table, input: table): function(): any
end

return M
