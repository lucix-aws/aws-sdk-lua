local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ec2.endpoint_rules")
local query_protocol = require("protocol.query")
local sdk_defaults = require("sdk_defaults")
local types = require("ec2.types")

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
        input_schema = types.AcceptAddressTransferInput,
        output_schema = types.AcceptAddressTransferOutput,
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
        input_schema = types.AcceptCapacityReservationBillingOwnershipInput,
        output_schema = types.AcceptCapacityReservationBillingOwnershipOutput,
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
        input_schema = types.AcceptReservedInstancesExchangeQuoteInput,
        output_schema = types.AcceptReservedInstancesExchangeQuoteOutput,
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
        input_schema = types.AcceptTransitGatewayClientVpnAttachmentInput,
        output_schema = types.AcceptTransitGatewayClientVpnAttachmentOutput,
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
        input_schema = types.AcceptTransitGatewayMulticastDomainAssociationsInput,
        output_schema = types.AcceptTransitGatewayMulticastDomainAssociationsOutput,
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
        input_schema = types.AcceptTransitGatewayPeeringAttachmentInput,
        output_schema = types.AcceptTransitGatewayPeeringAttachmentOutput,
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
        input_schema = types.AcceptTransitGatewayVpcAttachmentInput,
        output_schema = types.AcceptTransitGatewayVpcAttachmentOutput,
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
        input_schema = types.AcceptVpcEndpointConnectionsInput,
        output_schema = types.AcceptVpcEndpointConnectionsOutput,
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
        input_schema = types.AcceptVpcPeeringConnectionInput,
        output_schema = types.AcceptVpcPeeringConnectionOutput,
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
        input_schema = types.AdvertiseByoipCidrInput,
        output_schema = types.AdvertiseByoipCidrOutput,
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
        input_schema = types.AllocateAddressInput,
        output_schema = types.AllocateAddressOutput,
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
        input_schema = types.AllocateHostsInput,
        output_schema = types.AllocateHostsOutput,
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
        input_schema = types.AllocateIpamPoolCidrInput,
        output_schema = types.AllocateIpamPoolCidrOutput,
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
        input_schema = types.ApplySecurityGroupsToClientVpnTargetNetworkInput,
        output_schema = types.ApplySecurityGroupsToClientVpnTargetNetworkOutput,
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
        input_schema = types.AssignIpv6AddressesInput,
        output_schema = types.AssignIpv6AddressesOutput,
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
        input_schema = types.AssignPrivateIpAddressesInput,
        output_schema = types.AssignPrivateIpAddressesOutput,
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
        input_schema = types.AssignPrivateNatGatewayAddressInput,
        output_schema = types.AssignPrivateNatGatewayAddressOutput,
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
        input_schema = types.AssociateAddressInput,
        output_schema = types.AssociateAddressOutput,
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
        input_schema = types.AssociateCapacityReservationBillingOwnerInput,
        output_schema = types.AssociateCapacityReservationBillingOwnerOutput,
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
        input_schema = types.AssociateClientVpnTargetNetworkInput,
        output_schema = types.AssociateClientVpnTargetNetworkOutput,
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
        input_schema = types.AssociateDhcpOptionsInput,
        output_schema = types.AssociateDhcpOptionsOutput,
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
        input_schema = types.AssociateEnclaveCertificateIamRoleInput,
        output_schema = types.AssociateEnclaveCertificateIamRoleOutput,
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
        input_schema = types.AssociateIamInstanceProfileInput,
        output_schema = types.AssociateIamInstanceProfileOutput,
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
        input_schema = types.AssociateInstanceEventWindowInput,
        output_schema = types.AssociateInstanceEventWindowOutput,
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
        input_schema = types.AssociateIpamByoasnInput,
        output_schema = types.AssociateIpamByoasnOutput,
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
        input_schema = types.AssociateIpamResourceDiscoveryInput,
        output_schema = types.AssociateIpamResourceDiscoveryOutput,
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
        input_schema = types.AssociateNatGatewayAddressInput,
        output_schema = types.AssociateNatGatewayAddressOutput,
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
        input_schema = types.AssociateRouteServerInput,
        output_schema = types.AssociateRouteServerOutput,
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
        input_schema = types.AssociateRouteTableInput,
        output_schema = types.AssociateRouteTableOutput,
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
        input_schema = types.AssociateSecurityGroupVpcInput,
        output_schema = types.AssociateSecurityGroupVpcOutput,
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
        input_schema = types.AssociateSubnetCidrBlockInput,
        output_schema = types.AssociateSubnetCidrBlockOutput,
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
        input_schema = types.AssociateTransitGatewayMulticastDomainInput,
        output_schema = types.AssociateTransitGatewayMulticastDomainOutput,
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
        input_schema = types.AssociateTransitGatewayPolicyTableInput,
        output_schema = types.AssociateTransitGatewayPolicyTableOutput,
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
        input_schema = types.AssociateTransitGatewayRouteTableInput,
        output_schema = types.AssociateTransitGatewayRouteTableOutput,
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
        input_schema = types.AssociateTrunkInterfaceInput,
        output_schema = types.AssociateTrunkInterfaceOutput,
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
        input_schema = types.AssociateVpcCidrBlockInput,
        output_schema = types.AssociateVpcCidrBlockOutput,
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
        input_schema = types.AttachClassicLinkVpcInput,
        output_schema = types.AttachClassicLinkVpcOutput,
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
        input_schema = types.AttachInternetGatewayInput,
        output_schema = types.AttachInternetGatewayOutput,
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
        input_schema = types.AttachNetworkInterfaceInput,
        output_schema = types.AttachNetworkInterfaceOutput,
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
        input_schema = types.AttachVerifiedAccessTrustProviderInput,
        output_schema = types.AttachVerifiedAccessTrustProviderOutput,
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
        input_schema = types.AttachVolumeInput,
        output_schema = types.AttachVolumeOutput,
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
        input_schema = types.AttachVpnGatewayInput,
        output_schema = types.AttachVpnGatewayOutput,
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
        input_schema = types.AuthorizeClientVpnIngressInput,
        output_schema = types.AuthorizeClientVpnIngressOutput,
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
        input_schema = types.AuthorizeSecurityGroupEgressInput,
        output_schema = types.AuthorizeSecurityGroupEgressOutput,
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
        input_schema = types.AuthorizeSecurityGroupIngressInput,
        output_schema = types.AuthorizeSecurityGroupIngressOutput,
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
        input_schema = types.BundleInstanceInput,
        output_schema = types.BundleInstanceOutput,
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
        input_schema = types.CancelBundleTaskInput,
        output_schema = types.CancelBundleTaskOutput,
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
        input_schema = types.CancelCapacityReservationInput,
        output_schema = types.CancelCapacityReservationOutput,
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
        input_schema = types.CancelCapacityReservationFleetsInput,
        output_schema = types.CancelCapacityReservationFleetsOutput,
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
        input_schema = types.CancelConversionTaskInput,
        output_schema = types.CancelConversionTaskOutput,
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
        input_schema = types.CancelDeclarativePoliciesReportInput,
        output_schema = types.CancelDeclarativePoliciesReportOutput,
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
        input_schema = types.CancelExportTaskInput,
        output_schema = types.CancelExportTaskOutput,
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
        input_schema = types.CancelImageLaunchPermissionInput,
        output_schema = types.CancelImageLaunchPermissionOutput,
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
        input_schema = types.CancelImportTaskInput,
        output_schema = types.CancelImportTaskOutput,
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
        input_schema = types.CancelReservedInstancesListingInput,
        output_schema = types.CancelReservedInstancesListingOutput,
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
        input_schema = types.CancelSpotFleetRequestsInput,
        output_schema = types.CancelSpotFleetRequestsOutput,
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
        input_schema = types.CancelSpotInstanceRequestsInput,
        output_schema = types.CancelSpotInstanceRequestsOutput,
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
        input_schema = types.ConfirmProductInstanceInput,
        output_schema = types.ConfirmProductInstanceOutput,
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
        input_schema = types.CopyFpgaImageInput,
        output_schema = types.CopyFpgaImageOutput,
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
        input_schema = types.CopyImageInput,
        output_schema = types.CopyImageOutput,
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
        input_schema = types.CopySnapshotInput,
        output_schema = types.CopySnapshotOutput,
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
        input_schema = types.CopyVolumesInput,
        output_schema = types.CopyVolumesOutput,
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
        input_schema = types.CreateCapacityManagerDataExportInput,
        output_schema = types.CreateCapacityManagerDataExportOutput,
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
        input_schema = types.CreateCapacityReservationInput,
        output_schema = types.CreateCapacityReservationOutput,
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
        input_schema = types.CreateCapacityReservationBySplittingInput,
        output_schema = types.CreateCapacityReservationBySplittingOutput,
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
        input_schema = types.CreateCapacityReservationFleetInput,
        output_schema = types.CreateCapacityReservationFleetOutput,
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
        input_schema = types.CreateCarrierGatewayInput,
        output_schema = types.CreateCarrierGatewayOutput,
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
        input_schema = types.CreateClientVpnEndpointInput,
        output_schema = types.CreateClientVpnEndpointOutput,
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
        input_schema = types.CreateClientVpnRouteInput,
        output_schema = types.CreateClientVpnRouteOutput,
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
        input_schema = types.CreateCoipCidrInput,
        output_schema = types.CreateCoipCidrOutput,
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
        input_schema = types.CreateCoipPoolInput,
        output_schema = types.CreateCoipPoolOutput,
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
        input_schema = types.CreateCustomerGatewayInput,
        output_schema = types.CreateCustomerGatewayOutput,
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
        input_schema = types.CreateDefaultSubnetInput,
        output_schema = types.CreateDefaultSubnetOutput,
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
        input_schema = types.CreateDefaultVpcInput,
        output_schema = types.CreateDefaultVpcOutput,
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
        input_schema = types.CreateDelegateMacVolumeOwnershipTaskInput,
        output_schema = types.CreateDelegateMacVolumeOwnershipTaskOutput,
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
        input_schema = types.CreateDhcpOptionsInput,
        output_schema = types.CreateDhcpOptionsOutput,
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
        input_schema = types.CreateEgressOnlyInternetGatewayInput,
        output_schema = types.CreateEgressOnlyInternetGatewayOutput,
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
        input_schema = types.CreateFleetInput,
        output_schema = types.CreateFleetOutput,
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
        input_schema = types.CreateFlowLogsInput,
        output_schema = types.CreateFlowLogsOutput,
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
        input_schema = types.CreateFpgaImageInput,
        output_schema = types.CreateFpgaImageOutput,
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
        input_schema = types.CreateImageInput,
        output_schema = types.CreateImageOutput,
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
        input_schema = types.CreateImageUsageReportInput,
        output_schema = types.CreateImageUsageReportOutput,
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
        input_schema = types.CreateInstanceConnectEndpointInput,
        output_schema = types.CreateInstanceConnectEndpointOutput,
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
        input_schema = types.CreateInstanceEventWindowInput,
        output_schema = types.CreateInstanceEventWindowOutput,
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
        input_schema = types.CreateInstanceExportTaskInput,
        output_schema = types.CreateInstanceExportTaskOutput,
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
        input_schema = types.CreateInternetGatewayInput,
        output_schema = types.CreateInternetGatewayOutput,
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
        input_schema = types.CreateInterruptibleCapacityReservationAllocationInput,
        output_schema = types.CreateInterruptibleCapacityReservationAllocationOutput,
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
        input_schema = types.CreateIpamInput,
        output_schema = types.CreateIpamOutput,
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
        input_schema = types.CreateIpamExternalResourceVerificationTokenInput,
        output_schema = types.CreateIpamExternalResourceVerificationTokenOutput,
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
        input_schema = types.CreateIpamPolicyInput,
        output_schema = types.CreateIpamPolicyOutput,
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
        input_schema = types.CreateIpamPoolInput,
        output_schema = types.CreateIpamPoolOutput,
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
        input_schema = types.CreateIpamPrefixListResolverInput,
        output_schema = types.CreateIpamPrefixListResolverOutput,
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
        input_schema = types.CreateIpamPrefixListResolverTargetInput,
        output_schema = types.CreateIpamPrefixListResolverTargetOutput,
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
        input_schema = types.CreateIpamResourceDiscoveryInput,
        output_schema = types.CreateIpamResourceDiscoveryOutput,
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
        input_schema = types.CreateIpamScopeInput,
        output_schema = types.CreateIpamScopeOutput,
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
        input_schema = types.CreateKeyPairInput,
        output_schema = types.CreateKeyPairOutput,
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
        input_schema = types.CreateLaunchTemplateInput,
        output_schema = types.CreateLaunchTemplateOutput,
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
        input_schema = types.CreateLaunchTemplateVersionInput,
        output_schema = types.CreateLaunchTemplateVersionOutput,
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
        input_schema = types.CreateLocalGatewayRouteInput,
        output_schema = types.CreateLocalGatewayRouteOutput,
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
        input_schema = types.CreateLocalGatewayRouteTableInput,
        output_schema = types.CreateLocalGatewayRouteTableOutput,
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
        input_schema = types.CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationInput,
        output_schema = types.CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationOutput,
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
        input_schema = types.CreateLocalGatewayRouteTableVpcAssociationInput,
        output_schema = types.CreateLocalGatewayRouteTableVpcAssociationOutput,
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
        input_schema = types.CreateLocalGatewayVirtualInterfaceInput,
        output_schema = types.CreateLocalGatewayVirtualInterfaceOutput,
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
        input_schema = types.CreateLocalGatewayVirtualInterfaceGroupInput,
        output_schema = types.CreateLocalGatewayVirtualInterfaceGroupOutput,
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
        input_schema = types.CreateMacSystemIntegrityProtectionModificationTaskInput,
        output_schema = types.CreateMacSystemIntegrityProtectionModificationTaskOutput,
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
        input_schema = types.CreateManagedPrefixListInput,
        output_schema = types.CreateManagedPrefixListOutput,
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
        input_schema = types.CreateNatGatewayInput,
        output_schema = types.CreateNatGatewayOutput,
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
        input_schema = types.CreateNetworkAclInput,
        output_schema = types.CreateNetworkAclOutput,
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
        input_schema = types.CreateNetworkAclEntryInput,
        output_schema = types.CreateNetworkAclEntryOutput,
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
        input_schema = types.CreateNetworkInsightsAccessScopeInput,
        output_schema = types.CreateNetworkInsightsAccessScopeOutput,
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
        input_schema = types.CreateNetworkInsightsPathInput,
        output_schema = types.CreateNetworkInsightsPathOutput,
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
        input_schema = types.CreateNetworkInterfaceInput,
        output_schema = types.CreateNetworkInterfaceOutput,
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
        input_schema = types.CreateNetworkInterfacePermissionInput,
        output_schema = types.CreateNetworkInterfacePermissionOutput,
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
        input_schema = types.CreatePlacementGroupInput,
        output_schema = types.CreatePlacementGroupOutput,
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
        input_schema = types.CreatePublicIpv4PoolInput,
        output_schema = types.CreatePublicIpv4PoolOutput,
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
        input_schema = types.CreateReplaceRootVolumeTaskInput,
        output_schema = types.CreateReplaceRootVolumeTaskOutput,
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
        input_schema = types.CreateReservedInstancesListingInput,
        output_schema = types.CreateReservedInstancesListingOutput,
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
        input_schema = types.CreateRestoreImageTaskInput,
        output_schema = types.CreateRestoreImageTaskOutput,
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
        input_schema = types.CreateRouteInput,
        output_schema = types.CreateRouteOutput,
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
        input_schema = types.CreateRouteServerInput,
        output_schema = types.CreateRouteServerOutput,
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
        input_schema = types.CreateRouteServerEndpointInput,
        output_schema = types.CreateRouteServerEndpointOutput,
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
        input_schema = types.CreateRouteServerPeerInput,
        output_schema = types.CreateRouteServerPeerOutput,
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
        input_schema = types.CreateRouteTableInput,
        output_schema = types.CreateRouteTableOutput,
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
        input_schema = types.CreateSecondaryNetworkInput,
        output_schema = types.CreateSecondaryNetworkOutput,
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
        input_schema = types.CreateSecondarySubnetInput,
        output_schema = types.CreateSecondarySubnetOutput,
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
        input_schema = types.CreateSecurityGroupInput,
        output_schema = types.CreateSecurityGroupOutput,
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
        input_schema = types.CreateSnapshotInput,
        output_schema = types.CreateSnapshotOutput,
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
        input_schema = types.CreateSnapshotsInput,
        output_schema = types.CreateSnapshotsOutput,
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
        input_schema = types.CreateSpotDatafeedSubscriptionInput,
        output_schema = types.CreateSpotDatafeedSubscriptionOutput,
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
        input_schema = types.CreateStoreImageTaskInput,
        output_schema = types.CreateStoreImageTaskOutput,
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
        input_schema = types.CreateSubnetInput,
        output_schema = types.CreateSubnetOutput,
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
        input_schema = types.CreateSubnetCidrReservationInput,
        output_schema = types.CreateSubnetCidrReservationOutput,
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
        input_schema = types.CreateTagsInput,
        output_schema = types.CreateTagsOutput,
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
        input_schema = types.CreateTrafficMirrorFilterInput,
        output_schema = types.CreateTrafficMirrorFilterOutput,
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
        input_schema = types.CreateTrafficMirrorFilterRuleInput,
        output_schema = types.CreateTrafficMirrorFilterRuleOutput,
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
        input_schema = types.CreateTrafficMirrorSessionInput,
        output_schema = types.CreateTrafficMirrorSessionOutput,
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
        input_schema = types.CreateTrafficMirrorTargetInput,
        output_schema = types.CreateTrafficMirrorTargetOutput,
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
        input_schema = types.CreateTransitGatewayInput,
        output_schema = types.CreateTransitGatewayOutput,
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
        input_schema = types.CreateTransitGatewayConnectInput,
        output_schema = types.CreateTransitGatewayConnectOutput,
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
        input_schema = types.CreateTransitGatewayConnectPeerInput,
        output_schema = types.CreateTransitGatewayConnectPeerOutput,
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
        input_schema = types.CreateTransitGatewayMeteringPolicyInput,
        output_schema = types.CreateTransitGatewayMeteringPolicyOutput,
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
        input_schema = types.CreateTransitGatewayMeteringPolicyEntryInput,
        output_schema = types.CreateTransitGatewayMeteringPolicyEntryOutput,
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
        input_schema = types.CreateTransitGatewayMulticastDomainInput,
        output_schema = types.CreateTransitGatewayMulticastDomainOutput,
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
        input_schema = types.CreateTransitGatewayPeeringAttachmentInput,
        output_schema = types.CreateTransitGatewayPeeringAttachmentOutput,
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
        input_schema = types.CreateTransitGatewayPolicyTableInput,
        output_schema = types.CreateTransitGatewayPolicyTableOutput,
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
        input_schema = types.CreateTransitGatewayPrefixListReferenceInput,
        output_schema = types.CreateTransitGatewayPrefixListReferenceOutput,
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
        input_schema = types.CreateTransitGatewayRouteInput,
        output_schema = types.CreateTransitGatewayRouteOutput,
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
        input_schema = types.CreateTransitGatewayRouteTableInput,
        output_schema = types.CreateTransitGatewayRouteTableOutput,
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
        input_schema = types.CreateTransitGatewayRouteTableAnnouncementInput,
        output_schema = types.CreateTransitGatewayRouteTableAnnouncementOutput,
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
        input_schema = types.CreateTransitGatewayVpcAttachmentInput,
        output_schema = types.CreateTransitGatewayVpcAttachmentOutput,
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
        input_schema = types.CreateVerifiedAccessEndpointInput,
        output_schema = types.CreateVerifiedAccessEndpointOutput,
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
        input_schema = types.CreateVerifiedAccessGroupInput,
        output_schema = types.CreateVerifiedAccessGroupOutput,
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
        input_schema = types.CreateVerifiedAccessInstanceInput,
        output_schema = types.CreateVerifiedAccessInstanceOutput,
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
        input_schema = types.CreateVerifiedAccessTrustProviderInput,
        output_schema = types.CreateVerifiedAccessTrustProviderOutput,
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
        input_schema = types.CreateVolumeInput,
        output_schema = types.CreateVolumeOutput,
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
        input_schema = types.CreateVpcInput,
        output_schema = types.CreateVpcOutput,
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
        input_schema = types.CreateVpcBlockPublicAccessExclusionInput,
        output_schema = types.CreateVpcBlockPublicAccessExclusionOutput,
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
        input_schema = types.CreateVpcEncryptionControlInput,
        output_schema = types.CreateVpcEncryptionControlOutput,
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
        input_schema = types.CreateVpcEndpointInput,
        output_schema = types.CreateVpcEndpointOutput,
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
        input_schema = types.CreateVpcEndpointConnectionNotificationInput,
        output_schema = types.CreateVpcEndpointConnectionNotificationOutput,
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
        input_schema = types.CreateVpcEndpointServiceConfigurationInput,
        output_schema = types.CreateVpcEndpointServiceConfigurationOutput,
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
        input_schema = types.CreateVpcPeeringConnectionInput,
        output_schema = types.CreateVpcPeeringConnectionOutput,
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
        input_schema = types.CreateVpnConcentratorInput,
        output_schema = types.CreateVpnConcentratorOutput,
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
        input_schema = types.CreateVpnConnectionInput,
        output_schema = types.CreateVpnConnectionOutput,
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
        input_schema = types.CreateVpnConnectionRouteInput,
        output_schema = types.CreateVpnConnectionRouteOutput,
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
        input_schema = types.CreateVpnGatewayInput,
        output_schema = types.CreateVpnGatewayOutput,
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
        input_schema = types.DeleteCapacityManagerDataExportInput,
        output_schema = types.DeleteCapacityManagerDataExportOutput,
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
        input_schema = types.DeleteCarrierGatewayInput,
        output_schema = types.DeleteCarrierGatewayOutput,
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
        input_schema = types.DeleteClientVpnEndpointInput,
        output_schema = types.DeleteClientVpnEndpointOutput,
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
        input_schema = types.DeleteClientVpnRouteInput,
        output_schema = types.DeleteClientVpnRouteOutput,
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
        input_schema = types.DeleteCoipCidrInput,
        output_schema = types.DeleteCoipCidrOutput,
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
        input_schema = types.DeleteCoipPoolInput,
        output_schema = types.DeleteCoipPoolOutput,
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
        input_schema = types.DeleteCustomerGatewayInput,
        output_schema = types.DeleteCustomerGatewayOutput,
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
        input_schema = types.DeleteDhcpOptionsInput,
        output_schema = types.DeleteDhcpOptionsOutput,
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
        input_schema = types.DeleteEgressOnlyInternetGatewayInput,
        output_schema = types.DeleteEgressOnlyInternetGatewayOutput,
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
        input_schema = types.DeleteFleetsInput,
        output_schema = types.DeleteFleetsOutput,
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
        input_schema = types.DeleteFlowLogsInput,
        output_schema = types.DeleteFlowLogsOutput,
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
        input_schema = types.DeleteFpgaImageInput,
        output_schema = types.DeleteFpgaImageOutput,
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
        input_schema = types.DeleteImageUsageReportInput,
        output_schema = types.DeleteImageUsageReportOutput,
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
        input_schema = types.DeleteInstanceConnectEndpointInput,
        output_schema = types.DeleteInstanceConnectEndpointOutput,
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
        input_schema = types.DeleteInstanceEventWindowInput,
        output_schema = types.DeleteInstanceEventWindowOutput,
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
        input_schema = types.DeleteInternetGatewayInput,
        output_schema = types.DeleteInternetGatewayOutput,
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
        input_schema = types.DeleteIpamInput,
        output_schema = types.DeleteIpamOutput,
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
        input_schema = types.DeleteIpamExternalResourceVerificationTokenInput,
        output_schema = types.DeleteIpamExternalResourceVerificationTokenOutput,
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
        input_schema = types.DeleteIpamPolicyInput,
        output_schema = types.DeleteIpamPolicyOutput,
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
        input_schema = types.DeleteIpamPoolInput,
        output_schema = types.DeleteIpamPoolOutput,
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
        input_schema = types.DeleteIpamPrefixListResolverInput,
        output_schema = types.DeleteIpamPrefixListResolverOutput,
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
        input_schema = types.DeleteIpamPrefixListResolverTargetInput,
        output_schema = types.DeleteIpamPrefixListResolverTargetOutput,
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
        input_schema = types.DeleteIpamResourceDiscoveryInput,
        output_schema = types.DeleteIpamResourceDiscoveryOutput,
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
        input_schema = types.DeleteIpamScopeInput,
        output_schema = types.DeleteIpamScopeOutput,
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
        input_schema = types.DeleteKeyPairInput,
        output_schema = types.DeleteKeyPairOutput,
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
        input_schema = types.DeleteLaunchTemplateInput,
        output_schema = types.DeleteLaunchTemplateOutput,
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
        input_schema = types.DeleteLaunchTemplateVersionsInput,
        output_schema = types.DeleteLaunchTemplateVersionsOutput,
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
        input_schema = types.DeleteLocalGatewayRouteInput,
        output_schema = types.DeleteLocalGatewayRouteOutput,
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
        input_schema = types.DeleteLocalGatewayRouteTableInput,
        output_schema = types.DeleteLocalGatewayRouteTableOutput,
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
        input_schema = types.DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationInput,
        output_schema = types.DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociationOutput,
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
        input_schema = types.DeleteLocalGatewayRouteTableVpcAssociationInput,
        output_schema = types.DeleteLocalGatewayRouteTableVpcAssociationOutput,
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
        input_schema = types.DeleteLocalGatewayVirtualInterfaceInput,
        output_schema = types.DeleteLocalGatewayVirtualInterfaceOutput,
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
        input_schema = types.DeleteLocalGatewayVirtualInterfaceGroupInput,
        output_schema = types.DeleteLocalGatewayVirtualInterfaceGroupOutput,
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
        input_schema = types.DeleteManagedPrefixListInput,
        output_schema = types.DeleteManagedPrefixListOutput,
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
        input_schema = types.DeleteNatGatewayInput,
        output_schema = types.DeleteNatGatewayOutput,
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
        input_schema = types.DeleteNetworkAclInput,
        output_schema = types.DeleteNetworkAclOutput,
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
        input_schema = types.DeleteNetworkAclEntryInput,
        output_schema = types.DeleteNetworkAclEntryOutput,
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
        input_schema = types.DeleteNetworkInsightsAccessScopeInput,
        output_schema = types.DeleteNetworkInsightsAccessScopeOutput,
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
        input_schema = types.DeleteNetworkInsightsAccessScopeAnalysisInput,
        output_schema = types.DeleteNetworkInsightsAccessScopeAnalysisOutput,
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
        input_schema = types.DeleteNetworkInsightsAnalysisInput,
        output_schema = types.DeleteNetworkInsightsAnalysisOutput,
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
        input_schema = types.DeleteNetworkInsightsPathInput,
        output_schema = types.DeleteNetworkInsightsPathOutput,
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
        input_schema = types.DeleteNetworkInterfaceInput,
        output_schema = types.DeleteNetworkInterfaceOutput,
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
        input_schema = types.DeleteNetworkInterfacePermissionInput,
        output_schema = types.DeleteNetworkInterfacePermissionOutput,
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
        input_schema = types.DeletePlacementGroupInput,
        output_schema = types.DeletePlacementGroupOutput,
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
        input_schema = types.DeletePublicIpv4PoolInput,
        output_schema = types.DeletePublicIpv4PoolOutput,
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
        input_schema = types.DeleteQueuedReservedInstancesInput,
        output_schema = types.DeleteQueuedReservedInstancesOutput,
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
        input_schema = types.DeleteRouteInput,
        output_schema = types.DeleteRouteOutput,
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
        input_schema = types.DeleteRouteServerInput,
        output_schema = types.DeleteRouteServerOutput,
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
        input_schema = types.DeleteRouteServerEndpointInput,
        output_schema = types.DeleteRouteServerEndpointOutput,
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
        input_schema = types.DeleteRouteServerPeerInput,
        output_schema = types.DeleteRouteServerPeerOutput,
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
        input_schema = types.DeleteRouteTableInput,
        output_schema = types.DeleteRouteTableOutput,
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
        input_schema = types.DeleteSecondaryNetworkInput,
        output_schema = types.DeleteSecondaryNetworkOutput,
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
        input_schema = types.DeleteSecondarySubnetInput,
        output_schema = types.DeleteSecondarySubnetOutput,
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
        input_schema = types.DeleteSecurityGroupInput,
        output_schema = types.DeleteSecurityGroupOutput,
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
        input_schema = types.DeleteSnapshotInput,
        output_schema = types.DeleteSnapshotOutput,
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
        input_schema = types.DeleteSpotDatafeedSubscriptionInput,
        output_schema = types.DeleteSpotDatafeedSubscriptionOutput,
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
        input_schema = types.DeleteSubnetInput,
        output_schema = types.DeleteSubnetOutput,
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
        input_schema = types.DeleteSubnetCidrReservationInput,
        output_schema = types.DeleteSubnetCidrReservationOutput,
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
        input_schema = types.DeleteTagsInput,
        output_schema = types.DeleteTagsOutput,
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
        input_schema = types.DeleteTrafficMirrorFilterInput,
        output_schema = types.DeleteTrafficMirrorFilterOutput,
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
        input_schema = types.DeleteTrafficMirrorFilterRuleInput,
        output_schema = types.DeleteTrafficMirrorFilterRuleOutput,
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
        input_schema = types.DeleteTrafficMirrorSessionInput,
        output_schema = types.DeleteTrafficMirrorSessionOutput,
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
        input_schema = types.DeleteTrafficMirrorTargetInput,
        output_schema = types.DeleteTrafficMirrorTargetOutput,
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
        input_schema = types.DeleteTransitGatewayInput,
        output_schema = types.DeleteTransitGatewayOutput,
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
        input_schema = types.DeleteTransitGatewayClientVpnAttachmentInput,
        output_schema = types.DeleteTransitGatewayClientVpnAttachmentOutput,
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
        input_schema = types.DeleteTransitGatewayConnectInput,
        output_schema = types.DeleteTransitGatewayConnectOutput,
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
        input_schema = types.DeleteTransitGatewayConnectPeerInput,
        output_schema = types.DeleteTransitGatewayConnectPeerOutput,
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
        input_schema = types.DeleteTransitGatewayMeteringPolicyInput,
        output_schema = types.DeleteTransitGatewayMeteringPolicyOutput,
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
        input_schema = types.DeleteTransitGatewayMeteringPolicyEntryInput,
        output_schema = types.DeleteTransitGatewayMeteringPolicyEntryOutput,
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
        input_schema = types.DeleteTransitGatewayMulticastDomainInput,
        output_schema = types.DeleteTransitGatewayMulticastDomainOutput,
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
        input_schema = types.DeleteTransitGatewayPeeringAttachmentInput,
        output_schema = types.DeleteTransitGatewayPeeringAttachmentOutput,
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
        input_schema = types.DeleteTransitGatewayPolicyTableInput,
        output_schema = types.DeleteTransitGatewayPolicyTableOutput,
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
        input_schema = types.DeleteTransitGatewayPrefixListReferenceInput,
        output_schema = types.DeleteTransitGatewayPrefixListReferenceOutput,
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
        input_schema = types.DeleteTransitGatewayRouteInput,
        output_schema = types.DeleteTransitGatewayRouteOutput,
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
        input_schema = types.DeleteTransitGatewayRouteTableInput,
        output_schema = types.DeleteTransitGatewayRouteTableOutput,
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
        input_schema = types.DeleteTransitGatewayRouteTableAnnouncementInput,
        output_schema = types.DeleteTransitGatewayRouteTableAnnouncementOutput,
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
        input_schema = types.DeleteTransitGatewayVpcAttachmentInput,
        output_schema = types.DeleteTransitGatewayVpcAttachmentOutput,
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
        input_schema = types.DeleteVerifiedAccessEndpointInput,
        output_schema = types.DeleteVerifiedAccessEndpointOutput,
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
        input_schema = types.DeleteVerifiedAccessGroupInput,
        output_schema = types.DeleteVerifiedAccessGroupOutput,
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
        input_schema = types.DeleteVerifiedAccessInstanceInput,
        output_schema = types.DeleteVerifiedAccessInstanceOutput,
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
        input_schema = types.DeleteVerifiedAccessTrustProviderInput,
        output_schema = types.DeleteVerifiedAccessTrustProviderOutput,
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
        input_schema = types.DeleteVolumeInput,
        output_schema = types.DeleteVolumeOutput,
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
        input_schema = types.DeleteVpcInput,
        output_schema = types.DeleteVpcOutput,
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
        input_schema = types.DeleteVpcBlockPublicAccessExclusionInput,
        output_schema = types.DeleteVpcBlockPublicAccessExclusionOutput,
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
        input_schema = types.DeleteVpcEncryptionControlInput,
        output_schema = types.DeleteVpcEncryptionControlOutput,
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
        input_schema = types.DeleteVpcEndpointConnectionNotificationsInput,
        output_schema = types.DeleteVpcEndpointConnectionNotificationsOutput,
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
        input_schema = types.DeleteVpcEndpointsInput,
        output_schema = types.DeleteVpcEndpointsOutput,
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
        input_schema = types.DeleteVpcEndpointServiceConfigurationsInput,
        output_schema = types.DeleteVpcEndpointServiceConfigurationsOutput,
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
        input_schema = types.DeleteVpcPeeringConnectionInput,
        output_schema = types.DeleteVpcPeeringConnectionOutput,
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
        input_schema = types.DeleteVpnConcentratorInput,
        output_schema = types.DeleteVpnConcentratorOutput,
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
        input_schema = types.DeleteVpnConnectionInput,
        output_schema = types.DeleteVpnConnectionOutput,
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
        input_schema = types.DeleteVpnConnectionRouteInput,
        output_schema = types.DeleteVpnConnectionRouteOutput,
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
        input_schema = types.DeleteVpnGatewayInput,
        output_schema = types.DeleteVpnGatewayOutput,
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
        input_schema = types.DeprovisionByoipCidrInput,
        output_schema = types.DeprovisionByoipCidrOutput,
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
        input_schema = types.DeprovisionIpamByoasnInput,
        output_schema = types.DeprovisionIpamByoasnOutput,
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
        input_schema = types.DeprovisionIpamPoolCidrInput,
        output_schema = types.DeprovisionIpamPoolCidrOutput,
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
        input_schema = types.DeprovisionPublicIpv4PoolCidrInput,
        output_schema = types.DeprovisionPublicIpv4PoolCidrOutput,
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
        input_schema = types.DeregisterImageInput,
        output_schema = types.DeregisterImageOutput,
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
        input_schema = types.DeregisterInstanceEventNotificationAttributesInput,
        output_schema = types.DeregisterInstanceEventNotificationAttributesOutput,
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
        input_schema = types.DeregisterTransitGatewayMulticastGroupMembersInput,
        output_schema = types.DeregisterTransitGatewayMulticastGroupMembersOutput,
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
        input_schema = types.DeregisterTransitGatewayMulticastGroupSourcesInput,
        output_schema = types.DeregisterTransitGatewayMulticastGroupSourcesOutput,
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
        input_schema = types.DescribeAccountAttributesInput,
        output_schema = types.DescribeAccountAttributesOutput,
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
        input_schema = types.DescribeAddressesInput,
        output_schema = types.DescribeAddressesOutput,
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
        input_schema = types.DescribeAddressesAttributeInput,
        output_schema = types.DescribeAddressesAttributeOutput,
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
        input_schema = types.DescribeAddressTransfersInput,
        output_schema = types.DescribeAddressTransfersOutput,
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
        input_schema = types.DescribeAggregateIdFormatInput,
        output_schema = types.DescribeAggregateIdFormatOutput,
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
        input_schema = types.DescribeAvailabilityZonesInput,
        output_schema = types.DescribeAvailabilityZonesOutput,
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
        input_schema = types.DescribeAwsNetworkPerformanceMetricSubscriptionsInput,
        output_schema = types.DescribeAwsNetworkPerformanceMetricSubscriptionsOutput,
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
        input_schema = types.DescribeBundleTasksInput,
        output_schema = types.DescribeBundleTasksOutput,
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
        input_schema = types.DescribeByoipCidrsInput,
        output_schema = types.DescribeByoipCidrsOutput,
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
        input_schema = types.DescribeCapacityBlockExtensionHistoryInput,
        output_schema = types.DescribeCapacityBlockExtensionHistoryOutput,
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
        input_schema = types.DescribeCapacityBlockExtensionOfferingsInput,
        output_schema = types.DescribeCapacityBlockExtensionOfferingsOutput,
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
        input_schema = types.DescribeCapacityBlockOfferingsInput,
        output_schema = types.DescribeCapacityBlockOfferingsOutput,
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
        input_schema = types.DescribeCapacityBlocksInput,
        output_schema = types.DescribeCapacityBlocksOutput,
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
        input_schema = types.DescribeCapacityBlockStatusInput,
        output_schema = types.DescribeCapacityBlockStatusOutput,
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
        input_schema = types.DescribeCapacityManagerDataExportsInput,
        output_schema = types.DescribeCapacityManagerDataExportsOutput,
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
        input_schema = types.DescribeCapacityReservationBillingRequestsInput,
        output_schema = types.DescribeCapacityReservationBillingRequestsOutput,
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
        input_schema = types.DescribeCapacityReservationFleetsInput,
        output_schema = types.DescribeCapacityReservationFleetsOutput,
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
        input_schema = types.DescribeCapacityReservationsInput,
        output_schema = types.DescribeCapacityReservationsOutput,
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
        input_schema = types.DescribeCapacityReservationTopologyInput,
        output_schema = types.DescribeCapacityReservationTopologyOutput,
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
        input_schema = types.DescribeCarrierGatewaysInput,
        output_schema = types.DescribeCarrierGatewaysOutput,
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
        input_schema = types.DescribeClassicLinkInstancesInput,
        output_schema = types.DescribeClassicLinkInstancesOutput,
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
        input_schema = types.DescribeClientVpnAuthorizationRulesInput,
        output_schema = types.DescribeClientVpnAuthorizationRulesOutput,
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
        input_schema = types.DescribeClientVpnConnectionsInput,
        output_schema = types.DescribeClientVpnConnectionsOutput,
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
        input_schema = types.DescribeClientVpnEndpointsInput,
        output_schema = types.DescribeClientVpnEndpointsOutput,
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
        input_schema = types.DescribeClientVpnRoutesInput,
        output_schema = types.DescribeClientVpnRoutesOutput,
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
        input_schema = types.DescribeClientVpnTargetNetworksInput,
        output_schema = types.DescribeClientVpnTargetNetworksOutput,
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
        input_schema = types.DescribeCoipPoolsInput,
        output_schema = types.DescribeCoipPoolsOutput,
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
        input_schema = types.DescribeConversionTasksInput,
        output_schema = types.DescribeConversionTasksOutput,
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
        input_schema = types.DescribeCustomerGatewaysInput,
        output_schema = types.DescribeCustomerGatewaysOutput,
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
        input_schema = types.DescribeDeclarativePoliciesReportsInput,
        output_schema = types.DescribeDeclarativePoliciesReportsOutput,
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
        input_schema = types.DescribeDhcpOptionsInput,
        output_schema = types.DescribeDhcpOptionsOutput,
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
        input_schema = types.DescribeEgressOnlyInternetGatewaysInput,
        output_schema = types.DescribeEgressOnlyInternetGatewaysOutput,
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
        input_schema = types.DescribeElasticGpusInput,
        output_schema = types.DescribeElasticGpusOutput,
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
        input_schema = types.DescribeExportImageTasksInput,
        output_schema = types.DescribeExportImageTasksOutput,
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
        input_schema = types.DescribeExportTasksInput,
        output_schema = types.DescribeExportTasksOutput,
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
        input_schema = types.DescribeFastLaunchImagesInput,
        output_schema = types.DescribeFastLaunchImagesOutput,
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
        input_schema = types.DescribeFastSnapshotRestoresInput,
        output_schema = types.DescribeFastSnapshotRestoresOutput,
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
        input_schema = types.DescribeFleetHistoryInput,
        output_schema = types.DescribeFleetHistoryOutput,
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
        input_schema = types.DescribeFleetInstancesInput,
        output_schema = types.DescribeFleetInstancesOutput,
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
        input_schema = types.DescribeFleetsInput,
        output_schema = types.DescribeFleetsOutput,
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
        input_schema = types.DescribeFlowLogsInput,
        output_schema = types.DescribeFlowLogsOutput,
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
        input_schema = types.DescribeFpgaImageAttributeInput,
        output_schema = types.DescribeFpgaImageAttributeOutput,
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
        input_schema = types.DescribeFpgaImagesInput,
        output_schema = types.DescribeFpgaImagesOutput,
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
        input_schema = types.DescribeHostReservationOfferingsInput,
        output_schema = types.DescribeHostReservationOfferingsOutput,
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
        input_schema = types.DescribeHostReservationsInput,
        output_schema = types.DescribeHostReservationsOutput,
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
        input_schema = types.DescribeHostsInput,
        output_schema = types.DescribeHostsOutput,
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
        input_schema = types.DescribeIamInstanceProfileAssociationsInput,
        output_schema = types.DescribeIamInstanceProfileAssociationsOutput,
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
        input_schema = types.DescribeIdentityIdFormatInput,
        output_schema = types.DescribeIdentityIdFormatOutput,
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
        input_schema = types.DescribeIdFormatInput,
        output_schema = types.DescribeIdFormatOutput,
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
        input_schema = types.DescribeImageAttributeInput,
        output_schema = types.DescribeImageAttributeOutput,
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
        input_schema = types.DescribeImageReferencesInput,
        output_schema = types.DescribeImageReferencesOutput,
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
        input_schema = types.DescribeImagesInput,
        output_schema = types.DescribeImagesOutput,
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
        input_schema = types.DescribeImageUsageReportEntriesInput,
        output_schema = types.DescribeImageUsageReportEntriesOutput,
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
        input_schema = types.DescribeImageUsageReportsInput,
        output_schema = types.DescribeImageUsageReportsOutput,
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
        input_schema = types.DescribeImportImageTasksInput,
        output_schema = types.DescribeImportImageTasksOutput,
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
        input_schema = types.DescribeImportSnapshotTasksInput,
        output_schema = types.DescribeImportSnapshotTasksOutput,
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
        input_schema = types.DescribeInstanceAttributeInput,
        output_schema = types.DescribeInstanceAttributeOutput,
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
        input_schema = types.DescribeInstanceConnectEndpointsInput,
        output_schema = types.DescribeInstanceConnectEndpointsOutput,
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
        input_schema = types.DescribeInstanceCreditSpecificationsInput,
        output_schema = types.DescribeInstanceCreditSpecificationsOutput,
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
        input_schema = types.DescribeInstanceEventNotificationAttributesInput,
        output_schema = types.DescribeInstanceEventNotificationAttributesOutput,
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
        input_schema = types.DescribeInstanceEventWindowsInput,
        output_schema = types.DescribeInstanceEventWindowsOutput,
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
        input_schema = types.DescribeInstanceImageMetadataInput,
        output_schema = types.DescribeInstanceImageMetadataOutput,
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
        input_schema = types.DescribeInstancesInput,
        output_schema = types.DescribeInstancesOutput,
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
        input_schema = types.DescribeInstanceSqlHaHistoryStatesInput,
        output_schema = types.DescribeInstanceSqlHaHistoryStatesOutput,
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
        input_schema = types.DescribeInstanceSqlHaStatesInput,
        output_schema = types.DescribeInstanceSqlHaStatesOutput,
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
        input_schema = types.DescribeInstanceStatusInput,
        output_schema = types.DescribeInstanceStatusOutput,
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
        input_schema = types.DescribeInstanceTopologyInput,
        output_schema = types.DescribeInstanceTopologyOutput,
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
        input_schema = types.DescribeInstanceTypeOfferingsInput,
        output_schema = types.DescribeInstanceTypeOfferingsOutput,
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
        input_schema = types.DescribeInstanceTypesInput,
        output_schema = types.DescribeInstanceTypesOutput,
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
        input_schema = types.DescribeInternetGatewaysInput,
        output_schema = types.DescribeInternetGatewaysOutput,
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
        input_schema = types.DescribeIpamByoasnInput,
        output_schema = types.DescribeIpamByoasnOutput,
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
        input_schema = types.DescribeIpamExternalResourceVerificationTokensInput,
        output_schema = types.DescribeIpamExternalResourceVerificationTokensOutput,
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
        input_schema = types.DescribeIpamPoliciesInput,
        output_schema = types.DescribeIpamPoliciesOutput,
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
        input_schema = types.DescribeIpamPoolsInput,
        output_schema = types.DescribeIpamPoolsOutput,
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
        input_schema = types.DescribeIpamPrefixListResolversInput,
        output_schema = types.DescribeIpamPrefixListResolversOutput,
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
        input_schema = types.DescribeIpamPrefixListResolverTargetsInput,
        output_schema = types.DescribeIpamPrefixListResolverTargetsOutput,
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
        input_schema = types.DescribeIpamResourceDiscoveriesInput,
        output_schema = types.DescribeIpamResourceDiscoveriesOutput,
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
        input_schema = types.DescribeIpamResourceDiscoveryAssociationsInput,
        output_schema = types.DescribeIpamResourceDiscoveryAssociationsOutput,
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
        input_schema = types.DescribeIpamsInput,
        output_schema = types.DescribeIpamsOutput,
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
        input_schema = types.DescribeIpamScopesInput,
        output_schema = types.DescribeIpamScopesOutput,
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
        input_schema = types.DescribeIpv6PoolsInput,
        output_schema = types.DescribeIpv6PoolsOutput,
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
        input_schema = types.DescribeKeyPairsInput,
        output_schema = types.DescribeKeyPairsOutput,
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
        input_schema = types.DescribeLaunchTemplatesInput,
        output_schema = types.DescribeLaunchTemplatesOutput,
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
        input_schema = types.DescribeLaunchTemplateVersionsInput,
        output_schema = types.DescribeLaunchTemplateVersionsOutput,
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
        input_schema = types.DescribeLocalGatewayRouteTablesInput,
        output_schema = types.DescribeLocalGatewayRouteTablesOutput,
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
        input_schema = types.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsInput,
        output_schema = types.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsOutput,
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
        input_schema = types.DescribeLocalGatewayRouteTableVpcAssociationsInput,
        output_schema = types.DescribeLocalGatewayRouteTableVpcAssociationsOutput,
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
        input_schema = types.DescribeLocalGatewaysInput,
        output_schema = types.DescribeLocalGatewaysOutput,
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
        input_schema = types.DescribeLocalGatewayVirtualInterfaceGroupsInput,
        output_schema = types.DescribeLocalGatewayVirtualInterfaceGroupsOutput,
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
        input_schema = types.DescribeLocalGatewayVirtualInterfacesInput,
        output_schema = types.DescribeLocalGatewayVirtualInterfacesOutput,
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
        input_schema = types.DescribeLockedSnapshotsInput,
        output_schema = types.DescribeLockedSnapshotsOutput,
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
        input_schema = types.DescribeMacHostsInput,
        output_schema = types.DescribeMacHostsOutput,
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
        input_schema = types.DescribeMacModificationTasksInput,
        output_schema = types.DescribeMacModificationTasksOutput,
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
        input_schema = types.DescribeManagedPrefixListsInput,
        output_schema = types.DescribeManagedPrefixListsOutput,
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
        input_schema = types.DescribeMovingAddressesInput,
        output_schema = types.DescribeMovingAddressesOutput,
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
        input_schema = types.DescribeNatGatewaysInput,
        output_schema = types.DescribeNatGatewaysOutput,
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
        input_schema = types.DescribeNetworkAclsInput,
        output_schema = types.DescribeNetworkAclsOutput,
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
        input_schema = types.DescribeNetworkInsightsAccessScopeAnalysesInput,
        output_schema = types.DescribeNetworkInsightsAccessScopeAnalysesOutput,
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
        input_schema = types.DescribeNetworkInsightsAccessScopesInput,
        output_schema = types.DescribeNetworkInsightsAccessScopesOutput,
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
        input_schema = types.DescribeNetworkInsightsAnalysesInput,
        output_schema = types.DescribeNetworkInsightsAnalysesOutput,
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
        input_schema = types.DescribeNetworkInsightsPathsInput,
        output_schema = types.DescribeNetworkInsightsPathsOutput,
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
        input_schema = types.DescribeNetworkInterfaceAttributeInput,
        output_schema = types.DescribeNetworkInterfaceAttributeOutput,
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
        input_schema = types.DescribeNetworkInterfacePermissionsInput,
        output_schema = types.DescribeNetworkInterfacePermissionsOutput,
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
        input_schema = types.DescribeNetworkInterfacesInput,
        output_schema = types.DescribeNetworkInterfacesOutput,
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
        input_schema = types.DescribeOutpostLagsInput,
        output_schema = types.DescribeOutpostLagsOutput,
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
        input_schema = types.DescribePlacementGroupsInput,
        output_schema = types.DescribePlacementGroupsOutput,
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
        input_schema = types.DescribePrefixListsInput,
        output_schema = types.DescribePrefixListsOutput,
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
        input_schema = types.DescribePrincipalIdFormatInput,
        output_schema = types.DescribePrincipalIdFormatOutput,
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
        input_schema = types.DescribePublicIpv4PoolsInput,
        output_schema = types.DescribePublicIpv4PoolsOutput,
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
        input_schema = types.DescribeRegionsInput,
        output_schema = types.DescribeRegionsOutput,
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
        input_schema = types.DescribeReplaceRootVolumeTasksInput,
        output_schema = types.DescribeReplaceRootVolumeTasksOutput,
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
        input_schema = types.DescribeReservedInstancesInput,
        output_schema = types.DescribeReservedInstancesOutput,
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
        input_schema = types.DescribeReservedInstancesListingsInput,
        output_schema = types.DescribeReservedInstancesListingsOutput,
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
        input_schema = types.DescribeReservedInstancesModificationsInput,
        output_schema = types.DescribeReservedInstancesModificationsOutput,
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
        input_schema = types.DescribeReservedInstancesOfferingsInput,
        output_schema = types.DescribeReservedInstancesOfferingsOutput,
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
        input_schema = types.DescribeRouteServerEndpointsInput,
        output_schema = types.DescribeRouteServerEndpointsOutput,
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
        input_schema = types.DescribeRouteServerPeersInput,
        output_schema = types.DescribeRouteServerPeersOutput,
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
        input_schema = types.DescribeRouteServersInput,
        output_schema = types.DescribeRouteServersOutput,
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
        input_schema = types.DescribeRouteTablesInput,
        output_schema = types.DescribeRouteTablesOutput,
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
        input_schema = types.DescribeScheduledInstanceAvailabilityInput,
        output_schema = types.DescribeScheduledInstanceAvailabilityOutput,
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
        input_schema = types.DescribeScheduledInstancesInput,
        output_schema = types.DescribeScheduledInstancesOutput,
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
        input_schema = types.DescribeSecondaryInterfacesInput,
        output_schema = types.DescribeSecondaryInterfacesOutput,
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
        input_schema = types.DescribeSecondaryNetworksInput,
        output_schema = types.DescribeSecondaryNetworksOutput,
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
        input_schema = types.DescribeSecondarySubnetsInput,
        output_schema = types.DescribeSecondarySubnetsOutput,
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
        input_schema = types.DescribeSecurityGroupReferencesInput,
        output_schema = types.DescribeSecurityGroupReferencesOutput,
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
        input_schema = types.DescribeSecurityGroupRulesInput,
        output_schema = types.DescribeSecurityGroupRulesOutput,
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
        input_schema = types.DescribeSecurityGroupsInput,
        output_schema = types.DescribeSecurityGroupsOutput,
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
        input_schema = types.DescribeSecurityGroupVpcAssociationsInput,
        output_schema = types.DescribeSecurityGroupVpcAssociationsOutput,
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
        input_schema = types.DescribeServiceLinkVirtualInterfacesInput,
        output_schema = types.DescribeServiceLinkVirtualInterfacesOutput,
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
        input_schema = types.DescribeSnapshotAttributeInput,
        output_schema = types.DescribeSnapshotAttributeOutput,
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
        input_schema = types.DescribeSnapshotsInput,
        output_schema = types.DescribeSnapshotsOutput,
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
        input_schema = types.DescribeSnapshotTierStatusInput,
        output_schema = types.DescribeSnapshotTierStatusOutput,
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
        input_schema = types.DescribeSpotDatafeedSubscriptionInput,
        output_schema = types.DescribeSpotDatafeedSubscriptionOutput,
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
        input_schema = types.DescribeSpotFleetInstancesInput,
        output_schema = types.DescribeSpotFleetInstancesOutput,
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
        input_schema = types.DescribeSpotFleetRequestHistoryInput,
        output_schema = types.DescribeSpotFleetRequestHistoryOutput,
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
        input_schema = types.DescribeSpotFleetRequestsInput,
        output_schema = types.DescribeSpotFleetRequestsOutput,
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
        input_schema = types.DescribeSpotInstanceRequestsInput,
        output_schema = types.DescribeSpotInstanceRequestsOutput,
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
        input_schema = types.DescribeSpotPriceHistoryInput,
        output_schema = types.DescribeSpotPriceHistoryOutput,
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
        input_schema = types.DescribeStaleSecurityGroupsInput,
        output_schema = types.DescribeStaleSecurityGroupsOutput,
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
        input_schema = types.DescribeStoreImageTasksInput,
        output_schema = types.DescribeStoreImageTasksOutput,
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
        input_schema = types.DescribeSubnetsInput,
        output_schema = types.DescribeSubnetsOutput,
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
        input_schema = types.DescribeTagsInput,
        output_schema = types.DescribeTagsOutput,
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
        input_schema = types.DescribeTrafficMirrorFilterRulesInput,
        output_schema = types.DescribeTrafficMirrorFilterRulesOutput,
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
        input_schema = types.DescribeTrafficMirrorFiltersInput,
        output_schema = types.DescribeTrafficMirrorFiltersOutput,
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
        input_schema = types.DescribeTrafficMirrorSessionsInput,
        output_schema = types.DescribeTrafficMirrorSessionsOutput,
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
        input_schema = types.DescribeTrafficMirrorTargetsInput,
        output_schema = types.DescribeTrafficMirrorTargetsOutput,
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
        input_schema = types.DescribeTransitGatewayAttachmentsInput,
        output_schema = types.DescribeTransitGatewayAttachmentsOutput,
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
        input_schema = types.DescribeTransitGatewayConnectPeersInput,
        output_schema = types.DescribeTransitGatewayConnectPeersOutput,
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
        input_schema = types.DescribeTransitGatewayConnectsInput,
        output_schema = types.DescribeTransitGatewayConnectsOutput,
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
        input_schema = types.DescribeTransitGatewayMeteringPoliciesInput,
        output_schema = types.DescribeTransitGatewayMeteringPoliciesOutput,
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
        input_schema = types.DescribeTransitGatewayMulticastDomainsInput,
        output_schema = types.DescribeTransitGatewayMulticastDomainsOutput,
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
        input_schema = types.DescribeTransitGatewayPeeringAttachmentsInput,
        output_schema = types.DescribeTransitGatewayPeeringAttachmentsOutput,
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
        input_schema = types.DescribeTransitGatewayPolicyTablesInput,
        output_schema = types.DescribeTransitGatewayPolicyTablesOutput,
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
        input_schema = types.DescribeTransitGatewayRouteTableAnnouncementsInput,
        output_schema = types.DescribeTransitGatewayRouteTableAnnouncementsOutput,
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
        input_schema = types.DescribeTransitGatewayRouteTablesInput,
        output_schema = types.DescribeTransitGatewayRouteTablesOutput,
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
        input_schema = types.DescribeTransitGatewaysInput,
        output_schema = types.DescribeTransitGatewaysOutput,
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
        input_schema = types.DescribeTransitGatewayVpcAttachmentsInput,
        output_schema = types.DescribeTransitGatewayVpcAttachmentsOutput,
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
        input_schema = types.DescribeTrunkInterfaceAssociationsInput,
        output_schema = types.DescribeTrunkInterfaceAssociationsOutput,
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
        input_schema = types.DescribeVerifiedAccessEndpointsInput,
        output_schema = types.DescribeVerifiedAccessEndpointsOutput,
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
        input_schema = types.DescribeVerifiedAccessGroupsInput,
        output_schema = types.DescribeVerifiedAccessGroupsOutput,
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
        input_schema = types.DescribeVerifiedAccessInstanceLoggingConfigurationsInput,
        output_schema = types.DescribeVerifiedAccessInstanceLoggingConfigurationsOutput,
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
        input_schema = types.DescribeVerifiedAccessInstancesInput,
        output_schema = types.DescribeVerifiedAccessInstancesOutput,
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
        input_schema = types.DescribeVerifiedAccessTrustProvidersInput,
        output_schema = types.DescribeVerifiedAccessTrustProvidersOutput,
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
        input_schema = types.DescribeVolumeAttributeInput,
        output_schema = types.DescribeVolumeAttributeOutput,
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
        input_schema = types.DescribeVolumesInput,
        output_schema = types.DescribeVolumesOutput,
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
        input_schema = types.DescribeVolumesModificationsInput,
        output_schema = types.DescribeVolumesModificationsOutput,
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
        input_schema = types.DescribeVolumeStatusInput,
        output_schema = types.DescribeVolumeStatusOutput,
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
        input_schema = types.DescribeVpcAttributeInput,
        output_schema = types.DescribeVpcAttributeOutput,
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
        input_schema = types.DescribeVpcBlockPublicAccessExclusionsInput,
        output_schema = types.DescribeVpcBlockPublicAccessExclusionsOutput,
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
        input_schema = types.DescribeVpcBlockPublicAccessOptionsInput,
        output_schema = types.DescribeVpcBlockPublicAccessOptionsOutput,
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
        input_schema = types.DescribeVpcClassicLinkInput,
        output_schema = types.DescribeVpcClassicLinkOutput,
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
        input_schema = types.DescribeVpcClassicLinkDnsSupportInput,
        output_schema = types.DescribeVpcClassicLinkDnsSupportOutput,
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
        input_schema = types.DescribeVpcEncryptionControlsInput,
        output_schema = types.DescribeVpcEncryptionControlsOutput,
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
        input_schema = types.DescribeVpcEndpointAssociationsInput,
        output_schema = types.DescribeVpcEndpointAssociationsOutput,
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
        input_schema = types.DescribeVpcEndpointConnectionNotificationsInput,
        output_schema = types.DescribeVpcEndpointConnectionNotificationsOutput,
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
        input_schema = types.DescribeVpcEndpointConnectionsInput,
        output_schema = types.DescribeVpcEndpointConnectionsOutput,
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
        input_schema = types.DescribeVpcEndpointsInput,
        output_schema = types.DescribeVpcEndpointsOutput,
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
        input_schema = types.DescribeVpcEndpointServiceConfigurationsInput,
        output_schema = types.DescribeVpcEndpointServiceConfigurationsOutput,
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
        input_schema = types.DescribeVpcEndpointServicePermissionsInput,
        output_schema = types.DescribeVpcEndpointServicePermissionsOutput,
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
        input_schema = types.DescribeVpcEndpointServicesInput,
        output_schema = types.DescribeVpcEndpointServicesOutput,
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
        input_schema = types.DescribeVpcPeeringConnectionsInput,
        output_schema = types.DescribeVpcPeeringConnectionsOutput,
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
        input_schema = types.DescribeVpcsInput,
        output_schema = types.DescribeVpcsOutput,
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
        input_schema = types.DescribeVpnConcentratorsInput,
        output_schema = types.DescribeVpnConcentratorsOutput,
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
        input_schema = types.DescribeVpnConnectionsInput,
        output_schema = types.DescribeVpnConnectionsOutput,
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
        input_schema = types.DescribeVpnGatewaysInput,
        output_schema = types.DescribeVpnGatewaysOutput,
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
        input_schema = types.DetachClassicLinkVpcInput,
        output_schema = types.DetachClassicLinkVpcOutput,
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
        input_schema = types.DetachInternetGatewayInput,
        output_schema = types.DetachInternetGatewayOutput,
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
        input_schema = types.DetachNetworkInterfaceInput,
        output_schema = types.DetachNetworkInterfaceOutput,
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
        input_schema = types.DetachVerifiedAccessTrustProviderInput,
        output_schema = types.DetachVerifiedAccessTrustProviderOutput,
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
        input_schema = types.DetachVolumeInput,
        output_schema = types.DetachVolumeOutput,
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
        input_schema = types.DetachVpnGatewayInput,
        output_schema = types.DetachVpnGatewayOutput,
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
        input_schema = types.DisableAddressTransferInput,
        output_schema = types.DisableAddressTransferOutput,
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
        input_schema = types.DisableAllowedImagesSettingsInput,
        output_schema = types.DisableAllowedImagesSettingsOutput,
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
        input_schema = types.DisableAwsNetworkPerformanceMetricSubscriptionInput,
        output_schema = types.DisableAwsNetworkPerformanceMetricSubscriptionOutput,
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
        input_schema = types.DisableCapacityManagerInput,
        output_schema = types.DisableCapacityManagerOutput,
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
        input_schema = types.DisableEbsEncryptionByDefaultInput,
        output_schema = types.DisableEbsEncryptionByDefaultOutput,
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
        input_schema = types.DisableFastLaunchInput,
        output_schema = types.DisableFastLaunchOutput,
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
        input_schema = types.DisableFastSnapshotRestoresInput,
        output_schema = types.DisableFastSnapshotRestoresOutput,
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
        input_schema = types.DisableImageInput,
        output_schema = types.DisableImageOutput,
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
        input_schema = types.DisableImageBlockPublicAccessInput,
        output_schema = types.DisableImageBlockPublicAccessOutput,
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
        input_schema = types.DisableImageDeprecationInput,
        output_schema = types.DisableImageDeprecationOutput,
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
        input_schema = types.DisableImageDeregistrationProtectionInput,
        output_schema = types.DisableImageDeregistrationProtectionOutput,
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
        input_schema = types.DisableInstanceSqlHaStandbyDetectionsInput,
        output_schema = types.DisableInstanceSqlHaStandbyDetectionsOutput,
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
        input_schema = types.DisableIpamOrganizationAdminAccountInput,
        output_schema = types.DisableIpamOrganizationAdminAccountOutput,
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
        input_schema = types.DisableIpamPolicyInput,
        output_schema = types.DisableIpamPolicyOutput,
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
        input_schema = types.DisableRouteServerPropagationInput,
        output_schema = types.DisableRouteServerPropagationOutput,
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
        input_schema = types.DisableSerialConsoleAccessInput,
        output_schema = types.DisableSerialConsoleAccessOutput,
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
        input_schema = types.DisableSnapshotBlockPublicAccessInput,
        output_schema = types.DisableSnapshotBlockPublicAccessOutput,
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
        input_schema = types.DisableTransitGatewayRouteTablePropagationInput,
        output_schema = types.DisableTransitGatewayRouteTablePropagationOutput,
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
        input_schema = types.DisableVgwRoutePropagationInput,
        output_schema = types.DisableVgwRoutePropagationOutput,
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
        input_schema = types.DisableVpcClassicLinkInput,
        output_schema = types.DisableVpcClassicLinkOutput,
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
        input_schema = types.DisableVpcClassicLinkDnsSupportInput,
        output_schema = types.DisableVpcClassicLinkDnsSupportOutput,
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
        input_schema = types.DisassociateAddressInput,
        output_schema = types.DisassociateAddressOutput,
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
        input_schema = types.DisassociateCapacityReservationBillingOwnerInput,
        output_schema = types.DisassociateCapacityReservationBillingOwnerOutput,
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
        input_schema = types.DisassociateClientVpnTargetNetworkInput,
        output_schema = types.DisassociateClientVpnTargetNetworkOutput,
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
        input_schema = types.DisassociateEnclaveCertificateIamRoleInput,
        output_schema = types.DisassociateEnclaveCertificateIamRoleOutput,
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
        input_schema = types.DisassociateIamInstanceProfileInput,
        output_schema = types.DisassociateIamInstanceProfileOutput,
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
        input_schema = types.DisassociateInstanceEventWindowInput,
        output_schema = types.DisassociateInstanceEventWindowOutput,
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
        input_schema = types.DisassociateIpamByoasnInput,
        output_schema = types.DisassociateIpamByoasnOutput,
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
        input_schema = types.DisassociateIpamResourceDiscoveryInput,
        output_schema = types.DisassociateIpamResourceDiscoveryOutput,
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
        input_schema = types.DisassociateNatGatewayAddressInput,
        output_schema = types.DisassociateNatGatewayAddressOutput,
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
        input_schema = types.DisassociateRouteServerInput,
        output_schema = types.DisassociateRouteServerOutput,
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
        input_schema = types.DisassociateRouteTableInput,
        output_schema = types.DisassociateRouteTableOutput,
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
        input_schema = types.DisassociateSecurityGroupVpcInput,
        output_schema = types.DisassociateSecurityGroupVpcOutput,
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
        input_schema = types.DisassociateSubnetCidrBlockInput,
        output_schema = types.DisassociateSubnetCidrBlockOutput,
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
        input_schema = types.DisassociateTransitGatewayMulticastDomainInput,
        output_schema = types.DisassociateTransitGatewayMulticastDomainOutput,
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
        input_schema = types.DisassociateTransitGatewayPolicyTableInput,
        output_schema = types.DisassociateTransitGatewayPolicyTableOutput,
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
        input_schema = types.DisassociateTransitGatewayRouteTableInput,
        output_schema = types.DisassociateTransitGatewayRouteTableOutput,
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
        input_schema = types.DisassociateTrunkInterfaceInput,
        output_schema = types.DisassociateTrunkInterfaceOutput,
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
        input_schema = types.DisassociateVpcCidrBlockInput,
        output_schema = types.DisassociateVpcCidrBlockOutput,
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
        input_schema = types.EnableAddressTransferInput,
        output_schema = types.EnableAddressTransferOutput,
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
        input_schema = types.EnableAllowedImagesSettingsInput,
        output_schema = types.EnableAllowedImagesSettingsOutput,
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
        input_schema = types.EnableAwsNetworkPerformanceMetricSubscriptionInput,
        output_schema = types.EnableAwsNetworkPerformanceMetricSubscriptionOutput,
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
        input_schema = types.EnableCapacityManagerInput,
        output_schema = types.EnableCapacityManagerOutput,
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
        input_schema = types.EnableEbsEncryptionByDefaultInput,
        output_schema = types.EnableEbsEncryptionByDefaultOutput,
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
        input_schema = types.EnableFastLaunchInput,
        output_schema = types.EnableFastLaunchOutput,
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
        input_schema = types.EnableFastSnapshotRestoresInput,
        output_schema = types.EnableFastSnapshotRestoresOutput,
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
        input_schema = types.EnableImageInput,
        output_schema = types.EnableImageOutput,
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
        input_schema = types.EnableImageBlockPublicAccessInput,
        output_schema = types.EnableImageBlockPublicAccessOutput,
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
        input_schema = types.EnableImageDeprecationInput,
        output_schema = types.EnableImageDeprecationOutput,
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
        input_schema = types.EnableImageDeregistrationProtectionInput,
        output_schema = types.EnableImageDeregistrationProtectionOutput,
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
        input_schema = types.EnableInstanceSqlHaStandbyDetectionsInput,
        output_schema = types.EnableInstanceSqlHaStandbyDetectionsOutput,
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
        input_schema = types.EnableIpamOrganizationAdminAccountInput,
        output_schema = types.EnableIpamOrganizationAdminAccountOutput,
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
        input_schema = types.EnableIpamPolicyInput,
        output_schema = types.EnableIpamPolicyOutput,
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
        input_schema = types.EnableReachabilityAnalyzerOrganizationSharingInput,
        output_schema = types.EnableReachabilityAnalyzerOrganizationSharingOutput,
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
        input_schema = types.EnableRouteServerPropagationInput,
        output_schema = types.EnableRouteServerPropagationOutput,
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
        input_schema = types.EnableSerialConsoleAccessInput,
        output_schema = types.EnableSerialConsoleAccessOutput,
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
        input_schema = types.EnableSnapshotBlockPublicAccessInput,
        output_schema = types.EnableSnapshotBlockPublicAccessOutput,
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
        input_schema = types.EnableTransitGatewayRouteTablePropagationInput,
        output_schema = types.EnableTransitGatewayRouteTablePropagationOutput,
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
        input_schema = types.EnableVgwRoutePropagationInput,
        output_schema = types.EnableVgwRoutePropagationOutput,
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
        input_schema = types.EnableVolumeIOInput,
        output_schema = types.EnableVolumeIOOutput,
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
        input_schema = types.EnableVpcClassicLinkInput,
        output_schema = types.EnableVpcClassicLinkOutput,
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
        input_schema = types.EnableVpcClassicLinkDnsSupportInput,
        output_schema = types.EnableVpcClassicLinkDnsSupportOutput,
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
        input_schema = types.ExportClientVpnClientCertificateRevocationListInput,
        output_schema = types.ExportClientVpnClientCertificateRevocationListOutput,
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
        input_schema = types.ExportClientVpnClientConfigurationInput,
        output_schema = types.ExportClientVpnClientConfigurationOutput,
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
        input_schema = types.ExportImageInput,
        output_schema = types.ExportImageOutput,
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
        input_schema = types.ExportTransitGatewayRoutesInput,
        output_schema = types.ExportTransitGatewayRoutesOutput,
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
        input_schema = types.ExportVerifiedAccessInstanceClientConfigurationInput,
        output_schema = types.ExportVerifiedAccessInstanceClientConfigurationOutput,
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
        input_schema = types.GetActiveVpnTunnelStatusInput,
        output_schema = types.GetActiveVpnTunnelStatusOutput,
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
        input_schema = types.GetAllowedImagesSettingsInput,
        output_schema = types.GetAllowedImagesSettingsOutput,
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
        input_schema = types.GetAssociatedEnclaveCertificateIamRolesInput,
        output_schema = types.GetAssociatedEnclaveCertificateIamRolesOutput,
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
        input_schema = types.GetAssociatedIpv6PoolCidrsInput,
        output_schema = types.GetAssociatedIpv6PoolCidrsOutput,
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
        input_schema = types.GetAwsNetworkPerformanceDataInput,
        output_schema = types.GetAwsNetworkPerformanceDataOutput,
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
        input_schema = types.GetCapacityManagerAttributesInput,
        output_schema = types.GetCapacityManagerAttributesOutput,
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
        input_schema = types.GetCapacityManagerMetricDataInput,
        output_schema = types.GetCapacityManagerMetricDataOutput,
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
        input_schema = types.GetCapacityManagerMetricDimensionsInput,
        output_schema = types.GetCapacityManagerMetricDimensionsOutput,
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
        input_schema = types.GetCapacityManagerMonitoredTagKeysInput,
        output_schema = types.GetCapacityManagerMonitoredTagKeysOutput,
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
        input_schema = types.GetCapacityReservationUsageInput,
        output_schema = types.GetCapacityReservationUsageOutput,
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
        input_schema = types.GetCoipPoolUsageInput,
        output_schema = types.GetCoipPoolUsageOutput,
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
        input_schema = types.GetConsoleOutputInput,
        output_schema = types.GetConsoleOutputOutput,
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
        input_schema = types.GetConsoleScreenshotInput,
        output_schema = types.GetConsoleScreenshotOutput,
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
        input_schema = types.GetDeclarativePoliciesReportSummaryInput,
        output_schema = types.GetDeclarativePoliciesReportSummaryOutput,
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
        input_schema = types.GetDefaultCreditSpecificationInput,
        output_schema = types.GetDefaultCreditSpecificationOutput,
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
        input_schema = types.GetEbsDefaultKmsKeyIdInput,
        output_schema = types.GetEbsDefaultKmsKeyIdOutput,
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
        input_schema = types.GetEbsEncryptionByDefaultInput,
        output_schema = types.GetEbsEncryptionByDefaultOutput,
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
        input_schema = types.GetEnabledIpamPolicyInput,
        output_schema = types.GetEnabledIpamPolicyOutput,
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
        input_schema = types.GetFlowLogsIntegrationTemplateInput,
        output_schema = types.GetFlowLogsIntegrationTemplateOutput,
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
        input_schema = types.GetGroupsForCapacityReservationInput,
        output_schema = types.GetGroupsForCapacityReservationOutput,
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
        input_schema = types.GetHostReservationPurchasePreviewInput,
        output_schema = types.GetHostReservationPurchasePreviewOutput,
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
        input_schema = types.GetImageAncestryInput,
        output_schema = types.GetImageAncestryOutput,
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
        input_schema = types.GetImageBlockPublicAccessStateInput,
        output_schema = types.GetImageBlockPublicAccessStateOutput,
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
        input_schema = types.GetInstanceMetadataDefaultsInput,
        output_schema = types.GetInstanceMetadataDefaultsOutput,
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
        input_schema = types.GetInstanceTpmEkPubInput,
        output_schema = types.GetInstanceTpmEkPubOutput,
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
        input_schema = types.GetInstanceTypesFromInstanceRequirementsInput,
        output_schema = types.GetInstanceTypesFromInstanceRequirementsOutput,
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
        input_schema = types.GetInstanceUefiDataInput,
        output_schema = types.GetInstanceUefiDataOutput,
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
        input_schema = types.GetIpamAddressHistoryInput,
        output_schema = types.GetIpamAddressHistoryOutput,
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
        input_schema = types.GetIpamDiscoveredAccountsInput,
        output_schema = types.GetIpamDiscoveredAccountsOutput,
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
        input_schema = types.GetIpamDiscoveredPublicAddressesInput,
        output_schema = types.GetIpamDiscoveredPublicAddressesOutput,
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
        input_schema = types.GetIpamDiscoveredResourceCidrsInput,
        output_schema = types.GetIpamDiscoveredResourceCidrsOutput,
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
        input_schema = types.GetIpamPolicyAllocationRulesInput,
        output_schema = types.GetIpamPolicyAllocationRulesOutput,
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
        input_schema = types.GetIpamPolicyOrganizationTargetsInput,
        output_schema = types.GetIpamPolicyOrganizationTargetsOutput,
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
        input_schema = types.GetIpamPoolAllocationsInput,
        output_schema = types.GetIpamPoolAllocationsOutput,
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
        input_schema = types.GetIpamPoolCidrsInput,
        output_schema = types.GetIpamPoolCidrsOutput,
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
        input_schema = types.GetIpamPrefixListResolverRulesInput,
        output_schema = types.GetIpamPrefixListResolverRulesOutput,
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
        input_schema = types.GetIpamPrefixListResolverVersionEntriesInput,
        output_schema = types.GetIpamPrefixListResolverVersionEntriesOutput,
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
        input_schema = types.GetIpamPrefixListResolverVersionsInput,
        output_schema = types.GetIpamPrefixListResolverVersionsOutput,
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
        input_schema = types.GetIpamResourceCidrsInput,
        output_schema = types.GetIpamResourceCidrsOutput,
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
        input_schema = types.GetLaunchTemplateDataInput,
        output_schema = types.GetLaunchTemplateDataOutput,
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
        input_schema = types.GetManagedPrefixListAssociationsInput,
        output_schema = types.GetManagedPrefixListAssociationsOutput,
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
        input_schema = types.GetManagedPrefixListEntriesInput,
        output_schema = types.GetManagedPrefixListEntriesOutput,
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
        input_schema = types.GetManagedResourceVisibilityInput,
        output_schema = types.GetManagedResourceVisibilityOutput,
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
        input_schema = types.GetNetworkInsightsAccessScopeAnalysisFindingsInput,
        output_schema = types.GetNetworkInsightsAccessScopeAnalysisFindingsOutput,
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
        input_schema = types.GetNetworkInsightsAccessScopeContentInput,
        output_schema = types.GetNetworkInsightsAccessScopeContentOutput,
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
        input_schema = types.GetPasswordDataInput,
        output_schema = types.GetPasswordDataOutput,
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
        input_schema = types.GetReservedInstancesExchangeQuoteInput,
        output_schema = types.GetReservedInstancesExchangeQuoteOutput,
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
        input_schema = types.GetRouteServerAssociationsInput,
        output_schema = types.GetRouteServerAssociationsOutput,
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
        input_schema = types.GetRouteServerPropagationsInput,
        output_schema = types.GetRouteServerPropagationsOutput,
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
        input_schema = types.GetRouteServerRoutingDatabaseInput,
        output_schema = types.GetRouteServerRoutingDatabaseOutput,
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
        input_schema = types.GetSecurityGroupsForVpcInput,
        output_schema = types.GetSecurityGroupsForVpcOutput,
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
        input_schema = types.GetSerialConsoleAccessStatusInput,
        output_schema = types.GetSerialConsoleAccessStatusOutput,
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
        input_schema = types.GetSnapshotBlockPublicAccessStateInput,
        output_schema = types.GetSnapshotBlockPublicAccessStateOutput,
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
        input_schema = types.GetSpotPlacementScoresInput,
        output_schema = types.GetSpotPlacementScoresOutput,
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
        input_schema = types.GetSubnetCidrReservationsInput,
        output_schema = types.GetSubnetCidrReservationsOutput,
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
        input_schema = types.GetTransitGatewayAttachmentPropagationsInput,
        output_schema = types.GetTransitGatewayAttachmentPropagationsOutput,
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
        input_schema = types.GetTransitGatewayMeteringPolicyEntriesInput,
        output_schema = types.GetTransitGatewayMeteringPolicyEntriesOutput,
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
        input_schema = types.GetTransitGatewayMulticastDomainAssociationsInput,
        output_schema = types.GetTransitGatewayMulticastDomainAssociationsOutput,
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
        input_schema = types.GetTransitGatewayPolicyTableAssociationsInput,
        output_schema = types.GetTransitGatewayPolicyTableAssociationsOutput,
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
        input_schema = types.GetTransitGatewayPolicyTableEntriesInput,
        output_schema = types.GetTransitGatewayPolicyTableEntriesOutput,
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
        input_schema = types.GetTransitGatewayPrefixListReferencesInput,
        output_schema = types.GetTransitGatewayPrefixListReferencesOutput,
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
        input_schema = types.GetTransitGatewayRouteTableAssociationsInput,
        output_schema = types.GetTransitGatewayRouteTableAssociationsOutput,
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
        input_schema = types.GetTransitGatewayRouteTablePropagationsInput,
        output_schema = types.GetTransitGatewayRouteTablePropagationsOutput,
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
        input_schema = types.GetVerifiedAccessEndpointPolicyInput,
        output_schema = types.GetVerifiedAccessEndpointPolicyOutput,
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
        input_schema = types.GetVerifiedAccessEndpointTargetsInput,
        output_schema = types.GetVerifiedAccessEndpointTargetsOutput,
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
        input_schema = types.GetVerifiedAccessGroupPolicyInput,
        output_schema = types.GetVerifiedAccessGroupPolicyOutput,
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
        input_schema = types.GetVpcResourcesBlockingEncryptionEnforcementInput,
        output_schema = types.GetVpcResourcesBlockingEncryptionEnforcementOutput,
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
        input_schema = types.GetVpnConnectionDeviceSampleConfigurationInput,
        output_schema = types.GetVpnConnectionDeviceSampleConfigurationOutput,
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
        input_schema = types.GetVpnConnectionDeviceTypesInput,
        output_schema = types.GetVpnConnectionDeviceTypesOutput,
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
        input_schema = types.GetVpnTunnelReplacementStatusInput,
        output_schema = types.GetVpnTunnelReplacementStatusOutput,
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
        input_schema = types.ImportClientVpnClientCertificateRevocationListInput,
        output_schema = types.ImportClientVpnClientCertificateRevocationListOutput,
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
        input_schema = types.ImportImageInput,
        output_schema = types.ImportImageOutput,
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
        input_schema = types.ImportInstanceInput,
        output_schema = types.ImportInstanceOutput,
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
        input_schema = types.ImportKeyPairInput,
        output_schema = types.ImportKeyPairOutput,
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
        input_schema = types.ImportSnapshotInput,
        output_schema = types.ImportSnapshotOutput,
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
        input_schema = types.ImportVolumeInput,
        output_schema = types.ImportVolumeOutput,
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
        input_schema = types.ListImagesInRecycleBinInput,
        output_schema = types.ListImagesInRecycleBinOutput,
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
        input_schema = types.ListSnapshotsInRecycleBinInput,
        output_schema = types.ListSnapshotsInRecycleBinOutput,
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
        input_schema = types.ListVolumesInRecycleBinInput,
        output_schema = types.ListVolumesInRecycleBinOutput,
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
        input_schema = types.LockSnapshotInput,
        output_schema = types.LockSnapshotOutput,
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
        input_schema = types.ModifyAddressAttributeInput,
        output_schema = types.ModifyAddressAttributeOutput,
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
        input_schema = types.ModifyAvailabilityZoneGroupInput,
        output_schema = types.ModifyAvailabilityZoneGroupOutput,
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
        input_schema = types.ModifyCapacityReservationInput,
        output_schema = types.ModifyCapacityReservationOutput,
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
        input_schema = types.ModifyCapacityReservationFleetInput,
        output_schema = types.ModifyCapacityReservationFleetOutput,
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
        input_schema = types.ModifyClientVpnEndpointInput,
        output_schema = types.ModifyClientVpnEndpointOutput,
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
        input_schema = types.ModifyDefaultCreditSpecificationInput,
        output_schema = types.ModifyDefaultCreditSpecificationOutput,
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
        input_schema = types.ModifyEbsDefaultKmsKeyIdInput,
        output_schema = types.ModifyEbsDefaultKmsKeyIdOutput,
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
        input_schema = types.ModifyFleetInput,
        output_schema = types.ModifyFleetOutput,
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
        input_schema = types.ModifyFpgaImageAttributeInput,
        output_schema = types.ModifyFpgaImageAttributeOutput,
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
        input_schema = types.ModifyHostsInput,
        output_schema = types.ModifyHostsOutput,
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
        input_schema = types.ModifyIdentityIdFormatInput,
        output_schema = types.ModifyIdentityIdFormatOutput,
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
        input_schema = types.ModifyIdFormatInput,
        output_schema = types.ModifyIdFormatOutput,
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
        input_schema = types.ModifyImageAttributeInput,
        output_schema = types.ModifyImageAttributeOutput,
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
        input_schema = types.ModifyInstanceAttributeInput,
        output_schema = types.ModifyInstanceAttributeOutput,
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
        input_schema = types.ModifyInstanceCapacityReservationAttributesInput,
        output_schema = types.ModifyInstanceCapacityReservationAttributesOutput,
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
        input_schema = types.ModifyInstanceConnectEndpointInput,
        output_schema = types.ModifyInstanceConnectEndpointOutput,
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
        input_schema = types.ModifyInstanceCpuOptionsInput,
        output_schema = types.ModifyInstanceCpuOptionsOutput,
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
        input_schema = types.ModifyInstanceCreditSpecificationInput,
        output_schema = types.ModifyInstanceCreditSpecificationOutput,
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
        input_schema = types.ModifyInstanceEventStartTimeInput,
        output_schema = types.ModifyInstanceEventStartTimeOutput,
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
        input_schema = types.ModifyInstanceEventWindowInput,
        output_schema = types.ModifyInstanceEventWindowOutput,
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
        input_schema = types.ModifyInstanceMaintenanceOptionsInput,
        output_schema = types.ModifyInstanceMaintenanceOptionsOutput,
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
        input_schema = types.ModifyInstanceMetadataDefaultsInput,
        output_schema = types.ModifyInstanceMetadataDefaultsOutput,
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
        input_schema = types.ModifyInstanceMetadataOptionsInput,
        output_schema = types.ModifyInstanceMetadataOptionsOutput,
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
        input_schema = types.ModifyInstanceNetworkPerformanceOptionsInput,
        output_schema = types.ModifyInstanceNetworkPerformanceOptionsOutput,
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
        input_schema = types.ModifyInstancePlacementInput,
        output_schema = types.ModifyInstancePlacementOutput,
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
        input_schema = types.ModifyIpamInput,
        output_schema = types.ModifyIpamOutput,
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
        input_schema = types.ModifyIpamPolicyAllocationRulesInput,
        output_schema = types.ModifyIpamPolicyAllocationRulesOutput,
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
        input_schema = types.ModifyIpamPoolInput,
        output_schema = types.ModifyIpamPoolOutput,
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
        input_schema = types.ModifyIpamPrefixListResolverInput,
        output_schema = types.ModifyIpamPrefixListResolverOutput,
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
        input_schema = types.ModifyIpamPrefixListResolverTargetInput,
        output_schema = types.ModifyIpamPrefixListResolverTargetOutput,
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
        input_schema = types.ModifyIpamResourceCidrInput,
        output_schema = types.ModifyIpamResourceCidrOutput,
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
        input_schema = types.ModifyIpamResourceDiscoveryInput,
        output_schema = types.ModifyIpamResourceDiscoveryOutput,
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
        input_schema = types.ModifyIpamScopeInput,
        output_schema = types.ModifyIpamScopeOutput,
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
        input_schema = types.ModifyLaunchTemplateInput,
        output_schema = types.ModifyLaunchTemplateOutput,
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
        input_schema = types.ModifyLocalGatewayRouteInput,
        output_schema = types.ModifyLocalGatewayRouteOutput,
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
        input_schema = types.ModifyManagedPrefixListInput,
        output_schema = types.ModifyManagedPrefixListOutput,
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
        input_schema = types.ModifyManagedResourceVisibilityInput,
        output_schema = types.ModifyManagedResourceVisibilityOutput,
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
        input_schema = types.ModifyNetworkInterfaceAttributeInput,
        output_schema = types.ModifyNetworkInterfaceAttributeOutput,
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
        input_schema = types.ModifyPrivateDnsNameOptionsInput,
        output_schema = types.ModifyPrivateDnsNameOptionsOutput,
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
        input_schema = types.ModifyPublicIpDnsNameOptionsInput,
        output_schema = types.ModifyPublicIpDnsNameOptionsOutput,
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
        input_schema = types.ModifyReservedInstancesInput,
        output_schema = types.ModifyReservedInstancesOutput,
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
        input_schema = types.ModifyRouteServerInput,
        output_schema = types.ModifyRouteServerOutput,
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
        input_schema = types.ModifySecurityGroupRulesInput,
        output_schema = types.ModifySecurityGroupRulesOutput,
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
        input_schema = types.ModifySnapshotAttributeInput,
        output_schema = types.ModifySnapshotAttributeOutput,
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
        input_schema = types.ModifySnapshotTierInput,
        output_schema = types.ModifySnapshotTierOutput,
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
        input_schema = types.ModifySpotFleetRequestInput,
        output_schema = types.ModifySpotFleetRequestOutput,
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
        input_schema = types.ModifySubnetAttributeInput,
        output_schema = types.ModifySubnetAttributeOutput,
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
        input_schema = types.ModifyTrafficMirrorFilterNetworkServicesInput,
        output_schema = types.ModifyTrafficMirrorFilterNetworkServicesOutput,
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
        input_schema = types.ModifyTrafficMirrorFilterRuleInput,
        output_schema = types.ModifyTrafficMirrorFilterRuleOutput,
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
        input_schema = types.ModifyTrafficMirrorSessionInput,
        output_schema = types.ModifyTrafficMirrorSessionOutput,
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
        input_schema = types.ModifyTransitGatewayInput,
        output_schema = types.ModifyTransitGatewayOutput,
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
        input_schema = types.ModifyTransitGatewayMeteringPolicyInput,
        output_schema = types.ModifyTransitGatewayMeteringPolicyOutput,
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
        input_schema = types.ModifyTransitGatewayPrefixListReferenceInput,
        output_schema = types.ModifyTransitGatewayPrefixListReferenceOutput,
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
        input_schema = types.ModifyTransitGatewayVpcAttachmentInput,
        output_schema = types.ModifyTransitGatewayVpcAttachmentOutput,
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
        input_schema = types.ModifyVerifiedAccessEndpointInput,
        output_schema = types.ModifyVerifiedAccessEndpointOutput,
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
        input_schema = types.ModifyVerifiedAccessEndpointPolicyInput,
        output_schema = types.ModifyVerifiedAccessEndpointPolicyOutput,
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
        input_schema = types.ModifyVerifiedAccessGroupInput,
        output_schema = types.ModifyVerifiedAccessGroupOutput,
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
        input_schema = types.ModifyVerifiedAccessGroupPolicyInput,
        output_schema = types.ModifyVerifiedAccessGroupPolicyOutput,
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
        input_schema = types.ModifyVerifiedAccessInstanceInput,
        output_schema = types.ModifyVerifiedAccessInstanceOutput,
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
        input_schema = types.ModifyVerifiedAccessInstanceLoggingConfigurationInput,
        output_schema = types.ModifyVerifiedAccessInstanceLoggingConfigurationOutput,
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
        input_schema = types.ModifyVerifiedAccessTrustProviderInput,
        output_schema = types.ModifyVerifiedAccessTrustProviderOutput,
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
        input_schema = types.ModifyVolumeInput,
        output_schema = types.ModifyVolumeOutput,
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
        input_schema = types.ModifyVolumeAttributeInput,
        output_schema = types.ModifyVolumeAttributeOutput,
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
        input_schema = types.ModifyVpcAttributeInput,
        output_schema = types.ModifyVpcAttributeOutput,
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
        input_schema = types.ModifyVpcBlockPublicAccessExclusionInput,
        output_schema = types.ModifyVpcBlockPublicAccessExclusionOutput,
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
        input_schema = types.ModifyVpcBlockPublicAccessOptionsInput,
        output_schema = types.ModifyVpcBlockPublicAccessOptionsOutput,
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
        input_schema = types.ModifyVpcEncryptionControlInput,
        output_schema = types.ModifyVpcEncryptionControlOutput,
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
        input_schema = types.ModifyVpcEndpointInput,
        output_schema = types.ModifyVpcEndpointOutput,
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
        input_schema = types.ModifyVpcEndpointConnectionNotificationInput,
        output_schema = types.ModifyVpcEndpointConnectionNotificationOutput,
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
        input_schema = types.ModifyVpcEndpointServiceConfigurationInput,
        output_schema = types.ModifyVpcEndpointServiceConfigurationOutput,
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
        input_schema = types.ModifyVpcEndpointServicePayerResponsibilityInput,
        output_schema = types.ModifyVpcEndpointServicePayerResponsibilityOutput,
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
        input_schema = types.ModifyVpcEndpointServicePermissionsInput,
        output_schema = types.ModifyVpcEndpointServicePermissionsOutput,
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
        input_schema = types.ModifyVpcPeeringConnectionOptionsInput,
        output_schema = types.ModifyVpcPeeringConnectionOptionsOutput,
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
        input_schema = types.ModifyVpcTenancyInput,
        output_schema = types.ModifyVpcTenancyOutput,
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
        input_schema = types.ModifyVpnConnectionInput,
        output_schema = types.ModifyVpnConnectionOutput,
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
        input_schema = types.ModifyVpnConnectionOptionsInput,
        output_schema = types.ModifyVpnConnectionOptionsOutput,
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
        input_schema = types.ModifyVpnTunnelCertificateInput,
        output_schema = types.ModifyVpnTunnelCertificateOutput,
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
        input_schema = types.ModifyVpnTunnelOptionsInput,
        output_schema = types.ModifyVpnTunnelOptionsOutput,
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
        input_schema = types.MonitorInstancesInput,
        output_schema = types.MonitorInstancesOutput,
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
        input_schema = types.MoveAddressToVpcInput,
        output_schema = types.MoveAddressToVpcOutput,
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
        input_schema = types.MoveByoipCidrToIpamInput,
        output_schema = types.MoveByoipCidrToIpamOutput,
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
        input_schema = types.MoveCapacityReservationInstancesInput,
        output_schema = types.MoveCapacityReservationInstancesOutput,
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
        input_schema = types.ProvisionByoipCidrInput,
        output_schema = types.ProvisionByoipCidrOutput,
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
        input_schema = types.ProvisionIpamByoasnInput,
        output_schema = types.ProvisionIpamByoasnOutput,
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
        input_schema = types.ProvisionIpamPoolCidrInput,
        output_schema = types.ProvisionIpamPoolCidrOutput,
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
        input_schema = types.ProvisionPublicIpv4PoolCidrInput,
        output_schema = types.ProvisionPublicIpv4PoolCidrOutput,
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
        input_schema = types.PurchaseCapacityBlockInput,
        output_schema = types.PurchaseCapacityBlockOutput,
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
        input_schema = types.PurchaseCapacityBlockExtensionInput,
        output_schema = types.PurchaseCapacityBlockExtensionOutput,
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
        input_schema = types.PurchaseHostReservationInput,
        output_schema = types.PurchaseHostReservationOutput,
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
        input_schema = types.PurchaseReservedInstancesOfferingInput,
        output_schema = types.PurchaseReservedInstancesOfferingOutput,
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
        input_schema = types.PurchaseScheduledInstancesInput,
        output_schema = types.PurchaseScheduledInstancesOutput,
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
        input_schema = types.RebootInstancesInput,
        output_schema = types.RebootInstancesOutput,
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
        input_schema = types.RegisterImageInput,
        output_schema = types.RegisterImageOutput,
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
        input_schema = types.RegisterInstanceEventNotificationAttributesInput,
        output_schema = types.RegisterInstanceEventNotificationAttributesOutput,
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
        input_schema = types.RegisterTransitGatewayMulticastGroupMembersInput,
        output_schema = types.RegisterTransitGatewayMulticastGroupMembersOutput,
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
        input_schema = types.RegisterTransitGatewayMulticastGroupSourcesInput,
        output_schema = types.RegisterTransitGatewayMulticastGroupSourcesOutput,
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
        input_schema = types.RejectCapacityReservationBillingOwnershipInput,
        output_schema = types.RejectCapacityReservationBillingOwnershipOutput,
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
        input_schema = types.RejectTransitGatewayClientVpnAttachmentInput,
        output_schema = types.RejectTransitGatewayClientVpnAttachmentOutput,
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
        input_schema = types.RejectTransitGatewayMulticastDomainAssociationsInput,
        output_schema = types.RejectTransitGatewayMulticastDomainAssociationsOutput,
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
        input_schema = types.RejectTransitGatewayPeeringAttachmentInput,
        output_schema = types.RejectTransitGatewayPeeringAttachmentOutput,
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
        input_schema = types.RejectTransitGatewayVpcAttachmentInput,
        output_schema = types.RejectTransitGatewayVpcAttachmentOutput,
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
        input_schema = types.RejectVpcEndpointConnectionsInput,
        output_schema = types.RejectVpcEndpointConnectionsOutput,
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
        input_schema = types.RejectVpcPeeringConnectionInput,
        output_schema = types.RejectVpcPeeringConnectionOutput,
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
        input_schema = types.ReleaseAddressInput,
        output_schema = types.ReleaseAddressOutput,
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
        input_schema = types.ReleaseHostsInput,
        output_schema = types.ReleaseHostsOutput,
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
        input_schema = types.ReleaseIpamPoolAllocationInput,
        output_schema = types.ReleaseIpamPoolAllocationOutput,
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
        input_schema = types.ReplaceIamInstanceProfileAssociationInput,
        output_schema = types.ReplaceIamInstanceProfileAssociationOutput,
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
        input_schema = types.ReplaceImageCriteriaInAllowedImagesSettingsInput,
        output_schema = types.ReplaceImageCriteriaInAllowedImagesSettingsOutput,
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
        input_schema = types.ReplaceNetworkAclAssociationInput,
        output_schema = types.ReplaceNetworkAclAssociationOutput,
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
        input_schema = types.ReplaceNetworkAclEntryInput,
        output_schema = types.ReplaceNetworkAclEntryOutput,
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
        input_schema = types.ReplaceRouteInput,
        output_schema = types.ReplaceRouteOutput,
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
        input_schema = types.ReplaceRouteTableAssociationInput,
        output_schema = types.ReplaceRouteTableAssociationOutput,
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
        input_schema = types.ReplaceTransitGatewayRouteInput,
        output_schema = types.ReplaceTransitGatewayRouteOutput,
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
        input_schema = types.ReplaceVpnTunnelInput,
        output_schema = types.ReplaceVpnTunnelOutput,
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
        input_schema = types.ReportInstanceStatusInput,
        output_schema = types.ReportInstanceStatusOutput,
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
        input_schema = types.RequestSpotFleetInput,
        output_schema = types.RequestSpotFleetOutput,
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
        input_schema = types.RequestSpotInstancesInput,
        output_schema = types.RequestSpotInstancesOutput,
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
        input_schema = types.ResetAddressAttributeInput,
        output_schema = types.ResetAddressAttributeOutput,
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
        input_schema = types.ResetEbsDefaultKmsKeyIdInput,
        output_schema = types.ResetEbsDefaultKmsKeyIdOutput,
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
        input_schema = types.ResetFpgaImageAttributeInput,
        output_schema = types.ResetFpgaImageAttributeOutput,
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
        input_schema = types.ResetImageAttributeInput,
        output_schema = types.ResetImageAttributeOutput,
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
        input_schema = types.ResetInstanceAttributeInput,
        output_schema = types.ResetInstanceAttributeOutput,
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
        input_schema = types.ResetNetworkInterfaceAttributeInput,
        output_schema = types.ResetNetworkInterfaceAttributeOutput,
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
        input_schema = types.ResetSnapshotAttributeInput,
        output_schema = types.ResetSnapshotAttributeOutput,
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
        input_schema = types.RestoreAddressToClassicInput,
        output_schema = types.RestoreAddressToClassicOutput,
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
        input_schema = types.RestoreImageFromRecycleBinInput,
        output_schema = types.RestoreImageFromRecycleBinOutput,
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
        input_schema = types.RestoreManagedPrefixListVersionInput,
        output_schema = types.RestoreManagedPrefixListVersionOutput,
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
        input_schema = types.RestoreSnapshotFromRecycleBinInput,
        output_schema = types.RestoreSnapshotFromRecycleBinOutput,
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
        input_schema = types.RestoreSnapshotTierInput,
        output_schema = types.RestoreSnapshotTierOutput,
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
        input_schema = types.RestoreVolumeFromRecycleBinInput,
        output_schema = types.RestoreVolumeFromRecycleBinOutput,
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
        input_schema = types.RevokeClientVpnIngressInput,
        output_schema = types.RevokeClientVpnIngressOutput,
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
        input_schema = types.RevokeSecurityGroupEgressInput,
        output_schema = types.RevokeSecurityGroupEgressOutput,
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
        input_schema = types.RevokeSecurityGroupIngressInput,
        output_schema = types.RevokeSecurityGroupIngressOutput,
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
        input_schema = types.RunInstancesInput,
        output_schema = types.RunInstancesOutput,
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
        input_schema = types.RunScheduledInstancesInput,
        output_schema = types.RunScheduledInstancesOutput,
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
        input_schema = types.SearchLocalGatewayRoutesInput,
        output_schema = types.SearchLocalGatewayRoutesOutput,
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
        input_schema = types.SearchTransitGatewayMulticastGroupsInput,
        output_schema = types.SearchTransitGatewayMulticastGroupsOutput,
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
        input_schema = types.SearchTransitGatewayRoutesInput,
        output_schema = types.SearchTransitGatewayRoutesOutput,
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
        input_schema = types.SendDiagnosticInterruptInput,
        output_schema = types.SendDiagnosticInterruptOutput,
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
        input_schema = types.StartDeclarativePoliciesReportInput,
        output_schema = types.StartDeclarativePoliciesReportOutput,
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
        input_schema = types.StartInstancesInput,
        output_schema = types.StartInstancesOutput,
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
        input_schema = types.StartNetworkInsightsAccessScopeAnalysisInput,
        output_schema = types.StartNetworkInsightsAccessScopeAnalysisOutput,
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
        input_schema = types.StartNetworkInsightsAnalysisInput,
        output_schema = types.StartNetworkInsightsAnalysisOutput,
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
        input_schema = types.StartVpcEndpointServicePrivateDnsVerificationInput,
        output_schema = types.StartVpcEndpointServicePrivateDnsVerificationOutput,
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
        input_schema = types.StopInstancesInput,
        output_schema = types.StopInstancesOutput,
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
        input_schema = types.TerminateClientVpnConnectionsInput,
        output_schema = types.TerminateClientVpnConnectionsOutput,
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
        input_schema = types.TerminateInstancesInput,
        output_schema = types.TerminateInstancesOutput,
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
        input_schema = types.UnassignIpv6AddressesInput,
        output_schema = types.UnassignIpv6AddressesOutput,
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
        input_schema = types.UnassignPrivateIpAddressesInput,
        output_schema = types.UnassignPrivateIpAddressesOutput,
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
        input_schema = types.UnassignPrivateNatGatewayAddressInput,
        output_schema = types.UnassignPrivateNatGatewayAddressOutput,
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
        input_schema = types.UnlockSnapshotInput,
        output_schema = types.UnlockSnapshotOutput,
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
        input_schema = types.UnmonitorInstancesInput,
        output_schema = types.UnmonitorInstancesOutput,
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
        input_schema = types.UpdateCapacityManagerMonitoredTagKeysInput,
        output_schema = types.UpdateCapacityManagerMonitoredTagKeysOutput,
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
        input_schema = types.UpdateCapacityManagerOrganizationsAccessInput,
        output_schema = types.UpdateCapacityManagerOrganizationsAccessOutput,
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
        input_schema = types.UpdateInterruptibleCapacityReservationAllocationInput,
        output_schema = types.UpdateInterruptibleCapacityReservationAllocationOutput,
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
        input_schema = types.UpdateSecurityGroupRuleDescriptionsEgressInput,
        output_schema = types.UpdateSecurityGroupRuleDescriptionsEgressOutput,
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
        input_schema = types.UpdateSecurityGroupRuleDescriptionsIngressInput,
        output_schema = types.UpdateSecurityGroupRuleDescriptionsIngressOutput,
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
        input_schema = types.WithdrawByoipCidrInput,
        output_schema = types.WithdrawByoipCidrOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
