local record AddFacetToObjectInput
    DirectoryArn: string
    SchemaFacet: SchemaFacet
    ObjectAttributeList: {AttributeKeyAndValue}
    ObjectReference: ObjectReference
end

local record AddFacetToObjectOutput
end

local record ApplySchemaInput
    PublishedSchemaArn: string
    DirectoryArn: string
end

local record ApplySchemaOutput
    AppliedSchemaArn: string
    DirectoryArn: string
end

local record AttachObjectInput
    DirectoryArn: string
    ParentReference: ObjectReference
    ChildReference: ObjectReference
    LinkName: string
end

local record AttachObjectOutput
    AttachedObjectIdentifier: string
end

local record AttachPolicyInput
    DirectoryArn: string
    PolicyReference: ObjectReference
    ObjectReference: ObjectReference
end

local record AttachPolicyOutput
end

local record AttachToIndexInput
    DirectoryArn: string
    IndexReference: ObjectReference
    TargetReference: ObjectReference
end

local record AttachToIndexOutput
    AttachedObjectIdentifier: string
end

local record AttachTypedLinkInput
    DirectoryArn: string
    SourceObjectReference: ObjectReference
    TargetObjectReference: ObjectReference
    TypedLinkFacet: TypedLinkSchemaAndFacetName
    Attributes: {AttributeNameAndValue}
end

local record AttachTypedLinkOutput
    TypedLinkSpecifier: TypedLinkSpecifier
end

local record BatchReadInput
    DirectoryArn: string
    Operations: {BatchReadOperation}
    ConsistencyLevel: string
end

local record BatchReadOutput
    Responses: {BatchReadOperationResponse}
end

local record BatchWriteInput
    DirectoryArn: string
    Operations: {BatchWriteOperation}
end

local record BatchWriteOutput
    Responses: {BatchWriteOperationResponse}
end

local record CreateDirectoryInput
    Name: string
    SchemaArn: string
end

local record CreateDirectoryOutput
    DirectoryArn: string
    Name: string
    ObjectIdentifier: string
    AppliedSchemaArn: string
end

local record CreateFacetInput
    SchemaArn: string
    Name: string
    Attributes: {FacetAttribute}
    ObjectType: string
    FacetStyle: string
end

local record CreateFacetOutput
end

local record CreateIndexInput
    DirectoryArn: string
    OrderedIndexedAttributeList: {AttributeKey}
    IsUnique: boolean
    ParentReference: ObjectReference
    LinkName: string
end

local record CreateIndexOutput
    ObjectIdentifier: string
end

local record CreateObjectInput
    DirectoryArn: string
    SchemaFacets: {SchemaFacet}
    ObjectAttributeList: {AttributeKeyAndValue}
    ParentReference: ObjectReference
    LinkName: string
end

local record CreateObjectOutput
    ObjectIdentifier: string
end

local record CreateSchemaInput
    Name: string
end

local record CreateSchemaOutput
    SchemaArn: string
end

local record CreateTypedLinkFacetInput
    SchemaArn: string
    Facet: TypedLinkFacet
end

local record CreateTypedLinkFacetOutput
end

local record DeleteDirectoryInput
    DirectoryArn: string
end

local record DeleteDirectoryOutput
    DirectoryArn: string
end

local record DeleteFacetInput
    SchemaArn: string
    Name: string
end

local record DeleteFacetOutput
end

local record DeleteObjectInput
    DirectoryArn: string
    ObjectReference: ObjectReference
end

local record DeleteObjectOutput
end

local record DeleteSchemaInput
    SchemaArn: string
end

local record DeleteSchemaOutput
    SchemaArn: string
end

local record DeleteTypedLinkFacetInput
    SchemaArn: string
    Name: string
end

local record DeleteTypedLinkFacetOutput
end

local record DetachFromIndexInput
    DirectoryArn: string
    IndexReference: ObjectReference
    TargetReference: ObjectReference
end

local record DetachFromIndexOutput
    DetachedObjectIdentifier: string
end

local record DetachObjectInput
    DirectoryArn: string
    ParentReference: ObjectReference
    LinkName: string
end

local record DetachObjectOutput
    DetachedObjectIdentifier: string
end

local record DetachPolicyInput
    DirectoryArn: string
    PolicyReference: ObjectReference
    ObjectReference: ObjectReference
end

local record DetachPolicyOutput
end

local record DetachTypedLinkInput
    DirectoryArn: string
    TypedLinkSpecifier: TypedLinkSpecifier
end

local record DetachTypedLinkOutput
end

local record DisableDirectoryInput
    DirectoryArn: string
end

local record DisableDirectoryOutput
    DirectoryArn: string
end

local record EnableDirectoryInput
    DirectoryArn: string
end

local record EnableDirectoryOutput
    DirectoryArn: string
end

local record GetAppliedSchemaVersionInput
    SchemaArn: string
end

local record GetAppliedSchemaVersionOutput
    AppliedSchemaArn: string
end

local record GetDirectoryInput
    DirectoryArn: string
end

local record GetDirectoryOutput
    Directory: Directory
end

local record GetFacetInput
    SchemaArn: string
    Name: string
end

local record GetFacetOutput
    Facet: Facet
end

local record GetLinkAttributesInput
    DirectoryArn: string
    TypedLinkSpecifier: TypedLinkSpecifier
    AttributeNames: {string}
    ConsistencyLevel: string
end

local record GetLinkAttributesOutput
    Attributes: {AttributeKeyAndValue}
end

local record GetObjectAttributesInput
    DirectoryArn: string
    ObjectReference: ObjectReference
    ConsistencyLevel: string
    SchemaFacet: SchemaFacet
    AttributeNames: {string}
end

local record GetObjectAttributesOutput
    Attributes: {AttributeKeyAndValue}
end

local record GetObjectInformationInput
    DirectoryArn: string
    ObjectReference: ObjectReference
    ConsistencyLevel: string
end

local record GetObjectInformationOutput
    SchemaFacets: {SchemaFacet}
    ObjectIdentifier: string
end

local record GetSchemaAsJsonInput
    SchemaArn: string
end

local record GetSchemaAsJsonOutput
    Name: string
    Document: string
end

local record GetTypedLinkFacetInformationInput
    SchemaArn: string
    Name: string
end

local record GetTypedLinkFacetInformationOutput
    IdentityAttributeOrder: {string}
end

local record ListAppliedSchemaArnsInput
    DirectoryArn: string
    SchemaArn: string
    NextToken: string
    MaxResults: number
end

local record ListAppliedSchemaArnsOutput
    SchemaArns: {string}
    NextToken: string
end

local record ListAttachedIndicesInput
    DirectoryArn: string
    TargetReference: ObjectReference
    NextToken: string
    MaxResults: number
    ConsistencyLevel: string
end

local record ListAttachedIndicesOutput
    IndexAttachments: {IndexAttachment}
    NextToken: string
end

local record ListDevelopmentSchemaArnsInput
    NextToken: string
    MaxResults: number
end

local record ListDevelopmentSchemaArnsOutput
    SchemaArns: {string}
    NextToken: string
end

local record ListDirectoriesInput
    NextToken: string
    MaxResults: number
    state: string
end

local record ListDirectoriesOutput
    Directories: {Directory}
    NextToken: string
end

local record ListFacetAttributesInput
    SchemaArn: string
    Name: string
    NextToken: string
    MaxResults: number
end

local record ListFacetAttributesOutput
    Attributes: {FacetAttribute}
    NextToken: string
end

local record ListFacetNamesInput
    SchemaArn: string
    NextToken: string
    MaxResults: number
end

local record ListFacetNamesOutput
    FacetNames: {string}
    NextToken: string
end

local record ListIncomingTypedLinksInput
    DirectoryArn: string
    ObjectReference: ObjectReference
    FilterAttributeRanges: {TypedLinkAttributeRange}
    FilterTypedLink: TypedLinkSchemaAndFacetName
    NextToken: string
    MaxResults: number
    ConsistencyLevel: string
end

local record ListIncomingTypedLinksOutput
    LinkSpecifiers: {TypedLinkSpecifier}
    NextToken: string
end

local record ListIndexInput
    DirectoryArn: string
    RangesOnIndexedValues: {ObjectAttributeRange}
    IndexReference: ObjectReference
    MaxResults: number
    NextToken: string
    ConsistencyLevel: string
end

local record ListIndexOutput
    IndexAttachments: {IndexAttachment}
    NextToken: string
end

local record ListManagedSchemaArnsInput
    SchemaArn: string
    NextToken: string
    MaxResults: number
end

local record ListManagedSchemaArnsOutput
    SchemaArns: {string}
    NextToken: string
end

local record ListObjectAttributesInput
    DirectoryArn: string
    ObjectReference: ObjectReference
    NextToken: string
    MaxResults: number
    ConsistencyLevel: string
    FacetFilter: SchemaFacet
end

local record ListObjectAttributesOutput
    Attributes: {AttributeKeyAndValue}
    NextToken: string
end

local record ListObjectChildrenInput
    DirectoryArn: string
    ObjectReference: ObjectReference
    NextToken: string
    MaxResults: number
    ConsistencyLevel: string
end

local record ListObjectChildrenOutput
    Children: {string : string}
    NextToken: string
end

local record ListObjectParentPathsInput
    DirectoryArn: string
    ObjectReference: ObjectReference
    NextToken: string
    MaxResults: number
end

local record ListObjectParentPathsOutput
    PathToObjectIdentifiersList: {PathToObjectIdentifiers}
    NextToken: string
end

local record ListObjectParentsInput
    DirectoryArn: string
    ObjectReference: ObjectReference
    NextToken: string
    MaxResults: number
    ConsistencyLevel: string
    IncludeAllLinksToEachParent: boolean
end

local record ListObjectParentsOutput
    Parents: {string : string}
    NextToken: string
    ParentLinks: {ObjectIdentifierAndLinkNameTuple}
end

local record ListObjectPoliciesInput
    DirectoryArn: string
    ObjectReference: ObjectReference
    NextToken: string
    MaxResults: number
    ConsistencyLevel: string
end

local record ListObjectPoliciesOutput
    AttachedPolicyIds: {string}
    NextToken: string
end

local record ListOutgoingTypedLinksInput
    DirectoryArn: string
    ObjectReference: ObjectReference
    FilterAttributeRanges: {TypedLinkAttributeRange}
    FilterTypedLink: TypedLinkSchemaAndFacetName
    NextToken: string
    MaxResults: number
    ConsistencyLevel: string
end

local record ListOutgoingTypedLinksOutput
    TypedLinkSpecifiers: {TypedLinkSpecifier}
    NextToken: string
end

local record ListPolicyAttachmentsInput
    DirectoryArn: string
    PolicyReference: ObjectReference
    NextToken: string
    MaxResults: number
    ConsistencyLevel: string
end

local record ListPolicyAttachmentsOutput
    ObjectIdentifiers: {string}
    NextToken: string
end

local record ListPublishedSchemaArnsInput
    SchemaArn: string
    NextToken: string
    MaxResults: number
end

local record ListPublishedSchemaArnsOutput
    SchemaArns: {string}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
    NextToken: string
    MaxResults: number
end

local record ListTagsForResourceOutput
    Tags: {Tag}
    NextToken: string
end

local record ListTypedLinkFacetAttributesInput
    SchemaArn: string
    Name: string
    NextToken: string
    MaxResults: number
end

local record ListTypedLinkFacetAttributesOutput
    Attributes: {TypedLinkAttributeDefinition}
    NextToken: string
end

local record ListTypedLinkFacetNamesInput
    SchemaArn: string
    NextToken: string
    MaxResults: number
end

local record ListTypedLinkFacetNamesOutput
    FacetNames: {string}
    NextToken: string
end

local record LookupPolicyInput
    DirectoryArn: string
    ObjectReference: ObjectReference
    NextToken: string
    MaxResults: number
end

local record LookupPolicyOutput
    PolicyToPathList: {PolicyToPath}
    NextToken: string
end

local record PublishSchemaInput
    DevelopmentSchemaArn: string
    Version: string
    MinorVersion: string
    Name: string
end

local record PublishSchemaOutput
    PublishedSchemaArn: string
end

local record PutSchemaFromJsonInput
    SchemaArn: string
    Document: string
end

local record PutSchemaFromJsonOutput
    Arn: string
end

local record RemoveFacetFromObjectInput
    DirectoryArn: string
    SchemaFacet: SchemaFacet
    ObjectReference: ObjectReference
end

local record RemoveFacetFromObjectOutput
end

local record TagResourceInput
    ResourceArn: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateFacetInput
    SchemaArn: string
    Name: string
    AttributeUpdates: {FacetAttributeUpdate}
    ObjectType: string
end

local record UpdateFacetOutput
end

local record UpdateLinkAttributesInput
    DirectoryArn: string
    TypedLinkSpecifier: TypedLinkSpecifier
    AttributeUpdates: {LinkAttributeUpdate}
end

local record UpdateLinkAttributesOutput
end

local record UpdateObjectAttributesInput
    DirectoryArn: string
    ObjectReference: ObjectReference
    AttributeUpdates: {ObjectAttributeUpdate}
end

local record UpdateObjectAttributesOutput
    ObjectIdentifier: string
end

local record UpdateSchemaInput
    SchemaArn: string
    Name: string
end

local record UpdateSchemaOutput
    SchemaArn: string
end

local record UpdateTypedLinkFacetInput
    SchemaArn: string
    Name: string
    AttributeUpdates: {TypedLinkFacetAttributeUpdate}
    IdentityAttributeOrder: {string}
end

local record UpdateTypedLinkFacetOutput
end

local record UpgradeAppliedSchemaInput
    PublishedSchemaArn: string
    DirectoryArn: string
    DryRun: boolean
end

local record UpgradeAppliedSchemaOutput
    UpgradedSchemaArn: string
    DirectoryArn: string
end

local record UpgradePublishedSchemaInput
    DevelopmentSchemaArn: string
    PublishedSchemaArn: string
    MinorVersion: string
    DryRun: boolean
end

local record UpgradePublishedSchemaOutput
    UpgradedSchemaArn: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record FacetValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidAttachmentException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record SchemaAlreadyExistsException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record FacetValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidAttachmentException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record LinkNameAlreadyInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotPolicyException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record IndexedAttributeMissingException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidAttachmentException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record LinkNameAlreadyInUseException
    Message: string
end

local record NotIndexException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record FacetValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidAttachmentException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BatchWriteException
    Index: number
    Type: string
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryAlreadyExistsException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record FacetAlreadyExistsException
    Message: string
end

local record FacetValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidRuleException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record FacetValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record LinkNameAlreadyInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record UnsupportedIndexTypeException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record FacetValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record LinkNameAlreadyInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record UnsupportedIndexTypeException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record SchemaAlreadyExistsException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record FacetAlreadyExistsException
    Message: string
end

local record FacetValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidRuleException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryDeletedException
    Message: string
end

local record DirectoryNotDisabledException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record FacetInUseException
    Message: string
end

local record FacetNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ObjectNotDetachedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record StillContainsLinksException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record FacetNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotIndexException
    Message: string
end

local record ObjectAlreadyDetachedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotNodeException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotPolicyException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record FacetValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryDeletedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryDeletedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record FacetNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record FacetValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record FacetValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record FacetNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record FacetNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record FacetValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record FacetValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotIndexException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record FacetValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotNodeException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record CannotListParentOfRootException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record FacetValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotPolicyException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidTaggingRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record FacetNotFoundException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record SchemaAlreadyPublishedException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidRuleException
    Message: string
end

local record InvalidSchemaDocException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record FacetValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidTaggingRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidTaggingRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record FacetNotFoundException
    Message: string
end

local record FacetValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidFacetUpdateException
    Message: string
end

local record InvalidRuleException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record FacetValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DirectoryNotEnabledException
    Message: string
end

local record FacetValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record LinkNameAlreadyInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record FacetNotFoundException
    Message: string
end

local record FacetValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidFacetUpdateException
    Message: string
end

local record InvalidRuleException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IncompatibleSchemaException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidAttachmentException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record SchemaAlreadyExistsException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record IncompatibleSchemaException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidArnException
    Message: string
end

local record InvalidAttachmentException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryableConflictException
    Message: string
end

local record ValidationException
    Message: string
end

local type FacetStyle = "STATIC" | "DYNAMIC"

local type ConsistencyLevel = "SERIALIZABLE" | "EVENTUAL"

local type ObjectType = "NODE" | "LEAF_NODE" | "POLICY" | "INDEX"

local type DirectoryState = "ENABLED" | "DISABLED" | "DELETED"

local record M
    AddFacetToObjectInput: AddFacetToObjectInput
    AddFacetToObjectOutput: AddFacetToObjectOutput
    ApplySchemaInput: ApplySchemaInput
    ApplySchemaOutput: ApplySchemaOutput
    AttachObjectInput: AttachObjectInput
    AttachObjectOutput: AttachObjectOutput
    AttachPolicyInput: AttachPolicyInput
    AttachPolicyOutput: AttachPolicyOutput
    AttachToIndexInput: AttachToIndexInput
    AttachToIndexOutput: AttachToIndexOutput
    AttachTypedLinkInput: AttachTypedLinkInput
    AttachTypedLinkOutput: AttachTypedLinkOutput
    BatchReadInput: BatchReadInput
    BatchReadOutput: BatchReadOutput
    BatchWriteInput: BatchWriteInput
    BatchWriteOutput: BatchWriteOutput
    CreateDirectoryInput: CreateDirectoryInput
    CreateDirectoryOutput: CreateDirectoryOutput
    CreateFacetInput: CreateFacetInput
    CreateFacetOutput: CreateFacetOutput
    CreateIndexInput: CreateIndexInput
    CreateIndexOutput: CreateIndexOutput
    CreateObjectInput: CreateObjectInput
    CreateObjectOutput: CreateObjectOutput
    CreateSchemaInput: CreateSchemaInput
    CreateSchemaOutput: CreateSchemaOutput
    CreateTypedLinkFacetInput: CreateTypedLinkFacetInput
    CreateTypedLinkFacetOutput: CreateTypedLinkFacetOutput
    DeleteDirectoryInput: DeleteDirectoryInput
    DeleteDirectoryOutput: DeleteDirectoryOutput
    DeleteFacetInput: DeleteFacetInput
    DeleteFacetOutput: DeleteFacetOutput
    DeleteObjectInput: DeleteObjectInput
    DeleteObjectOutput: DeleteObjectOutput
    DeleteSchemaInput: DeleteSchemaInput
    DeleteSchemaOutput: DeleteSchemaOutput
    DeleteTypedLinkFacetInput: DeleteTypedLinkFacetInput
    DeleteTypedLinkFacetOutput: DeleteTypedLinkFacetOutput
    DetachFromIndexInput: DetachFromIndexInput
    DetachFromIndexOutput: DetachFromIndexOutput
    DetachObjectInput: DetachObjectInput
    DetachObjectOutput: DetachObjectOutput
    DetachPolicyInput: DetachPolicyInput
    DetachPolicyOutput: DetachPolicyOutput
    DetachTypedLinkInput: DetachTypedLinkInput
    DetachTypedLinkOutput: DetachTypedLinkOutput
    DisableDirectoryInput: DisableDirectoryInput
    DisableDirectoryOutput: DisableDirectoryOutput
    EnableDirectoryInput: EnableDirectoryInput
    EnableDirectoryOutput: EnableDirectoryOutput
    GetAppliedSchemaVersionInput: GetAppliedSchemaVersionInput
    GetAppliedSchemaVersionOutput: GetAppliedSchemaVersionOutput
    GetDirectoryInput: GetDirectoryInput
    GetDirectoryOutput: GetDirectoryOutput
    GetFacetInput: GetFacetInput
    GetFacetOutput: GetFacetOutput
    GetLinkAttributesInput: GetLinkAttributesInput
    GetLinkAttributesOutput: GetLinkAttributesOutput
    GetObjectAttributesInput: GetObjectAttributesInput
    GetObjectAttributesOutput: GetObjectAttributesOutput
    GetObjectInformationInput: GetObjectInformationInput
    GetObjectInformationOutput: GetObjectInformationOutput
    GetSchemaAsJsonInput: GetSchemaAsJsonInput
    GetSchemaAsJsonOutput: GetSchemaAsJsonOutput
    GetTypedLinkFacetInformationInput: GetTypedLinkFacetInformationInput
    GetTypedLinkFacetInformationOutput: GetTypedLinkFacetInformationOutput
    ListAppliedSchemaArnsInput: ListAppliedSchemaArnsInput
    ListAppliedSchemaArnsOutput: ListAppliedSchemaArnsOutput
    ListAttachedIndicesInput: ListAttachedIndicesInput
    ListAttachedIndicesOutput: ListAttachedIndicesOutput
    ListDevelopmentSchemaArnsInput: ListDevelopmentSchemaArnsInput
    ListDevelopmentSchemaArnsOutput: ListDevelopmentSchemaArnsOutput
    ListDirectoriesInput: ListDirectoriesInput
    ListDirectoriesOutput: ListDirectoriesOutput
    ListFacetAttributesInput: ListFacetAttributesInput
    ListFacetAttributesOutput: ListFacetAttributesOutput
    ListFacetNamesInput: ListFacetNamesInput
    ListFacetNamesOutput: ListFacetNamesOutput
    ListIncomingTypedLinksInput: ListIncomingTypedLinksInput
    ListIncomingTypedLinksOutput: ListIncomingTypedLinksOutput
    ListIndexInput: ListIndexInput
    ListIndexOutput: ListIndexOutput
    ListManagedSchemaArnsInput: ListManagedSchemaArnsInput
    ListManagedSchemaArnsOutput: ListManagedSchemaArnsOutput
    ListObjectAttributesInput: ListObjectAttributesInput
    ListObjectAttributesOutput: ListObjectAttributesOutput
    ListObjectChildrenInput: ListObjectChildrenInput
    ListObjectChildrenOutput: ListObjectChildrenOutput
    ListObjectParentPathsInput: ListObjectParentPathsInput
    ListObjectParentPathsOutput: ListObjectParentPathsOutput
    ListObjectParentsInput: ListObjectParentsInput
    ListObjectParentsOutput: ListObjectParentsOutput
    ListObjectPoliciesInput: ListObjectPoliciesInput
    ListObjectPoliciesOutput: ListObjectPoliciesOutput
    ListOutgoingTypedLinksInput: ListOutgoingTypedLinksInput
    ListOutgoingTypedLinksOutput: ListOutgoingTypedLinksOutput
    ListPolicyAttachmentsInput: ListPolicyAttachmentsInput
    ListPolicyAttachmentsOutput: ListPolicyAttachmentsOutput
    ListPublishedSchemaArnsInput: ListPublishedSchemaArnsInput
    ListPublishedSchemaArnsOutput: ListPublishedSchemaArnsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTypedLinkFacetAttributesInput: ListTypedLinkFacetAttributesInput
    ListTypedLinkFacetAttributesOutput: ListTypedLinkFacetAttributesOutput
    ListTypedLinkFacetNamesInput: ListTypedLinkFacetNamesInput
    ListTypedLinkFacetNamesOutput: ListTypedLinkFacetNamesOutput
    LookupPolicyInput: LookupPolicyInput
    LookupPolicyOutput: LookupPolicyOutput
    PublishSchemaInput: PublishSchemaInput
    PublishSchemaOutput: PublishSchemaOutput
    PutSchemaFromJsonInput: PutSchemaFromJsonInput
    PutSchemaFromJsonOutput: PutSchemaFromJsonOutput
    RemoveFacetFromObjectInput: RemoveFacetFromObjectInput
    RemoveFacetFromObjectOutput: RemoveFacetFromObjectOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateFacetInput: UpdateFacetInput
    UpdateFacetOutput: UpdateFacetOutput
    UpdateLinkAttributesInput: UpdateLinkAttributesInput
    UpdateLinkAttributesOutput: UpdateLinkAttributesOutput
    UpdateObjectAttributesInput: UpdateObjectAttributesInput
    UpdateObjectAttributesOutput: UpdateObjectAttributesOutput
    UpdateSchemaInput: UpdateSchemaInput
    UpdateSchemaOutput: UpdateSchemaOutput
    UpdateTypedLinkFacetInput: UpdateTypedLinkFacetInput
    UpdateTypedLinkFacetOutput: UpdateTypedLinkFacetOutput
    UpgradeAppliedSchemaInput: UpgradeAppliedSchemaInput
    UpgradeAppliedSchemaOutput: UpgradeAppliedSchemaOutput
    UpgradePublishedSchemaInput: UpgradePublishedSchemaInput
    UpgradePublishedSchemaOutput: UpgradePublishedSchemaOutput
end

return M
