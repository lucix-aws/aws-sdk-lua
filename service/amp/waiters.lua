local waiter = require("waiter")

local M = {}

--- Wait until AnomalyDetectorActive.
function M.wait_until_anomaly_detector_active(client, input, options)
    return waiter.wait(client, "describeAnomalyDetector", input, {
        min_delay = 2,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "anomalyDetector.status.statusCode",
                        expected = "ACTIVE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "anomalyDetector.status.statusCode",
                        expected = "CREATING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "anomalyDetector.status.statusCode",
                        expected = "UPDATING",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until AnomalyDetectorDeleted.
function M.wait_until_anomaly_detector_deleted(client, input, options)
    return waiter.wait(client, "describeAnomalyDetector", input, {
        min_delay = 2,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    errorType = "ResourceNotFoundException",
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "anomalyDetector.status.statusCode",
                        expected = "DELETING",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ScraperActive.
function M.wait_until_scraper_active(client, input, options)
    return waiter.wait(client, "describeScraper", input, {
        min_delay = 2,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "scraper.status.statusCode",
                        expected = "ACTIVE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "scraper.status.statusCode",
                        expected = "CREATION_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ScraperDeleted.
function M.wait_until_scraper_deleted(client, input, options)
    return waiter.wait(client, "describeScraper", input, {
        min_delay = 2,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    errorType = "ResourceNotFoundException",
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "scraper.status.statusCode",
                        expected = "DELETION_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until WorkspaceActive.
function M.wait_until_workspace_active(client, input, options)
    return waiter.wait(client, "describeWorkspace", input, {
        min_delay = 2,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "workspace.status.statusCode",
                        expected = "ACTIVE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "workspace.status.statusCode",
                        expected = "UPDATING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "workspace.status.statusCode",
                        expected = "CREATING",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until WorkspaceDeleted.
function M.wait_until_workspace_deleted(client, input, options)
    return waiter.wait(client, "describeWorkspace", input, {
        min_delay = 2,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    errorType = "ResourceNotFoundException",
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "workspace.status.statusCode",
                        expected = "DELETING",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
