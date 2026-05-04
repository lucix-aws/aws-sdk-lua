local M = {}

M.AcceptResourceShareInvitationInput = {
    type = "structure",
    id = "AcceptResourceShareInvitationInput",
    members = {
        resourceShareInvitationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.ResourceShareAssociationType = {
    PRINCIPAL = "PRINCIPAL",
    RESOURCE = "RESOURCE",
    SOURCE = "SOURCE",
}

M.ResourceShareAssociationStatus = {
    ASSOCIATING = "ASSOCIATING",
    ASSOCIATED = "ASSOCIATED",
    FAILED = "FAILED",
    DISASSOCIATING = "DISASSOCIATING",
    DISASSOCIATED = "DISASSOCIATED",
    SUSPENDED = "SUSPENDED",
    SUSPENDING = "SUSPENDING",
    RESTORING = "RESTORING",
}

M.ResourceShareAssociation = {
    type = "structure",
    id = "ResourceShareAssociation",
    members = {
        resourceShareArn = {
            type = "string",
        },
        resourceShareName = {
            type = "string",
        },
        associatedEntity = {
            type = "string",
        },
        associationType = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastUpdatedTime = {
            type = "timestamp",
        },
        external = {
            type = "boolean",
        },
    },
}

M.ResourceShareInvitationStatus = {
    PENDING = "PENDING",
    ACCEPTED = "ACCEPTED",
    REJECTED = "REJECTED",
    EXPIRED = "EXPIRED",
}

M.ResourceShareInvitation = {
    type = "structure",
    id = "ResourceShareInvitation",
    members = {
        resourceShareInvitationArn = {
            type = "string",
        },
        resourceShareName = {
            type = "string",
        },
        resourceShareArn = {
            type = "string",
        },
        senderAccountId = {
            type = "string",
        },
        receiverAccountId = {
            type = "string",
        },
        invitationTimestamp = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        resourceShareAssociations = {
            type = "list",
            member = M.ResourceShareAssociation,
        },
        receiverArn = {
            type = "string",
        },
    },
}

M.AcceptResourceShareInvitationOutput = {
    type = "structure",
    id = "AcceptResourceShareInvitationOutput",
    members = {
        resourceShareInvitation = M.ResourceShareInvitation,
        clientToken = {
            type = "string",
        },
    },
}

M.IdempotentParameterMismatchException = {
    type = "structure",
    id = "IdempotentParameterMismatchException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidClientTokenException = {
    type = "structure",
    id = "InvalidClientTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MalformedArnException = {
    type = "structure",
    id = "MalformedArnException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OperationNotPermittedException = {
    type = "structure",
    id = "OperationNotPermittedException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceShareInvitationAlreadyAcceptedException = {
    type = "structure",
    id = "ResourceShareInvitationAlreadyAcceptedException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceShareInvitationAlreadyRejectedException = {
    type = "structure",
    id = "ResourceShareInvitationAlreadyRejectedException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceShareInvitationArnNotFoundException = {
    type = "structure",
    id = "ResourceShareInvitationArnNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceShareInvitationExpiredException = {
    type = "structure",
    id = "ResourceShareInvitationExpiredException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServerInternalException = {
    type = "structure",
    id = "ServerInternalException",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    id = "ServiceUnavailableException",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateResourceShareInput = {
    type = "structure",
    id = "AssociateResourceShareInput",
    members = {
        resourceShareArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArns = {
            type = "list",
            member = { type = "string" },
        },
        principals = {
            type = "list",
            member = { type = "string" },
        },
        clientToken = {
            type = "string",
        },
        sources = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AssociateResourceShareOutput = {
    type = "structure",
    id = "AssociateResourceShareOutput",
    members = {
        resourceShareAssociations = {
            type = "list",
            member = M.ResourceShareAssociation,
        },
        clientToken = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    id = "InvalidParameterException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidStateTransitionException = {
    type = "structure",
    id = "InvalidStateTransitionException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceShareLimitExceededException = {
    type = "structure",
    id = "ResourceShareLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnknownResourceException = {
    type = "structure",
    id = "UnknownResourceException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateResourceSharePermissionInput = {
    type = "structure",
    id = "AssociateResourceSharePermissionInput",
    members = {
        resourceShareArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        permissionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        replace = {
            type = "boolean",
        },
        clientToken = {
            type = "string",
        },
        permissionVersion = {
            type = "integer",
        },
    },
}

M.AssociateResourceSharePermissionOutput = {
    type = "structure",
    id = "AssociateResourceSharePermissionOutput",
    members = {
        returnValue = {
            type = "boolean",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        key = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.CreatePermissionInput = {
    type = "structure",
    id = "CreatePermissionInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyTemplate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PermissionFeatureSet = {
    CREATED_FROM_POLICY = "CREATED_FROM_POLICY",
    PROMOTING_TO_STANDARD = "PROMOTING_TO_STANDARD",
    STANDARD = "STANDARD",
}

M.PermissionType = {
    CUSTOMER_MANAGED = "CUSTOMER_MANAGED",
    AWS_MANAGED = "AWS_MANAGED",
}

M.ResourceSharePermissionSummary = {
    type = "structure",
    id = "ResourceSharePermissionSummary",
    members = {
        arn = {
            type = "string",
        },
        version = {
            type = "string",
        },
        defaultVersion = {
            type = "boolean",
        },
        name = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastUpdatedTime = {
            type = "timestamp",
        },
        isResourceTypeDefault = {
            type = "boolean",
        },
        permissionType = {
            type = "string",
        },
        featureSet = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreatePermissionOutput = {
    type = "structure",
    id = "CreatePermissionOutput",
    members = {
        permission = M.ResourceSharePermissionSummary,
        clientToken = {
            type = "string",
        },
    },
}

M.InvalidPolicyException = {
    type = "structure",
    id = "InvalidPolicyException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MalformedPolicyTemplateException = {
    type = "structure",
    id = "MalformedPolicyTemplateException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PermissionAlreadyExistsException = {
    type = "structure",
    id = "PermissionAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PermissionLimitExceededException = {
    type = "structure",
    id = "PermissionLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePermissionVersionInput = {
    type = "structure",
    id = "CreatePermissionVersionInput",
    members = {
        permissionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyTemplate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.PermissionStatus = {
    ATTACHABLE = "ATTACHABLE",
    UNATTACHABLE = "UNATTACHABLE",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.ResourceSharePermissionDetail = {
    type = "structure",
    id = "ResourceSharePermissionDetail",
    members = {
        arn = {
            type = "string",
        },
        version = {
            type = "string",
        },
        defaultVersion = {
            type = "boolean",
        },
        name = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        permission = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastUpdatedTime = {
            type = "timestamp",
        },
        isResourceTypeDefault = {
            type = "boolean",
        },
        permissionType = {
            type = "string",
        },
        featureSet = {
            type = "string",
        },
        status = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreatePermissionVersionOutput = {
    type = "structure",
    id = "CreatePermissionVersionOutput",
    members = {
        permission = M.ResourceSharePermissionDetail,
        clientToken = {
            type = "string",
        },
    },
}

M.PermissionVersionsLimitExceededException = {
    type = "structure",
    id = "PermissionVersionsLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceShareConfiguration = {
    type = "structure",
    id = "ResourceShareConfiguration",
    members = {
        retainSharingOnAccountLeaveOrganization = {
            type = "boolean",
        },
    },
}

M.CreateResourceShareInput = {
    type = "structure",
    id = "CreateResourceShareInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArns = {
            type = "list",
            member = { type = "string" },
        },
        principals = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        allowExternalPrincipals = {
            type = "boolean",
        },
        clientToken = {
            type = "string",
        },
        permissionArns = {
            type = "list",
            member = { type = "string" },
        },
        sources = {
            type = "list",
            member = { type = "string" },
        },
        resourceShareConfiguration = M.ResourceShareConfiguration,
    },
}

M.ResourceShareFeatureSet = {
    CREATED_FROM_POLICY = "CREATED_FROM_POLICY",
    PROMOTING_TO_STANDARD = "PROMOTING_TO_STANDARD",
    STANDARD = "STANDARD",
}

M.ResourceShareStatus = {
    PENDING = "PENDING",
    ACTIVE = "ACTIVE",
    FAILED = "FAILED",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.ResourceShare = {
    type = "structure",
    id = "ResourceShare",
    members = {
        resourceShareArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        owningAccountId = {
            type = "string",
        },
        allowExternalPrincipals = {
            type = "boolean",
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        creationTime = {
            type = "timestamp",
        },
        lastUpdatedTime = {
            type = "timestamp",
        },
        featureSet = {
            type = "string",
        },
        resourceShareConfiguration = M.ResourceShareConfiguration,
    },
}

M.CreateResourceShareOutput = {
    type = "structure",
    id = "CreateResourceShareOutput",
    members = {
        resourceShare = M.ResourceShare,
        clientToken = {
            type = "string",
        },
    },
}

M.TagLimitExceededException = {
    type = "structure",
    id = "TagLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagPolicyViolationException = {
    type = "structure",
    id = "TagPolicyViolationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePermissionInput = {
    type = "structure",
    id = "DeletePermissionInput",
    members = {
        permissionArn = {
            type = "string",
            traits = {
                http_query = "permissionArn",
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.DeletePermissionOutput = {
    type = "structure",
    id = "DeletePermissionOutput",
    members = {
        returnValue = {
            type = "boolean",
            traits = {
                xml_name = "return",
            },
        },
        clientToken = {
            type = "string",
        },
        permissionStatus = {
            type = "string",
        },
    },
}

M.DeletePermissionVersionInput = {
    type = "structure",
    id = "DeletePermissionVersionInput",
    members = {
        permissionArn = {
            type = "string",
            traits = {
                http_query = "permissionArn",
                required = true,
            },
        },
        permissionVersion = {
            type = "integer",
            traits = {
                http_query = "permissionVersion",
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.DeletePermissionVersionOutput = {
    type = "structure",
    id = "DeletePermissionVersionOutput",
    members = {
        returnValue = {
            type = "boolean",
            traits = {
                xml_name = "return",
            },
        },
        clientToken = {
            type = "string",
        },
        permissionStatus = {
            type = "string",
        },
    },
}

M.DeleteResourceShareInput = {
    type = "structure",
    id = "DeleteResourceShareInput",
    members = {
        resourceShareArn = {
            type = "string",
            traits = {
                http_query = "resourceShareArn",
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
            },
        },
    },
}

M.DeleteResourceShareOutput = {
    type = "structure",
    id = "DeleteResourceShareOutput",
    members = {
        returnValue = {
            type = "boolean",
            traits = {
                xml_name = "return",
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.DisassociateResourceShareInput = {
    type = "structure",
    id = "DisassociateResourceShareInput",
    members = {
        resourceShareArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArns = {
            type = "list",
            member = { type = "string" },
        },
        principals = {
            type = "list",
            member = { type = "string" },
        },
        clientToken = {
            type = "string",
        },
        sources = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DisassociateResourceShareOutput = {
    type = "structure",
    id = "DisassociateResourceShareOutput",
    members = {
        resourceShareAssociations = {
            type = "list",
            member = M.ResourceShareAssociation,
        },
        clientToken = {
            type = "string",
        },
    },
}

M.DisassociateResourceSharePermissionInput = {
    type = "structure",
    id = "DisassociateResourceSharePermissionInput",
    members = {
        resourceShareArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        permissionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.DisassociateResourceSharePermissionOutput = {
    type = "structure",
    id = "DisassociateResourceSharePermissionOutput",
    members = {
        returnValue = {
            type = "boolean",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.EnableSharingWithAwsOrganizationInput = {
    type = "structure",
    id = "EnableSharingWithAwsOrganizationInput",
}

M.EnableSharingWithAwsOrganizationOutput = {
    type = "structure",
    id = "EnableSharingWithAwsOrganizationOutput",
    members = {
        returnValue = {
            type = "boolean",
            traits = {
                xml_name = "return",
            },
        },
    },
}

M.GetPermissionInput = {
    type = "structure",
    id = "GetPermissionInput",
    members = {
        permissionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        permissionVersion = {
            type = "integer",
        },
    },
}

M.GetPermissionOutput = {
    type = "structure",
    id = "GetPermissionOutput",
    members = {
        permission = M.ResourceSharePermissionDetail,
    },
}

M.GetResourcePoliciesInput = {
    type = "structure",
    id = "GetResourcePoliciesInput",
    members = {
        resourceArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        principal = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.GetResourcePoliciesOutput = {
    type = "structure",
    id = "GetResourcePoliciesOutput",
    members = {
        policies = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    id = "InvalidNextTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceArnNotFoundException = {
    type = "structure",
    id = "ResourceArnNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourceShareAssociationsInput = {
    type = "structure",
    id = "GetResourceShareAssociationsInput",
    members = {
        associationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceShareArns = {
            type = "list",
            member = { type = "string" },
        },
        resourceArn = {
            type = "string",
        },
        principal = {
            type = "string",
        },
        associationStatus = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.GetResourceShareAssociationsOutput = {
    type = "structure",
    id = "GetResourceShareAssociationsOutput",
    members = {
        resourceShareAssociations = {
            type = "list",
            member = M.ResourceShareAssociation,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetResourceShareInvitationsInput = {
    type = "structure",
    id = "GetResourceShareInvitationsInput",
    members = {
        resourceShareInvitationArns = {
            type = "list",
            member = { type = "string" },
        },
        resourceShareArns = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.GetResourceShareInvitationsOutput = {
    type = "structure",
    id = "GetResourceShareInvitationsOutput",
    members = {
        resourceShareInvitations = {
            type = "list",
            member = M.ResourceShareInvitation,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InvalidMaxResultsException = {
    type = "structure",
    id = "InvalidMaxResultsException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceOwner = {
    SELF = "SELF",
    OTHER_ACCOUNTS = "OTHER-ACCOUNTS",
}

M.TagFilter = {
    type = "structure",
    id = "TagFilter",
    members = {
        tagKey = {
            type = "string",
        },
        tagValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetResourceSharesInput = {
    type = "structure",
    id = "GetResourceSharesInput",
    members = {
        resourceShareArns = {
            type = "list",
            member = { type = "string" },
        },
        resourceShareStatus = {
            type = "string",
        },
        resourceOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        tagFilters = {
            type = "list",
            member = M.TagFilter,
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        permissionArn = {
            type = "string",
        },
        permissionVersion = {
            type = "integer",
        },
    },
}

M.GetResourceSharesOutput = {
    type = "structure",
    id = "GetResourceSharesOutput",
    members = {
        resourceShares = {
            type = "list",
            member = M.ResourceShare,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ResourceRegionScopeFilter = {
    ALL = "ALL",
    REGIONAL = "REGIONAL",
    GLOBAL = "GLOBAL",
}

M.ListPendingInvitationResourcesInput = {
    type = "structure",
    id = "ListPendingInvitationResourcesInput",
    members = {
        resourceShareInvitationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        resourceRegionScope = {
            type = "string",
        },
    },
}

M.ResourceRegionScope = {
    REGIONAL = "REGIONAL",
    GLOBAL = "GLOBAL",
}

M.ResourceStatus = {
    AVAILABLE = "AVAILABLE",
    ZONAL_RESOURCE_INACCESSIBLE = "ZONAL_RESOURCE_INACCESSIBLE",
    LIMIT_EXCEEDED = "LIMIT_EXCEEDED",
    UNAVAILABLE = "UNAVAILABLE",
    PENDING = "PENDING",
}

M.Resource = {
    type = "structure",
    id = "Resource",
    members = {
        arn = {
            type = "string",
        },
        type = {
            type = "string",
        },
        resourceShareArn = {
            type = "string",
        },
        resourceGroupArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastUpdatedTime = {
            type = "timestamp",
        },
        resourceRegionScope = {
            type = "string",
        },
    },
}

M.ListPendingInvitationResourcesOutput = {
    type = "structure",
    id = "ListPendingInvitationResourcesOutput",
    members = {
        resources = {
            type = "list",
            member = M.Resource,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.MissingRequiredParameterException = {
    type = "structure",
    id = "MissingRequiredParameterException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListPermissionAssociationsInput = {
    type = "structure",
    id = "ListPermissionAssociationsInput",
    members = {
        permissionArn = {
            type = "string",
        },
        permissionVersion = {
            type = "integer",
        },
        associationStatus = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        featureSet = {
            type = "string",
        },
        defaultVersion = {
            type = "boolean",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.AssociatedPermission = {
    type = "structure",
    id = "AssociatedPermission",
    members = {
        arn = {
            type = "string",
        },
        permissionVersion = {
            type = "string",
        },
        defaultVersion = {
            type = "boolean",
        },
        resourceType = {
            type = "string",
        },
        status = {
            type = "string",
        },
        featureSet = {
            type = "string",
        },
        lastUpdatedTime = {
            type = "timestamp",
        },
        resourceShareArn = {
            type = "string",
        },
    },
}

M.ListPermissionAssociationsOutput = {
    type = "structure",
    id = "ListPermissionAssociationsOutput",
    members = {
        permissions = {
            type = "list",
            member = M.AssociatedPermission,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PermissionTypeFilter = {
    ALL = "ALL",
    AWS_MANAGED = "AWS_MANAGED",
    CUSTOMER_MANAGED = "CUSTOMER_MANAGED",
}

M.ListPermissionsInput = {
    type = "structure",
    id = "ListPermissionsInput",
    members = {
        resourceType = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        permissionType = {
            type = "string",
        },
    },
}

M.ListPermissionsOutput = {
    type = "structure",
    id = "ListPermissionsOutput",
    members = {
        permissions = {
            type = "list",
            member = M.ResourceSharePermissionSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPermissionVersionsInput = {
    type = "structure",
    id = "ListPermissionVersionsInput",
    members = {
        permissionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListPermissionVersionsOutput = {
    type = "structure",
    id = "ListPermissionVersionsOutput",
    members = {
        permissions = {
            type = "list",
            member = M.ResourceSharePermissionSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPrincipalsInput = {
    type = "structure",
    id = "ListPrincipalsInput",
    members = {
        resourceOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
        },
        principals = {
            type = "list",
            member = { type = "string" },
        },
        resourceType = {
            type = "string",
        },
        resourceShareArns = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.Principal = {
    type = "structure",
    id = "Principal",
    members = {
        id = {
            type = "string",
        },
        resourceShareArn = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastUpdatedTime = {
            type = "timestamp",
        },
        external = {
            type = "boolean",
        },
    },
}

M.ListPrincipalsOutput = {
    type = "structure",
    id = "ListPrincipalsOutput",
    members = {
        principals = {
            type = "list",
            member = M.Principal,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ReplacePermissionAssociationsWorkStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.ListReplacePermissionAssociationsWorkInput = {
    type = "structure",
    id = "ListReplacePermissionAssociationsWorkInput",
    members = {
        workIds = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ReplacePermissionAssociationsWork = {
    type = "structure",
    id = "ReplacePermissionAssociationsWork",
    members = {
        id = {
            type = "string",
        },
        fromPermissionArn = {
            type = "string",
        },
        fromPermissionVersion = {
            type = "string",
        },
        toPermissionArn = {
            type = "string",
        },
        toPermissionVersion = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.ListReplacePermissionAssociationsWorkOutput = {
    type = "structure",
    id = "ListReplacePermissionAssociationsWorkOutput",
    members = {
        replacePermissionAssociationsWorks = {
            type = "list",
            member = M.ReplacePermissionAssociationsWork,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InvalidResourceTypeException = {
    type = "structure",
    id = "InvalidResourceTypeException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListResourcesInput = {
    type = "structure",
    id = "ListResourcesInput",
    members = {
        resourceOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principal = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        resourceArns = {
            type = "list",
            member = { type = "string" },
        },
        resourceShareArns = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        resourceRegionScope = {
            type = "string",
        },
    },
}

M.ListResourcesOutput = {
    type = "structure",
    id = "ListResourcesOutput",
    members = {
        resources = {
            type = "list",
            member = M.Resource,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListResourceSharePermissionsInput = {
    type = "structure",
    id = "ListResourceSharePermissionsInput",
    members = {
        resourceShareArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListResourceSharePermissionsOutput = {
    type = "structure",
    id = "ListResourceSharePermissionsOutput",
    members = {
        permissions = {
            type = "list",
            member = M.ResourceSharePermissionSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListResourceTypesInput = {
    type = "structure",
    id = "ListResourceTypesInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        resourceRegionScope = {
            type = "string",
        },
    },
}

M.ServiceNameAndResourceType = {
    type = "structure",
    id = "ServiceNameAndResourceType",
    members = {
        resourceType = {
            type = "string",
        },
        serviceName = {
            type = "string",
        },
        resourceRegionScope = {
            type = "string",
        },
    },
}

M.ListResourceTypesOutput = {
    type = "structure",
    id = "ListResourceTypesOutput",
    members = {
        resourceTypes = {
            type = "list",
            member = M.ServiceNameAndResourceType,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSourceAssociationsInput = {
    type = "structure",
    id = "ListSourceAssociationsInput",
    members = {
        resourceShareArns = {
            type = "list",
            member = { type = "string" },
        },
        sourceId = {
            type = "string",
        },
        sourceType = {
            type = "string",
        },
        associationStatus = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.AssociatedSource = {
    type = "structure",
    id = "AssociatedSource",
    members = {
        resourceShareArn = {
            type = "string",
        },
        sourceId = {
            type = "string",
        },
        sourceType = {
            type = "string",
        },
        status = {
            type = "string",
        },
        lastUpdatedTime = {
            type = "timestamp",
        },
        creationTime = {
            type = "timestamp",
        },
        statusMessage = {
            type = "string",
        },
    },
}

M.ListSourceAssociationsOutput = {
    type = "structure",
    id = "ListSourceAssociationsOutput",
    members = {
        sourceAssociations = {
            type = "list",
            member = M.AssociatedSource,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PromotePermissionCreatedFromPolicyInput = {
    type = "structure",
    id = "PromotePermissionCreatedFromPolicyInput",
    members = {
        permissionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.PromotePermissionCreatedFromPolicyOutput = {
    type = "structure",
    id = "PromotePermissionCreatedFromPolicyOutput",
    members = {
        permission = M.ResourceSharePermissionSummary,
        clientToken = {
            type = "string",
        },
    },
}

M.PromoteResourceShareCreatedFromPolicyInput = {
    type = "structure",
    id = "PromoteResourceShareCreatedFromPolicyInput",
    members = {
        resourceShareArn = {
            type = "string",
            traits = {
                http_query = "resourceShareArn",
                required = true,
            },
        },
    },
}

M.PromoteResourceShareCreatedFromPolicyOutput = {
    type = "structure",
    id = "PromoteResourceShareCreatedFromPolicyOutput",
    members = {
        returnValue = {
            type = "boolean",
            traits = {
                xml_name = "return",
            },
        },
    },
}

M.UnmatchedPolicyPermissionException = {
    type = "structure",
    id = "UnmatchedPolicyPermissionException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RejectResourceShareInvitationInput = {
    type = "structure",
    id = "RejectResourceShareInvitationInput",
    members = {
        resourceShareInvitationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.RejectResourceShareInvitationOutput = {
    type = "structure",
    id = "RejectResourceShareInvitationOutput",
    members = {
        resourceShareInvitation = M.ResourceShareInvitation,
        clientToken = {
            type = "string",
        },
    },
}

M.ReplacePermissionAssociationsInput = {
    type = "structure",
    id = "ReplacePermissionAssociationsInput",
    members = {
        fromPermissionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fromPermissionVersion = {
            type = "integer",
        },
        toPermissionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.ReplacePermissionAssociationsOutput = {
    type = "structure",
    id = "ReplacePermissionAssociationsOutput",
    members = {
        replacePermissionAssociationsWork = M.ReplacePermissionAssociationsWork,
        clientToken = {
            type = "string",
        },
    },
}

M.SetDefaultPermissionVersionInput = {
    type = "structure",
    id = "SetDefaultPermissionVersionInput",
    members = {
        permissionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        permissionVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.SetDefaultPermissionVersionOutput = {
    type = "structure",
    id = "SetDefaultPermissionVersionOutput",
    members = {
        returnValue = {
            type = "boolean",
            traits = {
                xml_name = "return",
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceShareArn = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        resourceShareArn = {
            type = "string",
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateResourceShareInput = {
    type = "structure",
    id = "UpdateResourceShareInput",
    members = {
        resourceShareArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        allowExternalPrincipals = {
            type = "boolean",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateResourceShareOutput = {
    type = "structure",
    id = "UpdateResourceShareOutput",
    members = {
        resourceShare = M.ResourceShare,
        clientToken = {
            type = "string",
        },
    },
}

return M
