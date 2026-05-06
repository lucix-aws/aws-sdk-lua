local record CancelCapacityTaskInput
    CapacityTaskId: string
    OutpostIdentifier: string
end

local record CancelCapacityTaskOutput
end

local record CancelOrderInput
    OrderId: string
end

local record CancelOrderOutput
end

local record CreateOrderInput
    OutpostIdentifier: string
    LineItems: {LineItemRequest}
    PaymentOption: string
    PaymentTerm: string
end

local record CreateOrderOutput
    Order: Order
end

local record CreateOutpostInput
    Name: string
    Description: string
    SiteId: string
    AvailabilityZone: string
    AvailabilityZoneId: string
    Tags: {string : string}
    SupportedHardwareType: string
end

local record CreateOutpostOutput
    Outpost: Outpost
end

local record CreateRenewalInput
    PaymentOption: string
    PaymentTerm: string
    OutpostIdentifier: string
    ClientToken: string
end

local record CreateRenewalOutput
    PaymentOption: string
    PaymentTerm: string
    OutpostId: string
    UpfrontPrice: number
    MonthlyRecurringPrice: number
end

local record CreateSiteInput
    Name: string
    Description: string
    Notes: string
    Tags: {string : string}
    OperatingAddress: Address
    ShippingAddress: Address
    RackPhysicalProperties: RackPhysicalProperties
end

local record CreateSiteOutput
    Site: Site
end

local record DeleteOutpostInput
    OutpostId: string
end

local record DeleteOutpostOutput
end

local record DeleteSiteInput
    SiteId: string
end

local record DeleteSiteOutput
end

local record GetCapacityTaskInput
    CapacityTaskId: string
    OutpostIdentifier: string
end

local record GetCapacityTaskOutput
    CapacityTaskId: string
    OutpostId: string
    OrderId: string
    AssetId: string
    RequestedInstancePools: {InstanceTypeCapacity}
    InstancesToExclude: InstancesToExclude
    DryRun: boolean
    CapacityTaskStatus: string
    Failed: CapacityTaskFailure
    CreationDate: number
    CompletionDate: number
    LastModifiedDate: number
    TaskActionOnBlockingInstances: string
end

local record GetCatalogItemInput
    CatalogItemId: string
end

local record GetCatalogItemOutput
    CatalogItem: CatalogItem
end

local record GetConnectionInput
    ConnectionId: string
end

local record GetConnectionOutput
    ConnectionId: string
    ConnectionDetails: ConnectionDetails
end

local record GetOrderInput
    OrderId: string
end

local record GetOrderOutput
    Order: Order
end

local record GetOutpostInput
    OutpostId: string
end

local record GetOutpostOutput
    Outpost: Outpost
end

local record GetOutpostBillingInformationInput
    NextToken: string
    MaxResults: number
    OutpostIdentifier: string
end

local record GetOutpostBillingInformationOutput
    NextToken: string
    Subscriptions: {Subscription}
    ContractEndDate: string
    PaymentTerm: string
    PaymentOption: string
end

local record GetOutpostInstanceTypesInput
    OutpostId: string
    NextToken: string
    MaxResults: number
end

local record GetOutpostInstanceTypesOutput
    InstanceTypes: {InstanceTypeItem}
    NextToken: string
    OutpostId: string
    OutpostArn: string
end

local record GetOutpostSupportedInstanceTypesInput
    OutpostIdentifier: string
    OrderId: string
    AssetId: string
    MaxResults: number
    NextToken: string
end

local record GetOutpostSupportedInstanceTypesOutput
    InstanceTypes: {InstanceTypeItem}
    NextToken: string
end

local record GetRenewalPricingInput
    OutpostIdentifier: string
end

local record GetRenewalPricingOutput
    PricingResult: string
    PricingOptions: {PricingOption}
end

local record GetSiteInput
    SiteId: string
end

local record GetSiteOutput
    Site: Site
end

local record GetSiteAddressInput
    SiteId: string
    AddressType: string
end

local record GetSiteAddressOutput
    SiteId: string
    AddressType: string
    Address: Address
end

local record ListAssetInstancesInput
    OutpostIdentifier: string
    AssetIdFilter: {string}
    InstanceTypeFilter: {string}
    AccountIdFilter: {string}
    AwsServiceFilter: {string}
    MaxResults: number
    NextToken: string
end

local record ListAssetInstancesOutput
    AssetInstances: {AssetInstance}
    NextToken: string
end

local record ListAssetsInput
    OutpostIdentifier: string
    HostIdFilter: {string}
    MaxResults: number
    NextToken: string
    StatusFilter: {string}
    AssetTypeFilter: {string}
end

local record ListAssetsOutput
    Assets: {AssetInfo}
    NextToken: string
end

local record ListBlockingInstancesForCapacityTaskInput
    OutpostIdentifier: string
    CapacityTaskId: string
    MaxResults: number
    NextToken: string
end

local record ListBlockingInstancesForCapacityTaskOutput
    BlockingInstances: {BlockingInstance}
    NextToken: string
end

local record ListCapacityTasksInput
    OutpostIdentifierFilter: string
    MaxResults: number
    NextToken: string
    CapacityTaskStatusFilter: {string}
end

local record ListCapacityTasksOutput
    CapacityTasks: {CapacityTaskSummary}
    NextToken: string
end

local record ListCatalogItemsInput
    NextToken: string
    MaxResults: number
    ItemClassFilter: {string}
    SupportedStorageFilter: {string}
    EC2FamilyFilter: {string}
end

local record ListCatalogItemsOutput
    CatalogItems: {CatalogItem}
    NextToken: string
end

local record ListOrdersInput
    OutpostIdentifierFilter: string
    NextToken: string
    MaxResults: number
end

local record ListOrdersOutput
    Orders: {OrderSummary}
    NextToken: string
end

local record ListOutpostsInput
    NextToken: string
    MaxResults: number
    LifeCycleStatusFilter: {string}
    AvailabilityZoneFilter: {string}
    AvailabilityZoneIdFilter: {string}
end

local record ListOutpostsOutput
    Outposts: {Outpost}
    NextToken: string
end

local record ListSitesInput
    NextToken: string
    MaxResults: number
    OperatingAddressCountryCodeFilter: {string}
    OperatingAddressStateOrRegionFilter: {string}
    OperatingAddressCityFilter: {string}
end

local record ListSitesOutput
    Sites: {Site}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record StartCapacityTaskInput
    OutpostIdentifier: string
    OrderId: string
    AssetId: string
    InstancePools: {InstanceTypeCapacity}
    InstancesToExclude: InstancesToExclude
    DryRun: boolean
    TaskActionOnBlockingInstances: string
end

local record StartCapacityTaskOutput
    CapacityTaskId: string
    OutpostId: string
    OrderId: string
    AssetId: string
    RequestedInstancePools: {InstanceTypeCapacity}
    InstancesToExclude: InstancesToExclude
    DryRun: boolean
    CapacityTaskStatus: string
    Failed: CapacityTaskFailure
    CreationDate: number
    CompletionDate: number
    LastModifiedDate: number
    TaskActionOnBlockingInstances: string
end

local record StartConnectionInput
    DeviceSerialNumber: string
    AssetId: string
    ClientPublicKey: string
    NetworkInterfaceDeviceIndex: number
end

local record StartConnectionOutput
    ConnectionId: string
    UnderlayIpAddress: string
end

local record StartOutpostDecommissionInput
    OutpostIdentifier: string
    ValidateOnly: boolean
end

local record StartOutpostDecommissionOutput
    Status: string
    BlockingResourceTypes: {string}
end

local record TagResourceInput
    ResourceArn: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateOutpostInput
    OutpostId: string
    Name: string
    Description: string
    SupportedHardwareType: string
end

local record UpdateOutpostOutput
    Outpost: Outpost
end

local record UpdateSiteInput
    SiteId: string
    Name: string
    Description: string
    Notes: string
end

local record UpdateSiteOutput
    Site: Site
end

local record UpdateSiteAddressInput
    SiteId: string
    AddressType: string
    Address: Address
end

local record UpdateSiteAddressOutput
    AddressType: string
    Address: Address
end

local record UpdateSiteRackPhysicalPropertiesInput
    SiteId: string
    PowerDrawKva: string
    PowerPhase: string
    PowerConnector: string
    PowerFeedDrop: string
    UplinkGbps: string
    UplinkCount: string
    FiberOpticCableType: string
    OpticalStandard: string
    MaximumSupportedWeightLbs: string
end

local record UpdateSiteRackPhysicalPropertiesOutput
    Site: Site
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local type MaximumSupportedWeightLbs = "NO_LIMIT" | "MAX_1400_LBS" | "MAX_1600_LBS" | "MAX_1800_LBS" | "MAX_2000_LBS"

local type UplinkGbps = "UPLINK_1G" | "UPLINK_10G" | "UPLINK_40G" | "UPLINK_100G"

local type PowerDrawKva = "POWER_5_KVA" | "POWER_10_KVA" | "POWER_15_KVA" | "POWER_30_KVA"

local type TaskActionOnBlockingInstances = "WAIT_FOR_EVACUATION" | "FAIL_TASK"

local type SupportedHardwareType = "RACK" | "SERVER"

local type FiberOpticCableType = "SINGLE_MODE" | "MULTI_MODE"

local type OpticalStandard = "OPTIC_10GBASE_SR" | "OPTIC_10GBASE_IR" | "OPTIC_10GBASE_LR" | "OPTIC_40GBASE_SR" | "OPTIC_40GBASE_ESR" | "OPTIC_40GBASE_IR4_LR4L" | "OPTIC_40GBASE_LR4" | "OPTIC_100GBASE_SR4" | "OPTIC_100GBASE_CWDM4" | "OPTIC_100GBASE_LR4" | "OPTIC_100G_PSM4_MSA" | "OPTIC_1000BASE_LX" | "OPTIC_1000BASE_SX"

local type PowerConnector = "L6_30P" | "IEC309" | "AH530P7W" | "AH532P6W" | "CS8365C"

local type PowerFeedDrop = "ABOVE_RACK" | "BELOW_RACK"

local type DecommissionRequestStatus = "SKIPPED" | "BLOCKED" | "REQUESTED"

local type PowerPhase = "SINGLE_PHASE" | "THREE_PHASE"

local type PaymentTerm = "THREE_YEARS" | "ONE_YEAR" | "FIVE_YEARS"

local type PaymentOption = "ALL_UPFRONT" | "NO_UPFRONT" | "PARTIAL_UPFRONT"

local type PricingResult = "PRICED" | "UNABLE_TO_PRICE"

local type AddressType = "SHIPPING_ADDRESS" | "OPERATING_ADDRESS"

local type CapacityTaskStatus = "REQUESTED" | "IN_PROGRESS" | "FAILED" | "COMPLETED" | "WAITING_FOR_EVACUATION" | "CANCELLATION_IN_PROGRESS" | "CANCELLED"

local type UplinkCount = "UPLINK_COUNT_1" | "UPLINK_COUNT_2" | "UPLINK_COUNT_3" | "UPLINK_COUNT_4" | "UPLINK_COUNT_5" | "UPLINK_COUNT_6" | "UPLINK_COUNT_7" | "UPLINK_COUNT_8" | "UPLINK_COUNT_12" | "UPLINK_COUNT_16"

local record M
    CancelCapacityTaskInput: CancelCapacityTaskInput
    CancelCapacityTaskOutput: CancelCapacityTaskOutput
    CancelOrderInput: CancelOrderInput
    CancelOrderOutput: CancelOrderOutput
    CreateOrderInput: CreateOrderInput
    CreateOrderOutput: CreateOrderOutput
    CreateOutpostInput: CreateOutpostInput
    CreateOutpostOutput: CreateOutpostOutput
    CreateRenewalInput: CreateRenewalInput
    CreateRenewalOutput: CreateRenewalOutput
    CreateSiteInput: CreateSiteInput
    CreateSiteOutput: CreateSiteOutput
    DeleteOutpostInput: DeleteOutpostInput
    DeleteOutpostOutput: DeleteOutpostOutput
    DeleteSiteInput: DeleteSiteInput
    DeleteSiteOutput: DeleteSiteOutput
    GetCapacityTaskInput: GetCapacityTaskInput
    GetCapacityTaskOutput: GetCapacityTaskOutput
    GetCatalogItemInput: GetCatalogItemInput
    GetCatalogItemOutput: GetCatalogItemOutput
    GetConnectionInput: GetConnectionInput
    GetConnectionOutput: GetConnectionOutput
    GetOrderInput: GetOrderInput
    GetOrderOutput: GetOrderOutput
    GetOutpostInput: GetOutpostInput
    GetOutpostOutput: GetOutpostOutput
    GetOutpostBillingInformationInput: GetOutpostBillingInformationInput
    GetOutpostBillingInformationOutput: GetOutpostBillingInformationOutput
    GetOutpostInstanceTypesInput: GetOutpostInstanceTypesInput
    GetOutpostInstanceTypesOutput: GetOutpostInstanceTypesOutput
    GetOutpostSupportedInstanceTypesInput: GetOutpostSupportedInstanceTypesInput
    GetOutpostSupportedInstanceTypesOutput: GetOutpostSupportedInstanceTypesOutput
    GetRenewalPricingInput: GetRenewalPricingInput
    GetRenewalPricingOutput: GetRenewalPricingOutput
    GetSiteInput: GetSiteInput
    GetSiteOutput: GetSiteOutput
    GetSiteAddressInput: GetSiteAddressInput
    GetSiteAddressOutput: GetSiteAddressOutput
    ListAssetInstancesInput: ListAssetInstancesInput
    ListAssetInstancesOutput: ListAssetInstancesOutput
    ListAssetsInput: ListAssetsInput
    ListAssetsOutput: ListAssetsOutput
    ListBlockingInstancesForCapacityTaskInput: ListBlockingInstancesForCapacityTaskInput
    ListBlockingInstancesForCapacityTaskOutput: ListBlockingInstancesForCapacityTaskOutput
    ListCapacityTasksInput: ListCapacityTasksInput
    ListCapacityTasksOutput: ListCapacityTasksOutput
    ListCatalogItemsInput: ListCatalogItemsInput
    ListCatalogItemsOutput: ListCatalogItemsOutput
    ListOrdersInput: ListOrdersInput
    ListOrdersOutput: ListOrdersOutput
    ListOutpostsInput: ListOutpostsInput
    ListOutpostsOutput: ListOutpostsOutput
    ListSitesInput: ListSitesInput
    ListSitesOutput: ListSitesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    StartCapacityTaskInput: StartCapacityTaskInput
    StartCapacityTaskOutput: StartCapacityTaskOutput
    StartConnectionInput: StartConnectionInput
    StartConnectionOutput: StartConnectionOutput
    StartOutpostDecommissionInput: StartOutpostDecommissionInput
    StartOutpostDecommissionOutput: StartOutpostDecommissionOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateOutpostInput: UpdateOutpostInput
    UpdateOutpostOutput: UpdateOutpostOutput
    UpdateSiteInput: UpdateSiteInput
    UpdateSiteOutput: UpdateSiteOutput
    UpdateSiteAddressInput: UpdateSiteAddressInput
    UpdateSiteAddressOutput: UpdateSiteAddressOutput
    UpdateSiteRackPhysicalPropertiesInput: UpdateSiteRackPhysicalPropertiesInput
    UpdateSiteRackPhysicalPropertiesOutput: UpdateSiteRackPhysicalPropertiesOutput
end

return M
