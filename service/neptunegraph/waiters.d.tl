local types = require("neptunegraph.types")

local record M
    wait_until_export_task_cancelled: function(client: table, input: table, options: table): table, table
    wait_until_export_task_successful: function(client: table, input: table, options: table): table, table
    wait_until_graph_available: function(client: table, input: table, options: table): table, table
    wait_until_graph_deleted: function(client: table, input: table, options: table): table, table
    wait_until_graph_snapshot_available: function(client: table, input: table, options: table): table, table
    wait_until_graph_snapshot_deleted: function(client: table, input: table, options: table): table, table
    wait_until_graph_stopped: function(client: table, input: table, options: table): table, table
    wait_until_import_task_cancelled: function(client: table, input: table, options: table): table, table
    wait_until_import_task_successful: function(client: table, input: table, options: table): table, table
    wait_until_private_graph_endpoint_available: function(client: table, input: table, options: table): table, table
    wait_until_private_graph_endpoint_deleted: function(client: table, input: table, options: table): table, table
end

return M
