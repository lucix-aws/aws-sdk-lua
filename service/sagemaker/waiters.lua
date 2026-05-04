local waiter = require("waiter")

local M = {}

--- Wait until EndpointDeleted.
function M.wait_until_endpoint_deleted(client, input, options)
    return waiter.wait(client, "describeEndpoint", input, {
        min_delay = 30,
        max_delay = 1800,
        acceptors = {
            {
                state = "success",
                matcher = {
                    errorType = "ValidationException",
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "EndpointStatus",
                        expected = "Failed",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until EndpointInService.
function M.wait_until_endpoint_in_service(client, input, options)
    return waiter.wait(client, "describeEndpoint", input, {
        min_delay = 30,
        max_delay = 3600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "EndpointStatus",
                        expected = "InService",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "EndpointStatus",
                        expected = "Failed",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    errorType = "ValidationException",
                },
            },
        },
    }, options)
end

--- Wait until ImageCreated.
function M.wait_until_image_created(client, input, options)
    return waiter.wait(client, "describeImage", input, {
        min_delay = 60,
        max_delay = 3600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ImageStatus",
                        expected = "CREATED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ImageStatus",
                        expected = "CREATE_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    errorType = "ValidationException",
                },
            },
        },
    }, options)
end

--- Wait until ImageDeleted.
function M.wait_until_image_deleted(client, input, options)
    return waiter.wait(client, "describeImage", input, {
        min_delay = 60,
        max_delay = 3600,
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
                        path = "ImageStatus",
                        expected = "DELETE_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    errorType = "ValidationException",
                },
            },
        },
    }, options)
end

--- Wait until ImageUpdated.
function M.wait_until_image_updated(client, input, options)
    return waiter.wait(client, "describeImage", input, {
        min_delay = 60,
        max_delay = 3600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ImageStatus",
                        expected = "CREATED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ImageStatus",
                        expected = "UPDATE_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    errorType = "ValidationException",
                },
            },
        },
    }, options)
end

--- Wait until ImageVersionCreated.
function M.wait_until_image_version_created(client, input, options)
    return waiter.wait(client, "describeImageVersion", input, {
        min_delay = 60,
        max_delay = 3600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ImageVersionStatus",
                        expected = "CREATED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ImageVersionStatus",
                        expected = "CREATE_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    errorType = "ValidationException",
                },
            },
        },
    }, options)
end

--- Wait until ImageVersionDeleted.
function M.wait_until_image_version_deleted(client, input, options)
    return waiter.wait(client, "describeImageVersion", input, {
        min_delay = 60,
        max_delay = 3600,
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
                        path = "ImageVersionStatus",
                        expected = "DELETE_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    errorType = "ValidationException",
                },
            },
        },
    }, options)
end

--- Wait until NotebookInstanceDeleted.
function M.wait_until_notebook_instance_deleted(client, input, options)
    return waiter.wait(client, "describeNotebookInstance", input, {
        min_delay = 30,
        max_delay = 1800,
        acceptors = {
            {
                state = "success",
                matcher = {
                    errorType = "ValidationException",
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "NotebookInstanceStatus",
                        expected = "Failed",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until NotebookInstanceInService.
function M.wait_until_notebook_instance_in_service(client, input, options)
    return waiter.wait(client, "describeNotebookInstance", input, {
        min_delay = 30,
        max_delay = 1800,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "NotebookInstanceStatus",
                        expected = "InService",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "NotebookInstanceStatus",
                        expected = "Failed",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until NotebookInstanceStopped.
function M.wait_until_notebook_instance_stopped(client, input, options)
    return waiter.wait(client, "describeNotebookInstance", input, {
        min_delay = 30,
        max_delay = 1800,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "NotebookInstanceStatus",
                        expected = "Stopped",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "NotebookInstanceStatus",
                        expected = "Failed",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ProcessingJobCompletedOrStopped.
function M.wait_until_processing_job_completed_or_stopped(client, input, options)
    return waiter.wait(client, "describeProcessingJob", input, {
        min_delay = 60,
        max_delay = 3600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ProcessingJobStatus",
                        expected = "Completed",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ProcessingJobStatus",
                        expected = "Stopped",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ProcessingJobStatus",
                        expected = "Failed",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    errorType = "ValidationException",
                },
            },
        },
    }, options)
end

--- Wait until TrainingJobCompletedOrStopped.
function M.wait_until_training_job_completed_or_stopped(client, input, options)
    return waiter.wait(client, "describeTrainingJob", input, {
        min_delay = 120,
        max_delay = 21600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "TrainingJobStatus",
                        expected = "Completed",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "TrainingJobStatus",
                        expected = "Stopped",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "TrainingJobStatus",
                        expected = "Failed",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    errorType = "ValidationException",
                },
            },
        },
    }, options)
end

--- Wait until TransformJobCompletedOrStopped.
function M.wait_until_transform_job_completed_or_stopped(client, input, options)
    return waiter.wait(client, "describeTransformJob", input, {
        min_delay = 60,
        max_delay = 3600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "TransformJobStatus",
                        expected = "Completed",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "TransformJobStatus",
                        expected = "Stopped",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "TransformJobStatus",
                        expected = "Failed",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    errorType = "ValidationException",
                },
            },
        },
    }, options)
end

return M
