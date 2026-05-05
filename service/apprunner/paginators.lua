local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for describeCustomDomains.
function M.pages_describe_custom_domains(client, input)
    return paginator.pages(client, "describeCustomDomains", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listAutoScalingConfigurations.
function M.pages_list_auto_scaling_configurations(client, input)
    return paginator.pages(client, "listAutoScalingConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listConnections.
function M.pages_list_connections(client, input)
    return paginator.pages(client, "listConnections", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listObservabilityConfigurations.
function M.pages_list_observability_configurations(client, input)
    return paginator.pages(client, "listObservabilityConfigurations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listOperations.
function M.pages_list_operations(client, input)
    return paginator.pages(client, "listOperations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listServices.
function M.pages_list_services(client, input)
    return paginator.pages(client, "listServices", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listServicesForAutoScalingConfiguration.
function M.pages_list_services_for_auto_scaling_configuration(client, input)
    return paginator.pages(client, "listServicesForAutoScalingConfiguration", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listVpcConnectors.
function M.pages_list_vpc_connectors(client, input)
    return paginator.pages(client, "listVpcConnectors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listVpcIngressConnections.
function M.pages_list_vpc_ingress_connections(client, input)
    return paginator.pages(client, "listVpcIngressConnections", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
