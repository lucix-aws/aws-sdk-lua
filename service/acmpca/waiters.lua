local waiter = require("smithy.waiter")

local M = {}

--- Wait until AuditReportCreated.
function M.wait_until_audit_report_created(client, input, options)
    return waiter.wait(client, "describeCertificateAuthorityAuditReport", input, {
        min_delay = 3,
        max_delay = 180,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "AuditReportStatus",
                        expected = "SUCCESS",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "AuditReportStatus",
                        expected = "FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    errorType = "AccessDeniedException",
                },
            },
        },
    }, options)
end

--- Wait until CertificateAuthorityCSRCreated.
function M.wait_until_certificate_authority_c_s_r_created(client, input, options)
    return waiter.wait(client, "getCertificateAuthorityCsr", input, {
        min_delay = 3,
        max_delay = 180,
        acceptors = {
            {
                state = "success",
                matcher = {
                    success = true,
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "RequestInProgressException",
                },
            },
            {
                state = "failure",
                matcher = {
                    errorType = "AccessDeniedException",
                },
            },
        },
    }, options)
end

--- Wait until CertificateIssued.
function M.wait_until_certificate_issued(client, input, options)
    return waiter.wait(client, "getCertificate", input, {
        min_delay = 1,
        max_delay = 60,
        acceptors = {
            {
                state = "success",
                matcher = {
                    success = true,
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "RequestInProgressException",
                },
            },
            {
                state = "failure",
                matcher = {
                    errorType = "AccessDeniedException",
                },
            },
        },
    }, options)
end

return M
