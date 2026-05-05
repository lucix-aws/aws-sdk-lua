local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("opensearch.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("opensearch.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonOpenSearchService"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "es", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:acceptInboundConnection(input, options)
    return self:invokeOperation(input, {
        name = "AcceptInboundConnection",
        input_schema = schemas.AcceptInboundConnectionInput,
        output_schema = schemas.AcceptInboundConnectionOutput,
        http_method = "PUT",
        http_path = "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}/accept",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addDataSource(input, options)
    return self:invokeOperation(input, {
        name = "AddDataSource",
        input_schema = schemas.AddDataSourceInput,
        output_schema = schemas.AddDataSourceOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/dataSource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addDirectQueryDataSource(input, options)
    return self:invokeOperation(input, {
        name = "AddDirectQueryDataSource",
        input_schema = schemas.AddDirectQueryDataSourceInput,
        output_schema = schemas.AddDirectQueryDataSourceOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/directQueryDataSource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addTags(input, options)
    return self:invokeOperation(input, {
        name = "AddTags",
        input_schema = schemas.AddTagsInput,
        output_schema = schemas.AddTagsOutput,
        http_method = "POST",
        http_path = "/2021-01-01/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associatePackage(input, options)
    return self:invokeOperation(input, {
        name = "AssociatePackage",
        input_schema = schemas.AssociatePackageInput,
        output_schema = schemas.AssociatePackageOutput,
        http_method = "POST",
        http_path = "/2021-01-01/packages/associate/{PackageID}/{DomainName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associatePackages(input, options)
    return self:invokeOperation(input, {
        name = "AssociatePackages",
        input_schema = schemas.AssociatePackagesInput,
        output_schema = schemas.AssociatePackagesOutput,
        http_method = "POST",
        http_path = "/2021-01-01/packages/associateMultiple",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:authorizeVpcEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "AuthorizeVpcEndpointAccess",
        input_schema = schemas.AuthorizeVpcEndpointAccessInput,
        output_schema = schemas.AuthorizeVpcEndpointAccessOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/authorizeVpcEndpointAccess",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelDomainConfigChange(input, options)
    return self:invokeOperation(input, {
        name = "CancelDomainConfigChange",
        input_schema = schemas.CancelDomainConfigChangeInput,
        output_schema = schemas.CancelDomainConfigChangeOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/config/cancel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelServiceSoftwareUpdate(input, options)
    return self:invokeOperation(input, {
        name = "CancelServiceSoftwareUpdate",
        input_schema = schemas.CancelServiceSoftwareUpdateInput,
        output_schema = schemas.CancelServiceSoftwareUpdateOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/serviceSoftwareUpdate/cancel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplication",
        input_schema = schemas.CreateApplicationInput,
        output_schema = schemas.CreateApplicationOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/application",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDomain(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomain",
        input_schema = schemas.CreateDomainInput,
        output_schema = schemas.CreateDomainOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/domain",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIndex(input, options)
    return self:invokeOperation(input, {
        name = "CreateIndex",
        input_schema = schemas.CreateIndexInput,
        output_schema = schemas.CreateIndexOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/index",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOutboundConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateOutboundConnection",
        input_schema = schemas.CreateOutboundConnectionInput,
        output_schema = schemas.CreateOutboundConnectionOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/cc/outboundConnection",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPackage(input, options)
    return self:invokeOperation(input, {
        name = "CreatePackage",
        input_schema = schemas.CreatePackageInput,
        output_schema = schemas.CreatePackageOutput,
        http_method = "POST",
        http_path = "/2021-01-01/packages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVpcEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcEndpoint",
        input_schema = schemas.CreateVpcEndpointInput,
        output_schema = schemas.CreateVpcEndpointOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/vpcEndpoints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplication",
        input_schema = schemas.DeleteApplicationInput,
        output_schema = schemas.DeleteApplicationOutput,
        http_method = "DELETE",
        http_path = "/2021-01-01/opensearch/application/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataSource",
        input_schema = schemas.DeleteDataSourceInput,
        output_schema = schemas.DeleteDataSourceOutput,
        http_method = "DELETE",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/dataSource/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDirectQueryDataSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDirectQueryDataSource",
        input_schema = schemas.DeleteDirectQueryDataSourceInput,
        output_schema = schemas.DeleteDirectQueryDataSourceOutput,
        http_method = "DELETE",
        http_path = "/2021-01-01/opensearch/directQueryDataSource/{DataSourceName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomain",
        input_schema = schemas.DeleteDomainInput,
        output_schema = schemas.DeleteDomainOutput,
        http_method = "DELETE",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInboundConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInboundConnection",
        input_schema = schemas.DeleteInboundConnectionInput,
        output_schema = schemas.DeleteInboundConnectionOutput,
        http_method = "DELETE",
        http_path = "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIndex(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIndex",
        input_schema = schemas.DeleteIndexInput,
        output_schema = schemas.DeleteIndexOutput,
        http_method = "DELETE",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/index/{IndexName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOutboundConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOutboundConnection",
        input_schema = schemas.DeleteOutboundConnectionInput,
        output_schema = schemas.DeleteOutboundConnectionOutput,
        http_method = "DELETE",
        http_path = "/2021-01-01/opensearch/cc/outboundConnection/{ConnectionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePackage(input, options)
    return self:invokeOperation(input, {
        name = "DeletePackage",
        input_schema = schemas.DeletePackageInput,
        output_schema = schemas.DeletePackageOutput,
        http_method = "DELETE",
        http_path = "/2021-01-01/packages/{PackageID}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVpcEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcEndpoint",
        input_schema = schemas.DeleteVpcEndpointInput,
        output_schema = schemas.DeleteVpcEndpointOutput,
        http_method = "DELETE",
        http_path = "/2021-01-01/opensearch/vpcEndpoints/{VpcEndpointId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterCapability(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterCapability",
        input_schema = schemas.DeregisterCapabilityInput,
        output_schema = schemas.DeregisterCapabilityOutput,
        http_method = "DELETE",
        http_path = "/2021-01-01/opensearch/application/{applicationId}/capability/deregister/{capabilityName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDomain(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomain",
        input_schema = schemas.DescribeDomainInput,
        output_schema = schemas.DescribeDomainOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDomainAutoTunes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomainAutoTunes",
        input_schema = schemas.DescribeDomainAutoTunesInput,
        output_schema = schemas.DescribeDomainAutoTunesOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/autoTunes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDomainChangeProgress(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomainChangeProgress",
        input_schema = schemas.DescribeDomainChangeProgressInput,
        output_schema = schemas.DescribeDomainChangeProgressOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/progress",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDomainConfig(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomainConfig",
        input_schema = schemas.DescribeDomainConfigInput,
        output_schema = schemas.DescribeDomainConfigOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDomainHealth(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomainHealth",
        input_schema = schemas.DescribeDomainHealthInput,
        output_schema = schemas.DescribeDomainHealthOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/health",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDomainNodes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomainNodes",
        input_schema = schemas.DescribeDomainNodesInput,
        output_schema = schemas.DescribeDomainNodesOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/nodes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDomains(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomains",
        input_schema = schemas.DescribeDomainsInput,
        output_schema = schemas.DescribeDomainsOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/domain-info",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDryRunProgress(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDryRunProgress",
        input_schema = schemas.DescribeDryRunProgressInput,
        output_schema = schemas.DescribeDryRunProgressOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/dryRun",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInboundConnections(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInboundConnections",
        input_schema = schemas.DescribeInboundConnectionsInput,
        output_schema = schemas.DescribeInboundConnectionsOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/cc/inboundConnection/search",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInsightDetails(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInsightDetails",
        input_schema = schemas.DescribeInsightDetailsInput,
        output_schema = schemas.DescribeInsightDetailsOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/insight-details",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstanceTypeLimits(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceTypeLimits",
        input_schema = schemas.DescribeInstanceTypeLimitsInput,
        output_schema = schemas.DescribeInstanceTypeLimitsOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/instanceTypeLimits/{EngineVersion}/{InstanceType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOutboundConnections(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOutboundConnections",
        input_schema = schemas.DescribeOutboundConnectionsInput,
        output_schema = schemas.DescribeOutboundConnectionsOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/cc/outboundConnection/search",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePackages(input, options)
    return self:invokeOperation(input, {
        name = "DescribePackages",
        input_schema = schemas.DescribePackagesInput,
        output_schema = schemas.DescribePackagesOutput,
        http_method = "POST",
        http_path = "/2021-01-01/packages/describe",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReservedInstanceOfferings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservedInstanceOfferings",
        input_schema = schemas.DescribeReservedInstanceOfferingsInput,
        output_schema = schemas.DescribeReservedInstanceOfferingsOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/reservedInstanceOfferings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReservedInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservedInstances",
        input_schema = schemas.DescribeReservedInstancesInput,
        output_schema = schemas.DescribeReservedInstancesOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/reservedInstances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpcEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcEndpoints",
        input_schema = schemas.DescribeVpcEndpointsInput,
        output_schema = schemas.DescribeVpcEndpointsOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/vpcEndpoints/describe",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:dissociatePackage(input, options)
    return self:invokeOperation(input, {
        name = "DissociatePackage",
        input_schema = schemas.DissociatePackageInput,
        output_schema = schemas.DissociatePackageOutput,
        http_method = "POST",
        http_path = "/2021-01-01/packages/dissociate/{PackageID}/{DomainName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:dissociatePackages(input, options)
    return self:invokeOperation(input, {
        name = "DissociatePackages",
        input_schema = schemas.DissociatePackagesInput,
        output_schema = schemas.DissociatePackagesOutput,
        http_method = "POST",
        http_path = "/2021-01-01/packages/dissociateMultiple",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApplication(input, options)
    return self:invokeOperation(input, {
        name = "GetApplication",
        input_schema = schemas.GetApplicationInput,
        output_schema = schemas.GetApplicationOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/application/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCapability(input, options)
    return self:invokeOperation(input, {
        name = "GetCapability",
        input_schema = schemas.GetCapabilityInput,
        output_schema = schemas.GetCapabilityOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/application/{applicationId}/capability/{capabilityName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCompatibleVersions(input, options)
    return self:invokeOperation(input, {
        name = "GetCompatibleVersions",
        input_schema = schemas.GetCompatibleVersionsInput,
        output_schema = schemas.GetCompatibleVersionsOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/compatibleVersions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataSource(input, options)
    return self:invokeOperation(input, {
        name = "GetDataSource",
        input_schema = schemas.GetDataSourceInput,
        output_schema = schemas.GetDataSourceOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/dataSource/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDefaultApplicationSetting(input, options)
    return self:invokeOperation(input, {
        name = "GetDefaultApplicationSetting",
        input_schema = schemas.GetDefaultApplicationSettingInput,
        output_schema = schemas.GetDefaultApplicationSettingOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/defaultApplicationSetting",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDirectQueryDataSource(input, options)
    return self:invokeOperation(input, {
        name = "GetDirectQueryDataSource",
        input_schema = schemas.GetDirectQueryDataSourceInput,
        output_schema = schemas.GetDirectQueryDataSourceOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/directQueryDataSource/{DataSourceName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDomainMaintenanceStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainMaintenanceStatus",
        input_schema = schemas.GetDomainMaintenanceStatusInput,
        output_schema = schemas.GetDomainMaintenanceStatusOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/domainMaintenance",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIndex(input, options)
    return self:invokeOperation(input, {
        name = "GetIndex",
        input_schema = schemas.GetIndexInput,
        output_schema = schemas.GetIndexOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/index/{IndexName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPackageVersionHistory(input, options)
    return self:invokeOperation(input, {
        name = "GetPackageVersionHistory",
        input_schema = schemas.GetPackageVersionHistoryInput,
        output_schema = schemas.GetPackageVersionHistoryOutput,
        http_method = "GET",
        http_path = "/2021-01-01/packages/{PackageID}/history",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUpgradeHistory(input, options)
    return self:invokeOperation(input, {
        name = "GetUpgradeHistory",
        input_schema = schemas.GetUpgradeHistoryInput,
        output_schema = schemas.GetUpgradeHistoryOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/upgradeDomain/{DomainName}/history",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUpgradeStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetUpgradeStatus",
        input_schema = schemas.GetUpgradeStatusInput,
        output_schema = schemas.GetUpgradeStatusOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/upgradeDomain/{DomainName}/status",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListApplications",
        input_schema = schemas.ListApplicationsInput,
        output_schema = schemas.ListApplicationsOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/list-applications",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataSources(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSources",
        input_schema = schemas.ListDataSourcesInput,
        output_schema = schemas.ListDataSourcesOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/dataSource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDirectQueryDataSources(input, options)
    return self:invokeOperation(input, {
        name = "ListDirectQueryDataSources",
        input_schema = schemas.ListDirectQueryDataSourcesInput,
        output_schema = schemas.ListDirectQueryDataSourcesOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/directQueryDataSource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDomainMaintenances(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainMaintenances",
        input_schema = schemas.ListDomainMaintenancesInput,
        output_schema = schemas.ListDomainMaintenancesOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/domainMaintenances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDomainNames(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainNames",
        input_schema = schemas.ListDomainNamesInput,
        output_schema = schemas.ListDomainNamesOutput,
        http_method = "GET",
        http_path = "/2021-01-01/domain",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDomainsForPackage(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainsForPackage",
        input_schema = schemas.ListDomainsForPackageInput,
        output_schema = schemas.ListDomainsForPackageOutput,
        http_method = "GET",
        http_path = "/2021-01-01/packages/{PackageID}/domains",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInsights(input, options)
    return self:invokeOperation(input, {
        name = "ListInsights",
        input_schema = schemas.ListInsightsInput,
        output_schema = schemas.ListInsightsOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/insights",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInstanceTypeDetails(input, options)
    return self:invokeOperation(input, {
        name = "ListInstanceTypeDetails",
        input_schema = schemas.ListInstanceTypeDetailsInput,
        output_schema = schemas.ListInstanceTypeDetailsOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/instanceTypeDetails/{EngineVersion}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPackagesForDomain(input, options)
    return self:invokeOperation(input, {
        name = "ListPackagesForDomain",
        input_schema = schemas.ListPackagesForDomainInput,
        output_schema = schemas.ListPackagesForDomainOutput,
        http_method = "GET",
        http_path = "/2021-01-01/domain/{DomainName}/packages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listScheduledActions(input, options)
    return self:invokeOperation(input, {
        name = "ListScheduledActions",
        input_schema = schemas.ListScheduledActionsInput,
        output_schema = schemas.ListScheduledActionsOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/scheduledActions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTags(input, options)
    return self:invokeOperation(input, {
        name = "ListTags",
        input_schema = schemas.ListTagsInput,
        output_schema = schemas.ListTagsOutput,
        http_method = "GET",
        http_path = "/2021-01-01/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListVersions",
        input_schema = schemas.ListVersionsInput,
        output_schema = schemas.ListVersionsOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVpcEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "ListVpcEndpointAccess",
        input_schema = schemas.ListVpcEndpointAccessInput,
        output_schema = schemas.ListVpcEndpointAccessOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/listVpcEndpointAccess",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVpcEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListVpcEndpoints",
        input_schema = schemas.ListVpcEndpointsInput,
        output_schema = schemas.ListVpcEndpointsOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/vpcEndpoints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVpcEndpointsForDomain(input, options)
    return self:invokeOperation(input, {
        name = "ListVpcEndpointsForDomain",
        input_schema = schemas.ListVpcEndpointsForDomainInput,
        output_schema = schemas.ListVpcEndpointsForDomainOutput,
        http_method = "GET",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/vpcEndpoints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:purchaseReservedInstanceOffering(input, options)
    return self:invokeOperation(input, {
        name = "PurchaseReservedInstanceOffering",
        input_schema = schemas.PurchaseReservedInstanceOfferingInput,
        output_schema = schemas.PurchaseReservedInstanceOfferingOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/purchaseReservedInstanceOffering",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putDefaultApplicationSetting(input, options)
    return self:invokeOperation(input, {
        name = "PutDefaultApplicationSetting",
        input_schema = schemas.PutDefaultApplicationSettingInput,
        output_schema = schemas.PutDefaultApplicationSettingOutput,
        http_method = "PUT",
        http_path = "/2021-01-01/opensearch/defaultApplicationSetting",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerCapability(input, options)
    return self:invokeOperation(input, {
        name = "RegisterCapability",
        input_schema = schemas.RegisterCapabilityInput,
        output_schema = schemas.RegisterCapabilityOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/application/{applicationId}/capability/register",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectInboundConnection(input, options)
    return self:invokeOperation(input, {
        name = "RejectInboundConnection",
        input_schema = schemas.RejectInboundConnectionInput,
        output_schema = schemas.RejectInboundConnectionOutput,
        http_method = "PUT",
        http_path = "/2021-01-01/opensearch/cc/inboundConnection/{ConnectionId}/reject",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeTags(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTags",
        input_schema = schemas.RemoveTagsInput,
        output_schema = schemas.RemoveTagsOutput,
        http_method = "POST",
        http_path = "/2021-01-01/tags-removal",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:revokeVpcEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "RevokeVpcEndpointAccess",
        input_schema = schemas.RevokeVpcEndpointAccessInput,
        output_schema = schemas.RevokeVpcEndpointAccessOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/revokeVpcEndpointAccess",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rollbackServiceSoftwareUpdate(input, options)
    return self:invokeOperation(input, {
        name = "RollbackServiceSoftwareUpdate",
        input_schema = schemas.RollbackServiceSoftwareUpdateInput,
        output_schema = schemas.RollbackServiceSoftwareUpdateOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/serviceSoftwareUpdate/rollback",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDomainMaintenance(input, options)
    return self:invokeOperation(input, {
        name = "StartDomainMaintenance",
        input_schema = schemas.StartDomainMaintenanceInput,
        output_schema = schemas.StartDomainMaintenanceOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/domainMaintenance",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startServiceSoftwareUpdate(input, options)
    return self:invokeOperation(input, {
        name = "StartServiceSoftwareUpdate",
        input_schema = schemas.StartServiceSoftwareUpdateInput,
        output_schema = schemas.StartServiceSoftwareUpdateOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/serviceSoftwareUpdate/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = schemas.UpdateApplicationInput,
        output_schema = schemas.UpdateApplicationOutput,
        http_method = "PUT",
        http_path = "/2021-01-01/opensearch/application/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataSource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataSource",
        input_schema = schemas.UpdateDataSourceInput,
        output_schema = schemas.UpdateDataSourceOutput,
        http_method = "PUT",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/dataSource/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDirectQueryDataSource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDirectQueryDataSource",
        input_schema = schemas.UpdateDirectQueryDataSourceInput,
        output_schema = schemas.UpdateDirectQueryDataSourceOutput,
        http_method = "PUT",
        http_path = "/2021-01-01/opensearch/directQueryDataSource/{DataSourceName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDomainConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainConfig",
        input_schema = schemas.UpdateDomainConfigInput,
        output_schema = schemas.UpdateDomainConfigOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIndex(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIndex",
        input_schema = schemas.UpdateIndexInput,
        output_schema = schemas.UpdateIndexOutput,
        http_method = "PUT",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/index/{IndexName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePackage(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePackage",
        input_schema = schemas.UpdatePackageInput,
        output_schema = schemas.UpdatePackageOutput,
        http_method = "POST",
        http_path = "/2021-01-01/packages/update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePackageScope(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePackageScope",
        input_schema = schemas.UpdatePackageScopeInput,
        output_schema = schemas.UpdatePackageScopeOutput,
        http_method = "POST",
        http_path = "/2021-01-01/packages/updateScope",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateScheduledAction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateScheduledAction",
        input_schema = schemas.UpdateScheduledActionInput,
        output_schema = schemas.UpdateScheduledActionOutput,
        http_method = "PUT",
        http_path = "/2021-01-01/opensearch/domain/{DomainName}/scheduledAction/update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateVpcEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVpcEndpoint",
        input_schema = schemas.UpdateVpcEndpointInput,
        output_schema = schemas.UpdateVpcEndpointOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/vpcEndpoints/update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:upgradeDomain(input, options)
    return self:invokeOperation(input, {
        name = "UpgradeDomain",
        input_schema = schemas.UpgradeDomainInput,
        output_schema = schemas.UpgradeDomainOutput,
        http_method = "POST",
        http_path = "/2021-01-01/opensearch/upgradeDomain",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
