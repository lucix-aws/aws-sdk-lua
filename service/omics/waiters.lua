local waiter = require("smithy.waiter")

local M = {}

--- Wait until AnnotationImportJobCreated.
function M.wait_until_annotation_import_job_created(client, input, options)
    return waiter.wait(client, "getAnnotationImportJob", input, {
        min_delay = 30,
        max_delay = 600,
        acceptors = {
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "SUBMITTED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "IN_PROGRESS",
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
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "CANCELLED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "COMPLETED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until AnnotationStoreCreated.
function M.wait_until_annotation_store_created(client, input, options)
    return waiter.wait(client, "getAnnotationStore", input, {
        min_delay = 30,
        max_delay = 600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "ACTIVE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "CREATING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "UPDATING",
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

--- Wait until AnnotationStoreDeleted.
function M.wait_until_annotation_store_deleted(client, input, options)
    return waiter.wait(client, "getAnnotationStore", input, {
        min_delay = 30,
        max_delay = 600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "DELETED",
                        comparator = "stringEquals",
                    },
                },
            },
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
                        path = "status",
                        expected = "DELETING",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until AnnotationStoreVersionCreated.
function M.wait_until_annotation_store_version_created(client, input, options)
    return waiter.wait(client, "getAnnotationStoreVersion", input, {
        min_delay = 30,
        max_delay = 600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "ACTIVE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "CREATING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "UPDATING",
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

--- Wait until AnnotationStoreVersionDeleted.
function M.wait_until_annotation_store_version_deleted(client, input, options)
    return waiter.wait(client, "getAnnotationStoreVersion", input, {
        min_delay = 30,
        max_delay = 600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "DELETED",
                        comparator = "stringEquals",
                    },
                },
            },
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
                        path = "status",
                        expected = "DELETING",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ReadSetActivationJobCompleted.
function M.wait_until_read_set_activation_job_completed(client, input, options)
    return waiter.wait(client, "getReadSetActivationJob", input, {
        min_delay = 30,
        max_delay = 600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "COMPLETED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "SUBMITTED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "IN_PROGRESS",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "CANCELLING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "CANCELLED",
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
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "COMPLETED_WITH_FAILURES",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ReadSetExportJobCompleted.
function M.wait_until_read_set_export_job_completed(client, input, options)
    return waiter.wait(client, "getReadSetExportJob", input, {
        min_delay = 30,
        max_delay = 600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "COMPLETED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "SUBMITTED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "IN_PROGRESS",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "CANCELLING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "CANCELLED",
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
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "COMPLETED_WITH_FAILURES",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ReadSetImportJobCompleted.
function M.wait_until_read_set_import_job_completed(client, input, options)
    return waiter.wait(client, "getReadSetImportJob", input, {
        min_delay = 30,
        max_delay = 600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "COMPLETED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "SUBMITTED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "IN_PROGRESS",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "CANCELLING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "CANCELLED",
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
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "COMPLETED_WITH_FAILURES",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ReferenceImportJobCompleted.
function M.wait_until_reference_import_job_completed(client, input, options)
    return waiter.wait(client, "getReferenceImportJob", input, {
        min_delay = 30,
        max_delay = 600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "COMPLETED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "SUBMITTED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "IN_PROGRESS",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "CANCELLING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "CANCELLED",
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
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "COMPLETED_WITH_FAILURES",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until RunCompleted.
function M.wait_until_run_completed(client, input, options)
    return waiter.wait(client, "getRun", input, {
        min_delay = 30,
        max_delay = 600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "COMPLETED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "PENDING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "STARTING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "RUNNING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "STOPPING",
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

--- Wait until RunRunning.
function M.wait_until_run_running(client, input, options)
    return waiter.wait(client, "getRun", input, {
        min_delay = 30,
        max_delay = 600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "RUNNING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "PENDING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "STARTING",
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
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "CANCELLED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until TaskCompleted.
function M.wait_until_task_completed(client, input, options)
    return waiter.wait(client, "getRunTask", input, {
        min_delay = 30,
        max_delay = 600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "COMPLETED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "PENDING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "STARTING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "RUNNING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "STOPPING",
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

--- Wait until TaskRunning.
function M.wait_until_task_running(client, input, options)
    return waiter.wait(client, "getRunTask", input, {
        min_delay = 30,
        max_delay = 600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "RUNNING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "PENDING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "STARTING",
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
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "CANCELLED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until VariantImportJobCreated.
function M.wait_until_variant_import_job_created(client, input, options)
    return waiter.wait(client, "getVariantImportJob", input, {
        min_delay = 30,
        max_delay = 600,
        acceptors = {
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "SUBMITTED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "IN_PROGRESS",
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
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "CANCELLED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "COMPLETED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until VariantStoreCreated.
function M.wait_until_variant_store_created(client, input, options)
    return waiter.wait(client, "getVariantStore", input, {
        min_delay = 30,
        max_delay = 600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "ACTIVE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "CREATING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "UPDATING",
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

--- Wait until VariantStoreDeleted.
function M.wait_until_variant_store_deleted(client, input, options)
    return waiter.wait(client, "getVariantStore", input, {
        min_delay = 30,
        max_delay = 600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "DELETED",
                        comparator = "stringEquals",
                    },
                },
            },
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
                        path = "status",
                        expected = "DELETING",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until WorkflowActive.
function M.wait_until_workflow_active(client, input, options)
    return waiter.wait(client, "getWorkflow", input, {
        min_delay = 3,
        max_delay = 30,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "ACTIVE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "CREATING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "UPDATING",
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

--- Wait until WorkflowVersionActive.
function M.wait_until_workflow_version_active(client, input, options)
    return waiter.wait(client, "getWorkflowVersion", input, {
        min_delay = 3,
        max_delay = 30,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "ACTIVE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "CREATING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "UPDATING",
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
