local record CreateGroupInput
    IdentityStoreId: string
    DisplayName: string
    Description: string
end

local record CreateGroupOutput
    GroupId: string
    IdentityStoreId: string
end

local record CreateGroupMembershipInput
    IdentityStoreId: string
    GroupId: string
    MemberId: MemberId
end

local record CreateGroupMembershipOutput
    MembershipId: string
    IdentityStoreId: string
end

local record CreateUserInput
    IdentityStoreId: string
    UserName: string
    Name: Name
    DisplayName: string
    NickName: string
    ProfileUrl: string
    Emails: {Email}
    Addresses: {Address}
    PhoneNumbers: {PhoneNumber}
    UserType: string
    Title: string
    PreferredLanguage: string
    Locale: string
    Timezone: string
    Photos: {Photo}
    Website: string
    Birthdate: string
    Roles: {Role}
    Extensions: {string : any}
end

local record CreateUserOutput
    IdentityStoreId: string
    UserId: string
end

local record DeleteGroupInput
    IdentityStoreId: string
    GroupId: string
end

local record DeleteGroupOutput
end

local record DeleteGroupMembershipInput
    IdentityStoreId: string
    MembershipId: string
end

local record DeleteGroupMembershipOutput
end

local record DeleteUserInput
    IdentityStoreId: string
    UserId: string
end

local record DeleteUserOutput
end

local record DescribeGroupInput
    IdentityStoreId: string
    GroupId: string
end

local record DescribeGroupOutput
    GroupId: string
    DisplayName: string
    ExternalIds: {ExternalId}
    Description: string
    CreatedAt: number
    UpdatedAt: number
    CreatedBy: string
    UpdatedBy: string
    IdentityStoreId: string
end

local record DescribeGroupMembershipInput
    IdentityStoreId: string
    MembershipId: string
end

local record DescribeGroupMembershipOutput
    IdentityStoreId: string
    MembershipId: string
    GroupId: string
    MemberId: MemberId
    CreatedAt: number
    UpdatedAt: number
    CreatedBy: string
    UpdatedBy: string
end

local record DescribeUserInput
    IdentityStoreId: string
    UserId: string
    Extensions: {string}
end

local record DescribeUserOutput
    IdentityStoreId: string
    UserId: string
    UserName: string
    ExternalIds: {ExternalId}
    Name: Name
    DisplayName: string
    NickName: string
    ProfileUrl: string
    Emails: {Email}
    Addresses: {Address}
    PhoneNumbers: {PhoneNumber}
    UserType: string
    Title: string
    PreferredLanguage: string
    Locale: string
    Timezone: string
    UserStatus: string
    Photos: {Photo}
    Website: string
    Birthdate: string
    Roles: {Role}
    CreatedAt: number
    CreatedBy: string
    UpdatedAt: number
    UpdatedBy: string
    Extensions: {string : any}
end

local record GetGroupIdInput
    IdentityStoreId: string
    AlternateIdentifier: AlternateIdentifier
end

local record GetGroupIdOutput
    GroupId: string
    IdentityStoreId: string
end

local record GetGroupMembershipIdInput
    IdentityStoreId: string
    GroupId: string
    MemberId: MemberId
end

local record GetGroupMembershipIdOutput
    MembershipId: string
    IdentityStoreId: string
end

local record GetUserIdInput
    IdentityStoreId: string
    AlternateIdentifier: AlternateIdentifier
end

local record GetUserIdOutput
    IdentityStoreId: string
    UserId: string
end

local record IsMemberInGroupsInput
    IdentityStoreId: string
    MemberId: MemberId
    GroupIds: {string}
end

local record IsMemberInGroupsOutput
    Results: {GroupMembershipExistenceResult}
end

local record ListGroupMembershipsInput
    IdentityStoreId: string
    GroupId: string
    MaxResults: number
    NextToken: string
end

local record ListGroupMembershipsOutput
    GroupMemberships: {GroupMembership}
    NextToken: string
end

local record ListGroupMembershipsForMemberInput
    IdentityStoreId: string
    MemberId: MemberId
    MaxResults: number
    NextToken: string
end

local record ListGroupMembershipsForMemberOutput
    GroupMemberships: {GroupMembership}
    NextToken: string
end

local record ListGroupsInput
    IdentityStoreId: string
    MaxResults: number
    NextToken: string
    Filters: {Filter}
end

local record ListGroupsOutput
    Groups: {Group}
    NextToken: string
end

local record ListUsersInput
    IdentityStoreId: string
    Extensions: {string}
    MaxResults: number
    NextToken: string
    Filters: {Filter}
end

local record ListUsersOutput
    Users: {User}
    NextToken: string
end

local record UpdateGroupInput
    IdentityStoreId: string
    GroupId: string
    Operations: {AttributeOperation}
end

local record UpdateGroupOutput
end

local record UpdateUserInput
    IdentityStoreId: string
    UserId: string
    Operations: {AttributeOperation}
end

local record UpdateUserOutput
end

local record ConflictException
    Message: string
    RequestId: string
    Reason: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Reason: string
    Message: string
    RequestId: string
end

local record ServiceQuotaExceededException
    Message: string
    RequestId: string
end

local record ValidationException
    Message: string
    RequestId: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
    Reason: string
end

local record ConflictException
    Message: string
    RequestId: string
    Reason: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Reason: string
    Message: string
    RequestId: string
end

local record ServiceQuotaExceededException
    Message: string
    RequestId: string
end

local record ValidationException
    Message: string
    RequestId: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
    Reason: string
end

local record ConflictException
    Message: string
    RequestId: string
    Reason: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Reason: string
    Message: string
    RequestId: string
end

local record ServiceQuotaExceededException
    Message: string
    RequestId: string
end

local record ValidationException
    Message: string
    RequestId: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
    Reason: string
end

local record ConflictException
    Message: string
    RequestId: string
    Reason: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Reason: string
    Message: string
    RequestId: string
end

local record ValidationException
    Message: string
    RequestId: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
    Reason: string
end

local record ConflictException
    Message: string
    RequestId: string
    Reason: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Reason: string
    Message: string
    RequestId: string
end

local record ValidationException
    Message: string
    RequestId: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
    Reason: string
end

local record ConflictException
    Message: string
    RequestId: string
    Reason: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Reason: string
    Message: string
    RequestId: string
end

local record ValidationException
    Message: string
    RequestId: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
    Reason: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Reason: string
    Message: string
    RequestId: string
end

local record ValidationException
    Message: string
    RequestId: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
    Reason: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Reason: string
    Message: string
    RequestId: string
end

local record ValidationException
    Message: string
    RequestId: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
    Reason: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Reason: string
    Message: string
    RequestId: string
end

local record ValidationException
    Message: string
    RequestId: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
    Reason: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Reason: string
    Message: string
    RequestId: string
end

local record ValidationException
    Message: string
    RequestId: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
    Reason: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Reason: string
    Message: string
    RequestId: string
end

local record ValidationException
    Message: string
    RequestId: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
    Reason: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Reason: string
    Message: string
    RequestId: string
end

local record ValidationException
    Message: string
    RequestId: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
    Reason: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Reason: string
    Message: string
    RequestId: string
end

local record ValidationException
    Message: string
    RequestId: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
    Reason: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Reason: string
    Message: string
    RequestId: string
end

local record ValidationException
    Message: string
    RequestId: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
    Reason: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Reason: string
    Message: string
    RequestId: string
end

local record ValidationException
    Message: string
    RequestId: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
    Reason: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Reason: string
    Message: string
    RequestId: string
end

local record ValidationException
    Message: string
    RequestId: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
    Reason: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Reason: string
    Message: string
    RequestId: string
end

local record ValidationException
    Message: string
    RequestId: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
    Reason: string
end

local record ConflictException
    Message: string
    RequestId: string
    Reason: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Reason: string
    Message: string
    RequestId: string
end

local record ServiceQuotaExceededException
    Message: string
    RequestId: string
end

local record ValidationException
    Message: string
    RequestId: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
    Reason: string
end

local record ConflictException
    Message: string
    RequestId: string
    Reason: string
end

local record ResourceNotFoundException
    ResourceType: string
    ResourceId: string
    Reason: string
    Message: string
    RequestId: string
end

local record ServiceQuotaExceededException
    Message: string
    RequestId: string
end

local record ValidationException
    Message: string
    RequestId: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    RequestId: string
    Reason: string
end

local record InternalServerException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
end

local record ThrottlingException
    Message: string
    RequestId: string
    RetryAfterSeconds: number
    Reason: string
end

local type UserStatus = "ENABLED" | "DISABLED"

local record M
    CreateGroupInput: CreateGroupInput
    CreateGroupOutput: CreateGroupOutput
    CreateGroupMembershipInput: CreateGroupMembershipInput
    CreateGroupMembershipOutput: CreateGroupMembershipOutput
    CreateUserInput: CreateUserInput
    CreateUserOutput: CreateUserOutput
    DeleteGroupInput: DeleteGroupInput
    DeleteGroupOutput: DeleteGroupOutput
    DeleteGroupMembershipInput: DeleteGroupMembershipInput
    DeleteGroupMembershipOutput: DeleteGroupMembershipOutput
    DeleteUserInput: DeleteUserInput
    DeleteUserOutput: DeleteUserOutput
    DescribeGroupInput: DescribeGroupInput
    DescribeGroupOutput: DescribeGroupOutput
    DescribeGroupMembershipInput: DescribeGroupMembershipInput
    DescribeGroupMembershipOutput: DescribeGroupMembershipOutput
    DescribeUserInput: DescribeUserInput
    DescribeUserOutput: DescribeUserOutput
    GetGroupIdInput: GetGroupIdInput
    GetGroupIdOutput: GetGroupIdOutput
    GetGroupMembershipIdInput: GetGroupMembershipIdInput
    GetGroupMembershipIdOutput: GetGroupMembershipIdOutput
    GetUserIdInput: GetUserIdInput
    GetUserIdOutput: GetUserIdOutput
    IsMemberInGroupsInput: IsMemberInGroupsInput
    IsMemberInGroupsOutput: IsMemberInGroupsOutput
    ListGroupMembershipsInput: ListGroupMembershipsInput
    ListGroupMembershipsOutput: ListGroupMembershipsOutput
    ListGroupMembershipsForMemberInput: ListGroupMembershipsForMemberInput
    ListGroupMembershipsForMemberOutput: ListGroupMembershipsForMemberOutput
    ListGroupsInput: ListGroupsInput
    ListGroupsOutput: ListGroupsOutput
    ListUsersInput: ListUsersInput
    ListUsersOutput: ListUsersOutput
    UpdateGroupInput: UpdateGroupInput
    UpdateGroupOutput: UpdateGroupOutput
    UpdateUserInput: UpdateUserInput
    UpdateUserOutput: UpdateUserOutput
end

return M
