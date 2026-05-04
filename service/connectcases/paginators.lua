local paginator = require("paginator")

local M = {}

--- Returns a page iterator for getCase.
function M.pages_get_case(client, input)
    return paginator.pages(client, "getCase", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for getCaseAuditEvents.
function M.pages_get_case_audit_events(client, input)
    return paginator.pages(client, "getCaseAuditEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listCaseRules.
function M.pages_list_case_rules(client, input)
    return paginator.pages(client, "listCaseRules", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "caseRules",
    })
end

--- Returns an item iterator for listCaseRules.
function M.items_list_case_rules(client, input)
    return paginator.items(client, "listCaseRules", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "caseRules",
    })
end

--- Returns a page iterator for listCasesForContact.
function M.pages_list_cases_for_contact(client, input)
    return paginator.pages(client, "listCasesForContact", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listDomains.
function M.pages_list_domains(client, input)
    return paginator.pages(client, "listDomains", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listFieldOptions.
function M.pages_list_field_options(client, input)
    return paginator.pages(client, "listFieldOptions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listFields.
function M.pages_list_fields(client, input)
    return paginator.pages(client, "listFields", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listLayouts.
function M.pages_list_layouts(client, input)
    return paginator.pages(client, "listLayouts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listTemplates.
function M.pages_list_templates(client, input)
    return paginator.pages(client, "listTemplates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for searchAllRelatedItems.
function M.pages_search_all_related_items(client, input)
    return paginator.pages(client, "searchAllRelatedItems", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "relatedItems",
    })
end

--- Returns an item iterator for searchAllRelatedItems.
function M.items_search_all_related_items(client, input)
    return paginator.items(client, "searchAllRelatedItems", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "relatedItems",
    })
end

--- Returns a page iterator for searchCases.
function M.pages_search_cases(client, input)
    return paginator.pages(client, "searchCases", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "cases",
    })
end

--- Returns an item iterator for searchCases.
function M.items_search_cases(client, input)
    return paginator.items(client, "searchCases", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "cases",
    })
end

--- Returns a page iterator for searchRelatedItems.
function M.pages_search_related_items(client, input)
    return paginator.pages(client, "searchRelatedItems", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "relatedItems",
    })
end

--- Returns an item iterator for searchRelatedItems.
function M.items_search_related_items(client, input)
    return paginator.items(client, "searchRelatedItems", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "relatedItems",
    })
end

return M
