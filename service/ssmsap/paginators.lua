local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listApplications.
function M.pages_list_applications(client, input)
    return paginator.pages(client, "listApplications", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Applications",
    })
end

--- Returns an item iterator for listApplications.
function M.items_list_applications(client, input)
    return paginator.items(client, "listApplications", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Applications",
    })
end

--- Returns a page iterator for listComponents.
function M.pages_list_components(client, input)
    return paginator.pages(client, "listComponents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Components",
    })
end

--- Returns an item iterator for listComponents.
function M.items_list_components(client, input)
    return paginator.items(client, "listComponents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Components",
    })
end

--- Returns a page iterator for listConfigurationCheckDefinitions.
function M.pages_list_configuration_check_definitions(client, input)
    return paginator.pages(client, "listConfigurationCheckDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ConfigurationChecks",
    })
end

--- Returns an item iterator for listConfigurationCheckDefinitions.
function M.items_list_configuration_check_definitions(client, input)
    return paginator.items(client, "listConfigurationCheckDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ConfigurationChecks",
    })
end

--- Returns a page iterator for listConfigurationCheckOperations.
function M.pages_list_configuration_check_operations(client, input)
    return paginator.pages(client, "listConfigurationCheckOperations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ConfigurationCheckOperations",
    })
end

--- Returns an item iterator for listConfigurationCheckOperations.
function M.items_list_configuration_check_operations(client, input)
    return paginator.items(client, "listConfigurationCheckOperations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ConfigurationCheckOperations",
    })
end

--- Returns a page iterator for listDatabases.
function M.pages_list_databases(client, input)
    return paginator.pages(client, "listDatabases", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Databases",
    })
end

--- Returns an item iterator for listDatabases.
function M.items_list_databases(client, input)
    return paginator.items(client, "listDatabases", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Databases",
    })
end

--- Returns a page iterator for listOperationEvents.
function M.pages_list_operation_events(client, input)
    return paginator.pages(client, "listOperationEvents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "OperationEvents",
    })
end

--- Returns an item iterator for listOperationEvents.
function M.items_list_operation_events(client, input)
    return paginator.items(client, "listOperationEvents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "OperationEvents",
    })
end

--- Returns a page iterator for listOperations.
function M.pages_list_operations(client, input)
    return paginator.pages(client, "listOperations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Operations",
    })
end

--- Returns an item iterator for listOperations.
function M.items_list_operations(client, input)
    return paginator.items(client, "listOperations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Operations",
    })
end

--- Returns a page iterator for listSubCheckResults.
function M.pages_list_sub_check_results(client, input)
    return paginator.pages(client, "listSubCheckResults", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SubCheckResults",
    })
end

--- Returns an item iterator for listSubCheckResults.
function M.items_list_sub_check_results(client, input)
    return paginator.items(client, "listSubCheckResults", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SubCheckResults",
    })
end

--- Returns a page iterator for listSubCheckRuleResults.
function M.pages_list_sub_check_rule_results(client, input)
    return paginator.pages(client, "listSubCheckRuleResults", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RuleResults",
    })
end

--- Returns an item iterator for listSubCheckRuleResults.
function M.items_list_sub_check_rule_results(client, input)
    return paginator.items(client, "listSubCheckRuleResults", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "RuleResults",
    })
end

return M
