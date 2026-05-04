local record AssociateDefaultViewInput
    ViewArn: string
end

local record AssociateDefaultViewOutput
    ViewArn: string
end

local record BatchGetViewInput
    ViewArns: {string}
end

local record BatchGetViewOutput
    Views: {View}
    Errors: {BatchGetViewError}
end

local record CreateIndexInput
    ClientToken: string
    Tags: {string : string}
end

local record CreateIndexOutput
    Arn: string
    State: string
    CreatedAt: number
end

local record CreateResourceExplorerSetupInput
    RegionList: {string}
    AggregatorRegions: {string}
    ViewName: string
end

local record CreateResourceExplorerSetupOutput
    TaskId: string
end

local record CreateViewInput
    ClientToken: string
    ViewName: string
    IncludedProperties: {IncludedProperty}
    Scope: string
    Filters: SearchFilter
    Tags: {string : string}
end

local record CreateViewOutput
    View: View
end

local record DeleteIndexInput
    Arn: string
end

local record DeleteIndexOutput
    Arn: string
    State: string
    LastUpdatedAt: number
end

local record DeleteResourceExplorerSetupInput
    RegionList: {string}
    DeleteInAllRegions: boolean
end

local record DeleteResourceExplorerSetupOutput
    TaskId: string
end

local record DeleteViewInput
    ViewArn: string
end

local record DeleteViewOutput
    ViewArn: string
end

local record DisassociateDefaultViewInput
end

local record DisassociateDefaultViewOutput
end

local record GetAccountLevelServiceConfigurationInput
end

local record GetAccountLevelServiceConfigurationOutput
    OrgConfiguration: OrgConfiguration
end

local record GetDefaultViewInput
end

local record GetDefaultViewOutput
    ViewArn: string
end

local record GetIndexInput
end

local record GetIndexOutput
    Arn: string
    Type: string
    State: string
    ReplicatingFrom: {string}
    ReplicatingTo: {string}
    CreatedAt: number
    LastUpdatedAt: number
    Tags: {string : string}
end

local record GetManagedViewInput
    ManagedViewArn: string
end

local record GetManagedViewOutput
    ManagedView: ManagedView
end

local record GetResourceExplorerSetupInput
    TaskId: string
    MaxResults: number
    NextToken: string
end

local record GetResourceExplorerSetupOutput
    Regions: {RegionStatus}
    NextToken: string
end

local record GetServiceIndexInput
end

local record GetServiceIndexOutput
    Arn: string
    Type: string
end

local record GetServiceViewInput
    ServiceViewArn: string
end

local record GetServiceViewOutput
    View: ServiceView
end

local record GetViewInput
    ViewArn: string
end

local record GetViewOutput
    View: View
    Tags: {string : string}
end

local record ListIndexesInput
    Type: string
    Regions: {string}
    MaxResults: number
    NextToken: string
end

local record ListIndexesOutput
    Indexes: {Index}
    NextToken: string
end

local record ListIndexesForMembersInput
    AccountIdList: {string}
    MaxResults: number
    NextToken: string
end

local record ListIndexesForMembersOutput
    Indexes: {MemberIndex}
    NextToken: string
end

local record ListManagedViewsInput
    MaxResults: number
    NextToken: string
    ServicePrincipal: string
end

local record ListManagedViewsOutput
    NextToken: string
    ManagedViews: {string}
end

local record ListResourcesInput
    Filters: SearchFilter
    MaxResults: number
    ViewArn: string
    NextToken: string
end

local record ListResourcesOutput
    Resources: {Resource}
    NextToken: string
    ViewArn: string
end

local record ListServiceIndexesInput
    Regions: {string}
    MaxResults: number
    NextToken: string
end

local record ListServiceIndexesOutput
    Indexes: {Index}
    NextToken: string
end

local record ListServiceViewsInput
    MaxResults: number
    NextToken: string
end

local record ListServiceViewsOutput
    NextToken: string
    ServiceViews: {string}
end

local record ListStreamingAccessForServicesInput
    MaxResults: number
    NextToken: string
end

local record ListStreamingAccessForServicesOutput
    StreamingAccessForServices: {StreamingAccessDetails}
    NextToken: string
end

local record ListSupportedResourceTypesInput
    NextToken: string
    MaxResults: number
end

local record ListSupportedResourceTypesOutput
    ResourceTypes: {SupportedResourceType}
    NextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record ListViewsInput
    NextToken: string
    MaxResults: number
end

local record ListViewsOutput
    Views: {string}
    NextToken: string
end

local record SearchInput
    QueryString: string
    MaxResults: number
    ViewArn: string
    NextToken: string
end

local record SearchOutput
    Resources: {Resource}
    NextToken: string
    ViewArn: string
    Count: ResourceCount
end

local record TagResourceInput
    resourceArn: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateIndexTypeInput
    Arn: string
    Type: string
end

local record UpdateIndexTypeOutput
    Arn: string
    Type: string
    State: string
    LastUpdatedAt: number
end

local record UpdateViewInput
    ViewArn: string
    IncludedProperties: {IncludedProperty}
    Filters: SearchFilter
end

local record UpdateViewOutput
    View: View
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
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
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ValidationException
    Message: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Name: string
    Value: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ValidationException
    Message: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
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
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ValidationException
    Message: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
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
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
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
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
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
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ValidationException
    Message: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
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
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
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
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
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
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ValidationException
    Message: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ValidationException
    Message: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ValidationException
    Message: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ValidationException
    Message: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ValidationException
    Message: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ValidationException
    Message: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ValidationException
    Message: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ValidationException
    Message: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Name: string
    Value: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Name: string
    Value: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ValidationException
    Message: string
    FieldList: {ValidationExceptionField}
end

local record M
    AssociateDefaultViewInput: AssociateDefaultViewInput
    AssociateDefaultViewOutput: AssociateDefaultViewOutput
    BatchGetViewInput: BatchGetViewInput
    BatchGetViewOutput: BatchGetViewOutput
    CreateIndexInput: CreateIndexInput
    CreateIndexOutput: CreateIndexOutput
    CreateResourceExplorerSetupInput: CreateResourceExplorerSetupInput
    CreateResourceExplorerSetupOutput: CreateResourceExplorerSetupOutput
    CreateViewInput: CreateViewInput
    CreateViewOutput: CreateViewOutput
    DeleteIndexInput: DeleteIndexInput
    DeleteIndexOutput: DeleteIndexOutput
    DeleteResourceExplorerSetupInput: DeleteResourceExplorerSetupInput
    DeleteResourceExplorerSetupOutput: DeleteResourceExplorerSetupOutput
    DeleteViewInput: DeleteViewInput
    DeleteViewOutput: DeleteViewOutput
    DisassociateDefaultViewInput: DisassociateDefaultViewInput
    DisassociateDefaultViewOutput: DisassociateDefaultViewOutput
    GetAccountLevelServiceConfigurationInput: GetAccountLevelServiceConfigurationInput
    GetAccountLevelServiceConfigurationOutput: GetAccountLevelServiceConfigurationOutput
    GetDefaultViewInput: GetDefaultViewInput
    GetDefaultViewOutput: GetDefaultViewOutput
    GetIndexInput: GetIndexInput
    GetIndexOutput: GetIndexOutput
    GetManagedViewInput: GetManagedViewInput
    GetManagedViewOutput: GetManagedViewOutput
    GetResourceExplorerSetupInput: GetResourceExplorerSetupInput
    GetResourceExplorerSetupOutput: GetResourceExplorerSetupOutput
    GetServiceIndexInput: GetServiceIndexInput
    GetServiceIndexOutput: GetServiceIndexOutput
    GetServiceViewInput: GetServiceViewInput
    GetServiceViewOutput: GetServiceViewOutput
    GetViewInput: GetViewInput
    GetViewOutput: GetViewOutput
    ListIndexesInput: ListIndexesInput
    ListIndexesOutput: ListIndexesOutput
    ListIndexesForMembersInput: ListIndexesForMembersInput
    ListIndexesForMembersOutput: ListIndexesForMembersOutput
    ListManagedViewsInput: ListManagedViewsInput
    ListManagedViewsOutput: ListManagedViewsOutput
    ListResourcesInput: ListResourcesInput
    ListResourcesOutput: ListResourcesOutput
    ListServiceIndexesInput: ListServiceIndexesInput
    ListServiceIndexesOutput: ListServiceIndexesOutput
    ListServiceViewsInput: ListServiceViewsInput
    ListServiceViewsOutput: ListServiceViewsOutput
    ListStreamingAccessForServicesInput: ListStreamingAccessForServicesInput
    ListStreamingAccessForServicesOutput: ListStreamingAccessForServicesOutput
    ListSupportedResourceTypesInput: ListSupportedResourceTypesInput
    ListSupportedResourceTypesOutput: ListSupportedResourceTypesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListViewsInput: ListViewsInput
    ListViewsOutput: ListViewsOutput
    SearchInput: SearchInput
    SearchOutput: SearchOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateIndexTypeInput: UpdateIndexTypeInput
    UpdateIndexTypeOutput: UpdateIndexTypeOutput
    UpdateViewInput: UpdateViewInput
    UpdateViewOutput: UpdateViewOutput
end

return M
