local waiter = require("waiter")

local M = {}

--- Wait until ContributorInsightsEnabled.
function M.wait_until_contributor_insights_enabled(client, input, options)
    return waiter.wait(client, "describeContributorInsights", input, {
        min_delay = 20,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ContributorInsightsStatus",
                        expected = "ENABLED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ContributorInsightsStatus",
                        expected = "FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ExportCompleted.
function M.wait_until_export_completed(client, input, options)
    return waiter.wait(client, "describeExport", input, {
        min_delay = 20,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ExportDescription.ExportStatus",
                        expected = "COMPLETED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ExportDescription.ExportStatus",
                        expected = "FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ImportCompleted.
function M.wait_until_import_completed(client, input, options)
    return waiter.wait(client, "describeImport", input, {
        min_delay = 20,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ImportTableDescription.ImportStatus",
                        expected = "COMPLETED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ImportTableDescription.ImportStatus",
                        expected = "FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ImportTableDescription.ImportStatus",
                        expected = "CANCELLED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until KinesisStreamingDestinationActive.
function M.wait_until_kinesis_streaming_destination_active(client, input, options)
    return waiter.wait(client, "describeKinesisStreamingDestination", input, {
        min_delay = 20,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "KinesisDataStreamDestinations[].DestinationStatus",
                        expected = "ACTIVE",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "length(KinesisDataStreamDestinations) > `0`  && length(KinesisDataStreamDestinations[?DestinationStatus == 'DISABLED' || DestinationStatus == 'ENABLE_FAILED']) ==  length(KinesisDataStreamDestinations)",
                        expected = "true",
                        comparator = "booleanEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until TableExists.
function M.wait_until_table_exists(client, input, options)
    return waiter.wait(client, "describeTable", input, {
        min_delay = 20,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Table.TableStatus",
                        expected = "ACTIVE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "ResourceNotFoundException",
                },
            },
        },
    }, options)
end

--- Wait until TableNotExists.
function M.wait_until_table_not_exists(client, input, options)
    return waiter.wait(client, "describeTable", input, {
        min_delay = 20,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    errorType = "ResourceNotFoundException",
                },
            },
        },
    }, options)
end

return M
