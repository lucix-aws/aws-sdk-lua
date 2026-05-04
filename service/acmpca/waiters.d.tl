local types = require("acmpca.types")

local record M
    wait_until_audit_report_created: function(client: table, input: table, options: table): table, table
    wait_until_certificate_authority_c_s_r_created: function(client: table, input: table, options: table): table, table
    wait_until_certificate_issued: function(client: table, input: table, options: table): table, table
end

return M
