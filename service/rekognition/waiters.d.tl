local types = require("rekognition.types")

local record M
    wait_until_project_version_running: function(client: table, input: table, options: table): table, table
    wait_until_project_version_training_completed: function(client: table, input: table, options: table): table, table
end

return M
