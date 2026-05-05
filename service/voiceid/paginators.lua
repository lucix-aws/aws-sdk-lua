local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listDomains.
function M.pages_list_domains(client, input)
    return paginator.pages(client, "listDomains", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DomainSummaries",
    })
end

--- Returns an item iterator for listDomains.
function M.items_list_domains(client, input)
    return paginator.items(client, "listDomains", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DomainSummaries",
    })
end

--- Returns a page iterator for listFraudsterRegistrationJobs.
function M.pages_list_fraudster_registration_jobs(client, input)
    return paginator.pages(client, "listFraudsterRegistrationJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "JobSummaries",
    })
end

--- Returns an item iterator for listFraudsterRegistrationJobs.
function M.items_list_fraudster_registration_jobs(client, input)
    return paginator.items(client, "listFraudsterRegistrationJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "JobSummaries",
    })
end

--- Returns a page iterator for listFraudsters.
function M.pages_list_fraudsters(client, input)
    return paginator.pages(client, "listFraudsters", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FraudsterSummaries",
    })
end

--- Returns an item iterator for listFraudsters.
function M.items_list_fraudsters(client, input)
    return paginator.items(client, "listFraudsters", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FraudsterSummaries",
    })
end

--- Returns a page iterator for listSpeakerEnrollmentJobs.
function M.pages_list_speaker_enrollment_jobs(client, input)
    return paginator.pages(client, "listSpeakerEnrollmentJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "JobSummaries",
    })
end

--- Returns an item iterator for listSpeakerEnrollmentJobs.
function M.items_list_speaker_enrollment_jobs(client, input)
    return paginator.items(client, "listSpeakerEnrollmentJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "JobSummaries",
    })
end

--- Returns a page iterator for listSpeakers.
function M.pages_list_speakers(client, input)
    return paginator.pages(client, "listSpeakers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SpeakerSummaries",
    })
end

--- Returns an item iterator for listSpeakers.
function M.items_list_speakers(client, input)
    return paginator.items(client, "listSpeakers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SpeakerSummaries",
    })
end

--- Returns a page iterator for listWatchlists.
function M.pages_list_watchlists(client, input)
    return paginator.pages(client, "listWatchlists", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "WatchlistSummaries",
    })
end

--- Returns an item iterator for listWatchlists.
function M.items_list_watchlists(client, input)
    return paginator.items(client, "listWatchlists", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "WatchlistSummaries",
    })
end

return M
