local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("elasticsearchservice.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("elasticsearchservice.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonElasticsearchService2015"
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

function Client:acceptInboundCrossClusterSearchConnection(input, options)
    return self:invokeOperation(input, {
        name = "AcceptInboundCrossClusterSearchConnection",
        input_schema = types.AcceptInboundCrossClusterSearchConnectionInput,
        output_schema = types.AcceptInboundCrossClusterSearchConnectionOutput,
        http_method = "PUT",
        http_path = "/2015-01-01/es/ccs/inboundConnection/{CrossClusterSearchConnectionId}/accept",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addTags(input, options)
    return self:invokeOperation(input, {
        name = "AddTags",
        input_schema = types.AddTagsInput,
        output_schema = types.AddTagsOutput,
        http_method = "POST",
        http_path = "/2015-01-01/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associatePackage(input, options)
    return self:invokeOperation(input, {
        name = "AssociatePackage",
        input_schema = types.AssociatePackageInput,
        output_schema = types.AssociatePackageOutput,
        http_method = "POST",
        http_path = "/2015-01-01/packages/associate/{PackageID}/{DomainName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:authorizeVpcEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "AuthorizeVpcEndpointAccess",
        input_schema = types.AuthorizeVpcEndpointAccessInput,
        output_schema = types.AuthorizeVpcEndpointAccessOutput,
        http_method = "POST",
        http_path = "/2015-01-01/es/domain/{DomainName}/authorizeVpcEndpointAccess",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelDomainConfigChange(input, options)
    return self:invokeOperation(input, {
        name = "CancelDomainConfigChange",
        input_schema = types.CancelDomainConfigChangeInput,
        output_schema = types.CancelDomainConfigChangeOutput,
        http_method = "POST",
        http_path = "/2015-01-01/es/domain/{DomainName}/config/cancel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelElasticsearchServiceSoftwareUpdate(input, options)
    return self:invokeOperation(input, {
        name = "CancelElasticsearchServiceSoftwareUpdate",
        input_schema = types.CancelElasticsearchServiceSoftwareUpdateInput,
        output_schema = types.CancelElasticsearchServiceSoftwareUpdateOutput,
        http_method = "POST",
        http_path = "/2015-01-01/es/serviceSoftwareUpdate/cancel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createElasticsearchDomain(input, options)
    return self:invokeOperation(input, {
        name = "CreateElasticsearchDomain",
        input_schema = types.CreateElasticsearchDomainInput,
        output_schema = types.CreateElasticsearchDomainOutput,
        http_method = "POST",
        http_path = "/2015-01-01/es/domain",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOutboundCrossClusterSearchConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateOutboundCrossClusterSearchConnection",
        input_schema = types.CreateOutboundCrossClusterSearchConnectionInput,
        output_schema = types.CreateOutboundCrossClusterSearchConnectionOutput,
        http_method = "POST",
        http_path = "/2015-01-01/es/ccs/outboundConnection",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPackage(input, options)
    return self:invokeOperation(input, {
        name = "CreatePackage",
        input_schema = types.CreatePackageInput,
        output_schema = types.CreatePackageOutput,
        http_method = "POST",
        http_path = "/2015-01-01/packages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVpcEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcEndpoint",
        input_schema = types.CreateVpcEndpointInput,
        output_schema = types.CreateVpcEndpointOutput,
        http_method = "POST",
        http_path = "/2015-01-01/es/vpcEndpoints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteElasticsearchDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeleteElasticsearchDomain",
        input_schema = types.DeleteElasticsearchDomainInput,
        output_schema = types.DeleteElasticsearchDomainOutput,
        http_method = "DELETE",
        http_path = "/2015-01-01/es/domain/{DomainName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteElasticsearchServiceRole(input, options)
    return self:invokeOperation(input, {
        name = "DeleteElasticsearchServiceRole",
        input_schema = types.DeleteElasticsearchServiceRoleInput,
        output_schema = types.DeleteElasticsearchServiceRoleOutput,
        http_method = "DELETE",
        http_path = "/2015-01-01/es/role",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInboundCrossClusterSearchConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInboundCrossClusterSearchConnection",
        input_schema = types.DeleteInboundCrossClusterSearchConnectionInput,
        output_schema = types.DeleteInboundCrossClusterSearchConnectionOutput,
        http_method = "DELETE",
        http_path = "/2015-01-01/es/ccs/inboundConnection/{CrossClusterSearchConnectionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOutboundCrossClusterSearchConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOutboundCrossClusterSearchConnection",
        input_schema = types.DeleteOutboundCrossClusterSearchConnectionInput,
        output_schema = types.DeleteOutboundCrossClusterSearchConnectionOutput,
        http_method = "DELETE",
        http_path = "/2015-01-01/es/ccs/outboundConnection/{CrossClusterSearchConnectionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePackage(input, options)
    return self:invokeOperation(input, {
        name = "DeletePackage",
        input_schema = types.DeletePackageInput,
        output_schema = types.DeletePackageOutput,
        http_method = "DELETE",
        http_path = "/2015-01-01/packages/{PackageID}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVpcEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcEndpoint",
        input_schema = types.DeleteVpcEndpointInput,
        output_schema = types.DeleteVpcEndpointOutput,
        http_method = "DELETE",
        http_path = "/2015-01-01/es/vpcEndpoints/{VpcEndpointId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDomainAutoTunes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomainAutoTunes",
        input_schema = types.DescribeDomainAutoTunesInput,
        output_schema = types.DescribeDomainAutoTunesOutput,
        http_method = "GET",
        http_path = "/2015-01-01/es/domain/{DomainName}/autoTunes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDomainChangeProgress(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomainChangeProgress",
        input_schema = types.DescribeDomainChangeProgressInput,
        output_schema = types.DescribeDomainChangeProgressOutput,
        http_method = "GET",
        http_path = "/2015-01-01/es/domain/{DomainName}/progress",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeElasticsearchDomain(input, options)
    return self:invokeOperation(input, {
        name = "DescribeElasticsearchDomain",
        input_schema = types.DescribeElasticsearchDomainInput,
        output_schema = types.DescribeElasticsearchDomainOutput,
        http_method = "GET",
        http_path = "/2015-01-01/es/domain/{DomainName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeElasticsearchDomainConfig(input, options)
    return self:invokeOperation(input, {
        name = "DescribeElasticsearchDomainConfig",
        input_schema = types.DescribeElasticsearchDomainConfigInput,
        output_schema = types.DescribeElasticsearchDomainConfigOutput,
        http_method = "GET",
        http_path = "/2015-01-01/es/domain/{DomainName}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeElasticsearchDomains(input, options)
    return self:invokeOperation(input, {
        name = "DescribeElasticsearchDomains",
        input_schema = types.DescribeElasticsearchDomainsInput,
        output_schema = types.DescribeElasticsearchDomainsOutput,
        http_method = "POST",
        http_path = "/2015-01-01/es/domain-info",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeElasticsearchInstanceTypeLimits(input, options)
    return self:invokeOperation(input, {
        name = "DescribeElasticsearchInstanceTypeLimits",
        input_schema = types.DescribeElasticsearchInstanceTypeLimitsInput,
        output_schema = types.DescribeElasticsearchInstanceTypeLimitsOutput,
        http_method = "GET",
        http_path = "/2015-01-01/es/instanceTypeLimits/{ElasticsearchVersion}/{InstanceType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInboundCrossClusterSearchConnections(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInboundCrossClusterSearchConnections",
        input_schema = types.DescribeInboundCrossClusterSearchConnectionsInput,
        output_schema = types.DescribeInboundCrossClusterSearchConnectionsOutput,
        http_method = "POST",
        http_path = "/2015-01-01/es/ccs/inboundConnection/search",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOutboundCrossClusterSearchConnections(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOutboundCrossClusterSearchConnections",
        input_schema = types.DescribeOutboundCrossClusterSearchConnectionsInput,
        output_schema = types.DescribeOutboundCrossClusterSearchConnectionsOutput,
        http_method = "POST",
        http_path = "/2015-01-01/es/ccs/outboundConnection/search",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePackages(input, options)
    return self:invokeOperation(input, {
        name = "DescribePackages",
        input_schema = types.DescribePackagesInput,
        output_schema = types.DescribePackagesOutput,
        http_method = "POST",
        http_path = "/2015-01-01/packages/describe",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReservedElasticsearchInstanceOfferings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservedElasticsearchInstanceOfferings",
        input_schema = types.DescribeReservedElasticsearchInstanceOfferingsInput,
        output_schema = types.DescribeReservedElasticsearchInstanceOfferingsOutput,
        http_method = "GET",
        http_path = "/2015-01-01/es/reservedInstanceOfferings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReservedElasticsearchInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservedElasticsearchInstances",
        input_schema = types.DescribeReservedElasticsearchInstancesInput,
        output_schema = types.DescribeReservedElasticsearchInstancesOutput,
        http_method = "GET",
        http_path = "/2015-01-01/es/reservedInstances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpcEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcEndpoints",
        input_schema = types.DescribeVpcEndpointsInput,
        output_schema = types.DescribeVpcEndpointsOutput,
        http_method = "POST",
        http_path = "/2015-01-01/es/vpcEndpoints/describe",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:dissociatePackage(input, options)
    return self:invokeOperation(input, {
        name = "DissociatePackage",
        input_schema = types.DissociatePackageInput,
        output_schema = types.DissociatePackageOutput,
        http_method = "POST",
        http_path = "/2015-01-01/packages/dissociate/{PackageID}/{DomainName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCompatibleElasticsearchVersions(input, options)
    return self:invokeOperation(input, {
        name = "GetCompatibleElasticsearchVersions",
        input_schema = types.GetCompatibleElasticsearchVersionsInput,
        output_schema = types.GetCompatibleElasticsearchVersionsOutput,
        http_method = "GET",
        http_path = "/2015-01-01/es/compatibleVersions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPackageVersionHistory(input, options)
    return self:invokeOperation(input, {
        name = "GetPackageVersionHistory",
        input_schema = types.GetPackageVersionHistoryInput,
        output_schema = types.GetPackageVersionHistoryOutput,
        http_method = "GET",
        http_path = "/2015-01-01/packages/{PackageID}/history",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUpgradeHistory(input, options)
    return self:invokeOperation(input, {
        name = "GetUpgradeHistory",
        input_schema = types.GetUpgradeHistoryInput,
        output_schema = types.GetUpgradeHistoryOutput,
        http_method = "GET",
        http_path = "/2015-01-01/es/upgradeDomain/{DomainName}/history",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUpgradeStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetUpgradeStatus",
        input_schema = types.GetUpgradeStatusInput,
        output_schema = types.GetUpgradeStatusOutput,
        http_method = "GET",
        http_path = "/2015-01-01/es/upgradeDomain/{DomainName}/status",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDomainNames(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainNames",
        input_schema = types.ListDomainNamesInput,
        output_schema = types.ListDomainNamesOutput,
        http_method = "GET",
        http_path = "/2015-01-01/domain",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDomainsForPackage(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainsForPackage",
        input_schema = types.ListDomainsForPackageInput,
        output_schema = types.ListDomainsForPackageOutput,
        http_method = "GET",
        http_path = "/2015-01-01/packages/{PackageID}/domains",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listElasticsearchInstanceTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListElasticsearchInstanceTypes",
        input_schema = types.ListElasticsearchInstanceTypesInput,
        output_schema = types.ListElasticsearchInstanceTypesOutput,
        http_method = "GET",
        http_path = "/2015-01-01/es/instanceTypes/{ElasticsearchVersion}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listElasticsearchVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListElasticsearchVersions",
        input_schema = types.ListElasticsearchVersionsInput,
        output_schema = types.ListElasticsearchVersionsOutput,
        http_method = "GET",
        http_path = "/2015-01-01/es/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPackagesForDomain(input, options)
    return self:invokeOperation(input, {
        name = "ListPackagesForDomain",
        input_schema = types.ListPackagesForDomainInput,
        output_schema = types.ListPackagesForDomainOutput,
        http_method = "GET",
        http_path = "/2015-01-01/domain/{DomainName}/packages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTags(input, options)
    return self:invokeOperation(input, {
        name = "ListTags",
        input_schema = types.ListTagsInput,
        output_schema = types.ListTagsOutput,
        http_method = "GET",
        http_path = "/2015-01-01/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVpcEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "ListVpcEndpointAccess",
        input_schema = types.ListVpcEndpointAccessInput,
        output_schema = types.ListVpcEndpointAccessOutput,
        http_method = "GET",
        http_path = "/2015-01-01/es/domain/{DomainName}/listVpcEndpointAccess",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVpcEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListVpcEndpoints",
        input_schema = types.ListVpcEndpointsInput,
        output_schema = types.ListVpcEndpointsOutput,
        http_method = "GET",
        http_path = "/2015-01-01/es/vpcEndpoints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVpcEndpointsForDomain(input, options)
    return self:invokeOperation(input, {
        name = "ListVpcEndpointsForDomain",
        input_schema = types.ListVpcEndpointsForDomainInput,
        output_schema = types.ListVpcEndpointsForDomainOutput,
        http_method = "GET",
        http_path = "/2015-01-01/es/domain/{DomainName}/vpcEndpoints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:purchaseReservedElasticsearchInstanceOffering(input, options)
    return self:invokeOperation(input, {
        name = "PurchaseReservedElasticsearchInstanceOffering",
        input_schema = types.PurchaseReservedElasticsearchInstanceOfferingInput,
        output_schema = types.PurchaseReservedElasticsearchInstanceOfferingOutput,
        http_method = "POST",
        http_path = "/2015-01-01/es/purchaseReservedInstanceOffering",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectInboundCrossClusterSearchConnection(input, options)
    return self:invokeOperation(input, {
        name = "RejectInboundCrossClusterSearchConnection",
        input_schema = types.RejectInboundCrossClusterSearchConnectionInput,
        output_schema = types.RejectInboundCrossClusterSearchConnectionOutput,
        http_method = "PUT",
        http_path = "/2015-01-01/es/ccs/inboundConnection/{CrossClusterSearchConnectionId}/reject",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeTags(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTags",
        input_schema = types.RemoveTagsInput,
        output_schema = types.RemoveTagsOutput,
        http_method = "POST",
        http_path = "/2015-01-01/tags-removal",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:revokeVpcEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "RevokeVpcEndpointAccess",
        input_schema = types.RevokeVpcEndpointAccessInput,
        output_schema = types.RevokeVpcEndpointAccessOutput,
        http_method = "POST",
        http_path = "/2015-01-01/es/domain/{DomainName}/revokeVpcEndpointAccess",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startElasticsearchServiceSoftwareUpdate(input, options)
    return self:invokeOperation(input, {
        name = "StartElasticsearchServiceSoftwareUpdate",
        input_schema = types.StartElasticsearchServiceSoftwareUpdateInput,
        output_schema = types.StartElasticsearchServiceSoftwareUpdateOutput,
        http_method = "POST",
        http_path = "/2015-01-01/es/serviceSoftwareUpdate/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateElasticsearchDomainConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateElasticsearchDomainConfig",
        input_schema = types.UpdateElasticsearchDomainConfigInput,
        output_schema = types.UpdateElasticsearchDomainConfigOutput,
        http_method = "POST",
        http_path = "/2015-01-01/es/domain/{DomainName}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePackage(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePackage",
        input_schema = types.UpdatePackageInput,
        output_schema = types.UpdatePackageOutput,
        http_method = "POST",
        http_path = "/2015-01-01/packages/update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateVpcEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVpcEndpoint",
        input_schema = types.UpdateVpcEndpointInput,
        output_schema = types.UpdateVpcEndpointOutput,
        http_method = "POST",
        http_path = "/2015-01-01/es/vpcEndpoints/update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:upgradeElasticsearchDomain(input, options)
    return self:invokeOperation(input, {
        name = "UpgradeElasticsearchDomain",
        input_schema = types.UpgradeElasticsearchDomainInput,
        output_schema = types.UpgradeElasticsearchDomainOutput,
        http_method = "POST",
        http_path = "/2015-01-01/es/upgradeDomain",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
