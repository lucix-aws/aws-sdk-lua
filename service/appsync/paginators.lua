local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listApiKeys.
function M.pages_list_api_keys(client, input)
    return paginator.pages(client, "listApiKeys", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "apiKeys",
    })
end

--- Returns an item iterator for listApiKeys.
function M.items_list_api_keys(client, input)
    return paginator.items(client, "listApiKeys", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "apiKeys",
    })
end

--- Returns a page iterator for listApis.
function M.pages_list_apis(client, input)
    return paginator.pages(client, "listApis", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "apis",
    })
end

--- Returns an item iterator for listApis.
function M.items_list_apis(client, input)
    return paginator.items(client, "listApis", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "apis",
    })
end

--- Returns a page iterator for listChannelNamespaces.
function M.pages_list_channel_namespaces(client, input)
    return paginator.pages(client, "listChannelNamespaces", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "channelNamespaces",
    })
end

--- Returns an item iterator for listChannelNamespaces.
function M.items_list_channel_namespaces(client, input)
    return paginator.items(client, "listChannelNamespaces", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "channelNamespaces",
    })
end

--- Returns a page iterator for listDataSources.
function M.pages_list_data_sources(client, input)
    return paginator.pages(client, "listDataSources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dataSources",
    })
end

--- Returns an item iterator for listDataSources.
function M.items_list_data_sources(client, input)
    return paginator.items(client, "listDataSources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dataSources",
    })
end

--- Returns a page iterator for listDomainNames.
function M.pages_list_domain_names(client, input)
    return paginator.pages(client, "listDomainNames", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "domainNameConfigs",
    })
end

--- Returns an item iterator for listDomainNames.
function M.items_list_domain_names(client, input)
    return paginator.items(client, "listDomainNames", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "domainNameConfigs",
    })
end

--- Returns a page iterator for listFunctions.
function M.pages_list_functions(client, input)
    return paginator.pages(client, "listFunctions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "functions",
    })
end

--- Returns an item iterator for listFunctions.
function M.items_list_functions(client, input)
    return paginator.items(client, "listFunctions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "functions",
    })
end

--- Returns a page iterator for listGraphqlApis.
function M.pages_list_graphql_apis(client, input)
    return paginator.pages(client, "listGraphqlApis", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "graphqlApis",
    })
end

--- Returns an item iterator for listGraphqlApis.
function M.items_list_graphql_apis(client, input)
    return paginator.items(client, "listGraphqlApis", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "graphqlApis",
    })
end

--- Returns a page iterator for listResolvers.
function M.pages_list_resolvers(client, input)
    return paginator.pages(client, "listResolvers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "resolvers",
    })
end

--- Returns an item iterator for listResolvers.
function M.items_list_resolvers(client, input)
    return paginator.items(client, "listResolvers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "resolvers",
    })
end

--- Returns a page iterator for listResolversByFunction.
function M.pages_list_resolvers_by_function(client, input)
    return paginator.pages(client, "listResolversByFunction", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "resolvers",
    })
end

--- Returns an item iterator for listResolversByFunction.
function M.items_list_resolvers_by_function(client, input)
    return paginator.items(client, "listResolversByFunction", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "resolvers",
    })
end

--- Returns a page iterator for listSourceApiAssociations.
function M.pages_list_source_api_associations(client, input)
    return paginator.pages(client, "listSourceApiAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "sourceApiAssociationSummaries",
    })
end

--- Returns an item iterator for listSourceApiAssociations.
function M.items_list_source_api_associations(client, input)
    return paginator.items(client, "listSourceApiAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "sourceApiAssociationSummaries",
    })
end

--- Returns a page iterator for listTypes.
function M.pages_list_types(client, input)
    return paginator.pages(client, "listTypes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "types",
    })
end

--- Returns an item iterator for listTypes.
function M.items_list_types(client, input)
    return paginator.items(client, "listTypes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "types",
    })
end

--- Returns a page iterator for listTypesByAssociation.
function M.pages_list_types_by_association(client, input)
    return paginator.pages(client, "listTypesByAssociation", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "types",
    })
end

--- Returns an item iterator for listTypesByAssociation.
function M.items_list_types_by_association(client, input)
    return paginator.items(client, "listTypesByAssociation", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "types",
    })
end

return M
