local waiter = require("waiter")

local M = {}

--- Wait until InboundExternalLinkActive.
function M.wait_until_inbound_external_link_active(client, input, options)
    return waiter.wait(client, "getInboundExternalLink", input, {
        min_delay = 30,
        max_delay = 120,
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
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "REJECTED",
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
                        expected = "DELETED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "ISOLATED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until InboundExternalLinkDeleted.
function M.wait_until_inbound_external_link_deleted(client, input, options)
    return waiter.wait(client, "getInboundExternalLink", input, {
        min_delay = 30,
        max_delay = 120,
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
                        expected = "REJECTED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until LinkAccepted.
function M.wait_until_link_accepted(client, input, options)
    return waiter.wait(client, "getLink", input, {
        min_delay = 30,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "ACCEPTED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "REJECTED",
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
                        expected = "DELETED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until LinkActive.
function M.wait_until_link_active(client, input, options)
    return waiter.wait(client, "getLink", input, {
        min_delay = 30,
        max_delay = 120,
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
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "REJECTED",
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
                        expected = "DELETED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until LinkDeleted.
function M.wait_until_link_deleted(client, input, options)
    return waiter.wait(client, "getLink", input, {
        min_delay = 30,
        max_delay = 120,
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
                        expected = "REJECTED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until OutboundExternalLinkActive.
function M.wait_until_outbound_external_link_active(client, input, options)
    return waiter.wait(client, "getOutboundExternalLink", input, {
        min_delay = 30,
        max_delay = 120,
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
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "REJECTED",
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
                        expected = "DELETED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "ISOLATED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until OutboundExternalLinkDeleted.
function M.wait_until_outbound_external_link_deleted(client, input, options)
    return waiter.wait(client, "getOutboundExternalLink", input, {
        min_delay = 30,
        max_delay = 120,
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
                        expected = "REJECTED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until RequesterGatewayActive.
function M.wait_until_requester_gateway_active(client, input, options)
    return waiter.wait(client, "getRequesterGateway", input, {
        min_delay = 30,
        max_delay = 120,
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
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "DELETED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "ERROR",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until RequesterGatewayDeleted.
function M.wait_until_requester_gateway_deleted(client, input, options)
    return waiter.wait(client, "getRequesterGateway", input, {
        min_delay = 30,
        max_delay = 120,
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
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "ERROR",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ResponderGatewayActive.
function M.wait_until_responder_gateway_active(client, input, options)
    return waiter.wait(client, "getResponderGateway", input, {
        min_delay = 30,
        max_delay = 120,
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
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "DELETED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "ERROR",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ResponderGatewayDeleted.
function M.wait_until_responder_gateway_deleted(client, input, options)
    return waiter.wait(client, "getResponderGateway", input, {
        min_delay = 30,
        max_delay = 120,
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
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "ERROR",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
