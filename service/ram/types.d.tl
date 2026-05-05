local record AcceptResourceShareInvitationInput
    resourceShareInvitationArn: string
    clientToken: string
end

local record AcceptResourceShareInvitationOutput
    resourceShareInvitation: ResourceShareInvitation
    clientToken: string
end

local record AssociateResourceShareInput
    resourceShareArn: string
    resourceArns: {string}
    principals: {string}
    clientToken: string
    sources: {string}
end

local record AssociateResourceShareOutput
    resourceShareAssociations: {ResourceShareAssociation}
    clientToken: string
end

local record AssociateResourceSharePermissionInput
    resourceShareArn: string
    permissionArn: string
    replace: boolean
    clientToken: string
    permissionVersion: number
end

local record AssociateResourceSharePermissionOutput
    returnValue: boolean
    clientToken: string
end

local record CreatePermissionInput
    name: string
    resourceType: string
    policyTemplate: string
    clientToken: string
    tags: {Tag}
end

local record CreatePermissionOutput
    permission: ResourceSharePermissionSummary
    clientToken: string
end

local record CreatePermissionVersionInput
    permissionArn: string
    policyTemplate: string
    clientToken: string
end

local record CreatePermissionVersionOutput
    permission: ResourceSharePermissionDetail
    clientToken: string
end

local record CreateResourceShareInput
    name: string
    resourceArns: {string}
    principals: {string}
    tags: {Tag}
    allowExternalPrincipals: boolean
    clientToken: string
    permissionArns: {string}
    sources: {string}
    resourceShareConfiguration: ResourceShareConfiguration
end

local record CreateResourceShareOutput
    resourceShare: ResourceShare
    clientToken: string
end

local record DeletePermissionInput
    permissionArn: string
    clientToken: string
end

local record DeletePermissionOutput
    returnValue: boolean
    clientToken: string
    permissionStatus: string
end

local record DeletePermissionVersionInput
    permissionArn: string
    permissionVersion: number
    clientToken: string
end

local record DeletePermissionVersionOutput
    returnValue: boolean
    clientToken: string
    permissionStatus: string
end

local record DeleteResourceShareInput
    resourceShareArn: string
    clientToken: string
end

local record DeleteResourceShareOutput
    returnValue: boolean
    clientToken: string
end

local record DisassociateResourceShareInput
    resourceShareArn: string
    resourceArns: {string}
    principals: {string}
    clientToken: string
    sources: {string}
end

local record DisassociateResourceShareOutput
    resourceShareAssociations: {ResourceShareAssociation}
    clientToken: string
end

local record DisassociateResourceSharePermissionInput
    resourceShareArn: string
    permissionArn: string
    clientToken: string
end

local record DisassociateResourceSharePermissionOutput
    returnValue: boolean
    clientToken: string
end

local record EnableSharingWithAwsOrganizationInput
end

local record EnableSharingWithAwsOrganizationOutput
    returnValue: boolean
end

local record GetPermissionInput
    permissionArn: string
    permissionVersion: number
end

local record GetPermissionOutput
    permission: ResourceSharePermissionDetail
end

local record GetResourcePoliciesInput
    resourceArns: {string}
    principal: string
    nextToken: string
    maxResults: number
end

local record GetResourcePoliciesOutput
    policies: {string}
    nextToken: string
end

local record GetResourceShareAssociationsInput
    associationType: string
    resourceShareArns: {string}
    resourceArn: string
    principal: string
    associationStatus: string
    nextToken: string
    maxResults: number
end

local record GetResourceShareAssociationsOutput
    resourceShareAssociations: {ResourceShareAssociation}
    nextToken: string
end

local record GetResourceShareInvitationsInput
    resourceShareInvitationArns: {string}
    resourceShareArns: {string}
    nextToken: string
    maxResults: number
end

local record GetResourceShareInvitationsOutput
    resourceShareInvitations: {ResourceShareInvitation}
    nextToken: string
end

local record GetResourceSharesInput
    resourceShareArns: {string}
    resourceShareStatus: string
    resourceOwner: string
    name: string
    tagFilters: {TagFilter}
    nextToken: string
    maxResults: number
    permissionArn: string
    permissionVersion: number
end

local record GetResourceSharesOutput
    resourceShares: {ResourceShare}
    nextToken: string
end

local record ListPendingInvitationResourcesInput
    resourceShareInvitationArn: string
    nextToken: string
    maxResults: number
    resourceRegionScope: string
end

local record ListPendingInvitationResourcesOutput
    resources: {Resource}
    nextToken: string
end

local record ListPermissionAssociationsInput
    permissionArn: string
    permissionVersion: number
    associationStatus: string
    resourceType: string
    featureSet: string
    defaultVersion: boolean
    nextToken: string
    maxResults: number
end

local record ListPermissionAssociationsOutput
    permissions: {AssociatedPermission}
    nextToken: string
end

local record ListPermissionsInput
    resourceType: string
    nextToken: string
    maxResults: number
    permissionType: string
end

local record ListPermissionsOutput
    permissions: {ResourceSharePermissionSummary}
    nextToken: string
end

local record ListPermissionVersionsInput
    permissionArn: string
    nextToken: string
    maxResults: number
end

local record ListPermissionVersionsOutput
    permissions: {ResourceSharePermissionSummary}
    nextToken: string
end

local record ListPrincipalsInput
    resourceOwner: string
    resourceArn: string
    principals: {string}
    resourceType: string
    resourceShareArns: {string}
    nextToken: string
    maxResults: number
end

local record ListPrincipalsOutput
    principals: {Principal}
    nextToken: string
end

local record ListReplacePermissionAssociationsWorkInput
    workIds: {string}
    status: string
    nextToken: string
    maxResults: number
end

local record ListReplacePermissionAssociationsWorkOutput
    replacePermissionAssociationsWorks: {ReplacePermissionAssociationsWork}
    nextToken: string
end

local record ListResourcesInput
    resourceOwner: string
    principal: string
    resourceType: string
    resourceArns: {string}
    resourceShareArns: {string}
    nextToken: string
    maxResults: number
    resourceRegionScope: string
end

local record ListResourcesOutput
    resources: {Resource}
    nextToken: string
end

local record ListResourceSharePermissionsInput
    resourceShareArn: string
    nextToken: string
    maxResults: number
end

local record ListResourceSharePermissionsOutput
    permissions: {ResourceSharePermissionSummary}
    nextToken: string
end

local record ListResourceTypesInput
    nextToken: string
    maxResults: number
    resourceRegionScope: string
end

local record ListResourceTypesOutput
    resourceTypes: {ServiceNameAndResourceType}
    nextToken: string
end

local record ListSourceAssociationsInput
    resourceShareArns: {string}
    sourceId: string
    sourceType: string
    associationStatus: string
    nextToken: string
    maxResults: number
end

local record ListSourceAssociationsOutput
    sourceAssociations: {AssociatedSource}
    nextToken: string
end

local record PromotePermissionCreatedFromPolicyInput
    permissionArn: string
    name: string
    clientToken: string
end

local record PromotePermissionCreatedFromPolicyOutput
    permission: ResourceSharePermissionSummary
    clientToken: string
end

local record PromoteResourceShareCreatedFromPolicyInput
    resourceShareArn: string
end

local record PromoteResourceShareCreatedFromPolicyOutput
    returnValue: boolean
end

local record RejectResourceShareInvitationInput
    resourceShareInvitationArn: string
    clientToken: string
end

local record RejectResourceShareInvitationOutput
    resourceShareInvitation: ResourceShareInvitation
    clientToken: string
end

local record ReplacePermissionAssociationsInput
    fromPermissionArn: string
    fromPermissionVersion: number
    toPermissionArn: string
    clientToken: string
end

local record ReplacePermissionAssociationsOutput
    replacePermissionAssociationsWork: ReplacePermissionAssociationsWork
    clientToken: string
end

local record SetDefaultPermissionVersionInput
    permissionArn: string
    permissionVersion: number
    clientToken: string
end

local record SetDefaultPermissionVersionOutput
    returnValue: boolean
    clientToken: string
end

local record TagResourceInput
    resourceShareArn: string
    tags: {Tag}
    resourceArn: string
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceShareArn: string
    tagKeys: {string}
    resourceArn: string
end

local record UntagResourceOutput
end

local record UpdateResourceShareInput
    resourceShareArn: string
    name: string
    allowExternalPrincipals: boolean
    clientToken: string
end

local record UpdateResourceShareOutput
    resourceShare: ResourceShare
    clientToken: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidClientTokenException
    message: string
end

local record MalformedArnException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ResourceShareInvitationAlreadyAcceptedException
    message: string
end

local record ResourceShareInvitationAlreadyRejectedException
    message: string
end

local record ResourceShareInvitationArnNotFoundException
    message: string
end

local record ResourceShareInvitationExpiredException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidClientTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidStateTransitionException
    message: string
end

local record MalformedArnException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ResourceShareLimitExceededException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnknownResourceException
    message: string
end

local record InvalidClientTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record MalformedArnException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnknownResourceException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidClientTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidPolicyException
    message: string
end

local record MalformedPolicyTemplateException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record PermissionAlreadyExistsException
    message: string
end

local record PermissionLimitExceededException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidClientTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidPolicyException
    message: string
end

local record MalformedArnException
    message: string
end

local record MalformedPolicyTemplateException
    message: string
end

local record PermissionVersionsLimitExceededException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnknownResourceException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidClientTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidStateTransitionException
    message: string
end

local record MalformedArnException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ResourceShareLimitExceededException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record TagLimitExceededException
    message: string
end

local record TagPolicyViolationException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnknownResourceException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidClientTokenException
    message: string
end

local record MalformedArnException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnknownResourceException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidClientTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record MalformedArnException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnknownResourceException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidClientTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidStateTransitionException
    message: string
end

local record MalformedArnException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnknownResourceException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidClientTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidStateTransitionException
    message: string
end

local record MalformedArnException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ResourceShareLimitExceededException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnknownResourceException
    message: string
end

local record InvalidClientTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidStateTransitionException
    message: string
end

local record MalformedArnException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnknownResourceException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidParameterException
    message: string
end

local record MalformedArnException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnknownResourceException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record MalformedArnException
    message: string
end

local record ResourceArnNotFoundException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record MalformedArnException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnknownResourceException
    message: string
end

local record InvalidMaxResultsException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record MalformedArnException
    message: string
end

local record ResourceShareInvitationArnNotFoundException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnknownResourceException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record MalformedArnException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnknownResourceException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record MalformedArnException
    message: string
end

local record MissingRequiredParameterException
    message: string
end

local record ResourceShareInvitationAlreadyRejectedException
    message: string
end

local record ResourceShareInvitationArnNotFoundException
    message: string
end

local record ResourceShareInvitationExpiredException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record MalformedArnException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record MalformedArnException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnknownResourceException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record MalformedArnException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnknownResourceException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidResourceTypeException
    message: string
end

local record MalformedArnException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnknownResourceException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record MalformedArnException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnknownResourceException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record MalformedArnException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnknownResourceException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidPolicyException
    message: string
end

local record MalformedArnException
    message: string
end

local record MissingRequiredParameterException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnknownResourceException
    message: string
end

local record InvalidParameterException
    message: string
end

local record InvalidStateTransitionException
    message: string
end

local record MalformedArnException
    message: string
end

local record MissingRequiredParameterException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ResourceShareLimitExceededException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnknownResourceException
    message: string
end

local record UnmatchedPolicyPermissionException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidClientTokenException
    message: string
end

local record MalformedArnException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ResourceShareInvitationAlreadyAcceptedException
    message: string
end

local record ResourceShareInvitationAlreadyRejectedException
    message: string
end

local record ResourceShareInvitationArnNotFoundException
    message: string
end

local record ResourceShareInvitationExpiredException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidClientTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record MalformedArnException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnknownResourceException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidClientTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record MalformedArnException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnknownResourceException
    message: string
end

local record InvalidParameterException
    message: string
end

local record MalformedArnException
    message: string
end

local record ResourceArnNotFoundException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record TagLimitExceededException
    message: string
end

local record TagPolicyViolationException
    message: string
end

local record UnknownResourceException
    message: string
end

local record InvalidParameterException
    message: string
end

local record MalformedArnException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnknownResourceException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InvalidClientTokenException
    message: string
end

local record InvalidParameterException
    message: string
end

local record MalformedArnException
    message: string
end

local record MissingRequiredParameterException
    message: string
end

local record OperationNotPermittedException
    message: string
end

local record ServerInternalException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record UnknownResourceException
    message: string
end

local type ResourceRegionScopeFilter = "ALL" | "REGIONAL" | "GLOBAL"

local type ResourceOwner = "SELF" | "OTHER-ACCOUNTS"

local type PermissionFeatureSet = "CREATED_FROM_POLICY" | "PROMOTING_TO_STANDARD" | "STANDARD"

local type ReplacePermissionAssociationsWorkStatus = "IN_PROGRESS" | "COMPLETED" | "FAILED"

local type ResourceShareStatus = "PENDING" | "ACTIVE" | "FAILED" | "DELETING" | "DELETED"

local type PermissionTypeFilter = "ALL" | "AWS_MANAGED" | "CUSTOMER_MANAGED"

local type ResourceShareAssociationStatus = "ASSOCIATING" | "ASSOCIATED" | "FAILED" | "DISASSOCIATING" | "DISASSOCIATED" | "SUSPENDED" | "SUSPENDING" | "RESTORING"

local type PermissionStatus = "ATTACHABLE" | "UNATTACHABLE" | "DELETING" | "DELETED"

local type ResourceShareAssociationType = "PRINCIPAL" | "RESOURCE" | "SOURCE"

local record M
    AcceptResourceShareInvitationInput: AcceptResourceShareInvitationInput
    AcceptResourceShareInvitationOutput: AcceptResourceShareInvitationOutput
    AssociateResourceShareInput: AssociateResourceShareInput
    AssociateResourceShareOutput: AssociateResourceShareOutput
    AssociateResourceSharePermissionInput: AssociateResourceSharePermissionInput
    AssociateResourceSharePermissionOutput: AssociateResourceSharePermissionOutput
    CreatePermissionInput: CreatePermissionInput
    CreatePermissionOutput: CreatePermissionOutput
    CreatePermissionVersionInput: CreatePermissionVersionInput
    CreatePermissionVersionOutput: CreatePermissionVersionOutput
    CreateResourceShareInput: CreateResourceShareInput
    CreateResourceShareOutput: CreateResourceShareOutput
    DeletePermissionInput: DeletePermissionInput
    DeletePermissionOutput: DeletePermissionOutput
    DeletePermissionVersionInput: DeletePermissionVersionInput
    DeletePermissionVersionOutput: DeletePermissionVersionOutput
    DeleteResourceShareInput: DeleteResourceShareInput
    DeleteResourceShareOutput: DeleteResourceShareOutput
    DisassociateResourceShareInput: DisassociateResourceShareInput
    DisassociateResourceShareOutput: DisassociateResourceShareOutput
    DisassociateResourceSharePermissionInput: DisassociateResourceSharePermissionInput
    DisassociateResourceSharePermissionOutput: DisassociateResourceSharePermissionOutput
    EnableSharingWithAwsOrganizationInput: EnableSharingWithAwsOrganizationInput
    EnableSharingWithAwsOrganizationOutput: EnableSharingWithAwsOrganizationOutput
    GetPermissionInput: GetPermissionInput
    GetPermissionOutput: GetPermissionOutput
    GetResourcePoliciesInput: GetResourcePoliciesInput
    GetResourcePoliciesOutput: GetResourcePoliciesOutput
    GetResourceShareAssociationsInput: GetResourceShareAssociationsInput
    GetResourceShareAssociationsOutput: GetResourceShareAssociationsOutput
    GetResourceShareInvitationsInput: GetResourceShareInvitationsInput
    GetResourceShareInvitationsOutput: GetResourceShareInvitationsOutput
    GetResourceSharesInput: GetResourceSharesInput
    GetResourceSharesOutput: GetResourceSharesOutput
    ListPendingInvitationResourcesInput: ListPendingInvitationResourcesInput
    ListPendingInvitationResourcesOutput: ListPendingInvitationResourcesOutput
    ListPermissionAssociationsInput: ListPermissionAssociationsInput
    ListPermissionAssociationsOutput: ListPermissionAssociationsOutput
    ListPermissionsInput: ListPermissionsInput
    ListPermissionsOutput: ListPermissionsOutput
    ListPermissionVersionsInput: ListPermissionVersionsInput
    ListPermissionVersionsOutput: ListPermissionVersionsOutput
    ListPrincipalsInput: ListPrincipalsInput
    ListPrincipalsOutput: ListPrincipalsOutput
    ListReplacePermissionAssociationsWorkInput: ListReplacePermissionAssociationsWorkInput
    ListReplacePermissionAssociationsWorkOutput: ListReplacePermissionAssociationsWorkOutput
    ListResourcesInput: ListResourcesInput
    ListResourcesOutput: ListResourcesOutput
    ListResourceSharePermissionsInput: ListResourceSharePermissionsInput
    ListResourceSharePermissionsOutput: ListResourceSharePermissionsOutput
    ListResourceTypesInput: ListResourceTypesInput
    ListResourceTypesOutput: ListResourceTypesOutput
    ListSourceAssociationsInput: ListSourceAssociationsInput
    ListSourceAssociationsOutput: ListSourceAssociationsOutput
    PromotePermissionCreatedFromPolicyInput: PromotePermissionCreatedFromPolicyInput
    PromotePermissionCreatedFromPolicyOutput: PromotePermissionCreatedFromPolicyOutput
    PromoteResourceShareCreatedFromPolicyInput: PromoteResourceShareCreatedFromPolicyInput
    PromoteResourceShareCreatedFromPolicyOutput: PromoteResourceShareCreatedFromPolicyOutput
    RejectResourceShareInvitationInput: RejectResourceShareInvitationInput
    RejectResourceShareInvitationOutput: RejectResourceShareInvitationOutput
    ReplacePermissionAssociationsInput: ReplacePermissionAssociationsInput
    ReplacePermissionAssociationsOutput: ReplacePermissionAssociationsOutput
    SetDefaultPermissionVersionInput: SetDefaultPermissionVersionInput
    SetDefaultPermissionVersionOutput: SetDefaultPermissionVersionOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateResourceShareInput: UpdateResourceShareInput
    UpdateResourceShareOutput: UpdateResourceShareOutput
end

return M
