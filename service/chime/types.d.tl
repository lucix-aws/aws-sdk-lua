local record AssociatePhoneNumberWithUserInput
    AccountId: string
    UserId: string
    E164PhoneNumber: string
end

local record AssociatePhoneNumberWithUserOutput
end

local record AssociateSigninDelegateGroupsWithAccountInput
    AccountId: string
    SigninDelegateGroups: {SigninDelegateGroup}
end

local record AssociateSigninDelegateGroupsWithAccountOutput
end

local record BatchCreateRoomMembershipInput
    AccountId: string
    RoomId: string
    MembershipItemList: {MembershipItem}
end

local record BatchCreateRoomMembershipOutput
    Errors: {MemberError}
end

local record BatchDeletePhoneNumberInput
    PhoneNumberIds: {string}
end

local record BatchDeletePhoneNumberOutput
    PhoneNumberErrors: {PhoneNumberError}
end

local record BatchSuspendUserInput
    AccountId: string
    UserIdList: {string}
end

local record BatchSuspendUserOutput
    UserErrors: {UserError}
end

local record BatchUnsuspendUserInput
    AccountId: string
    UserIdList: {string}
end

local record BatchUnsuspendUserOutput
    UserErrors: {UserError}
end

local record BatchUpdatePhoneNumberInput
    UpdatePhoneNumberRequestItems: {UpdatePhoneNumberRequestItem}
end

local record BatchUpdatePhoneNumberOutput
    PhoneNumberErrors: {PhoneNumberError}
end

local record BatchUpdateUserInput
    AccountId: string
    UpdateUserRequestItems: {UpdateUserRequestItem}
end

local record BatchUpdateUserOutput
    UserErrors: {UserError}
end

local record CreateAccountInput
    Name: string
end

local record CreateAccountOutput
    Account: Account
end

local record CreateBotInput
    AccountId: string
    DisplayName: string
    Domain: string
end

local record CreateBotOutput
    Bot: Bot
end

local record CreateMeetingDialOutInput
    MeetingId: string
    FromPhoneNumber: string
    ToPhoneNumber: string
    JoinToken: string
end

local record CreateMeetingDialOutOutput
    TransactionId: string
end

local record CreatePhoneNumberOrderInput
    ProductType: string
    E164PhoneNumbers: {string}
end

local record CreatePhoneNumberOrderOutput
    PhoneNumberOrder: PhoneNumberOrder
end

local record CreateRoomInput
    AccountId: string
    Name: string
    ClientRequestToken: string
end

local record CreateRoomOutput
    Room: Room
end

local record CreateRoomMembershipInput
    AccountId: string
    RoomId: string
    MemberId: string
    Role: string
end

local record CreateRoomMembershipOutput
    RoomMembership: RoomMembership
end

local record CreateUserInput
    AccountId: string
    Username: string
    Email: string
    UserType: string
end

local record CreateUserOutput
    User: User
end

local record DeleteAccountInput
    AccountId: string
end

local record DeleteAccountOutput
end

local record DeleteEventsConfigurationInput
    AccountId: string
    BotId: string
end

local record DeleteEventsConfigurationOutput
end

local record DeletePhoneNumberInput
    PhoneNumberId: string
end

local record DeletePhoneNumberOutput
end

local record DeleteRoomInput
    AccountId: string
    RoomId: string
end

local record DeleteRoomOutput
end

local record DeleteRoomMembershipInput
    AccountId: string
    RoomId: string
    MemberId: string
end

local record DeleteRoomMembershipOutput
end

local record DisassociatePhoneNumberFromUserInput
    AccountId: string
    UserId: string
end

local record DisassociatePhoneNumberFromUserOutput
end

local record DisassociateSigninDelegateGroupsFromAccountInput
    AccountId: string
    GroupNames: {string}
end

local record DisassociateSigninDelegateGroupsFromAccountOutput
end

local record GetAccountInput
    AccountId: string
end

local record GetAccountOutput
    Account: Account
end

local record GetAccountSettingsInput
    AccountId: string
end

local record GetAccountSettingsOutput
    AccountSettings: AccountSettings
end

local record GetBotInput
    AccountId: string
    BotId: string
end

local record GetBotOutput
    Bot: Bot
end

local record GetEventsConfigurationInput
    AccountId: string
    BotId: string
end

local record GetEventsConfigurationOutput
    EventsConfiguration: EventsConfiguration
end

local record GetGlobalSettingsInput
end

local record GetGlobalSettingsOutput
    BusinessCalling: BusinessCallingSettings
    VoiceConnector: VoiceConnectorSettings
end

local record GetPhoneNumberInput
    PhoneNumberId: string
end

local record GetPhoneNumberOutput
    PhoneNumber: PhoneNumber
end

local record GetPhoneNumberOrderInput
    PhoneNumberOrderId: string
end

local record GetPhoneNumberOrderOutput
    PhoneNumberOrder: PhoneNumberOrder
end

local record GetPhoneNumberSettingsInput
end

local record GetPhoneNumberSettingsOutput
    CallingName: string
    CallingNameUpdatedTimestamp: number
end

local record GetRetentionSettingsInput
    AccountId: string
end

local record GetRetentionSettingsOutput
    RetentionSettings: RetentionSettings
    InitiateDeletionTimestamp: number
end

local record GetRoomInput
    AccountId: string
    RoomId: string
end

local record GetRoomOutput
    Room: Room
end

local record GetUserInput
    AccountId: string
    UserId: string
end

local record GetUserOutput
    User: User
end

local record GetUserSettingsInput
    AccountId: string
    UserId: string
end

local record GetUserSettingsOutput
    UserSettings: UserSettings
end

local record InviteUsersInput
    AccountId: string
    UserEmailList: {string}
    UserType: string
end

local record InviteUsersOutput
    Invites: {Invite}
end

local record ListAccountsInput
    Name: string
    UserEmail: string
    NextToken: string
    MaxResults: number
end

local record ListAccountsOutput
    Accounts: {Account}
    NextToken: string
end

local record ListBotsInput
    AccountId: string
    MaxResults: number
    NextToken: string
end

local record ListBotsOutput
    Bots: {Bot}
    NextToken: string
end

local record ListPhoneNumberOrdersInput
    NextToken: string
    MaxResults: number
end

local record ListPhoneNumberOrdersOutput
    PhoneNumberOrders: {PhoneNumberOrder}
    NextToken: string
end

local record ListPhoneNumbersInput
    Status: string
    ProductType: string
    FilterName: string
    FilterValue: string
    MaxResults: number
    NextToken: string
end

local record ListPhoneNumbersOutput
    PhoneNumbers: {PhoneNumber}
    NextToken: string
end

local record ListRoomMembershipsInput
    AccountId: string
    RoomId: string
    MaxResults: number
    NextToken: string
end

local record ListRoomMembershipsOutput
    RoomMemberships: {RoomMembership}
    NextToken: string
end

local record ListRoomsInput
    AccountId: string
    MemberId: string
    MaxResults: number
    NextToken: string
end

local record ListRoomsOutput
    Rooms: {Room}
    NextToken: string
end

local record ListSupportedPhoneNumberCountriesInput
    ProductType: string
end

local record ListSupportedPhoneNumberCountriesOutput
    PhoneNumberCountries: {PhoneNumberCountry}
end

local record ListUsersInput
    AccountId: string
    UserEmail: string
    UserType: string
    MaxResults: number
    NextToken: string
end

local record ListUsersOutput
    Users: {User}
    NextToken: string
end

local record LogoutUserInput
    AccountId: string
    UserId: string
end

local record LogoutUserOutput
end

local record PutEventsConfigurationInput
    AccountId: string
    BotId: string
    OutboundEventsHTTPSEndpoint: string
    LambdaFunctionArn: string
end

local record PutEventsConfigurationOutput
    EventsConfiguration: EventsConfiguration
end

local record PutRetentionSettingsInput
    AccountId: string
    RetentionSettings: RetentionSettings
end

local record PutRetentionSettingsOutput
    RetentionSettings: RetentionSettings
    InitiateDeletionTimestamp: number
end

local record RedactConversationMessageInput
    AccountId: string
    ConversationId: string
    MessageId: string
end

local record RedactConversationMessageOutput
end

local record RedactRoomMessageInput
    AccountId: string
    RoomId: string
    MessageId: string
end

local record RedactRoomMessageOutput
end

local record RegenerateSecurityTokenInput
    AccountId: string
    BotId: string
end

local record RegenerateSecurityTokenOutput
    Bot: Bot
end

local record ResetPersonalPINInput
    AccountId: string
    UserId: string
end

local record ResetPersonalPINOutput
    User: User
end

local record RestorePhoneNumberInput
    PhoneNumberId: string
end

local record RestorePhoneNumberOutput
    PhoneNumber: PhoneNumber
end

local record SearchAvailablePhoneNumbersInput
    AreaCode: string
    City: string
    Country: string
    State: string
    TollFreePrefix: string
    PhoneNumberType: string
    MaxResults: number
    NextToken: string
end

local record SearchAvailablePhoneNumbersOutput
    E164PhoneNumbers: {string}
    NextToken: string
end

local record UpdateAccountInput
    AccountId: string
    Name: string
    DefaultLicense: string
end

local record UpdateAccountOutput
    Account: Account
end

local record UpdateAccountSettingsInput
    AccountId: string
    AccountSettings: AccountSettings
end

local record UpdateAccountSettingsOutput
end

local record UpdateBotInput
    AccountId: string
    BotId: string
    Disabled: boolean
end

local record UpdateBotOutput
    Bot: Bot
end

local record UpdateGlobalSettingsInput
    BusinessCalling: BusinessCallingSettings
    VoiceConnector: VoiceConnectorSettings
end

local record UpdateGlobalSettingsOutput
end

local record UpdatePhoneNumberInput
    PhoneNumberId: string
    ProductType: string
    CallingName: string
end

local record UpdatePhoneNumberOutput
    PhoneNumber: PhoneNumber
end

local record UpdatePhoneNumberSettingsInput
    CallingName: string
end

local record UpdatePhoneNumberSettingsOutput
end

local record UpdateRoomInput
    AccountId: string
    RoomId: string
    Name: string
end

local record UpdateRoomOutput
    Room: Room
end

local record UpdateRoomMembershipInput
    AccountId: string
    RoomId: string
    MemberId: string
    Role: string
end

local record UpdateRoomMembershipOutput
    RoomMembership: RoomMembership
end

local record UpdateUserInput
    AccountId: string
    UserId: string
    LicenseType: string
    UserType: string
    AlexaForBusinessMetadata: AlexaForBusinessMetadata
end

local record UpdateUserOutput
    User: User
end

local record UpdateUserSettingsInput
    AccountId: string
    UserId: string
    UserSettings: UserSettings
end

local record UpdateUserSettingsOutput
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record UnprocessableEntityException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record AccessDeniedException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local type PhoneNumberProductType = "BusinessCalling" | "VoiceConnector" | "SipMediaApplicationDialIn"

local type PhoneNumberStatus = "AcquireInProgress" | "AcquireFailed" | "Unassigned" | "Assigned" | "ReleaseInProgress" | "DeleteInProgress" | "ReleaseFailed" | "DeleteFailed"

local type PhoneNumberAssociationName = "AccountId" | "UserId" | "VoiceConnectorId" | "VoiceConnectorGroupId" | "SipRuleId"

local type UserType = "PrivateUser" | "SharedDevice"

local type RoomMembershipRole = "Administrator" | "Member"

local type PhoneNumberType = "Local" | "TollFree"

local type License = "Basic" | "Plus" | "Pro" | "ProTrial"

local record M
    AssociatePhoneNumberWithUserInput: AssociatePhoneNumberWithUserInput
    AssociatePhoneNumberWithUserOutput: AssociatePhoneNumberWithUserOutput
    AssociateSigninDelegateGroupsWithAccountInput: AssociateSigninDelegateGroupsWithAccountInput
    AssociateSigninDelegateGroupsWithAccountOutput: AssociateSigninDelegateGroupsWithAccountOutput
    BatchCreateRoomMembershipInput: BatchCreateRoomMembershipInput
    BatchCreateRoomMembershipOutput: BatchCreateRoomMembershipOutput
    BatchDeletePhoneNumberInput: BatchDeletePhoneNumberInput
    BatchDeletePhoneNumberOutput: BatchDeletePhoneNumberOutput
    BatchSuspendUserInput: BatchSuspendUserInput
    BatchSuspendUserOutput: BatchSuspendUserOutput
    BatchUnsuspendUserInput: BatchUnsuspendUserInput
    BatchUnsuspendUserOutput: BatchUnsuspendUserOutput
    BatchUpdatePhoneNumberInput: BatchUpdatePhoneNumberInput
    BatchUpdatePhoneNumberOutput: BatchUpdatePhoneNumberOutput
    BatchUpdateUserInput: BatchUpdateUserInput
    BatchUpdateUserOutput: BatchUpdateUserOutput
    CreateAccountInput: CreateAccountInput
    CreateAccountOutput: CreateAccountOutput
    CreateBotInput: CreateBotInput
    CreateBotOutput: CreateBotOutput
    CreateMeetingDialOutInput: CreateMeetingDialOutInput
    CreateMeetingDialOutOutput: CreateMeetingDialOutOutput
    CreatePhoneNumberOrderInput: CreatePhoneNumberOrderInput
    CreatePhoneNumberOrderOutput: CreatePhoneNumberOrderOutput
    CreateRoomInput: CreateRoomInput
    CreateRoomOutput: CreateRoomOutput
    CreateRoomMembershipInput: CreateRoomMembershipInput
    CreateRoomMembershipOutput: CreateRoomMembershipOutput
    CreateUserInput: CreateUserInput
    CreateUserOutput: CreateUserOutput
    DeleteAccountInput: DeleteAccountInput
    DeleteAccountOutput: DeleteAccountOutput
    DeleteEventsConfigurationInput: DeleteEventsConfigurationInput
    DeleteEventsConfigurationOutput: DeleteEventsConfigurationOutput
    DeletePhoneNumberInput: DeletePhoneNumberInput
    DeletePhoneNumberOutput: DeletePhoneNumberOutput
    DeleteRoomInput: DeleteRoomInput
    DeleteRoomOutput: DeleteRoomOutput
    DeleteRoomMembershipInput: DeleteRoomMembershipInput
    DeleteRoomMembershipOutput: DeleteRoomMembershipOutput
    DisassociatePhoneNumberFromUserInput: DisassociatePhoneNumberFromUserInput
    DisassociatePhoneNumberFromUserOutput: DisassociatePhoneNumberFromUserOutput
    DisassociateSigninDelegateGroupsFromAccountInput: DisassociateSigninDelegateGroupsFromAccountInput
    DisassociateSigninDelegateGroupsFromAccountOutput: DisassociateSigninDelegateGroupsFromAccountOutput
    GetAccountInput: GetAccountInput
    GetAccountOutput: GetAccountOutput
    GetAccountSettingsInput: GetAccountSettingsInput
    GetAccountSettingsOutput: GetAccountSettingsOutput
    GetBotInput: GetBotInput
    GetBotOutput: GetBotOutput
    GetEventsConfigurationInput: GetEventsConfigurationInput
    GetEventsConfigurationOutput: GetEventsConfigurationOutput
    GetGlobalSettingsInput: GetGlobalSettingsInput
    GetGlobalSettingsOutput: GetGlobalSettingsOutput
    GetPhoneNumberInput: GetPhoneNumberInput
    GetPhoneNumberOutput: GetPhoneNumberOutput
    GetPhoneNumberOrderInput: GetPhoneNumberOrderInput
    GetPhoneNumberOrderOutput: GetPhoneNumberOrderOutput
    GetPhoneNumberSettingsInput: GetPhoneNumberSettingsInput
    GetPhoneNumberSettingsOutput: GetPhoneNumberSettingsOutput
    GetRetentionSettingsInput: GetRetentionSettingsInput
    GetRetentionSettingsOutput: GetRetentionSettingsOutput
    GetRoomInput: GetRoomInput
    GetRoomOutput: GetRoomOutput
    GetUserInput: GetUserInput
    GetUserOutput: GetUserOutput
    GetUserSettingsInput: GetUserSettingsInput
    GetUserSettingsOutput: GetUserSettingsOutput
    InviteUsersInput: InviteUsersInput
    InviteUsersOutput: InviteUsersOutput
    ListAccountsInput: ListAccountsInput
    ListAccountsOutput: ListAccountsOutput
    ListBotsInput: ListBotsInput
    ListBotsOutput: ListBotsOutput
    ListPhoneNumberOrdersInput: ListPhoneNumberOrdersInput
    ListPhoneNumberOrdersOutput: ListPhoneNumberOrdersOutput
    ListPhoneNumbersInput: ListPhoneNumbersInput
    ListPhoneNumbersOutput: ListPhoneNumbersOutput
    ListRoomMembershipsInput: ListRoomMembershipsInput
    ListRoomMembershipsOutput: ListRoomMembershipsOutput
    ListRoomsInput: ListRoomsInput
    ListRoomsOutput: ListRoomsOutput
    ListSupportedPhoneNumberCountriesInput: ListSupportedPhoneNumberCountriesInput
    ListSupportedPhoneNumberCountriesOutput: ListSupportedPhoneNumberCountriesOutput
    ListUsersInput: ListUsersInput
    ListUsersOutput: ListUsersOutput
    LogoutUserInput: LogoutUserInput
    LogoutUserOutput: LogoutUserOutput
    PutEventsConfigurationInput: PutEventsConfigurationInput
    PutEventsConfigurationOutput: PutEventsConfigurationOutput
    PutRetentionSettingsInput: PutRetentionSettingsInput
    PutRetentionSettingsOutput: PutRetentionSettingsOutput
    RedactConversationMessageInput: RedactConversationMessageInput
    RedactConversationMessageOutput: RedactConversationMessageOutput
    RedactRoomMessageInput: RedactRoomMessageInput
    RedactRoomMessageOutput: RedactRoomMessageOutput
    RegenerateSecurityTokenInput: RegenerateSecurityTokenInput
    RegenerateSecurityTokenOutput: RegenerateSecurityTokenOutput
    ResetPersonalPINInput: ResetPersonalPINInput
    ResetPersonalPINOutput: ResetPersonalPINOutput
    RestorePhoneNumberInput: RestorePhoneNumberInput
    RestorePhoneNumberOutput: RestorePhoneNumberOutput
    SearchAvailablePhoneNumbersInput: SearchAvailablePhoneNumbersInput
    SearchAvailablePhoneNumbersOutput: SearchAvailablePhoneNumbersOutput
    UpdateAccountInput: UpdateAccountInput
    UpdateAccountOutput: UpdateAccountOutput
    UpdateAccountSettingsInput: UpdateAccountSettingsInput
    UpdateAccountSettingsOutput: UpdateAccountSettingsOutput
    UpdateBotInput: UpdateBotInput
    UpdateBotOutput: UpdateBotOutput
    UpdateGlobalSettingsInput: UpdateGlobalSettingsInput
    UpdateGlobalSettingsOutput: UpdateGlobalSettingsOutput
    UpdatePhoneNumberInput: UpdatePhoneNumberInput
    UpdatePhoneNumberOutput: UpdatePhoneNumberOutput
    UpdatePhoneNumberSettingsInput: UpdatePhoneNumberSettingsInput
    UpdatePhoneNumberSettingsOutput: UpdatePhoneNumberSettingsOutput
    UpdateRoomInput: UpdateRoomInput
    UpdateRoomOutput: UpdateRoomOutput
    UpdateRoomMembershipInput: UpdateRoomMembershipInput
    UpdateRoomMembershipOutput: UpdateRoomMembershipOutput
    UpdateUserInput: UpdateUserInput
    UpdateUserOutput: UpdateUserOutput
    UpdateUserSettingsInput: UpdateUserSettingsInput
    UpdateUserSettingsOutput: UpdateUserSettingsOutput
end

return M
