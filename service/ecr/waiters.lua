local waiter = require("waiter")

local M = {}

--- Wait until ImageScanComplete.
function M.wait_until_image_scan_complete(client, input, options)
    return waiter.wait(client, "describeImageScanFindings", input, {
        min_delay = 5,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "imageScanStatus.status",
                        expected = "COMPLETE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "imageScanStatus.status",
                        expected = "FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until LifecyclePolicyPreviewComplete.
function M.wait_until_lifecycle_policy_preview_complete(client, input, options)
    return waiter.wait(client, "getLifecyclePolicyPreview", input, {
        min_delay = 5,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "COMPLETE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
