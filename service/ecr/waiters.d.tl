local types = require("ecr.types")

local record M
    wait_until_image_scan_complete: function(client: table, input: table, options: table): table, table
    wait_until_lifecycle_policy_preview_complete: function(client: table, input: table, options: table): table, table
end

return M
