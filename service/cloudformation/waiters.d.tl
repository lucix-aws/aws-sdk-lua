local types = require("cloudformation.types")

local record M
    wait_until_change_set_create_complete: function(client: table, input: table, options: table): table, table
    wait_until_stack_create_complete: function(client: table, input: table, options: table): table, table
    wait_until_stack_delete_complete: function(client: table, input: table, options: table): table, table
    wait_until_stack_exists: function(client: table, input: table, options: table): table, table
    wait_until_stack_import_complete: function(client: table, input: table, options: table): table, table
    wait_until_stack_refactor_create_complete: function(client: table, input: table, options: table): table, table
    wait_until_stack_refactor_execute_complete: function(client: table, input: table, options: table): table, table
    wait_until_stack_rollback_complete: function(client: table, input: table, options: table): table, table
    wait_until_stack_update_complete: function(client: table, input: table, options: table): table, table
    wait_until_type_registration_complete: function(client: table, input: table, options: table): table, table
end

return M
