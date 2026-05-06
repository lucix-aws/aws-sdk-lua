local record CancelTagSyncTaskInput
    TaskArn: string
end

local record CancelTagSyncTaskOutput
end

local record CreateGroupInput
    Name: string
    Description: string
    ResourceQuery: ResourceQuery
    Tags: {string : string}
    Configuration: {GroupConfigurationItem}
    Criticality: number
    Owner: string
    DisplayName: string
end

local record CreateGroupOutput
    Group: Group
    ResourceQuery: ResourceQuery
    Tags: {string : string}
    GroupConfiguration: GroupConfiguration
end

local record DeleteGroupInput
    GroupName: string
    Group: string
end

local record DeleteGroupOutput
    Group: Group
end

local record GetAccountSettingsInput
end

local record GetAccountSettingsOutput
    AccountSettings: AccountSettings
end

local record GetGroupInput
    GroupName: string
    Group: string
end

local record GetGroupOutput
    Group: Group
end

local record GetGroupConfigurationInput
    Group: string
end

local record GetGroupConfigurationOutput
    GroupConfiguration: GroupConfiguration
end

local record GetGroupQueryInput
    GroupName: string
    Group: string
end

local record GetGroupQueryOutput
    GroupQuery: GroupQuery
end

local record GetTagsInput
    Arn: string
end

local record GetTagsOutput
    Arn: string
    Tags: {string : string}
end

local record GetTagSyncTaskInput
    TaskArn: string
end

local record GetTagSyncTaskOutput
    GroupArn: string
    GroupName: string
    TaskArn: string
    TagKey: string
    TagValue: string
    ResourceQuery: ResourceQuery
    RoleArn: string
    Status: string
    ErrorMessage: string
    CreatedAt: number
end

local record GroupResourcesInput
    Group: string
    ResourceArns: {string}
end

local record GroupResourcesOutput
    Succeeded: {string}
    Failed: {FailedResource}
    Pending: {PendingResource}
end

local record ListGroupingStatusesInput
    Group: string
    MaxResults: number
    Filters: {ListGroupingStatusesFilter}
    NextToken: string
end

local record ListGroupingStatusesOutput
    Group: string
    GroupingStatuses: {GroupingStatusesItem}
    NextToken: string
end

local record ListGroupResourcesInput
    GroupName: string
    Group: string
    Filters: {ResourceFilter}
    MaxResults: number
    NextToken: string
end

local record ListGroupResourcesOutput
    Resources: {ListGroupResourcesItem}
    ResourceIdentifiers: {ResourceIdentifier}
    NextToken: string
    QueryErrors: {QueryError}
end

local record ListGroupsInput
    Filters: {GroupFilter}
    MaxResults: number
    NextToken: string
end

local record ListGroupsOutput
    GroupIdentifiers: {GroupIdentifier}
    Groups: {Group}
    NextToken: string
end

local record ListTagSyncTasksInput
    Filters: {ListTagSyncTasksFilter}
    MaxResults: number
    NextToken: string
end

local record ListTagSyncTasksOutput
    TagSyncTasks: {TagSyncTaskItem}
    NextToken: string
end

local record PutGroupConfigurationInput
    Group: string
    Configuration: {GroupConfigurationItem}
end

local record PutGroupConfigurationOutput
end

local record SearchResourcesInput
    ResourceQuery: ResourceQuery
    MaxResults: number
    NextToken: string
end

local record SearchResourcesOutput
    ResourceIdentifiers: {ResourceIdentifier}
    NextToken: string
    QueryErrors: {QueryError}
end

local record StartTagSyncTaskInput
    Group: string
    TagKey: string
    TagValue: string
    ResourceQuery: ResourceQuery
    RoleArn: string
end

local record StartTagSyncTaskOutput
    GroupArn: string
    GroupName: string
    TaskArn: string
    TagKey: string
    TagValue: string
    ResourceQuery: ResourceQuery
    RoleArn: string
end

local record TagInput
    Arn: string
    Tags: {string : string}
end

local record TagOutput
    Arn: string
    Tags: {string : string}
end

local record UngroupResourcesInput
    Group: string
    ResourceArns: {string}
end

local record UngroupResourcesOutput
    Succeeded: {string}
    Failed: {FailedResource}
    Pending: {PendingResource}
end

local record UntagInput
    Arn: string
    Keys: {string}
end

local record UntagOutput
    Arn: string
    Keys: {string}
end

local record UpdateAccountSettingsInput
    GroupLifecycleEventsDesiredStatus: string
end

local record UpdateAccountSettingsOutput
    AccountSettings: AccountSettings
end

local record UpdateGroupInput
    GroupName: string
    Group: string
    Description: string
    Criticality: number
    Owner: string
    DisplayName: string
end

local record UpdateGroupOutput
    Group: Group
end

local record UpdateGroupQueryInput
    GroupName: string
    Group: string
    ResourceQuery: ResourceQuery
end

local record UpdateGroupQueryOutput
    GroupQuery: GroupQuery
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record MethodNotAllowedException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record MethodNotAllowedException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record MethodNotAllowedException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record MethodNotAllowedException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record MethodNotAllowedException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record MethodNotAllowedException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record MethodNotAllowedException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record MethodNotAllowedException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record MethodNotAllowedException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record MethodNotAllowedException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record MethodNotAllowedException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record MethodNotAllowedException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record MethodNotAllowedException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record MethodNotAllowedException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record MethodNotAllowedException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record MethodNotAllowedException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record MethodNotAllowedException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record MethodNotAllowedException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record MethodNotAllowedException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record MethodNotAllowedException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record MethodNotAllowedException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record MethodNotAllowedException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record MethodNotAllowedException
    Message: string
end

local record NotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local type GroupLifecycleEventsDesiredStatus = "ACTIVE" | "INACTIVE"

local type TagSyncTaskStatus = "ACTIVE" | "ERROR"

local record M
    CancelTagSyncTaskInput: CancelTagSyncTaskInput
    CancelTagSyncTaskOutput: CancelTagSyncTaskOutput
    CreateGroupInput: CreateGroupInput
    CreateGroupOutput: CreateGroupOutput
    DeleteGroupInput: DeleteGroupInput
    DeleteGroupOutput: DeleteGroupOutput
    GetAccountSettingsInput: GetAccountSettingsInput
    GetAccountSettingsOutput: GetAccountSettingsOutput
    GetGroupInput: GetGroupInput
    GetGroupOutput: GetGroupOutput
    GetGroupConfigurationInput: GetGroupConfigurationInput
    GetGroupConfigurationOutput: GetGroupConfigurationOutput
    GetGroupQueryInput: GetGroupQueryInput
    GetGroupQueryOutput: GetGroupQueryOutput
    GetTagsInput: GetTagsInput
    GetTagsOutput: GetTagsOutput
    GetTagSyncTaskInput: GetTagSyncTaskInput
    GetTagSyncTaskOutput: GetTagSyncTaskOutput
    GroupResourcesInput: GroupResourcesInput
    GroupResourcesOutput: GroupResourcesOutput
    ListGroupingStatusesInput: ListGroupingStatusesInput
    ListGroupingStatusesOutput: ListGroupingStatusesOutput
    ListGroupResourcesInput: ListGroupResourcesInput
    ListGroupResourcesOutput: ListGroupResourcesOutput
    ListGroupsInput: ListGroupsInput
    ListGroupsOutput: ListGroupsOutput
    ListTagSyncTasksInput: ListTagSyncTasksInput
    ListTagSyncTasksOutput: ListTagSyncTasksOutput
    PutGroupConfigurationInput: PutGroupConfigurationInput
    PutGroupConfigurationOutput: PutGroupConfigurationOutput
    SearchResourcesInput: SearchResourcesInput
    SearchResourcesOutput: SearchResourcesOutput
    StartTagSyncTaskInput: StartTagSyncTaskInput
    StartTagSyncTaskOutput: StartTagSyncTaskOutput
    TagInput: TagInput
    TagOutput: TagOutput
    UngroupResourcesInput: UngroupResourcesInput
    UngroupResourcesOutput: UngroupResourcesOutput
    UntagInput: UntagInput
    UntagOutput: UntagOutput
    UpdateAccountSettingsInput: UpdateAccountSettingsInput
    UpdateAccountSettingsOutput: UpdateAccountSettingsOutput
    UpdateGroupInput: UpdateGroupInput
    UpdateGroupOutput: UpdateGroupOutput
    UpdateGroupQueryInput: UpdateGroupQueryInput
    UpdateGroupQueryOutput: UpdateGroupQueryOutput
end

return M
