local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ec2.endpoint_rules")
local query_protocol = require("protocol.query")
local schemas = require("ec2.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonEC2"
    if not cfg.protocol then
        cfg.protocol = query_protocol.new("ec2Query")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ec2", signing_region = cfg.region } }
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

function Client:acceptAddressTransfer(input, options)
    return self:invokeOperation(input, {
        name = "AcceptAddressTransfer",
        input_schema = schemas.AcceptAddressTransferInput,
        output_schema = schemas.AcceptAddressTransferOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:acceptCapacityReservationBillingOwnership(input, options)
    return self:invokeOperation(input, {
        name = "AcceptCapacityReservationBillingOwnership",
        input_schema = schemas.AcceptCapacityReservationBillingOwnershipInput,
        output_schema = schemas.AcceptCapacityReservationBillingOwnershipOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:acceptReservedInstancesExchangeQuote(input, options)
    return self:invokeOperation(input, {
        name = "AcceptReservedInstancesExchangeQuote",
        input_schema = schemas.AcceptReservedInstancesExchangeQuoteInput,
        output_schema = schemas.AcceptReservedInstancesExchangeQuoteOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:acceptTransitGatewayClientVpnAttachment(input, options)
    return self:invokeOperation(input, {
        name = "AcceptTransitGatewayClientVpnAttachment",
        input_schema = schemas.AcceptTransitGatewayClientVpnAttachmentInput,
        output_schema = schemas.AcceptTransitGatewayClientVpnAttachmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:acceptTransitGatewayMulticastDomainAssociations(input, options)
    return self:invokeOperation(input, {
        name = "AcceptTransitGatewayMulticastDomainAssociations",
        input_schema = schemas.AcceptTransitGatewayMulticastDomainAssociationsInput,
        output_schema = schemas.AcceptTransitGatewayMulticastDomainAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:acceptTransitGatewayPeeringAttachment(input, options)
    return self:invokeOperation(input, {
        name = "AcceptTransitGatewayPeeringAttachment",
        input_schema = schemas.AcceptTransitGatewayPeeringAttachmentInput,
        output_schema = schemas.AcceptTransitGatewayPeeringAttachmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:acceptTransitGatewayVpcAttachment(input, options)
    return self:invokeOperation(input, {
        name = "AcceptTransitGatewayVpcAttachment",
        input_schema = schemas.AcceptTransitGatewayVpcAttachmentInput,
        output_schema = schemas.AcceptTransitGatewayVpcAttachmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:acceptVpcEndpointConnections(input, options)
    return self:invokeOperation(input, {
        name = "AcceptVpcEndpointConnections",
        input_schema = schemas.AcceptVpcEndpointConnectionsInput,
        output_schema = schemas.AcceptVpcEndpointConnectionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:acceptVpcPeeringConnection(input, options)
    return self:invokeOperation(input, {
        name = "AcceptVpcPeeringConnection",
        input_schema = schemas.AcceptVpcPeeringConnectionInput,
        output_schema = schemas.AcceptVpcPeeringConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:advertiseByoipCidr(input, options)
    return self:invokeOperation(input, {
        name = "AdvertiseByoipCidr",
        input_schema = schemas.AdvertiseByoipCidrInput,
        output_schema = schemas.AdvertiseByoipCidrOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:allocateAddress(input, options)
    return self:invokeOperation(input, {
        name = "AllocateAddress",
        input_schema = schemas.AllocateAddressInput,
        output_schema = schemas.AllocateAddressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:allocateHosts(input, options)
    return self:invokeOperation(input, {
        name = "AllocateHosts",
        input_schema = schemas.AllocateHostsInput,
        output_schema = schemas.AllocateHostsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:allocateIpamPoolCidr(input, options)
    return self:invokeOperation(input, {
        name = "AllocateIpamPoolCidr",
        input_schema = schemas.AllocateIpamPoolCidrInput,
        output_schema = schemas.AllocateIpamPoolCidrOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:applySecurityGroupsToClientVpnTargetNetwork(input, options)
    return self:invokeOperation(input, {
        name = "ApplySecurityGroupsToClientVpnTargetNetwork",
        input_schema = schemas.ApplySecurityGroupsToClientVpnTargetNetworkInput,
        output_schema = schemas.ApplySecurityGroupsToClientVpnTargetNetworkOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:assignIpv6Addresses(input, options)
    return self:invokeOperation(input, {
        name = "AssignIpv6Addresses",
        input_schema = schemas.AssignIpv6AddressesInput,
        output_schema = schemas.AssignIpv6AddressesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:assignPrivateIpAddresses(input, options)
    return self:invokeOperation(input, {
        name = "AssignPrivateIpAddresses",
        input_schema = schemas.AssignPrivateIpAddressesInput,
        output_schema = schemas.AssignPrivateIpAddressesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:assignPrivateNatGatewayAddress(input, options)
    return self:invokeOperation(input, {
        name = "AssignPrivateNatGatewayAddress",
        input_schema = schemas.AssignPrivateNatGatewayAddressInput,
        output_schema = schemas.AssignPrivateNatGatewayAddressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateAddress(input, options)
    return self:invokeOperation(input, {
        name = "AssociateAddress",
        input_schema = schemas.AssociateAddressInput,
        output_schema = schemas.AssociateAddressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateCapacityReservationBillingOwner(input, options)
    return self:invokeOperation(input, {
        name = "AssociateCapacityReservationBillingOwner",
        input_schema = schemas.AssociateCapacityReservationBillingOwnerInput,
        output_schema = schemas.AssociateCapacityReservationBillingOwnerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateClientVpnTargetNetwork(input, options)
    return self:invokeOperation(input, {
        name = "AssociateClientVpnTargetNetwork",
        input_schema = schemas.AssociateClientVpnTargetNetworkInput,
        output_schema = schemas.AssociateClientVpnTargetNetworkOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateDhcpOptions(input, options)
    return self:invokeOperation(input, {
        name = "AssociateDhcpOptions",
        input_schema = schemas.AssociateDhcpOptionsInput,
        output_schema = schemas.AssociateDhcpOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateEnclaveCertificateIamRole(input, options)
    return self:invokeOperation(input, {
        name = "AssociateEnclaveCertificateIamRole",
        input_schema = schemas.AssociateEnclaveCertificateIamRoleInput,
        output_schema = schemas.AssociateEnclaveCertificateIamRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateIamInstanceProfile(input, options)
    return self:invokeOperation(input, {
        name = "AssociateIamInstanceProfile",
        input_schema = schemas.AssociateIamInstanceProfileInput,
        output_schema = schemas.AssociateIamInstanceProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateInstanceEventWindow(input, options)
    return self:invokeOperation(input, {
        name = "AssociateInstanceEventWindow",
        input_schema = schemas.AssociateInstanceEventWindowInput,
        output_schema = schemas.AssociateInstanceEventWindowOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateIpamByoasn(input, options)
    return self:invokeOperation(input, {
        name = "AssociateIpamByoasn",
        input_schema = schemas.AssociateIpamByoasnInput,
        output_schema = schemas.AssociateIpamByoasnOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateIpamResourceDiscovery(input, options)
    return self:invokeOperation(input, {
        name = "AssociateIpamResourceDiscovery",
        input_schema = schemas.AssociateIpamResourceDiscoveryInput,
        output_schema = schemas.AssociateIpamResourceDiscoveryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateNatGatewayAddress(input, options)
    return self:invokeOperation(input, {
        name = "AssociateNatGatewayAddress",
        input_schema = schemas.AssociateNatGatewayAddressInput,
        output_schema = schemas.AssociateNatGatewayAddressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateRouteServer(input, options)
    return self:invokeOperation(input, {
        name = "AssociateRouteServer",
        input_schema = schemas.AssociateRouteServerInput,
        output_schema = schemas.AssociateRouteServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateRouteTable(input, options)
    return self:invokeOperation(input, {
        name = "AssociateRouteTable",
        input_schema = schemas.AssociateRouteTableInput,
        output_schema = schemas.AssociateRouteTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateSecurityGroupVpc(input, options)
    return self:invokeOperation(input, {
        name = "AssociateSecurityGroupVpc",
        input_schema = schemas.AssociateSecurityGroupVpcInput,
        output_schema = schemas.AssociateSecurityGroupVpcOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateSubnetCidrBlock(input, options)
    return self:invokeOperation(input, {
        name = "AssociateSubnetCidrBlock",
        input_schema = schemas.AssociateSubnetCidrBlockInput,
        output_schema = schemas.AssociateSubnetCidrBlockOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateTransitGatewayMulticastDomain(input, options)
    return self:invokeOperation(input, {
        name = "AssociateTransitGatewayMulticastDomain",
        input_schema = schemas.AssociateTransitGatewayMulticastDomainInput,
        output_schema = schemas.AssociateTransitGatewayMulticastDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateTransitGatewayPolicyTable(input, options)
    return self:invokeOperation(input, {
        name = "AssociateTransitGatewayPolicyTable",
        input_schema = schemas.AssociateTransitGatewayPolicyTableInput,
        output_schema = schemas.AssociateTransitGatewayPolicyTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateTransitGatewayRouteTable(input, options)
    return self:invokeOperation(input, {
        name = "AssociateTransitGatewayRouteTable",
        input_schema = schemas.AssociateTransitGatewayRouteTableInput,
        output_schema = schemas.AssociateTransitGatewayRouteTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateTrunkInterface(input, options)
    return self:invokeOperation(input, {
        name = "AssociateTrunkInterface",
        input_schema = schemas.AssociateTrunkInterfaceInput,
        output_schema = schemas.AssociateTrunkInterfaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateVpcCidrBlock(input, options)
    return self:invokeOperation(input, {
        name = "AssociateVpcCidrBlock",
        input_schema = schemas.AssociateVpcCidrBlockInput,
        output_schema = schemas.AssociateVpcCidrBlockOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachClassicLinkVpc(input, options)
    return self:invokeOperation(input, {
        name = "AttachClassicLinkVpc",
        input_schema = schemas.AttachClassicLinkVpcInput,
        output_schema = schemas.AttachClassicLinkVpcOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachInternetGateway(input, options)
    return self:invokeOperation(input, {
        name = "AttachInternetGateway",
        input_schema = schemas.AttachInternetGatewayInput,
        output_schema = schemas.AttachInternetGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachNetworkInterface(input, options)
    return self:invokeOperation(input, {
        name = "AttachNetworkInterface",
        input_schema = schemas.AttachNetworkInterfaceInput,
        output_schema = schemas.AttachNetworkInterfaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachVerifiedAccessTrustProvider(input, options)
    return self:invokeOperation(input, {
        name = "AttachVerifiedAccessTrustProvider",
        input_schema = schemas.AttachVerifiedAccessTrustProviderInput,
        output_schema = schemas.AttachVerifiedAccessTrustProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachVolume(input, options)
    return self:invokeOperation(input, {
        name = "AttachVolume",
        input_schema = schemas.AttachVolumeInput,
        output_schema = schemas.AttachVolumeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachVpnGateway(input, options)
    return self:invokeOperation(input, {
        name = "AttachVpnGateway",
        input_schema = schemas.AttachVpnGatewayInput,
        output_schema = schemas.AttachVpnGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:authorizeClientVpnIngress(input, options)
    return self:invokeOperation(input, {
        name = "AuthorizeClientVpnIngress",
        input_schema = schemas.AuthorizeClientVpnIngressInput,
        output_schema = schemas.AuthorizeClientVpnIngressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:authorizeSecurityGroupEgress(input, options)
    return self:invokeOperation(input, {
        name = "AuthorizeSecurityGroupEgress",
        input_schema = schemas.AuthorizeSecurityGroupEgressInput,
        output_schema = schemas.AuthorizeSecurityGroupEgressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:authorizeSecurityGroupIngress(input, options)
    return self:invokeOperation(input, {
        name = "AuthorizeSecurityGroupIngress",
        input_schema = schemas.AuthorizeSecurityGroupIngressInput,
        output_schema = schemas.AuthorizeSecurityGroupIngressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:bundleInstance(input, options)
    return self:invokeOperation(input, {
        name = "BundleInstance",
        input_schema = schemas.BundleInstanceInput,
        output_schema = schemas.BundleInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelBundleTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelBundleTask",
        input_schema = schemas.CancelBundleTaskInput,
        output_schema = schemas.CancelBundleTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelCapacityReservation(input, options)
    return self:invokeOperation(input, {
        name = "CancelCapacityReservation",
        input_schema = schemas.CancelCapacityReservationInput,
        output_schema = schemas.CancelCapacityReservationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelCapacityReservationFleets(input, options)
    return self:invokeOperation(input, {
        name = "CancelCapacityReservationFleets",
        input_schema = schemas.CancelCapacityReservationFleetsInput,
        output_schema = schemas.CancelCapacityReservationFleetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelConversionTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelConversionTask",
        input_schema = schemas.CancelConversionTaskInput,
        output_schema = schemas.CancelConversionTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelDeclarativePoliciesReport(input, options)
    return self:invokeOperation(input, {
        name = "CancelDeclarativePoliciesReport",
        input_schema = schemas.CancelDeclarativePoliciesReportInput,
        output_schema = schemas.CancelDeclarativePoliciesReportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelExportTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelExportTask",
        input_schema = schemas.CancelExportTaskInput,
        output_schema = schemas.CancelExportTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelImageLaunchPermission(input, options)
    return self:invokeOperation(input, {
        name = "CancelImageLaunchPermission",
        input_schema = schemas.CancelImageLaunchPermissionInput,
        output_schema = schemas.CancelImageLaunchPermissionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelImportTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelImportTask",
        input_schema = schemas.CancelImportTaskInput,
        output_schema = schemas.CancelImportTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelReservedInstancesListing(input, options)
    return self:invokeOperation(input, {
        name = "CancelReservedInstancesListing",
        input_schema = schemas.CancelReservedInstancesListingInput,
        output_schema = schemas.CancelReservedInstancesListingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelSpotFleetRequests(input, options)
    return self:invokeOperation(input, {
        name = "CancelSpotFleetRequests",
        input_schema = schemas.CancelSpotFleetRequestsInput,
        output_schema = schemas.CancelSpotFleetRequestsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelSpotInstanceRequests(input, options)
    return self:invokeOperation(input, {
        name = "CancelSpotInstanceRequests",
        input_schema = schemas.CancelSpotInstanceRequestsInput,
        output_schema = schemas.CancelSpotInstanceRequestsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:confirmProductInstance(input, options)
    return self:invokeOperation(input, {
        name = "ConfirmProductInstance",
        input_schema = schemas.ConfirmProductInstanceInput,
        output_schema = schemas.ConfirmProductInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:copyFpgaImage(input, options)
    return self:invokeOperation(input, {
        name = "CopyFpgaImage",
        input_schema = schemas.CopyFpgaImageInput,
        output_schema = schemas.CopyFpgaImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:copyImage(input, options)
    return self:invokeOperation(input, {
        name = "CopyImage",
        input_schema = schemas.CopyImageInput,
        output_schema = schemas.CopyImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:copySnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CopySnapshot",
        input_schema = schemas.CopySnapshotInput,
        output_schema = schemas.CopySnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:copyVolumes(input, options)
    return self:invokeOperation(input, {
        name = "CopyVolumes",
        input_schema = schemas.CopyVolumesInput,
        output_schema = schemas.CopyVolumesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCapacityManagerDataExport(input, options)
    return self:invokeOperation(input, {
        name = "CreateCapacityManagerDataExport",
        input_schema = schemas.CreateCapacityManagerDataExportInput,
        output_schema = schemas.CreateCapacityManagerDataExportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCapacityReservation(input, options)
    return self:invokeOperation(input, {
        name = "CreateCapacityReservation",
        input_schema = schemas.CreateCapacityReservationInput,
        output_schema = schemas.CreateCapacityReservationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCapacityReservationBySplitting(input, options)
    return self:invokeOperation(input, {
        name = "CreateCapacityReservationBySplitting",
        input_schema = schemas.CreateCapacityReservationBySplittingInput,
        output_schema = schemas.CreateCapacityReservationBySplittingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCapacityReservationFleet(input, options)
    return self:invokeOperation(input, {
        name = "CreateCapacityReservationFleet",
        input_schema = schemas.CreateCapacityReservationFleetInput,
        output_schema = schemas.CreateCapacityReservationFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCarrierGateway(input, options)
    return self:invokeOperation(input, {
        name = "CreateCarrierGateway",
        input_schema = schemas.CreateCarrierGatewayInput,
        output_schema = schemas.CreateCarrierGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createClientVpnEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateClientVpnEndpoint",
        input_schema = schemas.CreateClientVpnEndpointInput,
        output_schema = schemas.CreateClientVpnEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createClientVpnRoute(input, options)
    return self:invokeOperation(input, {
        name = "CreateClientVpnRoute",
        input_schema = schemas.CreateClientVpnRouteInput,
        output_schema = schemas.CreateClientVpnRouteOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCoipCidr(input, options)
    return self:invokeOperation(input, {
        name = "CreateCoipCidr",
        input_schema = schemas.CreateCoipCidrInput,
        output_schema = schemas.CreateCoipCidrOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCoipPool(input, options)
    return self:invokeOperation(input, {
        name = "CreateCoipPool",
        input_schema = schemas.CreateCoipPoolInput,
        output_schema = schemas.CreateCoipPoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCustomerGateway(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomerGateway",
        input_schema = schemas.CreateCustomerGatewayInput,
        output_schema = schemas.CreateCustomerGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDefaultSubnet(input, options)
    return self:invokeOperation(input, {
        name = "CreateDefaultSubnet",
        input_schema = schemas.CreateDefaultSubnetInput,
        output_schema = schemas.CreateDefaultSubnetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDefaultVpc(input, options)
    return self:invokeOperation(input, {
        name = "CreateDefaultVpc",
        input_schema = schemas.CreateDefaultVpcInput,
        output_schema = schemas.CreateDefaultVpcOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDelegateMacVolumeOwnershipTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateDelegateMacVolumeOwnershipTask",
        input_schema = schemas.CreateDelegateMacVolumeOwnershipTaskInput,
        output_schema = schemas.CreateDelegateMacVolumeOwnershipTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDhcpOptions(input, options)
    return self:invokeOperation(input, {
        name = "CreateDhcpOptions",
        input_schema = schemas.CreateDhcpOptionsInput,
        output_schema = schemas.CreateDhcpOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEgressOnlyInternetGateway(input, options)
    return self:invokeOperation(input, {
        name = "CreateEgressOnlyInternetGateway",
        input_schema = schemas.CreateEgressOnlyInternetGatewayInput,
        output_schema = schemas.CreateEgressOnlyInternetGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFleet(input, options)
    return self:invokeOperation(input, {
        name = "CreateFleet",
        input_schema = schemas.CreateFleetInput,
        output_schema = schemas.CreateFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFlowLogs(input, options)
    return self:invokeOperation(input, {
        name = "CreateFlowLogs",
        input_schema = schemas.CreateFlowLogsInput,
        output_schema = schemas.CreateFlowLogsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFpgaImage(input, options)
    return self:invokeOperation(input, {
        name = "CreateFpgaImage",
        input_schema = schemas.CreateFpgaImageInput,
        output_schema = schemas.CreateFpgaImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createImage(input, options)
    return self:invokeOperation(input, {
        name = "CreateImage",
        input_schema = schemas.CreateImageInput,
        output_schema = schemas.CreateImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createImageUsageReport(input, options)
    return self:invokeOperation(input, {
        name = "CreateImageUsageReport",
        input_schema = schemas.CreateImageUsageReportInput,
        output_schema = schemas.CreateImageUsageReportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInstanceConnectEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateInstanceConnectEndpoint",
        input_schema = schemas.CreateInstanceConnectEndpointInput,
        output_schema = schemas.CreateInstanceConnectEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInstanceEventWindow(input, options)
    return self:invokeOperation(input, {
        name = "CreateInstanceEventWindow",
        input_schema = schemas.CreateInstanceEventWindowInput,
        output_schema = schemas.CreateInstanceEventWindowOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInstanceExportTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateInstanceExportTask",
        input_schema = schemas.CreateInstanceExportTaskInput,
        output_schema = schemas.CreateInstanceExportTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInternetGateway(input, options)
    return self:invokeOperation(input, {
        name = "CreateInternetGateway",
        input_schema = schemas.CreateInternetGatewayInput,
        output_schema = schemas.CreateInternetGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInterruptibleCapacityReservationAllocation(input, options)
    return self:invokeOperation(input, {
        name = "CreateInterruptibleCapacityReservationAllocation",
        input_schema = schemas.CreateInterruptibleCapacityReservationAllocationInput,
        output_schema = schemas.CreateInterruptibleCapacityReservationAllocationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIpam(input, options)
    return self:invokeOperation(input, {
        name = "CreateIpam",
        input_schema = schemas.CreateIpamInput,
        output_schema = schemas.CreateIpamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIpamExternalResourceVerificationToken(input, options)
    return self:invokeOperation(input, {
        name = "CreateIpamExternalResourceVerificationToken",
        input_schema = schemas.CreateIpamExternalResourceVerificationTokenInput,
        output_schema = schemas.CreateIpamExternalResourceVerificationTokenOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIpamPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateIpamPolicy",
        input_schema = schemas.CreateIpamPolicyInput,
        output_schema = schemas.CreateIpamPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIpamPool(input, options)
    return self:invokeOperation(input, {
        name = "CreateIpamPool",
        input_schema = schemas.CreateIpamPoolInput,
        output_schema = schemas.CreateIpamPoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIpamPrefixListResolver(input, options)
    return self:invokeOperation(input, {
        name = "CreateIpamPrefixListResolver",
        input_schema = schemas.CreateIpamPrefixListResolverInput,
        output_schema = schemas.CreateIpamPrefixListResolverOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIpamPrefixListResolverTarget(input, options)
    return self:invokeOperation(input, {
        name = "CreateIpamPrefixListResolverTarget",
        input_schema = schemas.CreateIpamPrefixListResolverTargetInput,
        output_schema = schemas.CreateIpamPrefixListResolverTargetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIpamResourceDiscovery(input, options)
    return self:invokeOperation(input, {
        name = "CreateIpamResourceDiscovery",
        input_schema = schemas.CreateIpamResourceDiscoveryInput,
        output_schema = schemas.CreateIpamResourceDiscoveryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIpamScope(input, options)
    return self:invokeOperation(input, {
        name = "CreateIpamScope",
        input_schema = schemas.CreateIpamScopeInput,
        output_schema = schemas.CreateIpamScopeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createKeyPair(input, options)
    return self:invokeOperation(input, {
        name = "CreateKeyPair",
        input_schema = schemas.CreateKeyPairInput,
        output_schema = schemas.CreateKeyPairOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLaunchTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateLaunchTemplate",
        input_schema = schemas.CreateLaunchTemplateInput,
        output_schema = schemas.CreateLaunchTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLaunchTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateLaunchTemplateVersion",
        input_schema = schemas.CreateLaunchTemplateVersionInput,
        output_schema = schemas.CreateLaunchTemplateVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLocalGatewayRoute(input, options)
    return self:invokeOperation(input, {
        name = "CreateLocalGatewayRoute",
        input_schema = schemas.CreateLocalGatewayRouteInput,
        output_schema = schemas.CreateLocalGatewayRouteOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLocalGatewayRouteTable(input, options)
    return self:invokeOperation(input, {
        name = "CreateLocalGatewayRouteTable",
        input_schema = schemas.CreateLocalGatewayRouteTableInput,
        output_schema = schemas.CreateLocalGatewayRouteTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLocalGatewayRouteTableVirtualInterfaceGroupAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociation",
        input_schema = schemas.CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationInput,
        output_schema = schemas.CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLocalGatewayRouteTableVpcAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateLocalGatewayRouteTableVpcAssociation",
        input_schema = schemas.CreateLocalGatewayRouteTableVpcAssociationInput,
        output_schema = schemas.CreateLocalGatewayRouteTableVpcAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLocalGatewayVirtualInterface(input, options)
    return self:invokeOperation(input, {
        name = "CreateLocalGatewayVirtualInterface",
        input_schema = schemas.CreateLocalGatewayVirtualInterfaceInput,
        output_schema = schemas.CreateLocalGatewayVirtualInterfaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLocalGatewayVirtualInterfaceGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateLocalGatewayVirtualInterfaceGroup",
        input_schema = schemas.CreateLocalGatewayVirtualInterfaceGroupInput,
        output_schema = schemas.CreateLocalGatewayVirtualInterfaceGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMacSystemIntegrityProtectionModificationTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateMacSystemIntegrityProtectionModificationTask",
        input_schema = schemas.CreateMacSystemIntegrityProtectionModificationTaskInput,
        output_schema = schemas.CreateMacSystemIntegrityProtectionModificationTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createManagedPrefixList(input, options)
    return self:invokeOperation(input, {
        name = "CreateManagedPrefixList",
        input_schema = schemas.CreateManagedPrefixListInput,
        output_schema = schemas.CreateManagedPrefixListOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNatGateway(input, options)
    return self:invokeOperation(input, {
        name = "CreateNatGateway",
        input_schema = schemas.CreateNatGatewayInput,
        output_schema = schemas.CreateNatGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNetworkAcl(input, options)
    return self:invokeOperation(input, {
        name = "CreateNetworkAcl",
        input_schema = schemas.CreateNetworkAclInput,
        output_schema = schemas.CreateNetworkAclOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNetworkAclEntry(input, options)
    return self:invokeOperation(input, {
        name = "CreateNetworkAclEntry",
        input_schema = schemas.CreateNetworkAclEntryInput,
        output_schema = schemas.CreateNetworkAclEntryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNetworkInsightsAccessScope(input, options)
    return self:invokeOperation(input, {
        name = "CreateNetworkInsightsAccessScope",
        input_schema = schemas.CreateNetworkInsightsAccessScopeInput,
        output_schema = schemas.CreateNetworkInsightsAccessScopeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNetworkInsightsPath(input, options)
    return self:invokeOperation(input, {
        name = "CreateNetworkInsightsPath",
        input_schema = schemas.CreateNetworkInsightsPathInput,
        output_schema = schemas.CreateNetworkInsightsPathOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNetworkInterface(input, options)
    return self:invokeOperation(input, {
        name = "CreateNetworkInterface",
        input_schema = schemas.CreateNetworkInterfaceInput,
        output_schema = schemas.CreateNetworkInterfaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNetworkInterfacePermission(input, options)
    return self:invokeOperation(input, {
        name = "CreateNetworkInterfacePermission",
        input_schema = schemas.CreateNetworkInterfacePermissionInput,
        output_schema = schemas.CreateNetworkInterfacePermissionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPlacementGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreatePlacementGroup",
        input_schema = schemas.CreatePlacementGroupInput,
        output_schema = schemas.CreatePlacementGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPublicIpv4Pool(input, options)
    return self:invokeOperation(input, {
        name = "CreatePublicIpv4Pool",
        input_schema = schemas.CreatePublicIpv4PoolInput,
        output_schema = schemas.CreatePublicIpv4PoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createReplaceRootVolumeTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateReplaceRootVolumeTask",
        input_schema = schemas.CreateReplaceRootVolumeTaskInput,
        output_schema = schemas.CreateReplaceRootVolumeTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createReservedInstancesListing(input, options)
    return self:invokeOperation(input, {
        name = "CreateReservedInstancesListing",
        input_schema = schemas.CreateReservedInstancesListingInput,
        output_schema = schemas.CreateReservedInstancesListingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRestoreImageTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateRestoreImageTask",
        input_schema = schemas.CreateRestoreImageTaskInput,
        output_schema = schemas.CreateRestoreImageTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRoute(input, options)
    return self:invokeOperation(input, {
        name = "CreateRoute",
        input_schema = schemas.CreateRouteInput,
        output_schema = schemas.CreateRouteOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRouteServer(input, options)
    return self:invokeOperation(input, {
        name = "CreateRouteServer",
        input_schema = schemas.CreateRouteServerInput,
        output_schema = schemas.CreateRouteServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRouteServerEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateRouteServerEndpoint",
        input_schema = schemas.CreateRouteServerEndpointInput,
        output_schema = schemas.CreateRouteServerEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRouteServerPeer(input, options)
    return self:invokeOperation(input, {
        name = "CreateRouteServerPeer",
        input_schema = schemas.CreateRouteServerPeerInput,
        output_schema = schemas.CreateRouteServerPeerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRouteTable(input, options)
    return self:invokeOperation(input, {
        name = "CreateRouteTable",
        input_schema = schemas.CreateRouteTableInput,
        output_schema = schemas.CreateRouteTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSecondaryNetwork(input, options)
    return self:invokeOperation(input, {
        name = "CreateSecondaryNetwork",
        input_schema = schemas.CreateSecondaryNetworkInput,
        output_schema = schemas.CreateSecondaryNetworkOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSecondarySubnet(input, options)
    return self:invokeOperation(input, {
        name = "CreateSecondarySubnet",
        input_schema = schemas.CreateSecondarySubnetInput,
        output_schema = schemas.CreateSecondarySubnetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateSecurityGroup",
        input_schema = schemas.CreateSecurityGroupInput,
        output_schema = schemas.CreateSecurityGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateSnapshot",
        input_schema = schemas.CreateSnapshotInput,
        output_schema = schemas.CreateSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "CreateSnapshots",
        input_schema = schemas.CreateSnapshotsInput,
        output_schema = schemas.CreateSnapshotsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSpotDatafeedSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateSpotDatafeedSubscription",
        input_schema = schemas.CreateSpotDatafeedSubscriptionInput,
        output_schema = schemas.CreateSpotDatafeedSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStoreImageTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateStoreImageTask",
        input_schema = schemas.CreateStoreImageTaskInput,
        output_schema = schemas.CreateStoreImageTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSubnet(input, options)
    return self:invokeOperation(input, {
        name = "CreateSubnet",
        input_schema = schemas.CreateSubnetInput,
        output_schema = schemas.CreateSubnetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSubnetCidrReservation(input, options)
    return self:invokeOperation(input, {
        name = "CreateSubnetCidrReservation",
        input_schema = schemas.CreateSubnetCidrReservationInput,
        output_schema = schemas.CreateSubnetCidrReservationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTags(input, options)
    return self:invokeOperation(input, {
        name = "CreateTags",
        input_schema = schemas.CreateTagsInput,
        output_schema = schemas.CreateTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTrafficMirrorFilter(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrafficMirrorFilter",
        input_schema = schemas.CreateTrafficMirrorFilterInput,
        output_schema = schemas.CreateTrafficMirrorFilterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTrafficMirrorFilterRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrafficMirrorFilterRule",
        input_schema = schemas.CreateTrafficMirrorFilterRuleInput,
        output_schema = schemas.CreateTrafficMirrorFilterRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTrafficMirrorSession(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrafficMirrorSession",
        input_schema = schemas.CreateTrafficMirrorSessionInput,
        output_schema = schemas.CreateTrafficMirrorSessionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTrafficMirrorTarget(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrafficMirrorTarget",
        input_schema = schemas.CreateTrafficMirrorTargetInput,
        output_schema = schemas.CreateTrafficMirrorTargetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTransitGateway(input, options)
    return self:invokeOperation(input, {
        name = "CreateTransitGateway",
        input_schema = schemas.CreateTransitGatewayInput,
        output_schema = schemas.CreateTransitGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTransitGatewayConnect(input, options)
    return self:invokeOperation(input, {
        name = "CreateTransitGatewayConnect",
        input_schema = schemas.CreateTransitGatewayConnectInput,
        output_schema = schemas.CreateTransitGatewayConnectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTransitGatewayConnectPeer(input, options)
    return self:invokeOperation(input, {
        name = "CreateTransitGatewayConnectPeer",
        input_schema = schemas.CreateTransitGatewayConnectPeerInput,
        output_schema = schemas.CreateTransitGatewayConnectPeerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTransitGatewayMeteringPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateTransitGatewayMeteringPolicy",
        input_schema = schemas.CreateTransitGatewayMeteringPolicyInput,
        output_schema = schemas.CreateTransitGatewayMeteringPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTransitGatewayMeteringPolicyEntry(input, options)
    return self:invokeOperation(input, {
        name = "CreateTransitGatewayMeteringPolicyEntry",
        input_schema = schemas.CreateTransitGatewayMeteringPolicyEntryInput,
        output_schema = schemas.CreateTransitGatewayMeteringPolicyEntryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTransitGatewayMulticastDomain(input, options)
    return self:invokeOperation(input, {
        name = "CreateTransitGatewayMulticastDomain",
        input_schema = schemas.CreateTransitGatewayMulticastDomainInput,
        output_schema = schemas.CreateTransitGatewayMulticastDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTransitGatewayPeeringAttachment(input, options)
    return self:invokeOperation(input, {
        name = "CreateTransitGatewayPeeringAttachment",
        input_schema = schemas.CreateTransitGatewayPeeringAttachmentInput,
        output_schema = schemas.CreateTransitGatewayPeeringAttachmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTransitGatewayPolicyTable(input, options)
    return self:invokeOperation(input, {
        name = "CreateTransitGatewayPolicyTable",
        input_schema = schemas.CreateTransitGatewayPolicyTableInput,
        output_schema = schemas.CreateTransitGatewayPolicyTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTransitGatewayPrefixListReference(input, options)
    return self:invokeOperation(input, {
        name = "CreateTransitGatewayPrefixListReference",
        input_schema = schemas.CreateTransitGatewayPrefixListReferenceInput,
        output_schema = schemas.CreateTransitGatewayPrefixListReferenceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTransitGatewayRoute(input, options)
    return self:invokeOperation(input, {
        name = "CreateTransitGatewayRoute",
        input_schema = schemas.CreateTransitGatewayRouteInput,
        output_schema = schemas.CreateTransitGatewayRouteOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTransitGatewayRouteTable(input, options)
    return self:invokeOperation(input, {
        name = "CreateTransitGatewayRouteTable",
        input_schema = schemas.CreateTransitGatewayRouteTableInput,
        output_schema = schemas.CreateTransitGatewayRouteTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTransitGatewayRouteTableAnnouncement(input, options)
    return self:invokeOperation(input, {
        name = "CreateTransitGatewayRouteTableAnnouncement",
        input_schema = schemas.CreateTransitGatewayRouteTableAnnouncementInput,
        output_schema = schemas.CreateTransitGatewayRouteTableAnnouncementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTransitGatewayVpcAttachment(input, options)
    return self:invokeOperation(input, {
        name = "CreateTransitGatewayVpcAttachment",
        input_schema = schemas.CreateTransitGatewayVpcAttachmentInput,
        output_schema = schemas.CreateTransitGatewayVpcAttachmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVerifiedAccessEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateVerifiedAccessEndpoint",
        input_schema = schemas.CreateVerifiedAccessEndpointInput,
        output_schema = schemas.CreateVerifiedAccessEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVerifiedAccessGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateVerifiedAccessGroup",
        input_schema = schemas.CreateVerifiedAccessGroupInput,
        output_schema = schemas.CreateVerifiedAccessGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVerifiedAccessInstance(input, options)
    return self:invokeOperation(input, {
        name = "CreateVerifiedAccessInstance",
        input_schema = schemas.CreateVerifiedAccessInstanceInput,
        output_schema = schemas.CreateVerifiedAccessInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVerifiedAccessTrustProvider(input, options)
    return self:invokeOperation(input, {
        name = "CreateVerifiedAccessTrustProvider",
        input_schema = schemas.CreateVerifiedAccessTrustProviderInput,
        output_schema = schemas.CreateVerifiedAccessTrustProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVolume(input, options)
    return self:invokeOperation(input, {
        name = "CreateVolume",
        input_schema = schemas.CreateVolumeInput,
        output_schema = schemas.CreateVolumeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVpc(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpc",
        input_schema = schemas.CreateVpcInput,
        output_schema = schemas.CreateVpcOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVpcBlockPublicAccessExclusion(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcBlockPublicAccessExclusion",
        input_schema = schemas.CreateVpcBlockPublicAccessExclusionInput,
        output_schema = schemas.CreateVpcBlockPublicAccessExclusionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVpcEncryptionControl(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcEncryptionControl",
        input_schema = schemas.CreateVpcEncryptionControlInput,
        output_schema = schemas.CreateVpcEncryptionControlOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVpcEndpointConnectionNotification(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcEndpointConnectionNotification",
        input_schema = schemas.CreateVpcEndpointConnectionNotificationInput,
        output_schema = schemas.CreateVpcEndpointConnectionNotificationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVpcEndpointServiceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcEndpointServiceConfiguration",
        input_schema = schemas.CreateVpcEndpointServiceConfigurationInput,
        output_schema = schemas.CreateVpcEndpointServiceConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVpcPeeringConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcPeeringConnection",
        input_schema = schemas.CreateVpcPeeringConnectionInput,
        output_schema = schemas.CreateVpcPeeringConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVpnConcentrator(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpnConcentrator",
        input_schema = schemas.CreateVpnConcentratorInput,
        output_schema = schemas.CreateVpnConcentratorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVpnConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpnConnection",
        input_schema = schemas.CreateVpnConnectionInput,
        output_schema = schemas.CreateVpnConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVpnConnectionRoute(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpnConnectionRoute",
        input_schema = schemas.CreateVpnConnectionRouteInput,
        output_schema = schemas.CreateVpnConnectionRouteOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVpnGateway(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpnGateway",
        input_schema = schemas.CreateVpnGatewayInput,
        output_schema = schemas.CreateVpnGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCapacityManagerDataExport(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCapacityManagerDataExport",
        input_schema = schemas.DeleteCapacityManagerDataExportInput,
        output_schema = schemas.DeleteCapacityManagerDataExportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCarrierGateway(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCarrierGateway",
        input_schema = schemas.DeleteCarrierGatewayInput,
        output_schema = schemas.DeleteCarrierGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteClientVpnEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteClientVpnEndpoint",
        input_schema = schemas.DeleteClientVpnEndpointInput,
        output_schema = schemas.DeleteClientVpnEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteClientVpnRoute(input, options)
    return self:invokeOperation(input, {
        name = "DeleteClientVpnRoute",
        input_schema = schemas.DeleteClientVpnRouteInput,
        output_schema = schemas.DeleteClientVpnRouteOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCoipCidr(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCoipCidr",
        input_schema = schemas.DeleteCoipCidrInput,
        output_schema = schemas.DeleteCoipCidrOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCoipPool(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCoipPool",
        input_schema = schemas.DeleteCoipPoolInput,
        output_schema = schemas.DeleteCoipPoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCustomerGateway(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomerGateway",
        input_schema = schemas.DeleteCustomerGatewayInput,
        output_schema = schemas.DeleteCustomerGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDhcpOptions(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDhcpOptions",
        input_schema = schemas.DeleteDhcpOptionsInput,
        output_schema = schemas.DeleteDhcpOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEgressOnlyInternetGateway(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEgressOnlyInternetGateway",
        input_schema = schemas.DeleteEgressOnlyInternetGatewayInput,
        output_schema = schemas.DeleteEgressOnlyInternetGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFleets(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFleets",
        input_schema = schemas.DeleteFleetsInput,
        output_schema = schemas.DeleteFleetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFlowLogs(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFlowLogs",
        input_schema = schemas.DeleteFlowLogsInput,
        output_schema = schemas.DeleteFlowLogsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFpgaImage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFpgaImage",
        input_schema = schemas.DeleteFpgaImageInput,
        output_schema = schemas.DeleteFpgaImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteImageUsageReport(input, options)
    return self:invokeOperation(input, {
        name = "DeleteImageUsageReport",
        input_schema = schemas.DeleteImageUsageReportInput,
        output_schema = schemas.DeleteImageUsageReportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInstanceConnectEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInstanceConnectEndpoint",
        input_schema = schemas.DeleteInstanceConnectEndpointInput,
        output_schema = schemas.DeleteInstanceConnectEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInstanceEventWindow(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInstanceEventWindow",
        input_schema = schemas.DeleteInstanceEventWindowInput,
        output_schema = schemas.DeleteInstanceEventWindowOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInternetGateway(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInternetGateway",
        input_schema = schemas.DeleteInternetGatewayInput,
        output_schema = schemas.DeleteInternetGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIpam(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIpam",
        input_schema = schemas.DeleteIpamInput,
        output_schema = schemas.DeleteIpamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIpamExternalResourceVerificationToken(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIpamExternalResourceVerificationToken",
        input_schema = schemas.DeleteIpamExternalResourceVerificationTokenInput,
        output_schema = schemas.DeleteIpamExternalResourceVerificationTokenOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIpamPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIpamPolicy",
        input_schema = schemas.DeleteIpamPolicyInput,
        output_schema = schemas.DeleteIpamPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIpamPool(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIpamPool",
        input_schema = schemas.DeleteIpamPoolInput,
        output_schema = schemas.DeleteIpamPoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIpamPrefixListResolver(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIpamPrefixListResolver",
        input_schema = schemas.DeleteIpamPrefixListResolverInput,
        output_schema = schemas.DeleteIpamPrefixListResolverOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIpamPrefixListResolverTarget(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIpamPrefixListResolverTarget",
        input_schema = schemas.DeleteIpamPrefixListResolverTargetInput,
        output_schema = schemas.DeleteIpamPrefixListResolverTargetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIpamResourceDiscovery(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIpamResourceDiscovery",
        input_schema = schemas.DeleteIpamResourceDiscoveryInput,
        output_schema = schemas.DeleteIpamResourceDiscoveryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIpamScope(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIpamScope",
        input_schema = schemas.DeleteIpamScopeInput,
        output_schema = schemas.DeleteIpamScopeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteKeyPair(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKeyPair",
        input_schema = schemas.DeleteKeyPairInput,
        output_schema = schemas.DeleteKeyPairOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLaunchTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLaunchTemplate",
        input_schema = schemas.DeleteLaunchTemplateInput,
        output_schema = schemas.DeleteLaunchTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLaunchTemplateVersions(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLaunchTemplateVersions",
        input_schema = schemas.DeleteLaunchTemplateVersionsInput,
        output_schema = schemas.DeleteLaunchTemplateVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLocalGatewayRoute(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLocalGatewayRoute",
        input_schema = schemas.DeleteLocalGatewayRouteInput,
        output_schema = schemas.DeleteLocalGatewayRouteOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLocalGatewayRouteTable(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLocalGatewayRouteTable",
        input_schema = schemas.DeleteLocalGatewayRouteTableInput,
        output_schema = schemas.DeleteLocalGatewayRouteTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation",
        input_schema = schemas.DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationInput,
        output_schema = schemas.DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLocalGatewayRouteTableVpcAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLocalGatewayRouteTableVpcAssociation",
        input_schema = schemas.DeleteLocalGatewayRouteTableVpcAssociationInput,
        output_schema = schemas.DeleteLocalGatewayRouteTableVpcAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLocalGatewayVirtualInterface(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLocalGatewayVirtualInterface",
        input_schema = schemas.DeleteLocalGatewayVirtualInterfaceInput,
        output_schema = schemas.DeleteLocalGatewayVirtualInterfaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLocalGatewayVirtualInterfaceGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLocalGatewayVirtualInterfaceGroup",
        input_schema = schemas.DeleteLocalGatewayVirtualInterfaceGroupInput,
        output_schema = schemas.DeleteLocalGatewayVirtualInterfaceGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteManagedPrefixList(input, options)
    return self:invokeOperation(input, {
        name = "DeleteManagedPrefixList",
        input_schema = schemas.DeleteManagedPrefixListInput,
        output_schema = schemas.DeleteManagedPrefixListOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNatGateway(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNatGateway",
        input_schema = schemas.DeleteNatGatewayInput,
        output_schema = schemas.DeleteNatGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNetworkAcl(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNetworkAcl",
        input_schema = schemas.DeleteNetworkAclInput,
        output_schema = schemas.DeleteNetworkAclOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNetworkAclEntry(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNetworkAclEntry",
        input_schema = schemas.DeleteNetworkAclEntryInput,
        output_schema = schemas.DeleteNetworkAclEntryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNetworkInsightsAccessScope(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNetworkInsightsAccessScope",
        input_schema = schemas.DeleteNetworkInsightsAccessScopeInput,
        output_schema = schemas.DeleteNetworkInsightsAccessScopeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNetworkInsightsAccessScopeAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNetworkInsightsAccessScopeAnalysis",
        input_schema = schemas.DeleteNetworkInsightsAccessScopeAnalysisInput,
        output_schema = schemas.DeleteNetworkInsightsAccessScopeAnalysisOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNetworkInsightsAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNetworkInsightsAnalysis",
        input_schema = schemas.DeleteNetworkInsightsAnalysisInput,
        output_schema = schemas.DeleteNetworkInsightsAnalysisOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNetworkInsightsPath(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNetworkInsightsPath",
        input_schema = schemas.DeleteNetworkInsightsPathInput,
        output_schema = schemas.DeleteNetworkInsightsPathOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNetworkInterface(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNetworkInterface",
        input_schema = schemas.DeleteNetworkInterfaceInput,
        output_schema = schemas.DeleteNetworkInterfaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNetworkInterfacePermission(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNetworkInterfacePermission",
        input_schema = schemas.DeleteNetworkInterfacePermissionInput,
        output_schema = schemas.DeleteNetworkInterfacePermissionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePlacementGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeletePlacementGroup",
        input_schema = schemas.DeletePlacementGroupInput,
        output_schema = schemas.DeletePlacementGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePublicIpv4Pool(input, options)
    return self:invokeOperation(input, {
        name = "DeletePublicIpv4Pool",
        input_schema = schemas.DeletePublicIpv4PoolInput,
        output_schema = schemas.DeletePublicIpv4PoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteQueuedReservedInstances(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQueuedReservedInstances",
        input_schema = schemas.DeleteQueuedReservedInstancesInput,
        output_schema = schemas.DeleteQueuedReservedInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRoute(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRoute",
        input_schema = schemas.DeleteRouteInput,
        output_schema = schemas.DeleteRouteOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRouteServer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRouteServer",
        input_schema = schemas.DeleteRouteServerInput,
        output_schema = schemas.DeleteRouteServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRouteServerEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRouteServerEndpoint",
        input_schema = schemas.DeleteRouteServerEndpointInput,
        output_schema = schemas.DeleteRouteServerEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRouteServerPeer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRouteServerPeer",
        input_schema = schemas.DeleteRouteServerPeerInput,
        output_schema = schemas.DeleteRouteServerPeerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRouteTable(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRouteTable",
        input_schema = schemas.DeleteRouteTableInput,
        output_schema = schemas.DeleteRouteTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSecondaryNetwork(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSecondaryNetwork",
        input_schema = schemas.DeleteSecondaryNetworkInput,
        output_schema = schemas.DeleteSecondaryNetworkOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSecondarySubnet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSecondarySubnet",
        input_schema = schemas.DeleteSecondarySubnetInput,
        output_schema = schemas.DeleteSecondarySubnetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSecurityGroup",
        input_schema = schemas.DeleteSecurityGroupInput,
        output_schema = schemas.DeleteSecurityGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSnapshot",
        input_schema = schemas.DeleteSnapshotInput,
        output_schema = schemas.DeleteSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSpotDatafeedSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSpotDatafeedSubscription",
        input_schema = schemas.DeleteSpotDatafeedSubscriptionInput,
        output_schema = schemas.DeleteSpotDatafeedSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSubnet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSubnet",
        input_schema = schemas.DeleteSubnetInput,
        output_schema = schemas.DeleteSubnetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSubnetCidrReservation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSubnetCidrReservation",
        input_schema = schemas.DeleteSubnetCidrReservationInput,
        output_schema = schemas.DeleteSubnetCidrReservationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTags(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTags",
        input_schema = schemas.DeleteTagsInput,
        output_schema = schemas.DeleteTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTrafficMirrorFilter(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrafficMirrorFilter",
        input_schema = schemas.DeleteTrafficMirrorFilterInput,
        output_schema = schemas.DeleteTrafficMirrorFilterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTrafficMirrorFilterRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrafficMirrorFilterRule",
        input_schema = schemas.DeleteTrafficMirrorFilterRuleInput,
        output_schema = schemas.DeleteTrafficMirrorFilterRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTrafficMirrorSession(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrafficMirrorSession",
        input_schema = schemas.DeleteTrafficMirrorSessionInput,
        output_schema = schemas.DeleteTrafficMirrorSessionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTrafficMirrorTarget(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrafficMirrorTarget",
        input_schema = schemas.DeleteTrafficMirrorTargetInput,
        output_schema = schemas.DeleteTrafficMirrorTargetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTransitGateway(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTransitGateway",
        input_schema = schemas.DeleteTransitGatewayInput,
        output_schema = schemas.DeleteTransitGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTransitGatewayClientVpnAttachment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTransitGatewayClientVpnAttachment",
        input_schema = schemas.DeleteTransitGatewayClientVpnAttachmentInput,
        output_schema = schemas.DeleteTransitGatewayClientVpnAttachmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTransitGatewayConnect(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTransitGatewayConnect",
        input_schema = schemas.DeleteTransitGatewayConnectInput,
        output_schema = schemas.DeleteTransitGatewayConnectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTransitGatewayConnectPeer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTransitGatewayConnectPeer",
        input_schema = schemas.DeleteTransitGatewayConnectPeerInput,
        output_schema = schemas.DeleteTransitGatewayConnectPeerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTransitGatewayMeteringPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTransitGatewayMeteringPolicy",
        input_schema = schemas.DeleteTransitGatewayMeteringPolicyInput,
        output_schema = schemas.DeleteTransitGatewayMeteringPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTransitGatewayMeteringPolicyEntry(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTransitGatewayMeteringPolicyEntry",
        input_schema = schemas.DeleteTransitGatewayMeteringPolicyEntryInput,
        output_schema = schemas.DeleteTransitGatewayMeteringPolicyEntryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTransitGatewayMulticastDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTransitGatewayMulticastDomain",
        input_schema = schemas.DeleteTransitGatewayMulticastDomainInput,
        output_schema = schemas.DeleteTransitGatewayMulticastDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTransitGatewayPeeringAttachment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTransitGatewayPeeringAttachment",
        input_schema = schemas.DeleteTransitGatewayPeeringAttachmentInput,
        output_schema = schemas.DeleteTransitGatewayPeeringAttachmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTransitGatewayPolicyTable(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTransitGatewayPolicyTable",
        input_schema = schemas.DeleteTransitGatewayPolicyTableInput,
        output_schema = schemas.DeleteTransitGatewayPolicyTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTransitGatewayPrefixListReference(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTransitGatewayPrefixListReference",
        input_schema = schemas.DeleteTransitGatewayPrefixListReferenceInput,
        output_schema = schemas.DeleteTransitGatewayPrefixListReferenceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTransitGatewayRoute(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTransitGatewayRoute",
        input_schema = schemas.DeleteTransitGatewayRouteInput,
        output_schema = schemas.DeleteTransitGatewayRouteOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTransitGatewayRouteTable(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTransitGatewayRouteTable",
        input_schema = schemas.DeleteTransitGatewayRouteTableInput,
        output_schema = schemas.DeleteTransitGatewayRouteTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTransitGatewayRouteTableAnnouncement(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTransitGatewayRouteTableAnnouncement",
        input_schema = schemas.DeleteTransitGatewayRouteTableAnnouncementInput,
        output_schema = schemas.DeleteTransitGatewayRouteTableAnnouncementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTransitGatewayVpcAttachment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTransitGatewayVpcAttachment",
        input_schema = schemas.DeleteTransitGatewayVpcAttachmentInput,
        output_schema = schemas.DeleteTransitGatewayVpcAttachmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVerifiedAccessEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVerifiedAccessEndpoint",
        input_schema = schemas.DeleteVerifiedAccessEndpointInput,
        output_schema = schemas.DeleteVerifiedAccessEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVerifiedAccessGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVerifiedAccessGroup",
        input_schema = schemas.DeleteVerifiedAccessGroupInput,
        output_schema = schemas.DeleteVerifiedAccessGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVerifiedAccessInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVerifiedAccessInstance",
        input_schema = schemas.DeleteVerifiedAccessInstanceInput,
        output_schema = schemas.DeleteVerifiedAccessInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVerifiedAccessTrustProvider(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVerifiedAccessTrustProvider",
        input_schema = schemas.DeleteVerifiedAccessTrustProviderInput,
        output_schema = schemas.DeleteVerifiedAccessTrustProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVolume(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVolume",
        input_schema = schemas.DeleteVolumeInput,
        output_schema = schemas.DeleteVolumeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVpc(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpc",
        input_schema = schemas.DeleteVpcInput,
        output_schema = schemas.DeleteVpcOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVpcBlockPublicAccessExclusion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcBlockPublicAccessExclusion",
        input_schema = schemas.DeleteVpcBlockPublicAccessExclusionInput,
        output_schema = schemas.DeleteVpcBlockPublicAccessExclusionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVpcEncryptionControl(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcEncryptionControl",
        input_schema = schemas.DeleteVpcEncryptionControlInput,
        output_schema = schemas.DeleteVpcEncryptionControlOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVpcEndpointConnectionNotifications(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcEndpointConnectionNotifications",
        input_schema = schemas.DeleteVpcEndpointConnectionNotificationsInput,
        output_schema = schemas.DeleteVpcEndpointConnectionNotificationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVpcEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcEndpoints",
        input_schema = schemas.DeleteVpcEndpointsInput,
        output_schema = schemas.DeleteVpcEndpointsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVpcEndpointServiceConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcEndpointServiceConfigurations",
        input_schema = schemas.DeleteVpcEndpointServiceConfigurationsInput,
        output_schema = schemas.DeleteVpcEndpointServiceConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVpcPeeringConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcPeeringConnection",
        input_schema = schemas.DeleteVpcPeeringConnectionInput,
        output_schema = schemas.DeleteVpcPeeringConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVpnConcentrator(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpnConcentrator",
        input_schema = schemas.DeleteVpnConcentratorInput,
        output_schema = schemas.DeleteVpnConcentratorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVpnConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpnConnection",
        input_schema = schemas.DeleteVpnConnectionInput,
        output_schema = schemas.DeleteVpnConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVpnConnectionRoute(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpnConnectionRoute",
        input_schema = schemas.DeleteVpnConnectionRouteInput,
        output_schema = schemas.DeleteVpnConnectionRouteOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVpnGateway(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpnGateway",
        input_schema = schemas.DeleteVpnGatewayInput,
        output_schema = schemas.DeleteVpnGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deprovisionByoipCidr(input, options)
    return self:invokeOperation(input, {
        name = "DeprovisionByoipCidr",
        input_schema = schemas.DeprovisionByoipCidrInput,
        output_schema = schemas.DeprovisionByoipCidrOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deprovisionIpamByoasn(input, options)
    return self:invokeOperation(input, {
        name = "DeprovisionIpamByoasn",
        input_schema = schemas.DeprovisionIpamByoasnInput,
        output_schema = schemas.DeprovisionIpamByoasnOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deprovisionIpamPoolCidr(input, options)
    return self:invokeOperation(input, {
        name = "DeprovisionIpamPoolCidr",
        input_schema = schemas.DeprovisionIpamPoolCidrInput,
        output_schema = schemas.DeprovisionIpamPoolCidrOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deprovisionPublicIpv4PoolCidr(input, options)
    return self:invokeOperation(input, {
        name = "DeprovisionPublicIpv4PoolCidr",
        input_schema = schemas.DeprovisionPublicIpv4PoolCidrInput,
        output_schema = schemas.DeprovisionPublicIpv4PoolCidrOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterImage(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterImage",
        input_schema = schemas.DeregisterImageInput,
        output_schema = schemas.DeregisterImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterInstanceEventNotificationAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterInstanceEventNotificationAttributes",
        input_schema = schemas.DeregisterInstanceEventNotificationAttributesInput,
        output_schema = schemas.DeregisterInstanceEventNotificationAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterTransitGatewayMulticastGroupMembers(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterTransitGatewayMulticastGroupMembers",
        input_schema = schemas.DeregisterTransitGatewayMulticastGroupMembersInput,
        output_schema = schemas.DeregisterTransitGatewayMulticastGroupMembersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterTransitGatewayMulticastGroupSources(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterTransitGatewayMulticastGroupSources",
        input_schema = schemas.DeregisterTransitGatewayMulticastGroupSourcesInput,
        output_schema = schemas.DeregisterTransitGatewayMulticastGroupSourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccountAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountAttributes",
        input_schema = schemas.DescribeAccountAttributesInput,
        output_schema = schemas.DescribeAccountAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAddresses(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAddresses",
        input_schema = schemas.DescribeAddressesInput,
        output_schema = schemas.DescribeAddressesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAddressesAttribute(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAddressesAttribute",
        input_schema = schemas.DescribeAddressesAttributeInput,
        output_schema = schemas.DescribeAddressesAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAddressTransfers(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAddressTransfers",
        input_schema = schemas.DescribeAddressTransfersInput,
        output_schema = schemas.DescribeAddressTransfersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAggregateIdFormat(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAggregateIdFormat",
        input_schema = schemas.DescribeAggregateIdFormatInput,
        output_schema = schemas.DescribeAggregateIdFormatOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAvailabilityZones(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAvailabilityZones",
        input_schema = schemas.DescribeAvailabilityZonesInput,
        output_schema = schemas.DescribeAvailabilityZonesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAwsNetworkPerformanceMetricSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAwsNetworkPerformanceMetricSubscriptions",
        input_schema = schemas.DescribeAwsNetworkPerformanceMetricSubscriptionsInput,
        output_schema = schemas.DescribeAwsNetworkPerformanceMetricSubscriptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBundleTasks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBundleTasks",
        input_schema = schemas.DescribeBundleTasksInput,
        output_schema = schemas.DescribeBundleTasksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeByoipCidrs(input, options)
    return self:invokeOperation(input, {
        name = "DescribeByoipCidrs",
        input_schema = schemas.DescribeByoipCidrsInput,
        output_schema = schemas.DescribeByoipCidrsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCapacityBlockExtensionHistory(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCapacityBlockExtensionHistory",
        input_schema = schemas.DescribeCapacityBlockExtensionHistoryInput,
        output_schema = schemas.DescribeCapacityBlockExtensionHistoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCapacityBlockExtensionOfferings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCapacityBlockExtensionOfferings",
        input_schema = schemas.DescribeCapacityBlockExtensionOfferingsInput,
        output_schema = schemas.DescribeCapacityBlockExtensionOfferingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCapacityBlockOfferings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCapacityBlockOfferings",
        input_schema = schemas.DescribeCapacityBlockOfferingsInput,
        output_schema = schemas.DescribeCapacityBlockOfferingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCapacityBlocks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCapacityBlocks",
        input_schema = schemas.DescribeCapacityBlocksInput,
        output_schema = schemas.DescribeCapacityBlocksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCapacityBlockStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCapacityBlockStatus",
        input_schema = schemas.DescribeCapacityBlockStatusInput,
        output_schema = schemas.DescribeCapacityBlockStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCapacityManagerDataExports(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCapacityManagerDataExports",
        input_schema = schemas.DescribeCapacityManagerDataExportsInput,
        output_schema = schemas.DescribeCapacityManagerDataExportsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCapacityReservationBillingRequests(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCapacityReservationBillingRequests",
        input_schema = schemas.DescribeCapacityReservationBillingRequestsInput,
        output_schema = schemas.DescribeCapacityReservationBillingRequestsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCapacityReservationFleets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCapacityReservationFleets",
        input_schema = schemas.DescribeCapacityReservationFleetsInput,
        output_schema = schemas.DescribeCapacityReservationFleetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCapacityReservations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCapacityReservations",
        input_schema = schemas.DescribeCapacityReservationsInput,
        output_schema = schemas.DescribeCapacityReservationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCapacityReservationTopology(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCapacityReservationTopology",
        input_schema = schemas.DescribeCapacityReservationTopologyInput,
        output_schema = schemas.DescribeCapacityReservationTopologyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCarrierGateways(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCarrierGateways",
        input_schema = schemas.DescribeCarrierGatewaysInput,
        output_schema = schemas.DescribeCarrierGatewaysOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClassicLinkInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClassicLinkInstances",
        input_schema = schemas.DescribeClassicLinkInstancesInput,
        output_schema = schemas.DescribeClassicLinkInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClientVpnAuthorizationRules(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClientVpnAuthorizationRules",
        input_schema = schemas.DescribeClientVpnAuthorizationRulesInput,
        output_schema = schemas.DescribeClientVpnAuthorizationRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClientVpnConnections(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClientVpnConnections",
        input_schema = schemas.DescribeClientVpnConnectionsInput,
        output_schema = schemas.DescribeClientVpnConnectionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClientVpnEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClientVpnEndpoints",
        input_schema = schemas.DescribeClientVpnEndpointsInput,
        output_schema = schemas.DescribeClientVpnEndpointsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClientVpnRoutes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClientVpnRoutes",
        input_schema = schemas.DescribeClientVpnRoutesInput,
        output_schema = schemas.DescribeClientVpnRoutesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClientVpnTargetNetworks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClientVpnTargetNetworks",
        input_schema = schemas.DescribeClientVpnTargetNetworksInput,
        output_schema = schemas.DescribeClientVpnTargetNetworksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCoipPools(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCoipPools",
        input_schema = schemas.DescribeCoipPoolsInput,
        output_schema = schemas.DescribeCoipPoolsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConversionTasks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConversionTasks",
        input_schema = schemas.DescribeConversionTasksInput,
        output_schema = schemas.DescribeConversionTasksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCustomerGateways(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCustomerGateways",
        input_schema = schemas.DescribeCustomerGatewaysInput,
        output_schema = schemas.DescribeCustomerGatewaysOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDeclarativePoliciesReports(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDeclarativePoliciesReports",
        input_schema = schemas.DescribeDeclarativePoliciesReportsInput,
        output_schema = schemas.DescribeDeclarativePoliciesReportsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDhcpOptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDhcpOptions",
        input_schema = schemas.DescribeDhcpOptionsInput,
        output_schema = schemas.DescribeDhcpOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEgressOnlyInternetGateways(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEgressOnlyInternetGateways",
        input_schema = schemas.DescribeEgressOnlyInternetGatewaysInput,
        output_schema = schemas.DescribeEgressOnlyInternetGatewaysOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeElasticGpus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeElasticGpus",
        input_schema = schemas.DescribeElasticGpusInput,
        output_schema = schemas.DescribeElasticGpusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeExportImageTasks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExportImageTasks",
        input_schema = schemas.DescribeExportImageTasksInput,
        output_schema = schemas.DescribeExportImageTasksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeExportTasks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExportTasks",
        input_schema = schemas.DescribeExportTasksInput,
        output_schema = schemas.DescribeExportTasksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFastLaunchImages(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFastLaunchImages",
        input_schema = schemas.DescribeFastLaunchImagesInput,
        output_schema = schemas.DescribeFastLaunchImagesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFastSnapshotRestores(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFastSnapshotRestores",
        input_schema = schemas.DescribeFastSnapshotRestoresInput,
        output_schema = schemas.DescribeFastSnapshotRestoresOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFleetHistory(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetHistory",
        input_schema = schemas.DescribeFleetHistoryInput,
        output_schema = schemas.DescribeFleetHistoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFleetInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetInstances",
        input_schema = schemas.DescribeFleetInstancesInput,
        output_schema = schemas.DescribeFleetInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFleets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleets",
        input_schema = schemas.DescribeFleetsInput,
        output_schema = schemas.DescribeFleetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFlowLogs(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFlowLogs",
        input_schema = schemas.DescribeFlowLogsInput,
        output_schema = schemas.DescribeFlowLogsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFpgaImageAttribute(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFpgaImageAttribute",
        input_schema = schemas.DescribeFpgaImageAttributeInput,
        output_schema = schemas.DescribeFpgaImageAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFpgaImages(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFpgaImages",
        input_schema = schemas.DescribeFpgaImagesInput,
        output_schema = schemas.DescribeFpgaImagesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeHostReservationOfferings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHostReservationOfferings",
        input_schema = schemas.DescribeHostReservationOfferingsInput,
        output_schema = schemas.DescribeHostReservationOfferingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeHostReservations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHostReservations",
        input_schema = schemas.DescribeHostReservationsInput,
        output_schema = schemas.DescribeHostReservationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeHosts(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHosts",
        input_schema = schemas.DescribeHostsInput,
        output_schema = schemas.DescribeHostsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIamInstanceProfileAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIamInstanceProfileAssociations",
        input_schema = schemas.DescribeIamInstanceProfileAssociationsInput,
        output_schema = schemas.DescribeIamInstanceProfileAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIdentityIdFormat(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIdentityIdFormat",
        input_schema = schemas.DescribeIdentityIdFormatInput,
        output_schema = schemas.DescribeIdentityIdFormatOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIdFormat(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIdFormat",
        input_schema = schemas.DescribeIdFormatInput,
        output_schema = schemas.DescribeIdFormatOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeImageAttribute(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImageAttribute",
        input_schema = schemas.DescribeImageAttributeInput,
        output_schema = schemas.DescribeImageAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeImageReferences(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImageReferences",
        input_schema = schemas.DescribeImageReferencesInput,
        output_schema = schemas.DescribeImageReferencesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeImages(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImages",
        input_schema = schemas.DescribeImagesInput,
        output_schema = schemas.DescribeImagesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeImageUsageReportEntries(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImageUsageReportEntries",
        input_schema = schemas.DescribeImageUsageReportEntriesInput,
        output_schema = schemas.DescribeImageUsageReportEntriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeImageUsageReports(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImageUsageReports",
        input_schema = schemas.DescribeImageUsageReportsInput,
        output_schema = schemas.DescribeImageUsageReportsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeImportImageTasks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImportImageTasks",
        input_schema = schemas.DescribeImportImageTasksInput,
        output_schema = schemas.DescribeImportImageTasksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeImportSnapshotTasks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImportSnapshotTasks",
        input_schema = schemas.DescribeImportSnapshotTasksInput,
        output_schema = schemas.DescribeImportSnapshotTasksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstanceAttribute(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceAttribute",
        input_schema = schemas.DescribeInstanceAttributeInput,
        output_schema = schemas.DescribeInstanceAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstanceConnectEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceConnectEndpoints",
        input_schema = schemas.DescribeInstanceConnectEndpointsInput,
        output_schema = schemas.DescribeInstanceConnectEndpointsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstanceCreditSpecifications(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceCreditSpecifications",
        input_schema = schemas.DescribeInstanceCreditSpecificationsInput,
        output_schema = schemas.DescribeInstanceCreditSpecificationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstanceEventNotificationAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceEventNotificationAttributes",
        input_schema = schemas.DescribeInstanceEventNotificationAttributesInput,
        output_schema = schemas.DescribeInstanceEventNotificationAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstanceEventWindows(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceEventWindows",
        input_schema = schemas.DescribeInstanceEventWindowsInput,
        output_schema = schemas.DescribeInstanceEventWindowsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstanceImageMetadata(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceImageMetadata",
        input_schema = schemas.DescribeInstanceImageMetadataInput,
        output_schema = schemas.DescribeInstanceImageMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstances",
        input_schema = schemas.DescribeInstancesInput,
        output_schema = schemas.DescribeInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstanceSqlHaHistoryStates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceSqlHaHistoryStates",
        input_schema = schemas.DescribeInstanceSqlHaHistoryStatesInput,
        output_schema = schemas.DescribeInstanceSqlHaHistoryStatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstanceSqlHaStates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceSqlHaStates",
        input_schema = schemas.DescribeInstanceSqlHaStatesInput,
        output_schema = schemas.DescribeInstanceSqlHaStatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstanceStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceStatus",
        input_schema = schemas.DescribeInstanceStatusInput,
        output_schema = schemas.DescribeInstanceStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstanceTopology(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceTopology",
        input_schema = schemas.DescribeInstanceTopologyInput,
        output_schema = schemas.DescribeInstanceTopologyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstanceTypeOfferings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceTypeOfferings",
        input_schema = schemas.DescribeInstanceTypeOfferingsInput,
        output_schema = schemas.DescribeInstanceTypeOfferingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstanceTypes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceTypes",
        input_schema = schemas.DescribeInstanceTypesInput,
        output_schema = schemas.DescribeInstanceTypesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInternetGateways(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInternetGateways",
        input_schema = schemas.DescribeInternetGatewaysInput,
        output_schema = schemas.DescribeInternetGatewaysOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIpamByoasn(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIpamByoasn",
        input_schema = schemas.DescribeIpamByoasnInput,
        output_schema = schemas.DescribeIpamByoasnOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIpamExternalResourceVerificationTokens(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIpamExternalResourceVerificationTokens",
        input_schema = schemas.DescribeIpamExternalResourceVerificationTokensInput,
        output_schema = schemas.DescribeIpamExternalResourceVerificationTokensOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIpamPolicies(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIpamPolicies",
        input_schema = schemas.DescribeIpamPoliciesInput,
        output_schema = schemas.DescribeIpamPoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIpamPools(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIpamPools",
        input_schema = schemas.DescribeIpamPoolsInput,
        output_schema = schemas.DescribeIpamPoolsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIpamPrefixListResolvers(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIpamPrefixListResolvers",
        input_schema = schemas.DescribeIpamPrefixListResolversInput,
        output_schema = schemas.DescribeIpamPrefixListResolversOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIpamPrefixListResolverTargets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIpamPrefixListResolverTargets",
        input_schema = schemas.DescribeIpamPrefixListResolverTargetsInput,
        output_schema = schemas.DescribeIpamPrefixListResolverTargetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIpamResourceDiscoveries(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIpamResourceDiscoveries",
        input_schema = schemas.DescribeIpamResourceDiscoveriesInput,
        output_schema = schemas.DescribeIpamResourceDiscoveriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIpamResourceDiscoveryAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIpamResourceDiscoveryAssociations",
        input_schema = schemas.DescribeIpamResourceDiscoveryAssociationsInput,
        output_schema = schemas.DescribeIpamResourceDiscoveryAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIpams(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIpams",
        input_schema = schemas.DescribeIpamsInput,
        output_schema = schemas.DescribeIpamsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIpamScopes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIpamScopes",
        input_schema = schemas.DescribeIpamScopesInput,
        output_schema = schemas.DescribeIpamScopesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIpv6Pools(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIpv6Pools",
        input_schema = schemas.DescribeIpv6PoolsInput,
        output_schema = schemas.DescribeIpv6PoolsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeKeyPairs(input, options)
    return self:invokeOperation(input, {
        name = "DescribeKeyPairs",
        input_schema = schemas.DescribeKeyPairsInput,
        output_schema = schemas.DescribeKeyPairsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLaunchTemplates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLaunchTemplates",
        input_schema = schemas.DescribeLaunchTemplatesInput,
        output_schema = schemas.DescribeLaunchTemplatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLaunchTemplateVersions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLaunchTemplateVersions",
        input_schema = schemas.DescribeLaunchTemplateVersionsInput,
        output_schema = schemas.DescribeLaunchTemplateVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLocalGatewayRouteTables(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLocalGatewayRouteTables",
        input_schema = schemas.DescribeLocalGatewayRouteTablesInput,
        output_schema = schemas.DescribeLocalGatewayRouteTablesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations",
        input_schema = schemas.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsInput,
        output_schema = schemas.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLocalGatewayRouteTableVpcAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLocalGatewayRouteTableVpcAssociations",
        input_schema = schemas.DescribeLocalGatewayRouteTableVpcAssociationsInput,
        output_schema = schemas.DescribeLocalGatewayRouteTableVpcAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLocalGateways(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLocalGateways",
        input_schema = schemas.DescribeLocalGatewaysInput,
        output_schema = schemas.DescribeLocalGatewaysOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLocalGatewayVirtualInterfaceGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLocalGatewayVirtualInterfaceGroups",
        input_schema = schemas.DescribeLocalGatewayVirtualInterfaceGroupsInput,
        output_schema = schemas.DescribeLocalGatewayVirtualInterfaceGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLocalGatewayVirtualInterfaces(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLocalGatewayVirtualInterfaces",
        input_schema = schemas.DescribeLocalGatewayVirtualInterfacesInput,
        output_schema = schemas.DescribeLocalGatewayVirtualInterfacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLockedSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLockedSnapshots",
        input_schema = schemas.DescribeLockedSnapshotsInput,
        output_schema = schemas.DescribeLockedSnapshotsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMacHosts(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMacHosts",
        input_schema = schemas.DescribeMacHostsInput,
        output_schema = schemas.DescribeMacHostsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMacModificationTasks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMacModificationTasks",
        input_schema = schemas.DescribeMacModificationTasksInput,
        output_schema = schemas.DescribeMacModificationTasksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeManagedPrefixLists(input, options)
    return self:invokeOperation(input, {
        name = "DescribeManagedPrefixLists",
        input_schema = schemas.DescribeManagedPrefixListsInput,
        output_schema = schemas.DescribeManagedPrefixListsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMovingAddresses(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMovingAddresses",
        input_schema = schemas.DescribeMovingAddressesInput,
        output_schema = schemas.DescribeMovingAddressesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNatGateways(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNatGateways",
        input_schema = schemas.DescribeNatGatewaysInput,
        output_schema = schemas.DescribeNatGatewaysOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNetworkAcls(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNetworkAcls",
        input_schema = schemas.DescribeNetworkAclsInput,
        output_schema = schemas.DescribeNetworkAclsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNetworkInsightsAccessScopeAnalyses(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNetworkInsightsAccessScopeAnalyses",
        input_schema = schemas.DescribeNetworkInsightsAccessScopeAnalysesInput,
        output_schema = schemas.DescribeNetworkInsightsAccessScopeAnalysesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNetworkInsightsAccessScopes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNetworkInsightsAccessScopes",
        input_schema = schemas.DescribeNetworkInsightsAccessScopesInput,
        output_schema = schemas.DescribeNetworkInsightsAccessScopesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNetworkInsightsAnalyses(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNetworkInsightsAnalyses",
        input_schema = schemas.DescribeNetworkInsightsAnalysesInput,
        output_schema = schemas.DescribeNetworkInsightsAnalysesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNetworkInsightsPaths(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNetworkInsightsPaths",
        input_schema = schemas.DescribeNetworkInsightsPathsInput,
        output_schema = schemas.DescribeNetworkInsightsPathsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNetworkInterfaceAttribute(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNetworkInterfaceAttribute",
        input_schema = schemas.DescribeNetworkInterfaceAttributeInput,
        output_schema = schemas.DescribeNetworkInterfaceAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNetworkInterfacePermissions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNetworkInterfacePermissions",
        input_schema = schemas.DescribeNetworkInterfacePermissionsInput,
        output_schema = schemas.DescribeNetworkInterfacePermissionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNetworkInterfaces(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNetworkInterfaces",
        input_schema = schemas.DescribeNetworkInterfacesInput,
        output_schema = schemas.DescribeNetworkInterfacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOutpostLags(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOutpostLags",
        input_schema = schemas.DescribeOutpostLagsInput,
        output_schema = schemas.DescribeOutpostLagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePlacementGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribePlacementGroups",
        input_schema = schemas.DescribePlacementGroupsInput,
        output_schema = schemas.DescribePlacementGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePrefixLists(input, options)
    return self:invokeOperation(input, {
        name = "DescribePrefixLists",
        input_schema = schemas.DescribePrefixListsInput,
        output_schema = schemas.DescribePrefixListsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePrincipalIdFormat(input, options)
    return self:invokeOperation(input, {
        name = "DescribePrincipalIdFormat",
        input_schema = schemas.DescribePrincipalIdFormatInput,
        output_schema = schemas.DescribePrincipalIdFormatOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePublicIpv4Pools(input, options)
    return self:invokeOperation(input, {
        name = "DescribePublicIpv4Pools",
        input_schema = schemas.DescribePublicIpv4PoolsInput,
        output_schema = schemas.DescribePublicIpv4PoolsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRegions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRegions",
        input_schema = schemas.DescribeRegionsInput,
        output_schema = schemas.DescribeRegionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReplaceRootVolumeTasks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReplaceRootVolumeTasks",
        input_schema = schemas.DescribeReplaceRootVolumeTasksInput,
        output_schema = schemas.DescribeReplaceRootVolumeTasksOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReservedInstancesListings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservedInstancesListings",
        input_schema = schemas.DescribeReservedInstancesListingsInput,
        output_schema = schemas.DescribeReservedInstancesListingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReservedInstancesModifications(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservedInstancesModifications",
        input_schema = schemas.DescribeReservedInstancesModificationsInput,
        output_schema = schemas.DescribeReservedInstancesModificationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReservedInstancesOfferings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservedInstancesOfferings",
        input_schema = schemas.DescribeReservedInstancesOfferingsInput,
        output_schema = schemas.DescribeReservedInstancesOfferingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRouteServerEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRouteServerEndpoints",
        input_schema = schemas.DescribeRouteServerEndpointsInput,
        output_schema = schemas.DescribeRouteServerEndpointsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRouteServerPeers(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRouteServerPeers",
        input_schema = schemas.DescribeRouteServerPeersInput,
        output_schema = schemas.DescribeRouteServerPeersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRouteServers(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRouteServers",
        input_schema = schemas.DescribeRouteServersInput,
        output_schema = schemas.DescribeRouteServersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRouteTables(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRouteTables",
        input_schema = schemas.DescribeRouteTablesInput,
        output_schema = schemas.DescribeRouteTablesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeScheduledInstanceAvailability(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScheduledInstanceAvailability",
        input_schema = schemas.DescribeScheduledInstanceAvailabilityInput,
        output_schema = schemas.DescribeScheduledInstanceAvailabilityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeScheduledInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScheduledInstances",
        input_schema = schemas.DescribeScheduledInstancesInput,
        output_schema = schemas.DescribeScheduledInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSecondaryInterfaces(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSecondaryInterfaces",
        input_schema = schemas.DescribeSecondaryInterfacesInput,
        output_schema = schemas.DescribeSecondaryInterfacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSecondaryNetworks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSecondaryNetworks",
        input_schema = schemas.DescribeSecondaryNetworksInput,
        output_schema = schemas.DescribeSecondaryNetworksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSecondarySubnets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSecondarySubnets",
        input_schema = schemas.DescribeSecondarySubnetsInput,
        output_schema = schemas.DescribeSecondarySubnetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSecurityGroupReferences(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSecurityGroupReferences",
        input_schema = schemas.DescribeSecurityGroupReferencesInput,
        output_schema = schemas.DescribeSecurityGroupReferencesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSecurityGroupRules(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSecurityGroupRules",
        input_schema = schemas.DescribeSecurityGroupRulesInput,
        output_schema = schemas.DescribeSecurityGroupRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSecurityGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSecurityGroups",
        input_schema = schemas.DescribeSecurityGroupsInput,
        output_schema = schemas.DescribeSecurityGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSecurityGroupVpcAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSecurityGroupVpcAssociations",
        input_schema = schemas.DescribeSecurityGroupVpcAssociationsInput,
        output_schema = schemas.DescribeSecurityGroupVpcAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeServiceLinkVirtualInterfaces(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServiceLinkVirtualInterfaces",
        input_schema = schemas.DescribeServiceLinkVirtualInterfacesInput,
        output_schema = schemas.DescribeServiceLinkVirtualInterfacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSnapshotAttribute(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSnapshotAttribute",
        input_schema = schemas.DescribeSnapshotAttributeInput,
        output_schema = schemas.DescribeSnapshotAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSnapshots",
        input_schema = schemas.DescribeSnapshotsInput,
        output_schema = schemas.DescribeSnapshotsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSnapshotTierStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSnapshotTierStatus",
        input_schema = schemas.DescribeSnapshotTierStatusInput,
        output_schema = schemas.DescribeSnapshotTierStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSpotDatafeedSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSpotDatafeedSubscription",
        input_schema = schemas.DescribeSpotDatafeedSubscriptionInput,
        output_schema = schemas.DescribeSpotDatafeedSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSpotFleetInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSpotFleetInstances",
        input_schema = schemas.DescribeSpotFleetInstancesInput,
        output_schema = schemas.DescribeSpotFleetInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSpotFleetRequestHistory(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSpotFleetRequestHistory",
        input_schema = schemas.DescribeSpotFleetRequestHistoryInput,
        output_schema = schemas.DescribeSpotFleetRequestHistoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSpotFleetRequests(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSpotFleetRequests",
        input_schema = schemas.DescribeSpotFleetRequestsInput,
        output_schema = schemas.DescribeSpotFleetRequestsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSpotInstanceRequests(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSpotInstanceRequests",
        input_schema = schemas.DescribeSpotInstanceRequestsInput,
        output_schema = schemas.DescribeSpotInstanceRequestsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSpotPriceHistory(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSpotPriceHistory",
        input_schema = schemas.DescribeSpotPriceHistoryInput,
        output_schema = schemas.DescribeSpotPriceHistoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStaleSecurityGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStaleSecurityGroups",
        input_schema = schemas.DescribeStaleSecurityGroupsInput,
        output_schema = schemas.DescribeStaleSecurityGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStoreImageTasks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStoreImageTasks",
        input_schema = schemas.DescribeStoreImageTasksInput,
        output_schema = schemas.DescribeStoreImageTasksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSubnets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSubnets",
        input_schema = schemas.DescribeSubnetsInput,
        output_schema = schemas.DescribeSubnetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTags(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTags",
        input_schema = schemas.DescribeTagsInput,
        output_schema = schemas.DescribeTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTrafficMirrorFilterRules(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrafficMirrorFilterRules",
        input_schema = schemas.DescribeTrafficMirrorFilterRulesInput,
        output_schema = schemas.DescribeTrafficMirrorFilterRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTrafficMirrorFilters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrafficMirrorFilters",
        input_schema = schemas.DescribeTrafficMirrorFiltersInput,
        output_schema = schemas.DescribeTrafficMirrorFiltersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTrafficMirrorSessions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrafficMirrorSessions",
        input_schema = schemas.DescribeTrafficMirrorSessionsInput,
        output_schema = schemas.DescribeTrafficMirrorSessionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTrafficMirrorTargets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrafficMirrorTargets",
        input_schema = schemas.DescribeTrafficMirrorTargetsInput,
        output_schema = schemas.DescribeTrafficMirrorTargetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTransitGatewayAttachments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTransitGatewayAttachments",
        input_schema = schemas.DescribeTransitGatewayAttachmentsInput,
        output_schema = schemas.DescribeTransitGatewayAttachmentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTransitGatewayConnectPeers(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTransitGatewayConnectPeers",
        input_schema = schemas.DescribeTransitGatewayConnectPeersInput,
        output_schema = schemas.DescribeTransitGatewayConnectPeersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTransitGatewayConnects(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTransitGatewayConnects",
        input_schema = schemas.DescribeTransitGatewayConnectsInput,
        output_schema = schemas.DescribeTransitGatewayConnectsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTransitGatewayMeteringPolicies(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTransitGatewayMeteringPolicies",
        input_schema = schemas.DescribeTransitGatewayMeteringPoliciesInput,
        output_schema = schemas.DescribeTransitGatewayMeteringPoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTransitGatewayMulticastDomains(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTransitGatewayMulticastDomains",
        input_schema = schemas.DescribeTransitGatewayMulticastDomainsInput,
        output_schema = schemas.DescribeTransitGatewayMulticastDomainsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTransitGatewayPeeringAttachments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTransitGatewayPeeringAttachments",
        input_schema = schemas.DescribeTransitGatewayPeeringAttachmentsInput,
        output_schema = schemas.DescribeTransitGatewayPeeringAttachmentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTransitGatewayPolicyTables(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTransitGatewayPolicyTables",
        input_schema = schemas.DescribeTransitGatewayPolicyTablesInput,
        output_schema = schemas.DescribeTransitGatewayPolicyTablesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTransitGatewayRouteTableAnnouncements(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTransitGatewayRouteTableAnnouncements",
        input_schema = schemas.DescribeTransitGatewayRouteTableAnnouncementsInput,
        output_schema = schemas.DescribeTransitGatewayRouteTableAnnouncementsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTransitGatewayRouteTables(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTransitGatewayRouteTables",
        input_schema = schemas.DescribeTransitGatewayRouteTablesInput,
        output_schema = schemas.DescribeTransitGatewayRouteTablesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTransitGateways(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTransitGateways",
        input_schema = schemas.DescribeTransitGatewaysInput,
        output_schema = schemas.DescribeTransitGatewaysOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTransitGatewayVpcAttachments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTransitGatewayVpcAttachments",
        input_schema = schemas.DescribeTransitGatewayVpcAttachmentsInput,
        output_schema = schemas.DescribeTransitGatewayVpcAttachmentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTrunkInterfaceAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrunkInterfaceAssociations",
        input_schema = schemas.DescribeTrunkInterfaceAssociationsInput,
        output_schema = schemas.DescribeTrunkInterfaceAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVerifiedAccessEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVerifiedAccessEndpoints",
        input_schema = schemas.DescribeVerifiedAccessEndpointsInput,
        output_schema = schemas.DescribeVerifiedAccessEndpointsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVerifiedAccessGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVerifiedAccessGroups",
        input_schema = schemas.DescribeVerifiedAccessGroupsInput,
        output_schema = schemas.DescribeVerifiedAccessGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVerifiedAccessInstanceLoggingConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVerifiedAccessInstanceLoggingConfigurations",
        input_schema = schemas.DescribeVerifiedAccessInstanceLoggingConfigurationsInput,
        output_schema = schemas.DescribeVerifiedAccessInstanceLoggingConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVerifiedAccessInstances(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVerifiedAccessInstances",
        input_schema = schemas.DescribeVerifiedAccessInstancesInput,
        output_schema = schemas.DescribeVerifiedAccessInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVerifiedAccessTrustProviders(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVerifiedAccessTrustProviders",
        input_schema = schemas.DescribeVerifiedAccessTrustProvidersInput,
        output_schema = schemas.DescribeVerifiedAccessTrustProvidersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVolumeAttribute(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVolumeAttribute",
        input_schema = schemas.DescribeVolumeAttributeInput,
        output_schema = schemas.DescribeVolumeAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVolumes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVolumes",
        input_schema = schemas.DescribeVolumesInput,
        output_schema = schemas.DescribeVolumesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVolumesModifications(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVolumesModifications",
        input_schema = schemas.DescribeVolumesModificationsInput,
        output_schema = schemas.DescribeVolumesModificationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVolumeStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVolumeStatus",
        input_schema = schemas.DescribeVolumeStatusInput,
        output_schema = schemas.DescribeVolumeStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpcAttribute(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcAttribute",
        input_schema = schemas.DescribeVpcAttributeInput,
        output_schema = schemas.DescribeVpcAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpcBlockPublicAccessExclusions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcBlockPublicAccessExclusions",
        input_schema = schemas.DescribeVpcBlockPublicAccessExclusionsInput,
        output_schema = schemas.DescribeVpcBlockPublicAccessExclusionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpcBlockPublicAccessOptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcBlockPublicAccessOptions",
        input_schema = schemas.DescribeVpcBlockPublicAccessOptionsInput,
        output_schema = schemas.DescribeVpcBlockPublicAccessOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpcClassicLink(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcClassicLink",
        input_schema = schemas.DescribeVpcClassicLinkInput,
        output_schema = schemas.DescribeVpcClassicLinkOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpcClassicLinkDnsSupport(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcClassicLinkDnsSupport",
        input_schema = schemas.DescribeVpcClassicLinkDnsSupportInput,
        output_schema = schemas.DescribeVpcClassicLinkDnsSupportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpcEncryptionControls(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcEncryptionControls",
        input_schema = schemas.DescribeVpcEncryptionControlsInput,
        output_schema = schemas.DescribeVpcEncryptionControlsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpcEndpointAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcEndpointAssociations",
        input_schema = schemas.DescribeVpcEndpointAssociationsInput,
        output_schema = schemas.DescribeVpcEndpointAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpcEndpointConnectionNotifications(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcEndpointConnectionNotifications",
        input_schema = schemas.DescribeVpcEndpointConnectionNotificationsInput,
        output_schema = schemas.DescribeVpcEndpointConnectionNotificationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpcEndpointConnections(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcEndpointConnections",
        input_schema = schemas.DescribeVpcEndpointConnectionsInput,
        output_schema = schemas.DescribeVpcEndpointConnectionsOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpcEndpointServiceConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcEndpointServiceConfigurations",
        input_schema = schemas.DescribeVpcEndpointServiceConfigurationsInput,
        output_schema = schemas.DescribeVpcEndpointServiceConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpcEndpointServicePermissions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcEndpointServicePermissions",
        input_schema = schemas.DescribeVpcEndpointServicePermissionsInput,
        output_schema = schemas.DescribeVpcEndpointServicePermissionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpcEndpointServices(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcEndpointServices",
        input_schema = schemas.DescribeVpcEndpointServicesInput,
        output_schema = schemas.DescribeVpcEndpointServicesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpcPeeringConnections(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcPeeringConnections",
        input_schema = schemas.DescribeVpcPeeringConnectionsInput,
        output_schema = schemas.DescribeVpcPeeringConnectionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpcs(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcs",
        input_schema = schemas.DescribeVpcsInput,
        output_schema = schemas.DescribeVpcsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpnConcentrators(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpnConcentrators",
        input_schema = schemas.DescribeVpnConcentratorsInput,
        output_schema = schemas.DescribeVpnConcentratorsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpnConnections(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpnConnections",
        input_schema = schemas.DescribeVpnConnectionsInput,
        output_schema = schemas.DescribeVpnConnectionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpnGateways(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpnGateways",
        input_schema = schemas.DescribeVpnGatewaysInput,
        output_schema = schemas.DescribeVpnGatewaysOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachClassicLinkVpc(input, options)
    return self:invokeOperation(input, {
        name = "DetachClassicLinkVpc",
        input_schema = schemas.DetachClassicLinkVpcInput,
        output_schema = schemas.DetachClassicLinkVpcOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachInternetGateway(input, options)
    return self:invokeOperation(input, {
        name = "DetachInternetGateway",
        input_schema = schemas.DetachInternetGatewayInput,
        output_schema = schemas.DetachInternetGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachNetworkInterface(input, options)
    return self:invokeOperation(input, {
        name = "DetachNetworkInterface",
        input_schema = schemas.DetachNetworkInterfaceInput,
        output_schema = schemas.DetachNetworkInterfaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachVerifiedAccessTrustProvider(input, options)
    return self:invokeOperation(input, {
        name = "DetachVerifiedAccessTrustProvider",
        input_schema = schemas.DetachVerifiedAccessTrustProviderInput,
        output_schema = schemas.DetachVerifiedAccessTrustProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachVolume(input, options)
    return self:invokeOperation(input, {
        name = "DetachVolume",
        input_schema = schemas.DetachVolumeInput,
        output_schema = schemas.DetachVolumeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachVpnGateway(input, options)
    return self:invokeOperation(input, {
        name = "DetachVpnGateway",
        input_schema = schemas.DetachVpnGatewayInput,
        output_schema = schemas.DetachVpnGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableAddressTransfer(input, options)
    return self:invokeOperation(input, {
        name = "DisableAddressTransfer",
        input_schema = schemas.DisableAddressTransferInput,
        output_schema = schemas.DisableAddressTransferOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableAllowedImagesSettings(input, options)
    return self:invokeOperation(input, {
        name = "DisableAllowedImagesSettings",
        input_schema = schemas.DisableAllowedImagesSettingsInput,
        output_schema = schemas.DisableAllowedImagesSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableAwsNetworkPerformanceMetricSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DisableAwsNetworkPerformanceMetricSubscription",
        input_schema = schemas.DisableAwsNetworkPerformanceMetricSubscriptionInput,
        output_schema = schemas.DisableAwsNetworkPerformanceMetricSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableCapacityManager(input, options)
    return self:invokeOperation(input, {
        name = "DisableCapacityManager",
        input_schema = schemas.DisableCapacityManagerInput,
        output_schema = schemas.DisableCapacityManagerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableEbsEncryptionByDefault(input, options)
    return self:invokeOperation(input, {
        name = "DisableEbsEncryptionByDefault",
        input_schema = schemas.DisableEbsEncryptionByDefaultInput,
        output_schema = schemas.DisableEbsEncryptionByDefaultOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableFastLaunch(input, options)
    return self:invokeOperation(input, {
        name = "DisableFastLaunch",
        input_schema = schemas.DisableFastLaunchInput,
        output_schema = schemas.DisableFastLaunchOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableFastSnapshotRestores(input, options)
    return self:invokeOperation(input, {
        name = "DisableFastSnapshotRestores",
        input_schema = schemas.DisableFastSnapshotRestoresInput,
        output_schema = schemas.DisableFastSnapshotRestoresOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableImage(input, options)
    return self:invokeOperation(input, {
        name = "DisableImage",
        input_schema = schemas.DisableImageInput,
        output_schema = schemas.DisableImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableImageBlockPublicAccess(input, options)
    return self:invokeOperation(input, {
        name = "DisableImageBlockPublicAccess",
        input_schema = schemas.DisableImageBlockPublicAccessInput,
        output_schema = schemas.DisableImageBlockPublicAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableImageDeprecation(input, options)
    return self:invokeOperation(input, {
        name = "DisableImageDeprecation",
        input_schema = schemas.DisableImageDeprecationInput,
        output_schema = schemas.DisableImageDeprecationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableImageDeregistrationProtection(input, options)
    return self:invokeOperation(input, {
        name = "DisableImageDeregistrationProtection",
        input_schema = schemas.DisableImageDeregistrationProtectionInput,
        output_schema = schemas.DisableImageDeregistrationProtectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableInstanceSqlHaStandbyDetections(input, options)
    return self:invokeOperation(input, {
        name = "DisableInstanceSqlHaStandbyDetections",
        input_schema = schemas.DisableInstanceSqlHaStandbyDetectionsInput,
        output_schema = schemas.DisableInstanceSqlHaStandbyDetectionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableIpamOrganizationAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "DisableIpamOrganizationAdminAccount",
        input_schema = schemas.DisableIpamOrganizationAdminAccountInput,
        output_schema = schemas.DisableIpamOrganizationAdminAccountOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableIpamPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DisableIpamPolicy",
        input_schema = schemas.DisableIpamPolicyInput,
        output_schema = schemas.DisableIpamPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableRouteServerPropagation(input, options)
    return self:invokeOperation(input, {
        name = "DisableRouteServerPropagation",
        input_schema = schemas.DisableRouteServerPropagationInput,
        output_schema = schemas.DisableRouteServerPropagationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableSerialConsoleAccess(input, options)
    return self:invokeOperation(input, {
        name = "DisableSerialConsoleAccess",
        input_schema = schemas.DisableSerialConsoleAccessInput,
        output_schema = schemas.DisableSerialConsoleAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableSnapshotBlockPublicAccess(input, options)
    return self:invokeOperation(input, {
        name = "DisableSnapshotBlockPublicAccess",
        input_schema = schemas.DisableSnapshotBlockPublicAccessInput,
        output_schema = schemas.DisableSnapshotBlockPublicAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableTransitGatewayRouteTablePropagation(input, options)
    return self:invokeOperation(input, {
        name = "DisableTransitGatewayRouteTablePropagation",
        input_schema = schemas.DisableTransitGatewayRouteTablePropagationInput,
        output_schema = schemas.DisableTransitGatewayRouteTablePropagationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableVgwRoutePropagation(input, options)
    return self:invokeOperation(input, {
        name = "DisableVgwRoutePropagation",
        input_schema = schemas.DisableVgwRoutePropagationInput,
        output_schema = schemas.DisableVgwRoutePropagationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableVpcClassicLink(input, options)
    return self:invokeOperation(input, {
        name = "DisableVpcClassicLink",
        input_schema = schemas.DisableVpcClassicLinkInput,
        output_schema = schemas.DisableVpcClassicLinkOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableVpcClassicLinkDnsSupport(input, options)
    return self:invokeOperation(input, {
        name = "DisableVpcClassicLinkDnsSupport",
        input_schema = schemas.DisableVpcClassicLinkDnsSupportInput,
        output_schema = schemas.DisableVpcClassicLinkDnsSupportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateAddress(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateAddress",
        input_schema = schemas.DisassociateAddressInput,
        output_schema = schemas.DisassociateAddressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateCapacityReservationBillingOwner(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateCapacityReservationBillingOwner",
        input_schema = schemas.DisassociateCapacityReservationBillingOwnerInput,
        output_schema = schemas.DisassociateCapacityReservationBillingOwnerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateClientVpnTargetNetwork(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateClientVpnTargetNetwork",
        input_schema = schemas.DisassociateClientVpnTargetNetworkInput,
        output_schema = schemas.DisassociateClientVpnTargetNetworkOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateEnclaveCertificateIamRole(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateEnclaveCertificateIamRole",
        input_schema = schemas.DisassociateEnclaveCertificateIamRoleInput,
        output_schema = schemas.DisassociateEnclaveCertificateIamRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateIamInstanceProfile(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateIamInstanceProfile",
        input_schema = schemas.DisassociateIamInstanceProfileInput,
        output_schema = schemas.DisassociateIamInstanceProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateInstanceEventWindow(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateInstanceEventWindow",
        input_schema = schemas.DisassociateInstanceEventWindowInput,
        output_schema = schemas.DisassociateInstanceEventWindowOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateIpamByoasn(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateIpamByoasn",
        input_schema = schemas.DisassociateIpamByoasnInput,
        output_schema = schemas.DisassociateIpamByoasnOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateIpamResourceDiscovery(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateIpamResourceDiscovery",
        input_schema = schemas.DisassociateIpamResourceDiscoveryInput,
        output_schema = schemas.DisassociateIpamResourceDiscoveryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateNatGatewayAddress(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateNatGatewayAddress",
        input_schema = schemas.DisassociateNatGatewayAddressInput,
        output_schema = schemas.DisassociateNatGatewayAddressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateRouteServer(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateRouteServer",
        input_schema = schemas.DisassociateRouteServerInput,
        output_schema = schemas.DisassociateRouteServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateRouteTable(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateRouteTable",
        input_schema = schemas.DisassociateRouteTableInput,
        output_schema = schemas.DisassociateRouteTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateSecurityGroupVpc(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateSecurityGroupVpc",
        input_schema = schemas.DisassociateSecurityGroupVpcInput,
        output_schema = schemas.DisassociateSecurityGroupVpcOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateSubnetCidrBlock(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateSubnetCidrBlock",
        input_schema = schemas.DisassociateSubnetCidrBlockInput,
        output_schema = schemas.DisassociateSubnetCidrBlockOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateTransitGatewayMulticastDomain(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateTransitGatewayMulticastDomain",
        input_schema = schemas.DisassociateTransitGatewayMulticastDomainInput,
        output_schema = schemas.DisassociateTransitGatewayMulticastDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateTransitGatewayPolicyTable(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateTransitGatewayPolicyTable",
        input_schema = schemas.DisassociateTransitGatewayPolicyTableInput,
        output_schema = schemas.DisassociateTransitGatewayPolicyTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateTransitGatewayRouteTable(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateTransitGatewayRouteTable",
        input_schema = schemas.DisassociateTransitGatewayRouteTableInput,
        output_schema = schemas.DisassociateTransitGatewayRouteTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateTrunkInterface(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateTrunkInterface",
        input_schema = schemas.DisassociateTrunkInterfaceInput,
        output_schema = schemas.DisassociateTrunkInterfaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateVpcCidrBlock(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateVpcCidrBlock",
        input_schema = schemas.DisassociateVpcCidrBlockInput,
        output_schema = schemas.DisassociateVpcCidrBlockOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableAddressTransfer(input, options)
    return self:invokeOperation(input, {
        name = "EnableAddressTransfer",
        input_schema = schemas.EnableAddressTransferInput,
        output_schema = schemas.EnableAddressTransferOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableAllowedImagesSettings(input, options)
    return self:invokeOperation(input, {
        name = "EnableAllowedImagesSettings",
        input_schema = schemas.EnableAllowedImagesSettingsInput,
        output_schema = schemas.EnableAllowedImagesSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableAwsNetworkPerformanceMetricSubscription(input, options)
    return self:invokeOperation(input, {
        name = "EnableAwsNetworkPerformanceMetricSubscription",
        input_schema = schemas.EnableAwsNetworkPerformanceMetricSubscriptionInput,
        output_schema = schemas.EnableAwsNetworkPerformanceMetricSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableCapacityManager(input, options)
    return self:invokeOperation(input, {
        name = "EnableCapacityManager",
        input_schema = schemas.EnableCapacityManagerInput,
        output_schema = schemas.EnableCapacityManagerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableEbsEncryptionByDefault(input, options)
    return self:invokeOperation(input, {
        name = "EnableEbsEncryptionByDefault",
        input_schema = schemas.EnableEbsEncryptionByDefaultInput,
        output_schema = schemas.EnableEbsEncryptionByDefaultOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableFastLaunch(input, options)
    return self:invokeOperation(input, {
        name = "EnableFastLaunch",
        input_schema = schemas.EnableFastLaunchInput,
        output_schema = schemas.EnableFastLaunchOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableFastSnapshotRestores(input, options)
    return self:invokeOperation(input, {
        name = "EnableFastSnapshotRestores",
        input_schema = schemas.EnableFastSnapshotRestoresInput,
        output_schema = schemas.EnableFastSnapshotRestoresOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableImage(input, options)
    return self:invokeOperation(input, {
        name = "EnableImage",
        input_schema = schemas.EnableImageInput,
        output_schema = schemas.EnableImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableImageBlockPublicAccess(input, options)
    return self:invokeOperation(input, {
        name = "EnableImageBlockPublicAccess",
        input_schema = schemas.EnableImageBlockPublicAccessInput,
        output_schema = schemas.EnableImageBlockPublicAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableImageDeprecation(input, options)
    return self:invokeOperation(input, {
        name = "EnableImageDeprecation",
        input_schema = schemas.EnableImageDeprecationInput,
        output_schema = schemas.EnableImageDeprecationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableImageDeregistrationProtection(input, options)
    return self:invokeOperation(input, {
        name = "EnableImageDeregistrationProtection",
        input_schema = schemas.EnableImageDeregistrationProtectionInput,
        output_schema = schemas.EnableImageDeregistrationProtectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableInstanceSqlHaStandbyDetections(input, options)
    return self:invokeOperation(input, {
        name = "EnableInstanceSqlHaStandbyDetections",
        input_schema = schemas.EnableInstanceSqlHaStandbyDetectionsInput,
        output_schema = schemas.EnableInstanceSqlHaStandbyDetectionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableIpamOrganizationAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "EnableIpamOrganizationAdminAccount",
        input_schema = schemas.EnableIpamOrganizationAdminAccountInput,
        output_schema = schemas.EnableIpamOrganizationAdminAccountOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableIpamPolicy(input, options)
    return self:invokeOperation(input, {
        name = "EnableIpamPolicy",
        input_schema = schemas.EnableIpamPolicyInput,
        output_schema = schemas.EnableIpamPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableReachabilityAnalyzerOrganizationSharing(input, options)
    return self:invokeOperation(input, {
        name = "EnableReachabilityAnalyzerOrganizationSharing",
        input_schema = schemas.EnableReachabilityAnalyzerOrganizationSharingInput,
        output_schema = schemas.EnableReachabilityAnalyzerOrganizationSharingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableRouteServerPropagation(input, options)
    return self:invokeOperation(input, {
        name = "EnableRouteServerPropagation",
        input_schema = schemas.EnableRouteServerPropagationInput,
        output_schema = schemas.EnableRouteServerPropagationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableSerialConsoleAccess(input, options)
    return self:invokeOperation(input, {
        name = "EnableSerialConsoleAccess",
        input_schema = schemas.EnableSerialConsoleAccessInput,
        output_schema = schemas.EnableSerialConsoleAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableSnapshotBlockPublicAccess(input, options)
    return self:invokeOperation(input, {
        name = "EnableSnapshotBlockPublicAccess",
        input_schema = schemas.EnableSnapshotBlockPublicAccessInput,
        output_schema = schemas.EnableSnapshotBlockPublicAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableTransitGatewayRouteTablePropagation(input, options)
    return self:invokeOperation(input, {
        name = "EnableTransitGatewayRouteTablePropagation",
        input_schema = schemas.EnableTransitGatewayRouteTablePropagationInput,
        output_schema = schemas.EnableTransitGatewayRouteTablePropagationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableVgwRoutePropagation(input, options)
    return self:invokeOperation(input, {
        name = "EnableVgwRoutePropagation",
        input_schema = schemas.EnableVgwRoutePropagationInput,
        output_schema = schemas.EnableVgwRoutePropagationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableVolumeIO(input, options)
    return self:invokeOperation(input, {
        name = "EnableVolumeIO",
        input_schema = schemas.EnableVolumeIOInput,
        output_schema = schemas.EnableVolumeIOOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableVpcClassicLink(input, options)
    return self:invokeOperation(input, {
        name = "EnableVpcClassicLink",
        input_schema = schemas.EnableVpcClassicLinkInput,
        output_schema = schemas.EnableVpcClassicLinkOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableVpcClassicLinkDnsSupport(input, options)
    return self:invokeOperation(input, {
        name = "EnableVpcClassicLinkDnsSupport",
        input_schema = schemas.EnableVpcClassicLinkDnsSupportInput,
        output_schema = schemas.EnableVpcClassicLinkDnsSupportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:exportClientVpnClientCertificateRevocationList(input, options)
    return self:invokeOperation(input, {
        name = "ExportClientVpnClientCertificateRevocationList",
        input_schema = schemas.ExportClientVpnClientCertificateRevocationListInput,
        output_schema = schemas.ExportClientVpnClientCertificateRevocationListOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:exportClientVpnClientConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "ExportClientVpnClientConfiguration",
        input_schema = schemas.ExportClientVpnClientConfigurationInput,
        output_schema = schemas.ExportClientVpnClientConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:exportImage(input, options)
    return self:invokeOperation(input, {
        name = "ExportImage",
        input_schema = schemas.ExportImageInput,
        output_schema = schemas.ExportImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:exportTransitGatewayRoutes(input, options)
    return self:invokeOperation(input, {
        name = "ExportTransitGatewayRoutes",
        input_schema = schemas.ExportTransitGatewayRoutesInput,
        output_schema = schemas.ExportTransitGatewayRoutesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:exportVerifiedAccessInstanceClientConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "ExportVerifiedAccessInstanceClientConfiguration",
        input_schema = schemas.ExportVerifiedAccessInstanceClientConfigurationInput,
        output_schema = schemas.ExportVerifiedAccessInstanceClientConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getActiveVpnTunnelStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetActiveVpnTunnelStatus",
        input_schema = schemas.GetActiveVpnTunnelStatusInput,
        output_schema = schemas.GetActiveVpnTunnelStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAllowedImagesSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetAllowedImagesSettings",
        input_schema = schemas.GetAllowedImagesSettingsInput,
        output_schema = schemas.GetAllowedImagesSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAssociatedEnclaveCertificateIamRoles(input, options)
    return self:invokeOperation(input, {
        name = "GetAssociatedEnclaveCertificateIamRoles",
        input_schema = schemas.GetAssociatedEnclaveCertificateIamRolesInput,
        output_schema = schemas.GetAssociatedEnclaveCertificateIamRolesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAssociatedIpv6PoolCidrs(input, options)
    return self:invokeOperation(input, {
        name = "GetAssociatedIpv6PoolCidrs",
        input_schema = schemas.GetAssociatedIpv6PoolCidrsInput,
        output_schema = schemas.GetAssociatedIpv6PoolCidrsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAwsNetworkPerformanceData(input, options)
    return self:invokeOperation(input, {
        name = "GetAwsNetworkPerformanceData",
        input_schema = schemas.GetAwsNetworkPerformanceDataInput,
        output_schema = schemas.GetAwsNetworkPerformanceDataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCapacityManagerAttributes(input, options)
    return self:invokeOperation(input, {
        name = "GetCapacityManagerAttributes",
        input_schema = schemas.GetCapacityManagerAttributesInput,
        output_schema = schemas.GetCapacityManagerAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCapacityManagerMetricData(input, options)
    return self:invokeOperation(input, {
        name = "GetCapacityManagerMetricData",
        input_schema = schemas.GetCapacityManagerMetricDataInput,
        output_schema = schemas.GetCapacityManagerMetricDataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCapacityManagerMetricDimensions(input, options)
    return self:invokeOperation(input, {
        name = "GetCapacityManagerMetricDimensions",
        input_schema = schemas.GetCapacityManagerMetricDimensionsInput,
        output_schema = schemas.GetCapacityManagerMetricDimensionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCapacityManagerMonitoredTagKeys(input, options)
    return self:invokeOperation(input, {
        name = "GetCapacityManagerMonitoredTagKeys",
        input_schema = schemas.GetCapacityManagerMonitoredTagKeysInput,
        output_schema = schemas.GetCapacityManagerMonitoredTagKeysOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCapacityReservationUsage(input, options)
    return self:invokeOperation(input, {
        name = "GetCapacityReservationUsage",
        input_schema = schemas.GetCapacityReservationUsageInput,
        output_schema = schemas.GetCapacityReservationUsageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCoipPoolUsage(input, options)
    return self:invokeOperation(input, {
        name = "GetCoipPoolUsage",
        input_schema = schemas.GetCoipPoolUsageInput,
        output_schema = schemas.GetCoipPoolUsageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConsoleOutput(input, options)
    return self:invokeOperation(input, {
        name = "GetConsoleOutput",
        input_schema = schemas.GetConsoleOutputInput,
        output_schema = schemas.GetConsoleOutputOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConsoleScreenshot(input, options)
    return self:invokeOperation(input, {
        name = "GetConsoleScreenshot",
        input_schema = schemas.GetConsoleScreenshotInput,
        output_schema = schemas.GetConsoleScreenshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeclarativePoliciesReportSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetDeclarativePoliciesReportSummary",
        input_schema = schemas.GetDeclarativePoliciesReportSummaryInput,
        output_schema = schemas.GetDeclarativePoliciesReportSummaryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDefaultCreditSpecification(input, options)
    return self:invokeOperation(input, {
        name = "GetDefaultCreditSpecification",
        input_schema = schemas.GetDefaultCreditSpecificationInput,
        output_schema = schemas.GetDefaultCreditSpecificationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEbsDefaultKmsKeyId(input, options)
    return self:invokeOperation(input, {
        name = "GetEbsDefaultKmsKeyId",
        input_schema = schemas.GetEbsDefaultKmsKeyIdInput,
        output_schema = schemas.GetEbsDefaultKmsKeyIdOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEbsEncryptionByDefault(input, options)
    return self:invokeOperation(input, {
        name = "GetEbsEncryptionByDefault",
        input_schema = schemas.GetEbsEncryptionByDefaultInput,
        output_schema = schemas.GetEbsEncryptionByDefaultOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEnabledIpamPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetEnabledIpamPolicy",
        input_schema = schemas.GetEnabledIpamPolicyInput,
        output_schema = schemas.GetEnabledIpamPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFlowLogsIntegrationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetFlowLogsIntegrationTemplate",
        input_schema = schemas.GetFlowLogsIntegrationTemplateInput,
        output_schema = schemas.GetFlowLogsIntegrationTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGroupsForCapacityReservation(input, options)
    return self:invokeOperation(input, {
        name = "GetGroupsForCapacityReservation",
        input_schema = schemas.GetGroupsForCapacityReservationInput,
        output_schema = schemas.GetGroupsForCapacityReservationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getHostReservationPurchasePreview(input, options)
    return self:invokeOperation(input, {
        name = "GetHostReservationPurchasePreview",
        input_schema = schemas.GetHostReservationPurchasePreviewInput,
        output_schema = schemas.GetHostReservationPurchasePreviewOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getImageAncestry(input, options)
    return self:invokeOperation(input, {
        name = "GetImageAncestry",
        input_schema = schemas.GetImageAncestryInput,
        output_schema = schemas.GetImageAncestryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getImageBlockPublicAccessState(input, options)
    return self:invokeOperation(input, {
        name = "GetImageBlockPublicAccessState",
        input_schema = schemas.GetImageBlockPublicAccessStateInput,
        output_schema = schemas.GetImageBlockPublicAccessStateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInstanceMetadataDefaults(input, options)
    return self:invokeOperation(input, {
        name = "GetInstanceMetadataDefaults",
        input_schema = schemas.GetInstanceMetadataDefaultsInput,
        output_schema = schemas.GetInstanceMetadataDefaultsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInstanceTpmEkPub(input, options)
    return self:invokeOperation(input, {
        name = "GetInstanceTpmEkPub",
        input_schema = schemas.GetInstanceTpmEkPubInput,
        output_schema = schemas.GetInstanceTpmEkPubOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInstanceTypesFromInstanceRequirements(input, options)
    return self:invokeOperation(input, {
        name = "GetInstanceTypesFromInstanceRequirements",
        input_schema = schemas.GetInstanceTypesFromInstanceRequirementsInput,
        output_schema = schemas.GetInstanceTypesFromInstanceRequirementsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInstanceUefiData(input, options)
    return self:invokeOperation(input, {
        name = "GetInstanceUefiData",
        input_schema = schemas.GetInstanceUefiDataInput,
        output_schema = schemas.GetInstanceUefiDataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIpamAddressHistory(input, options)
    return self:invokeOperation(input, {
        name = "GetIpamAddressHistory",
        input_schema = schemas.GetIpamAddressHistoryInput,
        output_schema = schemas.GetIpamAddressHistoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIpamDiscoveredAccounts(input, options)
    return self:invokeOperation(input, {
        name = "GetIpamDiscoveredAccounts",
        input_schema = schemas.GetIpamDiscoveredAccountsInput,
        output_schema = schemas.GetIpamDiscoveredAccountsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIpamDiscoveredPublicAddresses(input, options)
    return self:invokeOperation(input, {
        name = "GetIpamDiscoveredPublicAddresses",
        input_schema = schemas.GetIpamDiscoveredPublicAddressesInput,
        output_schema = schemas.GetIpamDiscoveredPublicAddressesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIpamDiscoveredResourceCidrs(input, options)
    return self:invokeOperation(input, {
        name = "GetIpamDiscoveredResourceCidrs",
        input_schema = schemas.GetIpamDiscoveredResourceCidrsInput,
        output_schema = schemas.GetIpamDiscoveredResourceCidrsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIpamPolicyAllocationRules(input, options)
    return self:invokeOperation(input, {
        name = "GetIpamPolicyAllocationRules",
        input_schema = schemas.GetIpamPolicyAllocationRulesInput,
        output_schema = schemas.GetIpamPolicyAllocationRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIpamPolicyOrganizationTargets(input, options)
    return self:invokeOperation(input, {
        name = "GetIpamPolicyOrganizationTargets",
        input_schema = schemas.GetIpamPolicyOrganizationTargetsInput,
        output_schema = schemas.GetIpamPolicyOrganizationTargetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIpamPoolAllocations(input, options)
    return self:invokeOperation(input, {
        name = "GetIpamPoolAllocations",
        input_schema = schemas.GetIpamPoolAllocationsInput,
        output_schema = schemas.GetIpamPoolAllocationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIpamPoolCidrs(input, options)
    return self:invokeOperation(input, {
        name = "GetIpamPoolCidrs",
        input_schema = schemas.GetIpamPoolCidrsInput,
        output_schema = schemas.GetIpamPoolCidrsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIpamPrefixListResolverRules(input, options)
    return self:invokeOperation(input, {
        name = "GetIpamPrefixListResolverRules",
        input_schema = schemas.GetIpamPrefixListResolverRulesInput,
        output_schema = schemas.GetIpamPrefixListResolverRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIpamPrefixListResolverVersionEntries(input, options)
    return self:invokeOperation(input, {
        name = "GetIpamPrefixListResolverVersionEntries",
        input_schema = schemas.GetIpamPrefixListResolverVersionEntriesInput,
        output_schema = schemas.GetIpamPrefixListResolverVersionEntriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIpamPrefixListResolverVersions(input, options)
    return self:invokeOperation(input, {
        name = "GetIpamPrefixListResolverVersions",
        input_schema = schemas.GetIpamPrefixListResolverVersionsInput,
        output_schema = schemas.GetIpamPrefixListResolverVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIpamResourceCidrs(input, options)
    return self:invokeOperation(input, {
        name = "GetIpamResourceCidrs",
        input_schema = schemas.GetIpamResourceCidrsInput,
        output_schema = schemas.GetIpamResourceCidrsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLaunchTemplateData(input, options)
    return self:invokeOperation(input, {
        name = "GetLaunchTemplateData",
        input_schema = schemas.GetLaunchTemplateDataInput,
        output_schema = schemas.GetLaunchTemplateDataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getManagedPrefixListAssociations(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedPrefixListAssociations",
        input_schema = schemas.GetManagedPrefixListAssociationsInput,
        output_schema = schemas.GetManagedPrefixListAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getManagedPrefixListEntries(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedPrefixListEntries",
        input_schema = schemas.GetManagedPrefixListEntriesInput,
        output_schema = schemas.GetManagedPrefixListEntriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getManagedResourceVisibility(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedResourceVisibility",
        input_schema = schemas.GetManagedResourceVisibilityInput,
        output_schema = schemas.GetManagedResourceVisibilityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNetworkInsightsAccessScopeAnalysisFindings(input, options)
    return self:invokeOperation(input, {
        name = "GetNetworkInsightsAccessScopeAnalysisFindings",
        input_schema = schemas.GetNetworkInsightsAccessScopeAnalysisFindingsInput,
        output_schema = schemas.GetNetworkInsightsAccessScopeAnalysisFindingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNetworkInsightsAccessScopeContent(input, options)
    return self:invokeOperation(input, {
        name = "GetNetworkInsightsAccessScopeContent",
        input_schema = schemas.GetNetworkInsightsAccessScopeContentInput,
        output_schema = schemas.GetNetworkInsightsAccessScopeContentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPasswordData(input, options)
    return self:invokeOperation(input, {
        name = "GetPasswordData",
        input_schema = schemas.GetPasswordDataInput,
        output_schema = schemas.GetPasswordDataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReservedInstancesExchangeQuote(input, options)
    return self:invokeOperation(input, {
        name = "GetReservedInstancesExchangeQuote",
        input_schema = schemas.GetReservedInstancesExchangeQuoteInput,
        output_schema = schemas.GetReservedInstancesExchangeQuoteOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRouteServerAssociations(input, options)
    return self:invokeOperation(input, {
        name = "GetRouteServerAssociations",
        input_schema = schemas.GetRouteServerAssociationsInput,
        output_schema = schemas.GetRouteServerAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRouteServerPropagations(input, options)
    return self:invokeOperation(input, {
        name = "GetRouteServerPropagations",
        input_schema = schemas.GetRouteServerPropagationsInput,
        output_schema = schemas.GetRouteServerPropagationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRouteServerRoutingDatabase(input, options)
    return self:invokeOperation(input, {
        name = "GetRouteServerRoutingDatabase",
        input_schema = schemas.GetRouteServerRoutingDatabaseInput,
        output_schema = schemas.GetRouteServerRoutingDatabaseOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSecurityGroupsForVpc(input, options)
    return self:invokeOperation(input, {
        name = "GetSecurityGroupsForVpc",
        input_schema = schemas.GetSecurityGroupsForVpcInput,
        output_schema = schemas.GetSecurityGroupsForVpcOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSerialConsoleAccessStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetSerialConsoleAccessStatus",
        input_schema = schemas.GetSerialConsoleAccessStatusInput,
        output_schema = schemas.GetSerialConsoleAccessStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSnapshotBlockPublicAccessState(input, options)
    return self:invokeOperation(input, {
        name = "GetSnapshotBlockPublicAccessState",
        input_schema = schemas.GetSnapshotBlockPublicAccessStateInput,
        output_schema = schemas.GetSnapshotBlockPublicAccessStateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSpotPlacementScores(input, options)
    return self:invokeOperation(input, {
        name = "GetSpotPlacementScores",
        input_schema = schemas.GetSpotPlacementScoresInput,
        output_schema = schemas.GetSpotPlacementScoresOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSubnetCidrReservations(input, options)
    return self:invokeOperation(input, {
        name = "GetSubnetCidrReservations",
        input_schema = schemas.GetSubnetCidrReservationsInput,
        output_schema = schemas.GetSubnetCidrReservationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTransitGatewayAttachmentPropagations(input, options)
    return self:invokeOperation(input, {
        name = "GetTransitGatewayAttachmentPropagations",
        input_schema = schemas.GetTransitGatewayAttachmentPropagationsInput,
        output_schema = schemas.GetTransitGatewayAttachmentPropagationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTransitGatewayMeteringPolicyEntries(input, options)
    return self:invokeOperation(input, {
        name = "GetTransitGatewayMeteringPolicyEntries",
        input_schema = schemas.GetTransitGatewayMeteringPolicyEntriesInput,
        output_schema = schemas.GetTransitGatewayMeteringPolicyEntriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTransitGatewayMulticastDomainAssociations(input, options)
    return self:invokeOperation(input, {
        name = "GetTransitGatewayMulticastDomainAssociations",
        input_schema = schemas.GetTransitGatewayMulticastDomainAssociationsInput,
        output_schema = schemas.GetTransitGatewayMulticastDomainAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTransitGatewayPolicyTableAssociations(input, options)
    return self:invokeOperation(input, {
        name = "GetTransitGatewayPolicyTableAssociations",
        input_schema = schemas.GetTransitGatewayPolicyTableAssociationsInput,
        output_schema = schemas.GetTransitGatewayPolicyTableAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTransitGatewayPolicyTableEntries(input, options)
    return self:invokeOperation(input, {
        name = "GetTransitGatewayPolicyTableEntries",
        input_schema = schemas.GetTransitGatewayPolicyTableEntriesInput,
        output_schema = schemas.GetTransitGatewayPolicyTableEntriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTransitGatewayPrefixListReferences(input, options)
    return self:invokeOperation(input, {
        name = "GetTransitGatewayPrefixListReferences",
        input_schema = schemas.GetTransitGatewayPrefixListReferencesInput,
        output_schema = schemas.GetTransitGatewayPrefixListReferencesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTransitGatewayRouteTableAssociations(input, options)
    return self:invokeOperation(input, {
        name = "GetTransitGatewayRouteTableAssociations",
        input_schema = schemas.GetTransitGatewayRouteTableAssociationsInput,
        output_schema = schemas.GetTransitGatewayRouteTableAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTransitGatewayRouteTablePropagations(input, options)
    return self:invokeOperation(input, {
        name = "GetTransitGatewayRouteTablePropagations",
        input_schema = schemas.GetTransitGatewayRouteTablePropagationsInput,
        output_schema = schemas.GetTransitGatewayRouteTablePropagationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVerifiedAccessEndpointPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetVerifiedAccessEndpointPolicy",
        input_schema = schemas.GetVerifiedAccessEndpointPolicyInput,
        output_schema = schemas.GetVerifiedAccessEndpointPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVerifiedAccessEndpointTargets(input, options)
    return self:invokeOperation(input, {
        name = "GetVerifiedAccessEndpointTargets",
        input_schema = schemas.GetVerifiedAccessEndpointTargetsInput,
        output_schema = schemas.GetVerifiedAccessEndpointTargetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVerifiedAccessGroupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetVerifiedAccessGroupPolicy",
        input_schema = schemas.GetVerifiedAccessGroupPolicyInput,
        output_schema = schemas.GetVerifiedAccessGroupPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVpcResourcesBlockingEncryptionEnforcement(input, options)
    return self:invokeOperation(input, {
        name = "GetVpcResourcesBlockingEncryptionEnforcement",
        input_schema = schemas.GetVpcResourcesBlockingEncryptionEnforcementInput,
        output_schema = schemas.GetVpcResourcesBlockingEncryptionEnforcementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVpnConnectionDeviceSampleConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetVpnConnectionDeviceSampleConfiguration",
        input_schema = schemas.GetVpnConnectionDeviceSampleConfigurationInput,
        output_schema = schemas.GetVpnConnectionDeviceSampleConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVpnConnectionDeviceTypes(input, options)
    return self:invokeOperation(input, {
        name = "GetVpnConnectionDeviceTypes",
        input_schema = schemas.GetVpnConnectionDeviceTypesInput,
        output_schema = schemas.GetVpnConnectionDeviceTypesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVpnTunnelReplacementStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetVpnTunnelReplacementStatus",
        input_schema = schemas.GetVpnTunnelReplacementStatusInput,
        output_schema = schemas.GetVpnTunnelReplacementStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importClientVpnClientCertificateRevocationList(input, options)
    return self:invokeOperation(input, {
        name = "ImportClientVpnClientCertificateRevocationList",
        input_schema = schemas.ImportClientVpnClientCertificateRevocationListInput,
        output_schema = schemas.ImportClientVpnClientCertificateRevocationListOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importImage(input, options)
    return self:invokeOperation(input, {
        name = "ImportImage",
        input_schema = schemas.ImportImageInput,
        output_schema = schemas.ImportImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importInstance(input, options)
    return self:invokeOperation(input, {
        name = "ImportInstance",
        input_schema = schemas.ImportInstanceInput,
        output_schema = schemas.ImportInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importKeyPair(input, options)
    return self:invokeOperation(input, {
        name = "ImportKeyPair",
        input_schema = schemas.ImportKeyPairInput,
        output_schema = schemas.ImportKeyPairOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "ImportSnapshot",
        input_schema = schemas.ImportSnapshotInput,
        output_schema = schemas.ImportSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importVolume(input, options)
    return self:invokeOperation(input, {
        name = "ImportVolume",
        input_schema = schemas.ImportVolumeInput,
        output_schema = schemas.ImportVolumeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listImagesInRecycleBin(input, options)
    return self:invokeOperation(input, {
        name = "ListImagesInRecycleBin",
        input_schema = schemas.ListImagesInRecycleBinInput,
        output_schema = schemas.ListImagesInRecycleBinOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSnapshotsInRecycleBin(input, options)
    return self:invokeOperation(input, {
        name = "ListSnapshotsInRecycleBin",
        input_schema = schemas.ListSnapshotsInRecycleBinInput,
        output_schema = schemas.ListSnapshotsInRecycleBinOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVolumesInRecycleBin(input, options)
    return self:invokeOperation(input, {
        name = "ListVolumesInRecycleBin",
        input_schema = schemas.ListVolumesInRecycleBinInput,
        output_schema = schemas.ListVolumesInRecycleBinOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:lockSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "LockSnapshot",
        input_schema = schemas.LockSnapshotInput,
        output_schema = schemas.LockSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyAddressAttribute(input, options)
    return self:invokeOperation(input, {
        name = "ModifyAddressAttribute",
        input_schema = schemas.ModifyAddressAttributeInput,
        output_schema = schemas.ModifyAddressAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyAvailabilityZoneGroup(input, options)
    return self:invokeOperation(input, {
        name = "ModifyAvailabilityZoneGroup",
        input_schema = schemas.ModifyAvailabilityZoneGroupInput,
        output_schema = schemas.ModifyAvailabilityZoneGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyCapacityReservation(input, options)
    return self:invokeOperation(input, {
        name = "ModifyCapacityReservation",
        input_schema = schemas.ModifyCapacityReservationInput,
        output_schema = schemas.ModifyCapacityReservationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyCapacityReservationFleet(input, options)
    return self:invokeOperation(input, {
        name = "ModifyCapacityReservationFleet",
        input_schema = schemas.ModifyCapacityReservationFleetInput,
        output_schema = schemas.ModifyCapacityReservationFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyClientVpnEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "ModifyClientVpnEndpoint",
        input_schema = schemas.ModifyClientVpnEndpointInput,
        output_schema = schemas.ModifyClientVpnEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyDefaultCreditSpecification(input, options)
    return self:invokeOperation(input, {
        name = "ModifyDefaultCreditSpecification",
        input_schema = schemas.ModifyDefaultCreditSpecificationInput,
        output_schema = schemas.ModifyDefaultCreditSpecificationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyEbsDefaultKmsKeyId(input, options)
    return self:invokeOperation(input, {
        name = "ModifyEbsDefaultKmsKeyId",
        input_schema = schemas.ModifyEbsDefaultKmsKeyIdInput,
        output_schema = schemas.ModifyEbsDefaultKmsKeyIdOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyFleet(input, options)
    return self:invokeOperation(input, {
        name = "ModifyFleet",
        input_schema = schemas.ModifyFleetInput,
        output_schema = schemas.ModifyFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyFpgaImageAttribute(input, options)
    return self:invokeOperation(input, {
        name = "ModifyFpgaImageAttribute",
        input_schema = schemas.ModifyFpgaImageAttributeInput,
        output_schema = schemas.ModifyFpgaImageAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyHosts(input, options)
    return self:invokeOperation(input, {
        name = "ModifyHosts",
        input_schema = schemas.ModifyHostsInput,
        output_schema = schemas.ModifyHostsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyIdentityIdFormat(input, options)
    return self:invokeOperation(input, {
        name = "ModifyIdentityIdFormat",
        input_schema = schemas.ModifyIdentityIdFormatInput,
        output_schema = schemas.ModifyIdentityIdFormatOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyIdFormat(input, options)
    return self:invokeOperation(input, {
        name = "ModifyIdFormat",
        input_schema = schemas.ModifyIdFormatInput,
        output_schema = schemas.ModifyIdFormatOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyImageAttribute(input, options)
    return self:invokeOperation(input, {
        name = "ModifyImageAttribute",
        input_schema = schemas.ModifyImageAttributeInput,
        output_schema = schemas.ModifyImageAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyInstanceAttribute(input, options)
    return self:invokeOperation(input, {
        name = "ModifyInstanceAttribute",
        input_schema = schemas.ModifyInstanceAttributeInput,
        output_schema = schemas.ModifyInstanceAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyInstanceCapacityReservationAttributes(input, options)
    return self:invokeOperation(input, {
        name = "ModifyInstanceCapacityReservationAttributes",
        input_schema = schemas.ModifyInstanceCapacityReservationAttributesInput,
        output_schema = schemas.ModifyInstanceCapacityReservationAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyInstanceConnectEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "ModifyInstanceConnectEndpoint",
        input_schema = schemas.ModifyInstanceConnectEndpointInput,
        output_schema = schemas.ModifyInstanceConnectEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyInstanceCpuOptions(input, options)
    return self:invokeOperation(input, {
        name = "ModifyInstanceCpuOptions",
        input_schema = schemas.ModifyInstanceCpuOptionsInput,
        output_schema = schemas.ModifyInstanceCpuOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyInstanceCreditSpecification(input, options)
    return self:invokeOperation(input, {
        name = "ModifyInstanceCreditSpecification",
        input_schema = schemas.ModifyInstanceCreditSpecificationInput,
        output_schema = schemas.ModifyInstanceCreditSpecificationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyInstanceEventStartTime(input, options)
    return self:invokeOperation(input, {
        name = "ModifyInstanceEventStartTime",
        input_schema = schemas.ModifyInstanceEventStartTimeInput,
        output_schema = schemas.ModifyInstanceEventStartTimeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyInstanceEventWindow(input, options)
    return self:invokeOperation(input, {
        name = "ModifyInstanceEventWindow",
        input_schema = schemas.ModifyInstanceEventWindowInput,
        output_schema = schemas.ModifyInstanceEventWindowOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyInstanceMaintenanceOptions(input, options)
    return self:invokeOperation(input, {
        name = "ModifyInstanceMaintenanceOptions",
        input_schema = schemas.ModifyInstanceMaintenanceOptionsInput,
        output_schema = schemas.ModifyInstanceMaintenanceOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyInstanceMetadataDefaults(input, options)
    return self:invokeOperation(input, {
        name = "ModifyInstanceMetadataDefaults",
        input_schema = schemas.ModifyInstanceMetadataDefaultsInput,
        output_schema = schemas.ModifyInstanceMetadataDefaultsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyInstanceMetadataOptions(input, options)
    return self:invokeOperation(input, {
        name = "ModifyInstanceMetadataOptions",
        input_schema = schemas.ModifyInstanceMetadataOptionsInput,
        output_schema = schemas.ModifyInstanceMetadataOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyInstanceNetworkPerformanceOptions(input, options)
    return self:invokeOperation(input, {
        name = "ModifyInstanceNetworkPerformanceOptions",
        input_schema = schemas.ModifyInstanceNetworkPerformanceOptionsInput,
        output_schema = schemas.ModifyInstanceNetworkPerformanceOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyInstancePlacement(input, options)
    return self:invokeOperation(input, {
        name = "ModifyInstancePlacement",
        input_schema = schemas.ModifyInstancePlacementInput,
        output_schema = schemas.ModifyInstancePlacementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyIpam(input, options)
    return self:invokeOperation(input, {
        name = "ModifyIpam",
        input_schema = schemas.ModifyIpamInput,
        output_schema = schemas.ModifyIpamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyIpamPolicyAllocationRules(input, options)
    return self:invokeOperation(input, {
        name = "ModifyIpamPolicyAllocationRules",
        input_schema = schemas.ModifyIpamPolicyAllocationRulesInput,
        output_schema = schemas.ModifyIpamPolicyAllocationRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyIpamPool(input, options)
    return self:invokeOperation(input, {
        name = "ModifyIpamPool",
        input_schema = schemas.ModifyIpamPoolInput,
        output_schema = schemas.ModifyIpamPoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyIpamPrefixListResolver(input, options)
    return self:invokeOperation(input, {
        name = "ModifyIpamPrefixListResolver",
        input_schema = schemas.ModifyIpamPrefixListResolverInput,
        output_schema = schemas.ModifyIpamPrefixListResolverOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyIpamPrefixListResolverTarget(input, options)
    return self:invokeOperation(input, {
        name = "ModifyIpamPrefixListResolverTarget",
        input_schema = schemas.ModifyIpamPrefixListResolverTargetInput,
        output_schema = schemas.ModifyIpamPrefixListResolverTargetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyIpamResourceCidr(input, options)
    return self:invokeOperation(input, {
        name = "ModifyIpamResourceCidr",
        input_schema = schemas.ModifyIpamResourceCidrInput,
        output_schema = schemas.ModifyIpamResourceCidrOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyIpamResourceDiscovery(input, options)
    return self:invokeOperation(input, {
        name = "ModifyIpamResourceDiscovery",
        input_schema = schemas.ModifyIpamResourceDiscoveryInput,
        output_schema = schemas.ModifyIpamResourceDiscoveryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyIpamScope(input, options)
    return self:invokeOperation(input, {
        name = "ModifyIpamScope",
        input_schema = schemas.ModifyIpamScopeInput,
        output_schema = schemas.ModifyIpamScopeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyLaunchTemplate(input, options)
    return self:invokeOperation(input, {
        name = "ModifyLaunchTemplate",
        input_schema = schemas.ModifyLaunchTemplateInput,
        output_schema = schemas.ModifyLaunchTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyLocalGatewayRoute(input, options)
    return self:invokeOperation(input, {
        name = "ModifyLocalGatewayRoute",
        input_schema = schemas.ModifyLocalGatewayRouteInput,
        output_schema = schemas.ModifyLocalGatewayRouteOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyManagedPrefixList(input, options)
    return self:invokeOperation(input, {
        name = "ModifyManagedPrefixList",
        input_schema = schemas.ModifyManagedPrefixListInput,
        output_schema = schemas.ModifyManagedPrefixListOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyManagedResourceVisibility(input, options)
    return self:invokeOperation(input, {
        name = "ModifyManagedResourceVisibility",
        input_schema = schemas.ModifyManagedResourceVisibilityInput,
        output_schema = schemas.ModifyManagedResourceVisibilityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyNetworkInterfaceAttribute(input, options)
    return self:invokeOperation(input, {
        name = "ModifyNetworkInterfaceAttribute",
        input_schema = schemas.ModifyNetworkInterfaceAttributeInput,
        output_schema = schemas.ModifyNetworkInterfaceAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyPrivateDnsNameOptions(input, options)
    return self:invokeOperation(input, {
        name = "ModifyPrivateDnsNameOptions",
        input_schema = schemas.ModifyPrivateDnsNameOptionsInput,
        output_schema = schemas.ModifyPrivateDnsNameOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyPublicIpDnsNameOptions(input, options)
    return self:invokeOperation(input, {
        name = "ModifyPublicIpDnsNameOptions",
        input_schema = schemas.ModifyPublicIpDnsNameOptionsInput,
        output_schema = schemas.ModifyPublicIpDnsNameOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyReservedInstances(input, options)
    return self:invokeOperation(input, {
        name = "ModifyReservedInstances",
        input_schema = schemas.ModifyReservedInstancesInput,
        output_schema = schemas.ModifyReservedInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyRouteServer(input, options)
    return self:invokeOperation(input, {
        name = "ModifyRouteServer",
        input_schema = schemas.ModifyRouteServerInput,
        output_schema = schemas.ModifyRouteServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifySecurityGroupRules(input, options)
    return self:invokeOperation(input, {
        name = "ModifySecurityGroupRules",
        input_schema = schemas.ModifySecurityGroupRulesInput,
        output_schema = schemas.ModifySecurityGroupRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifySnapshotAttribute(input, options)
    return self:invokeOperation(input, {
        name = "ModifySnapshotAttribute",
        input_schema = schemas.ModifySnapshotAttributeInput,
        output_schema = schemas.ModifySnapshotAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifySnapshotTier(input, options)
    return self:invokeOperation(input, {
        name = "ModifySnapshotTier",
        input_schema = schemas.ModifySnapshotTierInput,
        output_schema = schemas.ModifySnapshotTierOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifySpotFleetRequest(input, options)
    return self:invokeOperation(input, {
        name = "ModifySpotFleetRequest",
        input_schema = schemas.ModifySpotFleetRequestInput,
        output_schema = schemas.ModifySpotFleetRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifySubnetAttribute(input, options)
    return self:invokeOperation(input, {
        name = "ModifySubnetAttribute",
        input_schema = schemas.ModifySubnetAttributeInput,
        output_schema = schemas.ModifySubnetAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyTrafficMirrorFilterNetworkServices(input, options)
    return self:invokeOperation(input, {
        name = "ModifyTrafficMirrorFilterNetworkServices",
        input_schema = schemas.ModifyTrafficMirrorFilterNetworkServicesInput,
        output_schema = schemas.ModifyTrafficMirrorFilterNetworkServicesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyTrafficMirrorFilterRule(input, options)
    return self:invokeOperation(input, {
        name = "ModifyTrafficMirrorFilterRule",
        input_schema = schemas.ModifyTrafficMirrorFilterRuleInput,
        output_schema = schemas.ModifyTrafficMirrorFilterRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyTrafficMirrorSession(input, options)
    return self:invokeOperation(input, {
        name = "ModifyTrafficMirrorSession",
        input_schema = schemas.ModifyTrafficMirrorSessionInput,
        output_schema = schemas.ModifyTrafficMirrorSessionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyTransitGateway(input, options)
    return self:invokeOperation(input, {
        name = "ModifyTransitGateway",
        input_schema = schemas.ModifyTransitGatewayInput,
        output_schema = schemas.ModifyTransitGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyTransitGatewayMeteringPolicy(input, options)
    return self:invokeOperation(input, {
        name = "ModifyTransitGatewayMeteringPolicy",
        input_schema = schemas.ModifyTransitGatewayMeteringPolicyInput,
        output_schema = schemas.ModifyTransitGatewayMeteringPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyTransitGatewayPrefixListReference(input, options)
    return self:invokeOperation(input, {
        name = "ModifyTransitGatewayPrefixListReference",
        input_schema = schemas.ModifyTransitGatewayPrefixListReferenceInput,
        output_schema = schemas.ModifyTransitGatewayPrefixListReferenceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyTransitGatewayVpcAttachment(input, options)
    return self:invokeOperation(input, {
        name = "ModifyTransitGatewayVpcAttachment",
        input_schema = schemas.ModifyTransitGatewayVpcAttachmentInput,
        output_schema = schemas.ModifyTransitGatewayVpcAttachmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVerifiedAccessEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVerifiedAccessEndpoint",
        input_schema = schemas.ModifyVerifiedAccessEndpointInput,
        output_schema = schemas.ModifyVerifiedAccessEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVerifiedAccessEndpointPolicy(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVerifiedAccessEndpointPolicy",
        input_schema = schemas.ModifyVerifiedAccessEndpointPolicyInput,
        output_schema = schemas.ModifyVerifiedAccessEndpointPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVerifiedAccessGroup(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVerifiedAccessGroup",
        input_schema = schemas.ModifyVerifiedAccessGroupInput,
        output_schema = schemas.ModifyVerifiedAccessGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVerifiedAccessGroupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVerifiedAccessGroupPolicy",
        input_schema = schemas.ModifyVerifiedAccessGroupPolicyInput,
        output_schema = schemas.ModifyVerifiedAccessGroupPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVerifiedAccessInstance(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVerifiedAccessInstance",
        input_schema = schemas.ModifyVerifiedAccessInstanceInput,
        output_schema = schemas.ModifyVerifiedAccessInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVerifiedAccessInstanceLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVerifiedAccessInstanceLoggingConfiguration",
        input_schema = schemas.ModifyVerifiedAccessInstanceLoggingConfigurationInput,
        output_schema = schemas.ModifyVerifiedAccessInstanceLoggingConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVerifiedAccessTrustProvider(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVerifiedAccessTrustProvider",
        input_schema = schemas.ModifyVerifiedAccessTrustProviderInput,
        output_schema = schemas.ModifyVerifiedAccessTrustProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVolume(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVolume",
        input_schema = schemas.ModifyVolumeInput,
        output_schema = schemas.ModifyVolumeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVolumeAttribute(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVolumeAttribute",
        input_schema = schemas.ModifyVolumeAttributeInput,
        output_schema = schemas.ModifyVolumeAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVpcAttribute(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVpcAttribute",
        input_schema = schemas.ModifyVpcAttributeInput,
        output_schema = schemas.ModifyVpcAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVpcBlockPublicAccessExclusion(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVpcBlockPublicAccessExclusion",
        input_schema = schemas.ModifyVpcBlockPublicAccessExclusionInput,
        output_schema = schemas.ModifyVpcBlockPublicAccessExclusionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVpcBlockPublicAccessOptions(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVpcBlockPublicAccessOptions",
        input_schema = schemas.ModifyVpcBlockPublicAccessOptionsInput,
        output_schema = schemas.ModifyVpcBlockPublicAccessOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVpcEncryptionControl(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVpcEncryptionControl",
        input_schema = schemas.ModifyVpcEncryptionControlInput,
        output_schema = schemas.ModifyVpcEncryptionControlOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVpcEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVpcEndpoint",
        input_schema = schemas.ModifyVpcEndpointInput,
        output_schema = schemas.ModifyVpcEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVpcEndpointConnectionNotification(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVpcEndpointConnectionNotification",
        input_schema = schemas.ModifyVpcEndpointConnectionNotificationInput,
        output_schema = schemas.ModifyVpcEndpointConnectionNotificationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVpcEndpointServiceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVpcEndpointServiceConfiguration",
        input_schema = schemas.ModifyVpcEndpointServiceConfigurationInput,
        output_schema = schemas.ModifyVpcEndpointServiceConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVpcEndpointServicePayerResponsibility(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVpcEndpointServicePayerResponsibility",
        input_schema = schemas.ModifyVpcEndpointServicePayerResponsibilityInput,
        output_schema = schemas.ModifyVpcEndpointServicePayerResponsibilityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVpcEndpointServicePermissions(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVpcEndpointServicePermissions",
        input_schema = schemas.ModifyVpcEndpointServicePermissionsInput,
        output_schema = schemas.ModifyVpcEndpointServicePermissionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVpcPeeringConnectionOptions(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVpcPeeringConnectionOptions",
        input_schema = schemas.ModifyVpcPeeringConnectionOptionsInput,
        output_schema = schemas.ModifyVpcPeeringConnectionOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVpcTenancy(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVpcTenancy",
        input_schema = schemas.ModifyVpcTenancyInput,
        output_schema = schemas.ModifyVpcTenancyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVpnConnection(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVpnConnection",
        input_schema = schemas.ModifyVpnConnectionInput,
        output_schema = schemas.ModifyVpnConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVpnConnectionOptions(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVpnConnectionOptions",
        input_schema = schemas.ModifyVpnConnectionOptionsInput,
        output_schema = schemas.ModifyVpnConnectionOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVpnTunnelCertificate(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVpnTunnelCertificate",
        input_schema = schemas.ModifyVpnTunnelCertificateInput,
        output_schema = schemas.ModifyVpnTunnelCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyVpnTunnelOptions(input, options)
    return self:invokeOperation(input, {
        name = "ModifyVpnTunnelOptions",
        input_schema = schemas.ModifyVpnTunnelOptionsInput,
        output_schema = schemas.ModifyVpnTunnelOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:monitorInstances(input, options)
    return self:invokeOperation(input, {
        name = "MonitorInstances",
        input_schema = schemas.MonitorInstancesInput,
        output_schema = schemas.MonitorInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:moveAddressToVpc(input, options)
    return self:invokeOperation(input, {
        name = "MoveAddressToVpc",
        input_schema = schemas.MoveAddressToVpcInput,
        output_schema = schemas.MoveAddressToVpcOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:moveByoipCidrToIpam(input, options)
    return self:invokeOperation(input, {
        name = "MoveByoipCidrToIpam",
        input_schema = schemas.MoveByoipCidrToIpamInput,
        output_schema = schemas.MoveByoipCidrToIpamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:moveCapacityReservationInstances(input, options)
    return self:invokeOperation(input, {
        name = "MoveCapacityReservationInstances",
        input_schema = schemas.MoveCapacityReservationInstancesInput,
        output_schema = schemas.MoveCapacityReservationInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:provisionByoipCidr(input, options)
    return self:invokeOperation(input, {
        name = "ProvisionByoipCidr",
        input_schema = schemas.ProvisionByoipCidrInput,
        output_schema = schemas.ProvisionByoipCidrOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:provisionIpamByoasn(input, options)
    return self:invokeOperation(input, {
        name = "ProvisionIpamByoasn",
        input_schema = schemas.ProvisionIpamByoasnInput,
        output_schema = schemas.ProvisionIpamByoasnOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:provisionIpamPoolCidr(input, options)
    return self:invokeOperation(input, {
        name = "ProvisionIpamPoolCidr",
        input_schema = schemas.ProvisionIpamPoolCidrInput,
        output_schema = schemas.ProvisionIpamPoolCidrOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:provisionPublicIpv4PoolCidr(input, options)
    return self:invokeOperation(input, {
        name = "ProvisionPublicIpv4PoolCidr",
        input_schema = schemas.ProvisionPublicIpv4PoolCidrInput,
        output_schema = schemas.ProvisionPublicIpv4PoolCidrOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:purchaseCapacityBlock(input, options)
    return self:invokeOperation(input, {
        name = "PurchaseCapacityBlock",
        input_schema = schemas.PurchaseCapacityBlockInput,
        output_schema = schemas.PurchaseCapacityBlockOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:purchaseCapacityBlockExtension(input, options)
    return self:invokeOperation(input, {
        name = "PurchaseCapacityBlockExtension",
        input_schema = schemas.PurchaseCapacityBlockExtensionInput,
        output_schema = schemas.PurchaseCapacityBlockExtensionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:purchaseHostReservation(input, options)
    return self:invokeOperation(input, {
        name = "PurchaseHostReservation",
        input_schema = schemas.PurchaseHostReservationInput,
        output_schema = schemas.PurchaseHostReservationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:purchaseReservedInstancesOffering(input, options)
    return self:invokeOperation(input, {
        name = "PurchaseReservedInstancesOffering",
        input_schema = schemas.PurchaseReservedInstancesOfferingInput,
        output_schema = schemas.PurchaseReservedInstancesOfferingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:purchaseScheduledInstances(input, options)
    return self:invokeOperation(input, {
        name = "PurchaseScheduledInstances",
        input_schema = schemas.PurchaseScheduledInstancesInput,
        output_schema = schemas.PurchaseScheduledInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rebootInstances(input, options)
    return self:invokeOperation(input, {
        name = "RebootInstances",
        input_schema = schemas.RebootInstancesInput,
        output_schema = schemas.RebootInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerImage(input, options)
    return self:invokeOperation(input, {
        name = "RegisterImage",
        input_schema = schemas.RegisterImageInput,
        output_schema = schemas.RegisterImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerInstanceEventNotificationAttributes(input, options)
    return self:invokeOperation(input, {
        name = "RegisterInstanceEventNotificationAttributes",
        input_schema = schemas.RegisterInstanceEventNotificationAttributesInput,
        output_schema = schemas.RegisterInstanceEventNotificationAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerTransitGatewayMulticastGroupMembers(input, options)
    return self:invokeOperation(input, {
        name = "RegisterTransitGatewayMulticastGroupMembers",
        input_schema = schemas.RegisterTransitGatewayMulticastGroupMembersInput,
        output_schema = schemas.RegisterTransitGatewayMulticastGroupMembersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerTransitGatewayMulticastGroupSources(input, options)
    return self:invokeOperation(input, {
        name = "RegisterTransitGatewayMulticastGroupSources",
        input_schema = schemas.RegisterTransitGatewayMulticastGroupSourcesInput,
        output_schema = schemas.RegisterTransitGatewayMulticastGroupSourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectCapacityReservationBillingOwnership(input, options)
    return self:invokeOperation(input, {
        name = "RejectCapacityReservationBillingOwnership",
        input_schema = schemas.RejectCapacityReservationBillingOwnershipInput,
        output_schema = schemas.RejectCapacityReservationBillingOwnershipOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectTransitGatewayClientVpnAttachment(input, options)
    return self:invokeOperation(input, {
        name = "RejectTransitGatewayClientVpnAttachment",
        input_schema = schemas.RejectTransitGatewayClientVpnAttachmentInput,
        output_schema = schemas.RejectTransitGatewayClientVpnAttachmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectTransitGatewayMulticastDomainAssociations(input, options)
    return self:invokeOperation(input, {
        name = "RejectTransitGatewayMulticastDomainAssociations",
        input_schema = schemas.RejectTransitGatewayMulticastDomainAssociationsInput,
        output_schema = schemas.RejectTransitGatewayMulticastDomainAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectTransitGatewayPeeringAttachment(input, options)
    return self:invokeOperation(input, {
        name = "RejectTransitGatewayPeeringAttachment",
        input_schema = schemas.RejectTransitGatewayPeeringAttachmentInput,
        output_schema = schemas.RejectTransitGatewayPeeringAttachmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectTransitGatewayVpcAttachment(input, options)
    return self:invokeOperation(input, {
        name = "RejectTransitGatewayVpcAttachment",
        input_schema = schemas.RejectTransitGatewayVpcAttachmentInput,
        output_schema = schemas.RejectTransitGatewayVpcAttachmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectVpcEndpointConnections(input, options)
    return self:invokeOperation(input, {
        name = "RejectVpcEndpointConnections",
        input_schema = schemas.RejectVpcEndpointConnectionsInput,
        output_schema = schemas.RejectVpcEndpointConnectionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectVpcPeeringConnection(input, options)
    return self:invokeOperation(input, {
        name = "RejectVpcPeeringConnection",
        input_schema = schemas.RejectVpcPeeringConnectionInput,
        output_schema = schemas.RejectVpcPeeringConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:releaseAddress(input, options)
    return self:invokeOperation(input, {
        name = "ReleaseAddress",
        input_schema = schemas.ReleaseAddressInput,
        output_schema = schemas.ReleaseAddressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:releaseHosts(input, options)
    return self:invokeOperation(input, {
        name = "ReleaseHosts",
        input_schema = schemas.ReleaseHostsInput,
        output_schema = schemas.ReleaseHostsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:releaseIpamPoolAllocation(input, options)
    return self:invokeOperation(input, {
        name = "ReleaseIpamPoolAllocation",
        input_schema = schemas.ReleaseIpamPoolAllocationInput,
        output_schema = schemas.ReleaseIpamPoolAllocationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:replaceIamInstanceProfileAssociation(input, options)
    return self:invokeOperation(input, {
        name = "ReplaceIamInstanceProfileAssociation",
        input_schema = schemas.ReplaceIamInstanceProfileAssociationInput,
        output_schema = schemas.ReplaceIamInstanceProfileAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:replaceImageCriteriaInAllowedImagesSettings(input, options)
    return self:invokeOperation(input, {
        name = "ReplaceImageCriteriaInAllowedImagesSettings",
        input_schema = schemas.ReplaceImageCriteriaInAllowedImagesSettingsInput,
        output_schema = schemas.ReplaceImageCriteriaInAllowedImagesSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:replaceNetworkAclAssociation(input, options)
    return self:invokeOperation(input, {
        name = "ReplaceNetworkAclAssociation",
        input_schema = schemas.ReplaceNetworkAclAssociationInput,
        output_schema = schemas.ReplaceNetworkAclAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:replaceNetworkAclEntry(input, options)
    return self:invokeOperation(input, {
        name = "ReplaceNetworkAclEntry",
        input_schema = schemas.ReplaceNetworkAclEntryInput,
        output_schema = schemas.ReplaceNetworkAclEntryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:replaceRoute(input, options)
    return self:invokeOperation(input, {
        name = "ReplaceRoute",
        input_schema = schemas.ReplaceRouteInput,
        output_schema = schemas.ReplaceRouteOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:replaceRouteTableAssociation(input, options)
    return self:invokeOperation(input, {
        name = "ReplaceRouteTableAssociation",
        input_schema = schemas.ReplaceRouteTableAssociationInput,
        output_schema = schemas.ReplaceRouteTableAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:replaceTransitGatewayRoute(input, options)
    return self:invokeOperation(input, {
        name = "ReplaceTransitGatewayRoute",
        input_schema = schemas.ReplaceTransitGatewayRouteInput,
        output_schema = schemas.ReplaceTransitGatewayRouteOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:replaceVpnTunnel(input, options)
    return self:invokeOperation(input, {
        name = "ReplaceVpnTunnel",
        input_schema = schemas.ReplaceVpnTunnelInput,
        output_schema = schemas.ReplaceVpnTunnelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:reportInstanceStatus(input, options)
    return self:invokeOperation(input, {
        name = "ReportInstanceStatus",
        input_schema = schemas.ReportInstanceStatusInput,
        output_schema = schemas.ReportInstanceStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:requestSpotFleet(input, options)
    return self:invokeOperation(input, {
        name = "RequestSpotFleet",
        input_schema = schemas.RequestSpotFleetInput,
        output_schema = schemas.RequestSpotFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:requestSpotInstances(input, options)
    return self:invokeOperation(input, {
        name = "RequestSpotInstances",
        input_schema = schemas.RequestSpotInstancesInput,
        output_schema = schemas.RequestSpotInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetAddressAttribute(input, options)
    return self:invokeOperation(input, {
        name = "ResetAddressAttribute",
        input_schema = schemas.ResetAddressAttributeInput,
        output_schema = schemas.ResetAddressAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetEbsDefaultKmsKeyId(input, options)
    return self:invokeOperation(input, {
        name = "ResetEbsDefaultKmsKeyId",
        input_schema = schemas.ResetEbsDefaultKmsKeyIdInput,
        output_schema = schemas.ResetEbsDefaultKmsKeyIdOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetFpgaImageAttribute(input, options)
    return self:invokeOperation(input, {
        name = "ResetFpgaImageAttribute",
        input_schema = schemas.ResetFpgaImageAttributeInput,
        output_schema = schemas.ResetFpgaImageAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetImageAttribute(input, options)
    return self:invokeOperation(input, {
        name = "ResetImageAttribute",
        input_schema = schemas.ResetImageAttributeInput,
        output_schema = schemas.ResetImageAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetInstanceAttribute(input, options)
    return self:invokeOperation(input, {
        name = "ResetInstanceAttribute",
        input_schema = schemas.ResetInstanceAttributeInput,
        output_schema = schemas.ResetInstanceAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetNetworkInterfaceAttribute(input, options)
    return self:invokeOperation(input, {
        name = "ResetNetworkInterfaceAttribute",
        input_schema = schemas.ResetNetworkInterfaceAttributeInput,
        output_schema = schemas.ResetNetworkInterfaceAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetSnapshotAttribute(input, options)
    return self:invokeOperation(input, {
        name = "ResetSnapshotAttribute",
        input_schema = schemas.ResetSnapshotAttributeInput,
        output_schema = schemas.ResetSnapshotAttributeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreAddressToClassic(input, options)
    return self:invokeOperation(input, {
        name = "RestoreAddressToClassic",
        input_schema = schemas.RestoreAddressToClassicInput,
        output_schema = schemas.RestoreAddressToClassicOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreImageFromRecycleBin(input, options)
    return self:invokeOperation(input, {
        name = "RestoreImageFromRecycleBin",
        input_schema = schemas.RestoreImageFromRecycleBinInput,
        output_schema = schemas.RestoreImageFromRecycleBinOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreManagedPrefixListVersion(input, options)
    return self:invokeOperation(input, {
        name = "RestoreManagedPrefixListVersion",
        input_schema = schemas.RestoreManagedPrefixListVersionInput,
        output_schema = schemas.RestoreManagedPrefixListVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreSnapshotFromRecycleBin(input, options)
    return self:invokeOperation(input, {
        name = "RestoreSnapshotFromRecycleBin",
        input_schema = schemas.RestoreSnapshotFromRecycleBinInput,
        output_schema = schemas.RestoreSnapshotFromRecycleBinOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreSnapshotTier(input, options)
    return self:invokeOperation(input, {
        name = "RestoreSnapshotTier",
        input_schema = schemas.RestoreSnapshotTierInput,
        output_schema = schemas.RestoreSnapshotTierOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreVolumeFromRecycleBin(input, options)
    return self:invokeOperation(input, {
        name = "RestoreVolumeFromRecycleBin",
        input_schema = schemas.RestoreVolumeFromRecycleBinInput,
        output_schema = schemas.RestoreVolumeFromRecycleBinOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:revokeClientVpnIngress(input, options)
    return self:invokeOperation(input, {
        name = "RevokeClientVpnIngress",
        input_schema = schemas.RevokeClientVpnIngressInput,
        output_schema = schemas.RevokeClientVpnIngressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:revokeSecurityGroupEgress(input, options)
    return self:invokeOperation(input, {
        name = "RevokeSecurityGroupEgress",
        input_schema = schemas.RevokeSecurityGroupEgressInput,
        output_schema = schemas.RevokeSecurityGroupEgressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:revokeSecurityGroupIngress(input, options)
    return self:invokeOperation(input, {
        name = "RevokeSecurityGroupIngress",
        input_schema = schemas.RevokeSecurityGroupIngressInput,
        output_schema = schemas.RevokeSecurityGroupIngressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:runInstances(input, options)
    return self:invokeOperation(input, {
        name = "RunInstances",
        input_schema = schemas.RunInstancesInput,
        output_schema = schemas.RunInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:runScheduledInstances(input, options)
    return self:invokeOperation(input, {
        name = "RunScheduledInstances",
        input_schema = schemas.RunScheduledInstancesInput,
        output_schema = schemas.RunScheduledInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchLocalGatewayRoutes(input, options)
    return self:invokeOperation(input, {
        name = "SearchLocalGatewayRoutes",
        input_schema = schemas.SearchLocalGatewayRoutesInput,
        output_schema = schemas.SearchLocalGatewayRoutesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchTransitGatewayMulticastGroups(input, options)
    return self:invokeOperation(input, {
        name = "SearchTransitGatewayMulticastGroups",
        input_schema = schemas.SearchTransitGatewayMulticastGroupsInput,
        output_schema = schemas.SearchTransitGatewayMulticastGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchTransitGatewayRoutes(input, options)
    return self:invokeOperation(input, {
        name = "SearchTransitGatewayRoutes",
        input_schema = schemas.SearchTransitGatewayRoutesInput,
        output_schema = schemas.SearchTransitGatewayRoutesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendDiagnosticInterrupt(input, options)
    return self:invokeOperation(input, {
        name = "SendDiagnosticInterrupt",
        input_schema = schemas.SendDiagnosticInterruptInput,
        output_schema = schemas.SendDiagnosticInterruptOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDeclarativePoliciesReport(input, options)
    return self:invokeOperation(input, {
        name = "StartDeclarativePoliciesReport",
        input_schema = schemas.StartDeclarativePoliciesReportInput,
        output_schema = schemas.StartDeclarativePoliciesReportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startInstances(input, options)
    return self:invokeOperation(input, {
        name = "StartInstances",
        input_schema = schemas.StartInstancesInput,
        output_schema = schemas.StartInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startNetworkInsightsAccessScopeAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "StartNetworkInsightsAccessScopeAnalysis",
        input_schema = schemas.StartNetworkInsightsAccessScopeAnalysisInput,
        output_schema = schemas.StartNetworkInsightsAccessScopeAnalysisOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startNetworkInsightsAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "StartNetworkInsightsAnalysis",
        input_schema = schemas.StartNetworkInsightsAnalysisInput,
        output_schema = schemas.StartNetworkInsightsAnalysisOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startVpcEndpointServicePrivateDnsVerification(input, options)
    return self:invokeOperation(input, {
        name = "StartVpcEndpointServicePrivateDnsVerification",
        input_schema = schemas.StartVpcEndpointServicePrivateDnsVerificationInput,
        output_schema = schemas.StartVpcEndpointServicePrivateDnsVerificationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopInstances(input, options)
    return self:invokeOperation(input, {
        name = "StopInstances",
        input_schema = schemas.StopInstancesInput,
        output_schema = schemas.StopInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:terminateClientVpnConnections(input, options)
    return self:invokeOperation(input, {
        name = "TerminateClientVpnConnections",
        input_schema = schemas.TerminateClientVpnConnectionsInput,
        output_schema = schemas.TerminateClientVpnConnectionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:terminateInstances(input, options)
    return self:invokeOperation(input, {
        name = "TerminateInstances",
        input_schema = schemas.TerminateInstancesInput,
        output_schema = schemas.TerminateInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:unassignIpv6Addresses(input, options)
    return self:invokeOperation(input, {
        name = "UnassignIpv6Addresses",
        input_schema = schemas.UnassignIpv6AddressesInput,
        output_schema = schemas.UnassignIpv6AddressesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:unassignPrivateIpAddresses(input, options)
    return self:invokeOperation(input, {
        name = "UnassignPrivateIpAddresses",
        input_schema = schemas.UnassignPrivateIpAddressesInput,
        output_schema = schemas.UnassignPrivateIpAddressesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:unassignPrivateNatGatewayAddress(input, options)
    return self:invokeOperation(input, {
        name = "UnassignPrivateNatGatewayAddress",
        input_schema = schemas.UnassignPrivateNatGatewayAddressInput,
        output_schema = schemas.UnassignPrivateNatGatewayAddressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:unlockSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "UnlockSnapshot",
        input_schema = schemas.UnlockSnapshotInput,
        output_schema = schemas.UnlockSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:unmonitorInstances(input, options)
    return self:invokeOperation(input, {
        name = "UnmonitorInstances",
        input_schema = schemas.UnmonitorInstancesInput,
        output_schema = schemas.UnmonitorInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCapacityManagerMonitoredTagKeys(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCapacityManagerMonitoredTagKeys",
        input_schema = schemas.UpdateCapacityManagerMonitoredTagKeysInput,
        output_schema = schemas.UpdateCapacityManagerMonitoredTagKeysOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCapacityManagerOrganizationsAccess(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCapacityManagerOrganizationsAccess",
        input_schema = schemas.UpdateCapacityManagerOrganizationsAccessInput,
        output_schema = schemas.UpdateCapacityManagerOrganizationsAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateInterruptibleCapacityReservationAllocation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInterruptibleCapacityReservationAllocation",
        input_schema = schemas.UpdateInterruptibleCapacityReservationAllocationInput,
        output_schema = schemas.UpdateInterruptibleCapacityReservationAllocationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSecurityGroupRuleDescriptionsEgress(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSecurityGroupRuleDescriptionsEgress",
        input_schema = schemas.UpdateSecurityGroupRuleDescriptionsEgressInput,
        output_schema = schemas.UpdateSecurityGroupRuleDescriptionsEgressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSecurityGroupRuleDescriptionsIngress(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSecurityGroupRuleDescriptionsIngress",
        input_schema = schemas.UpdateSecurityGroupRuleDescriptionsIngressInput,
        output_schema = schemas.UpdateSecurityGroupRuleDescriptionsIngressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:withdrawByoipCidr(input, options)
    return self:invokeOperation(input, {
        name = "WithdrawByoipCidr",
        input_schema = schemas.WithdrawByoipCidrInput,
        output_schema = schemas.WithdrawByoipCidrOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
