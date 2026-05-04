local record CreateAddonInstanceInput
    ClientToken: string
    AddonSubscriptionId: string
    Tags: {Tag}
end

local record CreateAddonInstanceOutput
    AddonInstanceId: string
end

local record CreateAddonSubscriptionInput
    ClientToken: string
    AddonName: string
    Tags: {Tag}
end

local record CreateAddonSubscriptionOutput
    AddonSubscriptionId: string
end

local record CreateAddressListInput
    ClientToken: string
    AddressListName: string
    Tags: {Tag}
end

local record CreateAddressListOutput
    AddressListId: string
end

local record CreateAddressListImportJobInput
    ClientToken: string
    AddressListId: string
    Name: string
    ImportDataFormat: ImportDataFormat
end

local record CreateAddressListImportJobOutput
    JobId: string
    PreSignedUrl: string
end

local record CreateArchiveInput
    ClientToken: string
    ArchiveName: string
    Retention: ArchiveRetention
    KmsKeyArn: string
    Tags: {Tag}
end

local record CreateArchiveOutput
    ArchiveId: string
end

local record CreateIngressPointInput
    ClientToken: string
    IngressPointName: string
    Type: string
    RuleSetId: string
    TrafficPolicyId: string
    IngressPointConfiguration: IngressPointConfiguration
    NetworkConfiguration: NetworkConfiguration
    TlsPolicy: string
    Tags: {Tag}
end

local record CreateIngressPointOutput
    IngressPointId: string
end

local record CreateRelayInput
    ClientToken: string
    RelayName: string
    ServerName: string
    ServerPort: number
    Authentication: RelayAuthentication
    Tags: {Tag}
end

local record CreateRelayOutput
    RelayId: string
end

local record CreateRuleSetInput
    ClientToken: string
    RuleSetName: string
    Rules: {Rule}
    Tags: {Tag}
end

local record CreateRuleSetOutput
    RuleSetId: string
end

local record CreateTrafficPolicyInput
    ClientToken: string
    TrafficPolicyName: string
    PolicyStatements: {PolicyStatement}
    DefaultAction: string
    MaxMessageSizeBytes: number
    Tags: {Tag}
end

local record CreateTrafficPolicyOutput
    TrafficPolicyId: string
end

local record DeleteAddonInstanceInput
    AddonInstanceId: string
end

local record DeleteAddonInstanceOutput
end

local record DeleteAddonSubscriptionInput
    AddonSubscriptionId: string
end

local record DeleteAddonSubscriptionOutput
end

local record DeleteAddressListInput
    AddressListId: string
end

local record DeleteAddressListOutput
end

local record DeleteArchiveInput
    ArchiveId: string
end

local record DeleteArchiveOutput
end

local record DeleteIngressPointInput
    IngressPointId: string
end

local record DeleteIngressPointOutput
end

local record DeleteRelayInput
    RelayId: string
end

local record DeleteRelayOutput
end

local record DeleteRuleSetInput
    RuleSetId: string
end

local record DeleteRuleSetOutput
end

local record DeleteTrafficPolicyInput
    TrafficPolicyId: string
end

local record DeleteTrafficPolicyOutput
end

local record DeregisterMemberFromAddressListInput
    AddressListId: string
    Address: string
end

local record DeregisterMemberFromAddressListOutput
end

local record GetAddonInstanceInput
    AddonInstanceId: string
end

local record GetAddonInstanceOutput
    AddonSubscriptionId: string
    AddonName: string
    AddonInstanceArn: string
    CreatedTimestamp: number
end

local record GetAddonSubscriptionInput
    AddonSubscriptionId: string
end

local record GetAddonSubscriptionOutput
    AddonName: string
    AddonSubscriptionArn: string
    CreatedTimestamp: number
end

local record GetAddressListInput
    AddressListId: string
end

local record GetAddressListOutput
    AddressListId: string
    AddressListArn: string
    AddressListName: string
    CreatedTimestamp: number
    LastUpdatedTimestamp: number
end

local record GetAddressListImportJobInput
    JobId: string
end

local record GetAddressListImportJobOutput
    JobId: string
    Name: string
    Status: string
    PreSignedUrl: string
    ImportedItemsCount: number
    FailedItemsCount: number
    ImportDataFormat: ImportDataFormat
    AddressListId: string
    CreatedTimestamp: number
    StartTimestamp: number
    CompletedTimestamp: number
    Error: string
end

local record GetArchiveInput
    ArchiveId: string
end

local record GetArchiveOutput
    ArchiveId: string
    ArchiveName: string
    ArchiveArn: string
    ArchiveState: string
    Retention: ArchiveRetention
    CreatedTimestamp: number
    LastUpdatedTimestamp: number
    KmsKeyArn: string
end

local record GetArchiveExportInput
    ExportId: string
end

local record GetArchiveExportOutput
    ArchiveId: string
    Filters: ArchiveFilters
    FromTimestamp: number
    ToTimestamp: number
    MaxResults: number
    ExportDestinationConfiguration: ExportDestinationConfiguration
    Status: ExportStatus
end

local record GetArchiveMessageInput
    ArchivedMessageId: string
end

local record GetArchiveMessageOutput
    MessageDownloadLink: string
    Metadata: Metadata
    Envelope: Envelope
end

local record GetArchiveMessageContentInput
    ArchivedMessageId: string
end

local record GetArchiveMessageContentOutput
    Body: MessageBody
end

local record GetArchiveSearchInput
    SearchId: string
end

local record GetArchiveSearchOutput
    ArchiveId: string
    Filters: ArchiveFilters
    FromTimestamp: number
    ToTimestamp: number
    MaxResults: number
    Status: SearchStatus
end

local record GetArchiveSearchResultsInput
    SearchId: string
end

local record GetArchiveSearchResultsOutput
    Rows: {Row}
end

local record GetIngressPointInput
    IngressPointId: string
    IncludeTrustStoreContents: string
end

local record GetIngressPointOutput
    IngressPointId: string
    IngressPointName: string
    IngressPointArn: string
    Status: string
    Type: string
    ARecord: string
    RuleSetId: string
    TrafficPolicyId: string
    IngressPointAuthConfiguration: IngressPointAuthConfiguration
    NetworkConfiguration: NetworkConfiguration
    TlsPolicy: string
    CreatedTimestamp: number
    LastUpdatedTimestamp: number
end

local record GetMemberOfAddressListInput
    AddressListId: string
    Address: string
end

local record GetMemberOfAddressListOutput
    Address: string
    CreatedTimestamp: number
end

local record GetRelayInput
    RelayId: string
end

local record GetRelayOutput
    RelayId: string
    RelayArn: string
    RelayName: string
    ServerName: string
    ServerPort: number
    Authentication: RelayAuthentication
    CreatedTimestamp: number
    LastModifiedTimestamp: number
end

local record GetRuleSetInput
    RuleSetId: string
end

local record GetRuleSetOutput
    RuleSetId: string
    RuleSetArn: string
    RuleSetName: string
    CreatedDate: number
    LastModificationDate: number
    Rules: {Rule}
end

local record GetTrafficPolicyInput
    TrafficPolicyId: string
end

local record GetTrafficPolicyOutput
    TrafficPolicyName: string
    TrafficPolicyId: string
    TrafficPolicyArn: string
    PolicyStatements: {PolicyStatement}
    MaxMessageSizeBytes: number
    DefaultAction: string
    CreatedTimestamp: number
    LastUpdatedTimestamp: number
end

local record ListAddonInstancesInput
    NextToken: string
    PageSize: number
end

local record ListAddonInstancesOutput
    AddonInstances: {AddonInstance}
    NextToken: string
end

local record ListAddonSubscriptionsInput
    NextToken: string
    PageSize: number
end

local record ListAddonSubscriptionsOutput
    AddonSubscriptions: {AddonSubscription}
    NextToken: string
end

local record ListAddressListImportJobsInput
    AddressListId: string
    NextToken: string
    PageSize: number
end

local record ListAddressListImportJobsOutput
    ImportJobs: {ImportJob}
    NextToken: string
end

local record ListAddressListsInput
    NextToken: string
    PageSize: number
end

local record ListAddressListsOutput
    AddressLists: {AddressList}
    NextToken: string
end

local record ListArchiveExportsInput
    ArchiveId: string
    NextToken: string
    PageSize: number
end

local record ListArchiveExportsOutput
    Exports: {ExportSummary}
    NextToken: string
end

local record ListArchivesInput
    NextToken: string
    PageSize: number
end

local record ListArchivesOutput
    Archives: {Archive}
    NextToken: string
end

local record ListArchiveSearchesInput
    ArchiveId: string
    NextToken: string
    PageSize: number
end

local record ListArchiveSearchesOutput
    Searches: {SearchSummary}
    NextToken: string
end

local record ListIngressPointsInput
    PageSize: number
    NextToken: string
end

local record ListIngressPointsOutput
    IngressPoints: {IngressPoint}
    NextToken: string
end

local record ListMembersOfAddressListInput
    AddressListId: string
    Filter: AddressFilter
    NextToken: string
    PageSize: number
end

local record ListMembersOfAddressListOutput
    Addresses: {SavedAddress}
    NextToken: string
end

local record ListRelaysInput
    PageSize: number
    NextToken: string
end

local record ListRelaysOutput
    Relays: {Relay}
    NextToken: string
end

local record ListRuleSetsInput
    NextToken: string
    PageSize: number
end

local record ListRuleSetsOutput
    RuleSets: {RuleSet}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record ListTrafficPoliciesInput
    PageSize: number
    NextToken: string
end

local record ListTrafficPoliciesOutput
    TrafficPolicies: {TrafficPolicy}
    NextToken: string
end

local record RegisterMemberToAddressListInput
    AddressListId: string
    Address: string
end

local record RegisterMemberToAddressListOutput
end

local record StartAddressListImportJobInput
    JobId: string
end

local record StartAddressListImportJobOutput
end

local record StartArchiveExportInput
    ArchiveId: string
    Filters: ArchiveFilters
    FromTimestamp: number
    ToTimestamp: number
    MaxResults: number
    ExportDestinationConfiguration: ExportDestinationConfiguration
    IncludeMetadata: boolean
end

local record StartArchiveExportOutput
    ExportId: string
end

local record StartArchiveSearchInput
    ArchiveId: string
    Filters: ArchiveFilters
    FromTimestamp: number
    ToTimestamp: number
    MaxResults: number
end

local record StartArchiveSearchOutput
    SearchId: string
end

local record StopAddressListImportJobInput
    JobId: string
end

local record StopAddressListImportJobOutput
end

local record StopArchiveExportInput
    ExportId: string
end

local record StopArchiveExportOutput
end

local record StopArchiveSearchInput
    SearchId: string
end

local record StopArchiveSearchOutput
end

local record TagResourceInput
    ResourceArn: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateArchiveInput
    ArchiveId: string
    ArchiveName: string
    Retention: ArchiveRetention
end

local record UpdateArchiveOutput
end

local record UpdateIngressPointInput
    IngressPointId: string
    IngressPointName: string
    StatusToUpdate: string
    RuleSetId: string
    TrafficPolicyId: string
    IngressPointConfiguration: IngressPointConfiguration
    TlsPolicy: string
end

local record UpdateIngressPointOutput
end

local record UpdateRelayInput
    RelayId: string
    RelayName: string
    ServerName: string
    ServerPort: number
    Authentication: RelayAuthentication
end

local record UpdateRelayOutput
end

local record UpdateRuleSetInput
    RuleSetId: string
    RuleSetName: string
    Rules: {Rule}
end

local record UpdateRuleSetOutput
end

local record UpdateTrafficPolicyInput
    TrafficPolicyId: string
    TrafficPolicyName: string
    PolicyStatements: {PolicyStatement}
    DefaultAction: string
    MaxMessageSizeBytes: number
end

local record UpdateTrafficPolicyOutput
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
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
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
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
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
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
end

local record ThrottlingException
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
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
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ThrottlingException
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
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ValidationException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record ValidationException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
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
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
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
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
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
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
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
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
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
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local type AcceptAction = "ALLOW" | "DENY"

local type ImportJobStatus = "CREATED" | "PROCESSING" | "COMPLETED" | "FAILED" | "STOPPED"

local type IngressPointType = "OPEN" | "AUTH" | "MTLS"

local type ArchiveState = "ACTIVE" | "PENDING_DELETION"

local type IngressPointStatusToUpdate = "ACTIVE" | "CLOSED"

local type IngressPointStatus = "PROVISIONING" | "DEPROVISIONING" | "UPDATING" | "ACTIVE" | "CLOSED" | "FAILED" | "ASSOCIATED_VPC_ENDPOINT_DOES_NOT_EXIST"

local type TlsPolicy = "REQUIRED" | "OPTIONAL" | "FIPS"

local type TrustStoreResponseOption = "EXCLUDE" | "INCLUDE"

local record M
    CreateAddonInstanceInput: CreateAddonInstanceInput
    CreateAddonInstanceOutput: CreateAddonInstanceOutput
    CreateAddonSubscriptionInput: CreateAddonSubscriptionInput
    CreateAddonSubscriptionOutput: CreateAddonSubscriptionOutput
    CreateAddressListInput: CreateAddressListInput
    CreateAddressListOutput: CreateAddressListOutput
    CreateAddressListImportJobInput: CreateAddressListImportJobInput
    CreateAddressListImportJobOutput: CreateAddressListImportJobOutput
    CreateArchiveInput: CreateArchiveInput
    CreateArchiveOutput: CreateArchiveOutput
    CreateIngressPointInput: CreateIngressPointInput
    CreateIngressPointOutput: CreateIngressPointOutput
    CreateRelayInput: CreateRelayInput
    CreateRelayOutput: CreateRelayOutput
    CreateRuleSetInput: CreateRuleSetInput
    CreateRuleSetOutput: CreateRuleSetOutput
    CreateTrafficPolicyInput: CreateTrafficPolicyInput
    CreateTrafficPolicyOutput: CreateTrafficPolicyOutput
    DeleteAddonInstanceInput: DeleteAddonInstanceInput
    DeleteAddonInstanceOutput: DeleteAddonInstanceOutput
    DeleteAddonSubscriptionInput: DeleteAddonSubscriptionInput
    DeleteAddonSubscriptionOutput: DeleteAddonSubscriptionOutput
    DeleteAddressListInput: DeleteAddressListInput
    DeleteAddressListOutput: DeleteAddressListOutput
    DeleteArchiveInput: DeleteArchiveInput
    DeleteArchiveOutput: DeleteArchiveOutput
    DeleteIngressPointInput: DeleteIngressPointInput
    DeleteIngressPointOutput: DeleteIngressPointOutput
    DeleteRelayInput: DeleteRelayInput
    DeleteRelayOutput: DeleteRelayOutput
    DeleteRuleSetInput: DeleteRuleSetInput
    DeleteRuleSetOutput: DeleteRuleSetOutput
    DeleteTrafficPolicyInput: DeleteTrafficPolicyInput
    DeleteTrafficPolicyOutput: DeleteTrafficPolicyOutput
    DeregisterMemberFromAddressListInput: DeregisterMemberFromAddressListInput
    DeregisterMemberFromAddressListOutput: DeregisterMemberFromAddressListOutput
    GetAddonInstanceInput: GetAddonInstanceInput
    GetAddonInstanceOutput: GetAddonInstanceOutput
    GetAddonSubscriptionInput: GetAddonSubscriptionInput
    GetAddonSubscriptionOutput: GetAddonSubscriptionOutput
    GetAddressListInput: GetAddressListInput
    GetAddressListOutput: GetAddressListOutput
    GetAddressListImportJobInput: GetAddressListImportJobInput
    GetAddressListImportJobOutput: GetAddressListImportJobOutput
    GetArchiveInput: GetArchiveInput
    GetArchiveOutput: GetArchiveOutput
    GetArchiveExportInput: GetArchiveExportInput
    GetArchiveExportOutput: GetArchiveExportOutput
    GetArchiveMessageInput: GetArchiveMessageInput
    GetArchiveMessageOutput: GetArchiveMessageOutput
    GetArchiveMessageContentInput: GetArchiveMessageContentInput
    GetArchiveMessageContentOutput: GetArchiveMessageContentOutput
    GetArchiveSearchInput: GetArchiveSearchInput
    GetArchiveSearchOutput: GetArchiveSearchOutput
    GetArchiveSearchResultsInput: GetArchiveSearchResultsInput
    GetArchiveSearchResultsOutput: GetArchiveSearchResultsOutput
    GetIngressPointInput: GetIngressPointInput
    GetIngressPointOutput: GetIngressPointOutput
    GetMemberOfAddressListInput: GetMemberOfAddressListInput
    GetMemberOfAddressListOutput: GetMemberOfAddressListOutput
    GetRelayInput: GetRelayInput
    GetRelayOutput: GetRelayOutput
    GetRuleSetInput: GetRuleSetInput
    GetRuleSetOutput: GetRuleSetOutput
    GetTrafficPolicyInput: GetTrafficPolicyInput
    GetTrafficPolicyOutput: GetTrafficPolicyOutput
    ListAddonInstancesInput: ListAddonInstancesInput
    ListAddonInstancesOutput: ListAddonInstancesOutput
    ListAddonSubscriptionsInput: ListAddonSubscriptionsInput
    ListAddonSubscriptionsOutput: ListAddonSubscriptionsOutput
    ListAddressListImportJobsInput: ListAddressListImportJobsInput
    ListAddressListImportJobsOutput: ListAddressListImportJobsOutput
    ListAddressListsInput: ListAddressListsInput
    ListAddressListsOutput: ListAddressListsOutput
    ListArchiveExportsInput: ListArchiveExportsInput
    ListArchiveExportsOutput: ListArchiveExportsOutput
    ListArchivesInput: ListArchivesInput
    ListArchivesOutput: ListArchivesOutput
    ListArchiveSearchesInput: ListArchiveSearchesInput
    ListArchiveSearchesOutput: ListArchiveSearchesOutput
    ListIngressPointsInput: ListIngressPointsInput
    ListIngressPointsOutput: ListIngressPointsOutput
    ListMembersOfAddressListInput: ListMembersOfAddressListInput
    ListMembersOfAddressListOutput: ListMembersOfAddressListOutput
    ListRelaysInput: ListRelaysInput
    ListRelaysOutput: ListRelaysOutput
    ListRuleSetsInput: ListRuleSetsInput
    ListRuleSetsOutput: ListRuleSetsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTrafficPoliciesInput: ListTrafficPoliciesInput
    ListTrafficPoliciesOutput: ListTrafficPoliciesOutput
    RegisterMemberToAddressListInput: RegisterMemberToAddressListInput
    RegisterMemberToAddressListOutput: RegisterMemberToAddressListOutput
    StartAddressListImportJobInput: StartAddressListImportJobInput
    StartAddressListImportJobOutput: StartAddressListImportJobOutput
    StartArchiveExportInput: StartArchiveExportInput
    StartArchiveExportOutput: StartArchiveExportOutput
    StartArchiveSearchInput: StartArchiveSearchInput
    StartArchiveSearchOutput: StartArchiveSearchOutput
    StopAddressListImportJobInput: StopAddressListImportJobInput
    StopAddressListImportJobOutput: StopAddressListImportJobOutput
    StopArchiveExportInput: StopArchiveExportInput
    StopArchiveExportOutput: StopArchiveExportOutput
    StopArchiveSearchInput: StopArchiveSearchInput
    StopArchiveSearchOutput: StopArchiveSearchOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateArchiveInput: UpdateArchiveInput
    UpdateArchiveOutput: UpdateArchiveOutput
    UpdateIngressPointInput: UpdateIngressPointInput
    UpdateIngressPointOutput: UpdateIngressPointOutput
    UpdateRelayInput: UpdateRelayInput
    UpdateRelayOutput: UpdateRelayOutput
    UpdateRuleSetInput: UpdateRuleSetInput
    UpdateRuleSetOutput: UpdateRuleSetOutput
    UpdateTrafficPolicyInput: UpdateTrafficPolicyInput
    UpdateTrafficPolicyOutput: UpdateTrafficPolicyOutput
end

return M
