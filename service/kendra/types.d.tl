local record AssociateEntitiesToExperienceInput
    Id: string
    IndexId: string
    EntityList: {EntityConfiguration}
end

local record AssociateEntitiesToExperienceOutput
    FailedEntityList: {FailedEntity}
end

local record AssociatePersonasToEntitiesInput
    Id: string
    IndexId: string
    Personas: {EntityPersonaConfiguration}
end

local record AssociatePersonasToEntitiesOutput
    FailedEntityList: {FailedEntity}
end

local record BatchDeleteDocumentInput
    IndexId: string
    DocumentIdList: {string}
    DataSourceSyncJobMetricTarget: DataSourceSyncJobMetricTarget
end

local record BatchDeleteDocumentOutput
    FailedDocuments: {BatchDeleteDocumentResponseFailedDocument}
end

local record BatchDeleteFeaturedResultsSetInput
    IndexId: string
    FeaturedResultsSetIds: {string}
end

local record BatchDeleteFeaturedResultsSetOutput
    Errors: {BatchDeleteFeaturedResultsSetError}
end

local record BatchGetDocumentStatusInput
    IndexId: string
    DocumentInfoList: {DocumentInfo}
end

local record BatchGetDocumentStatusOutput
    Errors: {BatchGetDocumentStatusResponseError}
    DocumentStatusList: {Status}
end

local record BatchPutDocumentInput
    IndexId: string
    RoleArn: string
    Documents: {Document}
    CustomDocumentEnrichmentConfiguration: CustomDocumentEnrichmentConfiguration
end

local record BatchPutDocumentOutput
    FailedDocuments: {BatchPutDocumentResponseFailedDocument}
end

local record ClearQuerySuggestionsInput
    IndexId: string
end

local record ClearQuerySuggestionsOutput
end

local record CreateAccessControlConfigurationInput
    IndexId: string
    Name: string
    Description: string
    AccessControlList: {Principal}
    HierarchicalAccessControlList: {HierarchicalPrincipal}
    ClientToken: string
end

local record CreateAccessControlConfigurationOutput
    Id: string
end

local record CreateDataSourceInput
    Name: string
    IndexId: string
    Type: string
    Configuration: DataSourceConfiguration
    VpcConfiguration: DataSourceVpcConfiguration
    Description: string
    Schedule: string
    RoleArn: string
    Tags: {Tag}
    ClientToken: string
    LanguageCode: string
    CustomDocumentEnrichmentConfiguration: CustomDocumentEnrichmentConfiguration
end

local record CreateDataSourceOutput
    Id: string
end

local record CreateExperienceInput
    Name: string
    IndexId: string
    RoleArn: string
    Configuration: ExperienceConfiguration
    Description: string
    ClientToken: string
end

local record CreateExperienceOutput
    Id: string
end

local record CreateFaqInput
    IndexId: string
    Name: string
    Description: string
    S3Path: S3Path
    RoleArn: string
    Tags: {Tag}
    FileFormat: string
    ClientToken: string
    LanguageCode: string
end

local record CreateFaqOutput
    Id: string
end

local record CreateFeaturedResultsSetInput
    IndexId: string
    FeaturedResultsSetName: string
    Description: string
    ClientToken: string
    Status: string
    QueryTexts: {string}
    FeaturedDocuments: {FeaturedDocument}
    Tags: {Tag}
end

local record CreateFeaturedResultsSetOutput
    FeaturedResultsSet: FeaturedResultsSet
end

local record CreateIndexInput
    Name: string
    Edition: string
    RoleArn: string
    ServerSideEncryptionConfiguration: ServerSideEncryptionConfiguration
    Description: string
    ClientToken: string
    Tags: {Tag}
    UserTokenConfigurations: {UserTokenConfiguration}
    UserContextPolicy: string
    UserGroupResolutionConfiguration: UserGroupResolutionConfiguration
end

local record CreateIndexOutput
    Id: string
end

local record CreateQuerySuggestionsBlockListInput
    IndexId: string
    Name: string
    Description: string
    SourceS3Path: S3Path
    ClientToken: string
    RoleArn: string
    Tags: {Tag}
end

local record CreateQuerySuggestionsBlockListOutput
    Id: string
end

local record CreateThesaurusInput
    IndexId: string
    Name: string
    Description: string
    RoleArn: string
    Tags: {Tag}
    SourceS3Path: S3Path
    ClientToken: string
end

local record CreateThesaurusOutput
    Id: string
end

local record DeleteAccessControlConfigurationInput
    IndexId: string
    Id: string
end

local record DeleteAccessControlConfigurationOutput
end

local record DeleteDataSourceInput
    Id: string
    IndexId: string
end

local record DeleteDataSourceOutput
end

local record DeleteExperienceInput
    Id: string
    IndexId: string
end

local record DeleteExperienceOutput
end

local record DeleteFaqInput
    Id: string
    IndexId: string
end

local record DeleteFaqOutput
end

local record DeleteIndexInput
    Id: string
end

local record DeleteIndexOutput
end

local record DeletePrincipalMappingInput
    IndexId: string
    DataSourceId: string
    GroupId: string
    OrderingId: number
end

local record DeletePrincipalMappingOutput
end

local record DeleteQuerySuggestionsBlockListInput
    IndexId: string
    Id: string
end

local record DeleteQuerySuggestionsBlockListOutput
end

local record DeleteThesaurusInput
    Id: string
    IndexId: string
end

local record DeleteThesaurusOutput
end

local record DescribeAccessControlConfigurationInput
    IndexId: string
    Id: string
end

local record DescribeAccessControlConfigurationOutput
    Name: string
    Description: string
    ErrorMessage: string
    AccessControlList: {Principal}
    HierarchicalAccessControlList: {HierarchicalPrincipal}
end

local record DescribeDataSourceInput
    Id: string
    IndexId: string
end

local record DescribeDataSourceOutput
    Id: string
    IndexId: string
    Name: string
    Type: string
    Configuration: DataSourceConfiguration
    VpcConfiguration: DataSourceVpcConfiguration
    CreatedAt: number
    UpdatedAt: number
    Description: string
    Status: string
    Schedule: string
    RoleArn: string
    ErrorMessage: string
    LanguageCode: string
    CustomDocumentEnrichmentConfiguration: CustomDocumentEnrichmentConfiguration
end

local record DescribeExperienceInput
    Id: string
    IndexId: string
end

local record DescribeExperienceOutput
    Id: string
    IndexId: string
    Name: string
    Endpoints: {ExperienceEndpoint}
    Configuration: ExperienceConfiguration
    CreatedAt: number
    UpdatedAt: number
    Description: string
    Status: string
    RoleArn: string
    ErrorMessage: string
end

local record DescribeFaqInput
    Id: string
    IndexId: string
end

local record DescribeFaqOutput
    Id: string
    IndexId: string
    Name: string
    Description: string
    CreatedAt: number
    UpdatedAt: number
    S3Path: S3Path
    Status: string
    RoleArn: string
    ErrorMessage: string
    FileFormat: string
    LanguageCode: string
end

local record DescribeFeaturedResultsSetInput
    IndexId: string
    FeaturedResultsSetId: string
end

local record DescribeFeaturedResultsSetOutput
    FeaturedResultsSetId: string
    FeaturedResultsSetName: string
    Description: string
    Status: string
    QueryTexts: {string}
    FeaturedDocumentsWithMetadata: {FeaturedDocumentWithMetadata}
    FeaturedDocumentsMissing: {FeaturedDocumentMissing}
    LastUpdatedTimestamp: number
    CreationTimestamp: number
end

local record DescribeIndexInput
    Id: string
end

local record DescribeIndexOutput
    Name: string
    Id: string
    Edition: string
    RoleArn: string
    ServerSideEncryptionConfiguration: ServerSideEncryptionConfiguration
    Status: string
    Description: string
    CreatedAt: number
    UpdatedAt: number
    DocumentMetadataConfigurations: {DocumentMetadataConfiguration}
    IndexStatistics: IndexStatistics
    ErrorMessage: string
    CapacityUnits: CapacityUnitsConfiguration
    UserTokenConfigurations: {UserTokenConfiguration}
    UserContextPolicy: string
    UserGroupResolutionConfiguration: UserGroupResolutionConfiguration
end

local record DescribePrincipalMappingInput
    IndexId: string
    DataSourceId: string
    GroupId: string
end

local record DescribePrincipalMappingOutput
    IndexId: string
    DataSourceId: string
    GroupId: string
    GroupOrderingIdSummaries: {GroupOrderingIdSummary}
end

local record DescribeQuerySuggestionsBlockListInput
    IndexId: string
    Id: string
end

local record DescribeQuerySuggestionsBlockListOutput
    IndexId: string
    Id: string
    Name: string
    Description: string
    Status: string
    ErrorMessage: string
    CreatedAt: number
    UpdatedAt: number
    SourceS3Path: S3Path
    ItemCount: number
    FileSizeBytes: number
    RoleArn: string
end

local record DescribeQuerySuggestionsConfigInput
    IndexId: string
end

local record DescribeQuerySuggestionsConfigOutput
    Mode: string
    Status: string
    QueryLogLookBackWindowInDays: number
    IncludeQueriesWithoutUserInformation: boolean
    MinimumNumberOfQueryingUsers: number
    MinimumQueryCount: number
    LastSuggestionsBuildTime: number
    LastClearTime: number
    TotalSuggestionsCount: number
    AttributeSuggestionsConfig: AttributeSuggestionsDescribeConfig
end

local record DescribeThesaurusInput
    Id: string
    IndexId: string
end

local record DescribeThesaurusOutput
    Id: string
    IndexId: string
    Name: string
    Description: string
    Status: string
    ErrorMessage: string
    CreatedAt: number
    UpdatedAt: number
    RoleArn: string
    SourceS3Path: S3Path
    FileSizeBytes: number
    TermCount: number
    SynonymRuleCount: number
end

local record DisassociateEntitiesFromExperienceInput
    Id: string
    IndexId: string
    EntityList: {EntityConfiguration}
end

local record DisassociateEntitiesFromExperienceOutput
    FailedEntityList: {FailedEntity}
end

local record DisassociatePersonasFromEntitiesInput
    Id: string
    IndexId: string
    EntityIds: {string}
end

local record DisassociatePersonasFromEntitiesOutput
    FailedEntityList: {FailedEntity}
end

local record GetQuerySuggestionsInput
    IndexId: string
    QueryText: string
    MaxSuggestionsCount: number
    SuggestionTypes: {string}
    AttributeSuggestionsConfig: AttributeSuggestionsGetConfig
end

local record GetQuerySuggestionsOutput
    QuerySuggestionsId: string
    Suggestions: {Suggestion}
end

local record GetSnapshotsInput
    IndexId: string
    Interval: string
    MetricType: string
    NextToken: string
    MaxResults: number
end

local record GetSnapshotsOutput
    SnapShotTimeFilter: TimeRange
    SnapshotsDataHeader: {string}
    SnapshotsData: {{string}}
    NextToken: string
end

local record ListAccessControlConfigurationsInput
    IndexId: string
    NextToken: string
    MaxResults: number
end

local record ListAccessControlConfigurationsOutput
    NextToken: string
    AccessControlConfigurations: {AccessControlConfigurationSummary}
end

local record ListDataSourcesInput
    IndexId: string
    NextToken: string
    MaxResults: number
end

local record ListDataSourcesOutput
    SummaryItems: {DataSourceSummary}
    NextToken: string
end

local record ListDataSourceSyncJobsInput
    Id: string
    IndexId: string
    NextToken: string
    MaxResults: number
    StartTimeFilter: TimeRange
    StatusFilter: string
end

local record ListDataSourceSyncJobsOutput
    History: {DataSourceSyncJob}
    NextToken: string
end

local record ListEntityPersonasInput
    Id: string
    IndexId: string
    NextToken: string
    MaxResults: number
end

local record ListEntityPersonasOutput
    SummaryItems: {PersonasSummary}
    NextToken: string
end

local record ListExperienceEntitiesInput
    Id: string
    IndexId: string
    NextToken: string
end

local record ListExperienceEntitiesOutput
    SummaryItems: {ExperienceEntitiesSummary}
    NextToken: string
end

local record ListExperiencesInput
    IndexId: string
    NextToken: string
    MaxResults: number
end

local record ListExperiencesOutput
    SummaryItems: {ExperiencesSummary}
    NextToken: string
end

local record ListFaqsInput
    IndexId: string
    NextToken: string
    MaxResults: number
end

local record ListFaqsOutput
    NextToken: string
    FaqSummaryItems: {FaqSummary}
end

local record ListFeaturedResultsSetsInput
    IndexId: string
    NextToken: string
    MaxResults: number
end

local record ListFeaturedResultsSetsOutput
    FeaturedResultsSetSummaryItems: {FeaturedResultsSetSummary}
    NextToken: string
end

local record ListGroupsOlderThanOrderingIdInput
    IndexId: string
    DataSourceId: string
    OrderingId: number
    NextToken: string
    MaxResults: number
end

local record ListGroupsOlderThanOrderingIdOutput
    GroupsSummaries: {GroupSummary}
    NextToken: string
end

local record ListIndicesInput
    NextToken: string
    MaxResults: number
end

local record ListIndicesOutput
    IndexConfigurationSummaryItems: {IndexConfigurationSummary}
    NextToken: string
end

local record ListQuerySuggestionsBlockListsInput
    IndexId: string
    NextToken: string
    MaxResults: number
end

local record ListQuerySuggestionsBlockListsOutput
    BlockListSummaryItems: {QuerySuggestionsBlockListSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceARN: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record ListThesauriInput
    IndexId: string
    NextToken: string
    MaxResults: number
end

local record ListThesauriOutput
    NextToken: string
    ThesaurusSummaryItems: {ThesaurusSummary}
end

local record PutPrincipalMappingInput
    IndexId: string
    DataSourceId: string
    GroupId: string
    GroupMembers: GroupMembers
    OrderingId: number
    RoleArn: string
end

local record PutPrincipalMappingOutput
end

local record QueryInput
    IndexId: string
    QueryText: string
    AttributeFilter: AttributeFilter
    Facets: {Facet}
    RequestedDocumentAttributes: {string}
    QueryResultTypeFilter: string
    DocumentRelevanceOverrideConfigurations: {DocumentRelevanceConfiguration}
    PageNumber: number
    PageSize: number
    SortingConfiguration: SortingConfiguration
    SortingConfigurations: {SortingConfiguration}
    UserContext: UserContext
    VisitorId: string
    SpellCorrectionConfiguration: SpellCorrectionConfiguration
    CollapseConfiguration: CollapseConfiguration
end

local record QueryOutput
    QueryId: string
    ResultItems: {QueryResultItem}
    FacetResults: {FacetResult}
    TotalNumberOfResults: number
    Warnings: {Warning}
    SpellCorrectedQueries: {SpellCorrectedQuery}
    FeaturedResultsItems: {FeaturedResultsItem}
end

local record RetrieveInput
    IndexId: string
    QueryText: string
    AttributeFilter: AttributeFilter
    RequestedDocumentAttributes: {string}
    DocumentRelevanceOverrideConfigurations: {DocumentRelevanceConfiguration}
    PageNumber: number
    PageSize: number
    UserContext: UserContext
end

local record RetrieveOutput
    QueryId: string
    ResultItems: {RetrieveResultItem}
end

local record StartDataSourceSyncJobInput
    Id: string
    IndexId: string
end

local record StartDataSourceSyncJobOutput
    ExecutionId: string
end

local record StopDataSourceSyncJobInput
    Id: string
    IndexId: string
end

local record StopDataSourceSyncJobOutput
end

local record SubmitFeedbackInput
    IndexId: string
    QueryId: string
    ClickFeedbackItems: {ClickFeedback}
    RelevanceFeedbackItems: {RelevanceFeedback}
end

local record SubmitFeedbackOutput
end

local record TagResourceInput
    ResourceARN: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceARN: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateAccessControlConfigurationInput
    IndexId: string
    Id: string
    Name: string
    Description: string
    AccessControlList: {Principal}
    HierarchicalAccessControlList: {HierarchicalPrincipal}
end

local record UpdateAccessControlConfigurationOutput
end

local record UpdateDataSourceInput
    Id: string
    Name: string
    IndexId: string
    Configuration: DataSourceConfiguration
    VpcConfiguration: DataSourceVpcConfiguration
    Description: string
    Schedule: string
    RoleArn: string
    LanguageCode: string
    CustomDocumentEnrichmentConfiguration: CustomDocumentEnrichmentConfiguration
end

local record UpdateDataSourceOutput
end

local record UpdateExperienceInput
    Id: string
    Name: string
    IndexId: string
    RoleArn: string
    Configuration: ExperienceConfiguration
    Description: string
end

local record UpdateExperienceOutput
end

local record UpdateFeaturedResultsSetInput
    IndexId: string
    FeaturedResultsSetId: string
    FeaturedResultsSetName: string
    Description: string
    Status: string
    QueryTexts: {string}
    FeaturedDocuments: {FeaturedDocument}
end

local record UpdateFeaturedResultsSetOutput
    FeaturedResultsSet: FeaturedResultsSet
end

local record UpdateIndexInput
    Id: string
    Name: string
    RoleArn: string
    Description: string
    DocumentMetadataConfigurationUpdates: {DocumentMetadataConfiguration}
    CapacityUnits: CapacityUnitsConfiguration
    UserTokenConfigurations: {UserTokenConfiguration}
    UserContextPolicy: string
    UserGroupResolutionConfiguration: UserGroupResolutionConfiguration
end

local record UpdateIndexOutput
end

local record UpdateQuerySuggestionsBlockListInput
    IndexId: string
    Id: string
    Name: string
    Description: string
    SourceS3Path: S3Path
    RoleArn: string
end

local record UpdateQuerySuggestionsBlockListOutput
end

local record UpdateQuerySuggestionsConfigInput
    IndexId: string
    Mode: string
    QueryLogLookBackWindowInDays: number
    IncludeQueriesWithoutUserInformation: boolean
    MinimumNumberOfQueryingUsers: number
    MinimumQueryCount: number
    AttributeSuggestionsConfig: AttributeSuggestionsUpdateConfig
end

local record UpdateQuerySuggestionsConfigOutput
end

local record UpdateThesaurusInput
    Id: string
    Name: string
    IndexId: string
    Description: string
    RoleArn: string
    SourceS3Path: S3Path
end

local record UpdateThesaurusOutput
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceAlreadyExistException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceAlreadyExistException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceAlreadyExistException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
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

local record FeaturedResultsConflictException
    Message: string
    ConflictingItems: {ConflictingItem}
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceAlreadyExistException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
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

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceUnavailableException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceUnavailableException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceUnavailableException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceUnavailableException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record FeaturedResultsConflictException
    Message: string
    ConflictingItems: {ConflictingItem}
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
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

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local type UserContextPolicy = "ATTRIBUTE_FILTER" | "USER_TOKEN"

local type QueryResultType = "DOCUMENT" | "QUESTION_ANSWER" | "ANSWER"

local type DataSourceType = "S3" | "SHAREPOINT" | "DATABASE" | "SALESFORCE" | "ONEDRIVE" | "SERVICENOW" | "CUSTOM" | "CONFLUENCE" | "GOOGLEDRIVE" | "WEBCRAWLER" | "WORKDOCS" | "FSX" | "SLACK" | "BOX" | "QUIP" | "JIRA" | "GITHUB" | "ALFRESCO" | "TEMPLATE"

local type Mode = "ENABLED" | "LEARN_ONLY"

local type FaqFileFormat = "CSV" | "CSV_WITH_HEADER" | "JSON"

local type FeaturedResultsSetStatus = "ACTIVE" | "INACTIVE"

local type ThesaurusStatus = "CREATING" | "ACTIVE" | "DELETING" | "UPDATING" | "ACTIVE_BUT_UPDATE_FAILED" | "FAILED"

local type QuerySuggestionsStatus = "ACTIVE" | "UPDATING"

local type FaqStatus = "CREATING" | "UPDATING" | "ACTIVE" | "DELETING" | "FAILED"

local type MetricType = "QUERIES_BY_COUNT" | "QUERIES_BY_ZERO_CLICK_RATE" | "QUERIES_BY_ZERO_RESULT_RATE" | "DOCS_BY_CLICK_COUNT" | "AGG_QUERY_DOC_METRICS" | "TREND_QUERY_DOC_METRICS"

local type DataSourceStatus = "CREATING" | "DELETING" | "FAILED" | "UPDATING" | "ACTIVE"

local type Interval = "THIS_MONTH" | "THIS_WEEK" | "ONE_WEEK_AGO" | "TWO_WEEKS_AGO" | "ONE_MONTH_AGO" | "TWO_MONTHS_AGO"

local type IndexEdition = "DEVELOPER_EDITION" | "ENTERPRISE_EDITION" | "GEN_AI_ENTERPRISE_EDITION"

local type DataSourceSyncJobStatus = "FAILED" | "SUCCEEDED" | "SYNCING" | "INCOMPLETE" | "STOPPING" | "ABORTED" | "SYNCING_INDEXING"

local type QuerySuggestionsBlockListStatus = "ACTIVE" | "CREATING" | "DELETING" | "UPDATING" | "ACTIVE_BUT_UPDATE_FAILED" | "FAILED"

local type IndexStatus = "CREATING" | "ACTIVE" | "DELETING" | "FAILED" | "UPDATING" | "SYSTEM_UPDATING"

local type ExperienceStatus = "CREATING" | "ACTIVE" | "DELETING" | "FAILED"

local record M
    AssociateEntitiesToExperienceInput: AssociateEntitiesToExperienceInput
    AssociateEntitiesToExperienceOutput: AssociateEntitiesToExperienceOutput
    AssociatePersonasToEntitiesInput: AssociatePersonasToEntitiesInput
    AssociatePersonasToEntitiesOutput: AssociatePersonasToEntitiesOutput
    BatchDeleteDocumentInput: BatchDeleteDocumentInput
    BatchDeleteDocumentOutput: BatchDeleteDocumentOutput
    BatchDeleteFeaturedResultsSetInput: BatchDeleteFeaturedResultsSetInput
    BatchDeleteFeaturedResultsSetOutput: BatchDeleteFeaturedResultsSetOutput
    BatchGetDocumentStatusInput: BatchGetDocumentStatusInput
    BatchGetDocumentStatusOutput: BatchGetDocumentStatusOutput
    BatchPutDocumentInput: BatchPutDocumentInput
    BatchPutDocumentOutput: BatchPutDocumentOutput
    ClearQuerySuggestionsInput: ClearQuerySuggestionsInput
    ClearQuerySuggestionsOutput: ClearQuerySuggestionsOutput
    CreateAccessControlConfigurationInput: CreateAccessControlConfigurationInput
    CreateAccessControlConfigurationOutput: CreateAccessControlConfigurationOutput
    CreateDataSourceInput: CreateDataSourceInput
    CreateDataSourceOutput: CreateDataSourceOutput
    CreateExperienceInput: CreateExperienceInput
    CreateExperienceOutput: CreateExperienceOutput
    CreateFaqInput: CreateFaqInput
    CreateFaqOutput: CreateFaqOutput
    CreateFeaturedResultsSetInput: CreateFeaturedResultsSetInput
    CreateFeaturedResultsSetOutput: CreateFeaturedResultsSetOutput
    CreateIndexInput: CreateIndexInput
    CreateIndexOutput: CreateIndexOutput
    CreateQuerySuggestionsBlockListInput: CreateQuerySuggestionsBlockListInput
    CreateQuerySuggestionsBlockListOutput: CreateQuerySuggestionsBlockListOutput
    CreateThesaurusInput: CreateThesaurusInput
    CreateThesaurusOutput: CreateThesaurusOutput
    DeleteAccessControlConfigurationInput: DeleteAccessControlConfigurationInput
    DeleteAccessControlConfigurationOutput: DeleteAccessControlConfigurationOutput
    DeleteDataSourceInput: DeleteDataSourceInput
    DeleteDataSourceOutput: DeleteDataSourceOutput
    DeleteExperienceInput: DeleteExperienceInput
    DeleteExperienceOutput: DeleteExperienceOutput
    DeleteFaqInput: DeleteFaqInput
    DeleteFaqOutput: DeleteFaqOutput
    DeleteIndexInput: DeleteIndexInput
    DeleteIndexOutput: DeleteIndexOutput
    DeletePrincipalMappingInput: DeletePrincipalMappingInput
    DeletePrincipalMappingOutput: DeletePrincipalMappingOutput
    DeleteQuerySuggestionsBlockListInput: DeleteQuerySuggestionsBlockListInput
    DeleteQuerySuggestionsBlockListOutput: DeleteQuerySuggestionsBlockListOutput
    DeleteThesaurusInput: DeleteThesaurusInput
    DeleteThesaurusOutput: DeleteThesaurusOutput
    DescribeAccessControlConfigurationInput: DescribeAccessControlConfigurationInput
    DescribeAccessControlConfigurationOutput: DescribeAccessControlConfigurationOutput
    DescribeDataSourceInput: DescribeDataSourceInput
    DescribeDataSourceOutput: DescribeDataSourceOutput
    DescribeExperienceInput: DescribeExperienceInput
    DescribeExperienceOutput: DescribeExperienceOutput
    DescribeFaqInput: DescribeFaqInput
    DescribeFaqOutput: DescribeFaqOutput
    DescribeFeaturedResultsSetInput: DescribeFeaturedResultsSetInput
    DescribeFeaturedResultsSetOutput: DescribeFeaturedResultsSetOutput
    DescribeIndexInput: DescribeIndexInput
    DescribeIndexOutput: DescribeIndexOutput
    DescribePrincipalMappingInput: DescribePrincipalMappingInput
    DescribePrincipalMappingOutput: DescribePrincipalMappingOutput
    DescribeQuerySuggestionsBlockListInput: DescribeQuerySuggestionsBlockListInput
    DescribeQuerySuggestionsBlockListOutput: DescribeQuerySuggestionsBlockListOutput
    DescribeQuerySuggestionsConfigInput: DescribeQuerySuggestionsConfigInput
    DescribeQuerySuggestionsConfigOutput: DescribeQuerySuggestionsConfigOutput
    DescribeThesaurusInput: DescribeThesaurusInput
    DescribeThesaurusOutput: DescribeThesaurusOutput
    DisassociateEntitiesFromExperienceInput: DisassociateEntitiesFromExperienceInput
    DisassociateEntitiesFromExperienceOutput: DisassociateEntitiesFromExperienceOutput
    DisassociatePersonasFromEntitiesInput: DisassociatePersonasFromEntitiesInput
    DisassociatePersonasFromEntitiesOutput: DisassociatePersonasFromEntitiesOutput
    GetQuerySuggestionsInput: GetQuerySuggestionsInput
    GetQuerySuggestionsOutput: GetQuerySuggestionsOutput
    GetSnapshotsInput: GetSnapshotsInput
    GetSnapshotsOutput: GetSnapshotsOutput
    ListAccessControlConfigurationsInput: ListAccessControlConfigurationsInput
    ListAccessControlConfigurationsOutput: ListAccessControlConfigurationsOutput
    ListDataSourcesInput: ListDataSourcesInput
    ListDataSourcesOutput: ListDataSourcesOutput
    ListDataSourceSyncJobsInput: ListDataSourceSyncJobsInput
    ListDataSourceSyncJobsOutput: ListDataSourceSyncJobsOutput
    ListEntityPersonasInput: ListEntityPersonasInput
    ListEntityPersonasOutput: ListEntityPersonasOutput
    ListExperienceEntitiesInput: ListExperienceEntitiesInput
    ListExperienceEntitiesOutput: ListExperienceEntitiesOutput
    ListExperiencesInput: ListExperiencesInput
    ListExperiencesOutput: ListExperiencesOutput
    ListFaqsInput: ListFaqsInput
    ListFaqsOutput: ListFaqsOutput
    ListFeaturedResultsSetsInput: ListFeaturedResultsSetsInput
    ListFeaturedResultsSetsOutput: ListFeaturedResultsSetsOutput
    ListGroupsOlderThanOrderingIdInput: ListGroupsOlderThanOrderingIdInput
    ListGroupsOlderThanOrderingIdOutput: ListGroupsOlderThanOrderingIdOutput
    ListIndicesInput: ListIndicesInput
    ListIndicesOutput: ListIndicesOutput
    ListQuerySuggestionsBlockListsInput: ListQuerySuggestionsBlockListsInput
    ListQuerySuggestionsBlockListsOutput: ListQuerySuggestionsBlockListsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListThesauriInput: ListThesauriInput
    ListThesauriOutput: ListThesauriOutput
    PutPrincipalMappingInput: PutPrincipalMappingInput
    PutPrincipalMappingOutput: PutPrincipalMappingOutput
    QueryInput: QueryInput
    QueryOutput: QueryOutput
    RetrieveInput: RetrieveInput
    RetrieveOutput: RetrieveOutput
    StartDataSourceSyncJobInput: StartDataSourceSyncJobInput
    StartDataSourceSyncJobOutput: StartDataSourceSyncJobOutput
    StopDataSourceSyncJobInput: StopDataSourceSyncJobInput
    StopDataSourceSyncJobOutput: StopDataSourceSyncJobOutput
    SubmitFeedbackInput: SubmitFeedbackInput
    SubmitFeedbackOutput: SubmitFeedbackOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAccessControlConfigurationInput: UpdateAccessControlConfigurationInput
    UpdateAccessControlConfigurationOutput: UpdateAccessControlConfigurationOutput
    UpdateDataSourceInput: UpdateDataSourceInput
    UpdateDataSourceOutput: UpdateDataSourceOutput
    UpdateExperienceInput: UpdateExperienceInput
    UpdateExperienceOutput: UpdateExperienceOutput
    UpdateFeaturedResultsSetInput: UpdateFeaturedResultsSetInput
    UpdateFeaturedResultsSetOutput: UpdateFeaturedResultsSetOutput
    UpdateIndexInput: UpdateIndexInput
    UpdateIndexOutput: UpdateIndexOutput
    UpdateQuerySuggestionsBlockListInput: UpdateQuerySuggestionsBlockListInput
    UpdateQuerySuggestionsBlockListOutput: UpdateQuerySuggestionsBlockListOutput
    UpdateQuerySuggestionsConfigInput: UpdateQuerySuggestionsConfigInput
    UpdateQuerySuggestionsConfigOutput: UpdateQuerySuggestionsConfigOutput
    UpdateThesaurusInput: UpdateThesaurusInput
    UpdateThesaurusOutput: UpdateThesaurusOutput
end

return M
