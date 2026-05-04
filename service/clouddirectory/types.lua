local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AttributeKey = {
    type = "structure",
    id = "AttributeKey",
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
    id = "TypedAttributeValue",
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
    id = "AttributeKeyAndValue",
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
    id = "ObjectReference",
    members = {
        Selector = {
            type = "string",
        },
    },
}

M.SchemaFacet = {
    type = "structure",
    id = "SchemaFacet",
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
    id = "AddFacetToObjectInput",
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
    id = "AddFacetToObjectOutput",
}

M.DirectoryNotEnabledException = {
    type = "structure",
    id = "DirectoryNotEnabledException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.FacetValidationException = {
    type = "structure",
    id = "FacetValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalServiceException = {
    type = "structure",
    id = "InternalServiceException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidArnException = {
    type = "structure",
    id = "InvalidArnException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RetryableConflictException = {
    type = "structure",
    id = "RetryableConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ApplySchemaInput = {
    type = "structure",
    id = "ApplySchemaInput",
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
    id = "ApplySchemaOutput",
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
    id = "InvalidAttachmentException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SchemaAlreadyExistsException = {
    type = "structure",
    id = "SchemaAlreadyExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AttachObjectInput = {
    type = "structure",
    id = "AttachObjectInput",
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
    id = "AttachObjectOutput",
    members = {
        AttachedObjectIdentifier = {
            type = "string",
        },
    },
}

M.LinkNameAlreadyInUseException = {
    type = "structure",
    id = "LinkNameAlreadyInUseException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AttachPolicyInput = {
    type = "structure",
    id = "AttachPolicyInput",
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
    id = "AttachPolicyOutput",
}

M.NotPolicyException = {
    type = "structure",
    id = "NotPolicyException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AttachToIndexInput = {
    type = "structure",
    id = "AttachToIndexInput",
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
    id = "AttachToIndexOutput",
    members = {
        AttachedObjectIdentifier = {
            type = "string",
        },
    },
}

M.IndexedAttributeMissingException = {
    type = "structure",
    id = "IndexedAttributeMissingException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NotIndexException = {
    type = "structure",
    id = "NotIndexException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AttributeNameAndValue = {
    type = "structure",
    id = "AttributeNameAndValue",
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
    id = "TypedLinkSchemaAndFacetName",
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
    id = "AttachTypedLinkInput",
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
    id = "TypedLinkSpecifier",
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
    id = "AttachTypedLinkOutput",
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
    id = "BatchGetLinkAttributes",
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
    id = "BatchGetObjectAttributes",
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
    id = "BatchGetObjectInformation",
    members = {
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
    },
}

M.BatchListAttachedIndices = {
    type = "structure",
    id = "BatchListAttachedIndices",
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
    id = "TypedAttributeValueRange",
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
    id = "TypedLinkAttributeRange",
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
    id = "BatchListIncomingTypedLinks",
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
    id = "ObjectAttributeRange",
    members = {
        AttributeKey = M.AttributeKey,
        Range = M.TypedAttributeValueRange,
    },
}

M.BatchListIndex = {
    type = "structure",
    id = "BatchListIndex",
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
    id = "BatchListObjectAttributes",
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
    id = "BatchListObjectChildren",
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
    id = "BatchListObjectParentPaths",
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
    id = "BatchListObjectParents",
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
    id = "BatchListObjectPolicies",
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
    id = "BatchListOutgoingTypedLinks",
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
    id = "BatchListPolicyAttachments",
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
    id = "BatchLookupPolicy",
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
    id = "BatchReadOperation",
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
    id = "BatchReadInput",
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
    id = "BatchReadException",
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
    id = "BatchGetLinkAttributesResponse",
    members = {
        Attributes = {
            type = "list",
            member = M.AttributeKeyAndValue,
        },
    },
}

M.BatchGetObjectAttributesResponse = {
    type = "structure",
    id = "BatchGetObjectAttributesResponse",
    members = {
        Attributes = {
            type = "list",
            member = M.AttributeKeyAndValue,
        },
    },
}

M.BatchGetObjectInformationResponse = {
    type = "structure",
    id = "BatchGetObjectInformationResponse",
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
    id = "IndexAttachment",
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
    id = "BatchListAttachedIndicesResponse",
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
    id = "BatchListIncomingTypedLinksResponse",
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
    id = "BatchListIndexResponse",
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
    id = "BatchListObjectAttributesResponse",
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
    id = "BatchListObjectChildrenResponse",
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
    id = "PathToObjectIdentifiers",
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
    id = "BatchListObjectParentPathsResponse",
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
    id = "ObjectIdentifierAndLinkNameTuple",
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
    id = "BatchListObjectParentsResponse",
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
    id = "BatchListObjectPoliciesResponse",
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
    id = "BatchListOutgoingTypedLinksResponse",
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
    id = "BatchListPolicyAttachmentsResponse",
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
    id = "PolicyAttachment",
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
    id = "PolicyToPath",
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
    id = "BatchLookupPolicyResponse",
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
    id = "BatchReadSuccessfulResponse",
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
    id = "BatchReadOperationResponse",
    members = {
        SuccessfulResponse = M.BatchReadSuccessfulResponse,
        ExceptionResponse = M.BatchReadException,
    },
}

M.BatchReadOutput = {
    type = "structure",
    id = "BatchReadOutput",
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
    id = "BatchWriteException",
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
    id = "BatchAddFacetToObject",
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
    id = "BatchAttachObject",
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
    id = "BatchAttachPolicy",
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
    id = "BatchAttachToIndex",
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
    id = "BatchAttachTypedLink",
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
    id = "BatchCreateIndex",
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
    id = "BatchCreateObject",
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
    id = "BatchDeleteObject",
    members = {
        ObjectReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectReference }),
    },
}

M.BatchDetachFromIndex = {
    type = "structure",
    id = "BatchDetachFromIndex",
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
    id = "BatchDetachObject",
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
    id = "BatchDetachPolicy",
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
    id = "BatchDetachTypedLink",
    members = {
        TypedLinkSpecifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TypedLinkSpecifier }),
    },
}

M.BatchRemoveFacetFromObject = {
    type = "structure",
    id = "BatchRemoveFacetFromObject",
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
    id = "LinkAttributeAction",
    members = {
        AttributeActionType = {
            type = "string",
        },
        AttributeUpdateValue = M.TypedAttributeValue,
    },
}

M.LinkAttributeUpdate = {
    type = "structure",
    id = "LinkAttributeUpdate",
    members = {
        AttributeKey = M.AttributeKey,
        AttributeAction = M.LinkAttributeAction,
    },
}

M.BatchUpdateLinkAttributes = {
    type = "structure",
    id = "BatchUpdateLinkAttributes",
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
    id = "ObjectAttributeAction",
    members = {
        ObjectAttributeActionType = {
            type = "string",
        },
        ObjectAttributeUpdateValue = M.TypedAttributeValue,
    },
}

M.ObjectAttributeUpdate = {
    type = "structure",
    id = "ObjectAttributeUpdate",
    members = {
        ObjectAttributeKey = M.AttributeKey,
        ObjectAttributeAction = M.ObjectAttributeAction,
    },
}

M.BatchUpdateObjectAttributes = {
    type = "structure",
    id = "BatchUpdateObjectAttributes",
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
    id = "BatchWriteOperation",
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
    id = "BatchWriteInput",
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
    id = "BatchAddFacetToObjectResponse",
}

M.BatchAttachObjectResponse = {
    type = "structure",
    id = "BatchAttachObjectResponse",
    members = {
        attachedObjectIdentifier = {
            type = "string",
        },
    },
}

M.BatchAttachPolicyResponse = {
    type = "structure",
    id = "BatchAttachPolicyResponse",
}

M.BatchAttachToIndexResponse = {
    type = "structure",
    id = "BatchAttachToIndexResponse",
    members = {
        AttachedObjectIdentifier = {
            type = "string",
        },
    },
}

M.BatchAttachTypedLinkResponse = {
    type = "structure",
    id = "BatchAttachTypedLinkResponse",
    members = {
        TypedLinkSpecifier = M.TypedLinkSpecifier,
    },
}

M.BatchCreateIndexResponse = {
    type = "structure",
    id = "BatchCreateIndexResponse",
    members = {
        ObjectIdentifier = {
            type = "string",
        },
    },
}

M.BatchCreateObjectResponse = {
    type = "structure",
    id = "BatchCreateObjectResponse",
    members = {
        ObjectIdentifier = {
            type = "string",
        },
    },
}

M.BatchDeleteObjectResponse = {
    type = "structure",
    id = "BatchDeleteObjectResponse",
}

M.BatchDetachFromIndexResponse = {
    type = "structure",
    id = "BatchDetachFromIndexResponse",
    members = {
        DetachedObjectIdentifier = {
            type = "string",
        },
    },
}

M.BatchDetachObjectResponse = {
    type = "structure",
    id = "BatchDetachObjectResponse",
    members = {
        detachedObjectIdentifier = {
            type = "string",
        },
    },
}

M.BatchDetachPolicyResponse = {
    type = "structure",
    id = "BatchDetachPolicyResponse",
}

M.BatchDetachTypedLinkResponse = {
    type = "structure",
    id = "BatchDetachTypedLinkResponse",
}

M.BatchRemoveFacetFromObjectResponse = {
    type = "structure",
    id = "BatchRemoveFacetFromObjectResponse",
}

M.BatchUpdateLinkAttributesResponse = {
    type = "structure",
    id = "BatchUpdateLinkAttributesResponse",
}

M.BatchUpdateObjectAttributesResponse = {
    type = "structure",
    id = "BatchUpdateObjectAttributesResponse",
    members = {
        ObjectIdentifier = {
            type = "string",
        },
    },
}

M.BatchWriteOperationResponse = {
    type = "structure",
    id = "BatchWriteOperationResponse",
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
    id = "BatchWriteOutput",
    members = {
        Responses = {
            type = "list",
            member = M.BatchWriteOperationResponse,
        },
    },
}

M.CreateDirectoryInput = {
    type = "structure",
    id = "CreateDirectoryInput",
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
    id = "CreateDirectoryOutput",
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
    id = "DirectoryAlreadyExistsException",
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
    id = "Rule",
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
    id = "FacetAttributeDefinition",
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
    id = "FacetAttributeReference",
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
    id = "FacetAttribute",
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
    id = "CreateFacetInput",
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
    id = "CreateFacetOutput",
}

M.FacetAlreadyExistsException = {
    type = "structure",
    id = "FacetAlreadyExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidRuleException = {
    type = "structure",
    id = "InvalidRuleException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateIndexInput = {
    type = "structure",
    id = "CreateIndexInput",
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
    id = "CreateIndexOutput",
    members = {
        ObjectIdentifier = {
            type = "string",
        },
    },
}

M.UnsupportedIndexTypeException = {
    type = "structure",
    id = "UnsupportedIndexTypeException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateObjectInput = {
    type = "structure",
    id = "CreateObjectInput",
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
    id = "CreateObjectOutput",
    members = {
        ObjectIdentifier = {
            type = "string",
        },
    },
}

M.CreateSchemaInput = {
    type = "structure",
    id = "CreateSchemaInput",
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
    id = "CreateSchemaOutput",
    members = {
        SchemaArn = {
            type = "string",
        },
    },
}

M.TypedLinkAttributeDefinition = {
    type = "structure",
    id = "TypedLinkAttributeDefinition",
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
    id = "TypedLinkFacet",
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
    id = "CreateTypedLinkFacetInput",
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
    id = "CreateTypedLinkFacetOutput",
}

M.DeleteDirectoryInput = {
    type = "structure",
    id = "DeleteDirectoryInput",
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
    id = "DeleteDirectoryOutput",
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
    id = "DirectoryDeletedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DirectoryNotDisabledException = {
    type = "structure",
    id = "DirectoryNotDisabledException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteFacetInput = {
    type = "structure",
    id = "DeleteFacetInput",
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
    id = "DeleteFacetOutput",
}

M.FacetInUseException = {
    type = "structure",
    id = "FacetInUseException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.FacetNotFoundException = {
    type = "structure",
    id = "FacetNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteObjectInput = {
    type = "structure",
    id = "DeleteObjectInput",
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
    id = "DeleteObjectOutput",
}

M.ObjectNotDetachedException = {
    type = "structure",
    id = "ObjectNotDetachedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteSchemaInput = {
    type = "structure",
    id = "DeleteSchemaInput",
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
    id = "DeleteSchemaOutput",
    members = {
        SchemaArn = {
            type = "string",
        },
    },
}

M.StillContainsLinksException = {
    type = "structure",
    id = "StillContainsLinksException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteTypedLinkFacetInput = {
    type = "structure",
    id = "DeleteTypedLinkFacetInput",
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
    id = "DeleteTypedLinkFacetOutput",
}

M.DetachFromIndexInput = {
    type = "structure",
    id = "DetachFromIndexInput",
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
    id = "DetachFromIndexOutput",
    members = {
        DetachedObjectIdentifier = {
            type = "string",
        },
    },
}

M.ObjectAlreadyDetachedException = {
    type = "structure",
    id = "ObjectAlreadyDetachedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DetachObjectInput = {
    type = "structure",
    id = "DetachObjectInput",
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
    id = "DetachObjectOutput",
    members = {
        DetachedObjectIdentifier = {
            type = "string",
        },
    },
}

M.NotNodeException = {
    type = "structure",
    id = "NotNodeException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DetachPolicyInput = {
    type = "structure",
    id = "DetachPolicyInput",
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
    id = "DetachPolicyOutput",
}

M.DetachTypedLinkInput = {
    type = "structure",
    id = "DetachTypedLinkInput",
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
    id = "DetachTypedLinkOutput",
}

M.DisableDirectoryInput = {
    type = "structure",
    id = "DisableDirectoryInput",
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
    id = "DisableDirectoryOutput",
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
    id = "EnableDirectoryInput",
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
    id = "EnableDirectoryOutput",
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
    id = "GetAppliedSchemaVersionInput",
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
    id = "GetAppliedSchemaVersionOutput",
    members = {
        AppliedSchemaArn = {
            type = "string",
        },
    },
}

M.GetDirectoryInput = {
    type = "structure",
    id = "GetDirectoryInput",
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
    id = "Directory",
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
    id = "GetDirectoryOutput",
    members = {
        Directory = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Directory }),
    },
}

M.GetFacetInput = {
    type = "structure",
    id = "GetFacetInput",
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
    id = "Facet",
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
    id = "GetFacetOutput",
    members = {
        Facet = M.Facet,
    },
}

M.GetLinkAttributesInput = {
    type = "structure",
    id = "GetLinkAttributesInput",
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
    id = "GetLinkAttributesOutput",
    members = {
        Attributes = {
            type = "list",
            member = M.AttributeKeyAndValue,
        },
    },
}

M.GetObjectAttributesInput = {
    type = "structure",
    id = "GetObjectAttributesInput",
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
    id = "GetObjectAttributesOutput",
    members = {
        Attributes = {
            type = "list",
            member = M.AttributeKeyAndValue,
        },
    },
}

M.GetObjectInformationInput = {
    type = "structure",
    id = "GetObjectInformationInput",
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
    id = "GetObjectInformationOutput",
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
    id = "GetSchemaAsJsonInput",
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
    id = "GetSchemaAsJsonOutput",
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
    id = "GetTypedLinkFacetInformationInput",
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
    id = "GetTypedLinkFacetInformationOutput",
    members = {
        IdentityAttributeOrder = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    id = "InvalidNextTokenException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListAppliedSchemaArnsInput = {
    type = "structure",
    id = "ListAppliedSchemaArnsInput",
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
    id = "ListAppliedSchemaArnsOutput",
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
    id = "ListAttachedIndicesInput",
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
    id = "ListAttachedIndicesOutput",
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
    id = "ListDevelopmentSchemaArnsInput",
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
    id = "ListDevelopmentSchemaArnsOutput",
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
    id = "ListDirectoriesInput",
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
    id = "ListDirectoriesOutput",
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
    id = "ListFacetAttributesInput",
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
    id = "ListFacetAttributesOutput",
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
    id = "ListFacetNamesInput",
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
    id = "ListFacetNamesOutput",
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
    id = "ListIncomingTypedLinksInput",
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
    id = "ListIncomingTypedLinksOutput",
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
    id = "ListIndexInput",
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
    id = "ListIndexOutput",
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
    id = "ListManagedSchemaArnsInput",
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
    id = "ListManagedSchemaArnsOutput",
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
    id = "ListObjectAttributesInput",
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
    id = "ListObjectAttributesOutput",
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
    id = "ListObjectChildrenInput",
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
    id = "ListObjectChildrenOutput",
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
    id = "ListObjectParentPathsInput",
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
    id = "ListObjectParentPathsOutput",
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
    id = "CannotListParentOfRootException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListObjectParentsInput = {
    type = "structure",
    id = "ListObjectParentsInput",
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
    id = "ListObjectParentsOutput",
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
    id = "ListObjectPoliciesInput",
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
    id = "ListObjectPoliciesOutput",
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
    id = "ListOutgoingTypedLinksInput",
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
    id = "ListOutgoingTypedLinksOutput",
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
    id = "ListPolicyAttachmentsInput",
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
    id = "ListPolicyAttachmentsOutput",
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
    id = "ListPublishedSchemaArnsInput",
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
    id = "ListPublishedSchemaArnsOutput",
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
    id = "InvalidTaggingRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
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
    id = "Tag",
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
    id = "ListTagsForResourceOutput",
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
    id = "ListTypedLinkFacetAttributesInput",
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
    id = "ListTypedLinkFacetAttributesOutput",
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
    id = "ListTypedLinkFacetNamesInput",
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
    id = "ListTypedLinkFacetNamesOutput",
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
    id = "LookupPolicyInput",
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
    id = "LookupPolicyOutput",
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
    id = "PublishSchemaInput",
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
    id = "PublishSchemaOutput",
    members = {
        PublishedSchemaArn = {
            type = "string",
        },
    },
}

M.SchemaAlreadyPublishedException = {
    type = "structure",
    id = "SchemaAlreadyPublishedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidSchemaDocException = {
    type = "structure",
    id = "InvalidSchemaDocException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PutSchemaFromJsonInput = {
    type = "structure",
    id = "PutSchemaFromJsonInput",
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
    id = "PutSchemaFromJsonOutput",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.RemoveFacetFromObjectInput = {
    type = "structure",
    id = "RemoveFacetFromObjectInput",
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
    id = "RemoveFacetFromObjectOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

M.InvalidFacetUpdateException = {
    type = "structure",
    id = "InvalidFacetUpdateException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.FacetAttributeUpdate = {
    type = "structure",
    id = "FacetAttributeUpdate",
    members = {
        Attribute = M.FacetAttribute,
        Action = {
            type = "string",
        },
    },
}

M.UpdateFacetInput = {
    type = "structure",
    id = "UpdateFacetInput",
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
    id = "UpdateFacetOutput",
}

M.UpdateLinkAttributesInput = {
    type = "structure",
    id = "UpdateLinkAttributesInput",
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
    id = "UpdateLinkAttributesOutput",
}

M.UpdateObjectAttributesInput = {
    type = "structure",
    id = "UpdateObjectAttributesInput",
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
    id = "UpdateObjectAttributesOutput",
    members = {
        ObjectIdentifier = {
            type = "string",
        },
    },
}

M.UpdateSchemaInput = {
    type = "structure",
    id = "UpdateSchemaInput",
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
    id = "UpdateSchemaOutput",
    members = {
        SchemaArn = {
            type = "string",
        },
    },
}

M.TypedLinkFacetAttributeUpdate = {
    type = "structure",
    id = "TypedLinkFacetAttributeUpdate",
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
    id = "UpdateTypedLinkFacetInput",
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
    id = "UpdateTypedLinkFacetOutput",
}

M.IncompatibleSchemaException = {
    type = "structure",
    id = "IncompatibleSchemaException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpgradeAppliedSchemaInput = {
    type = "structure",
    id = "UpgradeAppliedSchemaInput",
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
    id = "UpgradeAppliedSchemaOutput",
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
    id = "UpgradePublishedSchemaInput",
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
    id = "UpgradePublishedSchemaOutput",
    members = {
        UpgradedSchemaArn = {
            type = "string",
        },
    },
}

return M
