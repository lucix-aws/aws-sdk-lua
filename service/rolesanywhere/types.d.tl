local record CreateProfileInput
    name: string
    requireInstanceProperties: boolean
    sessionPolicy: string
    roleArns: {string}
    managedPolicyArns: {string}
    durationSeconds: number
    enabled: boolean
    tags: {Tag}
    acceptRoleSessionName: boolean
end

local record CreateProfileOutput
    profile: ProfileDetail
end

local record CreateTrustAnchorInput
    name: string
    source: Source
    enabled: boolean
    tags: {Tag}
    notificationSettings: {NotificationSetting}
end

local record CreateTrustAnchorOutput
    trustAnchor: TrustAnchorDetail
end

local record DeleteAttributeMappingInput
    profileId: string
    certificateField: string
    specifiers: {string}
end

local record DeleteAttributeMappingOutput
    profile: ProfileDetail
end

local record DeleteCrlInput
    crlId: string
end

local record DeleteCrlOutput
    crl: CrlDetail
end

local record DeleteProfileInput
    profileId: string
end

local record DeleteProfileOutput
    profile: ProfileDetail
end

local record DeleteTrustAnchorInput
    trustAnchorId: string
end

local record DeleteTrustAnchorOutput
    trustAnchor: TrustAnchorDetail
end

local record DisableCrlInput
    crlId: string
end

local record DisableCrlOutput
    crl: CrlDetail
end

local record DisableProfileInput
    profileId: string
end

local record DisableProfileOutput
    profile: ProfileDetail
end

local record DisableTrustAnchorInput
    trustAnchorId: string
end

local record DisableTrustAnchorOutput
    trustAnchor: TrustAnchorDetail
end

local record EnableCrlInput
    crlId: string
end

local record EnableCrlOutput
    crl: CrlDetail
end

local record EnableProfileInput
    profileId: string
end

local record EnableProfileOutput
    profile: ProfileDetail
end

local record EnableTrustAnchorInput
    trustAnchorId: string
end

local record EnableTrustAnchorOutput
    trustAnchor: TrustAnchorDetail
end

local record GetCrlInput
    crlId: string
end

local record GetCrlOutput
    crl: CrlDetail
end

local record GetProfileInput
    profileId: string
end

local record GetProfileOutput
    profile: ProfileDetail
end

local record GetSubjectInput
    subjectId: string
end

local record GetSubjectOutput
    subject: SubjectDetail
end

local record GetTrustAnchorInput
    trustAnchorId: string
end

local record GetTrustAnchorOutput
    trustAnchor: TrustAnchorDetail
end

local record ImportCrlInput
    name: string
    crlData: string
    enabled: boolean
    tags: {Tag}
    trustAnchorArn: string
end

local record ImportCrlOutput
    crl: CrlDetail
end

local record ListCrlsInput
    nextToken: string
    pageSize: number
end

local record ListCrlsOutput
    nextToken: string
    crls: {CrlDetail}
end

local record ListProfilesInput
    nextToken: string
    pageSize: number
end

local record ListProfilesOutput
    nextToken: string
    profiles: {ProfileDetail}
end

local record ListSubjectsInput
    nextToken: string
    pageSize: number
end

local record ListSubjectsOutput
    subjects: {SubjectSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {Tag}
end

local record ListTrustAnchorsInput
    nextToken: string
    pageSize: number
end

local record ListTrustAnchorsOutput
    nextToken: string
    trustAnchors: {TrustAnchorDetail}
end

local record PutAttributeMappingInput
    profileId: string
    certificateField: string
    mappingRules: {MappingRule}
end

local record PutAttributeMappingOutput
    profile: ProfileDetail
end

local record PutNotificationSettingsInput
    trustAnchorId: string
    notificationSettings: {NotificationSetting}
end

local record PutNotificationSettingsOutput
    trustAnchor: TrustAnchorDetail
end

local record ResetNotificationSettingsInput
    trustAnchorId: string
    notificationSettingKeys: {NotificationSettingKey}
end

local record ResetNotificationSettingsOutput
    trustAnchor: TrustAnchorDetail
end

local record TagResourceInput
    resourceArn: string
    tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateCrlInput
    crlId: string
    name: string
    crlData: string
end

local record UpdateCrlOutput
    crl: CrlDetail
end

local record UpdateProfileInput
    profileId: string
    name: string
    sessionPolicy: string
    roleArns: {string}
    managedPolicyArns: {string}
    durationSeconds: number
    acceptRoleSessionName: boolean
end

local record UpdateProfileOutput
    profile: ProfileDetail
end

local record UpdateTrustAnchorInput
    trustAnchorId: string
    name: string
    source: Source
end

local record UpdateTrustAnchorOutput
    trustAnchor: TrustAnchorDetail
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyTagsException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record M
    CreateProfileInput: CreateProfileInput
    CreateProfileOutput: CreateProfileOutput
    CreateTrustAnchorInput: CreateTrustAnchorInput
    CreateTrustAnchorOutput: CreateTrustAnchorOutput
    DeleteAttributeMappingInput: DeleteAttributeMappingInput
    DeleteAttributeMappingOutput: DeleteAttributeMappingOutput
    DeleteCrlInput: DeleteCrlInput
    DeleteCrlOutput: DeleteCrlOutput
    DeleteProfileInput: DeleteProfileInput
    DeleteProfileOutput: DeleteProfileOutput
    DeleteTrustAnchorInput: DeleteTrustAnchorInput
    DeleteTrustAnchorOutput: DeleteTrustAnchorOutput
    DisableCrlInput: DisableCrlInput
    DisableCrlOutput: DisableCrlOutput
    DisableProfileInput: DisableProfileInput
    DisableProfileOutput: DisableProfileOutput
    DisableTrustAnchorInput: DisableTrustAnchorInput
    DisableTrustAnchorOutput: DisableTrustAnchorOutput
    EnableCrlInput: EnableCrlInput
    EnableCrlOutput: EnableCrlOutput
    EnableProfileInput: EnableProfileInput
    EnableProfileOutput: EnableProfileOutput
    EnableTrustAnchorInput: EnableTrustAnchorInput
    EnableTrustAnchorOutput: EnableTrustAnchorOutput
    GetCrlInput: GetCrlInput
    GetCrlOutput: GetCrlOutput
    GetProfileInput: GetProfileInput
    GetProfileOutput: GetProfileOutput
    GetSubjectInput: GetSubjectInput
    GetSubjectOutput: GetSubjectOutput
    GetTrustAnchorInput: GetTrustAnchorInput
    GetTrustAnchorOutput: GetTrustAnchorOutput
    ImportCrlInput: ImportCrlInput
    ImportCrlOutput: ImportCrlOutput
    ListCrlsInput: ListCrlsInput
    ListCrlsOutput: ListCrlsOutput
    ListProfilesInput: ListProfilesInput
    ListProfilesOutput: ListProfilesOutput
    ListSubjectsInput: ListSubjectsInput
    ListSubjectsOutput: ListSubjectsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTrustAnchorsInput: ListTrustAnchorsInput
    ListTrustAnchorsOutput: ListTrustAnchorsOutput
    PutAttributeMappingInput: PutAttributeMappingInput
    PutAttributeMappingOutput: PutAttributeMappingOutput
    PutNotificationSettingsInput: PutNotificationSettingsInput
    PutNotificationSettingsOutput: PutNotificationSettingsOutput
    ResetNotificationSettingsInput: ResetNotificationSettingsInput
    ResetNotificationSettingsOutput: ResetNotificationSettingsOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateCrlInput: UpdateCrlInput
    UpdateCrlOutput: UpdateCrlOutput
    UpdateProfileInput: UpdateProfileInput
    UpdateProfileOutput: UpdateProfileOutput
    UpdateTrustAnchorInput: UpdateTrustAnchorInput
    UpdateTrustAnchorOutput: UpdateTrustAnchorOutput
end

return M
