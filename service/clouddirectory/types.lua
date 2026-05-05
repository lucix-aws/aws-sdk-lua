local M = {}

M.ConsistencyLevel = {
    SERIALIZABLE = "SERIALIZABLE",
    EVENTUAL = "EVENTUAL",
}

M.RangeMode = {
    FIRST = "FIRST",
    LAST = "LAST",
    LAST_BEFORE_MISSING_VALUES = "LAST_BEFORE_MISSING_VALUES",
    INCLUSIVE = "INCLUSIVE",
    EXCLUSIVE = "EXCLUSIVE",
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

M.UpdateActionType = {
    CREATE_OR_UPDATE = "CREATE_OR_UPDATE",
    DELETE = "DELETE",
}

M.RuleType = {
    BINARY_LENGTH = "BINARY_LENGTH",
    NUMBER_COMPARISON = "NUMBER_COMPARISON",
    STRING_FROM_SET = "STRING_FROM_SET",
    STRING_LENGTH = "STRING_LENGTH",
}

M.FacetAttributeType = {
    STRING = "STRING",
    BINARY = "BINARY",
    BOOLEAN = "BOOLEAN",
    NUMBER = "NUMBER",
    DATETIME = "DATETIME",
    VARIANT = "VARIANT",
}

M.RequiredAttributeBehavior = {
    REQUIRED_ALWAYS = "REQUIRED_ALWAYS",
    NOT_REQUIRED = "NOT_REQUIRED",
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

M.DirectoryState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    DELETED = "DELETED",
}

return M
