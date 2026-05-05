local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("networkmanager.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("networkmanager.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "NetworkManager"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "networkmanager", signing_region = cfg.region } }
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

function Client:acceptAttachment(input, options)
    return self:invokeOperation(input, {
        name = "AcceptAttachment",
        input_schema = schemas.AcceptAttachmentInput,
        output_schema = schemas.AcceptAttachmentOutput,
        http_method = "POST",
        http_path = "/attachments/{AttachmentId}/accept",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateConnectPeer(input, options)
    return self:invokeOperation(input, {
        name = "AssociateConnectPeer",
        input_schema = schemas.AssociateConnectPeerInput,
        output_schema = schemas.AssociateConnectPeerOutput,
        http_method = "POST",
        http_path = "/global-networks/{GlobalNetworkId}/connect-peer-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateCustomerGateway(input, options)
    return self:invokeOperation(input, {
        name = "AssociateCustomerGateway",
        input_schema = schemas.AssociateCustomerGatewayInput,
        output_schema = schemas.AssociateCustomerGatewayOutput,
        http_method = "POST",
        http_path = "/global-networks/{GlobalNetworkId}/customer-gateway-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateLink(input, options)
    return self:invokeOperation(input, {
        name = "AssociateLink",
        input_schema = schemas.AssociateLinkInput,
        output_schema = schemas.AssociateLinkOutput,
        http_method = "POST",
        http_path = "/global-networks/{GlobalNetworkId}/link-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateTransitGatewayConnectPeer(input, options)
    return self:invokeOperation(input, {
        name = "AssociateTransitGatewayConnectPeer",
        input_schema = schemas.AssociateTransitGatewayConnectPeerInput,
        output_schema = schemas.AssociateTransitGatewayConnectPeerOutput,
        http_method = "POST",
        http_path = "/global-networks/{GlobalNetworkId}/transit-gateway-connect-peer-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConnectAttachment(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnectAttachment",
        input_schema = schemas.CreateConnectAttachmentInput,
        output_schema = schemas.CreateConnectAttachmentOutput,
        http_method = "POST",
        http_path = "/connect-attachments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnection",
        input_schema = schemas.CreateConnectionInput,
        output_schema = schemas.CreateConnectionOutput,
        http_method = "POST",
        http_path = "/global-networks/{GlobalNetworkId}/connections",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConnectPeer(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnectPeer",
        input_schema = schemas.CreateConnectPeerInput,
        output_schema = schemas.CreateConnectPeerOutput,
        http_method = "POST",
        http_path = "/connect-peers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCoreNetwork(input, options)
    return self:invokeOperation(input, {
        name = "CreateCoreNetwork",
        input_schema = schemas.CreateCoreNetworkInput,
        output_schema = schemas.CreateCoreNetworkOutput,
        http_method = "POST",
        http_path = "/core-networks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCoreNetworkPrefixListAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateCoreNetworkPrefixListAssociation",
        input_schema = schemas.CreateCoreNetworkPrefixListAssociationInput,
        output_schema = schemas.CreateCoreNetworkPrefixListAssociationOutput,
        http_method = "POST",
        http_path = "/prefix-list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDevice(input, options)
    return self:invokeOperation(input, {
        name = "CreateDevice",
        input_schema = schemas.CreateDeviceInput,
        output_schema = schemas.CreateDeviceOutput,
        http_method = "POST",
        http_path = "/global-networks/{GlobalNetworkId}/devices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDirectConnectGatewayAttachment(input, options)
    return self:invokeOperation(input, {
        name = "CreateDirectConnectGatewayAttachment",
        input_schema = schemas.CreateDirectConnectGatewayAttachmentInput,
        output_schema = schemas.CreateDirectConnectGatewayAttachmentOutput,
        http_method = "POST",
        http_path = "/direct-connect-gateway-attachments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGlobalNetwork(input, options)
    return self:invokeOperation(input, {
        name = "CreateGlobalNetwork",
        input_schema = schemas.CreateGlobalNetworkInput,
        output_schema = schemas.CreateGlobalNetworkOutput,
        http_method = "POST",
        http_path = "/global-networks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLink(input, options)
    return self:invokeOperation(input, {
        name = "CreateLink",
        input_schema = schemas.CreateLinkInput,
        output_schema = schemas.CreateLinkOutput,
        http_method = "POST",
        http_path = "/global-networks/{GlobalNetworkId}/links",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSite(input, options)
    return self:invokeOperation(input, {
        name = "CreateSite",
        input_schema = schemas.CreateSiteInput,
        output_schema = schemas.CreateSiteOutput,
        http_method = "POST",
        http_path = "/global-networks/{GlobalNetworkId}/sites",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSiteToSiteVpnAttachment(input, options)
    return self:invokeOperation(input, {
        name = "CreateSiteToSiteVpnAttachment",
        input_schema = schemas.CreateSiteToSiteVpnAttachmentInput,
        output_schema = schemas.CreateSiteToSiteVpnAttachmentOutput,
        http_method = "POST",
        http_path = "/site-to-site-vpn-attachments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTransitGatewayPeering(input, options)
    return self:invokeOperation(input, {
        name = "CreateTransitGatewayPeering",
        input_schema = schemas.CreateTransitGatewayPeeringInput,
        output_schema = schemas.CreateTransitGatewayPeeringOutput,
        http_method = "POST",
        http_path = "/transit-gateway-peerings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTransitGatewayRouteTableAttachment(input, options)
    return self:invokeOperation(input, {
        name = "CreateTransitGatewayRouteTableAttachment",
        input_schema = schemas.CreateTransitGatewayRouteTableAttachmentInput,
        output_schema = schemas.CreateTransitGatewayRouteTableAttachmentOutput,
        http_method = "POST",
        http_path = "/transit-gateway-route-table-attachments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVpcAttachment(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcAttachment",
        input_schema = schemas.CreateVpcAttachmentInput,
        output_schema = schemas.CreateVpcAttachmentOutput,
        http_method = "POST",
        http_path = "/vpc-attachments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAttachment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAttachment",
        input_schema = schemas.DeleteAttachmentInput,
        output_schema = schemas.DeleteAttachmentOutput,
        http_method = "DELETE",
        http_path = "/attachments/{AttachmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnection",
        input_schema = schemas.DeleteConnectionInput,
        output_schema = schemas.DeleteConnectionOutput,
        http_method = "DELETE",
        http_path = "/global-networks/{GlobalNetworkId}/connections/{ConnectionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConnectPeer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnectPeer",
        input_schema = schemas.DeleteConnectPeerInput,
        output_schema = schemas.DeleteConnectPeerOutput,
        http_method = "DELETE",
        http_path = "/connect-peers/{ConnectPeerId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCoreNetwork(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCoreNetwork",
        input_schema = schemas.DeleteCoreNetworkInput,
        output_schema = schemas.DeleteCoreNetworkOutput,
        http_method = "DELETE",
        http_path = "/core-networks/{CoreNetworkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCoreNetworkPolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCoreNetworkPolicyVersion",
        input_schema = schemas.DeleteCoreNetworkPolicyVersionInput,
        output_schema = schemas.DeleteCoreNetworkPolicyVersionOutput,
        http_method = "DELETE",
        http_path = "/core-networks/{CoreNetworkId}/core-network-policy-versions/{PolicyVersionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCoreNetworkPrefixListAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCoreNetworkPrefixListAssociation",
        input_schema = schemas.DeleteCoreNetworkPrefixListAssociationInput,
        output_schema = schemas.DeleteCoreNetworkPrefixListAssociationOutput,
        http_method = "DELETE",
        http_path = "/prefix-list/{PrefixListArn}/core-network/{CoreNetworkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDevice(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDevice",
        input_schema = schemas.DeleteDeviceInput,
        output_schema = schemas.DeleteDeviceOutput,
        http_method = "DELETE",
        http_path = "/global-networks/{GlobalNetworkId}/devices/{DeviceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGlobalNetwork(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGlobalNetwork",
        input_schema = schemas.DeleteGlobalNetworkInput,
        output_schema = schemas.DeleteGlobalNetworkOutput,
        http_method = "DELETE",
        http_path = "/global-networks/{GlobalNetworkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLink(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLink",
        input_schema = schemas.DeleteLinkInput,
        output_schema = schemas.DeleteLinkOutput,
        http_method = "DELETE",
        http_path = "/global-networks/{GlobalNetworkId}/links/{LinkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePeering(input, options)
    return self:invokeOperation(input, {
        name = "DeletePeering",
        input_schema = schemas.DeletePeeringInput,
        output_schema = schemas.DeletePeeringOutput,
        http_method = "DELETE",
        http_path = "/peerings/{PeeringId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = schemas.DeleteResourcePolicyInput,
        output_schema = schemas.DeleteResourcePolicyOutput,
        http_method = "DELETE",
        http_path = "/resource-policy/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSite(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSite",
        input_schema = schemas.DeleteSiteInput,
        output_schema = schemas.DeleteSiteOutput,
        http_method = "DELETE",
        http_path = "/global-networks/{GlobalNetworkId}/sites/{SiteId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterTransitGateway(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterTransitGateway",
        input_schema = schemas.DeregisterTransitGatewayInput,
        output_schema = schemas.DeregisterTransitGatewayOutput,
        http_method = "DELETE",
        http_path = "/global-networks/{GlobalNetworkId}/transit-gateway-registrations/{TransitGatewayArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeGlobalNetworks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGlobalNetworks",
        input_schema = schemas.DescribeGlobalNetworksInput,
        output_schema = schemas.DescribeGlobalNetworksOutput,
        http_method = "GET",
        http_path = "/global-networks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateConnectPeer(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateConnectPeer",
        input_schema = schemas.DisassociateConnectPeerInput,
        output_schema = schemas.DisassociateConnectPeerOutput,
        http_method = "DELETE",
        http_path = "/global-networks/{GlobalNetworkId}/connect-peer-associations/{ConnectPeerId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateCustomerGateway(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateCustomerGateway",
        input_schema = schemas.DisassociateCustomerGatewayInput,
        output_schema = schemas.DisassociateCustomerGatewayOutput,
        http_method = "DELETE",
        http_path = "/global-networks/{GlobalNetworkId}/customer-gateway-associations/{CustomerGatewayArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateLink(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateLink",
        input_schema = schemas.DisassociateLinkInput,
        output_schema = schemas.DisassociateLinkOutput,
        http_method = "DELETE",
        http_path = "/global-networks/{GlobalNetworkId}/link-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateTransitGatewayConnectPeer(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateTransitGatewayConnectPeer",
        input_schema = schemas.DisassociateTransitGatewayConnectPeerInput,
        output_schema = schemas.DisassociateTransitGatewayConnectPeerOutput,
        http_method = "DELETE",
        http_path = "/global-networks/{GlobalNetworkId}/transit-gateway-connect-peer-associations/{TransitGatewayConnectPeerArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:executeCoreNetworkChangeSet(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteCoreNetworkChangeSet",
        input_schema = schemas.ExecuteCoreNetworkChangeSetInput,
        output_schema = schemas.ExecuteCoreNetworkChangeSetOutput,
        http_method = "POST",
        http_path = "/core-networks/{CoreNetworkId}/core-network-change-sets/{PolicyVersionId}/execute",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnectAttachment(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectAttachment",
        input_schema = schemas.GetConnectAttachmentInput,
        output_schema = schemas.GetConnectAttachmentOutput,
        http_method = "GET",
        http_path = "/connect-attachments/{AttachmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnections(input, options)
    return self:invokeOperation(input, {
        name = "GetConnections",
        input_schema = schemas.GetConnectionsInput,
        output_schema = schemas.GetConnectionsOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/connections",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnectPeer(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectPeer",
        input_schema = schemas.GetConnectPeerInput,
        output_schema = schemas.GetConnectPeerOutput,
        http_method = "GET",
        http_path = "/connect-peers/{ConnectPeerId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnectPeerAssociations(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectPeerAssociations",
        input_schema = schemas.GetConnectPeerAssociationsInput,
        output_schema = schemas.GetConnectPeerAssociationsOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/connect-peer-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCoreNetwork(input, options)
    return self:invokeOperation(input, {
        name = "GetCoreNetwork",
        input_schema = schemas.GetCoreNetworkInput,
        output_schema = schemas.GetCoreNetworkOutput,
        http_method = "GET",
        http_path = "/core-networks/{CoreNetworkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCoreNetworkChangeEvents(input, options)
    return self:invokeOperation(input, {
        name = "GetCoreNetworkChangeEvents",
        input_schema = schemas.GetCoreNetworkChangeEventsInput,
        output_schema = schemas.GetCoreNetworkChangeEventsOutput,
        http_method = "GET",
        http_path = "/core-networks/{CoreNetworkId}/core-network-change-events/{PolicyVersionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCoreNetworkChangeSet(input, options)
    return self:invokeOperation(input, {
        name = "GetCoreNetworkChangeSet",
        input_schema = schemas.GetCoreNetworkChangeSetInput,
        output_schema = schemas.GetCoreNetworkChangeSetOutput,
        http_method = "GET",
        http_path = "/core-networks/{CoreNetworkId}/core-network-change-sets/{PolicyVersionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCoreNetworkPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetCoreNetworkPolicy",
        input_schema = schemas.GetCoreNetworkPolicyInput,
        output_schema = schemas.GetCoreNetworkPolicyOutput,
        http_method = "GET",
        http_path = "/core-networks/{CoreNetworkId}/core-network-policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCustomerGatewayAssociations(input, options)
    return self:invokeOperation(input, {
        name = "GetCustomerGatewayAssociations",
        input_schema = schemas.GetCustomerGatewayAssociationsInput,
        output_schema = schemas.GetCustomerGatewayAssociationsOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/customer-gateway-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDevices(input, options)
    return self:invokeOperation(input, {
        name = "GetDevices",
        input_schema = schemas.GetDevicesInput,
        output_schema = schemas.GetDevicesOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/devices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDirectConnectGatewayAttachment(input, options)
    return self:invokeOperation(input, {
        name = "GetDirectConnectGatewayAttachment",
        input_schema = schemas.GetDirectConnectGatewayAttachmentInput,
        output_schema = schemas.GetDirectConnectGatewayAttachmentOutput,
        http_method = "GET",
        http_path = "/direct-connect-gateway-attachments/{AttachmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLinkAssociations(input, options)
    return self:invokeOperation(input, {
        name = "GetLinkAssociations",
        input_schema = schemas.GetLinkAssociationsInput,
        output_schema = schemas.GetLinkAssociationsOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/link-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLinks(input, options)
    return self:invokeOperation(input, {
        name = "GetLinks",
        input_schema = schemas.GetLinksInput,
        output_schema = schemas.GetLinksOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/links",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNetworkResourceCounts(input, options)
    return self:invokeOperation(input, {
        name = "GetNetworkResourceCounts",
        input_schema = schemas.GetNetworkResourceCountsInput,
        output_schema = schemas.GetNetworkResourceCountsOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/network-resource-count",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNetworkResourceRelationships(input, options)
    return self:invokeOperation(input, {
        name = "GetNetworkResourceRelationships",
        input_schema = schemas.GetNetworkResourceRelationshipsInput,
        output_schema = schemas.GetNetworkResourceRelationshipsOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/network-resource-relationships",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNetworkResources(input, options)
    return self:invokeOperation(input, {
        name = "GetNetworkResources",
        input_schema = schemas.GetNetworkResourcesInput,
        output_schema = schemas.GetNetworkResourcesOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/network-resources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNetworkRoutes(input, options)
    return self:invokeOperation(input, {
        name = "GetNetworkRoutes",
        input_schema = schemas.GetNetworkRoutesInput,
        output_schema = schemas.GetNetworkRoutesOutput,
        http_method = "POST",
        http_path = "/global-networks/{GlobalNetworkId}/network-routes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNetworkTelemetry(input, options)
    return self:invokeOperation(input, {
        name = "GetNetworkTelemetry",
        input_schema = schemas.GetNetworkTelemetryInput,
        output_schema = schemas.GetNetworkTelemetryOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/network-telemetry",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = schemas.GetResourcePolicyInput,
        output_schema = schemas.GetResourcePolicyOutput,
        http_method = "GET",
        http_path = "/resource-policy/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRouteAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "GetRouteAnalysis",
        input_schema = schemas.GetRouteAnalysisInput,
        output_schema = schemas.GetRouteAnalysisOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/route-analyses/{RouteAnalysisId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSites(input, options)
    return self:invokeOperation(input, {
        name = "GetSites",
        input_schema = schemas.GetSitesInput,
        output_schema = schemas.GetSitesOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/sites",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSiteToSiteVpnAttachment(input, options)
    return self:invokeOperation(input, {
        name = "GetSiteToSiteVpnAttachment",
        input_schema = schemas.GetSiteToSiteVpnAttachmentInput,
        output_schema = schemas.GetSiteToSiteVpnAttachmentOutput,
        http_method = "GET",
        http_path = "/site-to-site-vpn-attachments/{AttachmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTransitGatewayConnectPeerAssociations(input, options)
    return self:invokeOperation(input, {
        name = "GetTransitGatewayConnectPeerAssociations",
        input_schema = schemas.GetTransitGatewayConnectPeerAssociationsInput,
        output_schema = schemas.GetTransitGatewayConnectPeerAssociationsOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/transit-gateway-connect-peer-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTransitGatewayPeering(input, options)
    return self:invokeOperation(input, {
        name = "GetTransitGatewayPeering",
        input_schema = schemas.GetTransitGatewayPeeringInput,
        output_schema = schemas.GetTransitGatewayPeeringOutput,
        http_method = "GET",
        http_path = "/transit-gateway-peerings/{PeeringId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTransitGatewayRegistrations(input, options)
    return self:invokeOperation(input, {
        name = "GetTransitGatewayRegistrations",
        input_schema = schemas.GetTransitGatewayRegistrationsInput,
        output_schema = schemas.GetTransitGatewayRegistrationsOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/transit-gateway-registrations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTransitGatewayRouteTableAttachment(input, options)
    return self:invokeOperation(input, {
        name = "GetTransitGatewayRouteTableAttachment",
        input_schema = schemas.GetTransitGatewayRouteTableAttachmentInput,
        output_schema = schemas.GetTransitGatewayRouteTableAttachmentOutput,
        http_method = "GET",
        http_path = "/transit-gateway-route-table-attachments/{AttachmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVpcAttachment(input, options)
    return self:invokeOperation(input, {
        name = "GetVpcAttachment",
        input_schema = schemas.GetVpcAttachmentInput,
        output_schema = schemas.GetVpcAttachmentOutput,
        http_method = "GET",
        http_path = "/vpc-attachments/{AttachmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAttachmentRoutingPolicyAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListAttachmentRoutingPolicyAssociations",
        input_schema = schemas.ListAttachmentRoutingPolicyAssociationsInput,
        output_schema = schemas.ListAttachmentRoutingPolicyAssociationsOutput,
        http_method = "GET",
        http_path = "/routing-policy-label/core-network/{CoreNetworkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAttachments(input, options)
    return self:invokeOperation(input, {
        name = "ListAttachments",
        input_schema = schemas.ListAttachmentsInput,
        output_schema = schemas.ListAttachmentsOutput,
        http_method = "GET",
        http_path = "/attachments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConnectPeers(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectPeers",
        input_schema = schemas.ListConnectPeersInput,
        output_schema = schemas.ListConnectPeersOutput,
        http_method = "GET",
        http_path = "/connect-peers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCoreNetworkPolicyVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListCoreNetworkPolicyVersions",
        input_schema = schemas.ListCoreNetworkPolicyVersionsInput,
        output_schema = schemas.ListCoreNetworkPolicyVersionsOutput,
        http_method = "GET",
        http_path = "/core-networks/{CoreNetworkId}/core-network-policy-versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCoreNetworkPrefixListAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListCoreNetworkPrefixListAssociations",
        input_schema = schemas.ListCoreNetworkPrefixListAssociationsInput,
        output_schema = schemas.ListCoreNetworkPrefixListAssociationsOutput,
        http_method = "GET",
        http_path = "/prefix-list/core-network/{CoreNetworkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCoreNetworkRoutingInformation(input, options)
    return self:invokeOperation(input, {
        name = "ListCoreNetworkRoutingInformation",
        input_schema = schemas.ListCoreNetworkRoutingInformationInput,
        output_schema = schemas.ListCoreNetworkRoutingInformationOutput,
        http_method = "POST",
        http_path = "/core-networks/{CoreNetworkId}/core-network-routing-information",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCoreNetworks(input, options)
    return self:invokeOperation(input, {
        name = "ListCoreNetworks",
        input_schema = schemas.ListCoreNetworksInput,
        output_schema = schemas.ListCoreNetworksOutput,
        http_method = "GET",
        http_path = "/core-networks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOrganizationServiceAccessStatus(input, options)
    return self:invokeOperation(input, {
        name = "ListOrganizationServiceAccessStatus",
        input_schema = schemas.ListOrganizationServiceAccessStatusInput,
        output_schema = schemas.ListOrganizationServiceAccessStatusOutput,
        http_method = "GET",
        http_path = "/organizations/service-access",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPeerings(input, options)
    return self:invokeOperation(input, {
        name = "ListPeerings",
        input_schema = schemas.ListPeeringsInput,
        output_schema = schemas.ListPeeringsOutput,
        http_method = "GET",
        http_path = "/peerings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAttachmentRoutingPolicyLabel(input, options)
    return self:invokeOperation(input, {
        name = "PutAttachmentRoutingPolicyLabel",
        input_schema = schemas.PutAttachmentRoutingPolicyLabelInput,
        output_schema = schemas.PutAttachmentRoutingPolicyLabelOutput,
        http_method = "POST",
        http_path = "/routing-policy-label",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putCoreNetworkPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutCoreNetworkPolicy",
        input_schema = schemas.PutCoreNetworkPolicyInput,
        output_schema = schemas.PutCoreNetworkPolicyOutput,
        http_method = "POST",
        http_path = "/core-networks/{CoreNetworkId}/core-network-policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = schemas.PutResourcePolicyInput,
        output_schema = schemas.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/resource-policy/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerTransitGateway(input, options)
    return self:invokeOperation(input, {
        name = "RegisterTransitGateway",
        input_schema = schemas.RegisterTransitGatewayInput,
        output_schema = schemas.RegisterTransitGatewayOutput,
        http_method = "POST",
        http_path = "/global-networks/{GlobalNetworkId}/transit-gateway-registrations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectAttachment(input, options)
    return self:invokeOperation(input, {
        name = "RejectAttachment",
        input_schema = schemas.RejectAttachmentInput,
        output_schema = schemas.RejectAttachmentOutput,
        http_method = "POST",
        http_path = "/attachments/{AttachmentId}/reject",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeAttachmentRoutingPolicyLabel(input, options)
    return self:invokeOperation(input, {
        name = "RemoveAttachmentRoutingPolicyLabel",
        input_schema = schemas.RemoveAttachmentRoutingPolicyLabelInput,
        output_schema = schemas.RemoveAttachmentRoutingPolicyLabelOutput,
        http_method = "DELETE",
        http_path = "/routing-policy-label/core-network/{CoreNetworkId}/attachment/{AttachmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreCoreNetworkPolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "RestoreCoreNetworkPolicyVersion",
        input_schema = schemas.RestoreCoreNetworkPolicyVersionInput,
        output_schema = schemas.RestoreCoreNetworkPolicyVersionOutput,
        http_method = "POST",
        http_path = "/core-networks/{CoreNetworkId}/core-network-policy-versions/{PolicyVersionId}/restore",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startOrganizationServiceAccessUpdate(input, options)
    return self:invokeOperation(input, {
        name = "StartOrganizationServiceAccessUpdate",
        input_schema = schemas.StartOrganizationServiceAccessUpdateInput,
        output_schema = schemas.StartOrganizationServiceAccessUpdateOutput,
        http_method = "POST",
        http_path = "/organizations/service-access",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startRouteAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "StartRouteAnalysis",
        input_schema = schemas.StartRouteAnalysisInput,
        output_schema = schemas.StartRouteAnalysisOutput,
        http_method = "POST",
        http_path = "/global-networks/{GlobalNetworkId}/route-analyses",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConnection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnection",
        input_schema = schemas.UpdateConnectionInput,
        output_schema = schemas.UpdateConnectionOutput,
        http_method = "PATCH",
        http_path = "/global-networks/{GlobalNetworkId}/connections/{ConnectionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCoreNetwork(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCoreNetwork",
        input_schema = schemas.UpdateCoreNetworkInput,
        output_schema = schemas.UpdateCoreNetworkOutput,
        http_method = "PATCH",
        http_path = "/core-networks/{CoreNetworkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDevice(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDevice",
        input_schema = schemas.UpdateDeviceInput,
        output_schema = schemas.UpdateDeviceOutput,
        http_method = "PATCH",
        http_path = "/global-networks/{GlobalNetworkId}/devices/{DeviceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDirectConnectGatewayAttachment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDirectConnectGatewayAttachment",
        input_schema = schemas.UpdateDirectConnectGatewayAttachmentInput,
        output_schema = schemas.UpdateDirectConnectGatewayAttachmentOutput,
        http_method = "PATCH",
        http_path = "/direct-connect-gateway-attachments/{AttachmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGlobalNetwork(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGlobalNetwork",
        input_schema = schemas.UpdateGlobalNetworkInput,
        output_schema = schemas.UpdateGlobalNetworkOutput,
        http_method = "PATCH",
        http_path = "/global-networks/{GlobalNetworkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLink(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLink",
        input_schema = schemas.UpdateLinkInput,
        output_schema = schemas.UpdateLinkOutput,
        http_method = "PATCH",
        http_path = "/global-networks/{GlobalNetworkId}/links/{LinkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNetworkResourceMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNetworkResourceMetadata",
        input_schema = schemas.UpdateNetworkResourceMetadataInput,
        output_schema = schemas.UpdateNetworkResourceMetadataOutput,
        http_method = "PATCH",
        http_path = "/global-networks/{GlobalNetworkId}/network-resources/{ResourceArn}/metadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSite(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSite",
        input_schema = schemas.UpdateSiteInput,
        output_schema = schemas.UpdateSiteOutput,
        http_method = "PATCH",
        http_path = "/global-networks/{GlobalNetworkId}/sites/{SiteId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateVpcAttachment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVpcAttachment",
        input_schema = schemas.UpdateVpcAttachmentInput,
        output_schema = schemas.UpdateVpcAttachmentOutput,
        http_method = "PATCH",
        http_path = "/vpc-attachments/{AttachmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
