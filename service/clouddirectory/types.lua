local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AttributeKey = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FacetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TypedAttributeValue = {
    type = "union",
    members = {
        StringValue = {
            type = "string",
        },
        BinaryValue = {
            type = "blob",
        },
        BooleanValue = {
            type = "boolean",
        },
        NumberValue = {
            type = "string",
        },
        DatetimeValue = {
            type = "timestamp",
        },
    },
}

M.AttributeKeyAndValue = {
    type = "structure",
    members = {
        Key = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ObjectReference = {
    type = "structure",
    members = {
        Selector = {
            type = "string",
        },
    },
}

M.SchemaFacet = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
        },
        FacetName = {
            type = "string",
        },
    },
}

M.AddFacetToObjectInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        SchemaFacet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ObjectAttributeList = {
            type = "list",
            member_type = "structure",
        },
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AddFacetToObjectOutput = {
    type = "structure",
}

M.DirectoryNotEnabledException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.FacetValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalServiceException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidArnException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RetryableConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ApplySchemaInput = {
    type = "structure",
    members = {
        PublishedSchemaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
    },
}

M.ApplySchemaOutput = {
    type = "structure",
    members = {
        AppliedSchemaArn = {
            type = "string",
        },
        DirectoryArn = {
            type = "string",
        },
    },
}

M.InvalidAttachmentException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SchemaAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AttachObjectInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        ParentReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ChildReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        LinkName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AttachObjectOutput = {
    type = "structure",
    members = {
        AttachedObjectIdentifier = {
            type = "string",
        },
    },
}

M.LinkNameAlreadyInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AttachPolicyInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        PolicyReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AttachPolicyOutput = {
    type = "structure",
}

M.NotPolicyException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AttachToIndexInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        IndexReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TargetReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AttachToIndexOutput = {
    type = "structure",
    members = {
        AttachedObjectIdentifier = {
            type = "string",
        },
    },
}

M.IndexedAttributeMissingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NotIndexException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AttributeNameAndValue = {
    type = "structure",
    members = {
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.TypedLinkSchemaAndFacetName = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TypedLinkName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AttachTypedLinkInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        SourceObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TargetObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TypedLinkFacet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TypedLinkSpecifier = {
    type = "structure",
    members = {
        TypedLinkFacet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SourceObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TargetObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        IdentityAttributeValues = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AttachTypedLinkOutput = {
    type = "structure",
    members = {
        TypedLinkSpecifier = {
            type = "structure",
        },
    },
}

M.ConsistencyLevel = {
    SERIALIZABLE = "SERIALIZABLE",
    EVENTUAL = "EVENTUAL",
}

M.BatchGetLinkAttributes = {
    type = "structure",
    members = {
        TypedLinkSpecifier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AttributeNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetObjectAttributes = {
    type = "structure",
    members = {
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SchemaFacet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AttributeNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetObjectInformation = {
    type = "structure",
    members = {
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchListAttachedIndices = {
    type = "structure",
    members = {
        TargetReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.RangeMode = {
    FIRST = "FIRST",
    LAST = "LAST",
    LAST_BEFORE_MISSING_VALUES = "LAST_BEFORE_MISSING_VALUES",
    INCLUSIVE = "INCLUSIVE",
    EXCLUSIVE = "EXCLUSIVE",
}

M.TypedAttributeValueRange = {
    type = "structure",
    members = {
        StartMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartValue = {
            type = "union",
        },
        EndMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndValue = {
            type = "union",
        },
    },
}

M.TypedLinkAttributeRange = {
    type = "structure",
    members = {
        AttributeName = {
            type = "string",
        },
        Range = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchListIncomingTypedLinks = {
    type = "structure",
    members = {
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        FilterAttributeRanges = {
            type = "list",
            member_type = "structure",
        },
        FilterTypedLink = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ObjectAttributeRange = {
    type = "structure",
    members = {
        AttributeKey = {
            type = "structure",
        },
        Range = {
            type = "structure",
        },
    },
}

M.BatchListIndex = {
    type = "structure",
    members = {
        RangesOnIndexedValues = {
            type = "list",
            member_type = "structure",
        },
        IndexReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.BatchListObjectAttributes = {
    type = "structure",
    members = {
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        FacetFilter = {
            type = "structure",
        },
    },
}

M.BatchListObjectChildren = {
    type = "structure",
    members = {
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.BatchListObjectParentPaths = {
    type = "structure",
    members = {
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.BatchListObjectParents = {
    type = "structure",
    members = {
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.BatchListObjectPolicies = {
    type = "structure",
    members = {
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.BatchListOutgoingTypedLinks = {
    type = "structure",
    members = {
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        FilterAttributeRanges = {
            type = "list",
            member_type = "structure",
        },
        FilterTypedLink = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.BatchListPolicyAttachments = {
    type = "structure",
    members = {
        PolicyReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.BatchLookupPolicy = {
    type = "structure",
    members = {
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.BatchReadOperation = {
    type = "structure",
    members = {
        ListObjectAttributes = {
            type = "structure",
        },
        ListObjectChildren = {
            type = "structure",
        },
        ListAttachedIndices = {
            type = "structure",
        },
        ListObjectParentPaths = {
            type = "structure",
        },
        GetObjectInformation = {
            type = "structure",
        },
        GetObjectAttributes = {
            type = "structure",
        },
        ListObjectParents = {
            type = "structure",
        },
        ListObjectPolicies = {
            type = "structure",
        },
        ListPolicyAttachments = {
            type = "structure",
        },
        LookupPolicy = {
            type = "structure",
        },
        ListIndex = {
            type = "structure",
        },
        ListOutgoingTypedLinks = {
            type = "structure",
        },
        ListIncomingTypedLinks = {
            type = "structure",
        },
        GetLinkAttributes = {
            type = "structure",
        },
    },
}

M.BatchReadInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        Operations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ConsistencyLevel = {
            type = "string",
            traits = {
                http_header = "x-amz-consistency-level",
            },
        },
    },
}

M.BatchReadExceptionType = {
    ValidationException = "ValidationException",
    InvalidArnException = "InvalidArnException",
    ResourceNotFoundException = "ResourceNotFoundException",
    InvalidNextTokenException = "InvalidNextTokenException",
    AccessDeniedException = "AccessDeniedException",
    NotNodeException = "NotNodeException",
    FacetValidationException = "FacetValidationException",
    CannotListParentOfRootException = "CannotListParentOfRootException",
    NotIndexException = "NotIndexException",
    NotPolicyException = "NotPolicyException",
    DirectoryNotEnabledException = "DirectoryNotEnabledException",
    LimitExceededException = "LimitExceededException",
    InternalServiceException = "InternalServiceException",
}

M.BatchReadException = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.BatchGetLinkAttributesResponse = {
    type = "structure",
    members = {
        Attributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchGetObjectAttributesResponse = {
    type = "structure",
    members = {
        Attributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchGetObjectInformationResponse = {
    type = "structure",
    members = {
        SchemaFacets = {
            type = "list",
            member_type = "structure",
        },
        ObjectIdentifier = {
            type = "string",
        },
    },
}

M.IndexAttachment = {
    type = "structure",
    members = {
        IndexedAttributes = {
            type = "list",
            member_type = "structure",
        },
        ObjectIdentifier = {
            type = "string",
        },
    },
}

M.BatchListAttachedIndicesResponse = {
    type = "structure",
    members = {
        IndexAttachments = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.BatchListIncomingTypedLinksResponse = {
    type = "structure",
    members = {
        LinkSpecifiers = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.BatchListIndexResponse = {
    type = "structure",
    members = {
        IndexAttachments = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.BatchListObjectAttributesResponse = {
    type = "structure",
    members = {
        Attributes = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.BatchListObjectChildrenResponse = {
    type = "structure",
    members = {
        Children = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PathToObjectIdentifiers = {
    type = "structure",
    members = {
        Path = {
            type = "string",
        },
        ObjectIdentifiers = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BatchListObjectParentPathsResponse = {
    type = "structure",
    members = {
        PathToObjectIdentifiersList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ObjectIdentifierAndLinkNameTuple = {
    type = "structure",
    members = {
        ObjectIdentifier = {
            type = "string",
        },
        LinkName = {
            type = "string",
        },
    },
}

M.BatchListObjectParentsResponse = {
    type = "structure",
    members = {
        ParentLinks = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.BatchListObjectPoliciesResponse = {
    type = "structure",
    members = {
        AttachedPolicyIds = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.BatchListOutgoingTypedLinksResponse = {
    type = "structure",
    members = {
        TypedLinkSpecifiers = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.BatchListPolicyAttachmentsResponse = {
    type = "structure",
    members = {
        ObjectIdentifiers = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PolicyAttachment = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
        },
        ObjectIdentifier = {
            type = "string",
        },
        PolicyType = {
            type = "string",
        },
    },
}

M.PolicyToPath = {
    type = "structure",
    members = {
        Path = {
            type = "string",
        },
        Policies = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchLookupPolicyResponse = {
    type = "structure",
    members = {
        PolicyToPathList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.BatchReadSuccessfulResponse = {
    type = "structure",
    members = {
        ListObjectAttributes = {
            type = "structure",
        },
        ListObjectChildren = {
            type = "structure",
        },
        GetObjectInformation = {
            type = "structure",
        },
        GetObjectAttributes = {
            type = "structure",
        },
        ListAttachedIndices = {
            type = "structure",
        },
        ListObjectParentPaths = {
            type = "structure",
        },
        ListObjectPolicies = {
            type = "structure",
        },
        ListPolicyAttachments = {
            type = "structure",
        },
        LookupPolicy = {
            type = "structure",
        },
        ListIndex = {
            type = "structure",
        },
        ListOutgoingTypedLinks = {
            type = "structure",
        },
        ListIncomingTypedLinks = {
            type = "structure",
        },
        GetLinkAttributes = {
            type = "structure",
        },
        ListObjectParents = {
            type = "structure",
        },
    },
}

M.BatchReadOperationResponse = {
    type = "structure",
    members = {
        SuccessfulResponse = {
            type = "structure",
        },
        ExceptionResponse = {
            type = "structure",
        },
    },
}

M.BatchReadOutput = {
    type = "structure",
    members = {
        Responses = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchWriteExceptionType = {
    InternalServiceException = "InternalServiceException",
    ValidationException = "ValidationException",
    InvalidArnException = "InvalidArnException",
    LinkNameAlreadyInUseException = "LinkNameAlreadyInUseException",
    StillContainsLinksException = "StillContainsLinksException",
    FacetValidationException = "FacetValidationException",
    ObjectNotDetachedException = "ObjectNotDetachedException",
    ResourceNotFoundException = "ResourceNotFoundException",
    AccessDeniedException = "AccessDeniedException",
    InvalidAttachmentException = "InvalidAttachmentException",
    NotIndexException = "NotIndexException",
    NotNodeException = "NotNodeException",
    IndexedAttributeMissingException = "IndexedAttributeMissingException",
    ObjectAlreadyDetachedException = "ObjectAlreadyDetachedException",
    NotPolicyException = "NotPolicyException",
    DirectoryNotEnabledException = "DirectoryNotEnabledException",
    LimitExceededException = "LimitExceededException",
    UnsupportedIndexTypeException = "UnsupportedIndexTypeException",
}

M.BatchWriteException = {
    type = "structure",
    error = "client",
    members = {
        Index = {
            type = "number",
        },
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.BatchAddFacetToObject = {
    type = "structure",
    members = {
        SchemaFacet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ObjectAttributeList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchAttachObject = {
    type = "structure",
    members = {
        ParentReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ChildReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        LinkName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchAttachPolicy = {
    type = "structure",
    members = {
        PolicyReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchAttachToIndex = {
    type = "structure",
    members = {
        IndexReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TargetReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchAttachTypedLink = {
    type = "structure",
    members = {
        SourceObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TargetObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TypedLinkFacet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchCreateIndex = {
    type = "structure",
    members = {
        OrderedIndexedAttributeList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        IsUnique = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        ParentReference = {
            type = "structure",
        },
        LinkName = {
            type = "string",
        },
        BatchReferenceName = {
            type = "string",
        },
    },
}

M.BatchCreateObject = {
    type = "structure",
    members = {
        SchemaFacet = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ObjectAttributeList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ParentReference = {
            type = "structure",
        },
        LinkName = {
            type = "string",
        },
        BatchReferenceName = {
            type = "string",
        },
    },
}

M.BatchDeleteObject = {
    type = "structure",
    members = {
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDetachFromIndex = {
    type = "structure",
    members = {
        IndexReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TargetReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDetachObject = {
    type = "structure",
    members = {
        ParentReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        LinkName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BatchReferenceName = {
            type = "string",
        },
    },
}

M.BatchDetachPolicy = {
    type = "structure",
    members = {
        PolicyReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDetachTypedLink = {
    type = "structure",
    members = {
        TypedLinkSpecifier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchRemoveFacetFromObject = {
    type = "structure",
    members = {
        SchemaFacet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateActionType = {
    CREATE_OR_UPDATE = "CREATE_OR_UPDATE",
    DELETE = "DELETE",
}

M.LinkAttributeAction = {
    type = "structure",
    members = {
        AttributeActionType = {
            type = "string",
        },
        AttributeUpdateValue = {
            type = "union",
        },
    },
}

M.LinkAttributeUpdate = {
    type = "structure",
    members = {
        AttributeKey = {
            type = "structure",
        },
        AttributeAction = {
            type = "structure",
        },
    },
}

M.BatchUpdateLinkAttributes = {
    type = "structure",
    members = {
        TypedLinkSpecifier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AttributeUpdates = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ObjectAttributeAction = {
    type = "structure",
    members = {
        ObjectAttributeActionType = {
            type = "string",
        },
        ObjectAttributeUpdateValue = {
            type = "union",
        },
    },
}

M.ObjectAttributeUpdate = {
    type = "structure",
    members = {
        ObjectAttributeKey = {
            type = "structure",
        },
        ObjectAttributeAction = {
            type = "structure",
        },
    },
}

M.BatchUpdateObjectAttributes = {
    type = "structure",
    members = {
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AttributeUpdates = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchWriteOperation = {
    type = "structure",
    members = {
        CreateObject = {
            type = "structure",
        },
        AttachObject = {
            type = "structure",
        },
        DetachObject = {
            type = "structure",
        },
        UpdateObjectAttributes = {
            type = "structure",
        },
        DeleteObject = {
            type = "structure",
        },
        AddFacetToObject = {
            type = "structure",
        },
        RemoveFacetFromObject = {
            type = "structure",
        },
        AttachPolicy = {
            type = "structure",
        },
        DetachPolicy = {
            type = "structure",
        },
        CreateIndex = {
            type = "structure",
        },
        AttachToIndex = {
            type = "structure",
        },
        DetachFromIndex = {
            type = "structure",
        },
        AttachTypedLink = {
            type = "structure",
        },
        DetachTypedLink = {
            type = "structure",
        },
        UpdateLinkAttributes = {
            type = "structure",
        },
    },
}

M.BatchWriteInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        Operations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchAddFacetToObjectResponse = {
    type = "structure",
}

M.BatchAttachObjectResponse = {
    type = "structure",
    members = {
        attachedObjectIdentifier = {
            type = "string",
        },
    },
}

M.BatchAttachPolicyResponse = {
    type = "structure",
}

M.BatchAttachToIndexResponse = {
    type = "structure",
    members = {
        AttachedObjectIdentifier = {
            type = "string",
        },
    },
}

M.BatchAttachTypedLinkResponse = {
    type = "structure",
    members = {
        TypedLinkSpecifier = {
            type = "structure",
        },
    },
}

M.BatchCreateIndexResponse = {
    type = "structure",
    members = {
        ObjectIdentifier = {
            type = "string",
        },
    },
}

M.BatchCreateObjectResponse = {
    type = "structure",
    members = {
        ObjectIdentifier = {
            type = "string",
        },
    },
}

M.BatchDeleteObjectResponse = {
    type = "structure",
}

M.BatchDetachFromIndexResponse = {
    type = "structure",
    members = {
        DetachedObjectIdentifier = {
            type = "string",
        },
    },
}

M.BatchDetachObjectResponse = {
    type = "structure",
    members = {
        detachedObjectIdentifier = {
            type = "string",
        },
    },
}

M.BatchDetachPolicyResponse = {
    type = "structure",
}

M.BatchDetachTypedLinkResponse = {
    type = "structure",
}

M.BatchRemoveFacetFromObjectResponse = {
    type = "structure",
}

M.BatchUpdateLinkAttributesResponse = {
    type = "structure",
}

M.BatchUpdateObjectAttributesResponse = {
    type = "structure",
    members = {
        ObjectIdentifier = {
            type = "string",
        },
    },
}

M.BatchWriteOperationResponse = {
    type = "structure",
    members = {
        CreateObject = {
            type = "structure",
        },
        AttachObject = {
            type = "structure",
        },
        DetachObject = {
            type = "structure",
        },
        UpdateObjectAttributes = {
            type = "structure",
        },
        DeleteObject = {
            type = "structure",
        },
        AddFacetToObject = {
            type = "structure",
        },
        RemoveFacetFromObject = {
            type = "structure",
        },
        AttachPolicy = {
            type = "structure",
        },
        DetachPolicy = {
            type = "structure",
        },
        CreateIndex = {
            type = "structure",
        },
        AttachToIndex = {
            type = "structure",
        },
        DetachFromIndex = {
            type = "structure",
        },
        AttachTypedLink = {
            type = "structure",
        },
        DetachTypedLink = {
            type = "structure",
        },
        UpdateLinkAttributes = {
            type = "structure",
        },
    },
}

M.BatchWriteOutput = {
    type = "structure",
    members = {
        Responses = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateDirectoryInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SchemaArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
    },
}

M.CreateDirectoryOutput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AppliedSchemaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DirectoryAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RuleType = {
    BINARY_LENGTH = "BINARY_LENGTH",
    NUMBER_COMPARISON = "NUMBER_COMPARISON",
    STRING_FROM_SET = "STRING_FROM_SET",
    STRING_LENGTH = "STRING_LENGTH",
}

M.Rule = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.FacetAttributeType = {
    STRING = "STRING",
    BINARY = "BINARY",
    BOOLEAN = "BOOLEAN",
    NUMBER = "NUMBER",
    DATETIME = "DATETIME",
    VARIANT = "VARIANT",
}

M.FacetAttributeDefinition = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultValue = {
            type = "union",
        },
        IsImmutable = {
            type = "boolean",
        },
        Rules = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.FacetAttributeReference = {
    type = "structure",
    members = {
        TargetFacetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetAttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RequiredAttributeBehavior = {
    REQUIRED_ALWAYS = "REQUIRED_ALWAYS",
    NOT_REQUIRED = "NOT_REQUIRED",
}

M.FacetAttribute = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeDefinition = {
            type = "structure",
        },
        AttributeReference = {
            type = "structure",
        },
        RequiredBehavior = {
            type = "string",
        },
    },
}

M.FacetStyle = {
    STATIC = "STATIC",
    DYNAMIC = "DYNAMIC",
}

M.ObjectType = {
    NODE = "NODE",
    LEAF_NODE = "LEAF_NODE",
    POLICY = "POLICY",
    INDEX = "INDEX",
}

M.CreateFacetInput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "list",
            member_type = "structure",
        },
        ObjectType = {
            type = "string",
        },
        FacetStyle = {
            type = "string",
        },
    },
}

M.CreateFacetOutput = {
    type = "structure",
}

M.FacetAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidRuleException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateIndexInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        OrderedIndexedAttributeList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        IsUnique = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        ParentReference = {
            type = "structure",
        },
        LinkName = {
            type = "string",
        },
    },
}

M.CreateIndexOutput = {
    type = "structure",
    members = {
        ObjectIdentifier = {
            type = "string",
        },
    },
}

M.UnsupportedIndexTypeException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateObjectInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        SchemaFacets = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ObjectAttributeList = {
            type = "list",
            member_type = "structure",
        },
        ParentReference = {
            type = "structure",
        },
        LinkName = {
            type = "string",
        },
    },
}

M.CreateObjectOutput = {
    type = "structure",
    members = {
        ObjectIdentifier = {
            type = "string",
        },
    },
}

M.CreateSchemaInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateSchemaOutput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
        },
    },
}

M.TypedLinkAttributeDefinition = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultValue = {
            type = "union",
        },
        IsImmutable = {
            type = "boolean",
        },
        Rules = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        RequiredBehavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TypedLinkFacet = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        IdentityAttributeOrder = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTypedLinkFacetInput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        Facet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTypedLinkFacetOutput = {
    type = "structure",
}

M.DeleteDirectoryInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
    },
}

M.DeleteDirectoryOutput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DirectoryDeletedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DirectoryNotDisabledException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteFacetInput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteFacetOutput = {
    type = "structure",
}

M.FacetInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.FacetNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteObjectInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteObjectOutput = {
    type = "structure",
}

M.ObjectNotDetachedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteSchemaInput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
    },
}

M.DeleteSchemaOutput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
        },
    },
}

M.StillContainsLinksException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteTypedLinkFacetInput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTypedLinkFacetOutput = {
    type = "structure",
}

M.DetachFromIndexInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        IndexReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TargetReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DetachFromIndexOutput = {
    type = "structure",
    members = {
        DetachedObjectIdentifier = {
            type = "string",
        },
    },
}

M.ObjectAlreadyDetachedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DetachObjectInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        ParentReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        LinkName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetachObjectOutput = {
    type = "structure",
    members = {
        DetachedObjectIdentifier = {
            type = "string",
        },
    },
}

M.NotNodeException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DetachPolicyInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        PolicyReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DetachPolicyOutput = {
    type = "structure",
}

M.DetachTypedLinkInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        TypedLinkSpecifier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DetachTypedLinkOutput = {
    type = "structure",
}

M.DisableDirectoryInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
    },
}

M.DisableDirectoryOutput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnableDirectoryInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
    },
}

M.EnableDirectoryOutput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAppliedSchemaVersionInput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAppliedSchemaVersionOutput = {
    type = "structure",
    members = {
        AppliedSchemaArn = {
            type = "string",
        },
    },
}

M.GetDirectoryInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
    },
}

M.DirectoryState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    DELETED = "DELETED",
}

M.Directory = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        DirectoryArn = {
            type = "string",
        },
        State = {
            type = "string",
        },
        CreationDateTime = {
            type = "timestamp",
        },
    },
}

M.GetDirectoryOutput = {
    type = "structure",
    members = {
        Directory = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetFacetInput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Facet = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        ObjectType = {
            type = "string",
        },
        FacetStyle = {
            type = "string",
        },
    },
}

M.GetFacetOutput = {
    type = "structure",
    members = {
        Facet = {
            type = "structure",
        },
    },
}

M.GetLinkAttributesInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        TypedLinkSpecifier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AttributeNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ConsistencyLevel = {
            type = "string",
        },
    },
}

M.GetLinkAttributesOutput = {
    type = "structure",
    members = {
        Attributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetObjectAttributesInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ConsistencyLevel = {
            type = "string",
            traits = {
                http_header = "x-amz-consistency-level",
            },
        },
        SchemaFacet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AttributeNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetObjectAttributesOutput = {
    type = "structure",
    members = {
        Attributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetObjectInformationInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ConsistencyLevel = {
            type = "string",
            traits = {
                http_header = "x-amz-consistency-level",
            },
        },
    },
}

M.GetObjectInformationOutput = {
    type = "structure",
    members = {
        SchemaFacets = {
            type = "list",
            member_type = "structure",
        },
        ObjectIdentifier = {
            type = "string",
        },
    },
}

M.GetSchemaAsJsonInput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
    },
}

M.GetSchemaAsJsonOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Document = {
            type = "string",
        },
    },
}

M.GetTypedLinkFacetInformationInput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTypedLinkFacetInformationOutput = {
    type = "structure",
    members = {
        IdentityAttributeOrder = {
            type = "list",
            member_type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListAppliedSchemaArnsInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SchemaArn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListAppliedSchemaArnsOutput = {
    type = "structure",
    members = {
        SchemaArns = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAttachedIndicesInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        TargetReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        ConsistencyLevel = {
            type = "string",
            traits = {
                http_header = "x-amz-consistency-level",
            },
        },
    },
}

M.ListAttachedIndicesOutput = {
    type = "structure",
    members = {
        IndexAttachments = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDevelopmentSchemaArnsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListDevelopmentSchemaArnsOutput = {
    type = "structure",
    members = {
        SchemaArns = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDirectoriesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        state = {
            type = "string",
        },
    },
}

M.ListDirectoriesOutput = {
    type = "structure",
    members = {
        Directories = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFacetAttributesInput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListFacetAttributesOutput = {
    type = "structure",
    members = {
        Attributes = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFacetNamesInput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListFacetNamesOutput = {
    type = "structure",
    members = {
        FacetNames = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListIncomingTypedLinksInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        FilterAttributeRanges = {
            type = "list",
            member_type = "structure",
        },
        FilterTypedLink = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        ConsistencyLevel = {
            type = "string",
        },
    },
}

M.ListIncomingTypedLinksOutput = {
    type = "structure",
    members = {
        LinkSpecifiers = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListIndexInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        RangesOnIndexedValues = {
            type = "list",
            member_type = "structure",
        },
        IndexReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        ConsistencyLevel = {
            type = "string",
            traits = {
                http_header = "x-amz-consistency-level",
            },
        },
    },
}

M.ListIndexOutput = {
    type = "structure",
    members = {
        IndexAttachments = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListManagedSchemaArnsInput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListManagedSchemaArnsOutput = {
    type = "structure",
    members = {
        SchemaArns = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListObjectAttributesInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        ConsistencyLevel = {
            type = "string",
            traits = {
                http_header = "x-amz-consistency-level",
            },
        },
        FacetFilter = {
            type = "structure",
        },
    },
}

M.ListObjectAttributesOutput = {
    type = "structure",
    members = {
        Attributes = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListObjectChildrenInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        ConsistencyLevel = {
            type = "string",
            traits = {
                http_header = "x-amz-consistency-level",
            },
        },
    },
}

M.ListObjectChildrenOutput = {
    type = "structure",
    members = {
        Children = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListObjectParentPathsInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListObjectParentPathsOutput = {
    type = "structure",
    members = {
        PathToObjectIdentifiersList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.CannotListParentOfRootException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListObjectParentsInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        ConsistencyLevel = {
            type = "string",
            traits = {
                http_header = "x-amz-consistency-level",
            },
        },
        IncludeAllLinksToEachParent = {
            type = "boolean",
        },
    },
}

M.ListObjectParentsOutput = {
    type = "structure",
    members = {
        Parents = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        NextToken = {
            type = "string",
        },
        ParentLinks = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListObjectPoliciesInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        ConsistencyLevel = {
            type = "string",
            traits = {
                http_header = "x-amz-consistency-level",
            },
        },
    },
}

M.ListObjectPoliciesOutput = {
    type = "structure",
    members = {
        AttachedPolicyIds = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOutgoingTypedLinksInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        FilterAttributeRanges = {
            type = "list",
            member_type = "structure",
        },
        FilterTypedLink = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        ConsistencyLevel = {
            type = "string",
        },
    },
}

M.ListOutgoingTypedLinksOutput = {
    type = "structure",
    members = {
        TypedLinkSpecifiers = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPolicyAttachmentsInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        PolicyReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        ConsistencyLevel = {
            type = "string",
            traits = {
                http_header = "x-amz-consistency-level",
            },
        },
    },
}

M.ListPolicyAttachmentsOutput = {
    type = "structure",
    members = {
        ObjectIdentifiers = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPublishedSchemaArnsInput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListPublishedSchemaArnsOutput = {
    type = "structure",
    members = {
        SchemaArns = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidTaggingRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTypedLinkFacetAttributesInput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListTypedLinkFacetAttributesOutput = {
    type = "structure",
    members = {
        Attributes = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTypedLinkFacetNamesInput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListTypedLinkFacetNamesOutput = {
    type = "structure",
    members = {
        FacetNames = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.LookupPolicyInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.LookupPolicyOutput = {
    type = "structure",
    members = {
        PolicyToPathList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PublishSchemaInput = {
    type = "structure",
    members = {
        DevelopmentSchemaArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        Version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MinorVersion = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.PublishSchemaOutput = {
    type = "structure",
    members = {
        PublishedSchemaArn = {
            type = "string",
        },
    },
}

M.SchemaAlreadyPublishedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidSchemaDocException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PutSchemaFromJsonInput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        Document = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutSchemaFromJsonOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.RemoveFacetFromObjectInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        SchemaFacet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveFacetFromObjectOutput = {
    type = "structure",
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.InvalidFacetUpdateException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.FacetAttributeUpdate = {
    type = "structure",
    members = {
        Attribute = {
            type = "structure",
        },
        Action = {
            type = "string",
        },
    },
}

M.UpdateFacetInput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeUpdates = {
            type = "list",
            member_type = "structure",
        },
        ObjectType = {
            type = "string",
        },
    },
}

M.UpdateFacetOutput = {
    type = "structure",
}

M.UpdateLinkAttributesInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        TypedLinkSpecifier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AttributeUpdates = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateLinkAttributesOutput = {
    type = "structure",
}

M.UpdateObjectAttributesInput = {
    type = "structure",
    members = {
        DirectoryArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        ObjectReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AttributeUpdates = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateObjectAttributesOutput = {
    type = "structure",
    members = {
        ObjectIdentifier = {
            type = "string",
        },
    },
}

M.UpdateSchemaInput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSchemaOutput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
        },
    },
}

M.TypedLinkFacetAttributeUpdate = {
    type = "structure",
    members = {
        Attribute = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTypedLinkFacetInput = {
    type = "structure",
    members = {
        SchemaArn = {
            type = "string",
            traits = {
                http_header = "x-amz-data-partition",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeUpdates = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        IdentityAttributeOrder = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTypedLinkFacetOutput = {
    type = "structure",
}

M.IncompatibleSchemaException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpgradeAppliedSchemaInput = {
    type = "structure",
    members = {
        PublishedSchemaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DirectoryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.UpgradeAppliedSchemaOutput = {
    type = "structure",
    members = {
        UpgradedSchemaArn = {
            type = "string",
        },
        DirectoryArn = {
            type = "string",
        },
    },
}

M.UpgradePublishedSchemaInput = {
    type = "structure",
    members = {
        DevelopmentSchemaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PublishedSchemaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MinorVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DryRun = {
            type = "boolean",
        },
    },
}

M.UpgradePublishedSchemaOutput = {
    type = "structure",
    members = {
        UpgradedSchemaArn = {
            type = "string",
        },
    },
}

return M
