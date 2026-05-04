local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("networkmanager.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("networkmanager.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "NetworkManager"
    cfg.signing_name = "networkmanager"
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

function Client:acceptAttachment(input, options)
    return self:invokeOperation(input, {
        name = "AcceptAttachment",
        input_schema = types.AcceptAttachmentInput,
        output_schema = types.AcceptAttachmentOutput,
        http_method = "POST",
        http_path = "/attachments/{AttachmentId}/accept",
    }, options)
end

function Client:associateConnectPeer(input, options)
    return self:invokeOperation(input, {
        name = "AssociateConnectPeer",
        input_schema = types.AssociateConnectPeerInput,
        output_schema = types.AssociateConnectPeerOutput,
        http_method = "POST",
        http_path = "/global-networks/{GlobalNetworkId}/connect-peer-associations",
    }, options)
end

function Client:associateCustomerGateway(input, options)
    return self:invokeOperation(input, {
        name = "AssociateCustomerGateway",
        input_schema = types.AssociateCustomerGatewayInput,
        output_schema = types.AssociateCustomerGatewayOutput,
        http_method = "POST",
        http_path = "/global-networks/{GlobalNetworkId}/customer-gateway-associations",
    }, options)
end

function Client:associateLink(input, options)
    return self:invokeOperation(input, {
        name = "AssociateLink",
        input_schema = types.AssociateLinkInput,
        output_schema = types.AssociateLinkOutput,
        http_method = "POST",
        http_path = "/global-networks/{GlobalNetworkId}/link-associations",
    }, options)
end

function Client:associateTransitGatewayConnectPeer(input, options)
    return self:invokeOperation(input, {
        name = "AssociateTransitGatewayConnectPeer",
        input_schema = types.AssociateTransitGatewayConnectPeerInput,
        output_schema = types.AssociateTransitGatewayConnectPeerOutput,
        http_method = "POST",
        http_path = "/global-networks/{GlobalNetworkId}/transit-gateway-connect-peer-associations",
    }, options)
end

function Client:createConnectAttachment(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnectAttachment",
        input_schema = types.CreateConnectAttachmentInput,
        output_schema = types.CreateConnectAttachmentOutput,
        http_method = "POST",
        http_path = "/connect-attachments",
    }, options)
end

function Client:createConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnection",
        input_schema = types.CreateConnectionInput,
        output_schema = types.CreateConnectionOutput,
        http_method = "POST",
        http_path = "/global-networks/{GlobalNetworkId}/connections",
    }, options)
end

function Client:createConnectPeer(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnectPeer",
        input_schema = types.CreateConnectPeerInput,
        output_schema = types.CreateConnectPeerOutput,
        http_method = "POST",
        http_path = "/connect-peers",
    }, options)
end

function Client:createCoreNetwork(input, options)
    return self:invokeOperation(input, {
        name = "CreateCoreNetwork",
        input_schema = types.CreateCoreNetworkInput,
        output_schema = types.CreateCoreNetworkOutput,
        http_method = "POST",
        http_path = "/core-networks",
    }, options)
end

function Client:createCoreNetworkPrefixListAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateCoreNetworkPrefixListAssociation",
        input_schema = types.CreateCoreNetworkPrefixListAssociationInput,
        output_schema = types.CreateCoreNetworkPrefixListAssociationOutput,
        http_method = "POST",
        http_path = "/prefix-list",
    }, options)
end

function Client:createDevice(input, options)
    return self:invokeOperation(input, {
        name = "CreateDevice",
        input_schema = types.CreateDeviceInput,
        output_schema = types.CreateDeviceOutput,
        http_method = "POST",
        http_path = "/global-networks/{GlobalNetworkId}/devices",
    }, options)
end

function Client:createDirectConnectGatewayAttachment(input, options)
    return self:invokeOperation(input, {
        name = "CreateDirectConnectGatewayAttachment",
        input_schema = types.CreateDirectConnectGatewayAttachmentInput,
        output_schema = types.CreateDirectConnectGatewayAttachmentOutput,
        http_method = "POST",
        http_path = "/direct-connect-gateway-attachments",
    }, options)
end

function Client:createGlobalNetwork(input, options)
    return self:invokeOperation(input, {
        name = "CreateGlobalNetwork",
        input_schema = types.CreateGlobalNetworkInput,
        output_schema = types.CreateGlobalNetworkOutput,
        http_method = "POST",
        http_path = "/global-networks",
    }, options)
end

function Client:createLink(input, options)
    return self:invokeOperation(input, {
        name = "CreateLink",
        input_schema = types.CreateLinkInput,
        output_schema = types.CreateLinkOutput,
        http_method = "POST",
        http_path = "/global-networks/{GlobalNetworkId}/links",
    }, options)
end

function Client:createSite(input, options)
    return self:invokeOperation(input, {
        name = "CreateSite",
        input_schema = types.CreateSiteInput,
        output_schema = types.CreateSiteOutput,
        http_method = "POST",
        http_path = "/global-networks/{GlobalNetworkId}/sites",
    }, options)
end

function Client:createSiteToSiteVpnAttachment(input, options)
    return self:invokeOperation(input, {
        name = "CreateSiteToSiteVpnAttachment",
        input_schema = types.CreateSiteToSiteVpnAttachmentInput,
        output_schema = types.CreateSiteToSiteVpnAttachmentOutput,
        http_method = "POST",
        http_path = "/site-to-site-vpn-attachments",
    }, options)
end

function Client:createTransitGatewayPeering(input, options)
    return self:invokeOperation(input, {
        name = "CreateTransitGatewayPeering",
        input_schema = types.CreateTransitGatewayPeeringInput,
        output_schema = types.CreateTransitGatewayPeeringOutput,
        http_method = "POST",
        http_path = "/transit-gateway-peerings",
    }, options)
end

function Client:createTransitGatewayRouteTableAttachment(input, options)
    return self:invokeOperation(input, {
        name = "CreateTransitGatewayRouteTableAttachment",
        input_schema = types.CreateTransitGatewayRouteTableAttachmentInput,
        output_schema = types.CreateTransitGatewayRouteTableAttachmentOutput,
        http_method = "POST",
        http_path = "/transit-gateway-route-table-attachments",
    }, options)
end

function Client:createVpcAttachment(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcAttachment",
        input_schema = types.CreateVpcAttachmentInput,
        output_schema = types.CreateVpcAttachmentOutput,
        http_method = "POST",
        http_path = "/vpc-attachments",
    }, options)
end

function Client:deleteAttachment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAttachment",
        input_schema = types.DeleteAttachmentInput,
        output_schema = types.DeleteAttachmentOutput,
        http_method = "DELETE",
        http_path = "/attachments/{AttachmentId}",
    }, options)
end

function Client:deleteConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnection",
        input_schema = types.DeleteConnectionInput,
        output_schema = types.DeleteConnectionOutput,
        http_method = "DELETE",
        http_path = "/global-networks/{GlobalNetworkId}/connections/{ConnectionId}",
    }, options)
end

function Client:deleteConnectPeer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnectPeer",
        input_schema = types.DeleteConnectPeerInput,
        output_schema = types.DeleteConnectPeerOutput,
        http_method = "DELETE",
        http_path = "/connect-peers/{ConnectPeerId}",
    }, options)
end

function Client:deleteCoreNetwork(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCoreNetwork",
        input_schema = types.DeleteCoreNetworkInput,
        output_schema = types.DeleteCoreNetworkOutput,
        http_method = "DELETE",
        http_path = "/core-networks/{CoreNetworkId}",
    }, options)
end

function Client:deleteCoreNetworkPolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCoreNetworkPolicyVersion",
        input_schema = types.DeleteCoreNetworkPolicyVersionInput,
        output_schema = types.DeleteCoreNetworkPolicyVersionOutput,
        http_method = "DELETE",
        http_path = "/core-networks/{CoreNetworkId}/core-network-policy-versions/{PolicyVersionId}",
    }, options)
end

function Client:deleteCoreNetworkPrefixListAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCoreNetworkPrefixListAssociation",
        input_schema = types.DeleteCoreNetworkPrefixListAssociationInput,
        output_schema = types.DeleteCoreNetworkPrefixListAssociationOutput,
        http_method = "DELETE",
        http_path = "/prefix-list/{PrefixListArn}/core-network/{CoreNetworkId}",
    }, options)
end

function Client:deleteDevice(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDevice",
        input_schema = types.DeleteDeviceInput,
        output_schema = types.DeleteDeviceOutput,
        http_method = "DELETE",
        http_path = "/global-networks/{GlobalNetworkId}/devices/{DeviceId}",
    }, options)
end

function Client:deleteGlobalNetwork(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGlobalNetwork",
        input_schema = types.DeleteGlobalNetworkInput,
        output_schema = types.DeleteGlobalNetworkOutput,
        http_method = "DELETE",
        http_path = "/global-networks/{GlobalNetworkId}",
    }, options)
end

function Client:deleteLink(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLink",
        input_schema = types.DeleteLinkInput,
        output_schema = types.DeleteLinkOutput,
        http_method = "DELETE",
        http_path = "/global-networks/{GlobalNetworkId}/links/{LinkId}",
    }, options)
end

function Client:deletePeering(input, options)
    return self:invokeOperation(input, {
        name = "DeletePeering",
        input_schema = types.DeletePeeringInput,
        output_schema = types.DeletePeeringOutput,
        http_method = "DELETE",
        http_path = "/peerings/{PeeringId}",
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "DELETE",
        http_path = "/resource-policy/{ResourceArn}",
    }, options)
end

function Client:deleteSite(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSite",
        input_schema = types.DeleteSiteInput,
        output_schema = types.DeleteSiteOutput,
        http_method = "DELETE",
        http_path = "/global-networks/{GlobalNetworkId}/sites/{SiteId}",
    }, options)
end

function Client:deregisterTransitGateway(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterTransitGateway",
        input_schema = types.DeregisterTransitGatewayInput,
        output_schema = types.DeregisterTransitGatewayOutput,
        http_method = "DELETE",
        http_path = "/global-networks/{GlobalNetworkId}/transit-gateway-registrations/{TransitGatewayArn}",
    }, options)
end

function Client:describeGlobalNetworks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGlobalNetworks",
        input_schema = types.DescribeGlobalNetworksInput,
        output_schema = types.DescribeGlobalNetworksOutput,
        http_method = "GET",
        http_path = "/global-networks",
    }, options)
end

function Client:disassociateConnectPeer(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateConnectPeer",
        input_schema = types.DisassociateConnectPeerInput,
        output_schema = types.DisassociateConnectPeerOutput,
        http_method = "DELETE",
        http_path = "/global-networks/{GlobalNetworkId}/connect-peer-associations/{ConnectPeerId}",
    }, options)
end

function Client:disassociateCustomerGateway(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateCustomerGateway",
        input_schema = types.DisassociateCustomerGatewayInput,
        output_schema = types.DisassociateCustomerGatewayOutput,
        http_method = "DELETE",
        http_path = "/global-networks/{GlobalNetworkId}/customer-gateway-associations/{CustomerGatewayArn}",
    }, options)
end

function Client:disassociateLink(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateLink",
        input_schema = types.DisassociateLinkInput,
        output_schema = types.DisassociateLinkOutput,
        http_method = "DELETE",
        http_path = "/global-networks/{GlobalNetworkId}/link-associations",
    }, options)
end

function Client:disassociateTransitGatewayConnectPeer(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateTransitGatewayConnectPeer",
        input_schema = types.DisassociateTransitGatewayConnectPeerInput,
        output_schema = types.DisassociateTransitGatewayConnectPeerOutput,
        http_method = "DELETE",
        http_path = "/global-networks/{GlobalNetworkId}/transit-gateway-connect-peer-associations/{TransitGatewayConnectPeerArn}",
    }, options)
end

function Client:executeCoreNetworkChangeSet(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteCoreNetworkChangeSet",
        input_schema = types.ExecuteCoreNetworkChangeSetInput,
        output_schema = types.ExecuteCoreNetworkChangeSetOutput,
        http_method = "POST",
        http_path = "/core-networks/{CoreNetworkId}/core-network-change-sets/{PolicyVersionId}/execute",
    }, options)
end

function Client:getConnectAttachment(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectAttachment",
        input_schema = types.GetConnectAttachmentInput,
        output_schema = types.GetConnectAttachmentOutput,
        http_method = "GET",
        http_path = "/connect-attachments/{AttachmentId}",
    }, options)
end

function Client:getConnections(input, options)
    return self:invokeOperation(input, {
        name = "GetConnections",
        input_schema = types.GetConnectionsInput,
        output_schema = types.GetConnectionsOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/connections",
    }, options)
end

function Client:getConnectPeer(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectPeer",
        input_schema = types.GetConnectPeerInput,
        output_schema = types.GetConnectPeerOutput,
        http_method = "GET",
        http_path = "/connect-peers/{ConnectPeerId}",
    }, options)
end

function Client:getConnectPeerAssociations(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectPeerAssociations",
        input_schema = types.GetConnectPeerAssociationsInput,
        output_schema = types.GetConnectPeerAssociationsOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/connect-peer-associations",
    }, options)
end

function Client:getCoreNetwork(input, options)
    return self:invokeOperation(input, {
        name = "GetCoreNetwork",
        input_schema = types.GetCoreNetworkInput,
        output_schema = types.GetCoreNetworkOutput,
        http_method = "GET",
        http_path = "/core-networks/{CoreNetworkId}",
    }, options)
end

function Client:getCoreNetworkChangeEvents(input, options)
    return self:invokeOperation(input, {
        name = "GetCoreNetworkChangeEvents",
        input_schema = types.GetCoreNetworkChangeEventsInput,
        output_schema = types.GetCoreNetworkChangeEventsOutput,
        http_method = "GET",
        http_path = "/core-networks/{CoreNetworkId}/core-network-change-events/{PolicyVersionId}",
    }, options)
end

function Client:getCoreNetworkChangeSet(input, options)
    return self:invokeOperation(input, {
        name = "GetCoreNetworkChangeSet",
        input_schema = types.GetCoreNetworkChangeSetInput,
        output_schema = types.GetCoreNetworkChangeSetOutput,
        http_method = "GET",
        http_path = "/core-networks/{CoreNetworkId}/core-network-change-sets/{PolicyVersionId}",
    }, options)
end

function Client:getCoreNetworkPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetCoreNetworkPolicy",
        input_schema = types.GetCoreNetworkPolicyInput,
        output_schema = types.GetCoreNetworkPolicyOutput,
        http_method = "GET",
        http_path = "/core-networks/{CoreNetworkId}/core-network-policy",
    }, options)
end

function Client:getCustomerGatewayAssociations(input, options)
    return self:invokeOperation(input, {
        name = "GetCustomerGatewayAssociations",
        input_schema = types.GetCustomerGatewayAssociationsInput,
        output_schema = types.GetCustomerGatewayAssociationsOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/customer-gateway-associations",
    }, options)
end

function Client:getDevices(input, options)
    return self:invokeOperation(input, {
        name = "GetDevices",
        input_schema = types.GetDevicesInput,
        output_schema = types.GetDevicesOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/devices",
    }, options)
end

function Client:getDirectConnectGatewayAttachment(input, options)
    return self:invokeOperation(input, {
        name = "GetDirectConnectGatewayAttachment",
        input_schema = types.GetDirectConnectGatewayAttachmentInput,
        output_schema = types.GetDirectConnectGatewayAttachmentOutput,
        http_method = "GET",
        http_path = "/direct-connect-gateway-attachments/{AttachmentId}",
    }, options)
end

function Client:getLinkAssociations(input, options)
    return self:invokeOperation(input, {
        name = "GetLinkAssociations",
        input_schema = types.GetLinkAssociationsInput,
        output_schema = types.GetLinkAssociationsOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/link-associations",
    }, options)
end

function Client:getLinks(input, options)
    return self:invokeOperation(input, {
        name = "GetLinks",
        input_schema = types.GetLinksInput,
        output_schema = types.GetLinksOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/links",
    }, options)
end

function Client:getNetworkResourceCounts(input, options)
    return self:invokeOperation(input, {
        name = "GetNetworkResourceCounts",
        input_schema = types.GetNetworkResourceCountsInput,
        output_schema = types.GetNetworkResourceCountsOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/network-resource-count",
    }, options)
end

function Client:getNetworkResourceRelationships(input, options)
    return self:invokeOperation(input, {
        name = "GetNetworkResourceRelationships",
        input_schema = types.GetNetworkResourceRelationshipsInput,
        output_schema = types.GetNetworkResourceRelationshipsOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/network-resource-relationships",
    }, options)
end

function Client:getNetworkResources(input, options)
    return self:invokeOperation(input, {
        name = "GetNetworkResources",
        input_schema = types.GetNetworkResourcesInput,
        output_schema = types.GetNetworkResourcesOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/network-resources",
    }, options)
end

function Client:getNetworkRoutes(input, options)
    return self:invokeOperation(input, {
        name = "GetNetworkRoutes",
        input_schema = types.GetNetworkRoutesInput,
        output_schema = types.GetNetworkRoutesOutput,
        http_method = "POST",
        http_path = "/global-networks/{GlobalNetworkId}/network-routes",
    }, options)
end

function Client:getNetworkTelemetry(input, options)
    return self:invokeOperation(input, {
        name = "GetNetworkTelemetry",
        input_schema = types.GetNetworkTelemetryInput,
        output_schema = types.GetNetworkTelemetryOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/network-telemetry",
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
        http_method = "GET",
        http_path = "/resource-policy/{ResourceArn}",
    }, options)
end

function Client:getRouteAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "GetRouteAnalysis",
        input_schema = types.GetRouteAnalysisInput,
        output_schema = types.GetRouteAnalysisOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/route-analyses/{RouteAnalysisId}",
    }, options)
end

function Client:getSites(input, options)
    return self:invokeOperation(input, {
        name = "GetSites",
        input_schema = types.GetSitesInput,
        output_schema = types.GetSitesOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/sites",
    }, options)
end

function Client:getSiteToSiteVpnAttachment(input, options)
    return self:invokeOperation(input, {
        name = "GetSiteToSiteVpnAttachment",
        input_schema = types.GetSiteToSiteVpnAttachmentInput,
        output_schema = types.GetSiteToSiteVpnAttachmentOutput,
        http_method = "GET",
        http_path = "/site-to-site-vpn-attachments/{AttachmentId}",
    }, options)
end

function Client:getTransitGatewayConnectPeerAssociations(input, options)
    return self:invokeOperation(input, {
        name = "GetTransitGatewayConnectPeerAssociations",
        input_schema = types.GetTransitGatewayConnectPeerAssociationsInput,
        output_schema = types.GetTransitGatewayConnectPeerAssociationsOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/transit-gateway-connect-peer-associations",
    }, options)
end

function Client:getTransitGatewayPeering(input, options)
    return self:invokeOperation(input, {
        name = "GetTransitGatewayPeering",
        input_schema = types.GetTransitGatewayPeeringInput,
        output_schema = types.GetTransitGatewayPeeringOutput,
        http_method = "GET",
        http_path = "/transit-gateway-peerings/{PeeringId}",
    }, options)
end

function Client:getTransitGatewayRegistrations(input, options)
    return self:invokeOperation(input, {
        name = "GetTransitGatewayRegistrations",
        input_schema = types.GetTransitGatewayRegistrationsInput,
        output_schema = types.GetTransitGatewayRegistrationsOutput,
        http_method = "GET",
        http_path = "/global-networks/{GlobalNetworkId}/transit-gateway-registrations",
    }, options)
end

function Client:getTransitGatewayRouteTableAttachment(input, options)
    return self:invokeOperation(input, {
        name = "GetTransitGatewayRouteTableAttachment",
        input_schema = types.GetTransitGatewayRouteTableAttachmentInput,
        output_schema = types.GetTransitGatewayRouteTableAttachmentOutput,
        http_method = "GET",
        http_path = "/transit-gateway-route-table-attachments/{AttachmentId}",
    }, options)
end

function Client:getVpcAttachment(input, options)
    return self:invokeOperation(input, {
        name = "GetVpcAttachment",
        input_schema = types.GetVpcAttachmentInput,
        output_schema = types.GetVpcAttachmentOutput,
        http_method = "GET",
        http_path = "/vpc-attachments/{AttachmentId}",
    }, options)
end

function Client:listAttachmentRoutingPolicyAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListAttachmentRoutingPolicyAssociations",
        input_schema = types.ListAttachmentRoutingPolicyAssociationsInput,
        output_schema = types.ListAttachmentRoutingPolicyAssociationsOutput,
        http_method = "GET",
        http_path = "/routing-policy-label/core-network/{CoreNetworkId}",
    }, options)
end

function Client:listAttachments(input, options)
    return self:invokeOperation(input, {
        name = "ListAttachments",
        input_schema = types.ListAttachmentsInput,
        output_schema = types.ListAttachmentsOutput,
        http_method = "GET",
        http_path = "/attachments",
    }, options)
end

function Client:listConnectPeers(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectPeers",
        input_schema = types.ListConnectPeersInput,
        output_schema = types.ListConnectPeersOutput,
        http_method = "GET",
        http_path = "/connect-peers",
    }, options)
end

function Client:listCoreNetworkPolicyVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListCoreNetworkPolicyVersions",
        input_schema = types.ListCoreNetworkPolicyVersionsInput,
        output_schema = types.ListCoreNetworkPolicyVersionsOutput,
        http_method = "GET",
        http_path = "/core-networks/{CoreNetworkId}/core-network-policy-versions",
    }, options)
end

function Client:listCoreNetworkPrefixListAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListCoreNetworkPrefixListAssociations",
        input_schema = types.ListCoreNetworkPrefixListAssociationsInput,
        output_schema = types.ListCoreNetworkPrefixListAssociationsOutput,
        http_method = "GET",
        http_path = "/prefix-list/core-network/{CoreNetworkId}",
    }, options)
end

function Client:listCoreNetworkRoutingInformation(input, options)
    return self:invokeOperation(input, {
        name = "ListCoreNetworkRoutingInformation",
        input_schema = types.ListCoreNetworkRoutingInformationInput,
        output_schema = types.ListCoreNetworkRoutingInformationOutput,
        http_method = "POST",
        http_path = "/core-networks/{CoreNetworkId}/core-network-routing-information",
    }, options)
end

function Client:listCoreNetworks(input, options)
    return self:invokeOperation(input, {
        name = "ListCoreNetworks",
        input_schema = types.ListCoreNetworksInput,
        output_schema = types.ListCoreNetworksOutput,
        http_method = "GET",
        http_path = "/core-networks",
    }, options)
end

function Client:listOrganizationServiceAccessStatus(input, options)
    return self:invokeOperation(input, {
        name = "ListOrganizationServiceAccessStatus",
        input_schema = types.ListOrganizationServiceAccessStatusInput,
        output_schema = types.ListOrganizationServiceAccessStatusOutput,
        http_method = "GET",
        http_path = "/organizations/service-access",
    }, options)
end

function Client:listPeerings(input, options)
    return self:invokeOperation(input, {
        name = "ListPeerings",
        input_schema = types.ListPeeringsInput,
        output_schema = types.ListPeeringsOutput,
        http_method = "GET",
        http_path = "/peerings",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:putAttachmentRoutingPolicyLabel(input, options)
    return self:invokeOperation(input, {
        name = "PutAttachmentRoutingPolicyLabel",
        input_schema = types.PutAttachmentRoutingPolicyLabelInput,
        output_schema = types.PutAttachmentRoutingPolicyLabelOutput,
        http_method = "POST",
        http_path = "/routing-policy-label",
    }, options)
end

function Client:putCoreNetworkPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutCoreNetworkPolicy",
        input_schema = types.PutCoreNetworkPolicyInput,
        output_schema = types.PutCoreNetworkPolicyOutput,
        http_method = "POST",
        http_path = "/core-networks/{CoreNetworkId}/core-network-policy",
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/resource-policy/{ResourceArn}",
    }, options)
end

function Client:registerTransitGateway(input, options)
    return self:invokeOperation(input, {
        name = "RegisterTransitGateway",
        input_schema = types.RegisterTransitGatewayInput,
        output_schema = types.RegisterTransitGatewayOutput,
        http_method = "POST",
        http_path = "/global-networks/{GlobalNetworkId}/transit-gateway-registrations",
    }, options)
end

function Client:rejectAttachment(input, options)
    return self:invokeOperation(input, {
        name = "RejectAttachment",
        input_schema = types.RejectAttachmentInput,
        output_schema = types.RejectAttachmentOutput,
        http_method = "POST",
        http_path = "/attachments/{AttachmentId}/reject",
    }, options)
end

function Client:removeAttachmentRoutingPolicyLabel(input, options)
    return self:invokeOperation(input, {
        name = "RemoveAttachmentRoutingPolicyLabel",
        input_schema = types.RemoveAttachmentRoutingPolicyLabelInput,
        output_schema = types.RemoveAttachmentRoutingPolicyLabelOutput,
        http_method = "DELETE",
        http_path = "/routing-policy-label/core-network/{CoreNetworkId}/attachment/{AttachmentId}",
    }, options)
end

function Client:restoreCoreNetworkPolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "RestoreCoreNetworkPolicyVersion",
        input_schema = types.RestoreCoreNetworkPolicyVersionInput,
        output_schema = types.RestoreCoreNetworkPolicyVersionOutput,
        http_method = "POST",
        http_path = "/core-networks/{CoreNetworkId}/core-network-policy-versions/{PolicyVersionId}/restore",
    }, options)
end

function Client:startOrganizationServiceAccessUpdate(input, options)
    return self:invokeOperation(input, {
        name = "StartOrganizationServiceAccessUpdate",
        input_schema = types.StartOrganizationServiceAccessUpdateInput,
        output_schema = types.StartOrganizationServiceAccessUpdateOutput,
        http_method = "POST",
        http_path = "/organizations/service-access",
    }, options)
end

function Client:startRouteAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "StartRouteAnalysis",
        input_schema = types.StartRouteAnalysisInput,
        output_schema = types.StartRouteAnalysisOutput,
        http_method = "POST",
        http_path = "/global-networks/{GlobalNetworkId}/route-analyses",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:updateConnection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnection",
        input_schema = types.UpdateConnectionInput,
        output_schema = types.UpdateConnectionOutput,
        http_method = "PATCH",
        http_path = "/global-networks/{GlobalNetworkId}/connections/{ConnectionId}",
    }, options)
end

function Client:updateCoreNetwork(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCoreNetwork",
        input_schema = types.UpdateCoreNetworkInput,
        output_schema = types.UpdateCoreNetworkOutput,
        http_method = "PATCH",
        http_path = "/core-networks/{CoreNetworkId}",
    }, options)
end

function Client:updateDevice(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDevice",
        input_schema = types.UpdateDeviceInput,
        output_schema = types.UpdateDeviceOutput,
        http_method = "PATCH",
        http_path = "/global-networks/{GlobalNetworkId}/devices/{DeviceId}",
    }, options)
end

function Client:updateDirectConnectGatewayAttachment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDirectConnectGatewayAttachment",
        input_schema = types.UpdateDirectConnectGatewayAttachmentInput,
        output_schema = types.UpdateDirectConnectGatewayAttachmentOutput,
        http_method = "PATCH",
        http_path = "/direct-connect-gateway-attachments/{AttachmentId}",
    }, options)
end

function Client:updateGlobalNetwork(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGlobalNetwork",
        input_schema = types.UpdateGlobalNetworkInput,
        output_schema = types.UpdateGlobalNetworkOutput,
        http_method = "PATCH",
        http_path = "/global-networks/{GlobalNetworkId}",
    }, options)
end

function Client:updateLink(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLink",
        input_schema = types.UpdateLinkInput,
        output_schema = types.UpdateLinkOutput,
        http_method = "PATCH",
        http_path = "/global-networks/{GlobalNetworkId}/links/{LinkId}",
    }, options)
end

function Client:updateNetworkResourceMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNetworkResourceMetadata",
        input_schema = types.UpdateNetworkResourceMetadataInput,
        output_schema = types.UpdateNetworkResourceMetadataOutput,
        http_method = "PATCH",
        http_path = "/global-networks/{GlobalNetworkId}/network-resources/{ResourceArn}/metadata",
    }, options)
end

function Client:updateSite(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSite",
        input_schema = types.UpdateSiteInput,
        output_schema = types.UpdateSiteOutput,
        http_method = "PATCH",
        http_path = "/global-networks/{GlobalNetworkId}/sites/{SiteId}",
    }, options)
end

function Client:updateVpcAttachment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVpcAttachment",
        input_schema = types.UpdateVpcAttachmentInput,
        output_schema = types.UpdateVpcAttachmentOutput,
        http_method = "PATCH",
        http_path = "/vpc-attachments/{AttachmentId}",
    }, options)
end

return M
