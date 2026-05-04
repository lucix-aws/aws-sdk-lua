local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("cloudtrail.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("cloudtrail.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CloudTrail_20131101"
    cfg.signing_name = "cloudtrail_20131101"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:addTags(input, options)
    return self:invokeOperation(input, {
        name = "AddTags",
        input_schema = types.AddTagsInput,
        output_schema = types.AddTagsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelQuery(input, options)
    return self:invokeOperation(input, {
        name = "CancelQuery",
        input_schema = types.CancelQueryInput,
        output_schema = types.CancelQueryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createChannel(input, options)
    return self:invokeOperation(input, {
        name = "CreateChannel",
        input_schema = types.CreateChannelInput,
        output_schema = types.CreateChannelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDashboard(input, options)
    return self:invokeOperation(input, {
        name = "CreateDashboard",
        input_schema = types.CreateDashboardInput,
        output_schema = types.CreateDashboardOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createEventDataStore(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventDataStore",
        input_schema = types.CreateEventDataStoreInput,
        output_schema = types.CreateEventDataStoreOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createTrail(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrail",
        input_schema = types.CreateTrailInput,
        output_schema = types.CreateTrailOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChannel",
        input_schema = types.DeleteChannelInput,
        output_schema = types.DeleteChannelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDashboard(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDashboard",
        input_schema = types.DeleteDashboardInput,
        output_schema = types.DeleteDashboardOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteEventDataStore(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventDataStore",
        input_schema = types.DeleteEventDataStoreInput,
        output_schema = types.DeleteEventDataStoreOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTrail(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrail",
        input_schema = types.DeleteTrailInput,
        output_schema = types.DeleteTrailOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deregisterOrganizationDelegatedAdmin(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterOrganizationDelegatedAdmin",
        input_schema = types.DeregisterOrganizationDelegatedAdminInput,
        output_schema = types.DeregisterOrganizationDelegatedAdminOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeQuery(input, options)
    return self:invokeOperation(input, {
        name = "DescribeQuery",
        input_schema = types.DescribeQueryInput,
        output_schema = types.DescribeQueryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTrails(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrails",
        input_schema = types.DescribeTrailsInput,
        output_schema = types.DescribeTrailsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disableFederation(input, options)
    return self:invokeOperation(input, {
        name = "DisableFederation",
        input_schema = types.DisableFederationInput,
        output_schema = types.DisableFederationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:enableFederation(input, options)
    return self:invokeOperation(input, {
        name = "EnableFederation",
        input_schema = types.EnableFederationInput,
        output_schema = types.EnableFederationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:generateQuery(input, options)
    return self:invokeOperation(input, {
        name = "GenerateQuery",
        input_schema = types.GenerateQueryInput,
        output_schema = types.GenerateQueryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetChannel",
        input_schema = types.GetChannelInput,
        output_schema = types.GetChannelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDashboard(input, options)
    return self:invokeOperation(input, {
        name = "GetDashboard",
        input_schema = types.GetDashboardInput,
        output_schema = types.GetDashboardOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getEventConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetEventConfiguration",
        input_schema = types.GetEventConfigurationInput,
        output_schema = types.GetEventConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getEventDataStore(input, options)
    return self:invokeOperation(input, {
        name = "GetEventDataStore",
        input_schema = types.GetEventDataStoreInput,
        output_schema = types.GetEventDataStoreOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getEventSelectors(input, options)
    return self:invokeOperation(input, {
        name = "GetEventSelectors",
        input_schema = types.GetEventSelectorsInput,
        output_schema = types.GetEventSelectorsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getImport(input, options)
    return self:invokeOperation(input, {
        name = "GetImport",
        input_schema = types.GetImportInput,
        output_schema = types.GetImportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getInsightSelectors(input, options)
    return self:invokeOperation(input, {
        name = "GetInsightSelectors",
        input_schema = types.GetInsightSelectorsInput,
        output_schema = types.GetInsightSelectorsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getQueryResults(input, options)
    return self:invokeOperation(input, {
        name = "GetQueryResults",
        input_schema = types.GetQueryResultsInput,
        output_schema = types.GetQueryResultsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTrail(input, options)
    return self:invokeOperation(input, {
        name = "GetTrail",
        input_schema = types.GetTrailInput,
        output_schema = types.GetTrailOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTrailStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetTrailStatus",
        input_schema = types.GetTrailStatusInput,
        output_schema = types.GetTrailStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listChannels(input, options)
    return self:invokeOperation(input, {
        name = "ListChannels",
        input_schema = types.ListChannelsInput,
        output_schema = types.ListChannelsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDashboards(input, options)
    return self:invokeOperation(input, {
        name = "ListDashboards",
        input_schema = types.ListDashboardsInput,
        output_schema = types.ListDashboardsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEventDataStores(input, options)
    return self:invokeOperation(input, {
        name = "ListEventDataStores",
        input_schema = types.ListEventDataStoresInput,
        output_schema = types.ListEventDataStoresOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listImportFailures(input, options)
    return self:invokeOperation(input, {
        name = "ListImportFailures",
        input_schema = types.ListImportFailuresInput,
        output_schema = types.ListImportFailuresOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listImports(input, options)
    return self:invokeOperation(input, {
        name = "ListImports",
        input_schema = types.ListImportsInput,
        output_schema = types.ListImportsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listInsightsData(input, options)
    return self:invokeOperation(input, {
        name = "ListInsightsData",
        input_schema = types.ListInsightsDataInput,
        output_schema = types.ListInsightsDataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listInsightsMetricData(input, options)
    return self:invokeOperation(input, {
        name = "ListInsightsMetricData",
        input_schema = types.ListInsightsMetricDataInput,
        output_schema = types.ListInsightsMetricDataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listPublicKeys(input, options)
    return self:invokeOperation(input, {
        name = "ListPublicKeys",
        input_schema = types.ListPublicKeysInput,
        output_schema = types.ListPublicKeysOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listQueries(input, options)
    return self:invokeOperation(input, {
        name = "ListQueries",
        input_schema = types.ListQueriesInput,
        output_schema = types.ListQueriesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTags(input, options)
    return self:invokeOperation(input, {
        name = "ListTags",
        input_schema = types.ListTagsInput,
        output_schema = types.ListTagsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTrails(input, options)
    return self:invokeOperation(input, {
        name = "ListTrails",
        input_schema = types.ListTrailsInput,
        output_schema = types.ListTrailsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:lookupEvents(input, options)
    return self:invokeOperation(input, {
        name = "LookupEvents",
        input_schema = types.LookupEventsInput,
        output_schema = types.LookupEventsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putEventConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutEventConfiguration",
        input_schema = types.PutEventConfigurationInput,
        output_schema = types.PutEventConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putEventSelectors(input, options)
    return self:invokeOperation(input, {
        name = "PutEventSelectors",
        input_schema = types.PutEventSelectorsInput,
        output_schema = types.PutEventSelectorsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putInsightSelectors(input, options)
    return self:invokeOperation(input, {
        name = "PutInsightSelectors",
        input_schema = types.PutInsightSelectorsInput,
        output_schema = types.PutInsightSelectorsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerOrganizationDelegatedAdmin(input, options)
    return self:invokeOperation(input, {
        name = "RegisterOrganizationDelegatedAdmin",
        input_schema = types.RegisterOrganizationDelegatedAdminInput,
        output_schema = types.RegisterOrganizationDelegatedAdminOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:removeTags(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTags",
        input_schema = types.RemoveTagsInput,
        output_schema = types.RemoveTagsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:restoreEventDataStore(input, options)
    return self:invokeOperation(input, {
        name = "RestoreEventDataStore",
        input_schema = types.RestoreEventDataStoreInput,
        output_schema = types.RestoreEventDataStoreOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:searchSampleQueries(input, options)
    return self:invokeOperation(input, {
        name = "SearchSampleQueries",
        input_schema = types.SearchSampleQueriesInput,
        output_schema = types.SearchSampleQueriesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startDashboardRefresh(input, options)
    return self:invokeOperation(input, {
        name = "StartDashboardRefresh",
        input_schema = types.StartDashboardRefreshInput,
        output_schema = types.StartDashboardRefreshOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startEventDataStoreIngestion(input, options)
    return self:invokeOperation(input, {
        name = "StartEventDataStoreIngestion",
        input_schema = types.StartEventDataStoreIngestionInput,
        output_schema = types.StartEventDataStoreIngestionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startImport(input, options)
    return self:invokeOperation(input, {
        name = "StartImport",
        input_schema = types.StartImportInput,
        output_schema = types.StartImportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startLogging(input, options)
    return self:invokeOperation(input, {
        name = "StartLogging",
        input_schema = types.StartLoggingInput,
        output_schema = types.StartLoggingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startQuery(input, options)
    return self:invokeOperation(input, {
        name = "StartQuery",
        input_schema = types.StartQueryInput,
        output_schema = types.StartQueryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopEventDataStoreIngestion(input, options)
    return self:invokeOperation(input, {
        name = "StopEventDataStoreIngestion",
        input_schema = types.StopEventDataStoreIngestionInput,
        output_schema = types.StopEventDataStoreIngestionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopImport(input, options)
    return self:invokeOperation(input, {
        name = "StopImport",
        input_schema = types.StopImportInput,
        output_schema = types.StopImportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopLogging(input, options)
    return self:invokeOperation(input, {
        name = "StopLogging",
        input_schema = types.StopLoggingInput,
        output_schema = types.StopLoggingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChannel",
        input_schema = types.UpdateChannelInput,
        output_schema = types.UpdateChannelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateDashboard(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDashboard",
        input_schema = types.UpdateDashboardInput,
        output_schema = types.UpdateDashboardOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateEventDataStore(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventDataStore",
        input_schema = types.UpdateEventDataStoreInput,
        output_schema = types.UpdateEventDataStoreOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateTrail(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTrail",
        input_schema = types.UpdateTrailInput,
        output_schema = types.UpdateTrailOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
