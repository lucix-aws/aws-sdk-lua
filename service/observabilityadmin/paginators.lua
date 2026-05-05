local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listCentralizationRulesForOrganization.
function M.pages_list_centralization_rules_for_organization(client, input)
    return paginator.pages(client, "listCentralizationRulesForOrganization", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CentralizationRuleSummaries",
    })
end

--- Returns an item iterator for listCentralizationRulesForOrganization.
function M.items_list_centralization_rules_for_organization(client, input)
    return paginator.items(client, "listCentralizationRulesForOrganization", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CentralizationRuleSummaries",
    })
end

--- Returns a page iterator for listResourceTelemetry.
function M.pages_list_resource_telemetry(client, input)
    return paginator.pages(client, "listResourceTelemetry", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TelemetryConfigurations",
    })
end

--- Returns an item iterator for listResourceTelemetry.
function M.items_list_resource_telemetry(client, input)
    return paginator.items(client, "listResourceTelemetry", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TelemetryConfigurations",
    })
end

--- Returns a page iterator for listResourceTelemetryForOrganization.
function M.pages_list_resource_telemetry_for_organization(client, input)
    return paginator.pages(client, "listResourceTelemetryForOrganization", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TelemetryConfigurations",
    })
end

--- Returns an item iterator for listResourceTelemetryForOrganization.
function M.items_list_resource_telemetry_for_organization(client, input)
    return paginator.items(client, "listResourceTelemetryForOrganization", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TelemetryConfigurations",
    })
end

--- Returns a page iterator for listS3TableIntegrations.
function M.pages_list_s3_table_integrations(client, input)
    return paginator.pages(client, "listS3TableIntegrations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "IntegrationSummaries",
    })
end

--- Returns an item iterator for listS3TableIntegrations.
function M.items_list_s3_table_integrations(client, input)
    return paginator.items(client, "listS3TableIntegrations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "IntegrationSummaries",
    })
end

--- Returns a page iterator for listTelemetryPipelines.
function M.pages_list_telemetry_pipelines(client, input)
    return paginator.pages(client, "listTelemetryPipelines", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PipelineSummaries",
    })
end

--- Returns an item iterator for listTelemetryPipelines.
function M.items_list_telemetry_pipelines(client, input)
    return paginator.items(client, "listTelemetryPipelines", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PipelineSummaries",
    })
end

--- Returns a page iterator for listTelemetryRules.
function M.pages_list_telemetry_rules(client, input)
    return paginator.pages(client, "listTelemetryRules", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TelemetryRuleSummaries",
    })
end

--- Returns an item iterator for listTelemetryRules.
function M.items_list_telemetry_rules(client, input)
    return paginator.items(client, "listTelemetryRules", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TelemetryRuleSummaries",
    })
end

--- Returns a page iterator for listTelemetryRulesForOrganization.
function M.pages_list_telemetry_rules_for_organization(client, input)
    return paginator.pages(client, "listTelemetryRulesForOrganization", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TelemetryRuleSummaries",
    })
end

--- Returns an item iterator for listTelemetryRulesForOrganization.
function M.items_list_telemetry_rules_for_organization(client, input)
    return paginator.items(client, "listTelemetryRulesForOrganization", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TelemetryRuleSummaries",
    })
end

return M
