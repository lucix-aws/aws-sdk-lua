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
        Key = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AttributeKey }),
        Value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TypedAttributeValue }),
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
        SchemaFacet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SchemaFacet }),
        ObjectAttributeList = {
            type = "list",
            member = M.AttributeKeyAndValue,
        },
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
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
        ParentReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        ChildReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
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
        PolicyReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
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
        IndexReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        TargetReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
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
        Value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TypedAttributeValue }),
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
        SourceObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        TargetObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        TypedLinkFacet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TypedLinkSchemaAndFacetName }),
        Attributes = {
            type = "list",
            member = M.AttributeNameAndValue,
            traits = {
                required = true,
            },
        },
    },
}

M.TypedLinkSpecifier = {
    type = "structure",
    members = {
        TypedLinkFacet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TypedLinkSchemaAndFacetName }),
        SourceObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        TargetObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        IdentityAttributeValues = {
            type = "list",
            member = M.AttributeNameAndValue,
            traits = {
                required = true,
            },
        },
    },
}

M.AttachTypedLinkOutput = {
    type = "structure",
    members = {
        TypedLinkSpecifier = M.TypedLinkSpecifier,
    },
}

M.ConsistencyLevel = {
    SERIALIZABLE = "SERIALIZABLE",
    EVENTUAL = "EVENTUAL",
}

M.BatchGetLinkAttributes = {
    type = "structure",
    members = {
        TypedLinkSpecifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TypedLinkSpecifier }),
        AttributeNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetObjectAttributes = {
    type = "structure",
    members = {
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        SchemaFacet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SchemaFacet }),
        AttributeNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetObjectInformation = {
    type = "structure",
    members = {
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
    },
}

M.BatchListAttachedIndices = {
    type = "structure",
    members = {
        TargetReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
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
        StartValue = M.TypedAttributeValue,
        EndMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndValue = M.TypedAttributeValue,
    },
}

M.TypedLinkAttributeRange = {
    type = "structure",
    members = {
        AttributeName = {
            type = "string",
        },
        Range = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TypedAttributeValueRange }),
    },
}

M.BatchListIncomingTypedLinks = {
    type = "structure",
    members = {
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        FilterAttributeRanges = {
            type = "list",
            member = M.TypedLinkAttributeRange,
        },
        FilterTypedLink = M.TypedLinkSchemaAndFacetName,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ObjectAttributeRange = {
    type = "structure",
    members = {
        AttributeKey = M.AttributeKey,
        Range = M.TypedAttributeValueRange,
    },
}

M.BatchListIndex = {
    type = "structure",
    members = {
        RangesOnIndexedValues = {
            type = "list",
            member = M.ObjectAttributeRange,
        },
        IndexReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.BatchListObjectAttributes = {
    type = "structure",
    members = {
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        FacetFilter = M.SchemaFacet,
    },
}

M.BatchListObjectChildren = {
    type = "structure",
    members = {
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.BatchListObjectParentPaths = {
    type = "structure",
    members = {
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.BatchListObjectParents = {
    type = "structure",
    members = {
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.BatchListObjectPolicies = {
    type = "structure",
    members = {
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.BatchListOutgoingTypedLinks = {
    type = "structure",
    members = {
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        FilterAttributeRanges = {
            type = "list",
            member = M.TypedLinkAttributeRange,
        },
        FilterTypedLink = M.TypedLinkSchemaAndFacetName,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.BatchListPolicyAttachments = {
    type = "structure",
    members = {
        PolicyReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.BatchLookupPolicy = {
    type = "structure",
    members = {
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.BatchReadOperation = {
    type = "structure",
    members = {
        ListObjectAttributes = M.BatchListObjectAttributes,
        ListObjectChildren = M.BatchListObjectChildren,
        ListAttachedIndices = M.BatchListAttachedIndices,
        ListObjectParentPaths = M.BatchListObjectParentPaths,
        GetObjectInformation = M.BatchGetObjectInformation,
        GetObjectAttributes = M.BatchGetObjectAttributes,
        ListObjectParents = M.BatchListObjectParents,
        ListObjectPolicies = M.BatchListObjectPolicies,
        ListPolicyAttachments = M.BatchListPolicyAttachments,
        LookupPolicy = M.BatchLookupPolicy,
        ListIndex = M.BatchListIndex,
        ListOutgoingTypedLinks = M.BatchListOutgoingTypedLinks,
        ListIncomingTypedLinks = M.BatchListIncomingTypedLinks,
        GetLinkAttributes = M.BatchGetLinkAttributes,
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
            member = M.BatchReadOperation,
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
            member = M.AttributeKeyAndValue,
        },
    },
}

M.BatchGetObjectAttributesResponse = {
    type = "structure",
    members = {
        Attributes = {
            type = "list",
            member = M.AttributeKeyAndValue,
        },
    },
}

M.BatchGetObjectInformationResponse = {
    type = "structure",
    members = {
        SchemaFacets = {
            type = "list",
            member = M.SchemaFacet,
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
            member = M.AttributeKeyAndValue,
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
            member = M.IndexAttachment,
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
            member = M.TypedLinkSpecifier,
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
            member = M.IndexAttachment,
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
            member = M.AttributeKeyAndValue,
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
            key = { type = "string" },
            value = { type = "string" },
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
            member = { type = "string" },
        },
    },
}

M.BatchListObjectParentPathsResponse = {
    type = "structure",
    members = {
        PathToObjectIdentifiersList = {
            type = "list",
            member = M.PathToObjectIdentifiers,
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
            member = M.ObjectIdentifierAndLinkNameTuple,
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
            member = { type = "string" },
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
            member = M.TypedLinkSpecifier,
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
            member = { type = "string" },
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
            member = M.PolicyAttachment,
        },
    },
}

M.BatchLookupPolicyResponse = {
    type = "structure",
    members = {
        PolicyToPathList = {
            type = "list",
            member = M.PolicyToPath,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.BatchReadSuccessfulResponse = {
    type = "structure",
    members = {
        ListObjectAttributes = M.BatchListObjectAttributesResponse,
        ListObjectChildren = M.BatchListObjectChildrenResponse,
        GetObjectInformation = M.BatchGetObjectInformationResponse,
        GetObjectAttributes = M.BatchGetObjectAttributesResponse,
        ListAttachedIndices = M.BatchListAttachedIndicesResponse,
        ListObjectParentPaths = M.BatchListObjectParentPathsResponse,
        ListObjectPolicies = M.BatchListObjectPoliciesResponse,
        ListPolicyAttachments = M.BatchListPolicyAttachmentsResponse,
        LookupPolicy = M.BatchLookupPolicyResponse,
        ListIndex = M.BatchListIndexResponse,
        ListOutgoingTypedLinks = M.BatchListOutgoingTypedLinksResponse,
        ListIncomingTypedLinks = M.BatchListIncomingTypedLinksResponse,
        GetLinkAttributes = M.BatchGetLinkAttributesResponse,
        ListObjectParents = M.BatchListObjectParentsResponse,
    },
}

M.BatchReadOperationResponse = {
    type = "structure",
    members = {
        SuccessfulResponse = M.BatchReadSuccessfulResponse,
        ExceptionResponse = M.BatchReadException,
    },
}

M.BatchReadOutput = {
    type = "structure",
    members = {
        Responses = {
            type = "list",
            member = M.BatchReadOperationResponse,
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
            type = "integer",
            traits = {
                default = 0,
            },
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
        SchemaFacet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SchemaFacet }),
        ObjectAttributeList = {
            type = "list",
            member = M.AttributeKeyAndValue,
            traits = {
                required = true,
            },
        },
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
    },
}

M.BatchAttachObject = {
    type = "structure",
    members = {
        ParentReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        ChildReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
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
        PolicyReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
    },
}

M.BatchAttachToIndex = {
    type = "structure",
    members = {
        IndexReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        TargetReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
    },
}

M.BatchAttachTypedLink = {
    type = "structure",
    members = {
        SourceObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        TargetObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        TypedLinkFacet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TypedLinkSchemaAndFacetName }),
        Attributes = {
            type = "list",
            member = M.AttributeNameAndValue,
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
            member = M.AttributeKey,
            traits = {
                required = true,
            },
        },
        IsUnique = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        ParentReference = M.ObjectReference,
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
            member = M.SchemaFacet,
            traits = {
                required = true,
            },
        },
        ObjectAttributeList = {
            type = "list",
            member = M.AttributeKeyAndValue,
            traits = {
                required = true,
            },
        },
        ParentReference = M.ObjectReference,
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
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
    },
}

M.BatchDetachFromIndex = {
    type = "structure",
    members = {
        IndexReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        TargetReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
    },
}

M.BatchDetachObject = {
    type = "structure",
    members = {
        ParentReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
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
        PolicyReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
    },
}

M.BatchDetachTypedLink = {
    type = "structure",
    members = {
        TypedLinkSpecifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TypedLinkSpecifier }),
    },
}

M.BatchRemoveFacetFromObject = {
    type = "structure",
    members = {
        SchemaFacet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SchemaFacet }),
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
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
        AttributeUpdateValue = M.TypedAttributeValue,
    },
}

M.LinkAttributeUpdate = {
    type = "structure",
    members = {
        AttributeKey = M.AttributeKey,
        AttributeAction = M.LinkAttributeAction,
    },
}

M.BatchUpdateLinkAttributes = {
    type = "structure",
    members = {
        TypedLinkSpecifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TypedLinkSpecifier }),
        AttributeUpdates = {
            type = "list",
            member = M.LinkAttributeUpdate,
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
        ObjectAttributeUpdateValue = M.TypedAttributeValue,
    },
}

M.ObjectAttributeUpdate = {
    type = "structure",
    members = {
        ObjectAttributeKey = M.AttributeKey,
        ObjectAttributeAction = M.ObjectAttributeAction,
    },
}

M.BatchUpdateObjectAttributes = {
    type = "structure",
    members = {
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        AttributeUpdates = {
            type = "list",
            member = M.ObjectAttributeUpdate,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchWriteOperation = {
    type = "structure",
    members = {
        CreateObject = M.BatchCreateObject,
        AttachObject = M.BatchAttachObject,
        DetachObject = M.BatchDetachObject,
        UpdateObjectAttributes = M.BatchUpdateObjectAttributes,
        DeleteObject = M.BatchDeleteObject,
        AddFacetToObject = M.BatchAddFacetToObject,
        RemoveFacetFromObject = M.BatchRemoveFacetFromObject,
        AttachPolicy = M.BatchAttachPolicy,
        DetachPolicy = M.BatchDetachPolicy,
        CreateIndex = M.BatchCreateIndex,
        AttachToIndex = M.BatchAttachToIndex,
        DetachFromIndex = M.BatchDetachFromIndex,
        AttachTypedLink = M.BatchAttachTypedLink,
        DetachTypedLink = M.BatchDetachTypedLink,
        UpdateLinkAttributes = M.BatchUpdateLinkAttributes,
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
            member = M.BatchWriteOperation,
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
        TypedLinkSpecifier = M.TypedLinkSpecifier,
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
        CreateObject = M.BatchCreateObjectResponse,
        AttachObject = M.BatchAttachObjectResponse,
        DetachObject = M.BatchDetachObjectResponse,
        UpdateObjectAttributes = M.BatchUpdateObjectAttributesResponse,
        DeleteObject = M.BatchDeleteObjectResponse,
        AddFacetToObject = M.BatchAddFacetToObjectResponse,
        RemoveFacetFromObject = M.BatchRemoveFacetFromObjectResponse,
        AttachPolicy = M.BatchAttachPolicyResponse,
        DetachPolicy = M.BatchDetachPolicyResponse,
        CreateIndex = M.BatchCreateIndexResponse,
        AttachToIndex = M.BatchAttachToIndexResponse,
        DetachFromIndex = M.BatchDetachFromIndexResponse,
        AttachTypedLink = M.BatchAttachTypedLinkResponse,
        DetachTypedLink = M.BatchDetachTypedLinkResponse,
        UpdateLinkAttributes = M.BatchUpdateLinkAttributesResponse,
    },
}

M.BatchWriteOutput = {
    type = "structure",
    members = {
        Responses = {
            type = "list",
            member = M.BatchWriteOperationResponse,
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
            key = { type = "string" },
            value = { type = "string" },
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
        DefaultValue = M.TypedAttributeValue,
        IsImmutable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Rules = {
            type = "map",
            key = { type = "string" },
            value = M.Rule,
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
        AttributeDefinition = M.FacetAttributeDefinition,
        AttributeReference = M.FacetAttributeReference,
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
            member = M.FacetAttribute,
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
            member = M.AttributeKey,
            traits = {
                required = true,
            },
        },
        IsUnique = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        ParentReference = M.ObjectReference,
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
            member = M.SchemaFacet,
            traits = {
                required = true,
            },
        },
        ObjectAttributeList = {
            type = "list",
            member = M.AttributeKeyAndValue,
        },
        ParentReference = M.ObjectReference,
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
        DefaultValue = M.TypedAttributeValue,
        IsImmutable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Rules = {
            type = "map",
            key = { type = "string" },
            value = M.Rule,
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
            member = M.TypedLinkAttributeDefinition,
            traits = {
                required = true,
            },
        },
        IdentityAttributeOrder = {
            type = "list",
            member = { type = "string" },
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
        Facet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TypedLinkFacet }),
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
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
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
        IndexReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        TargetReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
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
        ParentReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
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
        PolicyReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
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
        TypedLinkSpecifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TypedLinkSpecifier }),
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
        Directory = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Directory }),
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
        Facet = M.Facet,
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
        TypedLinkSpecifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TypedLinkSpecifier }),
        AttributeNames = {
            type = "list",
            member = { type = "string" },
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
            member = M.AttributeKeyAndValue,
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
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        ConsistencyLevel = {
            type = "string",
            traits = {
                http_header = "x-amz-consistency-level",
            },
        },
        SchemaFacet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SchemaFacet }),
        AttributeNames = {
            type = "list",
            member = { type = "string" },
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
            member = M.AttributeKeyAndValue,
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
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
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
            member = M.SchemaFacet,
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
            member = { type = "string" },
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
            type = "integer",
        },
    },
}

M.ListAppliedSchemaArnsOutput = {
    type = "structure",
    members = {
        SchemaArns = {
            type = "list",
            member = { type = "string" },
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
        TargetReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
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
            member = M.IndexAttachment,
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
            type = "integer",
        },
    },
}

M.ListDevelopmentSchemaArnsOutput = {
    type = "structure",
    members = {
        SchemaArns = {
            type = "list",
            member = { type = "string" },
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
            type = "integer",
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
            member = M.Directory,
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
            type = "integer",
        },
    },
}

M.ListFacetAttributesOutput = {
    type = "structure",
    members = {
        Attributes = {
            type = "list",
            member = M.FacetAttribute,
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
            type = "integer",
        },
    },
}

M.ListFacetNamesOutput = {
    type = "structure",
    members = {
        FacetNames = {
            type = "list",
            member = { type = "string" },
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
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        FilterAttributeRanges = {
            type = "list",
            member = M.TypedLinkAttributeRange,
        },
        FilterTypedLink = M.TypedLinkSchemaAndFacetName,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
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
            member = M.TypedLinkSpecifier,
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
            member = M.ObjectAttributeRange,
        },
        IndexReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        MaxResults = {
            type = "integer",
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
            member = M.IndexAttachment,
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
            type = "integer",
        },
    },
}

M.ListManagedSchemaArnsOutput = {
    type = "structure",
    members = {
        SchemaArns = {
            type = "list",
            member = { type = "string" },
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
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        ConsistencyLevel = {
            type = "string",
            traits = {
                http_header = "x-amz-consistency-level",
            },
        },
        FacetFilter = M.SchemaFacet,
    },
}

M.ListObjectAttributesOutput = {
    type = "structure",
    members = {
        Attributes = {
            type = "list",
            member = M.AttributeKeyAndValue,
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
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
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
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListObjectParentPathsOutput = {
    type = "structure",
    members = {
        PathToObjectIdentifiersList = {
            type = "list",
            member = M.PathToObjectIdentifiers,
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
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        ConsistencyLevel = {
            type = "string",
            traits = {
                http_header = "x-amz-consistency-level",
            },
        },
        IncludeAllLinksToEachParent = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ListObjectParentsOutput = {
    type = "structure",
    members = {
        Parents = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        ParentLinks = {
            type = "list",
            member = M.ObjectIdentifierAndLinkNameTuple,
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
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
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
            member = { type = "string" },
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
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        FilterAttributeRanges = {
            type = "list",
            member = M.TypedLinkAttributeRange,
        },
        FilterTypedLink = M.TypedLinkSchemaAndFacetName,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
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
            member = M.TypedLinkSpecifier,
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
        PolicyReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
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
            member = { type = "string" },
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
            type = "integer",
        },
    },
}

M.ListPublishedSchemaArnsOutput = {
    type = "structure",
    members = {
        SchemaArns = {
            type = "list",
            member = { type = "string" },
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
            type = "integer",
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
            member = M.Tag,
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
            type = "integer",
        },
    },
}

M.ListTypedLinkFacetAttributesOutput = {
    type = "structure",
    members = {
        Attributes = {
            type = "list",
            member = M.TypedLinkAttributeDefinition,
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
            type = "integer",
        },
    },
}

M.ListTypedLinkFacetNamesOutput = {
    type = "structure",
    members = {
        FacetNames = {
            type = "list",
            member = { type = "string" },
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
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.LookupPolicyOutput = {
    type = "structure",
    members = {
        PolicyToPathList = {
            type = "list",
            member = M.PolicyToPath,
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
        SchemaFacet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SchemaFacet }),
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
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
            member = M.Tag,
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
            member = { type = "string" },
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
        Attribute = M.FacetAttribute,
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
            member = M.FacetAttributeUpdate,
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
        TypedLinkSpecifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TypedLinkSpecifier }),
        AttributeUpdates = {
            type = "list",
            member = M.LinkAttributeUpdate,
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
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
        AttributeUpdates = {
            type = "list",
            member = M.ObjectAttributeUpdate,
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
        Attribute = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TypedLinkAttributeDefinition }),
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
            member = M.TypedLinkFacetAttributeUpdate,
            traits = {
                required = true,
            },
        },
        IdentityAttributeOrder = {
            type = "list",
            member = { type = "string" },
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
            traits = {
                default = false,
            },
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
            traits = {
                default = false,
            },
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
