



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("ec2.endpoint_rules")
local query_protocol = require("smithy.protocol.ec2query")
local schemas = require("ec2.schemas")
local traits = require("smithy.traits")
local types = require("ec2.types")
local sdk_defaults = require("aws.sdk_defaults")

































































































































































































































































































































































































































































































































































































































































































































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonEC2"
   if not c.protocol then c.protocol = query_protocol.new("ec2Query") end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ec2", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:acceptAddressTransfer(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptAddressTransfer, input, options)
end

function C:acceptCapacityReservationBillingOwnership(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptCapacityReservationBillingOwnership, input, options)
end

function C:acceptReservedInstancesExchangeQuote(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptReservedInstancesExchangeQuote, input, options)
end

function C:acceptTransitGatewayClientVpnAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptTransitGatewayClientVpnAttachment, input, options)
end

function C:acceptTransitGatewayMulticastDomainAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptTransitGatewayMulticastDomainAssociations, input, options)
end

function C:acceptTransitGatewayPeeringAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptTransitGatewayPeeringAttachment, input, options)
end

function C:acceptTransitGatewayVpcAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptTransitGatewayVpcAttachment, input, options)
end

function C:acceptVpcEndpointConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptVpcEndpointConnections, input, options)
end

function C:acceptVpcPeeringConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptVpcPeeringConnection, input, options)
end

function C:advertiseByoipCidr(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdvertiseByoipCidr, input, options)
end

function C:allocateAddress(input, options)
   return self:invokeOperation(schemas.Service, schemas.AllocateAddress, input, options)
end

function C:allocateHosts(input, options)
   return self:invokeOperation(schemas.Service, schemas.AllocateHosts, input, options)
end

function C:allocateIpamPoolCidr(input, options)
   return self:invokeOperation(schemas.Service, schemas.AllocateIpamPoolCidr, input, options)
end

function C:applySecurityGroupsToClientVpnTargetNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.ApplySecurityGroupsToClientVpnTargetNetwork, input, options)
end

function C:assignIpv6Addresses(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssignIpv6Addresses, input, options)
end

function C:assignPrivateIpAddresses(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssignPrivateIpAddresses, input, options)
end

function C:assignPrivateNatGatewayAddress(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssignPrivateNatGatewayAddress, input, options)
end

function C:associateAddress(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateAddress, input, options)
end

function C:associateCapacityReservationBillingOwner(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateCapacityReservationBillingOwner, input, options)
end

function C:associateClientVpnTargetNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateClientVpnTargetNetwork, input, options)
end

function C:associateDhcpOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateDhcpOptions, input, options)
end

function C:associateEnclaveCertificateIamRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateEnclaveCertificateIamRole, input, options)
end

function C:associateIamInstanceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateIamInstanceProfile, input, options)
end

function C:associateInstanceEventWindow(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateInstanceEventWindow, input, options)
end

function C:associateIpamByoasn(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateIpamByoasn, input, options)
end

function C:associateIpamResourceDiscovery(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateIpamResourceDiscovery, input, options)
end

function C:associateNatGatewayAddress(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateNatGatewayAddress, input, options)
end

function C:associateRouteServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateRouteServer, input, options)
end

function C:associateRouteTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateRouteTable, input, options)
end

function C:associateSecurityGroupVpc(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateSecurityGroupVpc, input, options)
end

function C:associateSubnetCidrBlock(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateSubnetCidrBlock, input, options)
end

function C:associateTransitGatewayMulticastDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateTransitGatewayMulticastDomain, input, options)
end

function C:associateTransitGatewayPolicyTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateTransitGatewayPolicyTable, input, options)
end

function C:associateTransitGatewayRouteTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateTransitGatewayRouteTable, input, options)
end

function C:associateTrunkInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateTrunkInterface, input, options)
end

function C:associateVpcCidrBlock(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateVpcCidrBlock, input, options)
end

function C:attachClassicLinkVpc(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachClassicLinkVpc, input, options)
end

function C:attachInternetGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachInternetGateway, input, options)
end

function C:attachNetworkInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachNetworkInterface, input, options)
end

function C:attachVerifiedAccessTrustProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachVerifiedAccessTrustProvider, input, options)
end

function C:attachVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachVolume, input, options)
end

function C:attachVpnGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachVpnGateway, input, options)
end

function C:authorizeClientVpnIngress(input, options)
   return self:invokeOperation(schemas.Service, schemas.AuthorizeClientVpnIngress, input, options)
end

function C:authorizeSecurityGroupEgress(input, options)
   return self:invokeOperation(schemas.Service, schemas.AuthorizeSecurityGroupEgress, input, options)
end

function C:authorizeSecurityGroupIngress(input, options)
   return self:invokeOperation(schemas.Service, schemas.AuthorizeSecurityGroupIngress, input, options)
end

function C:bundleInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.BundleInstance, input, options)
end

function C:cancelBundleTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelBundleTask, input, options)
end

function C:cancelCapacityReservation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelCapacityReservation, input, options)
end

function C:cancelCapacityReservationFleets(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelCapacityReservationFleets, input, options)
end

function C:cancelConversionTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelConversionTask, input, options)
end

function C:cancelDeclarativePoliciesReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelDeclarativePoliciesReport, input, options)
end

function C:cancelExportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelExportTask, input, options)
end

function C:cancelImageLaunchPermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelImageLaunchPermission, input, options)
end

function C:cancelImportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelImportTask, input, options)
end

function C:cancelReservedInstancesListing(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelReservedInstancesListing, input, options)
end

function C:cancelSpotFleetRequests(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelSpotFleetRequests, input, options)
end

function C:cancelSpotInstanceRequests(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelSpotInstanceRequests, input, options)
end

function C:confirmProductInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.ConfirmProductInstance, input, options)
end

function C:copyFpgaImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopyFpgaImage, input, options)
end

function C:copyImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopyImage, input, options)
end

function C:copySnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopySnapshot, input, options)
end

function C:copyVolumes(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopyVolumes, input, options)
end

function C:createCapacityManagerDataExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCapacityManagerDataExport, input, options)
end

function C:createCapacityReservation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCapacityReservation, input, options)
end

function C:createCapacityReservationBySplitting(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCapacityReservationBySplitting, input, options)
end

function C:createCapacityReservationFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCapacityReservationFleet, input, options)
end

function C:createCarrierGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCarrierGateway, input, options)
end

function C:createClientVpnEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateClientVpnEndpoint, input, options)
end

function C:createClientVpnRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateClientVpnRoute, input, options)
end

function C:createCoipCidr(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCoipCidr, input, options)
end

function C:createCoipPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCoipPool, input, options)
end

function C:createCustomerGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCustomerGateway, input, options)
end

function C:createDefaultSubnet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDefaultSubnet, input, options)
end

function C:createDefaultVpc(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDefaultVpc, input, options)
end

function C:createDelegateMacVolumeOwnershipTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDelegateMacVolumeOwnershipTask, input, options)
end

function C:createDhcpOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDhcpOptions, input, options)
end

function C:createEgressOnlyInternetGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEgressOnlyInternetGateway, input, options)
end

function C:createFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFleet, input, options)
end

function C:createFlowLogs(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFlowLogs, input, options)
end

function C:createFpgaImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFpgaImage, input, options)
end

function C:createImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateImage, input, options)
end

function C:createImageUsageReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateImageUsageReport, input, options)
end

function C:createInstanceConnectEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInstanceConnectEndpoint, input, options)
end

function C:createInstanceEventWindow(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInstanceEventWindow, input, options)
end

function C:createInstanceExportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInstanceExportTask, input, options)
end

function C:createInternetGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInternetGateway, input, options)
end

function C:createInterruptibleCapacityReservationAllocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInterruptibleCapacityReservationAllocation, input, options)
end

function C:createIpam(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIpam, input, options)
end

function C:createIpamExternalResourceVerificationToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIpamExternalResourceVerificationToken, input, options)
end

function C:createIpamPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIpamPolicy, input, options)
end

function C:createIpamPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIpamPool, input, options)
end

function C:createIpamPrefixListResolver(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIpamPrefixListResolver, input, options)
end

function C:createIpamPrefixListResolverTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIpamPrefixListResolverTarget, input, options)
end

function C:createIpamResourceDiscovery(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIpamResourceDiscovery, input, options)
end

function C:createIpamScope(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIpamScope, input, options)
end

function C:createKeyPair(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateKeyPair, input, options)
end

function C:createLaunchTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLaunchTemplate, input, options)
end

function C:createLaunchTemplateVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLaunchTemplateVersion, input, options)
end

function C:createLocalGatewayRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLocalGatewayRoute, input, options)
end

function C:createLocalGatewayRouteTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLocalGatewayRouteTable, input, options)
end

function C:createLocalGatewayRouteTableVirtualInterfaceGroupAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociation, input, options)
end

function C:createLocalGatewayRouteTableVpcAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLocalGatewayRouteTableVpcAssociation, input, options)
end

function C:createLocalGatewayVirtualInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLocalGatewayVirtualInterface, input, options)
end

function C:createLocalGatewayVirtualInterfaceGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLocalGatewayVirtualInterfaceGroup, input, options)
end

function C:createMacSystemIntegrityProtectionModificationTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMacSystemIntegrityProtectionModificationTask, input, options)
end

function C:createManagedPrefixList(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateManagedPrefixList, input, options)
end

function C:createNatGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNatGateway, input, options)
end

function C:createNetworkAcl(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNetworkAcl, input, options)
end

function C:createNetworkAclEntry(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNetworkAclEntry, input, options)
end

function C:createNetworkInsightsAccessScope(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNetworkInsightsAccessScope, input, options)
end

function C:createNetworkInsightsPath(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNetworkInsightsPath, input, options)
end

function C:createNetworkInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNetworkInterface, input, options)
end

function C:createNetworkInterfacePermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNetworkInterfacePermission, input, options)
end

function C:createPlacementGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePlacementGroup, input, options)
end

function C:createPublicIpv4Pool(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePublicIpv4Pool, input, options)
end

function C:createReplaceRootVolumeTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateReplaceRootVolumeTask, input, options)
end

function C:createReservedInstancesListing(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateReservedInstancesListing, input, options)
end

function C:createRestoreImageTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRestoreImageTask, input, options)
end

function C:createRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRoute, input, options)
end

function C:createRouteServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRouteServer, input, options)
end

function C:createRouteServerEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRouteServerEndpoint, input, options)
end

function C:createRouteServerPeer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRouteServerPeer, input, options)
end

function C:createRouteTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRouteTable, input, options)
end

function C:createSecondaryNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSecondaryNetwork, input, options)
end

function C:createSecondarySubnet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSecondarySubnet, input, options)
end

function C:createSecurityGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSecurityGroup, input, options)
end

function C:createSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSnapshot, input, options)
end

function C:createSnapshots(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSnapshots, input, options)
end

function C:createSpotDatafeedSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSpotDatafeedSubscription, input, options)
end

function C:createStoreImageTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStoreImageTask, input, options)
end

function C:createSubnet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSubnet, input, options)
end

function C:createSubnetCidrReservation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSubnetCidrReservation, input, options)
end

function C:createTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTags, input, options)
end

function C:createTrafficMirrorFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrafficMirrorFilter, input, options)
end

function C:createTrafficMirrorFilterRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrafficMirrorFilterRule, input, options)
end

function C:createTrafficMirrorSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrafficMirrorSession, input, options)
end

function C:createTrafficMirrorTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrafficMirrorTarget, input, options)
end

function C:createTransitGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTransitGateway, input, options)
end

function C:createTransitGatewayConnect(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTransitGatewayConnect, input, options)
end

function C:createTransitGatewayConnectPeer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTransitGatewayConnectPeer, input, options)
end

function C:createTransitGatewayMeteringPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTransitGatewayMeteringPolicy, input, options)
end

function C:createTransitGatewayMeteringPolicyEntry(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTransitGatewayMeteringPolicyEntry, input, options)
end

function C:createTransitGatewayMulticastDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTransitGatewayMulticastDomain, input, options)
end

function C:createTransitGatewayPeeringAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTransitGatewayPeeringAttachment, input, options)
end

function C:createTransitGatewayPolicyTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTransitGatewayPolicyTable, input, options)
end

function C:createTransitGatewayPrefixListReference(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTransitGatewayPrefixListReference, input, options)
end

function C:createTransitGatewayRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTransitGatewayRoute, input, options)
end

function C:createTransitGatewayRouteTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTransitGatewayRouteTable, input, options)
end

function C:createTransitGatewayRouteTableAnnouncement(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTransitGatewayRouteTableAnnouncement, input, options)
end

function C:createTransitGatewayVpcAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTransitGatewayVpcAttachment, input, options)
end

function C:createVerifiedAccessEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVerifiedAccessEndpoint, input, options)
end

function C:createVerifiedAccessGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVerifiedAccessGroup, input, options)
end

function C:createVerifiedAccessInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVerifiedAccessInstance, input, options)
end

function C:createVerifiedAccessTrustProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVerifiedAccessTrustProvider, input, options)
end

function C:createVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVolume, input, options)
end

function C:createVpc(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpc, input, options)
end

function C:createVpcBlockPublicAccessExclusion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpcBlockPublicAccessExclusion, input, options)
end

function C:createVpcEncryptionControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpcEncryptionControl, input, options)
end

function C:createVpcEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpcEndpoint, input, options)
end

function C:createVpcEndpointConnectionNotification(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpcEndpointConnectionNotification, input, options)
end

function C:createVpcEndpointServiceConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpcEndpointServiceConfiguration, input, options)
end

function C:createVpcPeeringConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpcPeeringConnection, input, options)
end

function C:createVpnConcentrator(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpnConcentrator, input, options)
end

function C:createVpnConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpnConnection, input, options)
end

function C:createVpnConnectionRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpnConnectionRoute, input, options)
end

function C:createVpnGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpnGateway, input, options)
end

function C:deleteCapacityManagerDataExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCapacityManagerDataExport, input, options)
end

function C:deleteCarrierGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCarrierGateway, input, options)
end

function C:deleteClientVpnEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteClientVpnEndpoint, input, options)
end

function C:deleteClientVpnRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteClientVpnRoute, input, options)
end

function C:deleteCoipCidr(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCoipCidr, input, options)
end

function C:deleteCoipPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCoipPool, input, options)
end

function C:deleteCustomerGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCustomerGateway, input, options)
end

function C:deleteDhcpOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDhcpOptions, input, options)
end

function C:deleteEgressOnlyInternetGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEgressOnlyInternetGateway, input, options)
end

function C:deleteFleets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFleets, input, options)
end

function C:deleteFlowLogs(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFlowLogs, input, options)
end

function C:deleteFpgaImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFpgaImage, input, options)
end

function C:deleteImageUsageReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteImageUsageReport, input, options)
end

function C:deleteInstanceConnectEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInstanceConnectEndpoint, input, options)
end

function C:deleteInstanceEventWindow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInstanceEventWindow, input, options)
end

function C:deleteInternetGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInternetGateway, input, options)
end

function C:deleteIpam(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIpam, input, options)
end

function C:deleteIpamExternalResourceVerificationToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIpamExternalResourceVerificationToken, input, options)
end

function C:deleteIpamPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIpamPolicy, input, options)
end

function C:deleteIpamPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIpamPool, input, options)
end

function C:deleteIpamPrefixListResolver(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIpamPrefixListResolver, input, options)
end

function C:deleteIpamPrefixListResolverTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIpamPrefixListResolverTarget, input, options)
end

function C:deleteIpamResourceDiscovery(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIpamResourceDiscovery, input, options)
end

function C:deleteIpamScope(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIpamScope, input, options)
end

function C:deleteKeyPair(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteKeyPair, input, options)
end

function C:deleteLaunchTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLaunchTemplate, input, options)
end

function C:deleteLaunchTemplateVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLaunchTemplateVersions, input, options)
end

function C:deleteLocalGatewayRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLocalGatewayRoute, input, options)
end

function C:deleteLocalGatewayRouteTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLocalGatewayRouteTable, input, options)
end

function C:deleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation, input, options)
end

function C:deleteLocalGatewayRouteTableVpcAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLocalGatewayRouteTableVpcAssociation, input, options)
end

function C:deleteLocalGatewayVirtualInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLocalGatewayVirtualInterface, input, options)
end

function C:deleteLocalGatewayVirtualInterfaceGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLocalGatewayVirtualInterfaceGroup, input, options)
end

function C:deleteManagedPrefixList(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteManagedPrefixList, input, options)
end

function C:deleteNatGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNatGateway, input, options)
end

function C:deleteNetworkAcl(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNetworkAcl, input, options)
end

function C:deleteNetworkAclEntry(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNetworkAclEntry, input, options)
end

function C:deleteNetworkInsightsAccessScope(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNetworkInsightsAccessScope, input, options)
end

function C:deleteNetworkInsightsAccessScopeAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNetworkInsightsAccessScopeAnalysis, input, options)
end

function C:deleteNetworkInsightsAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNetworkInsightsAnalysis, input, options)
end

function C:deleteNetworkInsightsPath(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNetworkInsightsPath, input, options)
end

function C:deleteNetworkInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNetworkInterface, input, options)
end

function C:deleteNetworkInterfacePermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNetworkInterfacePermission, input, options)
end

function C:deletePlacementGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePlacementGroup, input, options)
end

function C:deletePublicIpv4Pool(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePublicIpv4Pool, input, options)
end

function C:deleteQueuedReservedInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteQueuedReservedInstances, input, options)
end

function C:deleteRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRoute, input, options)
end

function C:deleteRouteServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRouteServer, input, options)
end

function C:deleteRouteServerEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRouteServerEndpoint, input, options)
end

function C:deleteRouteServerPeer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRouteServerPeer, input, options)
end

function C:deleteRouteTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRouteTable, input, options)
end

function C:deleteSecondaryNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSecondaryNetwork, input, options)
end

function C:deleteSecondarySubnet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSecondarySubnet, input, options)
end

function C:deleteSecurityGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSecurityGroup, input, options)
end

function C:deleteSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSnapshot, input, options)
end

function C:deleteSpotDatafeedSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSpotDatafeedSubscription, input, options)
end

function C:deleteSubnet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSubnet, input, options)
end

function C:deleteSubnetCidrReservation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSubnetCidrReservation, input, options)
end

function C:deleteTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTags, input, options)
end

function C:deleteTrafficMirrorFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTrafficMirrorFilter, input, options)
end

function C:deleteTrafficMirrorFilterRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTrafficMirrorFilterRule, input, options)
end

function C:deleteTrafficMirrorSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTrafficMirrorSession, input, options)
end

function C:deleteTrafficMirrorTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTrafficMirrorTarget, input, options)
end

function C:deleteTransitGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTransitGateway, input, options)
end

function C:deleteTransitGatewayClientVpnAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTransitGatewayClientVpnAttachment, input, options)
end

function C:deleteTransitGatewayConnect(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTransitGatewayConnect, input, options)
end

function C:deleteTransitGatewayConnectPeer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTransitGatewayConnectPeer, input, options)
end

function C:deleteTransitGatewayMeteringPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTransitGatewayMeteringPolicy, input, options)
end

function C:deleteTransitGatewayMeteringPolicyEntry(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTransitGatewayMeteringPolicyEntry, input, options)
end

function C:deleteTransitGatewayMulticastDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTransitGatewayMulticastDomain, input, options)
end

function C:deleteTransitGatewayPeeringAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTransitGatewayPeeringAttachment, input, options)
end

function C:deleteTransitGatewayPolicyTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTransitGatewayPolicyTable, input, options)
end

function C:deleteTransitGatewayPrefixListReference(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTransitGatewayPrefixListReference, input, options)
end

function C:deleteTransitGatewayRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTransitGatewayRoute, input, options)
end

function C:deleteTransitGatewayRouteTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTransitGatewayRouteTable, input, options)
end

function C:deleteTransitGatewayRouteTableAnnouncement(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTransitGatewayRouteTableAnnouncement, input, options)
end

function C:deleteTransitGatewayVpcAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTransitGatewayVpcAttachment, input, options)
end

function C:deleteVerifiedAccessEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVerifiedAccessEndpoint, input, options)
end

function C:deleteVerifiedAccessGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVerifiedAccessGroup, input, options)
end

function C:deleteVerifiedAccessInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVerifiedAccessInstance, input, options)
end

function C:deleteVerifiedAccessTrustProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVerifiedAccessTrustProvider, input, options)
end

function C:deleteVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVolume, input, options)
end

function C:deleteVpc(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVpc, input, options)
end

function C:deleteVpcBlockPublicAccessExclusion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVpcBlockPublicAccessExclusion, input, options)
end

function C:deleteVpcEncryptionControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVpcEncryptionControl, input, options)
end

function C:deleteVpcEndpointConnectionNotifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVpcEndpointConnectionNotifications, input, options)
end

function C:deleteVpcEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVpcEndpoints, input, options)
end

function C:deleteVpcEndpointServiceConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVpcEndpointServiceConfigurations, input, options)
end

function C:deleteVpcPeeringConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVpcPeeringConnection, input, options)
end

function C:deleteVpnConcentrator(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVpnConcentrator, input, options)
end

function C:deleteVpnConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVpnConnection, input, options)
end

function C:deleteVpnConnectionRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVpnConnectionRoute, input, options)
end

function C:deleteVpnGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVpnGateway, input, options)
end

function C:deprovisionByoipCidr(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeprovisionByoipCidr, input, options)
end

function C:deprovisionIpamByoasn(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeprovisionIpamByoasn, input, options)
end

function C:deprovisionIpamPoolCidr(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeprovisionIpamPoolCidr, input, options)
end

function C:deprovisionPublicIpv4PoolCidr(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeprovisionPublicIpv4PoolCidr, input, options)
end

function C:deregisterImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterImage, input, options)
end

function C:deregisterInstanceEventNotificationAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterInstanceEventNotificationAttributes, input, options)
end

function C:deregisterTransitGatewayMulticastGroupMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterTransitGatewayMulticastGroupMembers, input, options)
end

function C:deregisterTransitGatewayMulticastGroupSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterTransitGatewayMulticastGroupSources, input, options)
end

function C:describeAccountAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountAttributes, input, options)
end

function C:describeAddresses(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAddresses, input, options)
end

function C:describeAddressesAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAddressesAttribute, input, options)
end

function C:describeAddressTransfers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAddressTransfers, input, options)
end

function C:describeAggregateIdFormat(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAggregateIdFormat, input, options)
end

function C:describeAvailabilityZones(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAvailabilityZones, input, options)
end

function C:describeAwsNetworkPerformanceMetricSubscriptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAwsNetworkPerformanceMetricSubscriptions, input, options)
end

function C:describeBundleTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBundleTasks, input, options)
end

function C:describeByoipCidrs(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeByoipCidrs, input, options)
end

function C:describeCapacityBlockExtensionHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCapacityBlockExtensionHistory, input, options)
end

function C:describeCapacityBlockExtensionOfferings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCapacityBlockExtensionOfferings, input, options)
end

function C:describeCapacityBlockOfferings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCapacityBlockOfferings, input, options)
end

function C:describeCapacityBlocks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCapacityBlocks, input, options)
end

function C:describeCapacityBlockStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCapacityBlockStatus, input, options)
end

function C:describeCapacityManagerDataExports(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCapacityManagerDataExports, input, options)
end

function C:describeCapacityReservationBillingRequests(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCapacityReservationBillingRequests, input, options)
end

function C:describeCapacityReservationFleets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCapacityReservationFleets, input, options)
end

function C:describeCapacityReservations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCapacityReservations, input, options)
end

function C:describeCapacityReservationTopology(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCapacityReservationTopology, input, options)
end

function C:describeCarrierGateways(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCarrierGateways, input, options)
end

function C:describeClassicLinkInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClassicLinkInstances, input, options)
end

function C:describeClientVpnAuthorizationRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClientVpnAuthorizationRules, input, options)
end

function C:describeClientVpnConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClientVpnConnections, input, options)
end

function C:describeClientVpnEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClientVpnEndpoints, input, options)
end

function C:describeClientVpnRoutes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClientVpnRoutes, input, options)
end

function C:describeClientVpnTargetNetworks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClientVpnTargetNetworks, input, options)
end

function C:describeCoipPools(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCoipPools, input, options)
end

function C:describeConversionTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConversionTasks, input, options)
end

function C:describeCustomerGateways(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCustomerGateways, input, options)
end

function C:describeDeclarativePoliciesReports(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDeclarativePoliciesReports, input, options)
end

function C:describeDhcpOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDhcpOptions, input, options)
end

function C:describeEgressOnlyInternetGateways(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEgressOnlyInternetGateways, input, options)
end

function C:describeElasticGpus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeElasticGpus, input, options)
end

function C:describeExportImageTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeExportImageTasks, input, options)
end

function C:describeExportTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeExportTasks, input, options)
end

function C:describeFastLaunchImages(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFastLaunchImages, input, options)
end

function C:describeFastSnapshotRestores(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFastSnapshotRestores, input, options)
end

function C:describeFleetHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFleetHistory, input, options)
end

function C:describeFleetInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFleetInstances, input, options)
end

function C:describeFleets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFleets, input, options)
end

function C:describeFlowLogs(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFlowLogs, input, options)
end

function C:describeFpgaImageAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFpgaImageAttribute, input, options)
end

function C:describeFpgaImages(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFpgaImages, input, options)
end

function C:describeHostReservationOfferings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeHostReservationOfferings, input, options)
end

function C:describeHostReservations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeHostReservations, input, options)
end

function C:describeHosts(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeHosts, input, options)
end

function C:describeIamInstanceProfileAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIamInstanceProfileAssociations, input, options)
end

function C:describeIdentityIdFormat(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIdentityIdFormat, input, options)
end

function C:describeIdFormat(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIdFormat, input, options)
end

function C:describeImageAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImageAttribute, input, options)
end

function C:describeImageReferences(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImageReferences, input, options)
end

function C:describeImages(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImages, input, options)
end

function C:describeImageUsageReportEntries(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImageUsageReportEntries, input, options)
end

function C:describeImageUsageReports(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImageUsageReports, input, options)
end

function C:describeImportImageTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImportImageTasks, input, options)
end

function C:describeImportSnapshotTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImportSnapshotTasks, input, options)
end

function C:describeInstanceAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstanceAttribute, input, options)
end

function C:describeInstanceConnectEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstanceConnectEndpoints, input, options)
end

function C:describeInstanceCreditSpecifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstanceCreditSpecifications, input, options)
end

function C:describeInstanceEventNotificationAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstanceEventNotificationAttributes, input, options)
end

function C:describeInstanceEventWindows(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstanceEventWindows, input, options)
end

function C:describeInstanceImageMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstanceImageMetadata, input, options)
end

function C:describeInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstances, input, options)
end

function C:describeInstanceSqlHaHistoryStates(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstanceSqlHaHistoryStates, input, options)
end

function C:describeInstanceSqlHaStates(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstanceSqlHaStates, input, options)
end

function C:describeInstanceStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstanceStatus, input, options)
end

function C:describeInstanceTopology(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstanceTopology, input, options)
end

function C:describeInstanceTypeOfferings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstanceTypeOfferings, input, options)
end

function C:describeInstanceTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstanceTypes, input, options)
end

function C:describeInternetGateways(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInternetGateways, input, options)
end

function C:describeIpamByoasn(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIpamByoasn, input, options)
end

function C:describeIpamExternalResourceVerificationTokens(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIpamExternalResourceVerificationTokens, input, options)
end

function C:describeIpamPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIpamPolicies, input, options)
end

function C:describeIpamPools(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIpamPools, input, options)
end

function C:describeIpamPrefixListResolvers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIpamPrefixListResolvers, input, options)
end

function C:describeIpamPrefixListResolverTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIpamPrefixListResolverTargets, input, options)
end

function C:describeIpamResourceDiscoveries(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIpamResourceDiscoveries, input, options)
end

function C:describeIpamResourceDiscoveryAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIpamResourceDiscoveryAssociations, input, options)
end

function C:describeIpams(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIpams, input, options)
end

function C:describeIpamScopes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIpamScopes, input, options)
end

function C:describeIpv6Pools(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIpv6Pools, input, options)
end

function C:describeKeyPairs(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeKeyPairs, input, options)
end

function C:describeLaunchTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLaunchTemplates, input, options)
end

function C:describeLaunchTemplateVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLaunchTemplateVersions, input, options)
end

function C:describeLocalGatewayRouteTables(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLocalGatewayRouteTables, input, options)
end

function C:describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations, input, options)
end

function C:describeLocalGatewayRouteTableVpcAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLocalGatewayRouteTableVpcAssociations, input, options)
end

function C:describeLocalGateways(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLocalGateways, input, options)
end

function C:describeLocalGatewayVirtualInterfaceGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLocalGatewayVirtualInterfaceGroups, input, options)
end

function C:describeLocalGatewayVirtualInterfaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLocalGatewayVirtualInterfaces, input, options)
end

function C:describeLockedSnapshots(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLockedSnapshots, input, options)
end

function C:describeMacHosts(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMacHosts, input, options)
end

function C:describeMacModificationTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMacModificationTasks, input, options)
end

function C:describeManagedPrefixLists(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeManagedPrefixLists, input, options)
end

function C:describeMovingAddresses(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMovingAddresses, input, options)
end

function C:describeNatGateways(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNatGateways, input, options)
end

function C:describeNetworkAcls(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNetworkAcls, input, options)
end

function C:describeNetworkInsightsAccessScopeAnalyses(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNetworkInsightsAccessScopeAnalyses, input, options)
end

function C:describeNetworkInsightsAccessScopes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNetworkInsightsAccessScopes, input, options)
end

function C:describeNetworkInsightsAnalyses(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNetworkInsightsAnalyses, input, options)
end

function C:describeNetworkInsightsPaths(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNetworkInsightsPaths, input, options)
end

function C:describeNetworkInterfaceAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNetworkInterfaceAttribute, input, options)
end

function C:describeNetworkInterfacePermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNetworkInterfacePermissions, input, options)
end

function C:describeNetworkInterfaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNetworkInterfaces, input, options)
end

function C:describeOutpostLags(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOutpostLags, input, options)
end

function C:describePlacementGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePlacementGroups, input, options)
end

function C:describePrefixLists(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePrefixLists, input, options)
end

function C:describePrincipalIdFormat(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePrincipalIdFormat, input, options)
end

function C:describePublicIpv4Pools(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePublicIpv4Pools, input, options)
end

function C:describeRegions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRegions, input, options)
end

function C:describeReplaceRootVolumeTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReplaceRootVolumeTasks, input, options)
end

function C:describeReservedInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReservedInstances, input, options)
end

function C:describeReservedInstancesListings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReservedInstancesListings, input, options)
end

function C:describeReservedInstancesModifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReservedInstancesModifications, input, options)
end

function C:describeReservedInstancesOfferings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReservedInstancesOfferings, input, options)
end

function C:describeRouteServerEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRouteServerEndpoints, input, options)
end

function C:describeRouteServerPeers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRouteServerPeers, input, options)
end

function C:describeRouteServers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRouteServers, input, options)
end

function C:describeRouteTables(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRouteTables, input, options)
end

function C:describeScheduledInstanceAvailability(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeScheduledInstanceAvailability, input, options)
end

function C:describeScheduledInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeScheduledInstances, input, options)
end

function C:describeSecondaryInterfaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSecondaryInterfaces, input, options)
end

function C:describeSecondaryNetworks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSecondaryNetworks, input, options)
end

function C:describeSecondarySubnets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSecondarySubnets, input, options)
end

function C:describeSecurityGroupReferences(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSecurityGroupReferences, input, options)
end

function C:describeSecurityGroupRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSecurityGroupRules, input, options)
end

function C:describeSecurityGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSecurityGroups, input, options)
end

function C:describeSecurityGroupVpcAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSecurityGroupVpcAssociations, input, options)
end

function C:describeServiceLinkVirtualInterfaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeServiceLinkVirtualInterfaces, input, options)
end

function C:describeSnapshotAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSnapshotAttribute, input, options)
end

function C:describeSnapshots(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSnapshots, input, options)
end

function C:describeSnapshotTierStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSnapshotTierStatus, input, options)
end

function C:describeSpotDatafeedSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSpotDatafeedSubscription, input, options)
end

function C:describeSpotFleetInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSpotFleetInstances, input, options)
end

function C:describeSpotFleetRequestHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSpotFleetRequestHistory, input, options)
end

function C:describeSpotFleetRequests(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSpotFleetRequests, input, options)
end

function C:describeSpotInstanceRequests(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSpotInstanceRequests, input, options)
end

function C:describeSpotPriceHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSpotPriceHistory, input, options)
end

function C:describeStaleSecurityGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStaleSecurityGroups, input, options)
end

function C:describeStoreImageTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStoreImageTasks, input, options)
end

function C:describeSubnets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSubnets, input, options)
end

function C:describeTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTags, input, options)
end

function C:describeTrafficMirrorFilterRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTrafficMirrorFilterRules, input, options)
end

function C:describeTrafficMirrorFilters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTrafficMirrorFilters, input, options)
end

function C:describeTrafficMirrorSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTrafficMirrorSessions, input, options)
end

function C:describeTrafficMirrorTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTrafficMirrorTargets, input, options)
end

function C:describeTransitGatewayAttachments(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTransitGatewayAttachments, input, options)
end

function C:describeTransitGatewayConnectPeers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTransitGatewayConnectPeers, input, options)
end

function C:describeTransitGatewayConnects(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTransitGatewayConnects, input, options)
end

function C:describeTransitGatewayMeteringPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTransitGatewayMeteringPolicies, input, options)
end

function C:describeTransitGatewayMulticastDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTransitGatewayMulticastDomains, input, options)
end

function C:describeTransitGatewayPeeringAttachments(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTransitGatewayPeeringAttachments, input, options)
end

function C:describeTransitGatewayPolicyTables(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTransitGatewayPolicyTables, input, options)
end

function C:describeTransitGatewayRouteTableAnnouncements(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTransitGatewayRouteTableAnnouncements, input, options)
end

function C:describeTransitGatewayRouteTables(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTransitGatewayRouteTables, input, options)
end

function C:describeTransitGateways(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTransitGateways, input, options)
end

function C:describeTransitGatewayVpcAttachments(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTransitGatewayVpcAttachments, input, options)
end

function C:describeTrunkInterfaceAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTrunkInterfaceAssociations, input, options)
end

function C:describeVerifiedAccessEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVerifiedAccessEndpoints, input, options)
end

function C:describeVerifiedAccessGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVerifiedAccessGroups, input, options)
end

function C:describeVerifiedAccessInstanceLoggingConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVerifiedAccessInstanceLoggingConfigurations, input, options)
end

function C:describeVerifiedAccessInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVerifiedAccessInstances, input, options)
end

function C:describeVerifiedAccessTrustProviders(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVerifiedAccessTrustProviders, input, options)
end

function C:describeVolumeAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVolumeAttribute, input, options)
end

function C:describeVolumes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVolumes, input, options)
end

function C:describeVolumesModifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVolumesModifications, input, options)
end

function C:describeVolumeStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVolumeStatus, input, options)
end

function C:describeVpcAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpcAttribute, input, options)
end

function C:describeVpcBlockPublicAccessExclusions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpcBlockPublicAccessExclusions, input, options)
end

function C:describeVpcBlockPublicAccessOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpcBlockPublicAccessOptions, input, options)
end

function C:describeVpcClassicLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpcClassicLink, input, options)
end

function C:describeVpcClassicLinkDnsSupport(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpcClassicLinkDnsSupport, input, options)
end

function C:describeVpcEncryptionControls(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpcEncryptionControls, input, options)
end

function C:describeVpcEndpointAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpcEndpointAssociations, input, options)
end

function C:describeVpcEndpointConnectionNotifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpcEndpointConnectionNotifications, input, options)
end

function C:describeVpcEndpointConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpcEndpointConnections, input, options)
end

function C:describeVpcEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpcEndpoints, input, options)
end

function C:describeVpcEndpointServiceConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpcEndpointServiceConfigurations, input, options)
end

function C:describeVpcEndpointServicePermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpcEndpointServicePermissions, input, options)
end

function C:describeVpcEndpointServices(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpcEndpointServices, input, options)
end

function C:describeVpcPeeringConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpcPeeringConnections, input, options)
end

function C:describeVpcs(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpcs, input, options)
end

function C:describeVpnConcentrators(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpnConcentrators, input, options)
end

function C:describeVpnConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpnConnections, input, options)
end

function C:describeVpnGateways(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVpnGateways, input, options)
end

function C:detachClassicLinkVpc(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachClassicLinkVpc, input, options)
end

function C:detachInternetGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachInternetGateway, input, options)
end

function C:detachNetworkInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachNetworkInterface, input, options)
end

function C:detachVerifiedAccessTrustProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachVerifiedAccessTrustProvider, input, options)
end

function C:detachVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachVolume, input, options)
end

function C:detachVpnGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachVpnGateway, input, options)
end

function C:disableAddressTransfer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableAddressTransfer, input, options)
end

function C:disableAllowedImagesSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableAllowedImagesSettings, input, options)
end

function C:disableAwsNetworkPerformanceMetricSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableAwsNetworkPerformanceMetricSubscription, input, options)
end

function C:disableCapacityManager(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableCapacityManager, input, options)
end

function C:disableEbsEncryptionByDefault(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableEbsEncryptionByDefault, input, options)
end

function C:disableFastLaunch(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableFastLaunch, input, options)
end

function C:disableFastSnapshotRestores(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableFastSnapshotRestores, input, options)
end

function C:disableImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableImage, input, options)
end

function C:disableImageBlockPublicAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableImageBlockPublicAccess, input, options)
end

function C:disableImageDeprecation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableImageDeprecation, input, options)
end

function C:disableImageDeregistrationProtection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableImageDeregistrationProtection, input, options)
end

function C:disableInstanceSqlHaStandbyDetections(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableInstanceSqlHaStandbyDetections, input, options)
end

function C:disableIpamOrganizationAdminAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableIpamOrganizationAdminAccount, input, options)
end

function C:disableIpamPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableIpamPolicy, input, options)
end

function C:disableRouteServerPropagation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableRouteServerPropagation, input, options)
end

function C:disableSerialConsoleAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableSerialConsoleAccess, input, options)
end

function C:disableSnapshotBlockPublicAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableSnapshotBlockPublicAccess, input, options)
end

function C:disableTransitGatewayRouteTablePropagation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableTransitGatewayRouteTablePropagation, input, options)
end

function C:disableVgwRoutePropagation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableVgwRoutePropagation, input, options)
end

function C:disableVpcClassicLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableVpcClassicLink, input, options)
end

function C:disableVpcClassicLinkDnsSupport(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableVpcClassicLinkDnsSupport, input, options)
end

function C:disassociateAddress(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateAddress, input, options)
end

function C:disassociateCapacityReservationBillingOwner(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateCapacityReservationBillingOwner, input, options)
end

function C:disassociateClientVpnTargetNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateClientVpnTargetNetwork, input, options)
end

function C:disassociateEnclaveCertificateIamRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateEnclaveCertificateIamRole, input, options)
end

function C:disassociateIamInstanceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateIamInstanceProfile, input, options)
end

function C:disassociateInstanceEventWindow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateInstanceEventWindow, input, options)
end

function C:disassociateIpamByoasn(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateIpamByoasn, input, options)
end

function C:disassociateIpamResourceDiscovery(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateIpamResourceDiscovery, input, options)
end

function C:disassociateNatGatewayAddress(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateNatGatewayAddress, input, options)
end

function C:disassociateRouteServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateRouteServer, input, options)
end

function C:disassociateRouteTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateRouteTable, input, options)
end

function C:disassociateSecurityGroupVpc(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateSecurityGroupVpc, input, options)
end

function C:disassociateSubnetCidrBlock(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateSubnetCidrBlock, input, options)
end

function C:disassociateTransitGatewayMulticastDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateTransitGatewayMulticastDomain, input, options)
end

function C:disassociateTransitGatewayPolicyTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateTransitGatewayPolicyTable, input, options)
end

function C:disassociateTransitGatewayRouteTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateTransitGatewayRouteTable, input, options)
end

function C:disassociateTrunkInterface(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateTrunkInterface, input, options)
end

function C:disassociateVpcCidrBlock(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateVpcCidrBlock, input, options)
end

function C:enableAddressTransfer(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableAddressTransfer, input, options)
end

function C:enableAllowedImagesSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableAllowedImagesSettings, input, options)
end

function C:enableAwsNetworkPerformanceMetricSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableAwsNetworkPerformanceMetricSubscription, input, options)
end

function C:enableCapacityManager(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableCapacityManager, input, options)
end

function C:enableEbsEncryptionByDefault(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableEbsEncryptionByDefault, input, options)
end

function C:enableFastLaunch(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableFastLaunch, input, options)
end

function C:enableFastSnapshotRestores(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableFastSnapshotRestores, input, options)
end

function C:enableImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableImage, input, options)
end

function C:enableImageBlockPublicAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableImageBlockPublicAccess, input, options)
end

function C:enableImageDeprecation(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableImageDeprecation, input, options)
end

function C:enableImageDeregistrationProtection(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableImageDeregistrationProtection, input, options)
end

function C:enableInstanceSqlHaStandbyDetections(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableInstanceSqlHaStandbyDetections, input, options)
end

function C:enableIpamOrganizationAdminAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableIpamOrganizationAdminAccount, input, options)
end

function C:enableIpamPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableIpamPolicy, input, options)
end

function C:enableReachabilityAnalyzerOrganizationSharing(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableReachabilityAnalyzerOrganizationSharing, input, options)
end

function C:enableRouteServerPropagation(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableRouteServerPropagation, input, options)
end

function C:enableSerialConsoleAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableSerialConsoleAccess, input, options)
end

function C:enableSnapshotBlockPublicAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableSnapshotBlockPublicAccess, input, options)
end

function C:enableTransitGatewayRouteTablePropagation(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableTransitGatewayRouteTablePropagation, input, options)
end

function C:enableVgwRoutePropagation(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableVgwRoutePropagation, input, options)
end

function C:enableVolumeIO(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableVolumeIO, input, options)
end

function C:enableVpcClassicLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableVpcClassicLink, input, options)
end

function C:enableVpcClassicLinkDnsSupport(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableVpcClassicLinkDnsSupport, input, options)
end

function C:exportClientVpnClientCertificateRevocationList(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportClientVpnClientCertificateRevocationList, input, options)
end

function C:exportClientVpnClientConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportClientVpnClientConfiguration, input, options)
end

function C:exportImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportImage, input, options)
end

function C:exportTransitGatewayRoutes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportTransitGatewayRoutes, input, options)
end

function C:exportVerifiedAccessInstanceClientConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportVerifiedAccessInstanceClientConfiguration, input, options)
end

function C:getActiveVpnTunnelStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetActiveVpnTunnelStatus, input, options)
end

function C:getAllowedImagesSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAllowedImagesSettings, input, options)
end

function C:getAssociatedEnclaveCertificateIamRoles(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAssociatedEnclaveCertificateIamRoles, input, options)
end

function C:getAssociatedIpv6PoolCidrs(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAssociatedIpv6PoolCidrs, input, options)
end

function C:getAwsNetworkPerformanceData(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAwsNetworkPerformanceData, input, options)
end

function C:getCapacityManagerAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCapacityManagerAttributes, input, options)
end

function C:getCapacityManagerMetricData(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCapacityManagerMetricData, input, options)
end

function C:getCapacityManagerMetricDimensions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCapacityManagerMetricDimensions, input, options)
end

function C:getCapacityManagerMonitoredTagKeys(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCapacityManagerMonitoredTagKeys, input, options)
end

function C:getCapacityReservationUsage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCapacityReservationUsage, input, options)
end

function C:getCoipPoolUsage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCoipPoolUsage, input, options)
end

function C:getConsoleOutput(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConsoleOutput, input, options)
end

function C:getConsoleScreenshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConsoleScreenshot, input, options)
end

function C:getDeclarativePoliciesReportSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeclarativePoliciesReportSummary, input, options)
end

function C:getDefaultCreditSpecification(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDefaultCreditSpecification, input, options)
end

function C:getEbsDefaultKmsKeyId(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEbsDefaultKmsKeyId, input, options)
end

function C:getEbsEncryptionByDefault(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEbsEncryptionByDefault, input, options)
end

function C:getEnabledIpamPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEnabledIpamPolicy, input, options)
end

function C:getFlowLogsIntegrationTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFlowLogsIntegrationTemplate, input, options)
end

function C:getGroupsForCapacityReservation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGroupsForCapacityReservation, input, options)
end

function C:getHostReservationPurchasePreview(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetHostReservationPurchasePreview, input, options)
end

function C:getImageAncestry(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetImageAncestry, input, options)
end

function C:getImageBlockPublicAccessState(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetImageBlockPublicAccessState, input, options)
end

function C:getInstanceMetadataDefaults(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInstanceMetadataDefaults, input, options)
end

function C:getInstanceTpmEkPub(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInstanceTpmEkPub, input, options)
end

function C:getInstanceTypesFromInstanceRequirements(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInstanceTypesFromInstanceRequirements, input, options)
end

function C:getInstanceUefiData(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInstanceUefiData, input, options)
end

function C:getIpamAddressHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIpamAddressHistory, input, options)
end

function C:getIpamDiscoveredAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIpamDiscoveredAccounts, input, options)
end

function C:getIpamDiscoveredPublicAddresses(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIpamDiscoveredPublicAddresses, input, options)
end

function C:getIpamDiscoveredResourceCidrs(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIpamDiscoveredResourceCidrs, input, options)
end

function C:getIpamPolicyAllocationRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIpamPolicyAllocationRules, input, options)
end

function C:getIpamPolicyOrganizationTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIpamPolicyOrganizationTargets, input, options)
end

function C:getIpamPoolAllocations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIpamPoolAllocations, input, options)
end

function C:getIpamPoolCidrs(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIpamPoolCidrs, input, options)
end

function C:getIpamPrefixListResolverRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIpamPrefixListResolverRules, input, options)
end

function C:getIpamPrefixListResolverVersionEntries(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIpamPrefixListResolverVersionEntries, input, options)
end

function C:getIpamPrefixListResolverVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIpamPrefixListResolverVersions, input, options)
end

function C:getIpamResourceCidrs(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIpamResourceCidrs, input, options)
end

function C:getLaunchTemplateData(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLaunchTemplateData, input, options)
end

function C:getManagedPrefixListAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetManagedPrefixListAssociations, input, options)
end

function C:getManagedPrefixListEntries(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetManagedPrefixListEntries, input, options)
end

function C:getManagedResourceVisibility(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetManagedResourceVisibility, input, options)
end

function C:getNetworkInsightsAccessScopeAnalysisFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNetworkInsightsAccessScopeAnalysisFindings, input, options)
end

function C:getNetworkInsightsAccessScopeContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNetworkInsightsAccessScopeContent, input, options)
end

function C:getPasswordData(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPasswordData, input, options)
end

function C:getReservedInstancesExchangeQuote(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReservedInstancesExchangeQuote, input, options)
end

function C:getRouteServerAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRouteServerAssociations, input, options)
end

function C:getRouteServerPropagations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRouteServerPropagations, input, options)
end

function C:getRouteServerRoutingDatabase(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRouteServerRoutingDatabase, input, options)
end

function C:getSecurityGroupsForVpc(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSecurityGroupsForVpc, input, options)
end

function C:getSerialConsoleAccessStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSerialConsoleAccessStatus, input, options)
end

function C:getSnapshotBlockPublicAccessState(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSnapshotBlockPublicAccessState, input, options)
end

function C:getSpotPlacementScores(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSpotPlacementScores, input, options)
end

function C:getSubnetCidrReservations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSubnetCidrReservations, input, options)
end

function C:getTransitGatewayAttachmentPropagations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTransitGatewayAttachmentPropagations, input, options)
end

function C:getTransitGatewayMeteringPolicyEntries(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTransitGatewayMeteringPolicyEntries, input, options)
end

function C:getTransitGatewayMulticastDomainAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTransitGatewayMulticastDomainAssociations, input, options)
end

function C:getTransitGatewayPolicyTableAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTransitGatewayPolicyTableAssociations, input, options)
end

function C:getTransitGatewayPolicyTableEntries(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTransitGatewayPolicyTableEntries, input, options)
end

function C:getTransitGatewayPrefixListReferences(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTransitGatewayPrefixListReferences, input, options)
end

function C:getTransitGatewayRouteTableAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTransitGatewayRouteTableAssociations, input, options)
end

function C:getTransitGatewayRouteTablePropagations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTransitGatewayRouteTablePropagations, input, options)
end

function C:getVerifiedAccessEndpointPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVerifiedAccessEndpointPolicy, input, options)
end

function C:getVerifiedAccessEndpointTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVerifiedAccessEndpointTargets, input, options)
end

function C:getVerifiedAccessGroupPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVerifiedAccessGroupPolicy, input, options)
end

function C:getVpcResourcesBlockingEncryptionEnforcement(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVpcResourcesBlockingEncryptionEnforcement, input, options)
end

function C:getVpnConnectionDeviceSampleConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVpnConnectionDeviceSampleConfiguration, input, options)
end

function C:getVpnConnectionDeviceTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVpnConnectionDeviceTypes, input, options)
end

function C:getVpnTunnelReplacementStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVpnTunnelReplacementStatus, input, options)
end

function C:importClientVpnClientCertificateRevocationList(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportClientVpnClientCertificateRevocationList, input, options)
end

function C:importImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportImage, input, options)
end

function C:importInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportInstance, input, options)
end

function C:importKeyPair(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportKeyPair, input, options)
end

function C:importSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportSnapshot, input, options)
end

function C:importVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportVolume, input, options)
end

function C:listImagesInRecycleBin(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImagesInRecycleBin, input, options)
end

function C:listSnapshotsInRecycleBin(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSnapshotsInRecycleBin, input, options)
end

function C:listVolumesInRecycleBin(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVolumesInRecycleBin, input, options)
end

function C:lockSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.LockSnapshot, input, options)
end

function C:modifyAddressAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyAddressAttribute, input, options)
end

function C:modifyAvailabilityZoneGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyAvailabilityZoneGroup, input, options)
end

function C:modifyCapacityReservation(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyCapacityReservation, input, options)
end

function C:modifyCapacityReservationFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyCapacityReservationFleet, input, options)
end

function C:modifyClientVpnEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyClientVpnEndpoint, input, options)
end

function C:modifyDefaultCreditSpecification(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyDefaultCreditSpecification, input, options)
end

function C:modifyEbsDefaultKmsKeyId(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyEbsDefaultKmsKeyId, input, options)
end

function C:modifyFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyFleet, input, options)
end

function C:modifyFpgaImageAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyFpgaImageAttribute, input, options)
end

function C:modifyHosts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyHosts, input, options)
end

function C:modifyIdentityIdFormat(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyIdentityIdFormat, input, options)
end

function C:modifyIdFormat(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyIdFormat, input, options)
end

function C:modifyImageAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyImageAttribute, input, options)
end

function C:modifyInstanceAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyInstanceAttribute, input, options)
end

function C:modifyInstanceCapacityReservationAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyInstanceCapacityReservationAttributes, input, options)
end

function C:modifyInstanceConnectEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyInstanceConnectEndpoint, input, options)
end

function C:modifyInstanceCpuOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyInstanceCpuOptions, input, options)
end

function C:modifyInstanceCreditSpecification(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyInstanceCreditSpecification, input, options)
end

function C:modifyInstanceEventStartTime(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyInstanceEventStartTime, input, options)
end

function C:modifyInstanceEventWindow(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyInstanceEventWindow, input, options)
end

function C:modifyInstanceMaintenanceOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyInstanceMaintenanceOptions, input, options)
end

function C:modifyInstanceMetadataDefaults(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyInstanceMetadataDefaults, input, options)
end

function C:modifyInstanceMetadataOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyInstanceMetadataOptions, input, options)
end

function C:modifyInstanceNetworkPerformanceOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyInstanceNetworkPerformanceOptions, input, options)
end

function C:modifyInstancePlacement(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyInstancePlacement, input, options)
end

function C:modifyIpam(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyIpam, input, options)
end

function C:modifyIpamPolicyAllocationRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyIpamPolicyAllocationRules, input, options)
end

function C:modifyIpamPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyIpamPool, input, options)
end

function C:modifyIpamPrefixListResolver(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyIpamPrefixListResolver, input, options)
end

function C:modifyIpamPrefixListResolverTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyIpamPrefixListResolverTarget, input, options)
end

function C:modifyIpamResourceCidr(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyIpamResourceCidr, input, options)
end

function C:modifyIpamResourceDiscovery(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyIpamResourceDiscovery, input, options)
end

function C:modifyIpamScope(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyIpamScope, input, options)
end

function C:modifyLaunchTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyLaunchTemplate, input, options)
end

function C:modifyLocalGatewayRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyLocalGatewayRoute, input, options)
end

function C:modifyManagedPrefixList(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyManagedPrefixList, input, options)
end

function C:modifyManagedResourceVisibility(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyManagedResourceVisibility, input, options)
end

function C:modifyNetworkInterfaceAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyNetworkInterfaceAttribute, input, options)
end

function C:modifyPrivateDnsNameOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyPrivateDnsNameOptions, input, options)
end

function C:modifyPublicIpDnsNameOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyPublicIpDnsNameOptions, input, options)
end

function C:modifyReservedInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyReservedInstances, input, options)
end

function C:modifyRouteServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyRouteServer, input, options)
end

function C:modifySecurityGroupRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifySecurityGroupRules, input, options)
end

function C:modifySnapshotAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifySnapshotAttribute, input, options)
end

function C:modifySnapshotTier(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifySnapshotTier, input, options)
end

function C:modifySpotFleetRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifySpotFleetRequest, input, options)
end

function C:modifySubnetAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifySubnetAttribute, input, options)
end

function C:modifyTrafficMirrorFilterNetworkServices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyTrafficMirrorFilterNetworkServices, input, options)
end

function C:modifyTrafficMirrorFilterRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyTrafficMirrorFilterRule, input, options)
end

function C:modifyTrafficMirrorSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyTrafficMirrorSession, input, options)
end

function C:modifyTransitGateway(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyTransitGateway, input, options)
end

function C:modifyTransitGatewayMeteringPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyTransitGatewayMeteringPolicy, input, options)
end

function C:modifyTransitGatewayPrefixListReference(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyTransitGatewayPrefixListReference, input, options)
end

function C:modifyTransitGatewayVpcAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyTransitGatewayVpcAttachment, input, options)
end

function C:modifyVerifiedAccessEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVerifiedAccessEndpoint, input, options)
end

function C:modifyVerifiedAccessEndpointPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVerifiedAccessEndpointPolicy, input, options)
end

function C:modifyVerifiedAccessGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVerifiedAccessGroup, input, options)
end

function C:modifyVerifiedAccessGroupPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVerifiedAccessGroupPolicy, input, options)
end

function C:modifyVerifiedAccessInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVerifiedAccessInstance, input, options)
end

function C:modifyVerifiedAccessInstanceLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVerifiedAccessInstanceLoggingConfiguration, input, options)
end

function C:modifyVerifiedAccessTrustProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVerifiedAccessTrustProvider, input, options)
end

function C:modifyVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVolume, input, options)
end

function C:modifyVolumeAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVolumeAttribute, input, options)
end

function C:modifyVpcAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVpcAttribute, input, options)
end

function C:modifyVpcBlockPublicAccessExclusion(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVpcBlockPublicAccessExclusion, input, options)
end

function C:modifyVpcBlockPublicAccessOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVpcBlockPublicAccessOptions, input, options)
end

function C:modifyVpcEncryptionControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVpcEncryptionControl, input, options)
end

function C:modifyVpcEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVpcEndpoint, input, options)
end

function C:modifyVpcEndpointConnectionNotification(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVpcEndpointConnectionNotification, input, options)
end

function C:modifyVpcEndpointServiceConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVpcEndpointServiceConfiguration, input, options)
end

function C:modifyVpcEndpointServicePayerResponsibility(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVpcEndpointServicePayerResponsibility, input, options)
end

function C:modifyVpcEndpointServicePermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVpcEndpointServicePermissions, input, options)
end

function C:modifyVpcPeeringConnectionOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVpcPeeringConnectionOptions, input, options)
end

function C:modifyVpcTenancy(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVpcTenancy, input, options)
end

function C:modifyVpnConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVpnConnection, input, options)
end

function C:modifyVpnConnectionOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVpnConnectionOptions, input, options)
end

function C:modifyVpnTunnelCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVpnTunnelCertificate, input, options)
end

function C:modifyVpnTunnelOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyVpnTunnelOptions, input, options)
end

function C:monitorInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.MonitorInstances, input, options)
end

function C:moveAddressToVpc(input, options)
   return self:invokeOperation(schemas.Service, schemas.MoveAddressToVpc, input, options)
end

function C:moveByoipCidrToIpam(input, options)
   return self:invokeOperation(schemas.Service, schemas.MoveByoipCidrToIpam, input, options)
end

function C:moveCapacityReservationInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.MoveCapacityReservationInstances, input, options)
end

function C:provisionByoipCidr(input, options)
   return self:invokeOperation(schemas.Service, schemas.ProvisionByoipCidr, input, options)
end

function C:provisionIpamByoasn(input, options)
   return self:invokeOperation(schemas.Service, schemas.ProvisionIpamByoasn, input, options)
end

function C:provisionIpamPoolCidr(input, options)
   return self:invokeOperation(schemas.Service, schemas.ProvisionIpamPoolCidr, input, options)
end

function C:provisionPublicIpv4PoolCidr(input, options)
   return self:invokeOperation(schemas.Service, schemas.ProvisionPublicIpv4PoolCidr, input, options)
end

function C:purchaseCapacityBlock(input, options)
   return self:invokeOperation(schemas.Service, schemas.PurchaseCapacityBlock, input, options)
end

function C:purchaseCapacityBlockExtension(input, options)
   return self:invokeOperation(schemas.Service, schemas.PurchaseCapacityBlockExtension, input, options)
end

function C:purchaseHostReservation(input, options)
   return self:invokeOperation(schemas.Service, schemas.PurchaseHostReservation, input, options)
end

function C:purchaseReservedInstancesOffering(input, options)
   return self:invokeOperation(schemas.Service, schemas.PurchaseReservedInstancesOffering, input, options)
end

function C:purchaseScheduledInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.PurchaseScheduledInstances, input, options)
end

function C:rebootInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.RebootInstances, input, options)
end

function C:registerImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterImage, input, options)
end

function C:registerInstanceEventNotificationAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterInstanceEventNotificationAttributes, input, options)
end

function C:registerTransitGatewayMulticastGroupMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterTransitGatewayMulticastGroupMembers, input, options)
end

function C:registerTransitGatewayMulticastGroupSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterTransitGatewayMulticastGroupSources, input, options)
end

function C:rejectCapacityReservationBillingOwnership(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectCapacityReservationBillingOwnership, input, options)
end

function C:rejectTransitGatewayClientVpnAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectTransitGatewayClientVpnAttachment, input, options)
end

function C:rejectTransitGatewayMulticastDomainAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectTransitGatewayMulticastDomainAssociations, input, options)
end

function C:rejectTransitGatewayPeeringAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectTransitGatewayPeeringAttachment, input, options)
end

function C:rejectTransitGatewayVpcAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectTransitGatewayVpcAttachment, input, options)
end

function C:rejectVpcEndpointConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectVpcEndpointConnections, input, options)
end

function C:rejectVpcPeeringConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectVpcPeeringConnection, input, options)
end

function C:releaseAddress(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReleaseAddress, input, options)
end

function C:releaseHosts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReleaseHosts, input, options)
end

function C:releaseIpamPoolAllocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReleaseIpamPoolAllocation, input, options)
end

function C:replaceIamInstanceProfileAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReplaceIamInstanceProfileAssociation, input, options)
end

function C:replaceImageCriteriaInAllowedImagesSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReplaceImageCriteriaInAllowedImagesSettings, input, options)
end

function C:replaceNetworkAclAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReplaceNetworkAclAssociation, input, options)
end

function C:replaceNetworkAclEntry(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReplaceNetworkAclEntry, input, options)
end

function C:replaceRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReplaceRoute, input, options)
end

function C:replaceRouteTableAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReplaceRouteTableAssociation, input, options)
end

function C:replaceTransitGatewayRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReplaceTransitGatewayRoute, input, options)
end

function C:replaceVpnTunnel(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReplaceVpnTunnel, input, options)
end

function C:reportInstanceStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReportInstanceStatus, input, options)
end

function C:requestSpotFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.RequestSpotFleet, input, options)
end

function C:requestSpotInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.RequestSpotInstances, input, options)
end

function C:resetAddressAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetAddressAttribute, input, options)
end

function C:resetEbsDefaultKmsKeyId(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetEbsDefaultKmsKeyId, input, options)
end

function C:resetFpgaImageAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetFpgaImageAttribute, input, options)
end

function C:resetImageAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetImageAttribute, input, options)
end

function C:resetInstanceAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetInstanceAttribute, input, options)
end

function C:resetNetworkInterfaceAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetNetworkInterfaceAttribute, input, options)
end

function C:resetSnapshotAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetSnapshotAttribute, input, options)
end

function C:restoreAddressToClassic(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreAddressToClassic, input, options)
end

function C:restoreImageFromRecycleBin(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreImageFromRecycleBin, input, options)
end

function C:restoreManagedPrefixListVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreManagedPrefixListVersion, input, options)
end

function C:restoreSnapshotFromRecycleBin(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreSnapshotFromRecycleBin, input, options)
end

function C:restoreSnapshotTier(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreSnapshotTier, input, options)
end

function C:restoreVolumeFromRecycleBin(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreVolumeFromRecycleBin, input, options)
end

function C:revokeClientVpnIngress(input, options)
   return self:invokeOperation(schemas.Service, schemas.RevokeClientVpnIngress, input, options)
end

function C:revokeSecurityGroupEgress(input, options)
   return self:invokeOperation(schemas.Service, schemas.RevokeSecurityGroupEgress, input, options)
end

function C:revokeSecurityGroupIngress(input, options)
   return self:invokeOperation(schemas.Service, schemas.RevokeSecurityGroupIngress, input, options)
end

function C:runInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.RunInstances, input, options)
end

function C:runScheduledInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.RunScheduledInstances, input, options)
end

function C:searchLocalGatewayRoutes(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchLocalGatewayRoutes, input, options)
end

function C:searchTransitGatewayMulticastGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchTransitGatewayMulticastGroups, input, options)
end

function C:searchTransitGatewayRoutes(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchTransitGatewayRoutes, input, options)
end

function C:sendDiagnosticInterrupt(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendDiagnosticInterrupt, input, options)
end

function C:startDeclarativePoliciesReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDeclarativePoliciesReport, input, options)
end

function C:startInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartInstances, input, options)
end

function C:startNetworkInsightsAccessScopeAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartNetworkInsightsAccessScopeAnalysis, input, options)
end

function C:startNetworkInsightsAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartNetworkInsightsAnalysis, input, options)
end

function C:startVpcEndpointServicePrivateDnsVerification(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartVpcEndpointServicePrivateDnsVerification, input, options)
end

function C:stopInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopInstances, input, options)
end

function C:terminateClientVpnConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.TerminateClientVpnConnections, input, options)
end

function C:terminateInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.TerminateInstances, input, options)
end

function C:unassignIpv6Addresses(input, options)
   return self:invokeOperation(schemas.Service, schemas.UnassignIpv6Addresses, input, options)
end

function C:unassignPrivateIpAddresses(input, options)
   return self:invokeOperation(schemas.Service, schemas.UnassignPrivateIpAddresses, input, options)
end

function C:unassignPrivateNatGatewayAddress(input, options)
   return self:invokeOperation(schemas.Service, schemas.UnassignPrivateNatGatewayAddress, input, options)
end

function C:unlockSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.UnlockSnapshot, input, options)
end

function C:unmonitorInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.UnmonitorInstances, input, options)
end

function C:updateCapacityManagerMonitoredTagKeys(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCapacityManagerMonitoredTagKeys, input, options)
end

function C:updateCapacityManagerOrganizationsAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCapacityManagerOrganizationsAccess, input, options)
end

function C:updateInterruptibleCapacityReservationAllocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateInterruptibleCapacityReservationAllocation, input, options)
end

function C:updateSecurityGroupRuleDescriptionsEgress(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSecurityGroupRuleDescriptionsEgress, input, options)
end

function C:updateSecurityGroupRuleDescriptionsIngress(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSecurityGroupRuleDescriptionsIngress, input, options)
end

function C:withdrawByoipCidr(input, options)
   return self:invokeOperation(schemas.Service, schemas.WithdrawByoipCidr, input, options)
end

return M
