local record AddGroupMemberInput
    DirectoryId: string
    GroupName: string
    MemberName: string
    MemberRealm: string
    ClientToken: string
end

local record AddGroupMemberOutput
end

local record CreateGroupInput
    DirectoryId: string
    SAMAccountName: string
    GroupType: string
    GroupScope: string
    OtherAttributes: {string : AttributeValue}
    ClientToken: string
end

local record CreateGroupOutput
    DirectoryId: string
    SAMAccountName: string
    SID: string
end

local record CreateUserInput
    DirectoryId: string
    SAMAccountName: string
    EmailAddress: string
    GivenName: string
    Surname: string
    OtherAttributes: {string : AttributeValue}
    ClientToken: string
end

local record CreateUserOutput
    DirectoryId: string
    SID: string
    SAMAccountName: string
end

local record DeleteGroupInput
    DirectoryId: string
    SAMAccountName: string
    ClientToken: string
end

local record DeleteGroupOutput
end

local record DeleteUserInput
    DirectoryId: string
    SAMAccountName: string
    ClientToken: string
end

local record DeleteUserOutput
end

local record DescribeGroupInput
    DirectoryId: string
    Realm: string
    SAMAccountName: string
    OtherAttributes: {string}
end

local record DescribeGroupOutput
    DirectoryId: string
    Realm: string
    SID: string
    SAMAccountName: string
    DistinguishedName: string
    GroupType: string
    GroupScope: string
    OtherAttributes: {string : AttributeValue}
end

local record DescribeUserInput
    DirectoryId: string
    SAMAccountName: string
    OtherAttributes: {string}
    Realm: string
end

local record DescribeUserOutput
    DirectoryId: string
    Realm: string
    SID: string
    SAMAccountName: string
    DistinguishedName: string
    UserPrincipalName: string
    EmailAddress: string
    GivenName: string
    Surname: string
    Enabled: boolean
    OtherAttributes: {string : AttributeValue}
end

local record DisableUserInput
    DirectoryId: string
    SAMAccountName: string
    ClientToken: string
end

local record DisableUserOutput
end

local record ListGroupMembersInput
    DirectoryId: string
    Realm: string
    MemberRealm: string
    SAMAccountName: string
    NextToken: string
    MaxResults: number
end

local record ListGroupMembersOutput
    DirectoryId: string
    Realm: string
    MemberRealm: string
    Members: {Member}
    NextToken: string
end

local record ListGroupsInput
    DirectoryId: string
    Realm: string
    NextToken: string
    MaxResults: number
end

local record ListGroupsOutput
    DirectoryId: string
    Realm: string
    Groups: {GroupSummary}
    NextToken: string
end

local record ListGroupsForMemberInput
    DirectoryId: string
    Realm: string
    MemberRealm: string
    SAMAccountName: string
    NextToken: string
    MaxResults: number
end

local record ListGroupsForMemberOutput
    DirectoryId: string
    Realm: string
    MemberRealm: string
    Groups: {GroupSummary}
    NextToken: string
end

local record ListUsersInput
    DirectoryId: string
    Realm: string
    NextToken: string
    MaxResults: number
end

local record ListUsersOutput
    DirectoryId: string
    Realm: string
    Users: {UserSummary}
    NextToken: string
end

local record RemoveGroupMemberInput
    DirectoryId: string
    GroupName: string
    MemberName: string
    MemberRealm: string
    ClientToken: string
end

local record RemoveGroupMemberOutput
end

local record SearchGroupsInput
    DirectoryId: string
    SearchString: string
    SearchAttributes: {string}
    Realm: string
    NextToken: string
    MaxResults: number
end

local record SearchGroupsOutput
    DirectoryId: string
    Realm: string
    Groups: {Group}
    NextToken: string
end

local record SearchUsersInput
    DirectoryId: string
    Realm: string
    SearchString: string
    SearchAttributes: {string}
    NextToken: string
    MaxResults: number
end

local record SearchUsersOutput
    DirectoryId: string
    Realm: string
    Users: {User}
    NextToken: string
end

local record UpdateGroupInput
    DirectoryId: string
    SAMAccountName: string
    GroupType: string
    GroupScope: string
    OtherAttributes: {string : AttributeValue}
    UpdateType: string
    ClientToken: string
end

local record UpdateGroupOutput
end

local record UpdateUserInput
    DirectoryId: string
    SAMAccountName: string
    EmailAddress: string
    GivenName: string
    Surname: string
    OtherAttributes: {string : AttributeValue}
    UpdateType: string
    ClientToken: string
end

local record UpdateUserOutput
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record DirectoryUnavailableException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record DirectoryUnavailableException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record DirectoryUnavailableException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record DirectoryUnavailableException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record DirectoryUnavailableException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record DirectoryUnavailableException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record DirectoryUnavailableException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record DirectoryUnavailableException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record DirectoryUnavailableException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record DirectoryUnavailableException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record DirectoryUnavailableException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record DirectoryUnavailableException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record DirectoryUnavailableException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record DirectoryUnavailableException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record DirectoryUnavailableException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record DirectoryUnavailableException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
end

local record AccessDeniedException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
end

local record DirectoryUnavailableException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record ValidationException
    Message: string
    Reason: string
end

local type UpdateType = "ADD" | "REPLACE" | "REMOVE"

local type GroupScope = "DomainLocal" | "Global" | "Universal" | "BuiltinLocal"

local type GroupType = "Distribution" | "Security"

local record M
    AddGroupMemberInput: AddGroupMemberInput
    AddGroupMemberOutput: AddGroupMemberOutput
    CreateGroupInput: CreateGroupInput
    CreateGroupOutput: CreateGroupOutput
    CreateUserInput: CreateUserInput
    CreateUserOutput: CreateUserOutput
    DeleteGroupInput: DeleteGroupInput
    DeleteGroupOutput: DeleteGroupOutput
    DeleteUserInput: DeleteUserInput
    DeleteUserOutput: DeleteUserOutput
    DescribeGroupInput: DescribeGroupInput
    DescribeGroupOutput: DescribeGroupOutput
    DescribeUserInput: DescribeUserInput
    DescribeUserOutput: DescribeUserOutput
    DisableUserInput: DisableUserInput
    DisableUserOutput: DisableUserOutput
    ListGroupMembersInput: ListGroupMembersInput
    ListGroupMembersOutput: ListGroupMembersOutput
    ListGroupsInput: ListGroupsInput
    ListGroupsOutput: ListGroupsOutput
    ListGroupsForMemberInput: ListGroupsForMemberInput
    ListGroupsForMemberOutput: ListGroupsForMemberOutput
    ListUsersInput: ListUsersInput
    ListUsersOutput: ListUsersOutput
    RemoveGroupMemberInput: RemoveGroupMemberInput
    RemoveGroupMemberOutput: RemoveGroupMemberOutput
    SearchGroupsInput: SearchGroupsInput
    SearchGroupsOutput: SearchGroupsOutput
    SearchUsersInput: SearchUsersInput
    SearchUsersOutput: SearchUsersOutput
    UpdateGroupInput: UpdateGroupInput
    UpdateGroupOutput: UpdateGroupOutput
    UpdateUserInput: UpdateUserInput
    UpdateUserOutput: UpdateUserOutput
end

return M
