local M = {}

M.AcceleratorManufacturer = {
    AMAZON_WEB_SERVICES = "amazon-web-services",
    AMD = "amd",
    NVIDIA = "nvidia",
    XILINX = "xilinx",
    HABANA = "habana",
}

M.AcceleratorName = {
    A100 = "a100",
    INFERENTIA = "inferentia",
    K520 = "k520",
    K80 = "k80",
    M60 = "m60",
    RADEON_PRO_V520 = "radeon-pro-v520",
    T4 = "t4",
    VU9P = "vu9p",
    V100 = "v100",
    A10G = "a10g",
    H100 = "h100",
    T4G = "t4g",
    L40S = "l40s",
    L4 = "l4",
    GAUDI_HL_205 = "gaudi-hl-205",
    INFERENTIA2 = "inferentia2",
    TRAINIUM = "trainium",
    TRAINIUM2 = "trainium2",
    U30 = "u30",
}

M.AcceleratorType = {
    GPU = "gpu",
    FPGA = "fpga",
    INFERENCE = "inference",
    MEDIA = "media",
}

M.ResourceType = {
    capacity_reservation = "capacity-reservation",
    client_vpn_endpoint = "client-vpn-endpoint",
    customer_gateway = "customer-gateway",
    carrier_gateway = "carrier-gateway",
    coip_pool = "coip-pool",
    declarative_policies_report = "declarative-policies-report",
    dedicated_host = "dedicated-host",
    dhcp_options = "dhcp-options",
    egress_only_internet_gateway = "egress-only-internet-gateway",
    elastic_ip = "elastic-ip",
    elastic_gpu = "elastic-gpu",
    export_image_task = "export-image-task",
    export_instance_task = "export-instance-task",
    fleet = "fleet",
    fpga_image = "fpga-image",
    host_reservation = "host-reservation",
    image = "image",
    image_usage_report = "image-usage-report",
    import_image_task = "import-image-task",
    import_snapshot_task = "import-snapshot-task",
    instance = "instance",
    instance_event_window = "instance-event-window",
    internet_gateway = "internet-gateway",
    ipam = "ipam",
    ipam_pool = "ipam-pool",
    ipam_scope = "ipam-scope",
    ipv4pool_ec2 = "ipv4pool-ec2",
    ipv6pool_ec2 = "ipv6pool-ec2",
    key_pair = "key-pair",
    launch_template = "launch-template",
    local_gateway = "local-gateway",
    local_gateway_route_table = "local-gateway-route-table",
    local_gateway_virtual_interface = "local-gateway-virtual-interface",
    local_gateway_virtual_interface_group = "local-gateway-virtual-interface-group",
    local_gateway_route_table_vpc_association = "local-gateway-route-table-vpc-association",
    local_gateway_route_table_virtual_interface_group_association = "local-gateway-route-table-virtual-interface-group-association",
    natgateway = "natgateway",
    network_acl = "network-acl",
    network_interface = "network-interface",
    network_insights_analysis = "network-insights-analysis",
    network_insights_path = "network-insights-path",
    network_insights_access_scope = "network-insights-access-scope",
    network_insights_access_scope_analysis = "network-insights-access-scope-analysis",
    outpost_lag = "outpost-lag",
    placement_group = "placement-group",
    prefix_list = "prefix-list",
    replace_root_volume_task = "replace-root-volume-task",
    reserved_instances = "reserved-instances",
    route_table = "route-table",
    security_group = "security-group",
    security_group_rule = "security-group-rule",
    service_link_virtual_interface = "service-link-virtual-interface",
    snapshot = "snapshot",
    spot_fleet_request = "spot-fleet-request",
    spot_instances_request = "spot-instances-request",
    subnet = "subnet",
    subnet_cidr_reservation = "subnet-cidr-reservation",
    traffic_mirror_filter = "traffic-mirror-filter",
    traffic_mirror_session = "traffic-mirror-session",
    traffic_mirror_target = "traffic-mirror-target",
    transit_gateway = "transit-gateway",
    transit_gateway_attachment = "transit-gateway-attachment",
    transit_gateway_connect_peer = "transit-gateway-connect-peer",
    transit_gateway_multicast_domain = "transit-gateway-multicast-domain",
    transit_gateway_policy_table = "transit-gateway-policy-table",
    transit_gateway_metering_policy = "transit-gateway-metering-policy",
    transit_gateway_route_table = "transit-gateway-route-table",
    transit_gateway_route_table_announcement = "transit-gateway-route-table-announcement",
    volume = "volume",
    vpc = "vpc",
    vpc_endpoint = "vpc-endpoint",
    vpc_endpoint_connection = "vpc-endpoint-connection",
    vpc_endpoint_service = "vpc-endpoint-service",
    vpc_endpoint_service_permission = "vpc-endpoint-service-permission",
    vpc_peering_connection = "vpc-peering-connection",
    vpn_connection = "vpn-connection",
    vpn_gateway = "vpn-gateway",
    vpc_flow_log = "vpc-flow-log",
    capacity_reservation_fleet = "capacity-reservation-fleet",
    traffic_mirror_filter_rule = "traffic-mirror-filter-rule",
    vpc_endpoint_connection_device_type = "vpc-endpoint-connection-device-type",
    verified_access_instance = "verified-access-instance",
    verified_access_group = "verified-access-group",
    verified_access_endpoint = "verified-access-endpoint",
    verified_access_policy = "verified-access-policy",
    verified_access_trust_provider = "verified-access-trust-provider",
    vpn_connection_device_type = "vpn-connection-device-type",
    vpc_block_public_access_exclusion = "vpc-block-public-access-exclusion",
    vpc_encryption_control = "vpc-encryption-control",
    route_server = "route-server",
    route_server_endpoint = "route-server-endpoint",
    route_server_peer = "route-server-peer",
    ipam_resource_discovery = "ipam-resource-discovery",
    ipam_resource_discovery_association = "ipam-resource-discovery-association",
    instance_connect_endpoint = "instance-connect-endpoint",
    verified_access_endpoint_target = "verified-access-endpoint-target",
    ipam_external_resource_verification_token = "ipam-external-resource-verification-token",
    capacity_block = "capacity-block",
    mac_modification_task = "mac-modification-task",
    ipam_prefix_list_resolver = "ipam-prefix-list-resolver",
    ipam_policy = "ipam-policy",
    ipam_prefix_list_resolver_target = "ipam-prefix-list-resolver-target",
    secondary_interface = "secondary-interface",
    secondary_network = "secondary-network",
    secondary_subnet = "secondary-subnet",
    capacity_manager_data_export = "capacity-manager-data-export",
    vpn_concentrator = "vpn-concentrator",
}

M.AddressTransferStatus = {
    pending = "pending",
    disabled = "disabled",
    accepted = "accepted",
}

M.TransitGatewayAttachmentStatusType = {
    pending_acceptance = "pending-acceptance",
    pending = "pending",
    rejected = "rejected",
    available = "available",
    deleting = "deleting",
    deleted = "deleted",
}

M.TransitGatewayAttachmentResourceType = {
    vpc = "vpc",
    vpn = "vpn",
    vpn_concentrator = "vpn-concentrator",
    direct_connect_gateway = "direct-connect-gateway",
    connect = "connect",
    peering = "peering",
    tgw_peering = "tgw-peering",
    network_function = "network-function",
    client_vpn = "client-vpn",
}

M.TransitGatewayMulitcastDomainAssociationState = {
    pendingAcceptance = "pendingAcceptance",
    associating = "associating",
    associated = "associated",
    disassociating = "disassociating",
    disassociated = "disassociated",
    rejected = "rejected",
    failed = "failed",
}

M.DynamicRoutingValue = {
    enable = "enable",
    disable = "disable",
}

M.TransitGatewayAttachmentState = {
    initiating = "initiating",
    initiatingRequest = "initiatingRequest",
    pendingAcceptance = "pendingAcceptance",
    rollingBack = "rollingBack",
    pending = "pending",
    available = "available",
    modifying = "modifying",
    deleting = "deleting",
    deleted = "deleted",
    failed = "failed",
    rejected = "rejected",
    rejecting = "rejecting",
    failing = "failing",
}

M.ApplianceModeSupportValue = {
    enable = "enable",
    disable = "disable",
}

M.DnsSupportValue = {
    enable = "enable",
    disable = "disable",
}

M.Ipv6SupportValue = {
    enable = "enable",
    disable = "disable",
}

M.SecurityGroupReferencingSupportValue = {
    enable = "enable",
    disable = "disable",
}

M.VpcPeeringConnectionStateReasonCode = {
    initiating_request = "initiating-request",
    pending_acceptance = "pending-acceptance",
    active = "active",
    deleted = "deleted",
    rejected = "rejected",
    failed = "failed",
    expired = "expired",
    provisioning = "provisioning",
    deleting = "deleting",
}

M.Protocol = {
    tcp = "tcp",
    udp = "udp",
}

M.AccountAttributeName = {
    supported_platforms = "supported-platforms",
    default_vpc = "default-vpc",
}

M.InstanceHealthStatus = {
    HEALTHY_STATUS = "healthy",
    UNHEALTHY_STATUS = "unhealthy",
}

M.VpnTunnelProvisioningStatus = {
    available = "available",
    pending = "pending",
    failed = "failed",
}

M.ActivityStatus = {
    ERROR = "error",
    PENDING_FULFILLMENT = "pending_fulfillment",
    PENDING_TERMINATION = "pending_termination",
    FULFILLED = "fulfilled",
}

M.PrincipalType = {
    All = "All",
    Service = "Service",
    OrganizationUnit = "OrganizationUnit",
    Account = "Account",
    User = "User",
    Role = "Role",
}

M.DomainType = {
    vpc = "vpc",
    standard = "standard",
}

M.ServiceManaged = {
    alb = "alb",
    nlb = "nlb",
    rnat = "rnat",
    rds = "rds",
}

M.AddressAttributeName = {
    domain_name = "domain-name",
}

M.AddressFamily = {
    ipv4 = "ipv4",
    ipv6 = "ipv6",
}

M.AsnAssociationState = {
    disassociated = "disassociated",
    failed_disassociation = "failed-disassociation",
    failed_association = "failed-association",
    pending_disassociation = "pending-disassociation",
    pending_association = "pending-association",
    associated = "associated",
}

M.ByoipCidrState = {
    advertised = "advertised",
    deprovisioned = "deprovisioned",
    failed_deprovision = "failed-deprovision",
    failed_provision = "failed-provision",
    pending_advertising = "pending-advertising",
    pending_deprovision = "pending-deprovision",
    pending_provision = "pending-provision",
    pending_withdrawal = "pending-withdrawal",
    provisioned = "provisioned",
    provisioned_not_publicly_advertisable = "provisioned-not-publicly-advertisable",
}

M.Affinity = {
    default = "default",
    host = "host",
}

M.AutoPlacement = {
    on = "on",
    off = "off",
}

M.HostMaintenance = {
    on = "on",
    off = "off",
}

M.HostRecovery = {
    on = "on",
    off = "off",
}

M.IpamPoolAllocationResourceType = {
    ipam_pool = "ipam-pool",
    vpc = "vpc",
    ec2_public_ipv4_pool = "ec2-public-ipv4-pool",
    custom = "custom",
    subnet = "subnet",
    eip = "eip",
    anycast_ip_list = "anycast-ip-list",
}

M.AllocationState = {
    available = "available",
    under_assessment = "under-assessment",
    permanent_failure = "permanent-failure",
    released = "released",
    released_permanent_failure = "released-permanent-failure",
    pending = "pending",
}

M.AllocationStrategy = {
    LOWEST_PRICE = "lowestPrice",
    DIVERSIFIED = "diversified",
    CAPACITY_OPTIMIZED = "capacityOptimized",
    CAPACITY_OPTIMIZED_PRIORITIZED = "capacityOptimizedPrioritized",
    PRICE_CAPACITY_OPTIMIZED = "priceCapacityOptimized",
}

M.AllocationType = {
    used = "used",
    future = "future",
}

M.AllowedImagesSettingsDisabledState = {
    disabled = "disabled",
}

M.AllowedImagesSettingsEnabledState = {
    enabled = "enabled",
    audit_mode = "audit-mode",
}

M.AllowsMultipleInstanceTypes = {
    on = "on",
    off = "off",
}

M.NatGatewayAddressStatus = {
    ASSIGNING = "assigning",
    UNASSIGNING = "unassigning",
    ASSOCIATING = "associating",
    DISASSOCIATING = "disassociating",
    SUCCEEDED = "succeeded",
    FAILED = "failed",
}

M.AssociationStatusCode = {
    associating = "associating",
    associated = "associated",
    association_failed = "association-failed",
    disassociating = "disassociating",
    disassociated = "disassociated",
}

M.IamInstanceProfileAssociationState = {
    ASSOCIATING = "associating",
    ASSOCIATED = "associated",
    DISASSOCIATING = "disassociating",
    DISASSOCIATED = "disassociated",
}

M.InstanceEventWindowState = {
    creating = "creating",
    deleting = "deleting",
    active = "active",
    deleted = "deleted",
}

M.WeekDay = {
    sunday = "sunday",
    monday = "monday",
    tuesday = "tuesday",
    wednesday = "wednesday",
    thursday = "thursday",
    friday = "friday",
    saturday = "saturday",
}

M.IpamAssociatedResourceDiscoveryStatus = {
    ACTIVE = "active",
    NOT_FOUND = "not-found",
}

M.IpamResourceDiscoveryAssociationState = {
    ASSOCIATE_IN_PROGRESS = "associate-in-progress",
    ASSOCIATE_COMPLETE = "associate-complete",
    ASSOCIATE_FAILED = "associate-failed",
    DISASSOCIATE_IN_PROGRESS = "disassociate-in-progress",
    DISASSOCIATE_COMPLETE = "disassociate-complete",
    DISASSOCIATE_FAILED = "disassociate-failed",
    ISOLATE_IN_PROGRESS = "isolate-in-progress",
    ISOLATE_COMPLETE = "isolate-complete",
    RESTORE_IN_PROGRESS = "restore-in-progress",
}

M.RouteServerAssociationState = {
    ASSOCIATING = "associating",
    ASSOCIATED = "associated",
    DISASSOCIATING = "disassociating",
}

M.RouteTableAssociationStateCode = {
    associating = "associating",
    associated = "associated",
    disassociating = "disassociating",
    disassociated = "disassociated",
    failed = "failed",
}

M.SecurityGroupVpcAssociationState = {
    associating = "associating",
    associated = "associated",
    association_failed = "association-failed",
    disassociating = "disassociating",
    disassociated = "disassociated",
    disassociation_failed = "disassociation-failed",
}

M.IpSource = {
    amazon = "amazon",
    byoip = "byoip",
    none = "none",
}

M.Ipv6AddressAttribute = {
    public = "public",
    private = "private",
}

M.SubnetCidrBlockStateCode = {
    associating = "associating",
    associated = "associated",
    disassociating = "disassociating",
    disassociated = "disassociated",
    failing = "failing",
    failed = "failed",
}

M.TransitGatewayAssociationState = {
    associating = "associating",
    associated = "associated",
    disassociating = "disassociating",
    disassociated = "disassociated",
}

M.InterfaceProtocolType = {
    VLAN = "VLAN",
    GRE = "GRE",
}

M.VpcCidrBlockStateCode = {
    associating = "associating",
    associated = "associated",
    disassociating = "disassociating",
    disassociated = "disassociated",
    failing = "failing",
    failed = "failed",
}

M.DeviceTrustProviderType = {
    jamf = "jamf",
    crowdstrike = "crowdstrike",
    jumpcloud = "jumpcloud",
}

M.TrustProviderType = {
    user = "user",
    device = "device",
}

M.UserTrustProviderType = {
    iam_identity_center = "iam-identity-center",
    oidc = "oidc",
}

M.VolumeAttachmentState = {
    attaching = "attaching",
    attached = "attached",
    detaching = "detaching",
    detached = "detached",
    busy = "busy",
}

M.AttachmentStatus = {
    attaching = "attaching",
    attached = "attached",
    detaching = "detaching",
    detached = "detached",
}

M.ClientVpnAuthorizationRuleStatusCode = {
    authorizing = "authorizing",
    active = "active",
    failed = "failed",
    revoking = "revoking",
}

M.BundleTaskState = {
    pending = "pending",
    waiting_for_shutdown = "waiting-for-shutdown",
    bundling = "bundling",
    storing = "storing",
    cancelling = "cancelling",
    complete = "complete",
    failed = "failed",
}

M.CapacityReservationFleetState = {
    SUBMITTED = "submitted",
    MODIFYING = "modifying",
    ACTIVE = "active",
    PARTIALLY_FULFILLED = "partially_fulfilled",
    EXPIRING = "expiring",
    EXPIRED = "expired",
    CANCELLING = "cancelling",
    CANCELLED = "cancelled",
    FAILED = "failed",
}

M.ListingState = {
    available = "available",
    sold = "sold",
    cancelled = "cancelled",
    pending = "pending",
}

M.CurrencyCodeValues = {
    USD = "USD",
}

M.ListingStatus = {
    active = "active",
    pending = "pending",
    cancelled = "cancelled",
    closed = "closed",
}

M.BatchState = {
    SUBMITTED = "submitted",
    ACTIVE = "active",
    CANCELLED = "cancelled",
    FAILED = "failed",
    CANCELLED_RUNNING = "cancelled_running",
    CANCELLED_TERMINATING_INSTANCES = "cancelled_terminating",
    MODIFYING = "modifying",
}

M.CancelBatchErrorCode = {
    FLEET_REQUEST_ID_DOES_NOT_EXIST = "fleetRequestIdDoesNotExist",
    FLEET_REQUEST_ID_MALFORMED = "fleetRequestIdMalformed",
    FLEET_REQUEST_NOT_IN_CANCELLABLE_STATE = "fleetRequestNotInCancellableState",
    UNEXPECTED_ERROR = "unexpectedError",
}

M.CancelSpotInstanceRequestState = {
    active = "active",
    open = "open",
    closed = "closed",
    cancelled = "cancelled",
    completed = "completed",
}

M.VolumeType = {
    standard = "standard",
    io1 = "io1",
    io2 = "io2",
    gp2 = "gp2",
    sc1 = "sc1",
    st1 = "st1",
    gp3 = "gp3",
}

M.SSEType = {
    sse_ebs = "sse-ebs",
    sse_kms = "sse-kms",
    none = "none",
}

M.VolumeState = {
    creating = "creating",
    available = "available",
    in_use = "in-use",
    deleting = "deleting",
    deleted = "deleted",
    error = "error",
}

M.OutputFormat = {
    CSV = "csv",
    PARQUET = "parquet",
}

M.Schedule = {
    HOURLY = "hourly",
}

M.CapacityReservationDeliveryPreference = {
    FIXED = "fixed",
    INCREMENTAL = "incremental",
}

M.EndDateType = {
    unlimited = "unlimited",
    limited = "limited",
}

M.InstanceMatchCriteria = {
    open = "open",
    targeted = "targeted",
}

M.CapacityReservationInstancePlatform = {
    LINUX_UNIX = "Linux/UNIX",
    RED_HAT_ENTERPRISE_LINUX = "Red Hat Enterprise Linux",
    SUSE_LINUX = "SUSE Linux",
    WINDOWS = "Windows",
    WINDOWS_WITH_SQL_SERVER = "Windows with SQL Server",
    WINDOWS_WITH_SQL_SERVER_ENTERPRISE = "Windows with SQL Server Enterprise",
    WINDOWS_WITH_SQL_SERVER_STANDARD = "Windows with SQL Server Standard",
    WINDOWS_WITH_SQL_SERVER_WEB = "Windows with SQL Server Web",
    LINUX_WITH_SQL_SERVER_STANDARD = "Linux with SQL Server Standard",
    LINUX_WITH_SQL_SERVER_WEB = "Linux with SQL Server Web",
    LINUX_WITH_SQL_SERVER_ENTERPRISE = "Linux with SQL Server Enterprise",
    RHEL_WITH_SQL_SERVER_STANDARD = "RHEL with SQL Server Standard",
    RHEL_WITH_SQL_SERVER_ENTERPRISE = "RHEL with SQL Server Enterprise",
    RHEL_WITH_SQL_SERVER_WEB = "RHEL with SQL Server Web",
    RHEL_WITH_HA = "RHEL with HA",
    RHEL_WITH_HA_AND_SQL_SERVER_STANDARD = "RHEL with HA and SQL Server Standard",
    RHEL_WITH_HA_AND_SQL_SERVER_ENTERPRISE = "RHEL with HA and SQL Server Enterprise",
    UBUNTU_PRO_LINUX = "Ubuntu Pro",
}

M.CapacityReservationTenancy = {
    default = "default",
    dedicated = "dedicated",
}

M.InterruptionType = {
    adhoc = "adhoc",
}

M.InterruptibleCapacityReservationAllocationStatus = {
    pending = "pending",
    active = "active",
    updating = "updating",
    canceling = "canceling",
    canceled = "canceled",
    failed = "failed",
}

M.CapacityReservationType = {
    DEFAULT = "default",
    CAPACITY_BLOCK = "capacity-block",
}

M.CapacityReservationState = {
    active = "active",
    expired = "expired",
    cancelled = "cancelled",
    pending = "pending",
    failed = "failed",
    scheduled = "scheduled",
    payment_pending = "payment-pending",
    payment_failed = "payment-failed",
    assessing = "assessing",
    delayed = "delayed",
    unsupported = "unsupported",
    unavailable = "unavailable",
}

M.FleetInstanceMatchCriteria = {
    open = "open",
}

M.InstanceType = {
    a1_medium = "a1.medium",
    a1_large = "a1.large",
    a1_xlarge = "a1.xlarge",
    a1_2xlarge = "a1.2xlarge",
    a1_4xlarge = "a1.4xlarge",
    a1_metal = "a1.metal",
    c1_medium = "c1.medium",
    c1_xlarge = "c1.xlarge",
    c3_large = "c3.large",
    c3_xlarge = "c3.xlarge",
    c3_2xlarge = "c3.2xlarge",
    c3_4xlarge = "c3.4xlarge",
    c3_8xlarge = "c3.8xlarge",
    c4_large = "c4.large",
    c4_xlarge = "c4.xlarge",
    c4_2xlarge = "c4.2xlarge",
    c4_4xlarge = "c4.4xlarge",
    c4_8xlarge = "c4.8xlarge",
    c5_large = "c5.large",
    c5_xlarge = "c5.xlarge",
    c5_2xlarge = "c5.2xlarge",
    c5_4xlarge = "c5.4xlarge",
    c5_9xlarge = "c5.9xlarge",
    c5_12xlarge = "c5.12xlarge",
    c5_18xlarge = "c5.18xlarge",
    c5_24xlarge = "c5.24xlarge",
    c5_metal = "c5.metal",
    c5a_large = "c5a.large",
    c5a_xlarge = "c5a.xlarge",
    c5a_2xlarge = "c5a.2xlarge",
    c5a_4xlarge = "c5a.4xlarge",
    c5a_8xlarge = "c5a.8xlarge",
    c5a_12xlarge = "c5a.12xlarge",
    c5a_16xlarge = "c5a.16xlarge",
    c5a_24xlarge = "c5a.24xlarge",
    c5ad_large = "c5ad.large",
    c5ad_xlarge = "c5ad.xlarge",
    c5ad_2xlarge = "c5ad.2xlarge",
    c5ad_4xlarge = "c5ad.4xlarge",
    c5ad_8xlarge = "c5ad.8xlarge",
    c5ad_12xlarge = "c5ad.12xlarge",
    c5ad_16xlarge = "c5ad.16xlarge",
    c5ad_24xlarge = "c5ad.24xlarge",
    c5d_large = "c5d.large",
    c5d_xlarge = "c5d.xlarge",
    c5d_2xlarge = "c5d.2xlarge",
    c5d_4xlarge = "c5d.4xlarge",
    c5d_9xlarge = "c5d.9xlarge",
    c5d_12xlarge = "c5d.12xlarge",
    c5d_18xlarge = "c5d.18xlarge",
    c5d_24xlarge = "c5d.24xlarge",
    c5d_metal = "c5d.metal",
    c5n_large = "c5n.large",
    c5n_xlarge = "c5n.xlarge",
    c5n_2xlarge = "c5n.2xlarge",
    c5n_4xlarge = "c5n.4xlarge",
    c5n_9xlarge = "c5n.9xlarge",
    c5n_18xlarge = "c5n.18xlarge",
    c5n_metal = "c5n.metal",
    c6g_medium = "c6g.medium",
    c6g_large = "c6g.large",
    c6g_xlarge = "c6g.xlarge",
    c6g_2xlarge = "c6g.2xlarge",
    c6g_4xlarge = "c6g.4xlarge",
    c6g_8xlarge = "c6g.8xlarge",
    c6g_12xlarge = "c6g.12xlarge",
    c6g_16xlarge = "c6g.16xlarge",
    c6g_metal = "c6g.metal",
    c6gd_medium = "c6gd.medium",
    c6gd_large = "c6gd.large",
    c6gd_xlarge = "c6gd.xlarge",
    c6gd_2xlarge = "c6gd.2xlarge",
    c6gd_4xlarge = "c6gd.4xlarge",
    c6gd_8xlarge = "c6gd.8xlarge",
    c6gd_12xlarge = "c6gd.12xlarge",
    c6gd_16xlarge = "c6gd.16xlarge",
    c6gd_metal = "c6gd.metal",
    c6gn_medium = "c6gn.medium",
    c6gn_large = "c6gn.large",
    c6gn_xlarge = "c6gn.xlarge",
    c6gn_2xlarge = "c6gn.2xlarge",
    c6gn_4xlarge = "c6gn.4xlarge",
    c6gn_8xlarge = "c6gn.8xlarge",
    c6gn_12xlarge = "c6gn.12xlarge",
    c6gn_16xlarge = "c6gn.16xlarge",
    c6i_large = "c6i.large",
    c6i_xlarge = "c6i.xlarge",
    c6i_2xlarge = "c6i.2xlarge",
    c6i_4xlarge = "c6i.4xlarge",
    c6i_8xlarge = "c6i.8xlarge",
    c6i_12xlarge = "c6i.12xlarge",
    c6i_16xlarge = "c6i.16xlarge",
    c6i_24xlarge = "c6i.24xlarge",
    c6i_32xlarge = "c6i.32xlarge",
    c6i_metal = "c6i.metal",
    cc1_4xlarge = "cc1.4xlarge",
    cc2_8xlarge = "cc2.8xlarge",
    cg1_4xlarge = "cg1.4xlarge",
    cr1_8xlarge = "cr1.8xlarge",
    d2_xlarge = "d2.xlarge",
    d2_2xlarge = "d2.2xlarge",
    d2_4xlarge = "d2.4xlarge",
    d2_8xlarge = "d2.8xlarge",
    d3_xlarge = "d3.xlarge",
    d3_2xlarge = "d3.2xlarge",
    d3_4xlarge = "d3.4xlarge",
    d3_8xlarge = "d3.8xlarge",
    d3en_xlarge = "d3en.xlarge",
    d3en_2xlarge = "d3en.2xlarge",
    d3en_4xlarge = "d3en.4xlarge",
    d3en_6xlarge = "d3en.6xlarge",
    d3en_8xlarge = "d3en.8xlarge",
    d3en_12xlarge = "d3en.12xlarge",
    dl1_24xlarge = "dl1.24xlarge",
    f1_2xlarge = "f1.2xlarge",
    f1_4xlarge = "f1.4xlarge",
    f1_16xlarge = "f1.16xlarge",
    g2_2xlarge = "g2.2xlarge",
    g2_8xlarge = "g2.8xlarge",
    g3_4xlarge = "g3.4xlarge",
    g3_8xlarge = "g3.8xlarge",
    g3_16xlarge = "g3.16xlarge",
    g3s_xlarge = "g3s.xlarge",
    g4ad_xlarge = "g4ad.xlarge",
    g4ad_2xlarge = "g4ad.2xlarge",
    g4ad_4xlarge = "g4ad.4xlarge",
    g4ad_8xlarge = "g4ad.8xlarge",
    g4ad_16xlarge = "g4ad.16xlarge",
    g4dn_xlarge = "g4dn.xlarge",
    g4dn_2xlarge = "g4dn.2xlarge",
    g4dn_4xlarge = "g4dn.4xlarge",
    g4dn_8xlarge = "g4dn.8xlarge",
    g4dn_12xlarge = "g4dn.12xlarge",
    g4dn_16xlarge = "g4dn.16xlarge",
    g4dn_metal = "g4dn.metal",
    g5_xlarge = "g5.xlarge",
    g5_2xlarge = "g5.2xlarge",
    g5_4xlarge = "g5.4xlarge",
    g5_8xlarge = "g5.8xlarge",
    g5_12xlarge = "g5.12xlarge",
    g5_16xlarge = "g5.16xlarge",
    g5_24xlarge = "g5.24xlarge",
    g5_48xlarge = "g5.48xlarge",
    g5g_xlarge = "g5g.xlarge",
    g5g_2xlarge = "g5g.2xlarge",
    g5g_4xlarge = "g5g.4xlarge",
    g5g_8xlarge = "g5g.8xlarge",
    g5g_16xlarge = "g5g.16xlarge",
    g5g_metal = "g5g.metal",
    hi1_4xlarge = "hi1.4xlarge",
    hpc6a_48xlarge = "hpc6a.48xlarge",
    hs1_8xlarge = "hs1.8xlarge",
    h1_2xlarge = "h1.2xlarge",
    h1_4xlarge = "h1.4xlarge",
    h1_8xlarge = "h1.8xlarge",
    h1_16xlarge = "h1.16xlarge",
    i2_xlarge = "i2.xlarge",
    i2_2xlarge = "i2.2xlarge",
    i2_4xlarge = "i2.4xlarge",
    i2_8xlarge = "i2.8xlarge",
    i3_large = "i3.large",
    i3_xlarge = "i3.xlarge",
    i3_2xlarge = "i3.2xlarge",
    i3_4xlarge = "i3.4xlarge",
    i3_8xlarge = "i3.8xlarge",
    i3_16xlarge = "i3.16xlarge",
    i3_metal = "i3.metal",
    i3en_large = "i3en.large",
    i3en_xlarge = "i3en.xlarge",
    i3en_2xlarge = "i3en.2xlarge",
    i3en_3xlarge = "i3en.3xlarge",
    i3en_6xlarge = "i3en.6xlarge",
    i3en_12xlarge = "i3en.12xlarge",
    i3en_24xlarge = "i3en.24xlarge",
    i3en_metal = "i3en.metal",
    im4gn_large = "im4gn.large",
    im4gn_xlarge = "im4gn.xlarge",
    im4gn_2xlarge = "im4gn.2xlarge",
    im4gn_4xlarge = "im4gn.4xlarge",
    im4gn_8xlarge = "im4gn.8xlarge",
    im4gn_16xlarge = "im4gn.16xlarge",
    inf1_xlarge = "inf1.xlarge",
    inf1_2xlarge = "inf1.2xlarge",
    inf1_6xlarge = "inf1.6xlarge",
    inf1_24xlarge = "inf1.24xlarge",
    is4gen_medium = "is4gen.medium",
    is4gen_large = "is4gen.large",
    is4gen_xlarge = "is4gen.xlarge",
    is4gen_2xlarge = "is4gen.2xlarge",
    is4gen_4xlarge = "is4gen.4xlarge",
    is4gen_8xlarge = "is4gen.8xlarge",
    m1_small = "m1.small",
    m1_medium = "m1.medium",
    m1_large = "m1.large",
    m1_xlarge = "m1.xlarge",
    m2_xlarge = "m2.xlarge",
    m2_2xlarge = "m2.2xlarge",
    m2_4xlarge = "m2.4xlarge",
    m3_medium = "m3.medium",
    m3_large = "m3.large",
    m3_xlarge = "m3.xlarge",
    m3_2xlarge = "m3.2xlarge",
    m4_large = "m4.large",
    m4_xlarge = "m4.xlarge",
    m4_2xlarge = "m4.2xlarge",
    m4_4xlarge = "m4.4xlarge",
    m4_10xlarge = "m4.10xlarge",
    m4_16xlarge = "m4.16xlarge",
    m5_large = "m5.large",
    m5_xlarge = "m5.xlarge",
    m5_2xlarge = "m5.2xlarge",
    m5_4xlarge = "m5.4xlarge",
    m5_8xlarge = "m5.8xlarge",
    m5_12xlarge = "m5.12xlarge",
    m5_16xlarge = "m5.16xlarge",
    m5_24xlarge = "m5.24xlarge",
    m5_metal = "m5.metal",
    m5a_large = "m5a.large",
    m5a_xlarge = "m5a.xlarge",
    m5a_2xlarge = "m5a.2xlarge",
    m5a_4xlarge = "m5a.4xlarge",
    m5a_8xlarge = "m5a.8xlarge",
    m5a_12xlarge = "m5a.12xlarge",
    m5a_16xlarge = "m5a.16xlarge",
    m5a_24xlarge = "m5a.24xlarge",
    m5ad_large = "m5ad.large",
    m5ad_xlarge = "m5ad.xlarge",
    m5ad_2xlarge = "m5ad.2xlarge",
    m5ad_4xlarge = "m5ad.4xlarge",
    m5ad_8xlarge = "m5ad.8xlarge",
    m5ad_12xlarge = "m5ad.12xlarge",
    m5ad_16xlarge = "m5ad.16xlarge",
    m5ad_24xlarge = "m5ad.24xlarge",
    m5d_large = "m5d.large",
    m5d_xlarge = "m5d.xlarge",
    m5d_2xlarge = "m5d.2xlarge",
    m5d_4xlarge = "m5d.4xlarge",
    m5d_8xlarge = "m5d.8xlarge",
    m5d_12xlarge = "m5d.12xlarge",
    m5d_16xlarge = "m5d.16xlarge",
    m5d_24xlarge = "m5d.24xlarge",
    m5d_metal = "m5d.metal",
    m5dn_large = "m5dn.large",
    m5dn_xlarge = "m5dn.xlarge",
    m5dn_2xlarge = "m5dn.2xlarge",
    m5dn_4xlarge = "m5dn.4xlarge",
    m5dn_8xlarge = "m5dn.8xlarge",
    m5dn_12xlarge = "m5dn.12xlarge",
    m5dn_16xlarge = "m5dn.16xlarge",
    m5dn_24xlarge = "m5dn.24xlarge",
    m5dn_metal = "m5dn.metal",
    m5n_large = "m5n.large",
    m5n_xlarge = "m5n.xlarge",
    m5n_2xlarge = "m5n.2xlarge",
    m5n_4xlarge = "m5n.4xlarge",
    m5n_8xlarge = "m5n.8xlarge",
    m5n_12xlarge = "m5n.12xlarge",
    m5n_16xlarge = "m5n.16xlarge",
    m5n_24xlarge = "m5n.24xlarge",
    m5n_metal = "m5n.metal",
    m5zn_large = "m5zn.large",
    m5zn_xlarge = "m5zn.xlarge",
    m5zn_2xlarge = "m5zn.2xlarge",
    m5zn_3xlarge = "m5zn.3xlarge",
    m5zn_6xlarge = "m5zn.6xlarge",
    m5zn_12xlarge = "m5zn.12xlarge",
    m5zn_metal = "m5zn.metal",
    m6a_large = "m6a.large",
    m6a_xlarge = "m6a.xlarge",
    m6a_2xlarge = "m6a.2xlarge",
    m6a_4xlarge = "m6a.4xlarge",
    m6a_8xlarge = "m6a.8xlarge",
    m6a_12xlarge = "m6a.12xlarge",
    m6a_16xlarge = "m6a.16xlarge",
    m6a_24xlarge = "m6a.24xlarge",
    m6a_32xlarge = "m6a.32xlarge",
    m6a_48xlarge = "m6a.48xlarge",
    m6g_metal = "m6g.metal",
    m6g_medium = "m6g.medium",
    m6g_large = "m6g.large",
    m6g_xlarge = "m6g.xlarge",
    m6g_2xlarge = "m6g.2xlarge",
    m6g_4xlarge = "m6g.4xlarge",
    m6g_8xlarge = "m6g.8xlarge",
    m6g_12xlarge = "m6g.12xlarge",
    m6g_16xlarge = "m6g.16xlarge",
    m6gd_metal = "m6gd.metal",
    m6gd_medium = "m6gd.medium",
    m6gd_large = "m6gd.large",
    m6gd_xlarge = "m6gd.xlarge",
    m6gd_2xlarge = "m6gd.2xlarge",
    m6gd_4xlarge = "m6gd.4xlarge",
    m6gd_8xlarge = "m6gd.8xlarge",
    m6gd_12xlarge = "m6gd.12xlarge",
    m6gd_16xlarge = "m6gd.16xlarge",
    m6i_large = "m6i.large",
    m6i_xlarge = "m6i.xlarge",
    m6i_2xlarge = "m6i.2xlarge",
    m6i_4xlarge = "m6i.4xlarge",
    m6i_8xlarge = "m6i.8xlarge",
    m6i_12xlarge = "m6i.12xlarge",
    m6i_16xlarge = "m6i.16xlarge",
    m6i_24xlarge = "m6i.24xlarge",
    m6i_32xlarge = "m6i.32xlarge",
    m6i_metal = "m6i.metal",
    mac1_metal = "mac1.metal",
    p2_xlarge = "p2.xlarge",
    p2_8xlarge = "p2.8xlarge",
    p2_16xlarge = "p2.16xlarge",
    p3_2xlarge = "p3.2xlarge",
    p3_8xlarge = "p3.8xlarge",
    p3_16xlarge = "p3.16xlarge",
    p3dn_24xlarge = "p3dn.24xlarge",
    p4d_24xlarge = "p4d.24xlarge",
    r3_large = "r3.large",
    r3_xlarge = "r3.xlarge",
    r3_2xlarge = "r3.2xlarge",
    r3_4xlarge = "r3.4xlarge",
    r3_8xlarge = "r3.8xlarge",
    r4_large = "r4.large",
    r4_xlarge = "r4.xlarge",
    r4_2xlarge = "r4.2xlarge",
    r4_4xlarge = "r4.4xlarge",
    r4_8xlarge = "r4.8xlarge",
    r4_16xlarge = "r4.16xlarge",
    r5_large = "r5.large",
    r5_xlarge = "r5.xlarge",
    r5_2xlarge = "r5.2xlarge",
    r5_4xlarge = "r5.4xlarge",
    r5_8xlarge = "r5.8xlarge",
    r5_12xlarge = "r5.12xlarge",
    r5_16xlarge = "r5.16xlarge",
    r5_24xlarge = "r5.24xlarge",
    r5_metal = "r5.metal",
    r5a_large = "r5a.large",
    r5a_xlarge = "r5a.xlarge",
    r5a_2xlarge = "r5a.2xlarge",
    r5a_4xlarge = "r5a.4xlarge",
    r5a_8xlarge = "r5a.8xlarge",
    r5a_12xlarge = "r5a.12xlarge",
    r5a_16xlarge = "r5a.16xlarge",
    r5a_24xlarge = "r5a.24xlarge",
    r5ad_large = "r5ad.large",
    r5ad_xlarge = "r5ad.xlarge",
    r5ad_2xlarge = "r5ad.2xlarge",
    r5ad_4xlarge = "r5ad.4xlarge",
    r5ad_8xlarge = "r5ad.8xlarge",
    r5ad_12xlarge = "r5ad.12xlarge",
    r5ad_16xlarge = "r5ad.16xlarge",
    r5ad_24xlarge = "r5ad.24xlarge",
    r5b_large = "r5b.large",
    r5b_xlarge = "r5b.xlarge",
    r5b_2xlarge = "r5b.2xlarge",
    r5b_4xlarge = "r5b.4xlarge",
    r5b_8xlarge = "r5b.8xlarge",
    r5b_12xlarge = "r5b.12xlarge",
    r5b_16xlarge = "r5b.16xlarge",
    r5b_24xlarge = "r5b.24xlarge",
    r5b_metal = "r5b.metal",
    r5d_large = "r5d.large",
    r5d_xlarge = "r5d.xlarge",
    r5d_2xlarge = "r5d.2xlarge",
    r5d_4xlarge = "r5d.4xlarge",
    r5d_8xlarge = "r5d.8xlarge",
    r5d_12xlarge = "r5d.12xlarge",
    r5d_16xlarge = "r5d.16xlarge",
    r5d_24xlarge = "r5d.24xlarge",
    r5d_metal = "r5d.metal",
    r5dn_large = "r5dn.large",
    r5dn_xlarge = "r5dn.xlarge",
    r5dn_2xlarge = "r5dn.2xlarge",
    r5dn_4xlarge = "r5dn.4xlarge",
    r5dn_8xlarge = "r5dn.8xlarge",
    r5dn_12xlarge = "r5dn.12xlarge",
    r5dn_16xlarge = "r5dn.16xlarge",
    r5dn_24xlarge = "r5dn.24xlarge",
    r5dn_metal = "r5dn.metal",
    r5n_large = "r5n.large",
    r5n_xlarge = "r5n.xlarge",
    r5n_2xlarge = "r5n.2xlarge",
    r5n_4xlarge = "r5n.4xlarge",
    r5n_8xlarge = "r5n.8xlarge",
    r5n_12xlarge = "r5n.12xlarge",
    r5n_16xlarge = "r5n.16xlarge",
    r5n_24xlarge = "r5n.24xlarge",
    r5n_metal = "r5n.metal",
    r6g_medium = "r6g.medium",
    r6g_large = "r6g.large",
    r6g_xlarge = "r6g.xlarge",
    r6g_2xlarge = "r6g.2xlarge",
    r6g_4xlarge = "r6g.4xlarge",
    r6g_8xlarge = "r6g.8xlarge",
    r6g_12xlarge = "r6g.12xlarge",
    r6g_16xlarge = "r6g.16xlarge",
    r6g_metal = "r6g.metal",
    r6gd_medium = "r6gd.medium",
    r6gd_large = "r6gd.large",
    r6gd_xlarge = "r6gd.xlarge",
    r6gd_2xlarge = "r6gd.2xlarge",
    r6gd_4xlarge = "r6gd.4xlarge",
    r6gd_8xlarge = "r6gd.8xlarge",
    r6gd_12xlarge = "r6gd.12xlarge",
    r6gd_16xlarge = "r6gd.16xlarge",
    r6gd_metal = "r6gd.metal",
    r6i_large = "r6i.large",
    r6i_xlarge = "r6i.xlarge",
    r6i_2xlarge = "r6i.2xlarge",
    r6i_4xlarge = "r6i.4xlarge",
    r6i_8xlarge = "r6i.8xlarge",
    r6i_12xlarge = "r6i.12xlarge",
    r6i_16xlarge = "r6i.16xlarge",
    r6i_24xlarge = "r6i.24xlarge",
    r6i_32xlarge = "r6i.32xlarge",
    r6i_metal = "r6i.metal",
    t1_micro = "t1.micro",
    t2_nano = "t2.nano",
    t2_micro = "t2.micro",
    t2_small = "t2.small",
    t2_medium = "t2.medium",
    t2_large = "t2.large",
    t2_xlarge = "t2.xlarge",
    t2_2xlarge = "t2.2xlarge",
    t3_nano = "t3.nano",
    t3_micro = "t3.micro",
    t3_small = "t3.small",
    t3_medium = "t3.medium",
    t3_large = "t3.large",
    t3_xlarge = "t3.xlarge",
    t3_2xlarge = "t3.2xlarge",
    t3a_nano = "t3a.nano",
    t3a_micro = "t3a.micro",
    t3a_small = "t3a.small",
    t3a_medium = "t3a.medium",
    t3a_large = "t3a.large",
    t3a_xlarge = "t3a.xlarge",
    t3a_2xlarge = "t3a.2xlarge",
    t4g_nano = "t4g.nano",
    t4g_micro = "t4g.micro",
    t4g_small = "t4g.small",
    t4g_medium = "t4g.medium",
    t4g_large = "t4g.large",
    t4g_xlarge = "t4g.xlarge",
    t4g_2xlarge = "t4g.2xlarge",
    u_6tb1_56xlarge = "u-6tb1.56xlarge",
    u_6tb1_112xlarge = "u-6tb1.112xlarge",
    u_9tb1_112xlarge = "u-9tb1.112xlarge",
    u_12tb1_112xlarge = "u-12tb1.112xlarge",
    u_6tb1_metal = "u-6tb1.metal",
    u_9tb1_metal = "u-9tb1.metal",
    u_12tb1_metal = "u-12tb1.metal",
    u_18tb1_metal = "u-18tb1.metal",
    u_24tb1_metal = "u-24tb1.metal",
    vt1_3xlarge = "vt1.3xlarge",
    vt1_6xlarge = "vt1.6xlarge",
    vt1_24xlarge = "vt1.24xlarge",
    x1_16xlarge = "x1.16xlarge",
    x1_32xlarge = "x1.32xlarge",
    x1e_xlarge = "x1e.xlarge",
    x1e_2xlarge = "x1e.2xlarge",
    x1e_4xlarge = "x1e.4xlarge",
    x1e_8xlarge = "x1e.8xlarge",
    x1e_16xlarge = "x1e.16xlarge",
    x1e_32xlarge = "x1e.32xlarge",
    x2iezn_2xlarge = "x2iezn.2xlarge",
    x2iezn_4xlarge = "x2iezn.4xlarge",
    x2iezn_6xlarge = "x2iezn.6xlarge",
    x2iezn_8xlarge = "x2iezn.8xlarge",
    x2iezn_12xlarge = "x2iezn.12xlarge",
    x2iezn_metal = "x2iezn.metal",
    x2gd_medium = "x2gd.medium",
    x2gd_large = "x2gd.large",
    x2gd_xlarge = "x2gd.xlarge",
    x2gd_2xlarge = "x2gd.2xlarge",
    x2gd_4xlarge = "x2gd.4xlarge",
    x2gd_8xlarge = "x2gd.8xlarge",
    x2gd_12xlarge = "x2gd.12xlarge",
    x2gd_16xlarge = "x2gd.16xlarge",
    x2gd_metal = "x2gd.metal",
    z1d_large = "z1d.large",
    z1d_xlarge = "z1d.xlarge",
    z1d_2xlarge = "z1d.2xlarge",
    z1d_3xlarge = "z1d.3xlarge",
    z1d_6xlarge = "z1d.6xlarge",
    z1d_12xlarge = "z1d.12xlarge",
    z1d_metal = "z1d.metal",
    x2idn_16xlarge = "x2idn.16xlarge",
    x2idn_24xlarge = "x2idn.24xlarge",
    x2idn_32xlarge = "x2idn.32xlarge",
    x2iedn_xlarge = "x2iedn.xlarge",
    x2iedn_2xlarge = "x2iedn.2xlarge",
    x2iedn_4xlarge = "x2iedn.4xlarge",
    x2iedn_8xlarge = "x2iedn.8xlarge",
    x2iedn_16xlarge = "x2iedn.16xlarge",
    x2iedn_24xlarge = "x2iedn.24xlarge",
    x2iedn_32xlarge = "x2iedn.32xlarge",
    c6a_large = "c6a.large",
    c6a_xlarge = "c6a.xlarge",
    c6a_2xlarge = "c6a.2xlarge",
    c6a_4xlarge = "c6a.4xlarge",
    c6a_8xlarge = "c6a.8xlarge",
    c6a_12xlarge = "c6a.12xlarge",
    c6a_16xlarge = "c6a.16xlarge",
    c6a_24xlarge = "c6a.24xlarge",
    c6a_32xlarge = "c6a.32xlarge",
    c6a_48xlarge = "c6a.48xlarge",
    c6a_metal = "c6a.metal",
    m6a_metal = "m6a.metal",
    i4i_large = "i4i.large",
    i4i_xlarge = "i4i.xlarge",
    i4i_2xlarge = "i4i.2xlarge",
    i4i_4xlarge = "i4i.4xlarge",
    i4i_8xlarge = "i4i.8xlarge",
    i4i_16xlarge = "i4i.16xlarge",
    i4i_32xlarge = "i4i.32xlarge",
    i4i_metal = "i4i.metal",
    x2idn_metal = "x2idn.metal",
    x2iedn_metal = "x2iedn.metal",
    c7g_medium = "c7g.medium",
    c7g_large = "c7g.large",
    c7g_xlarge = "c7g.xlarge",
    c7g_2xlarge = "c7g.2xlarge",
    c7g_4xlarge = "c7g.4xlarge",
    c7g_8xlarge = "c7g.8xlarge",
    c7g_12xlarge = "c7g.12xlarge",
    c7g_16xlarge = "c7g.16xlarge",
    mac2_metal = "mac2.metal",
    c6id_large = "c6id.large",
    c6id_xlarge = "c6id.xlarge",
    c6id_2xlarge = "c6id.2xlarge",
    c6id_4xlarge = "c6id.4xlarge",
    c6id_8xlarge = "c6id.8xlarge",
    c6id_12xlarge = "c6id.12xlarge",
    c6id_16xlarge = "c6id.16xlarge",
    c6id_24xlarge = "c6id.24xlarge",
    c6id_32xlarge = "c6id.32xlarge",
    c6id_metal = "c6id.metal",
    m6id_large = "m6id.large",
    m6id_xlarge = "m6id.xlarge",
    m6id_2xlarge = "m6id.2xlarge",
    m6id_4xlarge = "m6id.4xlarge",
    m6id_8xlarge = "m6id.8xlarge",
    m6id_12xlarge = "m6id.12xlarge",
    m6id_16xlarge = "m6id.16xlarge",
    m6id_24xlarge = "m6id.24xlarge",
    m6id_32xlarge = "m6id.32xlarge",
    m6id_metal = "m6id.metal",
    r6id_large = "r6id.large",
    r6id_xlarge = "r6id.xlarge",
    r6id_2xlarge = "r6id.2xlarge",
    r6id_4xlarge = "r6id.4xlarge",
    r6id_8xlarge = "r6id.8xlarge",
    r6id_12xlarge = "r6id.12xlarge",
    r6id_16xlarge = "r6id.16xlarge",
    r6id_24xlarge = "r6id.24xlarge",
    r6id_32xlarge = "r6id.32xlarge",
    r6id_metal = "r6id.metal",
    r6a_large = "r6a.large",
    r6a_xlarge = "r6a.xlarge",
    r6a_2xlarge = "r6a.2xlarge",
    r6a_4xlarge = "r6a.4xlarge",
    r6a_8xlarge = "r6a.8xlarge",
    r6a_12xlarge = "r6a.12xlarge",
    r6a_16xlarge = "r6a.16xlarge",
    r6a_24xlarge = "r6a.24xlarge",
    r6a_32xlarge = "r6a.32xlarge",
    r6a_48xlarge = "r6a.48xlarge",
    r6a_metal = "r6a.metal",
    p4de_24xlarge = "p4de.24xlarge",
    u_3tb1_56xlarge = "u-3tb1.56xlarge",
    u_18tb1_112xlarge = "u-18tb1.112xlarge",
    u_24tb1_112xlarge = "u-24tb1.112xlarge",
    trn1_2xlarge = "trn1.2xlarge",
    trn1_32xlarge = "trn1.32xlarge",
    hpc6id_32xlarge = "hpc6id.32xlarge",
    c6in_large = "c6in.large",
    c6in_xlarge = "c6in.xlarge",
    c6in_2xlarge = "c6in.2xlarge",
    c6in_4xlarge = "c6in.4xlarge",
    c6in_8xlarge = "c6in.8xlarge",
    c6in_12xlarge = "c6in.12xlarge",
    c6in_16xlarge = "c6in.16xlarge",
    c6in_24xlarge = "c6in.24xlarge",
    c6in_32xlarge = "c6in.32xlarge",
    m6in_large = "m6in.large",
    m6in_xlarge = "m6in.xlarge",
    m6in_2xlarge = "m6in.2xlarge",
    m6in_4xlarge = "m6in.4xlarge",
    m6in_8xlarge = "m6in.8xlarge",
    m6in_12xlarge = "m6in.12xlarge",
    m6in_16xlarge = "m6in.16xlarge",
    m6in_24xlarge = "m6in.24xlarge",
    m6in_32xlarge = "m6in.32xlarge",
    m6idn_large = "m6idn.large",
    m6idn_xlarge = "m6idn.xlarge",
    m6idn_2xlarge = "m6idn.2xlarge",
    m6idn_4xlarge = "m6idn.4xlarge",
    m6idn_8xlarge = "m6idn.8xlarge",
    m6idn_12xlarge = "m6idn.12xlarge",
    m6idn_16xlarge = "m6idn.16xlarge",
    m6idn_24xlarge = "m6idn.24xlarge",
    m6idn_32xlarge = "m6idn.32xlarge",
    r6in_large = "r6in.large",
    r6in_xlarge = "r6in.xlarge",
    r6in_2xlarge = "r6in.2xlarge",
    r6in_4xlarge = "r6in.4xlarge",
    r6in_8xlarge = "r6in.8xlarge",
    r6in_12xlarge = "r6in.12xlarge",
    r6in_16xlarge = "r6in.16xlarge",
    r6in_24xlarge = "r6in.24xlarge",
    r6in_32xlarge = "r6in.32xlarge",
    r6idn_large = "r6idn.large",
    r6idn_xlarge = "r6idn.xlarge",
    r6idn_2xlarge = "r6idn.2xlarge",
    r6idn_4xlarge = "r6idn.4xlarge",
    r6idn_8xlarge = "r6idn.8xlarge",
    r6idn_12xlarge = "r6idn.12xlarge",
    r6idn_16xlarge = "r6idn.16xlarge",
    r6idn_24xlarge = "r6idn.24xlarge",
    r6idn_32xlarge = "r6idn.32xlarge",
    c7g_metal = "c7g.metal",
    m7g_medium = "m7g.medium",
    m7g_large = "m7g.large",
    m7g_xlarge = "m7g.xlarge",
    m7g_2xlarge = "m7g.2xlarge",
    m7g_4xlarge = "m7g.4xlarge",
    m7g_8xlarge = "m7g.8xlarge",
    m7g_12xlarge = "m7g.12xlarge",
    m7g_16xlarge = "m7g.16xlarge",
    m7g_metal = "m7g.metal",
    r7g_medium = "r7g.medium",
    r7g_large = "r7g.large",
    r7g_xlarge = "r7g.xlarge",
    r7g_2xlarge = "r7g.2xlarge",
    r7g_4xlarge = "r7g.4xlarge",
    r7g_8xlarge = "r7g.8xlarge",
    r7g_12xlarge = "r7g.12xlarge",
    r7g_16xlarge = "r7g.16xlarge",
    r7g_metal = "r7g.metal",
    c6in_metal = "c6in.metal",
    m6in_metal = "m6in.metal",
    m6idn_metal = "m6idn.metal",
    r6in_metal = "r6in.metal",
    r6idn_metal = "r6idn.metal",
    inf2_xlarge = "inf2.xlarge",
    inf2_8xlarge = "inf2.8xlarge",
    inf2_24xlarge = "inf2.24xlarge",
    inf2_48xlarge = "inf2.48xlarge",
    trn1n_32xlarge = "trn1n.32xlarge",
    i4g_large = "i4g.large",
    i4g_xlarge = "i4g.xlarge",
    i4g_2xlarge = "i4g.2xlarge",
    i4g_4xlarge = "i4g.4xlarge",
    i4g_8xlarge = "i4g.8xlarge",
    i4g_16xlarge = "i4g.16xlarge",
    hpc7g_4xlarge = "hpc7g.4xlarge",
    hpc7g_8xlarge = "hpc7g.8xlarge",
    hpc7g_16xlarge = "hpc7g.16xlarge",
    c7gn_medium = "c7gn.medium",
    c7gn_large = "c7gn.large",
    c7gn_xlarge = "c7gn.xlarge",
    c7gn_2xlarge = "c7gn.2xlarge",
    c7gn_4xlarge = "c7gn.4xlarge",
    c7gn_8xlarge = "c7gn.8xlarge",
    c7gn_12xlarge = "c7gn.12xlarge",
    c7gn_16xlarge = "c7gn.16xlarge",
    p5_48xlarge = "p5.48xlarge",
    m7i_large = "m7i.large",
    m7i_xlarge = "m7i.xlarge",
    m7i_2xlarge = "m7i.2xlarge",
    m7i_4xlarge = "m7i.4xlarge",
    m7i_8xlarge = "m7i.8xlarge",
    m7i_12xlarge = "m7i.12xlarge",
    m7i_16xlarge = "m7i.16xlarge",
    m7i_24xlarge = "m7i.24xlarge",
    m7i_48xlarge = "m7i.48xlarge",
    m7i_flex_large = "m7i-flex.large",
    m7i_flex_xlarge = "m7i-flex.xlarge",
    m7i_flex_2xlarge = "m7i-flex.2xlarge",
    m7i_flex_4xlarge = "m7i-flex.4xlarge",
    m7i_flex_8xlarge = "m7i-flex.8xlarge",
    m7a_medium = "m7a.medium",
    m7a_large = "m7a.large",
    m7a_xlarge = "m7a.xlarge",
    m7a_2xlarge = "m7a.2xlarge",
    m7a_4xlarge = "m7a.4xlarge",
    m7a_8xlarge = "m7a.8xlarge",
    m7a_12xlarge = "m7a.12xlarge",
    m7a_16xlarge = "m7a.16xlarge",
    m7a_24xlarge = "m7a.24xlarge",
    m7a_32xlarge = "m7a.32xlarge",
    m7a_48xlarge = "m7a.48xlarge",
    m7a_metal_48xl = "m7a.metal-48xl",
    hpc7a_12xlarge = "hpc7a.12xlarge",
    hpc7a_24xlarge = "hpc7a.24xlarge",
    hpc7a_48xlarge = "hpc7a.48xlarge",
    hpc7a_96xlarge = "hpc7a.96xlarge",
    c7gd_medium = "c7gd.medium",
    c7gd_large = "c7gd.large",
    c7gd_xlarge = "c7gd.xlarge",
    c7gd_2xlarge = "c7gd.2xlarge",
    c7gd_4xlarge = "c7gd.4xlarge",
    c7gd_8xlarge = "c7gd.8xlarge",
    c7gd_12xlarge = "c7gd.12xlarge",
    c7gd_16xlarge = "c7gd.16xlarge",
    m7gd_medium = "m7gd.medium",
    m7gd_large = "m7gd.large",
    m7gd_xlarge = "m7gd.xlarge",
    m7gd_2xlarge = "m7gd.2xlarge",
    m7gd_4xlarge = "m7gd.4xlarge",
    m7gd_8xlarge = "m7gd.8xlarge",
    m7gd_12xlarge = "m7gd.12xlarge",
    m7gd_16xlarge = "m7gd.16xlarge",
    r7gd_medium = "r7gd.medium",
    r7gd_large = "r7gd.large",
    r7gd_xlarge = "r7gd.xlarge",
    r7gd_2xlarge = "r7gd.2xlarge",
    r7gd_4xlarge = "r7gd.4xlarge",
    r7gd_8xlarge = "r7gd.8xlarge",
    r7gd_12xlarge = "r7gd.12xlarge",
    r7gd_16xlarge = "r7gd.16xlarge",
    r7a_medium = "r7a.medium",
    r7a_large = "r7a.large",
    r7a_xlarge = "r7a.xlarge",
    r7a_2xlarge = "r7a.2xlarge",
    r7a_4xlarge = "r7a.4xlarge",
    r7a_8xlarge = "r7a.8xlarge",
    r7a_12xlarge = "r7a.12xlarge",
    r7a_16xlarge = "r7a.16xlarge",
    r7a_24xlarge = "r7a.24xlarge",
    r7a_32xlarge = "r7a.32xlarge",
    r7a_48xlarge = "r7a.48xlarge",
    c7i_large = "c7i.large",
    c7i_xlarge = "c7i.xlarge",
    c7i_2xlarge = "c7i.2xlarge",
    c7i_4xlarge = "c7i.4xlarge",
    c7i_8xlarge = "c7i.8xlarge",
    c7i_12xlarge = "c7i.12xlarge",
    c7i_16xlarge = "c7i.16xlarge",
    c7i_24xlarge = "c7i.24xlarge",
    c7i_48xlarge = "c7i.48xlarge",
    mac2_m2pro_metal = "mac2-m2pro.metal",
    r7iz_large = "r7iz.large",
    r7iz_xlarge = "r7iz.xlarge",
    r7iz_2xlarge = "r7iz.2xlarge",
    r7iz_4xlarge = "r7iz.4xlarge",
    r7iz_8xlarge = "r7iz.8xlarge",
    r7iz_12xlarge = "r7iz.12xlarge",
    r7iz_16xlarge = "r7iz.16xlarge",
    r7iz_32xlarge = "r7iz.32xlarge",
    c7a_medium = "c7a.medium",
    c7a_large = "c7a.large",
    c7a_xlarge = "c7a.xlarge",
    c7a_2xlarge = "c7a.2xlarge",
    c7a_4xlarge = "c7a.4xlarge",
    c7a_8xlarge = "c7a.8xlarge",
    c7a_12xlarge = "c7a.12xlarge",
    c7a_16xlarge = "c7a.16xlarge",
    c7a_24xlarge = "c7a.24xlarge",
    c7a_32xlarge = "c7a.32xlarge",
    c7a_48xlarge = "c7a.48xlarge",
    c7a_metal_48xl = "c7a.metal-48xl",
    r7a_metal_48xl = "r7a.metal-48xl",
    r7i_large = "r7i.large",
    r7i_xlarge = "r7i.xlarge",
    r7i_2xlarge = "r7i.2xlarge",
    r7i_4xlarge = "r7i.4xlarge",
    r7i_8xlarge = "r7i.8xlarge",
    r7i_12xlarge = "r7i.12xlarge",
    r7i_16xlarge = "r7i.16xlarge",
    r7i_24xlarge = "r7i.24xlarge",
    r7i_48xlarge = "r7i.48xlarge",
    dl2q_24xlarge = "dl2q.24xlarge",
    mac2_m2_metal = "mac2-m2.metal",
    i4i_12xlarge = "i4i.12xlarge",
    i4i_24xlarge = "i4i.24xlarge",
    c7i_metal_24xl = "c7i.metal-24xl",
    c7i_metal_48xl = "c7i.metal-48xl",
    m7i_metal_24xl = "m7i.metal-24xl",
    m7i_metal_48xl = "m7i.metal-48xl",
    r7i_metal_24xl = "r7i.metal-24xl",
    r7i_metal_48xl = "r7i.metal-48xl",
    r7iz_metal_16xl = "r7iz.metal-16xl",
    r7iz_metal_32xl = "r7iz.metal-32xl",
    c7gd_metal = "c7gd.metal",
    m7gd_metal = "m7gd.metal",
    r7gd_metal = "r7gd.metal",
    g6_xlarge = "g6.xlarge",
    g6_2xlarge = "g6.2xlarge",
    g6_4xlarge = "g6.4xlarge",
    g6_8xlarge = "g6.8xlarge",
    g6_12xlarge = "g6.12xlarge",
    g6_16xlarge = "g6.16xlarge",
    g6_24xlarge = "g6.24xlarge",
    g6_48xlarge = "g6.48xlarge",
    gr6_4xlarge = "gr6.4xlarge",
    gr6_8xlarge = "gr6.8xlarge",
    c7i_flex_large = "c7i-flex.large",
    c7i_flex_xlarge = "c7i-flex.xlarge",
    c7i_flex_2xlarge = "c7i-flex.2xlarge",
    c7i_flex_4xlarge = "c7i-flex.4xlarge",
    c7i_flex_8xlarge = "c7i-flex.8xlarge",
    u7i_12tb_224xlarge = "u7i-12tb.224xlarge",
    u7in_16tb_224xlarge = "u7in-16tb.224xlarge",
    u7in_24tb_224xlarge = "u7in-24tb.224xlarge",
    u7in_32tb_224xlarge = "u7in-32tb.224xlarge",
    u7ib_12tb_224xlarge = "u7ib-12tb.224xlarge",
    c7gn_metal = "c7gn.metal",
    r8g_medium = "r8g.medium",
    r8g_large = "r8g.large",
    r8g_xlarge = "r8g.xlarge",
    r8g_2xlarge = "r8g.2xlarge",
    r8g_4xlarge = "r8g.4xlarge",
    r8g_8xlarge = "r8g.8xlarge",
    r8g_12xlarge = "r8g.12xlarge",
    r8g_16xlarge = "r8g.16xlarge",
    r8g_24xlarge = "r8g.24xlarge",
    r8g_48xlarge = "r8g.48xlarge",
    r8g_metal_24xl = "r8g.metal-24xl",
    r8g_metal_48xl = "r8g.metal-48xl",
    mac2_m1ultra_metal = "mac2-m1ultra.metal",
    g6e_xlarge = "g6e.xlarge",
    g6e_2xlarge = "g6e.2xlarge",
    g6e_4xlarge = "g6e.4xlarge",
    g6e_8xlarge = "g6e.8xlarge",
    g6e_12xlarge = "g6e.12xlarge",
    g6e_16xlarge = "g6e.16xlarge",
    g6e_24xlarge = "g6e.24xlarge",
    g6e_48xlarge = "g6e.48xlarge",
    c8g_medium = "c8g.medium",
    c8g_large = "c8g.large",
    c8g_xlarge = "c8g.xlarge",
    c8g_2xlarge = "c8g.2xlarge",
    c8g_4xlarge = "c8g.4xlarge",
    c8g_8xlarge = "c8g.8xlarge",
    c8g_12xlarge = "c8g.12xlarge",
    c8g_16xlarge = "c8g.16xlarge",
    c8g_24xlarge = "c8g.24xlarge",
    c8g_48xlarge = "c8g.48xlarge",
    c8g_metal_24xl = "c8g.metal-24xl",
    c8g_metal_48xl = "c8g.metal-48xl",
    m8g_medium = "m8g.medium",
    m8g_large = "m8g.large",
    m8g_xlarge = "m8g.xlarge",
    m8g_2xlarge = "m8g.2xlarge",
    m8g_4xlarge = "m8g.4xlarge",
    m8g_8xlarge = "m8g.8xlarge",
    m8g_12xlarge = "m8g.12xlarge",
    m8g_16xlarge = "m8g.16xlarge",
    m8g_24xlarge = "m8g.24xlarge",
    m8g_48xlarge = "m8g.48xlarge",
    m8g_metal_24xl = "m8g.metal-24xl",
    m8g_metal_48xl = "m8g.metal-48xl",
    x8g_medium = "x8g.medium",
    x8g_large = "x8g.large",
    x8g_xlarge = "x8g.xlarge",
    x8g_2xlarge = "x8g.2xlarge",
    x8g_4xlarge = "x8g.4xlarge",
    x8g_8xlarge = "x8g.8xlarge",
    x8g_12xlarge = "x8g.12xlarge",
    x8g_16xlarge = "x8g.16xlarge",
    x8g_24xlarge = "x8g.24xlarge",
    x8g_48xlarge = "x8g.48xlarge",
    x8g_metal_24xl = "x8g.metal-24xl",
    x8g_metal_48xl = "x8g.metal-48xl",
    i7ie_large = "i7ie.large",
    i7ie_xlarge = "i7ie.xlarge",
    i7ie_2xlarge = "i7ie.2xlarge",
    i7ie_3xlarge = "i7ie.3xlarge",
    i7ie_6xlarge = "i7ie.6xlarge",
    i7ie_12xlarge = "i7ie.12xlarge",
    i7ie_18xlarge = "i7ie.18xlarge",
    i7ie_24xlarge = "i7ie.24xlarge",
    i7ie_48xlarge = "i7ie.48xlarge",
    i8g_large = "i8g.large",
    i8g_xlarge = "i8g.xlarge",
    i8g_2xlarge = "i8g.2xlarge",
    i8g_4xlarge = "i8g.4xlarge",
    i8g_8xlarge = "i8g.8xlarge",
    i8g_12xlarge = "i8g.12xlarge",
    i8g_16xlarge = "i8g.16xlarge",
    i8g_24xlarge = "i8g.24xlarge",
    i8g_metal_24xl = "i8g.metal-24xl",
    u7i_6tb_112xlarge = "u7i-6tb.112xlarge",
    u7i_8tb_112xlarge = "u7i-8tb.112xlarge",
    u7inh_32tb_480xlarge = "u7inh-32tb.480xlarge",
    p5e_48xlarge = "p5e.48xlarge",
    p5en_48xlarge = "p5en.48xlarge",
    f2_12xlarge = "f2.12xlarge",
    f2_48xlarge = "f2.48xlarge",
    trn2_48xlarge = "trn2.48xlarge",
    c7i_flex_12xlarge = "c7i-flex.12xlarge",
    c7i_flex_16xlarge = "c7i-flex.16xlarge",
    m7i_flex_12xlarge = "m7i-flex.12xlarge",
    m7i_flex_16xlarge = "m7i-flex.16xlarge",
    i7ie_metal_24xl = "i7ie.metal-24xl",
    i7ie_metal_48xl = "i7ie.metal-48xl",
    i8g_48xlarge = "i8g.48xlarge",
    c8gd_medium = "c8gd.medium",
    c8gd_large = "c8gd.large",
    c8gd_xlarge = "c8gd.xlarge",
    c8gd_2xlarge = "c8gd.2xlarge",
    c8gd_4xlarge = "c8gd.4xlarge",
    c8gd_8xlarge = "c8gd.8xlarge",
    c8gd_12xlarge = "c8gd.12xlarge",
    c8gd_16xlarge = "c8gd.16xlarge",
    c8gd_24xlarge = "c8gd.24xlarge",
    c8gd_48xlarge = "c8gd.48xlarge",
    c8gd_metal_24xl = "c8gd.metal-24xl",
    c8gd_metal_48xl = "c8gd.metal-48xl",
    i7i_large = "i7i.large",
    i7i_xlarge = "i7i.xlarge",
    i7i_2xlarge = "i7i.2xlarge",
    i7i_4xlarge = "i7i.4xlarge",
    i7i_8xlarge = "i7i.8xlarge",
    i7i_12xlarge = "i7i.12xlarge",
    i7i_16xlarge = "i7i.16xlarge",
    i7i_24xlarge = "i7i.24xlarge",
    i7i_48xlarge = "i7i.48xlarge",
    i7i_metal_24xl = "i7i.metal-24xl",
    i7i_metal_48xl = "i7i.metal-48xl",
    p6_b200_48xlarge = "p6-b200.48xlarge",
    m8gd_medium = "m8gd.medium",
    m8gd_large = "m8gd.large",
    m8gd_xlarge = "m8gd.xlarge",
    m8gd_2xlarge = "m8gd.2xlarge",
    m8gd_4xlarge = "m8gd.4xlarge",
    m8gd_8xlarge = "m8gd.8xlarge",
    m8gd_12xlarge = "m8gd.12xlarge",
    m8gd_16xlarge = "m8gd.16xlarge",
    m8gd_24xlarge = "m8gd.24xlarge",
    m8gd_48xlarge = "m8gd.48xlarge",
    m8gd_metal_24xl = "m8gd.metal-24xl",
    m8gd_metal_48xl = "m8gd.metal-48xl",
    r8gd_medium = "r8gd.medium",
    r8gd_large = "r8gd.large",
    r8gd_xlarge = "r8gd.xlarge",
    r8gd_2xlarge = "r8gd.2xlarge",
    r8gd_4xlarge = "r8gd.4xlarge",
    r8gd_8xlarge = "r8gd.8xlarge",
    r8gd_12xlarge = "r8gd.12xlarge",
    r8gd_16xlarge = "r8gd.16xlarge",
    r8gd_24xlarge = "r8gd.24xlarge",
    r8gd_48xlarge = "r8gd.48xlarge",
    r8gd_metal_24xl = "r8gd.metal-24xl",
    r8gd_metal_48xl = "r8gd.metal-48xl",
    c8gn_medium = "c8gn.medium",
    c8gn_large = "c8gn.large",
    c8gn_xlarge = "c8gn.xlarge",
    c8gn_2xlarge = "c8gn.2xlarge",
    c8gn_4xlarge = "c8gn.4xlarge",
    c8gn_8xlarge = "c8gn.8xlarge",
    c8gn_12xlarge = "c8gn.12xlarge",
    c8gn_16xlarge = "c8gn.16xlarge",
    c8gn_24xlarge = "c8gn.24xlarge",
    c8gn_48xlarge = "c8gn.48xlarge",
    c8gn_metal_24xl = "c8gn.metal-24xl",
    c8gn_metal_48xl = "c8gn.metal-48xl",
    f2_6xlarge = "f2.6xlarge",
    p6e_gb200_36xlarge = "p6e-gb200.36xlarge",
    g6f_large = "g6f.large",
    g6f_xlarge = "g6f.xlarge",
    g6f_2xlarge = "g6f.2xlarge",
    g6f_4xlarge = "g6f.4xlarge",
    gr6f_4xlarge = "gr6f.4xlarge",
    p5_4xlarge = "p5.4xlarge",
    r8i_large = "r8i.large",
    r8i_xlarge = "r8i.xlarge",
    r8i_2xlarge = "r8i.2xlarge",
    r8i_4xlarge = "r8i.4xlarge",
    r8i_8xlarge = "r8i.8xlarge",
    r8i_12xlarge = "r8i.12xlarge",
    r8i_16xlarge = "r8i.16xlarge",
    r8i_24xlarge = "r8i.24xlarge",
    r8i_32xlarge = "r8i.32xlarge",
    r8i_48xlarge = "r8i.48xlarge",
    r8i_96xlarge = "r8i.96xlarge",
    r8i_metal_48xl = "r8i.metal-48xl",
    r8i_metal_96xl = "r8i.metal-96xl",
    r8i_flex_large = "r8i-flex.large",
    r8i_flex_xlarge = "r8i-flex.xlarge",
    r8i_flex_2xlarge = "r8i-flex.2xlarge",
    r8i_flex_4xlarge = "r8i-flex.4xlarge",
    r8i_flex_8xlarge = "r8i-flex.8xlarge",
    r8i_flex_12xlarge = "r8i-flex.12xlarge",
    r8i_flex_16xlarge = "r8i-flex.16xlarge",
    m8i_large = "m8i.large",
    m8i_xlarge = "m8i.xlarge",
    m8i_2xlarge = "m8i.2xlarge",
    m8i_4xlarge = "m8i.4xlarge",
    m8i_8xlarge = "m8i.8xlarge",
    m8i_12xlarge = "m8i.12xlarge",
    m8i_16xlarge = "m8i.16xlarge",
    m8i_24xlarge = "m8i.24xlarge",
    m8i_32xlarge = "m8i.32xlarge",
    m8i_48xlarge = "m8i.48xlarge",
    m8i_96xlarge = "m8i.96xlarge",
    m8i_metal_48xl = "m8i.metal-48xl",
    m8i_metal_96xl = "m8i.metal-96xl",
    m8i_flex_large = "m8i-flex.large",
    m8i_flex_xlarge = "m8i-flex.xlarge",
    m8i_flex_2xlarge = "m8i-flex.2xlarge",
    m8i_flex_4xlarge = "m8i-flex.4xlarge",
    m8i_flex_8xlarge = "m8i-flex.8xlarge",
    m8i_flex_12xlarge = "m8i-flex.12xlarge",
    m8i_flex_16xlarge = "m8i-flex.16xlarge",
    i8ge_large = "i8ge.large",
    i8ge_xlarge = "i8ge.xlarge",
    i8ge_2xlarge = "i8ge.2xlarge",
    i8ge_3xlarge = "i8ge.3xlarge",
    i8ge_6xlarge = "i8ge.6xlarge",
    i8ge_12xlarge = "i8ge.12xlarge",
    i8ge_18xlarge = "i8ge.18xlarge",
    i8ge_24xlarge = "i8ge.24xlarge",
    i8ge_48xlarge = "i8ge.48xlarge",
    i8ge_metal_24xl = "i8ge.metal-24xl",
    i8ge_metal_48xl = "i8ge.metal-48xl",
    mac_m4_metal = "mac-m4.metal",
    mac_m4pro_metal = "mac-m4pro.metal",
    r8gn_medium = "r8gn.medium",
    r8gn_large = "r8gn.large",
    r8gn_xlarge = "r8gn.xlarge",
    r8gn_2xlarge = "r8gn.2xlarge",
    r8gn_4xlarge = "r8gn.4xlarge",
    r8gn_8xlarge = "r8gn.8xlarge",
    r8gn_12xlarge = "r8gn.12xlarge",
    r8gn_16xlarge = "r8gn.16xlarge",
    r8gn_24xlarge = "r8gn.24xlarge",
    r8gn_48xlarge = "r8gn.48xlarge",
    r8gn_metal_24xl = "r8gn.metal-24xl",
    r8gn_metal_48xl = "r8gn.metal-48xl",
    c8i_large = "c8i.large",
    c8i_xlarge = "c8i.xlarge",
    c8i_2xlarge = "c8i.2xlarge",
    c8i_4xlarge = "c8i.4xlarge",
    c8i_8xlarge = "c8i.8xlarge",
    c8i_12xlarge = "c8i.12xlarge",
    c8i_16xlarge = "c8i.16xlarge",
    c8i_24xlarge = "c8i.24xlarge",
    c8i_32xlarge = "c8i.32xlarge",
    c8i_48xlarge = "c8i.48xlarge",
    c8i_96xlarge = "c8i.96xlarge",
    c8i_metal_48xl = "c8i.metal-48xl",
    c8i_metal_96xl = "c8i.metal-96xl",
    c8i_flex_large = "c8i-flex.large",
    c8i_flex_xlarge = "c8i-flex.xlarge",
    c8i_flex_2xlarge = "c8i-flex.2xlarge",
    c8i_flex_4xlarge = "c8i-flex.4xlarge",
    c8i_flex_8xlarge = "c8i-flex.8xlarge",
    c8i_flex_12xlarge = "c8i-flex.12xlarge",
    c8i_flex_16xlarge = "c8i-flex.16xlarge",
    r8gb_medium = "r8gb.medium",
    r8gb_large = "r8gb.large",
    r8gb_xlarge = "r8gb.xlarge",
    r8gb_2xlarge = "r8gb.2xlarge",
    r8gb_4xlarge = "r8gb.4xlarge",
    r8gb_8xlarge = "r8gb.8xlarge",
    r8gb_12xlarge = "r8gb.12xlarge",
    r8gb_16xlarge = "r8gb.16xlarge",
    r8gb_24xlarge = "r8gb.24xlarge",
    r8gb_metal_24xl = "r8gb.metal-24xl",
    m8a_medium = "m8a.medium",
    m8a_large = "m8a.large",
    m8a_xlarge = "m8a.xlarge",
    m8a_2xlarge = "m8a.2xlarge",
    m8a_4xlarge = "m8a.4xlarge",
    m8a_8xlarge = "m8a.8xlarge",
    m8a_12xlarge = "m8a.12xlarge",
    m8a_16xlarge = "m8a.16xlarge",
    m8a_24xlarge = "m8a.24xlarge",
    m8a_48xlarge = "m8a.48xlarge",
    m8a_metal_24xl = "m8a.metal-24xl",
    m8a_metal_48xl = "m8a.metal-48xl",
    trn2_3xlarge = "trn2.3xlarge",
    r8a_medium = "r8a.medium",
    r8a_large = "r8a.large",
    r8a_xlarge = "r8a.xlarge",
    r8a_2xlarge = "r8a.2xlarge",
    r8a_4xlarge = "r8a.4xlarge",
    r8a_8xlarge = "r8a.8xlarge",
    r8a_12xlarge = "r8a.12xlarge",
    r8a_16xlarge = "r8a.16xlarge",
    r8a_24xlarge = "r8a.24xlarge",
    r8a_48xlarge = "r8a.48xlarge",
    r8a_metal_24xl = "r8a.metal-24xl",
    r8a_metal_48xl = "r8a.metal-48xl",
    p6_b300_48xlarge = "p6-b300.48xlarge",
    c8a_medium = "c8a.medium",
    c8a_large = "c8a.large",
    c8a_xlarge = "c8a.xlarge",
    c8a_2xlarge = "c8a.2xlarge",
    c8a_4xlarge = "c8a.4xlarge",
    c8a_8xlarge = "c8a.8xlarge",
    c8a_12xlarge = "c8a.12xlarge",
    c8a_16xlarge = "c8a.16xlarge",
    c8a_24xlarge = "c8a.24xlarge",
    c8a_48xlarge = "c8a.48xlarge",
    c8a_metal_24xl = "c8a.metal-24xl",
    c8a_metal_48xl = "c8a.metal-48xl",
    c8gb_12xlarge = "c8gb.12xlarge",
    c8gb_16xlarge = "c8gb.16xlarge",
    c8gb_24xlarge = "c8gb.24xlarge",
    c8gb_2xlarge = "c8gb.2xlarge",
    c8gb_4xlarge = "c8gb.4xlarge",
    c8gb_8xlarge = "c8gb.8xlarge",
    c8gb_large = "c8gb.large",
    c8gb_medium = "c8gb.medium",
    c8gb_metal_24xl = "c8gb.metal-24xl",
    c8gb_xlarge = "c8gb.xlarge",
    c8gb_48xlarge = "c8gb.48xlarge",
    c8gb_metal_48xl = "c8gb.metal-48xl",
    m8gb_12xlarge = "m8gb.12xlarge",
    m8gb_16xlarge = "m8gb.16xlarge",
    m8gb_24xlarge = "m8gb.24xlarge",
    m8gb_2xlarge = "m8gb.2xlarge",
    m8gb_4xlarge = "m8gb.4xlarge",
    m8gb_8xlarge = "m8gb.8xlarge",
    m8gb_large = "m8gb.large",
    m8gb_medium = "m8gb.medium",
    m8gb_xlarge = "m8gb.xlarge",
    m8gb_48xlarge = "m8gb.48xlarge",
    m8gb_metal_24xl = "m8gb.metal-24xl",
    m8gb_metal_48xl = "m8gb.metal-48xl",
    m8gn_12xlarge = "m8gn.12xlarge",
    m8gn_16xlarge = "m8gn.16xlarge",
    m8gn_24xlarge = "m8gn.24xlarge",
    m8gn_2xlarge = "m8gn.2xlarge",
    m8gn_48xlarge = "m8gn.48xlarge",
    m8gn_4xlarge = "m8gn.4xlarge",
    m8gn_8xlarge = "m8gn.8xlarge",
    m8gn_large = "m8gn.large",
    m8gn_medium = "m8gn.medium",
    m8gn_xlarge = "m8gn.xlarge",
    m8gn_metal_24xl = "m8gn.metal-24xl",
    m8gn_metal_48xl = "m8gn.metal-48xl",
    x8aedz_12xlarge = "x8aedz.12xlarge",
    x8aedz_24xlarge = "x8aedz.24xlarge",
    x8aedz_3xlarge = "x8aedz.3xlarge",
    x8aedz_6xlarge = "x8aedz.6xlarge",
    x8aedz_large = "x8aedz.large",
    x8aedz_metal_12xl = "x8aedz.metal-12xl",
    x8aedz_metal_24xl = "x8aedz.metal-24xl",
    x8aedz_xlarge = "x8aedz.xlarge",
    m8azn_medium = "m8azn.medium",
    m8azn_large = "m8azn.large",
    m8azn_xlarge = "m8azn.xlarge",
    m8azn_3xlarge = "m8azn.3xlarge",
    m8azn_6xlarge = "m8azn.6xlarge",
    m8azn_12xlarge = "m8azn.12xlarge",
    m8azn_24xlarge = "m8azn.24xlarge",
    m8azn_metal_12xl = "m8azn.metal-12xl",
    m8azn_metal_24xl = "m8azn.metal-24xl",
    x8i_large = "x8i.large",
    x8i_xlarge = "x8i.xlarge",
    x8i_2xlarge = "x8i.2xlarge",
    x8i_4xlarge = "x8i.4xlarge",
    x8i_8xlarge = "x8i.8xlarge",
    x8i_12xlarge = "x8i.12xlarge",
    x8i_16xlarge = "x8i.16xlarge",
    x8i_24xlarge = "x8i.24xlarge",
    x8i_32xlarge = "x8i.32xlarge",
    x8i_48xlarge = "x8i.48xlarge",
    x8i_64xlarge = "x8i.64xlarge",
    x8i_96xlarge = "x8i.96xlarge",
    x8i_metal_48xl = "x8i.metal-48xl",
    x8i_metal_96xl = "x8i.metal-96xl",
    mac_m4max_metal = "mac-m4max.metal",
    g7e_2xlarge = "g7e.2xlarge",
    g7e_4xlarge = "g7e.4xlarge",
    g7e_8xlarge = "g7e.8xlarge",
    g7e_12xlarge = "g7e.12xlarge",
    g7e_24xlarge = "g7e.24xlarge",
    g7e_48xlarge = "g7e.48xlarge",
    r8id_large = "r8id.large",
    r8id_xlarge = "r8id.xlarge",
    r8id_2xlarge = "r8id.2xlarge",
    r8id_4xlarge = "r8id.4xlarge",
    r8id_8xlarge = "r8id.8xlarge",
    r8id_12xlarge = "r8id.12xlarge",
    r8id_16xlarge = "r8id.16xlarge",
    r8id_24xlarge = "r8id.24xlarge",
    r8id_32xlarge = "r8id.32xlarge",
    r8id_48xlarge = "r8id.48xlarge",
    r8id_96xlarge = "r8id.96xlarge",
    r8id_metal_48xl = "r8id.metal-48xl",
    r8id_metal_96xl = "r8id.metal-96xl",
    c8id_large = "c8id.large",
    c8id_xlarge = "c8id.xlarge",
    c8id_2xlarge = "c8id.2xlarge",
    c8id_4xlarge = "c8id.4xlarge",
    c8id_8xlarge = "c8id.8xlarge",
    c8id_12xlarge = "c8id.12xlarge",
    c8id_16xlarge = "c8id.16xlarge",
    c8id_24xlarge = "c8id.24xlarge",
    c8id_32xlarge = "c8id.32xlarge",
    c8id_48xlarge = "c8id.48xlarge",
    c8id_96xlarge = "c8id.96xlarge",
    c8id_metal_48xl = "c8id.metal-48xl",
    c8id_metal_96xl = "c8id.metal-96xl",
    m8id_large = "m8id.large",
    m8id_xlarge = "m8id.xlarge",
    m8id_2xlarge = "m8id.2xlarge",
    m8id_4xlarge = "m8id.4xlarge",
    m8id_8xlarge = "m8id.8xlarge",
    m8id_12xlarge = "m8id.12xlarge",
    m8id_16xlarge = "m8id.16xlarge",
    m8id_24xlarge = "m8id.24xlarge",
    m8id_32xlarge = "m8id.32xlarge",
    m8id_48xlarge = "m8id.48xlarge",
    m8id_96xlarge = "m8id.96xlarge",
    m8id_metal_48xl = "m8id.metal-48xl",
    m8id_metal_96xl = "m8id.metal-96xl",
    hpc8a_96xlarge = "hpc8a.96xlarge",
}

M.FleetCapacityReservationTenancy = {
    default = "default",
}

M.CarrierGatewayState = {
    pending = "pending",
    available = "available",
    deleting = "deleting",
    deleted = "deleted",
}

M.ClientVpnAuthenticationType = {
    certificate_authentication = "certificate-authentication",
    directory_service_authentication = "directory-service-authentication",
    federated_authentication = "federated-authentication",
}

M.EndpointIpAddressType = {
    ipv4 = "ipv4",
    ipv6 = "ipv6",
    dual_stack = "dual-stack",
}

M.SelfServicePortal = {
    enabled = "enabled",
    disabled = "disabled",
}

M.TrafficIpAddressType = {
    ipv4 = "ipv4",
    ipv6 = "ipv6",
    dual_stack = "dual-stack",
}

M.TransportProtocol = {
    tcp = "tcp",
    udp = "udp",
}

M.ClientVpnEndpointStatusCode = {
    pending_associate = "pending-associate",
    available = "available",
    deleting = "deleting",
    deleted = "deleted",
    pending = "pending",
}

M.ClientVpnRouteStatusCode = {
    creating = "creating",
    active = "active",
    failed = "failed",
    deleting = "deleting",
}

M.GatewayType = {
    ipsec_1 = "ipsec.1",
}

M.BlockPublicAccessMode = {
    off = "off",
    block_bidirectional = "block-bidirectional",
    block_ingress = "block-ingress",
}

M.HostnameType = {
    ip_name = "ip-name",
    resource_name = "resource-name",
}

M.SubnetState = {
    pending = "pending",
    available = "available",
    unavailable = "unavailable",
    failed = "failed",
    failed_insufficient_capacity = "failed-insufficient-capacity",
}

M.VpcEncryptionControlMode = {
    monitor = "monitor",
    enforce = "enforce",
}

M.VpcEncryptionControlExclusionState = {
    enabling = "enabling",
    enabled = "enabled",
    disabling = "disabling",
    disabled = "disabled",
}

M.VpcEncryptionControlState = {
    enforce_in_progress = "enforce-in-progress",
    monitor_in_progress = "monitor-in-progress",
    enforce_failed = "enforce-failed",
    monitor_failed = "monitor-failed",
    deleting = "deleting",
    deleted = "deleted",
    available = "available",
    creating = "creating",
    delete_failed = "delete-failed",
}

M.Tenancy = {
    default = "default",
    dedicated = "dedicated",
    host = "host",
}

M.VpcState = {
    pending = "pending",
    available = "available",
}

M.MacSystemIntegrityProtectionSettingStatus = {
    enabled = "enabled",
    disabled = "disabled",
}

M.MacModificationTaskState = {
    successful = "successful",
    failed = "failed",
    inprogress = "in-progress",
    pending = "pending",
}

M.MacModificationTaskType = {
    SIPModification = "sip-modification",
    VolumeOwnershipDelegation = "volume-ownership-delegation",
}

M.FleetExcessCapacityTerminationPolicy = {
    NO_TERMINATION = "no-termination",
    TERMINATION = "termination",
}

M.BareMetal = {
    INCLUDED = "included",
    REQUIRED = "required",
    EXCLUDED = "excluded",
}

M.BurstablePerformance = {
    INCLUDED = "included",
    REQUIRED = "required",
    EXCLUDED = "excluded",
}

M.CpuManufacturer = {
    INTEL = "intel",
    AMD = "amd",
    AMAZON_WEB_SERVICES = "amazon-web-services",
    APPLE = "apple",
}

M.InstanceGeneration = {
    CURRENT = "current",
    PREVIOUS = "previous",
}

M.LocalStorage = {
    INCLUDED = "included",
    REQUIRED = "required",
    EXCLUDED = "excluded",
}

M.LocalStorageType = {
    HDD = "hdd",
    SSD = "ssd",
}

M.FleetOnDemandAllocationStrategy = {
    LOWEST_PRICE = "lowest-price",
    PRIORITIZED = "prioritized",
}

M.FleetCapacityReservationUsageStrategy = {
    USE_CAPACITY_RESERVATIONS_FIRST = "use-capacity-reservations-first",
}

M.FleetReservationType = {
    INTERRUPTIBLE_CAPACITY_RESERVATION = "interruptible-capacity-reservation",
}

M.SpotAllocationStrategy = {
    LOWEST_PRICE = "lowest-price",
    DIVERSIFIED = "diversified",
    CAPACITY_OPTIMIZED = "capacity-optimized",
    CAPACITY_OPTIMIZED_PRIORITIZED = "capacity-optimized-prioritized",
    PRICE_CAPACITY_OPTIMIZED = "price-capacity-optimized",
}

M.SpotInstanceInterruptionBehavior = {
    hibernate = "hibernate",
    stop = "stop",
    terminate = "terminate",
}

M.FleetReplacementStrategy = {
    LAUNCH = "launch",
    LAUNCH_BEFORE_TERMINATE = "launch-before-terminate",
}

M.DefaultTargetCapacityType = {
    SPOT = "spot",
    ON_DEMAND = "on-demand",
    CAPACITY_BLOCK = "capacity-block",
    RESERVED_CAPACITY = "reserved-capacity",
}

M.TargetCapacityUnitType = {
    VCPU = "vcpu",
    MEMORY_MIB = "memory-mib",
    UNITS = "units",
}

M.FleetType = {
    REQUEST = "request",
    MAINTAIN = "maintain",
    INSTANT = "instant",
}

M.InstanceLifecycle = {
    SPOT = "spot",
    ON_DEMAND = "on-demand",
    INTERRUPTIBLE_CAPACITY_RESERVATION = "interruptible-capacity-reservation",
}

M.PlatformValues = {
    Windows = "Windows",
}

M.DestinationFileFormat = {
    plain_text = "plain-text",
    parquet = "parquet",
}

M.LogDestinationType = {
    cloud_watch_logs = "cloud-watch-logs",
    s3 = "s3",
    kinesis_data_firehose = "kinesis-data-firehose",
}

M.FlowLogsResourceType = {
    VPC = "VPC",
    Subnet = "Subnet",
    NetworkInterface = "NetworkInterface",
    TransitGateway = "TransitGateway",
    TransitGatewayAttachment = "TransitGatewayAttachment",
    RegionalNatGateway = "RegionalNatGateway",
}

M.TrafficType = {
    ACCEPT = "ACCEPT",
    REJECT = "REJECT",
    ALL = "ALL",
}

M.SnapshotLocationEnum = {
    REGIONAL = "regional",
    LOCAL = "local",
}

M.IpAddressType = {
    ipv4 = "ipv4",
    dualstack = "dualstack",
    ipv6 = "ipv6",
}

M.Ec2InstanceConnectEndpointState = {
    create_in_progress = "create-in-progress",
    create_complete = "create-complete",
    create_failed = "create-failed",
    delete_in_progress = "delete-in-progress",
    delete_complete = "delete-complete",
    delete_failed = "delete-failed",
    update_in_progress = "update-in-progress",
    update_complete = "update-complete",
    update_failed = "update-failed",
}

M.ContainerFormat = {
    ova = "ova",
}

M.DiskImageFormat = {
    VMDK = "VMDK",
    RAW = "RAW",
    VHD = "VHD",
}

M.ExportEnvironment = {
    citrix = "citrix",
    vmware = "vmware",
    microsoft = "microsoft",
}

M.ExportTaskState = {
    active = "active",
    cancelling = "cancelling",
    cancelled = "cancelled",
    completed = "completed",
}

M.IpamMeteredAccount = {
    ipam_owner = "ipam-owner",
    resource_owner = "resource-owner",
}

M.IpamTier = {
    free = "free",
    advanced = "advanced",
}

M.IpamState = {
    create_in_progress = "create-in-progress",
    create_complete = "create-complete",
    create_failed = "create-failed",
    modify_in_progress = "modify-in-progress",
    modify_complete = "modify-complete",
    modify_failed = "modify-failed",
    delete_in_progress = "delete-in-progress",
    delete_complete = "delete-complete",
    delete_failed = "delete-failed",
    isolate_in_progress = "isolate-in-progress",
    isolate_complete = "isolate-complete",
    restore_in_progress = "restore-in-progress",
}

M.IpamExternalResourceVerificationTokenState = {
    CREATE_IN_PROGRESS = "create-in-progress",
    CREATE_COMPLETE = "create-complete",
    CREATE_FAILED = "create-failed",
    DELETE_IN_PROGRESS = "delete-in-progress",
    DELETE_COMPLETE = "delete-complete",
    DELETE_FAILED = "delete-failed",
}

M.TokenState = {
    valid = "valid",
    expired = "expired",
}

M.IpamPolicyState = {
    create_in_progress = "create-in-progress",
    create_complete = "create-complete",
    create_failed = "create-failed",
    modify_in_progress = "modify-in-progress",
    modify_complete = "modify-complete",
    modify_failed = "modify-failed",
    delete_in_progress = "delete-in-progress",
    delete_complete = "delete-complete",
    delete_failed = "delete-failed",
    isolate_in_progress = "isolate-in-progress",
    isolate_complete = "isolate-complete",
    restore_in_progress = "restore-in-progress",
}

M.IpamPoolAwsService = {
    ec2 = "ec2",
    global_services = "global-services",
}

M.IpamPoolPublicIpSource = {
    amazon = "amazon",
    byoip = "byoip",
}

M.IpamPoolSourceResourceType = {
    vpc = "vpc",
}

M.IpamScopeType = {
    public = "public",
    private = "private",
}

M.IpamPoolState = {
    create_in_progress = "create-in-progress",
    create_complete = "create-complete",
    create_failed = "create-failed",
    modify_in_progress = "modify-in-progress",
    modify_complete = "modify-complete",
    modify_failed = "modify-failed",
    delete_in_progress = "delete-in-progress",
    delete_complete = "delete-complete",
    delete_failed = "delete-failed",
    isolate_in_progress = "isolate-in-progress",
    isolate_complete = "isolate-complete",
    restore_in_progress = "restore-in-progress",
}

M.IpamPrefixListResolverRuleConditionOperation = {
    equals = "equals",
    not_equals = "not-equals",
    subnet_of = "subnet-of",
}

M.IpamResourceType = {
    vpc = "vpc",
    subnet = "subnet",
    eip = "eip",
    public_ipv4_pool = "public-ipv4-pool",
    ipv6_pool = "ipv6-pool",
    eni = "eni",
    anycast_ip_list = "anycast-ip-list",
}

M.IpamPrefixListResolverRuleType = {
    static_cidr = "static-cidr",
    ipam_resource_cidr = "ipam-resource-cidr",
    ipam_pool_cidr = "ipam-pool-cidr",
}

M.IpamPrefixListResolverVersionCreationStatus = {
    pending = "pending",
    success = "success",
    failure = "failure",
}

M.IpamPrefixListResolverState = {
    create_in_progress = "create-in-progress",
    create_complete = "create-complete",
    create_failed = "create-failed",
    modify_in_progress = "modify-in-progress",
    modify_complete = "modify-complete",
    modify_failed = "modify-failed",
    delete_in_progress = "delete-in-progress",
    delete_complete = "delete-complete",
    delete_failed = "delete-failed",
    isolate_in_progress = "isolate-in-progress",
    isolate_complete = "isolate-complete",
    restore_in_progress = "restore-in-progress",
}

M.IpamPrefixListResolverTargetState = {
    create_in_progress = "create-in-progress",
    create_complete = "create-complete",
    create_failed = "create-failed",
    modify_in_progress = "modify-in-progress",
    modify_complete = "modify-complete",
    modify_failed = "modify-failed",
    sync_in_progress = "sync-in-progress",
    sync_complete = "sync-complete",
    sync_failed = "sync-failed",
    delete_in_progress = "delete-in-progress",
    delete_complete = "delete-complete",
    delete_failed = "delete-failed",
    isolate_in_progress = "isolate-in-progress",
    isolate_complete = "isolate-complete",
    restore_in_progress = "restore-in-progress",
}

M.IpamResourceDiscoveryState = {
    CREATE_IN_PROGRESS = "create-in-progress",
    CREATE_COMPLETE = "create-complete",
    CREATE_FAILED = "create-failed",
    MODIFY_IN_PROGRESS = "modify-in-progress",
    MODIFY_COMPLETE = "modify-complete",
    MODIFY_FAILED = "modify-failed",
    DELETE_IN_PROGRESS = "delete-in-progress",
    DELETE_COMPLETE = "delete-complete",
    DELETE_FAILED = "delete-failed",
    ISOLATE_IN_PROGRESS = "isolate-in-progress",
    ISOLATE_COMPLETE = "isolate-complete",
    RESTORE_IN_PROGRESS = "restore-in-progress",
}

M.IpamScopeExternalAuthorityType = {
    infoblox = "infoblox",
}

M.IpamScopeState = {
    create_in_progress = "create-in-progress",
    create_complete = "create-complete",
    create_failed = "create-failed",
    modify_in_progress = "modify-in-progress",
    modify_complete = "modify-complete",
    modify_failed = "modify-failed",
    delete_in_progress = "delete-in-progress",
    delete_complete = "delete-complete",
    delete_failed = "delete-failed",
    isolate_in_progress = "isolate-in-progress",
    isolate_complete = "isolate-complete",
    restore_in_progress = "restore-in-progress",
}

M.KeyFormat = {
    pem = "pem",
    ppk = "ppk",
}

M.KeyType = {
    rsa = "rsa",
    ed25519 = "ed25519",
}

M.CapacityReservationPreference = {
    capacity_reservations_only = "capacity-reservations-only",
    open = "open",
    none = "none",
}

M.AmdSevSnpSpecification = {
    enabled = "enabled",
    disabled = "disabled",
}

M.NestedVirtualizationSpecification = {
    enabled = "enabled",
    disabled = "disabled",
}

M.ShutdownBehavior = {
    stop = "stop",
    terminate = "terminate",
}

M.MarketType = {
    spot = "spot",
    capacity_block = "capacity-block",
    interruptible_capacity_reservation = "interruptible-capacity-reservation",
}

M.InstanceInterruptionBehavior = {
    hibernate = "hibernate",
    stop = "stop",
    terminate = "terminate",
}

M.SpotInstanceType = {
    one_time = "one-time",
    persistent = "persistent",
}

M.LaunchTemplateAutoRecoveryState = {
    default = "default",
    disabled = "disabled",
}

M.LaunchTemplateInstanceMetadataEndpointState = {
    disabled = "disabled",
    enabled = "enabled",
}

M.LaunchTemplateInstanceMetadataProtocolIpv6 = {
    disabled = "disabled",
    enabled = "enabled",
}

M.LaunchTemplateHttpTokensState = {
    optional = "optional",
    required = "required",
}

M.LaunchTemplateInstanceMetadataTagsState = {
    disabled = "disabled",
    enabled = "enabled",
}

M.InstanceBandwidthWeighting = {
    DEFAULT = "default",
    VPC_1 = "vpc-1",
    EBS_1 = "ebs-1",
}

M.SecondaryInterfaceType = {
    SECONDARY = "secondary",
}

M.LaunchTemplateInstanceMetadataOptionsState = {
    pending = "pending",
    applied = "applied",
}

M.LocalGatewayRouteState = {
    pending = "pending",
    active = "active",
    blackhole = "blackhole",
    deleting = "deleting",
    deleted = "deleted",
}

M.LocalGatewayRouteType = {
    static = "static",
    propagated = "propagated",
}

M.LocalGatewayRouteTableMode = {
    direct_vpc_routing = "direct-vpc-routing",
    coip = "coip",
}

M.LocalGatewayVirtualInterfaceConfigurationState = {
    pending = "pending",
    available = "available",
    deleting = "deleting",
    deleted = "deleted",
}

M.LocalGatewayVirtualInterfaceGroupConfigurationState = {
    pending = "pending",
    incomplete = "incomplete",
    available = "available",
    deleting = "deleting",
    deleted = "deleted",
}

M.PrefixListState = {
    create_in_progress = "create-in-progress",
    create_complete = "create-complete",
    create_failed = "create-failed",
    modify_in_progress = "modify-in-progress",
    modify_complete = "modify-complete",
    modify_failed = "modify-failed",
    restore_in_progress = "restore-in-progress",
    restore_complete = "restore-complete",
    restore_failed = "restore-failed",
    delete_in_progress = "delete-in-progress",
    delete_complete = "delete-complete",
    delete_failed = "delete-failed",
}

M.AvailabilityMode = {
    ZONAL = "zonal",
    REGIONAL = "regional",
}

M.ConnectivityType = {
    PRIVATE = "private",
    PUBLIC = "public",
}

M.NatGatewayApplianceState = {
    ATTACHING = "attaching",
    ATTACHED = "attached",
    DETACHING = "detaching",
    DETACHED = "detached",
    ATTACH_FAILED = "attach-failed",
    DETACH_FAILED = "detach-failed",
}

M.NatGatewayApplianceModifyState = {
    MODIFYING = "modifying",
    COMPLETED = "completed",
    FAILED = "failed",
}

M.NatGatewayApplianceType = {
    NETWORK_FIREWALL_PROXY = "network-firewall-proxy",
}

M.AutoProvisionZonesState = {
    ENABLED = "enabled",
    DISABLED = "disabled",
}

M.AutoScalingIpsState = {
    ENABLED = "enabled",
    DISABLED = "disabled",
}

M.NatGatewayState = {
    PENDING = "pending",
    FAILED = "failed",
    AVAILABLE = "available",
    DELETING = "deleting",
    DELETED = "deleted",
}

M.RuleAction = {
    allow = "allow",
    deny = "deny",
}

M.NetworkInterfaceCreationType = {
    efa = "efa",
    efa_only = "efa-only",
    branch = "branch",
    trunk = "trunk",
}

M.NetworkInterfaceType = {
    interface = "interface",
    natGateway = "natGateway",
    efa = "efa",
    efa_only = "efa-only",
    trunk = "trunk",
    load_balancer = "load_balancer",
    network_load_balancer = "network_load_balancer",
    vpc_endpoint = "vpc_endpoint",
    branch = "branch",
    transit_gateway = "transit_gateway",
    lambda = "lambda",
    quicksight = "quicksight",
    global_accelerator_managed = "global_accelerator_managed",
    api_gateway_managed = "api_gateway_managed",
    gateway_load_balancer = "gateway_load_balancer",
    gateway_load_balancer_endpoint = "gateway_load_balancer_endpoint",
    iot_rules_managed = "iot_rules_managed",
    aws_codestar_connections_managed = "aws_codestar_connections_managed",
}

M.NetworkInterfaceStatus = {
    available = "available",
    associated = "associated",
    attaching = "attaching",
    in_use = "in-use",
    detaching = "detaching",
}

M.InterfacePermissionType = {
    INSTANCE_ATTACH = "INSTANCE-ATTACH",
    EIP_ASSOCIATE = "EIP-ASSOCIATE",
}

M.NetworkInterfacePermissionStateCode = {
    pending = "pending",
    granted = "granted",
    revoking = "revoking",
    revoked = "revoked",
}

M.SpreadLevel = {
    host = "host",
    rack = "rack",
}

M.PlacementStrategy = {
    cluster = "cluster",
    spread = "spread",
    partition = "partition",
}

M.PlacementGroupState = {
    pending = "pending",
    available = "available",
    deleting = "deleting",
    deleted = "deleted",
}

M.ReplaceRootVolumeTaskState = {
    pending = "pending",
    in_progress = "in-progress",
    failing = "failing",
    succeeded = "succeeded",
    failed = "failed",
    failed_detached = "failed-detached",
}

M.RouteServerPersistRoutesAction = {
    ENABLE = "enable",
    DISABLE = "disable",
    RESET = "reset",
}

M.RouteServerPersistRoutesState = {
    ENABLING = "enabling",
    ENABLED = "enabled",
    RESETTING = "resetting",
    DISABLING = "disabling",
    DISABLED = "disabled",
    MODIFYING = "modifying",
}

M.RouteServerState = {
    PENDING = "pending",
    AVAILABLE = "available",
    MODIFYING = "modifying",
    DELETING = "deleting",
    DELETED = "deleted",
}

M.RouteServerEndpointState = {
    PENDING = "pending",
    AVAILABLE = "available",
    DELETING = "deleting",
    DELETED = "deleted",
    FAILING = "failing",
    FAILED = "failed",
    DELETE_FAILED = "delete-failed",
}

M.RouteServerPeerLivenessMode = {
    BFD = "bfd",
    BGP_KEEPALIVE = "bgp-keepalive",
}

M.RouteServerBfdState = {
    UP = "up",
    DOWN = "down",
}

M.RouteServerBgpState = {
    UP = "up",
    DOWN = "down",
}

M.RouteServerPeerState = {
    PENDING = "pending",
    AVAILABLE = "available",
    DELETING = "deleting",
    DELETED = "deleted",
    FAILING = "failing",
    FAILED = "failed",
}

M.RouteOrigin = {
    CreateRouteTable = "CreateRouteTable",
    CreateRoute = "CreateRoute",
    EnableVgwRoutePropagation = "EnableVgwRoutePropagation",
    Advertisement = "Advertisement",
}

M.RouteState = {
    active = "active",
    blackhole = "blackhole",
    filtered = "filtered",
}

M.SecondaryNetworkType = {
    rdma = "rdma",
}

M.SecondaryNetworkCidrBlockAssociationState = {
    associating = "associating",
    associated = "associated",
    association_failed = "association-failed",
    disassociating = "disassociating",
    disassociated = "disassociated",
    disassociation_failed = "disassociation-failed",
}

M.SecondaryNetworkState = {
    create_in_progress = "create-in-progress",
    create_complete = "create-complete",
    create_failed = "create-failed",
    delete_in_progress = "delete-in-progress",
    delete_complete = "delete-complete",
    delete_failed = "delete-failed",
}

M.SecondarySubnetCidrBlockAssociationState = {
    associating = "associating",
    associated = "associated",
    association_failed = "association-failed",
    disassociating = "disassociating",
    disassociated = "disassociated",
    disassociation_failed = "disassociation-failed",
}

M.SecondarySubnetState = {
    create_in_progress = "create-in-progress",
    create_complete = "create-complete",
    create_failed = "create-failed",
    delete_in_progress = "delete-in-progress",
    delete_complete = "delete-complete",
    delete_failed = "delete-failed",
}

M.SnapshotState = {
    pending = "pending",
    completed = "completed",
    error = "error",
    recoverable = "recoverable",
    recovering = "recovering",
}

M.StorageTier = {
    archive = "archive",
    standard = "standard",
}

M.TransferType = {
    time_based = "time-based",
    standard = "standard",
}

M.CopyTagsFromSource = {
    volume = "volume",
}

M.DatafeedSubscriptionState = {
    Active = "Active",
    Inactive = "Inactive",
}

M.SubnetCidrReservationType = {
    prefix = "prefix",
    explicit = "explicit",
}

M.TrafficMirrorRuleAction = {
    accept = "accept",
    reject = "reject",
}

M.TrafficDirection = {
    ingress = "ingress",
    egress = "egress",
}

M.TrafficMirrorNetworkService = {
    amazon_dns = "amazon-dns",
}

M.TrafficMirrorTargetType = {
    network_interface = "network-interface",
    network_load_balancer = "network-load-balancer",
    gateway_load_balancer_endpoint = "gateway-load-balancer-endpoint",
}

M.AutoAcceptSharedAttachmentsValue = {
    enable = "enable",
    disable = "disable",
}

M.DefaultRouteTableAssociationValue = {
    enable = "enable",
    disable = "disable",
}

M.DefaultRouteTablePropagationValue = {
    enable = "enable",
    disable = "disable",
}

M.MulticastSupportValue = {
    enable = "enable",
    disable = "disable",
}

M.VpnEcmpSupportValue = {
    enable = "enable",
    disable = "disable",
}

M.EncryptionStateValue = {
    enabling = "enabling",
    enabled = "enabled",
    disabling = "disabling",
    disabled = "disabled",
}

M.TransitGatewayState = {
    pending = "pending",
    available = "available",
    modifying = "modifying",
    deleting = "deleting",
    deleted = "deleted",
}

M.ProtocolValue = {
    gre = "gre",
}

M.BgpStatus = {
    up = "up",
    down = "down",
}

M.TransitGatewayConnectPeerState = {
    pending = "pending",
    available = "available",
    deleting = "deleting",
    deleted = "deleted",
}

M.TransitGatewayMeteringPolicyState = {
    available = "available",
    deleted = "deleted",
    pending = "pending",
    modifying = "modifying",
    deleting = "deleting",
}

M.TransitGatewayMeteringPayerType = {
    source_attachment_owner = "source-attachment-owner",
    destination_attachment_owner = "destination-attachment-owner",
    transit_gateway_owner = "transit-gateway-owner",
}

M.TransitGatewayMeteringPolicyEntryState = {
    available = "available",
    deleted = "deleted",
}

M.AutoAcceptSharedAssociationsValue = {
    enable = "enable",
    disable = "disable",
}

M.Igmpv2SupportValue = {
    enable = "enable",
    disable = "disable",
}

M.StaticSourcesSupportValue = {
    enable = "enable",
    disable = "disable",
}

M.TransitGatewayMulticastDomainState = {
    pending = "pending",
    available = "available",
    deleting = "deleting",
    deleted = "deleted",
}

M.TransitGatewayPolicyTableState = {
    pending = "pending",
    available = "available",
    deleting = "deleting",
    deleted = "deleted",
}

M.TransitGatewayPrefixListReferenceState = {
    pending = "pending",
    available = "available",
    modifying = "modifying",
    deleting = "deleting",
}

M.TransitGatewayRouteState = {
    pending = "pending",
    active = "active",
    blackhole = "blackhole",
    deleting = "deleting",
    deleted = "deleted",
}

M.TransitGatewayRouteType = {
    static = "static",
    propagated = "propagated",
}

M.TransitGatewayRouteTableState = {
    pending = "pending",
    available = "available",
    deleting = "deleting",
    deleted = "deleted",
}

M.TransitGatewayRouteTableAnnouncementDirection = {
    outgoing = "outgoing",
    incoming = "incoming",
}

M.TransitGatewayRouteTableAnnouncementState = {
    available = "available",
    pending = "pending",
    failing = "failing",
    failed = "failed",
    deleting = "deleting",
    deleted = "deleted",
}

M.VerifiedAccessEndpointAttachmentType = {
    vpc = "vpc",
}

M.VerifiedAccessEndpointProtocol = {
    http = "http",
    https = "https",
    tcp = "tcp",
}

M.VerifiedAccessEndpointType = {
    load_balancer = "load-balancer",
    network_interface = "network-interface",
    rds = "rds",
    cidr = "cidr",
}

M.VerifiedAccessEndpointStatusCode = {
    pending = "pending",
    active = "active",
    updating = "updating",
    deleting = "deleting",
    deleted = "deleted",
}

M.VpcEncryptionControlExclusionStateInput = {
    enable = "enable",
    disable = "disable",
}

M.InternetGatewayExclusionMode = {
    allow_bidirectional = "allow-bidirectional",
    allow_egress = "allow-egress",
}

M.VpcBlockPublicAccessExclusionState = {
    create_in_progress = "create-in-progress",
    create_complete = "create-complete",
    create_failed = "create-failed",
    update_in_progress = "update-in-progress",
    update_complete = "update-complete",
    update_failed = "update-failed",
    delete_in_progress = "delete-in-progress",
    delete_complete = "delete-complete",
    disable_in_progress = "disable-in-progress",
    disable_complete = "disable-complete",
}

M.DnsRecordIpType = {
    ipv4 = "ipv4",
    dualstack = "dualstack",
    ipv6 = "ipv6",
    service_defined = "service-defined",
}

M.VpcEndpointType = {
    Interface = "Interface",
    Gateway = "Gateway",
    GatewayLoadBalancer = "GatewayLoadBalancer",
    Resource = "Resource",
    ServiceNetwork = "ServiceNetwork",
}

M.State = {
    PendingAcceptance = "PendingAcceptance",
    Pending = "Pending",
    Available = "Available",
    Deleting = "Deleting",
    Deleted = "Deleted",
    Rejected = "Rejected",
    Failed = "Failed",
    Expired = "Expired",
    Partial = "Partial",
}

M.ConnectionNotificationState = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.ConnectionNotificationType = {
    Topic = "Topic",
}

M.PayerResponsibility = {
    ServiceOwner = "ServiceOwner",
}

M.DnsNameState = {
    PendingVerification = "pendingVerification",
    Verified = "verified",
    Failed = "failed",
}

M.ServiceState = {
    Pending = "Pending",
    Available = "Available",
    Deleting = "Deleting",
    Deleted = "Deleted",
    Failed = "Failed",
}

M.ServiceType = {
    Interface = "Interface",
    Gateway = "Gateway",
    GatewayLoadBalancer = "GatewayLoadBalancer",
}

M.ServiceConnectivityType = {
    ipv4 = "ipv4",
    ipv6 = "ipv6",
}

M.VpnConcentratorType = {
    ipsec_1 = "ipsec.1",
}

M.VpnTunnelBandwidth = {
    standard = "standard",
    large = "large",
}

M.TunnelInsideIpVersion = {
    ipv4 = "ipv4",
    ipv6 = "ipv6",
}

M.GatewayAssociationState = {
    associated = "associated",
    not_associated = "not-associated",
    associating = "associating",
    disassociating = "disassociating",
}

M.VpnStaticRouteSource = {
    Static = "Static",
}

M.VpnState = {
    pending = "pending",
    available = "available",
    deleting = "deleting",
    deleted = "deleted",
}

M.TelemetryStatus = {
    UP = "UP",
    DOWN = "DOWN",
}

M.FleetStateCode = {
    SUBMITTED = "submitted",
    ACTIVE = "active",
    DELETED = "deleted",
    FAILED = "failed",
    DELETED_RUNNING = "deleted_running",
    DELETED_TERMINATING_INSTANCES = "deleted_terminating",
    MODIFYING = "modifying",
}

M.DeleteFleetErrorCode = {
    FLEET_ID_DOES_NOT_EXIST = "fleetIdDoesNotExist",
    FLEET_ID_MALFORMED = "fleetIdMalformed",
    FLEET_NOT_IN_DELETABLE_STATE = "fleetNotInDeletableState",
    UNEXPECTED_ERROR = "unexpectedError",
}

M.LaunchTemplateErrorCode = {
    LAUNCH_TEMPLATE_ID_DOES_NOT_EXIST = "launchTemplateIdDoesNotExist",
    LAUNCH_TEMPLATE_ID_MALFORMED = "launchTemplateIdMalformed",
    LAUNCH_TEMPLATE_NAME_DOES_NOT_EXIST = "launchTemplateNameDoesNotExist",
    LAUNCH_TEMPLATE_NAME_MALFORMED = "launchTemplateNameMalformed",
    LAUNCH_TEMPLATE_VERSION_DOES_NOT_EXIST = "launchTemplateVersionDoesNotExist",
    UNEXPECTED_ERROR = "unexpectedError",
}

M.DeleteQueuedReservedInstancesErrorCode = {
    RESERVED_INSTANCES_ID_INVALID = "reserved-instances-id-invalid",
    RESERVED_INSTANCES_NOT_IN_QUEUED_STATE = "reserved-instances-not-in-queued-state",
    UNEXPECTED_ERROR = "unexpected-error",
}

M.AsnState = {
    deprovisioned = "deprovisioned",
    failed_deprovision = "failed-deprovision",
    failed_provision = "failed-provision",
    pending_deprovision = "pending-deprovision",
    pending_provision = "pending-provision",
    provisioned = "provisioned",
}

M.IpamPoolCidrFailureCode = {
    cidr_not_available = "cidr-not-available",
    limit_exceeded = "limit-exceeded",
}

M.IpamPoolCidrState = {
    pending_provision = "pending-provision",
    provisioned = "provisioned",
    failed_provision = "failed-provision",
    pending_deprovision = "pending-deprovision",
    deprovisioned = "deprovisioned",
    failed_deprovision = "failed-deprovision",
    pending_import = "pending-import",
    failed_import = "failed-import",
}

M.SnapshotReturnCodes = {
    SUCCESS = "success",
    WARN_SKIPPED = "skipped",
    ERROR_MISSING_PERMISSIONS = "missing-permissions",
    ERROR_CODE_INTERNAL_ERROR = "internal-error",
    ERROR_CODE_CLIENT_ERROR = "client-error",
}

M.AvailabilityZoneOptInStatus = {
    opt_in_not_required = "opt-in-not-required",
    opted_in = "opted-in",
    not_opted_in = "not-opted-in",
}

M.AvailabilityZoneState = {
    available = "available",
    information = "information",
    impaired = "impaired",
    unavailable = "unavailable",
    constrained = "constrained",
}

M.MetricType = {
    aggregate_latency = "aggregate-latency",
}

M.PeriodType = {
    five_minutes = "five-minutes",
    fifteen_minutes = "fifteen-minutes",
    one_hour = "one-hour",
    three_hours = "three-hours",
    one_day = "one-day",
    one_week = "one-week",
}

M.StatisticType = {
    p50 = "p50",
}

M.CapacityBlockExtensionStatus = {
    PAYMENT_PENDING = "payment-pending",
    PAYMENT_FAILED = "payment-failed",
    PAYMENT_SUCCEEDED = "payment-succeeded",
}

M.CapacityBlockResourceState = {
    active = "active",
    expired = "expired",
    unavailable = "unavailable",
    cancelled = "cancelled",
    failed = "failed",
    scheduled = "scheduled",
    payment_pending = "payment-pending",
    payment_failed = "payment-failed",
}

M.CapacityBlockInterconnectStatus = {
    ok = "ok",
    impaired = "impaired",
    insufficient_data = "insufficient-data",
}

M.CapacityManagerDataExportStatus = {
    PENDING = "pending",
    IN_PROGRESS = "in-progress",
    DELIVERED = "delivered",
    FAILED = "failed",
}

M.CallerRole = {
    odcr_owner = "odcr-owner",
    unused_reservation_billing_owner = "unused-reservation-billing-owner",
}

M.CapacityReservationBillingRequestStatus = {
    pending = "pending",
    accepted = "accepted",
    rejected = "rejected",
    cancelled = "cancelled",
    revoked = "revoked",
    expired = "expired",
}

M.ClientVpnConnectionStatusCode = {
    active = "active",
    failed_to_terminate = "failed-to-terminate",
    terminating = "terminating",
    terminated = "terminated",
}

M.AssociatedNetworkType = {
    vpc = "vpc",
}

M.ClientVpnEndpointAttributeStatusCode = {
    applying = "applying",
    applied = "applied",
}

M.VpnProtocol = {
    openvpn = "openvpn",
}

M.ConversionTaskState = {
    active = "active",
    cancelling = "cancelling",
    cancelled = "cancelled",
    completed = "completed",
}

M.ReportState = {
    running = "running",
    cancelled = "cancelled",
    complete = "complete",
    error = "error",
}

M.ElasticGpuStatus = {
    Ok = "OK",
    Impaired = "IMPAIRED",
}

M.ElasticGpuState = {
    Attached = "ATTACHED",
}

M.FastLaunchResourceType = {
    SNAPSHOT = "snapshot",
}

M.FastLaunchStateCode = {
    enabling = "enabling",
    enabling_failed = "enabling-failed",
    enabled = "enabled",
    enabled_failed = "enabled-failed",
    disabling = "disabling",
    disabling_failed = "disabling-failed",
}

M.FastSnapshotRestoreStateCode = {
    enabling = "enabling",
    optimizing = "optimizing",
    enabled = "enabled",
    disabling = "disabling",
    disabled = "disabled",
}

M.FleetEventType = {
    INSTANCE_CHANGE = "instance-change",
    FLEET_CHANGE = "fleet-change",
    SERVICE_ERROR = "service-error",
}

M.FleetActivityStatus = {
    ERROR = "error",
    PENDING_FULFILLMENT = "pending_fulfillment",
    PENDING_TERMINATION = "pending_termination",
    FULFILLED = "fulfilled",
}

M.FpgaImageAttributeName = {
    description = "description",
    name = "name",
    loadPermission = "loadPermission",
    productCodes = "productCodes",
}

M.PermissionGroup = {
    all = "all",
}

M.ProductCodeValues = {
    devpay = "devpay",
    marketplace = "marketplace",
}

M.FpgaImageStateCode = {
    pending = "pending",
    failed = "failed",
    available = "available",
    unavailable = "unavailable",
}

M.PaymentOption = {
    ALL_UPFRONT = "AllUpfront",
    PARTIAL_UPFRONT = "PartialUpfront",
    NO_UPFRONT = "NoUpfront",
}

M.ReservationState = {
    ACTIVE = "active",
    EXPIRED = "expired",
    CANCELLED = "cancelled",
    SCHEDULED = "scheduled",
    PENDING = "pending",
    FAILED = "failed",
    DELAYED = "delayed",
    UNSUPPORTED = "unsupported",
    PAYMENT_PENDING = "payment-pending",
    PAYMENT_FAILED = "payment-failed",
    RETIRED = "retired",
}

M.ImageAttributeName = {
    description = "description",
    kernel = "kernel",
    ramdisk = "ramdisk",
    launchPermission = "launchPermission",
    productCodes = "productCodes",
    blockDeviceMapping = "blockDeviceMapping",
    sriovNetSupport = "sriovNetSupport",
    bootMode = "bootMode",
    tpmSupport = "tpmSupport",
    uefiData = "uefiData",
    lastLaunchedTime = "lastLaunchedTime",
    imdsSupport = "imdsSupport",
    deregistrationProtection = "deregistrationProtection",
}

M.ImageReferenceResourceType = {
    EC2_INSTANCE = "ec2:Instance",
    EC2_LAUNCH_TEMPLATE = "ec2:LaunchTemplate",
    SSM_PARAMETER = "ssm:Parameter",
    IMAGE_BUILDER_IMAGE_RECIPE = "imagebuilder:ImageRecipe",
    IMAGE_BUILDER_CONTAINER_RECIPE = "imagebuilder:ContainerRecipe",
}

M.ImageReferenceOptionName = {
    STATE_NAME = "state-name",
    VERSION_DEPTH = "version-depth",
}

M.ArchitectureValues = {
    i386 = "i386",
    x86_64 = "x86_64",
    arm64 = "arm64",
    x86_64_mac = "x86_64_mac",
    arm64_mac = "arm64_mac",
}

M.BootModeValues = {
    legacy_bios = "legacy-bios",
    uefi = "uefi",
    uefi_preferred = "uefi-preferred",
}

M.HypervisorType = {
    ovm = "ovm",
    xen = "xen",
}

M.ImageTypeValues = {
    machine = "machine",
    kernel = "kernel",
    ramdisk = "ramdisk",
}

M.ImdsSupportValues = {
    v2_0 = "v2.0",
}

M.DeviceType = {
    ebs = "ebs",
    instance_store = "instance-store",
}

M.ImageState = {
    pending = "pending",
    available = "available",
    invalid = "invalid",
    deregistered = "deregistered",
    transient = "transient",
    failed = "failed",
    error = "error",
    disabled = "disabled",
}

M.TpmSupportValues = {
    v2_0 = "v2.0",
}

M.VirtualizationType = {
    hvm = "hvm",
    paravirtual = "paravirtual",
}

M.InstanceAttributeName = {
    instanceType = "instanceType",
    kernel = "kernel",
    ramdisk = "ramdisk",
    userData = "userData",
    disableApiTermination = "disableApiTermination",
    instanceInitiatedShutdownBehavior = "instanceInitiatedShutdownBehavior",
    rootDeviceName = "rootDeviceName",
    blockDeviceMapping = "blockDeviceMapping",
    productCodes = "productCodes",
    sourceDestCheck = "sourceDestCheck",
    groupSet = "groupSet",
    ebsOptimized = "ebsOptimized",
    sriovNetSupport = "sriovNetSupport",
    enaSupport = "enaSupport",
    enclaveOptions = "enclaveOptions",
    disableApiStop = "disableApiStop",
}

M.InstanceStateName = {
    pending = "pending",
    running = "running",
    shutting_down = "shutting-down",
    terminated = "terminated",
    stopping = "stopping",
    stopped = "stopped",
}

M.InstanceBootModeValues = {
    legacy_bios = "legacy-bios",
    uefi = "uefi",
}

M.InstanceLifecycleType = {
    spot = "spot",
    scheduled = "scheduled",
    capacity_block = "capacity-block",
    interruptible_capacity_reservation = "interruptible-capacity-reservation",
}

M.InstanceAutoRecoveryState = {
    disabled = "disabled",
    default = "default",
}

M.InstanceRebootMigrationState = {
    disabled = "disabled",
    default = "default",
}

M.InstanceMetadataEndpointState = {
    disabled = "disabled",
    enabled = "enabled",
}

M.InstanceMetadataProtocolState = {
    disabled = "disabled",
    enabled = "enabled",
}

M.HttpTokensState = {
    optional = "optional",
    required = "required",
}

M.InstanceMetadataTagsState = {
    disabled = "disabled",
    enabled = "enabled",
}

M.InstanceMetadataOptionsState = {
    pending = "pending",
    applied = "applied",
}

M.MonitoringState = {
    disabled = "disabled",
    disabling = "disabling",
    enabled = "enabled",
    pending = "pending",
}

M.SecondaryInterfaceStatus = {
    available = "available",
    in_use = "in-use",
}

M.HaStatus = {
    processing = "processing",
    active = "active",
    standby = "standby",
    invalid = "invalid",
}

M.SqlServerLicenseUsage = {
    full = "full",
    waived = "waived",
}

M.StatusName = {
    reachability = "reachability",
}

M.StatusType = {
    passed = "passed",
    failed = "failed",
    insufficient_data = "insufficient-data",
    initializing = "initializing",
}

M.SummaryStatus = {
    ok = "ok",
    impaired = "impaired",
    insufficient_data = "insufficient-data",
    not_applicable = "not-applicable",
    initializing = "initializing",
}

M.EventCode = {
    instance_reboot = "instance-reboot",
    system_reboot = "system-reboot",
    system_maintenance = "system-maintenance",
    instance_retirement = "instance-retirement",
    instance_stop = "instance-stop",
}

M.LocationType = {
    region = "region",
    availability_zone = "availability-zone",
    availability_zone_id = "availability-zone-id",
    outpost = "outpost",
}

M.AttachmentLimitType = {
    SHARED = "shared",
    DEDICATED = "dedicated",
}

M.EbsOptimizedSupport = {
    unsupported = "unsupported",
    supported = "supported",
    default = "default",
}

M.EbsEncryptionSupport = {
    unsupported = "unsupported",
    supported = "supported",
}

M.EbsNvmeSupport = {
    UNSUPPORTED = "unsupported",
    SUPPORTED = "supported",
    REQUIRED = "required",
}

M.InstanceTypeHypervisor = {
    NITRO = "nitro",
    XEN = "xen",
}

M.DiskType = {
    hdd = "hdd",
    ssd = "ssd",
}

M.InstanceStorageEncryptionSupport = {
    unsupported = "unsupported",
    required = "required",
}

M.EphemeralNvmeSupport = {
    UNSUPPORTED = "unsupported",
    SUPPORTED = "supported",
    REQUIRED = "required",
}

M.BandwidthWeightingType = {
    DEFAULT = "default",
    VPC_1 = "vpc-1",
    EBS_1 = "ebs-1",
}

M.EnaSupport = {
    unsupported = "unsupported",
    supported = "supported",
    required = "required",
}

M.FlexibleEnaQueuesSupport = {
    UNSUPPORTED = "unsupported",
    SUPPORTED = "supported",
}

M.NitroEnclavesSupport = {
    UNSUPPORTED = "unsupported",
    SUPPORTED = "supported",
}

M.NitroTpmSupport = {
    UNSUPPORTED = "unsupported",
    SUPPORTED = "supported",
}

M.PhcSupport = {
    UNSUPPORTED = "unsupported",
    SUPPORTED = "supported",
}

M.PlacementGroupStrategy = {
    cluster = "cluster",
    partition = "partition",
    spread = "spread",
}

M.ArchitectureType = {
    i386 = "i386",
    x86_64 = "x86_64",
    arm64 = "arm64",
    x86_64_mac = "x86_64_mac",
    arm64_mac = "arm64_mac",
}

M.SupportedAdditionalProcessorFeature = {
    AMD_SEV_SNP = "amd-sev-snp",
    NESTED_VIRTUALIZATION = "nested-virtualization",
}

M.RebootMigrationSupport = {
    UNSUPPORTED = "unsupported",
    SUPPORTED = "supported",
}

M.BootModeType = {
    legacy_bios = "legacy-bios",
    uefi = "uefi",
}

M.RootDeviceType = {
    ebs = "ebs",
    instance_store = "instance-store",
}

M.UsageClassType = {
    spot = "spot",
    on_demand = "on-demand",
    capacity_block = "capacity-block",
}

M.LockState = {
    compliance = "compliance",
    governance = "governance",
    compliance_cooloff = "compliance-cooloff",
    expired = "expired",
}

M.MoveStatus = {
    movingToVpc = "movingToVpc",
    restoringToClassic = "restoringToClassic",
}

M.FindingsFound = {
    true = "true",
    false = "false",
    unknown = "unknown",
}

M.AnalysisStatus = {
    running = "running",
    succeeded = "succeeded",
    failed = "failed",
}

M.NetworkInterfaceAttribute = {
    description = "description",
    groupSet = "groupSet",
    sourceDestCheck = "sourceDestCheck",
    attachment = "attachment",
    associatePublicIpAddress = "associatePublicIpAddress",
}

M.OfferingClassType = {
    STANDARD = "standard",
    CONVERTIBLE = "convertible",
}

M.OfferingTypeValues = {
    Heavy_Utilization = "Heavy Utilization",
    Medium_Utilization = "Medium Utilization",
    Light_Utilization = "Light Utilization",
    No_Upfront = "No Upfront",
    Partial_Upfront = "Partial Upfront",
    All_Upfront = "All Upfront",
}

M.RIProductDescription = {
    Linux_UNIX = "Linux/UNIX",
    Linux_UNIX_Amazon_VPC_ = "Linux/UNIX (Amazon VPC)",
    Windows = "Windows",
    Windows_Amazon_VPC_ = "Windows (Amazon VPC)",
}

M.RecurringChargeFrequency = {
    Hourly = "Hourly",
}

M.scope = {
    AVAILABILITY_ZONE = "Availability Zone",
    REGIONAL = "Region",
}

M.ReservedInstanceState = {
    payment_pending = "payment-pending",
    active = "active",
    payment_failed = "payment-failed",
    retired = "retired",
    queued = "queued",
    queued_deleted = "queued-deleted",
}

M.ServiceLinkVirtualInterfaceConfigurationState = {
    pending = "pending",
    available = "available",
    deleting = "deleting",
    deleted = "deleted",
}

M.SnapshotAttributeName = {
    productCodes = "productCodes",
    createVolumePermission = "createVolumePermission",
}

M.TieringOperationStatus = {
    archival_in_progress = "archival-in-progress",
    archival_completed = "archival-completed",
    archival_failed = "archival-failed",
    temporary_restore_in_progress = "temporary-restore-in-progress",
    temporary_restore_completed = "temporary-restore-completed",
    temporary_restore_failed = "temporary-restore-failed",
    permanent_restore_in_progress = "permanent-restore-in-progress",
    permanent_restore_completed = "permanent-restore-completed",
    permanent_restore_failed = "permanent-restore-failed",
}

M.EventType = {
    INSTANCE_CHANGE = "instanceChange",
    BATCH_CHANGE = "fleetRequestChange",
    ERROR = "error",
    INFORMATION = "information",
}

M.ExcessCapacityTerminationPolicy = {
    NO_TERMINATION = "noTermination",
    DEFAULT = "default",
}

M.OnDemandAllocationStrategy = {
    LOWEST_PRICE = "lowestPrice",
    PRIORITIZED = "prioritized",
}

M.ReplacementStrategy = {
    LAUNCH = "launch",
    LAUNCH_BEFORE_TERMINATE = "launch-before-terminate",
}

M.SpotInstanceState = {
    open = "open",
    active = "active",
    closed = "closed",
    cancelled = "cancelled",
    failed = "failed",
    disabled = "disabled",
}

M.VerifiedAccessLogDeliveryStatusCode = {
    SUCCESS = "success",
    FAILED = "failed",
}

M.VolumeAttributeName = {
    autoEnableIO = "autoEnableIO",
    productCodes = "productCodes",
}

M.VolumeModificationState = {
    modifying = "modifying",
    optimizing = "optimizing",
    completed = "completed",
    failed = "failed",
}

M.InitializationType = {
    default = "default",
    provisioned_rate = "provisioned-rate",
    volume_copy = "volume-copy",
}

M.VolumeStatusName = {
    io_enabled = "io-enabled",
    io_performance = "io-performance",
    initialization_state = "initialization-state",
}

M.VolumeStatusInfoStatus = {
    ok = "ok",
    impaired = "impaired",
    insufficient_data = "insufficient-data",
    warning = "warning",
}

M.VpcAttributeName = {
    enableDnsSupport = "enableDnsSupport",
    enableDnsHostnames = "enableDnsHostnames",
    enableNetworkAddressUsageMetrics = "enableNetworkAddressUsageMetrics",
}

M.VpcBlockPublicAccessExclusionsAllowed = {
    allowed = "allowed",
    not_allowed = "not-allowed",
}

M.InternetGatewayBlockMode = {
    off = "off",
    block_bidirectional = "block-bidirectional",
    block_ingress = "block-ingress",
}

M.ManagedBy = {
    account = "account",
    declarative_policy = "declarative-policy",
}

M.VpcBlockPublicAccessState = {
    default_state = "default-state",
    update_in_progress = "update-in-progress",
    update_complete = "update-complete",
}

M.CapacityManagerStatus = {
    ENABLED = "enabled",
    DISABLED = "disabled",
}

M.ImageBlockPublicAccessDisabledState = {
    unblocked = "unblocked",
}

M.RouteServerPropagationState = {
    PENDING = "pending",
    AVAILABLE = "available",
    DELETING = "deleting",
}

M.SnapshotBlockPublicAccessState = {
    block_all_sharing = "block-all-sharing",
    block_new_sharing = "block-new-sharing",
    unblocked = "unblocked",
}

M.TransitGatewayPropagationState = {
    enabling = "enabling",
    enabled = "enabled",
    disabling = "disabling",
    disabled = "disabled",
}

M.ImageBlockPublicAccessEnabledState = {
    block_new_sharing = "block-new-sharing",
}

M.ClientCertificateRevocationListStatusCode = {
    pending = "pending",
    active = "active",
}

M.IngestionStatus = {
    INITIAL_INGESTION_IN_PROGRESS = "initial-ingestion-in-progress",
    INGESTION_COMPLETE = "ingestion-complete",
    INGESTION_FAILED = "ingestion-failed",
}

M.Comparison = {
    EQUALS = "equals",
    IN = "in",
}

M.FilterByDimension = {
    RESOURCE_REGION = "resource-region",
    AVAILABILITY_ZONE_ID = "availability-zone-id",
    ACCOUNT_ID = "account-id",
    ACCOUNT_NAME = "account-name",
    INSTANCE_FAMILY = "instance-family",
    INSTANCE_TYPE = "instance-type",
    INSTANCE_PLATFORM = "instance-platform",
    RESERVATION_ARN = "reservation-arn",
    RESERVATION_ID = "reservation-id",
    RESERVATION_TYPE = "reservation-type",
    RESERVATION_CREATE_TIMESTAMP = "reservation-create-timestamp",
    RESERVATION_START_TIMESTAMP = "reservation-start-timestamp",
    RESERVATION_END_TIMESTAMP = "reservation-end-timestamp",
    RESERVATION_END_DATE_TYPE = "reservation-end-date-type",
    TENANCY = "tenancy",
    RESERVATION_STATE = "reservation-state",
    RESERVATION_INSTANCE_MATCH_CRITERIA = "reservation-instance-match-criteria",
    RESERVATION_UNUSED_FINANCIAL_OWNER = "reservation-unused-financial-owner",
}

M.GroupBy = {
    RESOURCE_REGION = "resource-region",
    AVAILABILITY_ZONE_ID = "availability-zone-id",
    ACCOUNT_ID = "account-id",
    ACCOUNT_NAME = "account-name",
    INSTANCE_FAMILY = "instance-family",
    INSTANCE_TYPE = "instance-type",
    INSTANCE_PLATFORM = "instance-platform",
    RESERVATION_ARN = "reservation-arn",
    RESERVATION_ID = "reservation-id",
    RESERVATION_TYPE = "reservation-type",
    RESERVATION_CREATE_TIMESTAMP = "reservation-create-timestamp",
    RESERVATION_START_TIMESTAMP = "reservation-start-timestamp",
    RESERVATION_END_TIMESTAMP = "reservation-end-timestamp",
    RESERVATION_END_DATE_TYPE = "reservation-end-date-type",
    TENANCY = "tenancy",
    RESERVATION_STATE = "reservation-state",
    RESERVATION_INSTANCE_MATCH_CRITERIA = "reservation-instance-match-criteria",
    RESERVATION_UNUSED_FINANCIAL_OWNER = "reservation-unused-financial-owner",
}

M.Metric = {
    RESERVATION_TOTAL_CAPACITY_HRS_VCPU = "reservation-total-capacity-hrs-vcpu",
    RESERVATION_TOTAL_CAPACITY_HRS_INST = "reservation-total-capacity-hrs-inst",
    RESERVATION_MAX_SIZE_VCPU = "reservation-max-size-vcpu",
    RESERVATION_MAX_SIZE_INST = "reservation-max-size-inst",
    RESERVATION_MIN_SIZE_VCPU = "reservation-min-size-vcpu",
    RESERVATION_MIN_SIZE_INST = "reservation-min-size-inst",
    RESERVATION_UNUSED_TOTAL_CAPACITY_HRS_VCPU = "reservation-unused-total-capacity-hrs-vcpu",
    RESERVATION_UNUSED_TOTAL_CAPACITY_HRS_INST = "reservation-unused-total-capacity-hrs-inst",
    RESERVATION_UNUSED_TOTAL_ESTIMATED_COST = "reservation-unused-total-estimated-cost",
    RESERVATION_MAX_UNUSED_SIZE_VCPU = "reservation-max-unused-size-vcpu",
    RESERVATION_MAX_UNUSED_SIZE_INST = "reservation-max-unused-size-inst",
    RESERVATION_MIN_UNUSED_SIZE_VCPU = "reservation-min-unused-size-vcpu",
    RESERVATION_MIN_UNUSED_SIZE_INST = "reservation-min-unused-size-inst",
    RESERVATION_MAX_UTILIZATION = "reservation-max-utilization",
    RESERVATION_MIN_UTILIZATION = "reservation-min-utilization",
    RESERVATION_AVG_UTILIZATION_VCPU = "reservation-avg-utilization-vcpu",
    RESERVATION_AVG_UTILIZATION_INST = "reservation-avg-utilization-inst",
    RESERVATION_TOTAL_COUNT = "reservation-total-count",
    RESERVATION_TOTAL_ESTIMATED_COST = "reservation-total-estimated-cost",
    RESERVATION_AVG_FUTURE_SIZE_VCPU = "reservation-avg-future-size-vcpu",
    RESERVATION_AVG_FUTURE_SIZE_INST = "reservation-avg-future-size-inst",
    RESERVATION_MIN_FUTURE_SIZE_VCPU = "reservation-min-future-size-vcpu",
    RESERVATION_MIN_FUTURE_SIZE_INST = "reservation-min-future-size-inst",
    RESERVATION_MAX_FUTURE_SIZE_VCPU = "reservation-max-future-size-vcpu",
    RESERVATION_MAX_FUTURE_SIZE_INST = "reservation-max-future-size-inst",
    RESERVATION_AVG_COMMITTED_SIZE_VCPU = "reservation-avg-committed-size-vcpu",
    RESERVATION_AVG_COMMITTED_SIZE_INST = "reservation-avg-committed-size-inst",
    RESERVATION_MAX_COMMITTED_SIZE_VCPU = "reservation-max-committed-size-vcpu",
    RESERVATION_MAX_COMMITTED_SIZE_INST = "reservation-max-committed-size-inst",
    RESERVATION_MIN_COMMITTED_SIZE_VCPU = "reservation-min-committed-size-vcpu",
    RESERVATION_MIN_COMMITTED_SIZE_INST = "reservation-min-committed-size-inst",
    RESERVED_TOTAL_USAGE_HRS_VCPU = "reserved-total-usage-hrs-vcpu",
    RESERVED_TOTAL_USAGE_HRS_INST = "reserved-total-usage-hrs-inst",
    RESERVED_TOTAL_ESTIMATED_COST = "reserved-total-estimated-cost",
    UNRESERVED_TOTAL_USAGE_HRS_VCPU = "unreserved-total-usage-hrs-vcpu",
    UNRESERVED_TOTAL_USAGE_HRS_INST = "unreserved-total-usage-hrs-inst",
    UNRESERVED_TOTAL_ESTIMATED_COST = "unreserved-total-estimated-cost",
    SPOT_TOTAL_USAGE_HRS_VCPU = "spot-total-usage-hrs-vcpu",
    SPOT_TOTAL_USAGE_HRS_INST = "spot-total-usage-hrs-inst",
    SPOT_TOTAL_ESTIMATED_COST = "spot-total-estimated-cost",
    SPOT_AVG_RUN_TIME_BEFORE_INTERRUPTION_INST = "spot-avg-run-time-before-interruption-inst",
    SPOT_MAX_RUN_TIME_BEFORE_INTERRUPTION_INST = "spot-max-run-time-before-interruption-inst",
    SPOT_MIN_RUN_TIME_BEFORE_INTERRUPTION_INST = "spot-min-run-time-before-interruption-inst",
    SPOT_TOTAL_INTERRUPTIONS_INST = "spot-total-interruptions-inst",
    SPOT_TOTAL_INTERRUPTIONS_VCPU = "spot-total-interruptions-vcpu",
    SPOT_TOTAL_COUNT_INST = "spot-total-count-inst",
    SPOT_TOTAL_COUNT_VCPU = "spot-total-count-vcpu",
    SPOT_INTERRUPTION_RATE_INST = "spot-interruption-rate-inst",
    SPOT_INTERRUPTION_RATE_VCPU = "spot-interruption-rate-vcpu",
}

M.ReservationEndDateType = {
    LIMITED = "limited",
    UNLIMITED = "unlimited",
}

M.ReservationType = {
    CAPACITY_BLOCK = "capacity-block",
    ODCR = "odcr",
}

M.CapacityTenancy = {
    DEFAULT = "default",
    DEDICATED = "dedicated",
}

M.CapacityManagerMonitoredTagKeyStatus = {
    ACTIVATING = "activating",
    ACTIVATED = "activated",
    DEACTIVATING = "deactivating",
    SUSPENDED = "suspended",
}

M.UnlimitedSupportedInstanceFamily = {
    t2 = "t2",
    t3 = "t3",
    t3a = "t3a",
    t4g = "t4g",
}

M.IpamPolicyManagedBy = {
    account = "account",
    delegated_administrator_for_ipam = "delegated-administrator-for-ipam",
}

M.PartitionLoadFrequency = {
    NONE = "none",
    DAILY = "daily",
    WEEKLY = "weekly",
    MONTHLY = "monthly",
}

M.HttpTokensEnforcedState = {
    disabled = "disabled",
    enabled = "enabled",
}

M.EkPubKeyFormat = {
    der = "der",
    tpmt = "tpmt",
}

M.EkPubKeyType = {
    RSA_2048 = "rsa-2048",
    ECC_SEC_P384 = "ecc-sec-p384",
}

M.IpamComplianceStatus = {
    compliant = "compliant",
    noncompliant = "noncompliant",
    unmanaged = "unmanaged",
    ignored = "ignored",
}

M.IpamOverlapStatus = {
    overlapping = "overlapping",
    nonoverlapping = "nonoverlapping",
    ignored = "ignored",
}

M.IpamAddressHistoryResourceType = {
    eip = "eip",
    vpc = "vpc",
    subnet = "subnet",
    network_interface = "network-interface",
    instance = "instance",
}

M.IpamDiscoveryFailureCode = {
    assume_role_failure = "assume-role-failure",
    throttling_failure = "throttling-failure",
    unauthorized_failure = "unauthorized-failure",
}

M.IpamPublicAddressType = {
    SERVICE_MANAGED_IP = "service-managed-ip",
    SERVICE_MANAGED_BYOIP = "service-managed-byoip",
    AMAZON_OWNED_EIP = "amazon-owned-eip",
    AMAZON_OWNED_CONTIG = "amazon-owned-contig",
    BYOIP = "byoip",
    EC2_PUBLIC_IP = "ec2-public-ip",
    ANYCAST_IP_LIST_IP = "anycast-ip-list-ip",
}

M.IpamPublicAddressAssociationStatus = {
    ASSOCIATED = "associated",
    DISASSOCIATED = "disassociated",
}

M.IpamPublicAddressAwsService = {
    NAT_GATEWAY = "nat-gateway",
    DMS = "database-migration-service",
    REDSHIFT = "redshift",
    ECS = "elastic-container-service",
    RDS = "relational-database-service",
    S2S_VPN = "site-to-site-vpn",
    EC2_LB = "load-balancer",
    AGA = "global-accelerator",
    CLOUDFRONT = "cloudfront",
    OTHER = "other",
}

M.IpamResourceCidrIpSource = {
    amazon = "amazon",
    byoip = "byoip",
    none = "none",
}

M.IpamNetworkInterfaceAttachmentStatus = {
    available = "available",
    in_use = "in-use",
}

M.IpamPolicyResourceType = {
    alb = "alb",
    eip = "eip",
    rds = "rds",
    rnat = "rnat",
}

M.IpamManagementState = {
    managed = "managed",
    unmanaged = "unmanaged",
    ignored = "ignored",
}

M.ManagedResourceDefaultVisibility = {
    hidden = "hidden",
    visible = "visible",
}

M.RouteServerRouteInstallationStatus = {
    INSTALLED = "installed",
    REJECTED = "rejected",
}

M.RouteServerRouteStatus = {
    IN_RIB = "in-rib",
    IN_FIB = "in-fib",
}

M.LockMode = {
    compliance = "compliance",
    governance = "governance",
}

M.ModifyAvailabilityZoneOptInStatus = {
    opted_in = "opted-in",
    not_opted_in = "not-opted-in",
}

M.OperationType = {
    add = "add",
    remove = "remove",
}

M.UnsuccessfulInstanceCreditSpecificationErrorCode = {
    INVALID_INSTANCE_ID = "InvalidInstanceID.Malformed",
    INSTANCE_NOT_FOUND = "InvalidInstanceID.NotFound",
    INCORRECT_INSTANCE_STATE = "IncorrectInstanceState",
    INSTANCE_CREDIT_SPECIFICATION_NOT_SUPPORTED = "InstanceCreditSpecification.NotSupported",
}

M.DefaultInstanceMetadataEndpointState = {
    disabled = "disabled",
    enabled = "enabled",
    no_preference = "no-preference",
}

M.MetadataDefaultHttpTokensState = {
    optional = "optional",
    required = "required",
    no_preference = "no-preference",
}

M.DefaultHttpTokensEnforcedState = {
    disabled = "disabled",
    enabled = "enabled",
    no_preference = "no-preference",
}

M.DefaultInstanceMetadataTagsState = {
    disabled = "disabled",
    enabled = "enabled",
    no_preference = "no-preference",
}

M.HostTenancy = {
    default = "default",
    dedicated = "dedicated",
    host = "host",
}

M.PublicIpDnsOption = {
    public_dual_stack_dns_name = "public-dual-stack-dns-name",
    public_ipv4_dns_name = "public-ipv4-dns-name",
    public_ipv6_dns_name = "public-ipv6-dns-name",
}

M.TargetStorageTier = {
    archive = "archive",
}

M.TrafficMirrorFilterRuleField = {
    destination_port_range = "destination-port-range",
    source_port_range = "source-port-range",
    protocol = "protocol",
    description = "description",
}

M.TrafficMirrorSessionField = {
    packet_length = "packet-length",
    description = "description",
    virtual_network_id = "virtual-network-id",
}

M.EncryptionSupportOptionValue = {
    enable = "enable",
    disable = "disable",
}

M.VpcTenancy = {
    default = "default",
}

M.Status = {
    moveInProgress = "MoveInProgress",
    inVpc = "InVpc",
    inClassic = "InClassic",
}

M.VerificationMethod = {
    remarks_x509 = "remarks-x509",
    dns_token = "dns-token",
}

M.ReportInstanceReasonCodes = {
    instance_stuck_in_state = "instance-stuck-in-state",
    unresponsive = "unresponsive",
    not_accepting_credentials = "not-accepting-credentials",
    password_not_available = "password-not-available",
    performance_network = "performance-network",
    performance_instance_store = "performance-instance-store",
    performance_ebs_volume = "performance-ebs-volume",
    performance_other = "performance-other",
    other = "other",
}

M.ReportStatusType = {
    ok = "ok",
    impaired = "impaired",
}

M.ResetFpgaImageAttributeName = {
    loadPermission = "loadPermission",
}

M.ResetImageAttributeName = {
    launchPermission = "launchPermission",
}

M.MembershipType = {
    static = "static",
    igmp = "igmp",
}

return M
