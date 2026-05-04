local record DescribeAffectedAccountsForOrganizationInput
    eventArn: string
    nextToken: string
    maxResults: number
end

local record DescribeAffectedAccountsForOrganizationOutput
    affectedAccounts: {string}
    eventScopeCode: string
    nextToken: string
end

local record DescribeAffectedEntitiesInput
    filter: EntityFilter
    locale: string
    nextToken: string
    maxResults: number
end

local record DescribeAffectedEntitiesOutput
    entities: {AffectedEntity}
    nextToken: string
end

local record DescribeAffectedEntitiesForOrganizationInput
    organizationEntityFilters: {EventAccountFilter}
    locale: string
    nextToken: string
    maxResults: number
    organizationEntityAccountFilters: {EntityAccountFilter}
end

local record DescribeAffectedEntitiesForOrganizationOutput
    entities: {AffectedEntity}
    failedSet: {OrganizationAffectedEntitiesErrorItem}
    nextToken: string
end

local record DescribeEntityAggregatesInput
    eventArns: {string}
end

local record DescribeEntityAggregatesOutput
    entityAggregates: {EntityAggregate}
end

local record DescribeEntityAggregatesForOrganizationInput
    eventArns: {string}
    awsAccountIds: {string}
end

local record DescribeEntityAggregatesForOrganizationOutput
    organizationEntityAggregates: {OrganizationEntityAggregate}
end

local record DescribeEventAggregatesInput
    filter: EventFilter
    aggregateField: string
    maxResults: number
    nextToken: string
end

local record DescribeEventAggregatesOutput
    eventAggregates: {EventAggregate}
    nextToken: string
end

local record DescribeEventDetailsInput
    eventArns: {string}
    locale: string
end

local record DescribeEventDetailsOutput
    successfulSet: {EventDetails}
    failedSet: {EventDetailsErrorItem}
end

local record DescribeEventDetailsForOrganizationInput
    organizationEventDetailFilters: {EventAccountFilter}
    locale: string
end

local record DescribeEventDetailsForOrganizationOutput
    successfulSet: {OrganizationEventDetails}
    failedSet: {OrganizationEventDetailsErrorItem}
end

local record DescribeEventsInput
    filter: EventFilter
    nextToken: string
    maxResults: number
    locale: string
end

local record DescribeEventsOutput
    events: {Event}
    nextToken: string
end

local record DescribeEventsForOrganizationInput
    filter: OrganizationEventFilter
    nextToken: string
    maxResults: number
    locale: string
end

local record DescribeEventsForOrganizationOutput
    events: {OrganizationEvent}
    nextToken: string
end

local record DescribeEventTypesInput
    filter: EventTypeFilter
    locale: string
    nextToken: string
    maxResults: number
end

local record DescribeEventTypesOutput
    eventTypes: {EventType}
    nextToken: string
end

local record DescribeHealthServiceStatusForOrganizationInput
end

local record DescribeHealthServiceStatusForOrganizationOutput
    healthServiceAccessStatusForOrganization: string
end

local record DisableHealthServiceAccessForOrganizationInput
end

local record DisableHealthServiceAccessForOrganizationOutput
end

local record EnableHealthServiceAccessForOrganizationInput
end

local record EnableHealthServiceAccessForOrganizationOutput
end

local record InvalidPaginationToken
    message: string
end

local record InvalidPaginationToken
    message: string
end

local record UnsupportedLocale
    message: string
end

local record InvalidPaginationToken
    message: string
end

local record UnsupportedLocale
    message: string
end

local record InvalidPaginationToken
    message: string
end

local record UnsupportedLocale
    message: string
end

local record UnsupportedLocale
    message: string
end

local record InvalidPaginationToken
    message: string
end

local record UnsupportedLocale
    message: string
end

local record InvalidPaginationToken
    message: string
end

local record UnsupportedLocale
    message: string
end

local record InvalidPaginationToken
    message: string
end

local record UnsupportedLocale
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local type eventScopeCode = "PUBLIC" | "ACCOUNT_SPECIFIC" | "NONE"

local type eventAggregateField = "eventTypeCategory"

local record M
    DescribeAffectedAccountsForOrganizationInput: DescribeAffectedAccountsForOrganizationInput
    DescribeAffectedAccountsForOrganizationOutput: DescribeAffectedAccountsForOrganizationOutput
    DescribeAffectedEntitiesInput: DescribeAffectedEntitiesInput
    DescribeAffectedEntitiesOutput: DescribeAffectedEntitiesOutput
    DescribeAffectedEntitiesForOrganizationInput: DescribeAffectedEntitiesForOrganizationInput
    DescribeAffectedEntitiesForOrganizationOutput: DescribeAffectedEntitiesForOrganizationOutput
    DescribeEntityAggregatesInput: DescribeEntityAggregatesInput
    DescribeEntityAggregatesOutput: DescribeEntityAggregatesOutput
    DescribeEntityAggregatesForOrganizationInput: DescribeEntityAggregatesForOrganizationInput
    DescribeEntityAggregatesForOrganizationOutput: DescribeEntityAggregatesForOrganizationOutput
    DescribeEventAggregatesInput: DescribeEventAggregatesInput
    DescribeEventAggregatesOutput: DescribeEventAggregatesOutput
    DescribeEventDetailsInput: DescribeEventDetailsInput
    DescribeEventDetailsOutput: DescribeEventDetailsOutput
    DescribeEventDetailsForOrganizationInput: DescribeEventDetailsForOrganizationInput
    DescribeEventDetailsForOrganizationOutput: DescribeEventDetailsForOrganizationOutput
    DescribeEventsInput: DescribeEventsInput
    DescribeEventsOutput: DescribeEventsOutput
    DescribeEventsForOrganizationInput: DescribeEventsForOrganizationInput
    DescribeEventsForOrganizationOutput: DescribeEventsForOrganizationOutput
    DescribeEventTypesInput: DescribeEventTypesInput
    DescribeEventTypesOutput: DescribeEventTypesOutput
    DescribeHealthServiceStatusForOrganizationInput: DescribeHealthServiceStatusForOrganizationInput
    DescribeHealthServiceStatusForOrganizationOutput: DescribeHealthServiceStatusForOrganizationOutput
    DisableHealthServiceAccessForOrganizationInput: DisableHealthServiceAccessForOrganizationInput
    DisableHealthServiceAccessForOrganizationOutput: DisableHealthServiceAccessForOrganizationOutput
    EnableHealthServiceAccessForOrganizationInput: EnableHealthServiceAccessForOrganizationInput
    EnableHealthServiceAccessForOrganizationOutput: EnableHealthServiceAccessForOrganizationOutput
end

return M
