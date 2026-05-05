local waiter = require("smithy.waiter")

local M = {}

--- Wait until IdentityExists.
function M.wait_until_identity_exists(client, input, options)
    return waiter.wait(client, "getIdentityVerificationAttributes", input, {
        min_delay = 3,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "VerificationAttributes.*.VerificationStatus",
                        expected = "Success",
                        comparator = "allStringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
