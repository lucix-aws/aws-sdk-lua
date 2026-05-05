local waiter = require("smithy.waiter")

local M = {}

--- Wait until ResourceRequestSuccess.
function M.wait_until_resource_request_success(client, input, options)
    return waiter.wait(client, "getResourceRequestStatus", input, {
        min_delay = 5,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ProgressEvent.OperationStatus",
                        expected = "SUCCESS",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ProgressEvent.OperationStatus",
                        expected = "FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ProgressEvent.OperationStatus",
                        expected = "CANCEL_COMPLETE",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
