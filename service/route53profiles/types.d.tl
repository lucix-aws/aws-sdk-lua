local record AssociateProfileInput
    ProfileId: string
    ResourceId: string
    Name: string
    Tags: {Tag}
end

local record AssociateProfileOutput
    ProfileAssociation: ProfileAssociation
end

local record AssociateResourceToProfileInput
    ProfileId: string
    ResourceArn: string
    Name: string
    ResourceProperties: string
end

local record AssociateResourceToProfileOutput
    ProfileResourceAssociation: ProfileResourceAssociation
end

local record CreateProfileInput
    Name: string
    ClientToken: string
    Tags: {Tag}
end

local record CreateProfileOutput
    Profile: Profile
end

local record DeleteProfileInput
    ProfileId: string
end

local record DeleteProfileOutput
    Profile: Profile
end

local record DisassociateProfileInput
    ProfileId: string
    ResourceId: string
end

local record DisassociateProfileOutput
    ProfileAssociation: ProfileAssociation
end

local record DisassociateResourceFromProfileInput
    ProfileId: string
    ResourceArn: string
end

local record DisassociateResourceFromProfileOutput
    ProfileResourceAssociation: ProfileResourceAssociation
end

local record GetProfileInput
    ProfileId: string
end

local record GetProfileOutput
    Profile: Profile
end

local record GetProfileAssociationInput
    ProfileAssociationId: string
end

local record GetProfileAssociationOutput
    ProfileAssociation: ProfileAssociation
end

local record GetProfileResourceAssociationInput
    ProfileResourceAssociationId: string
end

local record GetProfileResourceAssociationOutput
    ProfileResourceAssociation: ProfileResourceAssociation
end

local record ListProfileAssociationsInput
    ResourceId: string
    ProfileId: string
    MaxResults: number
    NextToken: string
end

local record ListProfileAssociationsOutput
    ProfileAssociations: {ProfileAssociation}
    NextToken: string
end

local record ListProfileResourceAssociationsInput
    ProfileId: string
    ResourceType: string
    MaxResults: number
    NextToken: string
end

local record ListProfileResourceAssociationsOutput
    ProfileResourceAssociations: {ProfileResourceAssociation}
    NextToken: string
end

local record ListProfilesInput
    MaxResults: number
    NextToken: string
end

local record ListProfilesOutput
    ProfileSummaries: {ProfileSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
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

local record UpdateProfileResourceAssociationInput
    ProfileResourceAssociationId: string
    Name: string
    ResourceProperties: string
end

local record UpdateProfileResourceAssociationOutput
    ProfileResourceAssociation: ProfileResourceAssociation
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InvalidParameterException
    Message: string
    FieldName: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
end

local record ResourceExistsException
    Message: string
    ResourceType: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
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

local record InternalServiceErrorException
    Message: string
end

local record InvalidParameterException
    Message: string
    FieldName: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
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

local record InvalidParameterException
    Message: string
    FieldName: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
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
    ResourceType: string
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

local record InvalidParameterException
    Message: string
    FieldName: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
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

local record InternalServiceErrorException
    Message: string
end

local record InvalidParameterException
    Message: string
    FieldName: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
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
    ResourceType: string
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
    ResourceType: string
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

local record InvalidParameterException
    Message: string
    FieldName: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
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

local record InvalidNextTokenException
    Message: string
end

local record InvalidParameterException
    Message: string
    FieldName: string
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

local record InternalServiceErrorException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidParameterException
    Message: string
    FieldName: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
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

local record InvalidNextTokenException
    Message: string
end

local record InvalidParameterException
    Message: string
    FieldName: string
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
    ResourceType: string
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
    ResourceType: string
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
    ResourceType: string
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

local record InternalServiceErrorException
    Message: string
end

local record InvalidParameterException
    Message: string
    FieldName: string
end

local record LimitExceededException
    Message: string
    ResourceType: string
end

local record ResourceNotFoundException
    Message: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record M
    AssociateProfileInput: AssociateProfileInput
    AssociateProfileOutput: AssociateProfileOutput
    AssociateResourceToProfileInput: AssociateResourceToProfileInput
    AssociateResourceToProfileOutput: AssociateResourceToProfileOutput
    CreateProfileInput: CreateProfileInput
    CreateProfileOutput: CreateProfileOutput
    DeleteProfileInput: DeleteProfileInput
    DeleteProfileOutput: DeleteProfileOutput
    DisassociateProfileInput: DisassociateProfileInput
    DisassociateProfileOutput: DisassociateProfileOutput
    DisassociateResourceFromProfileInput: DisassociateResourceFromProfileInput
    DisassociateResourceFromProfileOutput: DisassociateResourceFromProfileOutput
    GetProfileInput: GetProfileInput
    GetProfileOutput: GetProfileOutput
    GetProfileAssociationInput: GetProfileAssociationInput
    GetProfileAssociationOutput: GetProfileAssociationOutput
    GetProfileResourceAssociationInput: GetProfileResourceAssociationInput
    GetProfileResourceAssociationOutput: GetProfileResourceAssociationOutput
    ListProfileAssociationsInput: ListProfileAssociationsInput
    ListProfileAssociationsOutput: ListProfileAssociationsOutput
    ListProfileResourceAssociationsInput: ListProfileResourceAssociationsInput
    ListProfileResourceAssociationsOutput: ListProfileResourceAssociationsOutput
    ListProfilesInput: ListProfilesInput
    ListProfilesOutput: ListProfilesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateProfileResourceAssociationInput: UpdateProfileResourceAssociationInput
    UpdateProfileResourceAssociationOutput: UpdateProfileResourceAssociationOutput
end

return M
