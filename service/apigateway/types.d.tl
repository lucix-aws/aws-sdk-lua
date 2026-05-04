local record CreateApiKeyInput
    name: string
    description: string
    enabled: boolean
    generateDistinctId: boolean
    value: string
    stageKeys: {StageKey}
    customerId: string
    tags: {string : string}
end

local record CreateApiKeyOutput
    id: string
    value: string
    name: string
    customerId: string
    description: string
    enabled: boolean
    createdDate: number
    lastUpdatedDate: number
    stageKeys: {string}
    tags: {string : string}
end

local record CreateAuthorizerInput
    restApiId: string
    name: string
    type: string
    providerARNs: {string}
    authType: string
    authorizerUri: string
    authorizerCredentials: string
    identitySource: string
    identityValidationExpression: string
    authorizerResultTtlInSeconds: number
end

local record CreateAuthorizerOutput
    id: string
    name: string
    type: string
    providerARNs: {string}
    authType: string
    authorizerUri: string
    authorizerCredentials: string
    identitySource: string
    identityValidationExpression: string
    authorizerResultTtlInSeconds: number
end

local record CreateBasePathMappingInput
    domainName: string
    domainNameId: string
    basePath: string
    restApiId: string
    stage: string
end

local record CreateBasePathMappingOutput
    basePath: string
    restApiId: string
    stage: string
end

local record CreateDeploymentInput
    restApiId: string
    stageName: string
    stageDescription: string
    description: string
    cacheClusterEnabled: boolean
    cacheClusterSize: string
    variables: {string : string}
    canarySettings: DeploymentCanarySettings
    tracingEnabled: boolean
end

local record CreateDeploymentOutput
    id: string
    description: string
    createdDate: number
    apiSummary: {string : {string : MethodSnapshot}}
end

local record CreateDocumentationPartInput
    restApiId: string
    location: DocumentationPartLocation
    properties: string
end

local record CreateDocumentationPartOutput
    id: string
    location: DocumentationPartLocation
    properties: string
end

local record CreateDocumentationVersionInput
    restApiId: string
    documentationVersion: string
    stageName: string
    description: string
end

local record CreateDocumentationVersionOutput
    version: string
    createdDate: number
    description: string
end

local record CreateDomainNameInput
    domainName: string
    certificateName: string
    certificateBody: string
    certificatePrivateKey: string
    certificateChain: string
    certificateArn: string
    regionalCertificateName: string
    regionalCertificateArn: string
    endpointConfiguration: EndpointConfiguration
    tags: {string : string}
    securityPolicy: string
    endpointAccessMode: string
    mutualTlsAuthentication: MutualTlsAuthenticationInput
    ownershipVerificationCertificateArn: string
    policy: string
    routingMode: string
end

local record CreateDomainNameOutput
    domainName: string
    domainNameId: string
    domainNameArn: string
    certificateName: string
    certificateArn: string
    certificateUploadDate: number
    regionalDomainName: string
    regionalHostedZoneId: string
    regionalCertificateName: string
    regionalCertificateArn: string
    distributionDomainName: string
    distributionHostedZoneId: string
    endpointConfiguration: EndpointConfiguration
    domainNameStatus: string
    domainNameStatusMessage: string
    securityPolicy: string
    endpointAccessMode: string
    tags: {string : string}
    mutualTlsAuthentication: MutualTlsAuthentication
    ownershipVerificationCertificateArn: string
    managementPolicy: string
    policy: string
    routingMode: string
end

local record CreateDomainNameAccessAssociationInput
    domainNameArn: string
    accessAssociationSourceType: string
    accessAssociationSource: string
    tags: {string : string}
end

local record CreateDomainNameAccessAssociationOutput
    domainNameAccessAssociationArn: string
    domainNameArn: string
    accessAssociationSourceType: string
    accessAssociationSource: string
    tags: {string : string}
end

local record CreateModelInput
    restApiId: string
    name: string
    description: string
    schema: string
    contentType: string
end

local record CreateModelOutput
    id: string
    name: string
    description: string
    schema: string
    contentType: string
end

local record CreateRequestValidatorInput
    restApiId: string
    name: string
    validateRequestBody: boolean
    validateRequestParameters: boolean
end

local record CreateRequestValidatorOutput
    id: string
    name: string
    validateRequestBody: boolean
    validateRequestParameters: boolean
end

local record CreateResourceInput
    restApiId: string
    parentId: string
    pathPart: string
end

local record CreateResourceOutput
    id: string
    parentId: string
    pathPart: string
    path: string
    resourceMethods: {string : Method}
end

local record CreateRestApiInput
    name: string
    description: string
    version: string
    cloneFrom: string
    binaryMediaTypes: {string}
    minimumCompressionSize: number
    apiKeySource: string
    endpointConfiguration: EndpointConfiguration
    policy: string
    tags: {string : string}
    disableExecuteApiEndpoint: boolean
    securityPolicy: string
    endpointAccessMode: string
end

local record CreateRestApiOutput
    id: string
    name: string
    description: string
    createdDate: number
    version: string
    warnings: {string}
    binaryMediaTypes: {string}
    minimumCompressionSize: number
    apiKeySource: string
    endpointConfiguration: EndpointConfiguration
    policy: string
    tags: {string : string}
    disableExecuteApiEndpoint: boolean
    rootResourceId: string
    securityPolicy: string
    endpointAccessMode: string
    apiStatus: string
    apiStatusMessage: string
end

local record CreateStageInput
    restApiId: string
    stageName: string
    deploymentId: string
    description: string
    cacheClusterEnabled: boolean
    cacheClusterSize: string
    variables: {string : string}
    documentationVersion: string
    canarySettings: CanarySettings
    tracingEnabled: boolean
    tags: {string : string}
end

local record CreateStageOutput
    deploymentId: string
    clientCertificateId: string
    stageName: string
    description: string
    cacheClusterEnabled: boolean
    cacheClusterSize: string
    cacheClusterStatus: string
    methodSettings: {string : MethodSetting}
    variables: {string : string}
    documentationVersion: string
    accessLogSettings: AccessLogSettings
    canarySettings: CanarySettings
    tracingEnabled: boolean
    webAclArn: string
    tags: {string : string}
    createdDate: number
    lastUpdatedDate: number
end

local record CreateUsagePlanInput
    name: string
    description: string
    apiStages: {ApiStage}
    throttle: ThrottleSettings
    quota: QuotaSettings
    tags: {string : string}
end

local record CreateUsagePlanOutput
    id: string
    name: string
    description: string
    apiStages: {ApiStage}
    throttle: ThrottleSettings
    quota: QuotaSettings
    productCode: string
    tags: {string : string}
end

local record CreateUsagePlanKeyInput
    usagePlanId: string
    keyId: string
    keyType: string
end

local record CreateUsagePlanKeyOutput
    id: string
    type: string
    value: string
    name: string
end

local record CreateVpcLinkInput
    name: string
    description: string
    targetArns: {string}
    tags: {string : string}
end

local record CreateVpcLinkOutput
    id: string
    name: string
    description: string
    targetArns: {string}
    status: string
    statusMessage: string
    tags: {string : string}
end

local record DeleteApiKeyInput
    apiKey: string
end

local record DeleteApiKeyOutput
end

local record DeleteAuthorizerInput
    restApiId: string
    authorizerId: string
end

local record DeleteAuthorizerOutput
end

local record DeleteBasePathMappingInput
    domainName: string
    domainNameId: string
    basePath: string
end

local record DeleteBasePathMappingOutput
end

local record DeleteClientCertificateInput
    clientCertificateId: string
end

local record DeleteClientCertificateOutput
end

local record DeleteDeploymentInput
    restApiId: string
    deploymentId: string
end

local record DeleteDeploymentOutput
end

local record DeleteDocumentationPartInput
    restApiId: string
    documentationPartId: string
end

local record DeleteDocumentationPartOutput
end

local record DeleteDocumentationVersionInput
    restApiId: string
    documentationVersion: string
end

local record DeleteDocumentationVersionOutput
end

local record DeleteDomainNameInput
    domainName: string
    domainNameId: string
end

local record DeleteDomainNameOutput
end

local record DeleteDomainNameAccessAssociationInput
    domainNameAccessAssociationArn: string
end

local record DeleteDomainNameAccessAssociationOutput
end

local record DeleteGatewayResponseInput
    restApiId: string
    responseType: string
end

local record DeleteGatewayResponseOutput
end

local record DeleteIntegrationInput
    restApiId: string
    resourceId: string
    httpMethod: string
end

local record DeleteIntegrationOutput
end

local record DeleteIntegrationResponseInput
    restApiId: string
    resourceId: string
    httpMethod: string
    statusCode: string
end

local record DeleteIntegrationResponseOutput
end

local record DeleteMethodInput
    restApiId: string
    resourceId: string
    httpMethod: string
end

local record DeleteMethodOutput
end

local record DeleteMethodResponseInput
    restApiId: string
    resourceId: string
    httpMethod: string
    statusCode: string
end

local record DeleteMethodResponseOutput
end

local record DeleteModelInput
    restApiId: string
    modelName: string
end

local record DeleteModelOutput
end

local record DeleteRequestValidatorInput
    restApiId: string
    requestValidatorId: string
end

local record DeleteRequestValidatorOutput
end

local record DeleteResourceInput
    restApiId: string
    resourceId: string
end

local record DeleteResourceOutput
end

local record DeleteRestApiInput
    restApiId: string
end

local record DeleteRestApiOutput
end

local record DeleteStageInput
    restApiId: string
    stageName: string
end

local record DeleteStageOutput
end

local record DeleteUsagePlanInput
    usagePlanId: string
end

local record DeleteUsagePlanOutput
end

local record DeleteUsagePlanKeyInput
    usagePlanId: string
    keyId: string
end

local record DeleteUsagePlanKeyOutput
end

local record DeleteVpcLinkInput
    vpcLinkId: string
end

local record DeleteVpcLinkOutput
end

local record FlushStageAuthorizersCacheInput
    restApiId: string
    stageName: string
end

local record FlushStageAuthorizersCacheOutput
end

local record FlushStageCacheInput
    restApiId: string
    stageName: string
end

local record FlushStageCacheOutput
end

local record GenerateClientCertificateInput
    description: string
    tags: {string : string}
end

local record GenerateClientCertificateOutput
    clientCertificateId: string
    description: string
    pemEncodedCertificate: string
    createdDate: number
    expirationDate: number
    tags: {string : string}
end

local record GetAccountInput
end

local record GetAccountOutput
    cloudwatchRoleArn: string
    throttleSettings: ThrottleSettings
    features: {string}
    apiKeyVersion: string
end

local record GetApiKeyInput
    apiKey: string
    includeValue: boolean
end

local record GetApiKeyOutput
    id: string
    value: string
    name: string
    customerId: string
    description: string
    enabled: boolean
    createdDate: number
    lastUpdatedDate: number
    stageKeys: {string}
    tags: {string : string}
end

local record GetApiKeysInput
    position: string
    limit: number
    nameQuery: string
    customerId: string
    includeValues: boolean
end

local record GetApiKeysOutput
    warnings: {string}
    items: {ApiKey}
    position: string
end

local record GetAuthorizerInput
    restApiId: string
    authorizerId: string
end

local record GetAuthorizerOutput
    id: string
    name: string
    type: string
    providerARNs: {string}
    authType: string
    authorizerUri: string
    authorizerCredentials: string
    identitySource: string
    identityValidationExpression: string
    authorizerResultTtlInSeconds: number
end

local record GetAuthorizersInput
    restApiId: string
    position: string
    limit: number
end

local record GetAuthorizersOutput
    items: {Authorizer}
    position: string
end

local record GetBasePathMappingInput
    domainName: string
    domainNameId: string
    basePath: string
end

local record GetBasePathMappingOutput
    basePath: string
    restApiId: string
    stage: string
end

local record GetBasePathMappingsInput
    domainName: string
    domainNameId: string
    position: string
    limit: number
end

local record GetBasePathMappingsOutput
    items: {BasePathMapping}
    position: string
end

local record GetClientCertificateInput
    clientCertificateId: string
end

local record GetClientCertificateOutput
    clientCertificateId: string
    description: string
    pemEncodedCertificate: string
    createdDate: number
    expirationDate: number
    tags: {string : string}
end

local record GetClientCertificatesInput
    position: string
    limit: number
end

local record GetClientCertificatesOutput
    items: {ClientCertificate}
    position: string
end

local record GetDeploymentInput
    restApiId: string
    deploymentId: string
    embed: {string}
end

local record GetDeploymentOutput
    id: string
    description: string
    createdDate: number
    apiSummary: {string : {string : MethodSnapshot}}
end

local record GetDeploymentsInput
    restApiId: string
    position: string
    limit: number
end

local record GetDeploymentsOutput
    items: {Deployment}
    position: string
end

local record GetDocumentationPartInput
    restApiId: string
    documentationPartId: string
end

local record GetDocumentationPartOutput
    id: string
    location: DocumentationPartLocation
    properties: string
end

local record GetDocumentationPartsInput
    restApiId: string
    type: string
    nameQuery: string
    path: string
    position: string
    limit: number
    locationStatus: string
end

local record GetDocumentationPartsOutput
    items: {DocumentationPart}
    position: string
end

local record GetDocumentationVersionInput
    restApiId: string
    documentationVersion: string
end

local record GetDocumentationVersionOutput
    version: string
    createdDate: number
    description: string
end

local record GetDocumentationVersionsInput
    restApiId: string
    position: string
    limit: number
end

local record GetDocumentationVersionsOutput
    items: {DocumentationVersion}
    position: string
end

local record GetDomainNameInput
    domainName: string
    domainNameId: string
end

local record GetDomainNameOutput
    domainName: string
    domainNameId: string
    domainNameArn: string
    certificateName: string
    certificateArn: string
    certificateUploadDate: number
    regionalDomainName: string
    regionalHostedZoneId: string
    regionalCertificateName: string
    regionalCertificateArn: string
    distributionDomainName: string
    distributionHostedZoneId: string
    endpointConfiguration: EndpointConfiguration
    domainNameStatus: string
    domainNameStatusMessage: string
    securityPolicy: string
    endpointAccessMode: string
    tags: {string : string}
    mutualTlsAuthentication: MutualTlsAuthentication
    ownershipVerificationCertificateArn: string
    managementPolicy: string
    policy: string
    routingMode: string
end

local record GetDomainNameAccessAssociationsInput
    position: string
    limit: number
    resourceOwner: string
end

local record GetDomainNameAccessAssociationsOutput
    items: {DomainNameAccessAssociation}
    position: string
end

local record GetDomainNamesInput
    position: string
    limit: number
    resourceOwner: string
end

local record GetDomainNamesOutput
    items: {DomainName}
    position: string
end

local record GetExportInput
    restApiId: string
    stageName: string
    exportType: string
    parameters: {string : string}
    accepts: string
end

local record GetExportOutput
    contentType: string
    contentDisposition: string
    body: string
end

local record GetGatewayResponseInput
    restApiId: string
    responseType: string
end

local record GetGatewayResponseOutput
    responseType: string
    statusCode: string
    responseParameters: {string : string}
    responseTemplates: {string : string}
    defaultResponse: boolean
end

local record GetGatewayResponsesInput
    restApiId: string
    position: string
    limit: number
end

local record GetGatewayResponsesOutput
    items: {GatewayResponse}
    position: string
end

local record GetIntegrationInput
    restApiId: string
    resourceId: string
    httpMethod: string
end

local record GetIntegrationOutput
    type: string
    httpMethod: string
    uri: string
    connectionType: string
    connectionId: string
    credentials: string
    requestParameters: {string : string}
    requestTemplates: {string : string}
    passthroughBehavior: string
    contentHandling: string
    timeoutInMillis: number
    cacheNamespace: string
    cacheKeyParameters: {string}
    integrationResponses: {string : IntegrationResponse}
    tlsConfig: TlsConfig
    responseTransferMode: string
    integrationTarget: string
end

local record GetIntegrationResponseInput
    restApiId: string
    resourceId: string
    httpMethod: string
    statusCode: string
end

local record GetIntegrationResponseOutput
    statusCode: string
    selectionPattern: string
    responseParameters: {string : string}
    responseTemplates: {string : string}
    contentHandling: string
end

local record GetMethodInput
    restApiId: string
    resourceId: string
    httpMethod: string
end

local record GetMethodOutput
    httpMethod: string
    authorizationType: string
    authorizerId: string
    apiKeyRequired: boolean
    requestValidatorId: string
    operationName: string
    requestParameters: {string : boolean}
    requestModels: {string : string}
    methodResponses: {string : MethodResponse}
    methodIntegration: Integration
    authorizationScopes: {string}
end

local record GetMethodResponseInput
    restApiId: string
    resourceId: string
    httpMethod: string
    statusCode: string
end

local record GetMethodResponseOutput
    statusCode: string
    responseParameters: {string : boolean}
    responseModels: {string : string}
end

local record GetModelInput
    restApiId: string
    modelName: string
    flatten: boolean
end

local record GetModelOutput
    id: string
    name: string
    description: string
    schema: string
    contentType: string
end

local record GetModelsInput
    restApiId: string
    position: string
    limit: number
end

local record GetModelsOutput
    items: {Model}
    position: string
end

local record GetModelTemplateInput
    restApiId: string
    modelName: string
end

local record GetModelTemplateOutput
    value: string
end

local record GetRequestValidatorInput
    restApiId: string
    requestValidatorId: string
end

local record GetRequestValidatorOutput
    id: string
    name: string
    validateRequestBody: boolean
    validateRequestParameters: boolean
end

local record GetRequestValidatorsInput
    restApiId: string
    position: string
    limit: number
end

local record GetRequestValidatorsOutput
    items: {RequestValidator}
    position: string
end

local record GetResourceInput
    restApiId: string
    resourceId: string
    embed: {string}
end

local record GetResourceOutput
    id: string
    parentId: string
    pathPart: string
    path: string
    resourceMethods: {string : Method}
end

local record GetResourcesInput
    restApiId: string
    position: string
    limit: number
    embed: {string}
end

local record GetResourcesOutput
    items: {Resource}
    position: string
end

local record GetRestApiInput
    restApiId: string
end

local record GetRestApiOutput
    id: string
    name: string
    description: string
    createdDate: number
    version: string
    warnings: {string}
    binaryMediaTypes: {string}
    minimumCompressionSize: number
    apiKeySource: string
    endpointConfiguration: EndpointConfiguration
    policy: string
    tags: {string : string}
    disableExecuteApiEndpoint: boolean
    rootResourceId: string
    securityPolicy: string
    endpointAccessMode: string
    apiStatus: string
    apiStatusMessage: string
end

local record GetRestApisInput
    position: string
    limit: number
end

local record GetRestApisOutput
    items: {RestApi}
    position: string
end

local record GetSdkInput
    restApiId: string
    stageName: string
    sdkType: string
    parameters: {string : string}
end

local record GetSdkOutput
    contentType: string
    contentDisposition: string
    body: string
end

local record GetSdkTypeInput
    id: string
end

local record GetSdkTypeOutput
    id: string
    friendlyName: string
    description: string
    configurationProperties: {SdkConfigurationProperty}
end

local record GetSdkTypesInput
    position: string
    limit: number
end

local record GetSdkTypesOutput
    items: {SdkType}
end

local record GetStageInput
    restApiId: string
    stageName: string
end

local record GetStageOutput
    deploymentId: string
    clientCertificateId: string
    stageName: string
    description: string
    cacheClusterEnabled: boolean
    cacheClusterSize: string
    cacheClusterStatus: string
    methodSettings: {string : MethodSetting}
    variables: {string : string}
    documentationVersion: string
    accessLogSettings: AccessLogSettings
    canarySettings: CanarySettings
    tracingEnabled: boolean
    webAclArn: string
    tags: {string : string}
    createdDate: number
    lastUpdatedDate: number
end

local record GetStagesInput
    restApiId: string
    deploymentId: string
end

local record GetStagesOutput
    item: {Stage}
end

local record GetTagsInput
    resourceArn: string
    position: string
    limit: number
end

local record GetTagsOutput
    tags: {string : string}
end

local record GetUsageInput
    usagePlanId: string
    keyId: string
    startDate: string
    endDate: string
    position: string
    limit: number
end

local record GetUsageOutput
    usagePlanId: string
    startDate: string
    endDate: string
    items: {string : {{number}}}
    position: string
end

local record GetUsagePlanInput
    usagePlanId: string
end

local record GetUsagePlanOutput
    id: string
    name: string
    description: string
    apiStages: {ApiStage}
    throttle: ThrottleSettings
    quota: QuotaSettings
    productCode: string
    tags: {string : string}
end

local record GetUsagePlanKeyInput
    usagePlanId: string
    keyId: string
end

local record GetUsagePlanKeyOutput
    id: string
    type: string
    value: string
    name: string
end

local record GetUsagePlanKeysInput
    usagePlanId: string
    position: string
    limit: number
    nameQuery: string
end

local record GetUsagePlanKeysOutput
    items: {UsagePlanKey}
    position: string
end

local record GetUsagePlansInput
    position: string
    keyId: string
    limit: number
end

local record GetUsagePlansOutput
    items: {UsagePlan}
    position: string
end

local record GetVpcLinkInput
    vpcLinkId: string
end

local record GetVpcLinkOutput
    id: string
    name: string
    description: string
    targetArns: {string}
    status: string
    statusMessage: string
    tags: {string : string}
end

local record GetVpcLinksInput
    position: string
    limit: number
end

local record GetVpcLinksOutput
    items: {VpcLink}
    position: string
end

local record ImportApiKeysInput
    body: string
    format: string
    failOnWarnings: boolean
end

local record ImportApiKeysOutput
    ids: {string}
    warnings: {string}
end

local record ImportDocumentationPartsInput
    restApiId: string
    mode: string
    failOnWarnings: boolean
    body: string
end

local record ImportDocumentationPartsOutput
    ids: {string}
    warnings: {string}
end

local record ImportRestApiInput
    failOnWarnings: boolean
    parameters: {string : string}
    body: string
end

local record ImportRestApiOutput
    id: string
    name: string
    description: string
    createdDate: number
    version: string
    warnings: {string}
    binaryMediaTypes: {string}
    minimumCompressionSize: number
    apiKeySource: string
    endpointConfiguration: EndpointConfiguration
    policy: string
    tags: {string : string}
    disableExecuteApiEndpoint: boolean
    rootResourceId: string
    securityPolicy: string
    endpointAccessMode: string
    apiStatus: string
    apiStatusMessage: string
end

local record PutGatewayResponseInput
    restApiId: string
    responseType: string
    statusCode: string
    responseParameters: {string : string}
    responseTemplates: {string : string}
end

local record PutGatewayResponseOutput
    responseType: string
    statusCode: string
    responseParameters: {string : string}
    responseTemplates: {string : string}
    defaultResponse: boolean
end

local record PutIntegrationInput
    restApiId: string
    resourceId: string
    httpMethod: string
    type: string
    integrationHttpMethod: string
    uri: string
    connectionType: string
    connectionId: string
    credentials: string
    requestParameters: {string : string}
    requestTemplates: {string : string}
    passthroughBehavior: string
    cacheNamespace: string
    cacheKeyParameters: {string}
    contentHandling: string
    timeoutInMillis: number
    tlsConfig: TlsConfig
    responseTransferMode: string
    integrationTarget: string
end

local record PutIntegrationOutput
    type: string
    httpMethod: string
    uri: string
    connectionType: string
    connectionId: string
    credentials: string
    requestParameters: {string : string}
    requestTemplates: {string : string}
    passthroughBehavior: string
    contentHandling: string
    timeoutInMillis: number
    cacheNamespace: string
    cacheKeyParameters: {string}
    integrationResponses: {string : IntegrationResponse}
    tlsConfig: TlsConfig
    responseTransferMode: string
    integrationTarget: string
end

local record PutIntegrationResponseInput
    restApiId: string
    resourceId: string
    httpMethod: string
    statusCode: string
    selectionPattern: string
    responseParameters: {string : string}
    responseTemplates: {string : string}
    contentHandling: string
end

local record PutIntegrationResponseOutput
    statusCode: string
    selectionPattern: string
    responseParameters: {string : string}
    responseTemplates: {string : string}
    contentHandling: string
end

local record PutMethodInput
    restApiId: string
    resourceId: string
    httpMethod: string
    authorizationType: string
    authorizerId: string
    apiKeyRequired: boolean
    operationName: string
    requestParameters: {string : boolean}
    requestModels: {string : string}
    requestValidatorId: string
    authorizationScopes: {string}
end

local record PutMethodOutput
    httpMethod: string
    authorizationType: string
    authorizerId: string
    apiKeyRequired: boolean
    requestValidatorId: string
    operationName: string
    requestParameters: {string : boolean}
    requestModels: {string : string}
    methodResponses: {string : MethodResponse}
    methodIntegration: Integration
    authorizationScopes: {string}
end

local record PutMethodResponseInput
    restApiId: string
    resourceId: string
    httpMethod: string
    statusCode: string
    responseParameters: {string : boolean}
    responseModels: {string : string}
end

local record PutMethodResponseOutput
    statusCode: string
    responseParameters: {string : boolean}
    responseModels: {string : string}
end

local record PutRestApiInput
    restApiId: string
    mode: string
    failOnWarnings: boolean
    parameters: {string : string}
    body: string
end

local record PutRestApiOutput
    id: string
    name: string
    description: string
    createdDate: number
    version: string
    warnings: {string}
    binaryMediaTypes: {string}
    minimumCompressionSize: number
    apiKeySource: string
    endpointConfiguration: EndpointConfiguration
    policy: string
    tags: {string : string}
    disableExecuteApiEndpoint: boolean
    rootResourceId: string
    securityPolicy: string
    endpointAccessMode: string
    apiStatus: string
    apiStatusMessage: string
end

local record RejectDomainNameAccessAssociationInput
    domainNameAccessAssociationArn: string
    domainNameArn: string
end

local record RejectDomainNameAccessAssociationOutput
end

local record TagResourceInput
    resourceArn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record TestInvokeAuthorizerInput
    restApiId: string
    authorizerId: string
    headers: {string : string}
    multiValueHeaders: {string : {string}}
    pathWithQueryString: string
    body: string
    stageVariables: {string : string}
    additionalContext: {string : string}
end

local record TestInvokeAuthorizerOutput
    clientStatus: number
    log: string
    latency: number
    principalId: string
    policy: string
    authorization: {string : {string}}
    claims: {string : string}
end

local record TestInvokeMethodInput
    restApiId: string
    resourceId: string
    httpMethod: string
    pathWithQueryString: string
    body: string
    headers: {string : string}
    multiValueHeaders: {string : {string}}
    clientCertificateId: string
    stageVariables: {string : string}
end

local record TestInvokeMethodOutput
    status: number
    body: string
    headers: {string : string}
    multiValueHeaders: {string : {string}}
    log: string
    latency: number
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateAccountInput
    patchOperations: {PatchOperation}
end

local record UpdateAccountOutput
    cloudwatchRoleArn: string
    throttleSettings: ThrottleSettings
    features: {string}
    apiKeyVersion: string
end

local record UpdateApiKeyInput
    apiKey: string
    patchOperations: {PatchOperation}
end

local record UpdateApiKeyOutput
    id: string
    value: string
    name: string
    customerId: string
    description: string
    enabled: boolean
    createdDate: number
    lastUpdatedDate: number
    stageKeys: {string}
    tags: {string : string}
end

local record UpdateAuthorizerInput
    restApiId: string
    authorizerId: string
    patchOperations: {PatchOperation}
end

local record UpdateAuthorizerOutput
    id: string
    name: string
    type: string
    providerARNs: {string}
    authType: string
    authorizerUri: string
    authorizerCredentials: string
    identitySource: string
    identityValidationExpression: string
    authorizerResultTtlInSeconds: number
end

local record UpdateBasePathMappingInput
    domainName: string
    domainNameId: string
    basePath: string
    patchOperations: {PatchOperation}
end

local record UpdateBasePathMappingOutput
    basePath: string
    restApiId: string
    stage: string
end

local record UpdateClientCertificateInput
    clientCertificateId: string
    patchOperations: {PatchOperation}
end

local record UpdateClientCertificateOutput
    clientCertificateId: string
    description: string
    pemEncodedCertificate: string
    createdDate: number
    expirationDate: number
    tags: {string : string}
end

local record UpdateDeploymentInput
    restApiId: string
    deploymentId: string
    patchOperations: {PatchOperation}
end

local record UpdateDeploymentOutput
    id: string
    description: string
    createdDate: number
    apiSummary: {string : {string : MethodSnapshot}}
end

local record UpdateDocumentationPartInput
    restApiId: string
    documentationPartId: string
    patchOperations: {PatchOperation}
end

local record UpdateDocumentationPartOutput
    id: string
    location: DocumentationPartLocation
    properties: string
end

local record UpdateDocumentationVersionInput
    restApiId: string
    documentationVersion: string
    patchOperations: {PatchOperation}
end

local record UpdateDocumentationVersionOutput
    version: string
    createdDate: number
    description: string
end

local record UpdateDomainNameInput
    domainName: string
    domainNameId: string
    patchOperations: {PatchOperation}
end

local record UpdateDomainNameOutput
    domainName: string
    domainNameId: string
    domainNameArn: string
    certificateName: string
    certificateArn: string
    certificateUploadDate: number
    regionalDomainName: string
    regionalHostedZoneId: string
    regionalCertificateName: string
    regionalCertificateArn: string
    distributionDomainName: string
    distributionHostedZoneId: string
    endpointConfiguration: EndpointConfiguration
    domainNameStatus: string
    domainNameStatusMessage: string
    securityPolicy: string
    endpointAccessMode: string
    tags: {string : string}
    mutualTlsAuthentication: MutualTlsAuthentication
    ownershipVerificationCertificateArn: string
    managementPolicy: string
    policy: string
    routingMode: string
end

local record UpdateGatewayResponseInput
    restApiId: string
    responseType: string
    patchOperations: {PatchOperation}
end

local record UpdateGatewayResponseOutput
    responseType: string
    statusCode: string
    responseParameters: {string : string}
    responseTemplates: {string : string}
    defaultResponse: boolean
end

local record UpdateIntegrationInput
    restApiId: string
    resourceId: string
    httpMethod: string
    patchOperations: {PatchOperation}
end

local record UpdateIntegrationOutput
    type: string
    httpMethod: string
    uri: string
    connectionType: string
    connectionId: string
    credentials: string
    requestParameters: {string : string}
    requestTemplates: {string : string}
    passthroughBehavior: string
    contentHandling: string
    timeoutInMillis: number
    cacheNamespace: string
    cacheKeyParameters: {string}
    integrationResponses: {string : IntegrationResponse}
    tlsConfig: TlsConfig
    responseTransferMode: string
    integrationTarget: string
end

local record UpdateIntegrationResponseInput
    restApiId: string
    resourceId: string
    httpMethod: string
    statusCode: string
    patchOperations: {PatchOperation}
end

local record UpdateIntegrationResponseOutput
    statusCode: string
    selectionPattern: string
    responseParameters: {string : string}
    responseTemplates: {string : string}
    contentHandling: string
end

local record UpdateMethodInput
    restApiId: string
    resourceId: string
    httpMethod: string
    patchOperations: {PatchOperation}
end

local record UpdateMethodOutput
    httpMethod: string
    authorizationType: string
    authorizerId: string
    apiKeyRequired: boolean
    requestValidatorId: string
    operationName: string
    requestParameters: {string : boolean}
    requestModels: {string : string}
    methodResponses: {string : MethodResponse}
    methodIntegration: Integration
    authorizationScopes: {string}
end

local record UpdateMethodResponseInput
    restApiId: string
    resourceId: string
    httpMethod: string
    statusCode: string
    patchOperations: {PatchOperation}
end

local record UpdateMethodResponseOutput
    statusCode: string
    responseParameters: {string : boolean}
    responseModels: {string : string}
end

local record UpdateModelInput
    restApiId: string
    modelName: string
    patchOperations: {PatchOperation}
end

local record UpdateModelOutput
    id: string
    name: string
    description: string
    schema: string
    contentType: string
end

local record UpdateRequestValidatorInput
    restApiId: string
    requestValidatorId: string
    patchOperations: {PatchOperation}
end

local record UpdateRequestValidatorOutput
    id: string
    name: string
    validateRequestBody: boolean
    validateRequestParameters: boolean
end

local record UpdateResourceInput
    restApiId: string
    resourceId: string
    patchOperations: {PatchOperation}
end

local record UpdateResourceOutput
    id: string
    parentId: string
    pathPart: string
    path: string
    resourceMethods: {string : Method}
end

local record UpdateRestApiInput
    restApiId: string
    patchOperations: {PatchOperation}
end

local record UpdateRestApiOutput
    id: string
    name: string
    description: string
    createdDate: number
    version: string
    warnings: {string}
    binaryMediaTypes: {string}
    minimumCompressionSize: number
    apiKeySource: string
    endpointConfiguration: EndpointConfiguration
    policy: string
    tags: {string : string}
    disableExecuteApiEndpoint: boolean
    rootResourceId: string
    securityPolicy: string
    endpointAccessMode: string
    apiStatus: string
    apiStatusMessage: string
end

local record UpdateStageInput
    restApiId: string
    stageName: string
    patchOperations: {PatchOperation}
end

local record UpdateStageOutput
    deploymentId: string
    clientCertificateId: string
    stageName: string
    description: string
    cacheClusterEnabled: boolean
    cacheClusterSize: string
    cacheClusterStatus: string
    methodSettings: {string : MethodSetting}
    variables: {string : string}
    documentationVersion: string
    accessLogSettings: AccessLogSettings
    canarySettings: CanarySettings
    tracingEnabled: boolean
    webAclArn: string
    tags: {string : string}
    createdDate: number
    lastUpdatedDate: number
end

local record UpdateUsageInput
    usagePlanId: string
    keyId: string
    patchOperations: {PatchOperation}
end

local record UpdateUsageOutput
    usagePlanId: string
    startDate: string
    endDate: string
    items: {string : {{number}}}
    position: string
end

local record UpdateUsagePlanInput
    usagePlanId: string
    patchOperations: {PatchOperation}
end

local record UpdateUsagePlanOutput
    id: string
    name: string
    description: string
    apiStages: {ApiStage}
    throttle: ThrottleSettings
    quota: QuotaSettings
    productCode: string
    tags: {string : string}
end

local record UpdateVpcLinkInput
    vpcLinkId: string
    patchOperations: {PatchOperation}
end

local record UpdateVpcLinkOutput
    id: string
    name: string
    description: string
    targetArns: {string}
    status: string
    statusMessage: string
    tags: {string : string}
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    retryAfterSeconds: string
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    retryAfterSeconds: string
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    retryAfterSeconds: string
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    retryAfterSeconds: string
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record TooManyRequestsException
    retryAfterSeconds: string
    message: string
end

local record UnauthorizedException
    message: string
end

local type ApiKeySourceType = "HEADER" | "AUTHORIZER"

local type LocationStatusType = "DOCUMENTED" | "UNDOCUMENTED"

local type CacheClusterSize = "0.5" | "1.6" | "6.1" | "13.5" | "28.4" | "58.2" | "118" | "237"

local type VpcLinkStatus = "AVAILABLE" | "PENDING" | "DELETING" | "FAILED"

local type EndpointAccessMode = "BASIC" | "STRICT"

local type AccessAssociationSourceType = "VPCE"

local type RoutingMode = "BASE_PATH_MAPPING_ONLY" | "ROUTING_RULE_ONLY" | "ROUTING_RULE_THEN_BASE_PATH_MAPPING"

local type CacheClusterStatus = "CREATE_IN_PROGRESS" | "AVAILABLE" | "DELETE_IN_PROGRESS" | "NOT_AVAILABLE" | "FLUSH_IN_PROGRESS"

local type DocumentationPartType = "API" | "AUTHORIZER" | "MODEL" | "RESOURCE" | "METHOD" | "PATH_PARAMETER" | "QUERY_PARAMETER" | "REQUEST_HEADER" | "REQUEST_BODY" | "RESPONSE" | "RESPONSE_HEADER" | "RESPONSE_BODY"

local type GatewayResponseType = "DEFAULT_4XX" | "DEFAULT_5XX" | "RESOURCE_NOT_FOUND" | "UNAUTHORIZED" | "INVALID_API_KEY" | "ACCESS_DENIED" | "AUTHORIZER_FAILURE" | "AUTHORIZER_CONFIGURATION_ERROR" | "INVALID_SIGNATURE" | "EXPIRED_TOKEN" | "MISSING_AUTHENTICATION_TOKEN" | "INTEGRATION_FAILURE" | "INTEGRATION_TIMEOUT" | "API_CONFIGURATION_ERROR" | "UNSUPPORTED_MEDIA_TYPE" | "BAD_REQUEST_PARAMETERS" | "BAD_REQUEST_BODY" | "REQUEST_TOO_LARGE" | "THROTTLED" | "QUOTA_EXCEEDED" | "WAF_FILTERED"

local type ConnectionType = "INTERNET" | "VPC_LINK"

local type ResponseTransferMode = "BUFFERED" | "STREAM"

local type DomainNameStatus = "AVAILABLE" | "UPDATING" | "PENDING" | "PENDING_CERTIFICATE_REIMPORT" | "PENDING_OWNERSHIP_VERIFICATION" | "FAILED"

local type ApiStatus = "UPDATING" | "AVAILABLE" | "PENDING" | "FAILED"

local type SecurityPolicy = "TLS_1_0" | "TLS_1_2" | "SecurityPolicy_TLS13_1_3_2025_09" | "SecurityPolicy_TLS13_1_3_FIPS_2025_09" | "SecurityPolicy_TLS13_1_2_PFS_PQ_2025_09" | "SecurityPolicy_TLS13_1_2_FIPS_PQ_2025_09" | "SecurityPolicy_TLS13_1_2_FIPS_PFS_PQ_2025_09" | "SecurityPolicy_TLS13_1_2_PQ_2025_09" | "SecurityPolicy_TLS13_1_2_2021_06" | "SecurityPolicy_TLS13_2025_EDGE" | "SecurityPolicy_TLS12_PFS_2025_EDGE" | "SecurityPolicy_TLS12_2018_EDGE"

local type ApiKeysFormat = "csv"

local type ResourceOwner = "SELF" | "OTHER_ACCOUNTS"

local type AuthorizerType = "TOKEN" | "REQUEST" | "COGNITO_USER_POOLS"

local type IntegrationType = "HTTP" | "AWS" | "MOCK" | "HTTP_PROXY" | "AWS_PROXY"

local type PutMode = "merge" | "overwrite"

local type ContentHandlingStrategy = "CONVERT_TO_BINARY" | "CONVERT_TO_TEXT"

local record M
    CreateApiKeyInput: CreateApiKeyInput
    CreateApiKeyOutput: CreateApiKeyOutput
    CreateAuthorizerInput: CreateAuthorizerInput
    CreateAuthorizerOutput: CreateAuthorizerOutput
    CreateBasePathMappingInput: CreateBasePathMappingInput
    CreateBasePathMappingOutput: CreateBasePathMappingOutput
    CreateDeploymentInput: CreateDeploymentInput
    CreateDeploymentOutput: CreateDeploymentOutput
    CreateDocumentationPartInput: CreateDocumentationPartInput
    CreateDocumentationPartOutput: CreateDocumentationPartOutput
    CreateDocumentationVersionInput: CreateDocumentationVersionInput
    CreateDocumentationVersionOutput: CreateDocumentationVersionOutput
    CreateDomainNameInput: CreateDomainNameInput
    CreateDomainNameOutput: CreateDomainNameOutput
    CreateDomainNameAccessAssociationInput: CreateDomainNameAccessAssociationInput
    CreateDomainNameAccessAssociationOutput: CreateDomainNameAccessAssociationOutput
    CreateModelInput: CreateModelInput
    CreateModelOutput: CreateModelOutput
    CreateRequestValidatorInput: CreateRequestValidatorInput
    CreateRequestValidatorOutput: CreateRequestValidatorOutput
    CreateResourceInput: CreateResourceInput
    CreateResourceOutput: CreateResourceOutput
    CreateRestApiInput: CreateRestApiInput
    CreateRestApiOutput: CreateRestApiOutput
    CreateStageInput: CreateStageInput
    CreateStageOutput: CreateStageOutput
    CreateUsagePlanInput: CreateUsagePlanInput
    CreateUsagePlanOutput: CreateUsagePlanOutput
    CreateUsagePlanKeyInput: CreateUsagePlanKeyInput
    CreateUsagePlanKeyOutput: CreateUsagePlanKeyOutput
    CreateVpcLinkInput: CreateVpcLinkInput
    CreateVpcLinkOutput: CreateVpcLinkOutput
    DeleteApiKeyInput: DeleteApiKeyInput
    DeleteApiKeyOutput: DeleteApiKeyOutput
    DeleteAuthorizerInput: DeleteAuthorizerInput
    DeleteAuthorizerOutput: DeleteAuthorizerOutput
    DeleteBasePathMappingInput: DeleteBasePathMappingInput
    DeleteBasePathMappingOutput: DeleteBasePathMappingOutput
    DeleteClientCertificateInput: DeleteClientCertificateInput
    DeleteClientCertificateOutput: DeleteClientCertificateOutput
    DeleteDeploymentInput: DeleteDeploymentInput
    DeleteDeploymentOutput: DeleteDeploymentOutput
    DeleteDocumentationPartInput: DeleteDocumentationPartInput
    DeleteDocumentationPartOutput: DeleteDocumentationPartOutput
    DeleteDocumentationVersionInput: DeleteDocumentationVersionInput
    DeleteDocumentationVersionOutput: DeleteDocumentationVersionOutput
    DeleteDomainNameInput: DeleteDomainNameInput
    DeleteDomainNameOutput: DeleteDomainNameOutput
    DeleteDomainNameAccessAssociationInput: DeleteDomainNameAccessAssociationInput
    DeleteDomainNameAccessAssociationOutput: DeleteDomainNameAccessAssociationOutput
    DeleteGatewayResponseInput: DeleteGatewayResponseInput
    DeleteGatewayResponseOutput: DeleteGatewayResponseOutput
    DeleteIntegrationInput: DeleteIntegrationInput
    DeleteIntegrationOutput: DeleteIntegrationOutput
    DeleteIntegrationResponseInput: DeleteIntegrationResponseInput
    DeleteIntegrationResponseOutput: DeleteIntegrationResponseOutput
    DeleteMethodInput: DeleteMethodInput
    DeleteMethodOutput: DeleteMethodOutput
    DeleteMethodResponseInput: DeleteMethodResponseInput
    DeleteMethodResponseOutput: DeleteMethodResponseOutput
    DeleteModelInput: DeleteModelInput
    DeleteModelOutput: DeleteModelOutput
    DeleteRequestValidatorInput: DeleteRequestValidatorInput
    DeleteRequestValidatorOutput: DeleteRequestValidatorOutput
    DeleteResourceInput: DeleteResourceInput
    DeleteResourceOutput: DeleteResourceOutput
    DeleteRestApiInput: DeleteRestApiInput
    DeleteRestApiOutput: DeleteRestApiOutput
    DeleteStageInput: DeleteStageInput
    DeleteStageOutput: DeleteStageOutput
    DeleteUsagePlanInput: DeleteUsagePlanInput
    DeleteUsagePlanOutput: DeleteUsagePlanOutput
    DeleteUsagePlanKeyInput: DeleteUsagePlanKeyInput
    DeleteUsagePlanKeyOutput: DeleteUsagePlanKeyOutput
    DeleteVpcLinkInput: DeleteVpcLinkInput
    DeleteVpcLinkOutput: DeleteVpcLinkOutput
    FlushStageAuthorizersCacheInput: FlushStageAuthorizersCacheInput
    FlushStageAuthorizersCacheOutput: FlushStageAuthorizersCacheOutput
    FlushStageCacheInput: FlushStageCacheInput
    FlushStageCacheOutput: FlushStageCacheOutput
    GenerateClientCertificateInput: GenerateClientCertificateInput
    GenerateClientCertificateOutput: GenerateClientCertificateOutput
    GetAccountInput: GetAccountInput
    GetAccountOutput: GetAccountOutput
    GetApiKeyInput: GetApiKeyInput
    GetApiKeyOutput: GetApiKeyOutput
    GetApiKeysInput: GetApiKeysInput
    GetApiKeysOutput: GetApiKeysOutput
    GetAuthorizerInput: GetAuthorizerInput
    GetAuthorizerOutput: GetAuthorizerOutput
    GetAuthorizersInput: GetAuthorizersInput
    GetAuthorizersOutput: GetAuthorizersOutput
    GetBasePathMappingInput: GetBasePathMappingInput
    GetBasePathMappingOutput: GetBasePathMappingOutput
    GetBasePathMappingsInput: GetBasePathMappingsInput
    GetBasePathMappingsOutput: GetBasePathMappingsOutput
    GetClientCertificateInput: GetClientCertificateInput
    GetClientCertificateOutput: GetClientCertificateOutput
    GetClientCertificatesInput: GetClientCertificatesInput
    GetClientCertificatesOutput: GetClientCertificatesOutput
    GetDeploymentInput: GetDeploymentInput
    GetDeploymentOutput: GetDeploymentOutput
    GetDeploymentsInput: GetDeploymentsInput
    GetDeploymentsOutput: GetDeploymentsOutput
    GetDocumentationPartInput: GetDocumentationPartInput
    GetDocumentationPartOutput: GetDocumentationPartOutput
    GetDocumentationPartsInput: GetDocumentationPartsInput
    GetDocumentationPartsOutput: GetDocumentationPartsOutput
    GetDocumentationVersionInput: GetDocumentationVersionInput
    GetDocumentationVersionOutput: GetDocumentationVersionOutput
    GetDocumentationVersionsInput: GetDocumentationVersionsInput
    GetDocumentationVersionsOutput: GetDocumentationVersionsOutput
    GetDomainNameInput: GetDomainNameInput
    GetDomainNameOutput: GetDomainNameOutput
    GetDomainNameAccessAssociationsInput: GetDomainNameAccessAssociationsInput
    GetDomainNameAccessAssociationsOutput: GetDomainNameAccessAssociationsOutput
    GetDomainNamesInput: GetDomainNamesInput
    GetDomainNamesOutput: GetDomainNamesOutput
    GetExportInput: GetExportInput
    GetExportOutput: GetExportOutput
    GetGatewayResponseInput: GetGatewayResponseInput
    GetGatewayResponseOutput: GetGatewayResponseOutput
    GetGatewayResponsesInput: GetGatewayResponsesInput
    GetGatewayResponsesOutput: GetGatewayResponsesOutput
    GetIntegrationInput: GetIntegrationInput
    GetIntegrationOutput: GetIntegrationOutput
    GetIntegrationResponseInput: GetIntegrationResponseInput
    GetIntegrationResponseOutput: GetIntegrationResponseOutput
    GetMethodInput: GetMethodInput
    GetMethodOutput: GetMethodOutput
    GetMethodResponseInput: GetMethodResponseInput
    GetMethodResponseOutput: GetMethodResponseOutput
    GetModelInput: GetModelInput
    GetModelOutput: GetModelOutput
    GetModelsInput: GetModelsInput
    GetModelsOutput: GetModelsOutput
    GetModelTemplateInput: GetModelTemplateInput
    GetModelTemplateOutput: GetModelTemplateOutput
    GetRequestValidatorInput: GetRequestValidatorInput
    GetRequestValidatorOutput: GetRequestValidatorOutput
    GetRequestValidatorsInput: GetRequestValidatorsInput
    GetRequestValidatorsOutput: GetRequestValidatorsOutput
    GetResourceInput: GetResourceInput
    GetResourceOutput: GetResourceOutput
    GetResourcesInput: GetResourcesInput
    GetResourcesOutput: GetResourcesOutput
    GetRestApiInput: GetRestApiInput
    GetRestApiOutput: GetRestApiOutput
    GetRestApisInput: GetRestApisInput
    GetRestApisOutput: GetRestApisOutput
    GetSdkInput: GetSdkInput
    GetSdkOutput: GetSdkOutput
    GetSdkTypeInput: GetSdkTypeInput
    GetSdkTypeOutput: GetSdkTypeOutput
    GetSdkTypesInput: GetSdkTypesInput
    GetSdkTypesOutput: GetSdkTypesOutput
    GetStageInput: GetStageInput
    GetStageOutput: GetStageOutput
    GetStagesInput: GetStagesInput
    GetStagesOutput: GetStagesOutput
    GetTagsInput: GetTagsInput
    GetTagsOutput: GetTagsOutput
    GetUsageInput: GetUsageInput
    GetUsageOutput: GetUsageOutput
    GetUsagePlanInput: GetUsagePlanInput
    GetUsagePlanOutput: GetUsagePlanOutput
    GetUsagePlanKeyInput: GetUsagePlanKeyInput
    GetUsagePlanKeyOutput: GetUsagePlanKeyOutput
    GetUsagePlanKeysInput: GetUsagePlanKeysInput
    GetUsagePlanKeysOutput: GetUsagePlanKeysOutput
    GetUsagePlansInput: GetUsagePlansInput
    GetUsagePlansOutput: GetUsagePlansOutput
    GetVpcLinkInput: GetVpcLinkInput
    GetVpcLinkOutput: GetVpcLinkOutput
    GetVpcLinksInput: GetVpcLinksInput
    GetVpcLinksOutput: GetVpcLinksOutput
    ImportApiKeysInput: ImportApiKeysInput
    ImportApiKeysOutput: ImportApiKeysOutput
    ImportDocumentationPartsInput: ImportDocumentationPartsInput
    ImportDocumentationPartsOutput: ImportDocumentationPartsOutput
    ImportRestApiInput: ImportRestApiInput
    ImportRestApiOutput: ImportRestApiOutput
    PutGatewayResponseInput: PutGatewayResponseInput
    PutGatewayResponseOutput: PutGatewayResponseOutput
    PutIntegrationInput: PutIntegrationInput
    PutIntegrationOutput: PutIntegrationOutput
    PutIntegrationResponseInput: PutIntegrationResponseInput
    PutIntegrationResponseOutput: PutIntegrationResponseOutput
    PutMethodInput: PutMethodInput
    PutMethodOutput: PutMethodOutput
    PutMethodResponseInput: PutMethodResponseInput
    PutMethodResponseOutput: PutMethodResponseOutput
    PutRestApiInput: PutRestApiInput
    PutRestApiOutput: PutRestApiOutput
    RejectDomainNameAccessAssociationInput: RejectDomainNameAccessAssociationInput
    RejectDomainNameAccessAssociationOutput: RejectDomainNameAccessAssociationOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TestInvokeAuthorizerInput: TestInvokeAuthorizerInput
    TestInvokeAuthorizerOutput: TestInvokeAuthorizerOutput
    TestInvokeMethodInput: TestInvokeMethodInput
    TestInvokeMethodOutput: TestInvokeMethodOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAccountInput: UpdateAccountInput
    UpdateAccountOutput: UpdateAccountOutput
    UpdateApiKeyInput: UpdateApiKeyInput
    UpdateApiKeyOutput: UpdateApiKeyOutput
    UpdateAuthorizerInput: UpdateAuthorizerInput
    UpdateAuthorizerOutput: UpdateAuthorizerOutput
    UpdateBasePathMappingInput: UpdateBasePathMappingInput
    UpdateBasePathMappingOutput: UpdateBasePathMappingOutput
    UpdateClientCertificateInput: UpdateClientCertificateInput
    UpdateClientCertificateOutput: UpdateClientCertificateOutput
    UpdateDeploymentInput: UpdateDeploymentInput
    UpdateDeploymentOutput: UpdateDeploymentOutput
    UpdateDocumentationPartInput: UpdateDocumentationPartInput
    UpdateDocumentationPartOutput: UpdateDocumentationPartOutput
    UpdateDocumentationVersionInput: UpdateDocumentationVersionInput
    UpdateDocumentationVersionOutput: UpdateDocumentationVersionOutput
    UpdateDomainNameInput: UpdateDomainNameInput
    UpdateDomainNameOutput: UpdateDomainNameOutput
    UpdateGatewayResponseInput: UpdateGatewayResponseInput
    UpdateGatewayResponseOutput: UpdateGatewayResponseOutput
    UpdateIntegrationInput: UpdateIntegrationInput
    UpdateIntegrationOutput: UpdateIntegrationOutput
    UpdateIntegrationResponseInput: UpdateIntegrationResponseInput
    UpdateIntegrationResponseOutput: UpdateIntegrationResponseOutput
    UpdateMethodInput: UpdateMethodInput
    UpdateMethodOutput: UpdateMethodOutput
    UpdateMethodResponseInput: UpdateMethodResponseInput
    UpdateMethodResponseOutput: UpdateMethodResponseOutput
    UpdateModelInput: UpdateModelInput
    UpdateModelOutput: UpdateModelOutput
    UpdateRequestValidatorInput: UpdateRequestValidatorInput
    UpdateRequestValidatorOutput: UpdateRequestValidatorOutput
    UpdateResourceInput: UpdateResourceInput
    UpdateResourceOutput: UpdateResourceOutput
    UpdateRestApiInput: UpdateRestApiInput
    UpdateRestApiOutput: UpdateRestApiOutput
    UpdateStageInput: UpdateStageInput
    UpdateStageOutput: UpdateStageOutput
    UpdateUsageInput: UpdateUsageInput
    UpdateUsageOutput: UpdateUsageOutput
    UpdateUsagePlanInput: UpdateUsagePlanInput
    UpdateUsagePlanOutput: UpdateUsagePlanOutput
    UpdateVpcLinkInput: UpdateVpcLinkInput
    UpdateVpcLinkOutput: UpdateVpcLinkOutput
end

return M
