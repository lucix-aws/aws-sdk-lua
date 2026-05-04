local waiter = require("waiter")

local M = {}

--- Wait until CertificateValidated.
function M.wait_until_certificate_validated(client, input, options)
    return waiter.wait(client, "describeCertificate", input, {
        min_delay = 60,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Certificate.DomainValidationOptions[].ValidationStatus",
                        expected = "SUCCESS",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "Certificate.DomainValidationOptions[].ValidationStatus",
                        expected = "PENDING_VALIDATION",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Certificate.Status",
                        expected = "FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    errorType = "ResourceNotFoundException",
                },
            },
        },
    }, options)
end

return M
