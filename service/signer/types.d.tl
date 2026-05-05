local record AddProfilePermissionInput
    profileName: string
    profileVersion: string
    action: string
    principal: string
    revisionId: string
    statementId: string
end

local record AddProfilePermissionOutput
    revisionId: string
end

local record CancelSigningProfileInput
    profileName: string
end

local record CancelSigningProfileOutput
end

local record DescribeSigningJobInput
    jobId: string
end

local record DescribeSigningJobOutput
    jobId: string
    source: Source
    signingMaterial: SigningMaterial
    platformId: string
    platformDisplayName: string
    profileName: string
    profileVersion: string
    overrides: SigningPlatformOverrides
    signingParameters: {string : string}
    createdAt: number
    completedAt: number
    signatureExpiresAt: number
    requestedBy: string
    status: string
    statusReason: string
    revocationRecord: SigningJobRevocationRecord
    signedObject: SignedObject
    jobOwner: string
    jobInvoker: string
end

local record GetRevocationStatusInput
    signatureTimestamp: number
    platformId: string
    profileVersionArn: string
    jobArn: string
    certificateHashes: {string}
end

local record GetRevocationStatusOutput
    revokedEntities: {string}
end

local record GetSigningPlatformInput
    platformId: string
end

local record GetSigningPlatformOutput
    platformId: string
    displayName: string
    partner: string
    target: string
    category: string
    signingConfiguration: SigningConfiguration
    signingImageFormat: SigningImageFormat
    maxSizeInMB: number
    revocationSupported: boolean
end

local record GetSigningProfileInput
    profileName: string
    profileOwner: string
end

local record GetSigningProfileOutput
    profileName: string
    profileVersion: string
    profileVersionArn: string
    revocationRecord: SigningProfileRevocationRecord
    signingMaterial: SigningMaterial
    platformId: string
    platformDisplayName: string
    signatureValidityPeriod: SignatureValidityPeriod
    overrides: SigningPlatformOverrides
    signingParameters: {string : string}
    status: string
    statusReason: string
    arn: string
    tags: {string : string}
end

local record ListProfilePermissionsInput
    profileName: string
    nextToken: string
end

local record ListProfilePermissionsOutput
    revisionId: string
    policySizeBytes: number
    permissions: {Permission}
    nextToken: string
end

local record ListSigningJobsInput
    status: string
    platformId: string
    requestedBy: string
    maxResults: number
    nextToken: string
    isRevoked: boolean
    signatureExpiresBefore: number
    signatureExpiresAfter: number
    jobInvoker: string
end

local record ListSigningJobsOutput
    jobs: {SigningJob}
    nextToken: string
end

local record ListSigningPlatformsInput
    category: string
    partner: string
    target: string
    maxResults: number
    nextToken: string
end

local record ListSigningPlatformsOutput
    platforms: {SigningPlatform}
    nextToken: string
end

local record ListSigningProfilesInput
    includeCanceled: boolean
    maxResults: number
    nextToken: string
    platformId: string
    statuses: {string}
end

local record ListSigningProfilesOutput
    profiles: {SigningProfile}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record PutSigningProfileInput
    profileName: string
    signingMaterial: SigningMaterial
    signatureValidityPeriod: SignatureValidityPeriod
    platformId: string
    overrides: SigningPlatformOverrides
    signingParameters: {string : string}
    tags: {string : string}
end

local record PutSigningProfileOutput
    arn: string
    profileVersion: string
    profileVersionArn: string
end

local record RemoveProfilePermissionInput
    profileName: string
    revisionId: string
    statementId: string
end

local record RemoveProfilePermissionOutput
    revisionId: string
end

local record RevokeSignatureInput
    jobId: string
    jobOwner: string
    reason: string
end

local record RevokeSignatureOutput
end

local record RevokeSigningProfileInput
    profileName: string
    profileVersion: string
    reason: string
    effectiveTime: number
end

local record RevokeSigningProfileOutput
end

local record SignPayloadInput
    profileName: string
    profileOwner: string
    payload: string
    payloadFormat: string
end

local record SignPayloadOutput
    jobId: string
    jobOwner: string
    metadata: {string : string}
    signature: string
end

local record StartSigningJobInput
    source: Source
    destination: Destination
    profileName: string
    clientRequestToken: string
    profileOwner: string
end

local record StartSigningJobOutput
    jobId: string
    jobOwner: string
end

local record TagResourceInput
    resourceArn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record AccessDeniedException
    message: string
    code: string
end

local record ConflictException
    message: string
    code: string
end

local record InternalServiceErrorException
    message: string
    code: string
end

local record ResourceNotFoundException
    message: string
    code: string
end

local record ServiceLimitExceededException
    message: string
    code: string
end

local record TooManyRequestsException
    message: string
    code: string
end

local record ValidationException
    message: string
    code: string
end

local record AccessDeniedException
    message: string
    code: string
end

local record InternalServiceErrorException
    message: string
    code: string
end

local record ResourceNotFoundException
    message: string
    code: string
end

local record TooManyRequestsException
    message: string
    code: string
end

local record AccessDeniedException
    message: string
    code: string
end

local record InternalServiceErrorException
    message: string
    code: string
end

local record ResourceNotFoundException
    message: string
    code: string
end

local record TooManyRequestsException
    message: string
    code: string
end

local record AccessDeniedException
    message: string
    code: string
end

local record InternalServiceErrorException
    message: string
    code: string
end

local record TooManyRequestsException
    message: string
    code: string
end

local record ValidationException
    message: string
    code: string
end

local record AccessDeniedException
    message: string
    code: string
end

local record InternalServiceErrorException
    message: string
    code: string
end

local record ResourceNotFoundException
    message: string
    code: string
end

local record TooManyRequestsException
    message: string
    code: string
end

local record AccessDeniedException
    message: string
    code: string
end

local record InternalServiceErrorException
    message: string
    code: string
end

local record ResourceNotFoundException
    message: string
    code: string
end

local record TooManyRequestsException
    message: string
    code: string
end

local record AccessDeniedException
    message: string
    code: string
end

local record InternalServiceErrorException
    message: string
    code: string
end

local record ResourceNotFoundException
    message: string
    code: string
end

local record TooManyRequestsException
    message: string
    code: string
end

local record ValidationException
    message: string
    code: string
end

local record AccessDeniedException
    message: string
    code: string
end

local record InternalServiceErrorException
    message: string
    code: string
end

local record TooManyRequestsException
    message: string
    code: string
end

local record ValidationException
    message: string
    code: string
end

local record AccessDeniedException
    message: string
    code: string
end

local record InternalServiceErrorException
    message: string
    code: string
end

local record TooManyRequestsException
    message: string
    code: string
end

local record ValidationException
    message: string
    code: string
end

local record AccessDeniedException
    message: string
    code: string
end

local record InternalServiceErrorException
    message: string
    code: string
end

local record TooManyRequestsException
    message: string
    code: string
end

local record BadRequestException
    message: string
    code: string
end

local record InternalServiceErrorException
    message: string
    code: string
end

local record NotFoundException
    message: string
    code: string
end

local record TooManyRequestsException
    message: string
    code: string
end

local record AccessDeniedException
    message: string
    code: string
end

local record InternalServiceErrorException
    message: string
    code: string
end

local record ResourceNotFoundException
    message: string
    code: string
end

local record TooManyRequestsException
    message: string
    code: string
end

local record ValidationException
    message: string
    code: string
end

local record AccessDeniedException
    message: string
    code: string
end

local record ConflictException
    message: string
    code: string
end

local record InternalServiceErrorException
    message: string
    code: string
end

local record ResourceNotFoundException
    message: string
    code: string
end

local record TooManyRequestsException
    message: string
    code: string
end

local record ValidationException
    message: string
    code: string
end

local record AccessDeniedException
    message: string
    code: string
end

local record InternalServiceErrorException
    message: string
    code: string
end

local record ResourceNotFoundException
    message: string
    code: string
end

local record TooManyRequestsException
    message: string
    code: string
end

local record ValidationException
    message: string
    code: string
end

local record AccessDeniedException
    message: string
    code: string
end

local record InternalServiceErrorException
    message: string
    code: string
end

local record ResourceNotFoundException
    message: string
    code: string
end

local record TooManyRequestsException
    message: string
    code: string
end

local record ValidationException
    message: string
    code: string
end

local record AccessDeniedException
    message: string
    code: string
end

local record InternalServiceErrorException
    message: string
    code: string
end

local record ResourceNotFoundException
    message: string
    code: string
end

local record TooManyRequestsException
    message: string
    code: string
end

local record ValidationException
    message: string
    code: string
end

local record AccessDeniedException
    message: string
    code: string
end

local record InternalServiceErrorException
    message: string
    code: string
end

local record ResourceNotFoundException
    message: string
    code: string
end

local record ThrottlingException
    message: string
    code: string
end

local record TooManyRequestsException
    message: string
    code: string
end

local record ValidationException
    message: string
    code: string
end

local record BadRequestException
    message: string
    code: string
end

local record InternalServiceErrorException
    message: string
    code: string
end

local record NotFoundException
    message: string
    code: string
end

local record TooManyRequestsException
    message: string
    code: string
end

local record BadRequestException
    message: string
    code: string
end

local record InternalServiceErrorException
    message: string
    code: string
end

local record NotFoundException
    message: string
    code: string
end

local record TooManyRequestsException
    message: string
    code: string
end

local type Category = "AWSIoT"

local type SigningStatus = "InProgress" | "Failed" | "Succeeded"

local type SigningProfileStatus = "Active" | "Canceled" | "Revoked"

local record M
    AddProfilePermissionInput: AddProfilePermissionInput
    AddProfilePermissionOutput: AddProfilePermissionOutput
    CancelSigningProfileInput: CancelSigningProfileInput
    CancelSigningProfileOutput: CancelSigningProfileOutput
    DescribeSigningJobInput: DescribeSigningJobInput
    DescribeSigningJobOutput: DescribeSigningJobOutput
    GetRevocationStatusInput: GetRevocationStatusInput
    GetRevocationStatusOutput: GetRevocationStatusOutput
    GetSigningPlatformInput: GetSigningPlatformInput
    GetSigningPlatformOutput: GetSigningPlatformOutput
    GetSigningProfileInput: GetSigningProfileInput
    GetSigningProfileOutput: GetSigningProfileOutput
    ListProfilePermissionsInput: ListProfilePermissionsInput
    ListProfilePermissionsOutput: ListProfilePermissionsOutput
    ListSigningJobsInput: ListSigningJobsInput
    ListSigningJobsOutput: ListSigningJobsOutput
    ListSigningPlatformsInput: ListSigningPlatformsInput
    ListSigningPlatformsOutput: ListSigningPlatformsOutput
    ListSigningProfilesInput: ListSigningProfilesInput
    ListSigningProfilesOutput: ListSigningProfilesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutSigningProfileInput: PutSigningProfileInput
    PutSigningProfileOutput: PutSigningProfileOutput
    RemoveProfilePermissionInput: RemoveProfilePermissionInput
    RemoveProfilePermissionOutput: RemoveProfilePermissionOutput
    RevokeSignatureInput: RevokeSignatureInput
    RevokeSignatureOutput: RevokeSignatureOutput
    RevokeSigningProfileInput: RevokeSigningProfileInput
    RevokeSigningProfileOutput: RevokeSigningProfileOutput
    SignPayloadInput: SignPayloadInput
    SignPayloadOutput: SignPayloadOutput
    StartSigningJobInput: StartSigningJobInput
    StartSigningJobOutput: StartSigningJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
end

return M
