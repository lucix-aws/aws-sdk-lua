local record AssociateApiInput
    domainName: string
    apiId: string
end

local record AssociateApiOutput
    apiAssociation: ApiAssociation
end

local record AssociateMergedGraphqlApiInput
    sourceApiIdentifier: string
    mergedApiIdentifier: string
    description: string
    sourceApiAssociationConfig: SourceApiAssociationConfig
end

local record AssociateMergedGraphqlApiOutput
    sourceApiAssociation: SourceApiAssociation
end

local record AssociateSourceGraphqlApiInput
    mergedApiIdentifier: string
    sourceApiIdentifier: string
    description: string
    sourceApiAssociationConfig: SourceApiAssociationConfig
end

local record AssociateSourceGraphqlApiOutput
    sourceApiAssociation: SourceApiAssociation
end

local record CreateApiInput
    name: string
    ownerContact: string
    tags: {string : string}
    eventConfig: EventConfig
end

local record CreateApiOutput
    api: Api
end

local record CreateApiCacheInput
    apiId: string
    ttl: number
    transitEncryptionEnabled: boolean
    atRestEncryptionEnabled: boolean
    apiCachingBehavior: string
    type: string
    healthMetricsConfig: string
end

local record CreateApiCacheOutput
    apiCache: ApiCache
end

local record CreateApiKeyInput
    apiId: string
    description: string
    expires: number
end

local record CreateApiKeyOutput
    apiKey: ApiKey
end

local record CreateChannelNamespaceInput
    apiId: string
    name: string
    subscribeAuthModes: {AuthMode}
    publishAuthModes: {AuthMode}
    codeHandlers: string
    tags: {string : string}
    handlerConfigs: HandlerConfigs
end

local record CreateChannelNamespaceOutput
    channelNamespace: ChannelNamespace
end

local record CreateDataSourceInput
    apiId: string
    name: string
    description: string
    type: string
    serviceRoleArn: string
    dynamodbConfig: DynamodbDataSourceConfig
    lambdaConfig: LambdaDataSourceConfig
    elasticsearchConfig: ElasticsearchDataSourceConfig
    openSearchServiceConfig: OpenSearchServiceDataSourceConfig
    httpConfig: HttpDataSourceConfig
    relationalDatabaseConfig: RelationalDatabaseDataSourceConfig
    eventBridgeConfig: EventBridgeDataSourceConfig
    metricsConfig: string
end

local record CreateDataSourceOutput
    dataSource: DataSource
end

local record CreateDomainNameInput
    domainName: string
    certificateArn: string
    description: string
    tags: {string : string}
end

local record CreateDomainNameOutput
    domainNameConfig: DomainNameConfig
end

local record CreateFunctionInput
    apiId: string
    name: string
    description: string
    dataSourceName: string
    requestMappingTemplate: string
    responseMappingTemplate: string
    functionVersion: string
    syncConfig: SyncConfig
    maxBatchSize: number
    runtime: AppSyncRuntime
    code: string
end

local record CreateFunctionOutput
    functionConfiguration: FunctionConfiguration
end

local record CreateGraphqlApiInput
    name: string
    logConfig: LogConfig
    authenticationType: string
    userPoolConfig: UserPoolConfig
    openIDConnectConfig: OpenIDConnectConfig
    tags: {string : string}
    additionalAuthenticationProviders: {AdditionalAuthenticationProvider}
    xrayEnabled: boolean
    lambdaAuthorizerConfig: LambdaAuthorizerConfig
    apiType: string
    mergedApiExecutionRoleArn: string
    visibility: string
    ownerContact: string
    introspectionConfig: string
    queryDepthLimit: number
    resolverCountLimit: number
    enhancedMetricsConfig: EnhancedMetricsConfig
end

local record CreateGraphqlApiOutput
    graphqlApi: GraphqlApi
end

local record CreateResolverInput
    apiId: string
    typeName: string
    fieldName: string
    dataSourceName: string
    requestMappingTemplate: string
    responseMappingTemplate: string
    kind: string
    pipelineConfig: PipelineConfig
    syncConfig: SyncConfig
    cachingConfig: CachingConfig
    maxBatchSize: number
    runtime: AppSyncRuntime
    code: string
    metricsConfig: string
end

local record CreateResolverOutput
    resolver: Resolver
end

local record CreateTypeInput
    apiId: string
    definition: string
    format: string
end

local record CreateTypeOutput
    type: Type
end

local record DeleteApiInput
    apiId: string
end

local record DeleteApiOutput
end

local record DeleteApiCacheInput
    apiId: string
end

local record DeleteApiCacheOutput
end

local record DeleteApiKeyInput
    apiId: string
    id: string
end

local record DeleteApiKeyOutput
end

local record DeleteChannelNamespaceInput
    apiId: string
    name: string
end

local record DeleteChannelNamespaceOutput
end

local record DeleteDataSourceInput
    apiId: string
    name: string
end

local record DeleteDataSourceOutput
end

local record DeleteDomainNameInput
    domainName: string
end

local record DeleteDomainNameOutput
end

local record DeleteFunctionInput
    apiId: string
    functionId: string
end

local record DeleteFunctionOutput
end

local record DeleteGraphqlApiInput
    apiId: string
end

local record DeleteGraphqlApiOutput
end

local record DeleteResolverInput
    apiId: string
    typeName: string
    fieldName: string
end

local record DeleteResolverOutput
end

local record DeleteTypeInput
    apiId: string
    typeName: string
end

local record DeleteTypeOutput
end

local record DisassociateApiInput
    domainName: string
end

local record DisassociateApiOutput
end

local record DisassociateMergedGraphqlApiInput
    sourceApiIdentifier: string
    associationId: string
end

local record DisassociateMergedGraphqlApiOutput
    sourceApiAssociationStatus: string
end

local record DisassociateSourceGraphqlApiInput
    mergedApiIdentifier: string
    associationId: string
end

local record DisassociateSourceGraphqlApiOutput
    sourceApiAssociationStatus: string
end

local record EvaluateCodeInput
    runtime: AppSyncRuntime
    code: string
    context: string
    function: string
end

local record EvaluateCodeOutput
    evaluationResult: string
    error: EvaluateCodeErrorDetail
    logs: {string}
    stash: string
    outErrors: string
end

local record EvaluateMappingTemplateInput
    template: string
    context: string
end

local record EvaluateMappingTemplateOutput
    evaluationResult: string
    error: ErrorDetail
    logs: {string}
    stash: string
    outErrors: string
end

local record FlushApiCacheInput
    apiId: string
end

local record FlushApiCacheOutput
end

local record GetApiInput
    apiId: string
end

local record GetApiOutput
    api: Api
end

local record GetApiAssociationInput
    domainName: string
end

local record GetApiAssociationOutput
    apiAssociation: ApiAssociation
end

local record GetApiCacheInput
    apiId: string
end

local record GetApiCacheOutput
    apiCache: ApiCache
end

local record GetChannelNamespaceInput
    apiId: string
    name: string
end

local record GetChannelNamespaceOutput
    channelNamespace: ChannelNamespace
end

local record GetDataSourceInput
    apiId: string
    name: string
end

local record GetDataSourceOutput
    dataSource: DataSource
end

local record GetDataSourceIntrospectionInput
    introspectionId: string
    includeModelsSDL: boolean
    nextToken: string
    maxResults: number
end

local record GetDataSourceIntrospectionOutput
    introspectionId: string
    introspectionStatus: string
    introspectionStatusDetail: string
    introspectionResult: DataSourceIntrospectionResult
end

local record GetDomainNameInput
    domainName: string
end

local record GetDomainNameOutput
    domainNameConfig: DomainNameConfig
end

local record GetFunctionInput
    apiId: string
    functionId: string
end

local record GetFunctionOutput
    functionConfiguration: FunctionConfiguration
end

local record GetGraphqlApiInput
    apiId: string
end

local record GetGraphqlApiOutput
    graphqlApi: GraphqlApi
end

local record GetGraphqlApiEnvironmentVariablesInput
    apiId: string
end

local record GetGraphqlApiEnvironmentVariablesOutput
    environmentVariables: {string : string}
end

local record GetIntrospectionSchemaInput
    apiId: string
    format: string
    includeDirectives: boolean
end

local record GetIntrospectionSchemaOutput
    schema: string
end

local record GetResolverInput
    apiId: string
    typeName: string
    fieldName: string
end

local record GetResolverOutput
    resolver: Resolver
end

local record GetSchemaCreationStatusInput
    apiId: string
end

local record GetSchemaCreationStatusOutput
    status: string
    details: string
end

local record GetSourceApiAssociationInput
    mergedApiIdentifier: string
    associationId: string
end

local record GetSourceApiAssociationOutput
    sourceApiAssociation: SourceApiAssociation
end

local record GetTypeInput
    apiId: string
    typeName: string
    format: string
end

local record GetTypeOutput
    type: Type
end

local record ListApiKeysInput
    apiId: string
    nextToken: string
    maxResults: number
end

local record ListApiKeysOutput
    apiKeys: {ApiKey}
    nextToken: string
end

local record ListApisInput
    nextToken: string
    maxResults: number
end

local record ListApisOutput
    apis: {Api}
    nextToken: string
end

local record ListChannelNamespacesInput
    apiId: string
    nextToken: string
    maxResults: number
end

local record ListChannelNamespacesOutput
    channelNamespaces: {ChannelNamespace}
    nextToken: string
end

local record ListDataSourcesInput
    apiId: string
    nextToken: string
    maxResults: number
end

local record ListDataSourcesOutput
    dataSources: {DataSource}
    nextToken: string
end

local record ListDomainNamesInput
    nextToken: string
    maxResults: number
end

local record ListDomainNamesOutput
    domainNameConfigs: {DomainNameConfig}
    nextToken: string
end

local record ListFunctionsInput
    apiId: string
    nextToken: string
    maxResults: number
end

local record ListFunctionsOutput
    functions: {FunctionConfiguration}
    nextToken: string
end

local record ListGraphqlApisInput
    nextToken: string
    maxResults: number
    apiType: string
    owner: string
end

local record ListGraphqlApisOutput
    graphqlApis: {GraphqlApi}
    nextToken: string
end

local record ListResolversInput
    apiId: string
    typeName: string
    nextToken: string
    maxResults: number
end

local record ListResolversOutput
    resolvers: {Resolver}
    nextToken: string
end

local record ListResolversByFunctionInput
    apiId: string
    functionId: string
    nextToken: string
    maxResults: number
end

local record ListResolversByFunctionOutput
    resolvers: {Resolver}
    nextToken: string
end

local record ListSourceApiAssociationsInput
    apiId: string
    nextToken: string
    maxResults: number
end

local record ListSourceApiAssociationsOutput
    sourceApiAssociationSummaries: {SourceApiAssociationSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListTypesInput
    apiId: string
    format: string
    nextToken: string
    maxResults: number
end

local record ListTypesOutput
    types: {Type}
    nextToken: string
end

local record ListTypesByAssociationInput
    mergedApiIdentifier: string
    associationId: string
    format: string
    nextToken: string
    maxResults: number
end

local record ListTypesByAssociationOutput
    types: {Type}
    nextToken: string
end

local record PutGraphqlApiEnvironmentVariablesInput
    apiId: string
    environmentVariables: {string : string}
end

local record PutGraphqlApiEnvironmentVariablesOutput
    environmentVariables: {string : string}
end

local record StartDataSourceIntrospectionInput
    rdsDataApiConfig: RdsDataApiConfig
end

local record StartDataSourceIntrospectionOutput
    introspectionId: string
    introspectionStatus: string
    introspectionStatusDetail: string
end

local record StartSchemaCreationInput
    apiId: string
    definition: string
end

local record StartSchemaCreationOutput
    status: string
end

local record StartSchemaMergeInput
    associationId: string
    mergedApiIdentifier: string
end

local record StartSchemaMergeOutput
    sourceApiAssociationStatus: string
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

local record UpdateApiInput
    apiId: string
    name: string
    ownerContact: string
    eventConfig: EventConfig
end

local record UpdateApiOutput
    api: Api
end

local record UpdateApiCacheInput
    apiId: string
    ttl: number
    apiCachingBehavior: string
    type: string
    healthMetricsConfig: string
end

local record UpdateApiCacheOutput
    apiCache: ApiCache
end

local record UpdateApiKeyInput
    apiId: string
    id: string
    description: string
    expires: number
end

local record UpdateApiKeyOutput
    apiKey: ApiKey
end

local record UpdateChannelNamespaceInput
    apiId: string
    name: string
    subscribeAuthModes: {AuthMode}
    publishAuthModes: {AuthMode}
    codeHandlers: string
    handlerConfigs: HandlerConfigs
end

local record UpdateChannelNamespaceOutput
    channelNamespace: ChannelNamespace
end

local record UpdateDataSourceInput
    apiId: string
    name: string
    description: string
    type: string
    serviceRoleArn: string
    dynamodbConfig: DynamodbDataSourceConfig
    lambdaConfig: LambdaDataSourceConfig
    elasticsearchConfig: ElasticsearchDataSourceConfig
    openSearchServiceConfig: OpenSearchServiceDataSourceConfig
    httpConfig: HttpDataSourceConfig
    relationalDatabaseConfig: RelationalDatabaseDataSourceConfig
    eventBridgeConfig: EventBridgeDataSourceConfig
    metricsConfig: string
end

local record UpdateDataSourceOutput
    dataSource: DataSource
end

local record UpdateDomainNameInput
    domainName: string
    description: string
end

local record UpdateDomainNameOutput
    domainNameConfig: DomainNameConfig
end

local record UpdateFunctionInput
    apiId: string
    name: string
    description: string
    functionId: string
    dataSourceName: string
    requestMappingTemplate: string
    responseMappingTemplate: string
    functionVersion: string
    syncConfig: SyncConfig
    maxBatchSize: number
    runtime: AppSyncRuntime
    code: string
end

local record UpdateFunctionOutput
    functionConfiguration: FunctionConfiguration
end

local record UpdateGraphqlApiInput
    apiId: string
    name: string
    logConfig: LogConfig
    authenticationType: string
    userPoolConfig: UserPoolConfig
    openIDConnectConfig: OpenIDConnectConfig
    additionalAuthenticationProviders: {AdditionalAuthenticationProvider}
    xrayEnabled: boolean
    lambdaAuthorizerConfig: LambdaAuthorizerConfig
    mergedApiExecutionRoleArn: string
    ownerContact: string
    introspectionConfig: string
    queryDepthLimit: number
    resolverCountLimit: number
    enhancedMetricsConfig: EnhancedMetricsConfig
end

local record UpdateGraphqlApiOutput
    graphqlApi: GraphqlApi
end

local record UpdateResolverInput
    apiId: string
    typeName: string
    fieldName: string
    dataSourceName: string
    requestMappingTemplate: string
    responseMappingTemplate: string
    kind: string
    pipelineConfig: PipelineConfig
    syncConfig: SyncConfig
    cachingConfig: CachingConfig
    maxBatchSize: number
    runtime: AppSyncRuntime
    code: string
    metricsConfig: string
end

local record UpdateResolverOutput
    resolver: Resolver
end

local record UpdateSourceApiAssociationInput
    associationId: string
    mergedApiIdentifier: string
    description: string
    sourceApiAssociationConfig: SourceApiAssociationConfig
end

local record UpdateSourceApiAssociationOutput
    sourceApiAssociation: SourceApiAssociation
end

local record UpdateTypeInput
    apiId: string
    typeName: string
    definition: string
    format: string
end

local record UpdateTypeOutput
    type: Type
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ApiKeyLimitExceededException
    message: string
end

local record ApiKeyValidityOutOfBoundsException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ApiLimitExceededException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record GraphQLSchemaException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ApiKeyValidityOutOfBoundsException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
    reason: string
    detail: BadRequestDetail
end

local record ConcurrentModificationException
    message: string
end

local record InternalFailureException
    message: string
end

local record NotFoundException
    message: string
end

local record UnauthorizedException
    message: string
end

local type GraphQLApiIntrospectionConfig = "ENABLED" | "DISABLED"

local type ApiCachingBehavior = "FULL_REQUEST_CACHING" | "PER_RESOLVER_CACHING" | "OPERATION_LEVEL_CACHING"

local type Ownership = "CURRENT_ACCOUNT" | "OTHER_ACCOUNTS"

local type SourceApiAssociationStatus = "MERGE_SCHEDULED" | "MERGE_FAILED" | "MERGE_SUCCESS" | "MERGE_IN_PROGRESS" | "AUTO_MERGE_SCHEDULE_FAILED" | "DELETION_SCHEDULED" | "DELETION_IN_PROGRESS" | "DELETION_FAILED"

local type GraphQLApiType = "GRAPHQL" | "MERGED"

local type GraphQLApiVisibility = "GLOBAL" | "PRIVATE"

local type AuthenticationType = "API_KEY" | "AWS_IAM" | "AMAZON_COGNITO_USER_POOLS" | "OPENID_CONNECT" | "AWS_LAMBDA"

local type DataSourceLevelMetricsConfig = "ENABLED" | "DISABLED"

local type CacheHealthMetricsConfig = "ENABLED" | "DISABLED"

local type ApiCacheType = "T2_SMALL" | "T2_MEDIUM" | "R4_LARGE" | "R4_XLARGE" | "R4_2XLARGE" | "R4_4XLARGE" | "R4_8XLARGE" | "SMALL" | "MEDIUM" | "LARGE" | "XLARGE" | "LARGE_2X" | "LARGE_4X" | "LARGE_8X" | "LARGE_12X"

local type SchemaStatus = "PROCESSING" | "ACTIVE" | "DELETING" | "FAILED" | "SUCCESS" | "NOT_APPLICABLE"

local type DataSourceType = "AWS_LAMBDA" | "AMAZON_DYNAMODB" | "AMAZON_ELASTICSEARCH" | "NONE" | "HTTP" | "RELATIONAL_DATABASE" | "AMAZON_OPENSEARCH_SERVICE" | "AMAZON_EVENTBRIDGE" | "AMAZON_BEDROCK_RUNTIME"

local type OutputType = "SDL" | "JSON"

local type ResolverLevelMetricsConfig = "ENABLED" | "DISABLED"

local type ResolverKind = "UNIT" | "PIPELINE"

local type DataSourceIntrospectionStatus = "PROCESSING" | "FAILED" | "SUCCESS"

local type TypeDefinitionFormat = "SDL" | "JSON"

local record M
    AssociateApiInput: AssociateApiInput
    AssociateApiOutput: AssociateApiOutput
    AssociateMergedGraphqlApiInput: AssociateMergedGraphqlApiInput
    AssociateMergedGraphqlApiOutput: AssociateMergedGraphqlApiOutput
    AssociateSourceGraphqlApiInput: AssociateSourceGraphqlApiInput
    AssociateSourceGraphqlApiOutput: AssociateSourceGraphqlApiOutput
    CreateApiInput: CreateApiInput
    CreateApiOutput: CreateApiOutput
    CreateApiCacheInput: CreateApiCacheInput
    CreateApiCacheOutput: CreateApiCacheOutput
    CreateApiKeyInput: CreateApiKeyInput
    CreateApiKeyOutput: CreateApiKeyOutput
    CreateChannelNamespaceInput: CreateChannelNamespaceInput
    CreateChannelNamespaceOutput: CreateChannelNamespaceOutput
    CreateDataSourceInput: CreateDataSourceInput
    CreateDataSourceOutput: CreateDataSourceOutput
    CreateDomainNameInput: CreateDomainNameInput
    CreateDomainNameOutput: CreateDomainNameOutput
    CreateFunctionInput: CreateFunctionInput
    CreateFunctionOutput: CreateFunctionOutput
    CreateGraphqlApiInput: CreateGraphqlApiInput
    CreateGraphqlApiOutput: CreateGraphqlApiOutput
    CreateResolverInput: CreateResolverInput
    CreateResolverOutput: CreateResolverOutput
    CreateTypeInput: CreateTypeInput
    CreateTypeOutput: CreateTypeOutput
    DeleteApiInput: DeleteApiInput
    DeleteApiOutput: DeleteApiOutput
    DeleteApiCacheInput: DeleteApiCacheInput
    DeleteApiCacheOutput: DeleteApiCacheOutput
    DeleteApiKeyInput: DeleteApiKeyInput
    DeleteApiKeyOutput: DeleteApiKeyOutput
    DeleteChannelNamespaceInput: DeleteChannelNamespaceInput
    DeleteChannelNamespaceOutput: DeleteChannelNamespaceOutput
    DeleteDataSourceInput: DeleteDataSourceInput
    DeleteDataSourceOutput: DeleteDataSourceOutput
    DeleteDomainNameInput: DeleteDomainNameInput
    DeleteDomainNameOutput: DeleteDomainNameOutput
    DeleteFunctionInput: DeleteFunctionInput
    DeleteFunctionOutput: DeleteFunctionOutput
    DeleteGraphqlApiInput: DeleteGraphqlApiInput
    DeleteGraphqlApiOutput: DeleteGraphqlApiOutput
    DeleteResolverInput: DeleteResolverInput
    DeleteResolverOutput: DeleteResolverOutput
    DeleteTypeInput: DeleteTypeInput
    DeleteTypeOutput: DeleteTypeOutput
    DisassociateApiInput: DisassociateApiInput
    DisassociateApiOutput: DisassociateApiOutput
    DisassociateMergedGraphqlApiInput: DisassociateMergedGraphqlApiInput
    DisassociateMergedGraphqlApiOutput: DisassociateMergedGraphqlApiOutput
    DisassociateSourceGraphqlApiInput: DisassociateSourceGraphqlApiInput
    DisassociateSourceGraphqlApiOutput: DisassociateSourceGraphqlApiOutput
    EvaluateCodeInput: EvaluateCodeInput
    EvaluateCodeOutput: EvaluateCodeOutput
    EvaluateMappingTemplateInput: EvaluateMappingTemplateInput
    EvaluateMappingTemplateOutput: EvaluateMappingTemplateOutput
    FlushApiCacheInput: FlushApiCacheInput
    FlushApiCacheOutput: FlushApiCacheOutput
    GetApiInput: GetApiInput
    GetApiOutput: GetApiOutput
    GetApiAssociationInput: GetApiAssociationInput
    GetApiAssociationOutput: GetApiAssociationOutput
    GetApiCacheInput: GetApiCacheInput
    GetApiCacheOutput: GetApiCacheOutput
    GetChannelNamespaceInput: GetChannelNamespaceInput
    GetChannelNamespaceOutput: GetChannelNamespaceOutput
    GetDataSourceInput: GetDataSourceInput
    GetDataSourceOutput: GetDataSourceOutput
    GetDataSourceIntrospectionInput: GetDataSourceIntrospectionInput
    GetDataSourceIntrospectionOutput: GetDataSourceIntrospectionOutput
    GetDomainNameInput: GetDomainNameInput
    GetDomainNameOutput: GetDomainNameOutput
    GetFunctionInput: GetFunctionInput
    GetFunctionOutput: GetFunctionOutput
    GetGraphqlApiInput: GetGraphqlApiInput
    GetGraphqlApiOutput: GetGraphqlApiOutput
    GetGraphqlApiEnvironmentVariablesInput: GetGraphqlApiEnvironmentVariablesInput
    GetGraphqlApiEnvironmentVariablesOutput: GetGraphqlApiEnvironmentVariablesOutput
    GetIntrospectionSchemaInput: GetIntrospectionSchemaInput
    GetIntrospectionSchemaOutput: GetIntrospectionSchemaOutput
    GetResolverInput: GetResolverInput
    GetResolverOutput: GetResolverOutput
    GetSchemaCreationStatusInput: GetSchemaCreationStatusInput
    GetSchemaCreationStatusOutput: GetSchemaCreationStatusOutput
    GetSourceApiAssociationInput: GetSourceApiAssociationInput
    GetSourceApiAssociationOutput: GetSourceApiAssociationOutput
    GetTypeInput: GetTypeInput
    GetTypeOutput: GetTypeOutput
    ListApiKeysInput: ListApiKeysInput
    ListApiKeysOutput: ListApiKeysOutput
    ListApisInput: ListApisInput
    ListApisOutput: ListApisOutput
    ListChannelNamespacesInput: ListChannelNamespacesInput
    ListChannelNamespacesOutput: ListChannelNamespacesOutput
    ListDataSourcesInput: ListDataSourcesInput
    ListDataSourcesOutput: ListDataSourcesOutput
    ListDomainNamesInput: ListDomainNamesInput
    ListDomainNamesOutput: ListDomainNamesOutput
    ListFunctionsInput: ListFunctionsInput
    ListFunctionsOutput: ListFunctionsOutput
    ListGraphqlApisInput: ListGraphqlApisInput
    ListGraphqlApisOutput: ListGraphqlApisOutput
    ListResolversInput: ListResolversInput
    ListResolversOutput: ListResolversOutput
    ListResolversByFunctionInput: ListResolversByFunctionInput
    ListResolversByFunctionOutput: ListResolversByFunctionOutput
    ListSourceApiAssociationsInput: ListSourceApiAssociationsInput
    ListSourceApiAssociationsOutput: ListSourceApiAssociationsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTypesInput: ListTypesInput
    ListTypesOutput: ListTypesOutput
    ListTypesByAssociationInput: ListTypesByAssociationInput
    ListTypesByAssociationOutput: ListTypesByAssociationOutput
    PutGraphqlApiEnvironmentVariablesInput: PutGraphqlApiEnvironmentVariablesInput
    PutGraphqlApiEnvironmentVariablesOutput: PutGraphqlApiEnvironmentVariablesOutput
    StartDataSourceIntrospectionInput: StartDataSourceIntrospectionInput
    StartDataSourceIntrospectionOutput: StartDataSourceIntrospectionOutput
    StartSchemaCreationInput: StartSchemaCreationInput
    StartSchemaCreationOutput: StartSchemaCreationOutput
    StartSchemaMergeInput: StartSchemaMergeInput
    StartSchemaMergeOutput: StartSchemaMergeOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateApiInput: UpdateApiInput
    UpdateApiOutput: UpdateApiOutput
    UpdateApiCacheInput: UpdateApiCacheInput
    UpdateApiCacheOutput: UpdateApiCacheOutput
    UpdateApiKeyInput: UpdateApiKeyInput
    UpdateApiKeyOutput: UpdateApiKeyOutput
    UpdateChannelNamespaceInput: UpdateChannelNamespaceInput
    UpdateChannelNamespaceOutput: UpdateChannelNamespaceOutput
    UpdateDataSourceInput: UpdateDataSourceInput
    UpdateDataSourceOutput: UpdateDataSourceOutput
    UpdateDomainNameInput: UpdateDomainNameInput
    UpdateDomainNameOutput: UpdateDomainNameOutput
    UpdateFunctionInput: UpdateFunctionInput
    UpdateFunctionOutput: UpdateFunctionOutput
    UpdateGraphqlApiInput: UpdateGraphqlApiInput
    UpdateGraphqlApiOutput: UpdateGraphqlApiOutput
    UpdateResolverInput: UpdateResolverInput
    UpdateResolverOutput: UpdateResolverOutput
    UpdateSourceApiAssociationInput: UpdateSourceApiAssociationInput
    UpdateSourceApiAssociationOutput: UpdateSourceApiAssociationOutput
    UpdateTypeInput: UpdateTypeInput
    UpdateTypeOutput: UpdateTypeOutput
end

return M
