local types = require("health.types")

local record Client
    describeAffectedAccountsForOrganization: function(Client, types.DescribeAffectedAccountsForOrganizationInput): types.DescribeAffectedAccountsForOrganizationOutput, table
    describeAffectedEntities: function(Client, types.DescribeAffectedEntitiesInput): types.DescribeAffectedEntitiesOutput, table
    describeAffectedEntitiesForOrganization: function(Client, types.DescribeAffectedEntitiesForOrganizationInput): types.DescribeAffectedEntitiesForOrganizationOutput, table
    describeEntityAggregates: function(Client, types.DescribeEntityAggregatesInput): types.DescribeEntityAggregatesOutput, table
    describeEntityAggregatesForOrganization: function(Client, types.DescribeEntityAggregatesForOrganizationInput): types.DescribeEntityAggregatesForOrganizationOutput, table
    describeEventAggregates: function(Client, types.DescribeEventAggregatesInput): types.DescribeEventAggregatesOutput, table
    describeEventDetails: function(Client, types.DescribeEventDetailsInput): types.DescribeEventDetailsOutput, table
    describeEventDetailsForOrganization: function(Client, types.DescribeEventDetailsForOrganizationInput): types.DescribeEventDetailsForOrganizationOutput, table
    describeEvents: function(Client, types.DescribeEventsInput): types.DescribeEventsOutput, table
    describeEventsForOrganization: function(Client, types.DescribeEventsForOrganizationInput): types.DescribeEventsForOrganizationOutput, table
    describeEventTypes: function(Client, types.DescribeEventTypesInput): types.DescribeEventTypesOutput, table
    describeHealthServiceStatusForOrganization: function(Client, types.DescribeHealthServiceStatusForOrganizationInput): types.DescribeHealthServiceStatusForOrganizationOutput, table
    disableHealthServiceAccessForOrganization: function(Client, types.DisableHealthServiceAccessForOrganizationInput): types.DisableHealthServiceAccessForOrganizationOutput, table
    enableHealthServiceAccessForOrganization: function(Client, types.EnableHealthServiceAccessForOrganizationInput): types.EnableHealthServiceAccessForOrganizationOutput, table
end

local record M
    new: function(table): Client
end

return M
