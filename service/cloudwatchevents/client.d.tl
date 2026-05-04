local types = require("cloudwatchevents.types")

local record Client
    activateEventSource: function(Client, types.ActivateEventSourceInput): types.ActivateEventSourceOutput, table
    cancelReplay: function(Client, types.CancelReplayInput): types.CancelReplayOutput, table
    createApiDestination: function(Client, types.CreateApiDestinationInput): types.CreateApiDestinationOutput, table
    createArchive: function(Client, types.CreateArchiveInput): types.CreateArchiveOutput, table
    createConnection: function(Client, types.CreateConnectionInput): types.CreateConnectionOutput, table
    createEventBus: function(Client, types.CreateEventBusInput): types.CreateEventBusOutput, table
    createPartnerEventSource: function(Client, types.CreatePartnerEventSourceInput): types.CreatePartnerEventSourceOutput, table
    deactivateEventSource: function(Client, types.DeactivateEventSourceInput): types.DeactivateEventSourceOutput, table
    deauthorizeConnection: function(Client, types.DeauthorizeConnectionInput): types.DeauthorizeConnectionOutput, table
    deleteApiDestination: function(Client, types.DeleteApiDestinationInput): types.DeleteApiDestinationOutput, table
    deleteArchive: function(Client, types.DeleteArchiveInput): types.DeleteArchiveOutput, table
    deleteConnection: function(Client, types.DeleteConnectionInput): types.DeleteConnectionOutput, table
    deleteEventBus: function(Client, types.DeleteEventBusInput): types.DeleteEventBusOutput, table
    deletePartnerEventSource: function(Client, types.DeletePartnerEventSourceInput): types.DeletePartnerEventSourceOutput, table
    deleteRule: function(Client, types.DeleteRuleInput): types.DeleteRuleOutput, table
    describeApiDestination: function(Client, types.DescribeApiDestinationInput): types.DescribeApiDestinationOutput, table
    describeArchive: function(Client, types.DescribeArchiveInput): types.DescribeArchiveOutput, table
    describeConnection: function(Client, types.DescribeConnectionInput): types.DescribeConnectionOutput, table
    describeEventBus: function(Client, types.DescribeEventBusInput): types.DescribeEventBusOutput, table
    describeEventSource: function(Client, types.DescribeEventSourceInput): types.DescribeEventSourceOutput, table
    describePartnerEventSource: function(Client, types.DescribePartnerEventSourceInput): types.DescribePartnerEventSourceOutput, table
    describeReplay: function(Client, types.DescribeReplayInput): types.DescribeReplayOutput, table
    describeRule: function(Client, types.DescribeRuleInput): types.DescribeRuleOutput, table
    disableRule: function(Client, types.DisableRuleInput): types.DisableRuleOutput, table
    enableRule: function(Client, types.EnableRuleInput): types.EnableRuleOutput, table
    listApiDestinations: function(Client, types.ListApiDestinationsInput): types.ListApiDestinationsOutput, table
    listArchives: function(Client, types.ListArchivesInput): types.ListArchivesOutput, table
    listConnections: function(Client, types.ListConnectionsInput): types.ListConnectionsOutput, table
    listEventBuses: function(Client, types.ListEventBusesInput): types.ListEventBusesOutput, table
    listEventSources: function(Client, types.ListEventSourcesInput): types.ListEventSourcesOutput, table
    listPartnerEventSourceAccounts: function(Client, types.ListPartnerEventSourceAccountsInput): types.ListPartnerEventSourceAccountsOutput, table
    listPartnerEventSources: function(Client, types.ListPartnerEventSourcesInput): types.ListPartnerEventSourcesOutput, table
    listReplays: function(Client, types.ListReplaysInput): types.ListReplaysOutput, table
    listRuleNamesByTarget: function(Client, types.ListRuleNamesByTargetInput): types.ListRuleNamesByTargetOutput, table
    listRules: function(Client, types.ListRulesInput): types.ListRulesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTargetsByRule: function(Client, types.ListTargetsByRuleInput): types.ListTargetsByRuleOutput, table
    putEvents: function(Client, types.PutEventsInput): types.PutEventsOutput, table
    putPartnerEvents: function(Client, types.PutPartnerEventsInput): types.PutPartnerEventsOutput, table
    putPermission: function(Client, types.PutPermissionInput): types.PutPermissionOutput, table
    putRule: function(Client, types.PutRuleInput): types.PutRuleOutput, table
    putTargets: function(Client, types.PutTargetsInput): types.PutTargetsOutput, table
    removePermission: function(Client, types.RemovePermissionInput): types.RemovePermissionOutput, table
    removeTargets: function(Client, types.RemoveTargetsInput): types.RemoveTargetsOutput, table
    startReplay: function(Client, types.StartReplayInput): types.StartReplayOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    testEventPattern: function(Client, types.TestEventPatternInput): types.TestEventPatternOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateApiDestination: function(Client, types.UpdateApiDestinationInput): types.UpdateApiDestinationOutput, table
    updateArchive: function(Client, types.UpdateArchiveInput): types.UpdateArchiveOutput, table
    updateConnection: function(Client, types.UpdateConnectionInput): types.UpdateConnectionOutput, table
end

local record M
    new: function(table): Client
end

return M
