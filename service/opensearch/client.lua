local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("opensearch.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("opensearch.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonOpenSearchService"
    cfg.signing_name = "amazonopensearchservice"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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

function Client:acceptInboundConnection(input, options)
    return self:invokeOperation(input, {
        name = "AcceptInboundConnection",
        input_schema = types.AcceptInboundConnectionInput,
        output_schema = types.AcceptInboundConnectionOutput,
        http_method = "PUT",
        http_path = "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}/accept",
    }, options)
end

function Client:addDataSource(input, options)
    return self:invokeOperation(input, {
        name = "AddDataSource",
        input_schema = types.AddDataSourceInput,
        output_schema = types.AddDataSourceOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/dataSource",
    }, options)
end

function Client:addDirectQueryDataSource(input, options)
    return self:invokeOperation(input, {
        name = "AddDirectQueryDataSource",
        input_schema = types.AddDirectQueryDataSourceInput,
        output_schema = types.AddDirectQueryDataSourceOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/directQueryDataSource",
    }, options)
end

function Client:addTags(input, options)
    return self:invokeOperation(input, {
        name = "AddTags",
        input_schema = types.AddTagsInput,
        output_schema = types.AddTagsOutput,
        http_method = "POST",
        http_path = "/2021-01-01/tags",
    }, options)
end

function Client:associatePackage(input, options)
    return self:invokeOperation(input, {
        name = "AssociatePackage",
        input_schema = types.AssociatePackageInput,
        output_schema = types.AssociatePackageOutput,
        http_method = "POST",
        http_path = "/2021-01-01/packages/associate/{PackageID}/{DomainName}",
    }, options)
end

function Client:associatePackages(input, options)
    return self:invokeOperation(input, {
        name = "AssociatePackages",
        input_schema = types.AssociatePackagesInput,
        output_schema = types.AssociatePackagesOutput,
        http_method = "POST",
        http_path = "/2021-01-01/packages/associateMultiple",
    }, options)
end

function Client:authorizeVpcEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "AuthorizeVpcEndpointAccess",
        input_schema = types.AuthorizeVpcEndpointAccessInput,
        output_schema = types.AuthorizeVpcEndpointAccessOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/authorizeVpcEndpointAccess",
    }, options)
end

function Client:cancelDomainConfigChange(input, options)
    return self:invokeOperation(input, {
        name = "CancelDomainConfigChange",
        input_schema = types.CancelDomainConfigChangeInput,
        output_schema = types.CancelDomainConfigChangeOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/config/cancel",
    }, options)
end

function Client:cancelServiceSoftwareUpdate(input, options)
    return self:invokeOperation(input, {
        name = "CancelServiceSoftwareUpdate",
        input_schema = types.CancelServiceSoftwareUpdateInput,
        output_schema = types.CancelServiceSoftwareUpdateOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/serviceSoftwareUpdate/cancel",
    }, options)
end

function Client:createApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplication",
        input_schema = types.CreateApplicationInput,
        output_schema = types.CreateApplicationOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/application",
    }, options)
end

function Client:createDomain(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomain",
        input_schema = types.CreateDomainInput,
        output_schema = types.CreateDomainOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/domain",
    }, options)
end

function Client:createIndex(input, options)
    return self:invokeOperation(input, {
        name = "CreateIndex",
        input_schema = types.CreateIndexInput,
        output_schema = types.CreateIndexOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/index",
    }, options)
end

function Client:createOutboundConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateOutboundConnection",
        input_schema = types.CreateOutboundConnectionInput,
        output_schema = types.CreateOutboundConnectionOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/cc/outboundConnection",
    }, options)
end

function Client:createPackage(input, options)
    return self:invokeOperation(input, {
        name = "CreatePackage",
        input_schema = types.CreatePackageInput,
        output_schema = types.CreatePackageOutput,
        http_method = "POST",
        http_path = "/2021-01-01/packages",
    }, options)
end

function Client:createVpcEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcEndpoint",
        input_schema = types.CreateVpcEndpointInput,
        output_schema = types.CreateVpcEndpointOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/vpcEndpoints",
    }, options)
end

function Client:deleteApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplication",
        input_schema = types.DeleteApplicationInput,
        output_schema = types.DeleteApplicationOutput,
        http_method = "DELETE",
        http_path = "/2021-01-01/opensearch/application/{id}",
    }, options)
end

function Client:deleteDataSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataSource",
        input_schema = types.DeleteDataSourceInput,
        output_schema = types.DeleteDataSourceOutput,
        http_method = "DELETE",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/dataSource/{Name}",
    }, options)
end

function Client:deleteDirectQueryDataSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDirectQueryDataSource",
        input_schema = types.DeleteDirectQueryDataSourceInput,
        output_schema = types.DeleteDirectQueryDataSourceOutput,
        http_method = "DELETE",
        http_path = "/2021-01-01/opensearch/directQueryDataSource/{DataSourceName}",
    }, options)
end

function Client:deleteDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomain",
        input_schema = types.DeleteDomainInput,
        output_schema = types.DeleteDomainOutput,
        http_method = "DELETE",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}",
    }, options)
end

function Client:deleteInboundConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInboundConnection",
        input_schema = types.DeleteInboundConnectionInput,
        output_schema = types.DeleteInboundConnectionOutput,
        http_method = "DELETE",
        http_path = "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}",
    }, options)
end

function Client:deleteIndex(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIndex",
        input_schema = types.DeleteIndexInput,
        output_schema = types.DeleteIndexOutput,
        http_method = "DELETE",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/index/{IndexName}",
    }, options)
end

function Client:deleteOutboundConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOutboundConnection",
        input_schema = types.DeleteOutboundConnectionInput,
        output_schema = types.DeleteOutboundConnectionOutput,
        http_method = "DELETE",
        http_path = "/2021-01-01/opensearch/cc/outboundConnection/{ConnectionId}",
    }, options)
end

function Client:deletePackage(input, options)
    return self:invokeOperation(input, {
        name = "DeletePackage",
        input_schema = types.DeletePackageInput,
        output_schema = types.DeletePackageOutput,
        http_method = "DELETE",
        http_path = "/2021-01-01/packages/{PackageID}",
    }, options)
end

function Client:deleteVpcEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcEndpoint",
        input_schema = types.DeleteVpcEndpointInput,
        output_schema = types.DeleteVpcEndpointOutput,
        http_method = "DELETE",
        http_path = "/2021-01-01/opensearch/vpcEndpoints/{VpcEndpointId}",
    }, options)
end

function Client:deregisterCapability(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterCapability",
        input_schema = types.DeregisterCapabilityInput,
        output_schema = types.DeregisterCapabilityOutput,
        http_method = "DELETE",
        http_path = "/2021-01-01/opensearch/application/{applicationId}/capability/deregister/{capabilityName}",
    }, options)
end

function Client:describeDomain(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomain",
        input_schema = types.DescribeDomainInput,
        output_schema = types.DescribeDomainOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}",
    }, options)
end

function Client:describeDomainAutoTunes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomainAutoTunes",
        input_schema = types.DescribeDomainAutoTunesInput,
        output_schema = types.DescribeDomainAutoTunesOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/autoTunes",
    }, options)
end

function Client:describeDomainChangeProgress(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomainChangeProgress",
        input_schema = types.DescribeDomainChangeProgressInput,
        output_schema = types.DescribeDomainChangeProgressOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/progress",
    }, options)
end

function Client:describeDomainConfig(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomainConfig",
        input_schema = types.DescribeDomainConfigInput,
        output_schema = types.DescribeDomainConfigOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/config",
    }, options)
end

function Client:describeDomainHealth(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomainHealth",
        input_schema = types.DescribeDomainHealthInput,
        output_schema = types.DescribeDomainHealthOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/health",
    }, options)
end

function Client:describeDomainNodes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomainNodes",
        input_schema = types.DescribeDomainNodesInput,
        output_schema = types.DescribeDomainNodesOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/nodes",
    }, options)
end

function Client:describeDomains(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomains",
        input_schema = types.DescribeDomainsInput,
        output_schema = types.DescribeDomainsOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/domain-info",
    }, options)
end

function Client:describeDryRunProgress(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDryRunProgress",
        input_schema = types.DescribeDryRunProgressInput,
        output_schema = types.DescribeDryRunProgressOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/dryRun",
    }, options)
end

function Client:describeInboundConnections(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInboundConnections",
        input_schema = types.DescribeInboundConnectionsInput,
        output_schema = types.DescribeInboundConnectionsOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/cc/inboundConnection/search",
    }, options)
end

function Client:describeInsightDetails(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInsightDetails",
        input_schema = types.DescribeInsightDetailsInput,
        output_schema = types.DescribeInsightDetailsOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/insight-details",
    }, options)
end

function Client:describeInstanceTypeLimits(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceTypeLimits",
        input_schema = types.DescribeInstanceTypeLimitsInput,
        output_schema = types.DescribeInstanceTypeLimitsOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/instanceTypeLimits/{EngineVersion}/{InstanceType}",
    }, options)
end

function Client:describeOutboundConnections(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOutboundConnections",
        input_schema = types.DescribeOutboundConnectionsInput,
        output_schema = types.DescribeOutboundConnectionsOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/cc/outboundConnection/search",
    }, options)
end

function Client:describePackages(input, options)
    return self:invokeOperation(input, {
        name = "DescribePackages",
        input_schema = types.DescribePackagesInput,
        output_schema = types.DescribePackagesOutput,
        http_method = "POST",
        http_path = "/2021-01-01/packages/describe",
    }, options)
end

function Client:describeReservedInstanceOfferings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservedInstanceOfferings",
        input_schema = types.DescribeReservedInstanceOfferingsInput,
        output_schema = types.DescribeReservedInstanceOfferingsOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/reservedInstanceOfferings",
    }, options)
end

function Client:describeReservedInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservedInstances",
        input_schema = types.DescribeReservedInstancesInput,
        output_schema = types.DescribeReservedInstancesOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/reservedInstances",
    }, options)
end

function Client:describeVpcEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcEndpoints",
        input_schema = types.DescribeVpcEndpointsInput,
        output_schema = types.DescribeVpcEndpointsOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/vpcEndpoints/describe",
    }, options)
end

function Client:dissociatePackage(input, options)
    return self:invokeOperation(input, {
        name = "DissociatePackage",
        input_schema = types.DissociatePackageInput,
        output_schema = types.DissociatePackageOutput,
        http_method = "POST",
        http_path = "/2021-01-01/packages/dissociate/{PackageID}/{DomainName}",
    }, options)
end

function Client:dissociatePackages(input, options)
    return self:invokeOperation(input, {
        name = "DissociatePackages",
        input_schema = types.DissociatePackagesInput,
        output_schema = types.DissociatePackagesOutput,
        http_method = "POST",
        http_path = "/2021-01-01/packages/dissociateMultiple",
    }, options)
end

function Client:getApplication(input, options)
    return self:invokeOperation(input, {
        name = "GetApplication",
        input_schema = types.GetApplicationInput,
        output_schema = types.GetApplicationOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/application/{id}",
    }, options)
end

function Client:getCapability(input, options)
    return self:invokeOperation(input, {
        name = "GetCapability",
        input_schema = types.GetCapabilityInput,
        output_schema = types.GetCapabilityOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/application/{applicationId}/capability/{capabilityName}",
    }, options)
end

function Client:getCompatibleVersions(input, options)
    return self:invokeOperation(input, {
        name = "GetCompatibleVersions",
        input_schema = types.GetCompatibleVersionsInput,
        output_schema = types.GetCompatibleVersionsOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/compatibleVersions",
    }, options)
end

function Client:getDataSource(input, options)
    return self:invokeOperation(input, {
        name = "GetDataSource",
        input_schema = types.GetDataSourceInput,
        output_schema = types.GetDataSourceOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/dataSource/{Name}",
    }, options)
end

function Client:getDefaultApplicationSetting(input, options)
    return self:invokeOperation(input, {
        name = "GetDefaultApplicationSetting",
        input_schema = types.GetDefaultApplicationSettingInput,
        output_schema = types.GetDefaultApplicationSettingOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/defaultApplicationSetting",
    }, options)
end

function Client:getDirectQueryDataSource(input, options)
    return self:invokeOperation(input, {
        name = "GetDirectQueryDataSource",
        input_schema = types.GetDirectQueryDataSourceInput,
        output_schema = types.GetDirectQueryDataSourceOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/directQueryDataSource/{DataSourceName}",
    }, options)
end

function Client:getDomainMaintenanceStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainMaintenanceStatus",
        input_schema = types.GetDomainMaintenanceStatusInput,
        output_schema = types.GetDomainMaintenanceStatusOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/domainMaintenance",
    }, options)
end

function Client:getIndex(input, options)
    return self:invokeOperation(input, {
        name = "GetIndex",
        input_schema = types.GetIndexInput,
        output_schema = types.GetIndexOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/index/{IndexName}",
    }, options)
end

function Client:getPackageVersionHistory(input, options)
    return self:invokeOperation(input, {
        name = "GetPackageVersionHistory",
        input_schema = types.GetPackageVersionHistoryInput,
        output_schema = types.GetPackageVersionHistoryOutput,
        http_method = "GET",
        http_path = "/2021-01-01/packages/{PackageID}/history",
    }, options)
end

function Client:getUpgradeHistory(input, options)
    return self:invokeOperation(input, {
        name = "GetUpgradeHistory",
        input_schema = types.GetUpgradeHistoryInput,
        output_schema = types.GetUpgradeHistoryOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/upgradeDomain/{DomainName}/history",
    }, options)
end

function Client:getUpgradeStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetUpgradeStatus",
        input_schema = types.GetUpgradeStatusInput,
        output_schema = types.GetUpgradeStatusOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/upgradeDomain/{DomainName}/status",
    }, options)
end

function Client:listApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListApplications",
        input_schema = types.ListApplicationsInput,
        output_schema = types.ListApplicationsOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/list-applications",
    }, options)
end

function Client:listDataSources(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSources",
        input_schema = types.ListDataSourcesInput,
        output_schema = types.ListDataSourcesOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/dataSource",
    }, options)
end

function Client:listDirectQueryDataSources(input, options)
    return self:invokeOperation(input, {
        name = "ListDirectQueryDataSources",
        input_schema = types.ListDirectQueryDataSourcesInput,
        output_schema = types.ListDirectQueryDataSourcesOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/directQueryDataSource",
    }, options)
end

function Client:listDomainMaintenances(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainMaintenances",
        input_schema = types.ListDomainMaintenancesInput,
        output_schema = types.ListDomainMaintenancesOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/domainMaintenances",
    }, options)
end

function Client:listDomainNames(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainNames",
        input_schema = types.ListDomainNamesInput,
        output_schema = types.ListDomainNamesOutput,
        http_method = "GET",
        http_path = "/2021-01-01/domain",
    }, options)
end

function Client:listDomainsForPackage(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainsForPackage",
        input_schema = types.ListDomainsForPackageInput,
        output_schema = types.ListDomainsForPackageOutput,
        http_method = "GET",
        http_path = "/2021-01-01/packages/{PackageID}/domains",
    }, options)
end

function Client:listInsights(input, options)
    return self:invokeOperation(input, {
        name = "ListInsights",
        input_schema = types.ListInsightsInput,
        output_schema = types.ListInsightsOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/insights",
    }, options)
end

function Client:listInstanceTypeDetails(input, options)
    return self:invokeOperation(input, {
        name = "ListInstanceTypeDetails",
        input_schema = types.ListInstanceTypeDetailsInput,
        output_schema = types.ListInstanceTypeDetailsOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/instanceTypeDetails/{EngineVersion}",
    }, options)
end

function Client:listPackagesForDomain(input, options)
    return self:invokeOperation(input, {
        name = "ListPackagesForDomain",
        input_schema = types.ListPackagesForDomainInput,
        output_schema = types.ListPackagesForDomainOutput,
        http_method = "GET",
        http_path = "/2021-01-01/domain/{DomainName}/packages",
    }, options)
end

function Client:listScheduledActions(input, options)
    return self:invokeOperation(input, {
        name = "ListScheduledActions",
        input_schema = types.ListScheduledActionsInput,
        output_schema = types.ListScheduledActionsOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/scheduledActions",
    }, options)
end

function Client:listTags(input, options)
    return self:invokeOperation(input, {
        name = "ListTags",
        input_schema = types.ListTagsInput,
        output_schema = types.ListTagsOutput,
        http_method = "GET",
        http_path = "/2021-01-01/tags",
    }, options)
end

function Client:listVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListVersions",
        input_schema = types.ListVersionsInput,
        output_schema = types.ListVersionsOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/versions",
    }, options)
end

function Client:listVpcEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "ListVpcEndpointAccess",
        input_schema = types.ListVpcEndpointAccessInput,
        output_schema = types.ListVpcEndpointAccessOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/listVpcEndpointAccess",
    }, options)
end

function Client:listVpcEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListVpcEndpoints",
        input_schema = types.ListVpcEndpointsInput,
        output_schema = types.ListVpcEndpointsOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/vpcEndpoints",
    }, options)
end

function Client:listVpcEndpointsForDomain(input, options)
    return self:invokeOperation(input, {
        name = "ListVpcEndpointsForDomain",
        input_schema = types.ListVpcEndpointsForDomainInput,
        output_schema = types.ListVpcEndpointsForDomainOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/vpcEndpoints",
    }, options)
end

function Client:purchaseReservedInstanceOffering(input, options)
    return self:invokeOperation(input, {
        name = "PurchaseReservedInstanceOffering",
        input_schema = types.PurchaseReservedInstanceOfferingInput,
        output_schema = types.PurchaseReservedInstanceOfferingOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/purchaseReservedInstanceOffering",
    }, options)
end

function Client:putDefaultApplicationSetting(input, options)
    return self:invokeOperation(input, {
        name = "PutDefaultApplicationSetting",
        input_schema = types.PutDefaultApplicationSettingInput,
        output_schema = types.PutDefaultApplicationSettingOutput,
        http_method = "PUT",
        http_path = "/2021-01-01/opensearch/defaultApplicationSetting",
    }, options)
end

function Client:registerCapability(input, options)
    return self:invokeOperation(input, {
        name = "RegisterCapability",
        input_schema = types.RegisterCapabilityInput,
        output_schema = types.RegisterCapabilityOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/application/{applicationId}/capability/register",
    }, options)
end

function Client:rejectInboundConnection(input, options)
    return self:invokeOperation(input, {
        name = "RejectInboundConnection",
        input_schema = types.RejectInboundConnectionInput,
        output_schema = types.RejectInboundConnectionOutput,
        http_method = "PUT",
        http_path = "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}/reject",
    }, options)
end

function Client:removeTags(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTags",
        input_schema = types.RemoveTagsInput,
        output_schema = types.RemoveTagsOutput,
        http_method = "POST",
        http_path = "/2021-01-01/tags-removal",
    }, options)
end

function Client:revokeVpcEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "RevokeVpcEndpointAccess",
        input_schema = types.RevokeVpcEndpointAccessInput,
        output_schema = types.RevokeVpcEndpointAccessOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/revokeVpcEndpointAccess",
    }, options)
end

function Client:rollbackServiceSoftwareUpdate(input, options)
    return self:invokeOperation(input, {
        name = "RollbackServiceSoftwareUpdate",
        input_schema = types.RollbackServiceSoftwareUpdateInput,
        output_schema = types.RollbackServiceSoftwareUpdateOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/serviceSoftwareUpdate/rollback",
    }, options)
end

function Client:startDomainMaintenance(input, options)
    return self:invokeOperation(input, {
        name = "StartDomainMaintenance",
        input_schema = types.StartDomainMaintenanceInput,
        output_schema = types.StartDomainMaintenanceOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/domainMaintenance",
    }, options)
end

function Client:startServiceSoftwareUpdate(input, options)
    return self:invokeOperation(input, {
        name = "StartServiceSoftwareUpdate",
        input_schema = types.StartServiceSoftwareUpdateInput,
        output_schema = types.StartServiceSoftwareUpdateOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/serviceSoftwareUpdate/start",
    }, options)
end

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = types.UpdateApplicationInput,
        output_schema = types.UpdateApplicationOutput,
        http_method = "PUT",
        http_path = "/2021-01-01/opensearch/application/{id}",
    }, options)
end

function Client:updateDataSource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataSource",
        input_schema = types.UpdateDataSourceInput,
        output_schema = types.UpdateDataSourceOutput,
        http_method = "PUT",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/dataSource/{Name}",
    }, options)
end

function Client:updateDirectQueryDataSource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDirectQueryDataSource",
        input_schema = types.UpdateDirectQueryDataSourceInput,
        output_schema = types.UpdateDirectQueryDataSourceOutput,
        http_method = "PUT",
        http_path = "/2021-01-01/opensearch/directQueryDataSource/{DataSourceName}",
    }, options)
end

function Client:updateDomainConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainConfig",
        input_schema = types.UpdateDomainConfigInput,
        output_schema = types.UpdateDomainConfigOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/config",
    }, options)
end

function Client:updateIndex(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIndex",
        input_schema = types.UpdateIndexInput,
        output_schema = types.UpdateIndexOutput,
        http_method = "PUT",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/index/{IndexName}",
    }, options)
end

function Client:updatePackage(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePackage",
        input_schema = types.UpdatePackageInput,
        output_schema = types.UpdatePackageOutput,
        http_method = "POST",
        http_path = "/2021-01-01/packages/update",
    }, options)
end

function Client:updatePackageScope(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePackageScope",
        input_schema = types.UpdatePackageScopeInput,
        output_schema = types.UpdatePackageScopeOutput,
        http_method = "POST",
        http_path = "/2021-01-01/packages/updateScope",
    }, options)
end

function Client:updateScheduledAction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateScheduledAction",
        input_schema = types.UpdateScheduledActionInput,
        output_schema = types.UpdateScheduledActionOutput,
        http_method = "PUT",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/scheduledAction/update",
    }, options)
end

function Client:updateVpcEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVpcEndpoint",
        input_schema = types.UpdateVpcEndpointInput,
        output_schema = types.UpdateVpcEndpointOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/vpcEndpoints/update",
    }, options)
end

function Client:upgradeDomain(input, options)
    return self:invokeOperation(input, {
        name = "UpgradeDomain",
        input_schema = types.UpgradeDomainInput,
        output_schema = types.UpgradeDomainOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/upgradeDomain",
    }, options)
end

return M
