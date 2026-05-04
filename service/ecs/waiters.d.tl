local types = require("ecs.types")

local record M
    wait_until_daemon_active: function(client: table, input: table, options: table): table, table
    wait_until_daemon_deployment_stopped: function(client: table, input: table, options: table): table, table
    wait_until_daemon_deployment_successful: function(client: table, input: table, options: table): table, table
    wait_until_daemon_task_definition_active: function(client: table, input: table, options: table): table, table
    wait_until_daemon_task_definition_deleted: function(client: table, input: table, options: table): table, table
    wait_until_services_inactive: function(client: table, input: table, options: table): table, table
    wait_until_services_stable: function(client: table, input: table, options: table): table, table
    wait_until_tasks_running: function(client: table, input: table, options: table): table, table
    wait_until_tasks_stopped: function(client: table, input: table, options: table): table, table
end

return M
