local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for getChangeLogs.
function M.pages_get_change_logs(client, input)
    return paginator.pages(client, "getChangeLogs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getDelegations.
function M.pages_get_delegations(client, input)
    return paginator.pages(client, "getDelegations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getEvidenceByEvidenceFolder.
function M.pages_get_evidence_by_evidence_folder(client, input)
    return paginator.pages(client, "getEvidenceByEvidenceFolder", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getEvidenceFoldersByAssessment.
function M.pages_get_evidence_folders_by_assessment(client, input)
    return paginator.pages(client, "getEvidenceFoldersByAssessment", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getEvidenceFoldersByAssessmentControl.
function M.pages_get_evidence_folders_by_assessment_control(client, input)
    return paginator.pages(client, "getEvidenceFoldersByAssessmentControl", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listAssessmentControlInsightsByControlDomain.
function M.pages_list_assessment_control_insights_by_control_domain(client, input)
    return paginator.pages(client, "listAssessmentControlInsightsByControlDomain", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listAssessmentFrameworkShareRequests.
function M.pages_list_assessment_framework_share_requests(client, input)
    return paginator.pages(client, "listAssessmentFrameworkShareRequests", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listAssessmentFrameworks.
function M.pages_list_assessment_frameworks(client, input)
    return paginator.pages(client, "listAssessmentFrameworks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listAssessmentReports.
function M.pages_list_assessment_reports(client, input)
    return paginator.pages(client, "listAssessmentReports", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listAssessments.
function M.pages_list_assessments(client, input)
    return paginator.pages(client, "listAssessments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listControlDomainInsights.
function M.pages_list_control_domain_insights(client, input)
    return paginator.pages(client, "listControlDomainInsights", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listControlDomainInsightsByAssessment.
function M.pages_list_control_domain_insights_by_assessment(client, input)
    return paginator.pages(client, "listControlDomainInsightsByAssessment", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listControlInsightsByControlDomain.
function M.pages_list_control_insights_by_control_domain(client, input)
    return paginator.pages(client, "listControlInsightsByControlDomain", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listControls.
function M.pages_list_controls(client, input)
    return paginator.pages(client, "listControls", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listKeywordsForDataSource.
function M.pages_list_keywords_for_data_source(client, input)
    return paginator.pages(client, "listKeywordsForDataSource", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listNotifications.
function M.pages_list_notifications(client, input)
    return paginator.pages(client, "listNotifications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

return M
