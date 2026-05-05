local record CreateApiInput
    ApiKeySelectionExpression: string
    CorsConfiguration: Cors
    CredentialsArn: string
    Description: string
    DisableSchemaValidation: boolean
    DisableExecuteApiEndpoint: boolean
    IpAddressType: string
    Name: string
    ProtocolType: string
    RouteKey: string
    RouteSelectionExpression: string
    Tags: {string : string}
    Target: string
    Version: string
end

local record CreateApiOutput
    ApiEndpoint: string
    ApiGatewayManaged: boolean
    ApiId: string
    ApiKeySelectionExpression: string
    CorsConfiguration: Cors
    CreatedDate: number
    Description: string
    DisableSchemaValidation: boolean
    DisableExecuteApiEndpoint: boolean
    ImportInfo: {string}
    IpAddressType: string
    Name: string
    ProtocolType: string
    RouteSelectionExpression: string
    Tags: {string : string}
    Version: string
    Warnings: {string}
end

local record CreateApiMappingInput
    ApiId: string
    ApiMappingKey: string
    DomainName: string
    Stage: string
end

local record CreateApiMappingOutput
    ApiId: string
    ApiMappingId: string
    ApiMappingKey: string
    Stage: string
end

local record CreateAuthorizerInput
    ApiId: string
    AuthorizerCredentialsArn: string
    AuthorizerPayloadFormatVersion: string
    AuthorizerResultTtlInSeconds: number
    AuthorizerType: string
    AuthorizerUri: string
    EnableSimpleResponses: boolean
    IdentitySource: {string}
    IdentityValidationExpression: string
    JwtConfiguration: JWTConfiguration
    Name: string
end

local record CreateAuthorizerOutput
    AuthorizerCredentialsArn: string
    AuthorizerId: string
    AuthorizerPayloadFormatVersion: string
    AuthorizerResultTtlInSeconds: number
    AuthorizerType: string
    AuthorizerUri: string
    EnableSimpleResponses: boolean
    IdentitySource: {string}
    IdentityValidationExpression: string
    JwtConfiguration: JWTConfiguration
    Name: string
end

local record CreateDeploymentInput
    ApiId: string
    Description: string
    StageName: string
end

local record CreateDeploymentOutput
    AutoDeployed: boolean
    CreatedDate: number
    DeploymentId: string
    DeploymentStatus: string
    DeploymentStatusMessage: string
    Description: string
end

local record CreateDomainNameInput
    DomainName: string
    DomainNameConfigurations: {DomainNameConfiguration}
    MutualTlsAuthentication: MutualTlsAuthenticationInput
    RoutingMode: string
    Tags: {string : string}
end

local record CreateDomainNameOutput
    ApiMappingSelectionExpression: string
    DomainName: string
    DomainNameArn: string
    DomainNameConfigurations: {DomainNameConfiguration}
    MutualTlsAuthentication: MutualTlsAuthentication
    RoutingMode: string
    Tags: {string : string}
end

local record CreateIntegrationInput
    ApiId: string
    ConnectionId: string
    ConnectionType: string
    ContentHandlingStrategy: string
    CredentialsArn: string
    Description: string
    IntegrationMethod: string
    IntegrationSubtype: string
    IntegrationType: string
    IntegrationUri: string
    PassthroughBehavior: string
    PayloadFormatVersion: string
    RequestParameters: {string : string}
    RequestTemplates: {string : string}
    ResponseParameters: {string : {string : string}}
    TemplateSelectionExpression: string
    TimeoutInMillis: number
    TlsConfig: TlsConfigInput
end

local record CreateIntegrationOutput
    ApiGatewayManaged: boolean
    ConnectionId: string
    ConnectionType: string
    ContentHandlingStrategy: string
    CredentialsArn: string
    Description: string
    IntegrationId: string
    IntegrationMethod: string
    IntegrationResponseSelectionExpression: string
    IntegrationSubtype: string
    IntegrationType: string
    IntegrationUri: string
    PassthroughBehavior: string
    PayloadFormatVersion: string
    RequestParameters: {string : string}
    RequestTemplates: {string : string}
    ResponseParameters: {string : {string : string}}
    TemplateSelectionExpression: string
    TimeoutInMillis: number
    TlsConfig: TlsConfig
end

local record CreateIntegrationResponseInput
    ApiId: string
    ContentHandlingStrategy: string
    IntegrationId: string
    IntegrationResponseKey: string
    ResponseParameters: {string : string}
    ResponseTemplates: {string : string}
    TemplateSelectionExpression: string
end

local record CreateIntegrationResponseOutput
    ContentHandlingStrategy: string
    IntegrationResponseId: string
    IntegrationResponseKey: string
    ResponseParameters: {string : string}
    ResponseTemplates: {string : string}
    TemplateSelectionExpression: string
end

local record CreateModelInput
    ApiId: string
    ContentType: string
    Description: string
    Name: string
    Schema: string
end

local record CreateModelOutput
    ContentType: string
    Description: string
    ModelId: string
    Name: string
    Schema: string
end

local record CreatePortalInput
    Authorization: Authorization
    EndpointConfiguration: EndpointConfigurationRequest
    IncludedPortalProductArns: {string}
    LogoUri: string
    PortalContent: PortalContent
    RumAppMonitorName: string
    Tags: {string : string}
end

local record CreatePortalOutput
    Authorization: Authorization
    EndpointConfiguration: EndpointConfigurationResponse
    IncludedPortalProductArns: {string}
    LastModified: number
    LastPublished: number
    LastPublishedDescription: string
    PortalArn: string
    PortalContent: PortalContent
    PortalId: string
    PublishStatus: string
    RumAppMonitorName: string
    StatusException: StatusException
    Tags: {string : string}
end

local record CreatePortalProductInput
    Description: string
    DisplayName: string
    Tags: {string : string}
end

local record CreatePortalProductOutput
    Description: string
    DisplayName: string
    DisplayOrder: DisplayOrder
    LastModified: number
    PortalProductArn: string
    PortalProductId: string
    Tags: {string : string}
end

local record CreateProductPageInput
    DisplayContent: DisplayContent
    PortalProductId: string
end

local record CreateProductPageOutput
    DisplayContent: DisplayContent
    LastModified: number
    ProductPageArn: string
    ProductPageId: string
end

local record CreateProductRestEndpointPageInput
    DisplayContent: EndpointDisplayContent
    PortalProductId: string
    RestEndpointIdentifier: RestEndpointIdentifier
    TryItState: string
end

local record CreateProductRestEndpointPageOutput
    DisplayContent: EndpointDisplayContentResponse
    LastModified: number
    ProductRestEndpointPageArn: string
    ProductRestEndpointPageId: string
    RestEndpointIdentifier: RestEndpointIdentifier
    Status: string
    StatusException: StatusException
    TryItState: string
end

local record CreateRouteInput
    ApiId: string
    ApiKeyRequired: boolean
    AuthorizationScopes: {string}
    AuthorizationType: string
    AuthorizerId: string
    ModelSelectionExpression: string
    OperationName: string
    RequestModels: {string : string}
    RequestParameters: {string : ParameterConstraints}
    RouteKey: string
    RouteResponseSelectionExpression: string
    Target: string
end

local record CreateRouteOutput
    ApiGatewayManaged: boolean
    ApiKeyRequired: boolean
    AuthorizationScopes: {string}
    AuthorizationType: string
    AuthorizerId: string
    ModelSelectionExpression: string
    OperationName: string
    RequestModels: {string : string}
    RequestParameters: {string : ParameterConstraints}
    RouteId: string
    RouteKey: string
    RouteResponseSelectionExpression: string
    Target: string
end

local record CreateRouteResponseInput
    ApiId: string
    ModelSelectionExpression: string
    ResponseModels: {string : string}
    ResponseParameters: {string : ParameterConstraints}
    RouteId: string
    RouteResponseKey: string
end

local record CreateRouteResponseOutput
    ModelSelectionExpression: string
    ResponseModels: {string : string}
    ResponseParameters: {string : ParameterConstraints}
    RouteResponseId: string
    RouteResponseKey: string
end

local record CreateRoutingRuleInput
    Actions: {RoutingRuleAction}
    Conditions: {RoutingRuleCondition}
    DomainName: string
    DomainNameId: string
    Priority: number
end

local record CreateRoutingRuleOutput
    Actions: {RoutingRuleAction}
    Conditions: {RoutingRuleCondition}
    Priority: number
    RoutingRuleArn: string
    RoutingRuleId: string
end

local record CreateStageInput
    AccessLogSettings: AccessLogSettings
    ApiId: string
    AutoDeploy: boolean
    ClientCertificateId: string
    DefaultRouteSettings: RouteSettings
    DeploymentId: string
    Description: string
    RouteSettings: {string : RouteSettings}
    StageName: string
    StageVariables: {string : string}
    Tags: {string : string}
end

local record CreateStageOutput
    AccessLogSettings: AccessLogSettings
    ApiGatewayManaged: boolean
    AutoDeploy: boolean
    ClientCertificateId: string
    CreatedDate: number
    DefaultRouteSettings: RouteSettings
    DeploymentId: string
    Description: string
    LastDeploymentStatusMessage: string
    LastUpdatedDate: number
    RouteSettings: {string : RouteSettings}
    StageName: string
    StageVariables: {string : string}
    Tags: {string : string}
end

local record CreateVpcLinkInput
    Name: string
    SecurityGroupIds: {string}
    SubnetIds: {string}
    Tags: {string : string}
end

local record CreateVpcLinkOutput
    CreatedDate: number
    Name: string
    SecurityGroupIds: {string}
    SubnetIds: {string}
    Tags: {string : string}
    VpcLinkId: string
    VpcLinkStatus: string
    VpcLinkStatusMessage: string
    VpcLinkVersion: string
end

local record DeleteAccessLogSettingsInput
    ApiId: string
    StageName: string
end

local record DeleteAccessLogSettingsOutput
end

local record DeleteApiInput
    ApiId: string
end

local record DeleteApiOutput
end

local record DeleteApiMappingInput
    ApiMappingId: string
    DomainName: string
end

local record DeleteApiMappingOutput
end

local record DeleteAuthorizerInput
    ApiId: string
    AuthorizerId: string
end

local record DeleteAuthorizerOutput
end

local record DeleteCorsConfigurationInput
    ApiId: string
end

local record DeleteCorsConfigurationOutput
end

local record DeleteDeploymentInput
    ApiId: string
    DeploymentId: string
end

local record DeleteDeploymentOutput
end

local record DeleteDomainNameInput
    DomainName: string
end

local record DeleteDomainNameOutput
end

local record DeleteIntegrationInput
    ApiId: string
    IntegrationId: string
end

local record DeleteIntegrationOutput
end

local record DeleteIntegrationResponseInput
    ApiId: string
    IntegrationId: string
    IntegrationResponseId: string
end

local record DeleteIntegrationResponseOutput
end

local record DeleteModelInput
    ApiId: string
    ModelId: string
end

local record DeleteModelOutput
end

local record DeletePortalInput
    PortalId: string
end

local record DeletePortalOutput
end

local record DeletePortalProductInput
    PortalProductId: string
end

local record DeletePortalProductOutput
end

local record DeletePortalProductSharingPolicyInput
    PortalProductId: string
end

local record DeletePortalProductSharingPolicyOutput
end

local record DeleteProductPageInput
    PortalProductId: string
    ProductPageId: string
end

local record DeleteProductPageOutput
end

local record DeleteProductRestEndpointPageInput
    PortalProductId: string
    ProductRestEndpointPageId: string
end

local record DeleteProductRestEndpointPageOutput
end

local record DeleteRouteInput
    ApiId: string
    RouteId: string
end

local record DeleteRouteOutput
end

local record DeleteRouteRequestParameterInput
    ApiId: string
    RequestParameterKey: string
    RouteId: string
end

local record DeleteRouteRequestParameterOutput
end

local record DeleteRouteResponseInput
    ApiId: string
    RouteId: string
    RouteResponseId: string
end

local record DeleteRouteResponseOutput
end

local record DeleteRouteSettingsInput
    ApiId: string
    RouteKey: string
    StageName: string
end

local record DeleteRouteSettingsOutput
end

local record DeleteRoutingRuleInput
    DomainName: string
    DomainNameId: string
    RoutingRuleId: string
end

local record DeleteRoutingRuleOutput
end

local record DeleteStageInput
    ApiId: string
    StageName: string
end

local record DeleteStageOutput
end

local record DeleteVpcLinkInput
    VpcLinkId: string
end

local record DeleteVpcLinkOutput
end

local record DisablePortalInput
    PortalId: string
end

local record DisablePortalOutput
end

local record ExportApiInput
    ApiId: string
    ExportVersion: string
    IncludeExtensions: boolean
    OutputType: string
    Specification: string
    StageName: string
end

local record ExportApiOutput
    body: string
end

local record GetApiInput
    ApiId: string
end

local record GetApiOutput
    ApiEndpoint: string
    ApiGatewayManaged: boolean
    ApiId: string
    ApiKeySelectionExpression: string
    CorsConfiguration: Cors
    CreatedDate: number
    Description: string
    DisableSchemaValidation: boolean
    DisableExecuteApiEndpoint: boolean
    ImportInfo: {string}
    IpAddressType: string
    Name: string
    ProtocolType: string
    RouteSelectionExpression: string
    Tags: {string : string}
    Version: string
    Warnings: {string}
end

local record GetApiMappingInput
    ApiMappingId: string
    DomainName: string
end

local record GetApiMappingOutput
    ApiId: string
    ApiMappingId: string
    ApiMappingKey: string
    Stage: string
end

local record GetApiMappingsInput
    DomainName: string
    MaxResults: string
    NextToken: string
end

local record GetApiMappingsOutput
    Items: {ApiMapping}
    NextToken: string
end

local record GetApisInput
    MaxResults: string
    NextToken: string
end

local record GetApisOutput
    Items: {Api}
    NextToken: string
end

local record GetAuthorizerInput
    ApiId: string
    AuthorizerId: string
end

local record GetAuthorizerOutput
    AuthorizerCredentialsArn: string
    AuthorizerId: string
    AuthorizerPayloadFormatVersion: string
    AuthorizerResultTtlInSeconds: number
    AuthorizerType: string
    AuthorizerUri: string
    EnableSimpleResponses: boolean
    IdentitySource: {string}
    IdentityValidationExpression: string
    JwtConfiguration: JWTConfiguration
    Name: string
end

local record GetAuthorizersInput
    ApiId: string
    MaxResults: string
    NextToken: string
end

local record GetAuthorizersOutput
    Items: {Authorizer}
    NextToken: string
end

local record GetDeploymentInput
    ApiId: string
    DeploymentId: string
end

local record GetDeploymentOutput
    AutoDeployed: boolean
    CreatedDate: number
    DeploymentId: string
    DeploymentStatus: string
    DeploymentStatusMessage: string
    Description: string
end

local record GetDeploymentsInput
    ApiId: string
    MaxResults: string
    NextToken: string
end

local record GetDeploymentsOutput
    Items: {Deployment}
    NextToken: string
end

local record GetDomainNameInput
    DomainName: string
end

local record GetDomainNameOutput
    ApiMappingSelectionExpression: string
    DomainName: string
    DomainNameArn: string
    DomainNameConfigurations: {DomainNameConfiguration}
    MutualTlsAuthentication: MutualTlsAuthentication
    RoutingMode: string
    Tags: {string : string}
end

local record GetDomainNamesInput
    MaxResults: string
    NextToken: string
end

local record GetDomainNamesOutput
    Items: {DomainName}
    NextToken: string
end

local record GetIntegrationInput
    ApiId: string
    IntegrationId: string
end

local record GetIntegrationOutput
    ApiGatewayManaged: boolean
    ConnectionId: string
    ConnectionType: string
    ContentHandlingStrategy: string
    CredentialsArn: string
    Description: string
    IntegrationId: string
    IntegrationMethod: string
    IntegrationResponseSelectionExpression: string
    IntegrationSubtype: string
    IntegrationType: string
    IntegrationUri: string
    PassthroughBehavior: string
    PayloadFormatVersion: string
    RequestParameters: {string : string}
    RequestTemplates: {string : string}
    ResponseParameters: {string : {string : string}}
    TemplateSelectionExpression: string
    TimeoutInMillis: number
    TlsConfig: TlsConfig
end

local record GetIntegrationResponseInput
    ApiId: string
    IntegrationId: string
    IntegrationResponseId: string
end

local record GetIntegrationResponseOutput
    ContentHandlingStrategy: string
    IntegrationResponseId: string
    IntegrationResponseKey: string
    ResponseParameters: {string : string}
    ResponseTemplates: {string : string}
    TemplateSelectionExpression: string
end

local record GetIntegrationResponsesInput
    ApiId: string
    IntegrationId: string
    MaxResults: string
    NextToken: string
end

local record GetIntegrationResponsesOutput
    Items: {IntegrationResponse}
    NextToken: string
end

local record GetIntegrationsInput
    ApiId: string
    MaxResults: string
    NextToken: string
end

local record GetIntegrationsOutput
    Items: {Integration}
    NextToken: string
end

local record GetModelInput
    ApiId: string
    ModelId: string
end

local record GetModelOutput
    ContentType: string
    Description: string
    ModelId: string
    Name: string
    Schema: string
end

local record GetModelsInput
    ApiId: string
    MaxResults: string
    NextToken: string
end

local record GetModelsOutput
    Items: {Model}
    NextToken: string
end

local record GetModelTemplateInput
    ApiId: string
    ModelId: string
end

local record GetModelTemplateOutput
    Value: string
end

local record GetPortalInput
    PortalId: string
end

local record GetPortalOutput
    Authorization: Authorization
    EndpointConfiguration: EndpointConfigurationResponse
    IncludedPortalProductArns: {string}
    LastModified: number
    LastPublished: number
    LastPublishedDescription: string
    PortalArn: string
    PortalContent: PortalContent
    PortalId: string
    Preview: Preview
    PublishStatus: string
    RumAppMonitorName: string
    StatusException: StatusException
    Tags: {string : string}
end

local record GetPortalProductInput
    PortalProductId: string
    ResourceOwnerAccountId: string
end

local record GetPortalProductOutput
    Description: string
    DisplayName: string
    DisplayOrder: DisplayOrder
    LastModified: number
    PortalProductArn: string
    PortalProductId: string
    Tags: {string : string}
end

local record GetPortalProductSharingPolicyInput
    PortalProductId: string
end

local record GetPortalProductSharingPolicyOutput
    PolicyDocument: string
    PortalProductId: string
end

local record GetProductPageInput
    PortalProductId: string
    ProductPageId: string
    ResourceOwnerAccountId: string
end

local record GetProductPageOutput
    DisplayContent: DisplayContent
    LastModified: number
    ProductPageArn: string
    ProductPageId: string
end

local record GetProductRestEndpointPageInput
    IncludeRawDisplayContent: string
    PortalProductId: string
    ProductRestEndpointPageId: string
    ResourceOwnerAccountId: string
end

local record GetProductRestEndpointPageOutput
    DisplayContent: EndpointDisplayContentResponse
    LastModified: number
    ProductRestEndpointPageArn: string
    ProductRestEndpointPageId: string
    RawDisplayContent: string
    RestEndpointIdentifier: RestEndpointIdentifier
    Status: string
    StatusException: StatusException
    TryItState: string
end

local record GetRouteInput
    ApiId: string
    RouteId: string
end

local record GetRouteOutput
    ApiGatewayManaged: boolean
    ApiKeyRequired: boolean
    AuthorizationScopes: {string}
    AuthorizationType: string
    AuthorizerId: string
    ModelSelectionExpression: string
    OperationName: string
    RequestModels: {string : string}
    RequestParameters: {string : ParameterConstraints}
    RouteId: string
    RouteKey: string
    RouteResponseSelectionExpression: string
    Target: string
end

local record GetRouteResponseInput
    ApiId: string
    RouteId: string
    RouteResponseId: string
end

local record GetRouteResponseOutput
    ModelSelectionExpression: string
    ResponseModels: {string : string}
    ResponseParameters: {string : ParameterConstraints}
    RouteResponseId: string
    RouteResponseKey: string
end

local record GetRouteResponsesInput
    ApiId: string
    MaxResults: string
    NextToken: string
    RouteId: string
end

local record GetRouteResponsesOutput
    Items: {RouteResponse}
    NextToken: string
end

local record GetRoutesInput
    ApiId: string
    MaxResults: string
    NextToken: string
end

local record GetRoutesOutput
    Items: {Route}
    NextToken: string
end

local record GetRoutingRuleInput
    DomainName: string
    DomainNameId: string
    RoutingRuleId: string
end

local record GetRoutingRuleOutput
    Actions: {RoutingRuleAction}
    Conditions: {RoutingRuleCondition}
    Priority: number
    RoutingRuleArn: string
    RoutingRuleId: string
end

local record GetStageInput
    ApiId: string
    StageName: string
end

local record GetStageOutput
    AccessLogSettings: AccessLogSettings
    ApiGatewayManaged: boolean
    AutoDeploy: boolean
    ClientCertificateId: string
    CreatedDate: number
    DefaultRouteSettings: RouteSettings
    DeploymentId: string
    Description: string
    LastDeploymentStatusMessage: string
    LastUpdatedDate: number
    RouteSettings: {string : RouteSettings}
    StageName: string
    StageVariables: {string : string}
    Tags: {string : string}
end

local record GetStagesInput
    ApiId: string
    MaxResults: string
    NextToken: string
end

local record GetStagesOutput
    Items: {Stage}
    NextToken: string
end

local record GetTagsInput
    ResourceArn: string
end

local record GetTagsOutput
    Tags: {string : string}
end

local record GetVpcLinkInput
    VpcLinkId: string
end

local record GetVpcLinkOutput
    CreatedDate: number
    Name: string
    SecurityGroupIds: {string}
    SubnetIds: {string}
    Tags: {string : string}
    VpcLinkId: string
    VpcLinkStatus: string
    VpcLinkStatusMessage: string
    VpcLinkVersion: string
end

local record GetVpcLinksInput
    MaxResults: string
    NextToken: string
end

local record GetVpcLinksOutput
    Items: {VpcLink}
    NextToken: string
end

local record ImportApiInput
    Basepath: string
    Body: string
    FailOnWarnings: boolean
end

local record ImportApiOutput
    ApiEndpoint: string
    ApiGatewayManaged: boolean
    ApiId: string
    ApiKeySelectionExpression: string
    CorsConfiguration: Cors
    CreatedDate: number
    Description: string
    DisableSchemaValidation: boolean
    DisableExecuteApiEndpoint: boolean
    ImportInfo: {string}
    IpAddressType: string
    Name: string
    ProtocolType: string
    RouteSelectionExpression: string
    Tags: {string : string}
    Version: string
    Warnings: {string}
end

local record ListPortalProductsInput
    MaxResults: string
    NextToken: string
    ResourceOwner: string
end

local record ListPortalProductsOutput
    Items: {PortalProductSummary}
    NextToken: string
end

local record ListPortalsInput
    MaxResults: string
    NextToken: string
end

local record ListPortalsOutput
    Items: {PortalSummary}
    NextToken: string
end

local record ListProductPagesInput
    MaxResults: string
    NextToken: string
    PortalProductId: string
    ResourceOwnerAccountId: string
end

local record ListProductPagesOutput
    Items: {ProductPageSummaryNoBody}
    NextToken: string
end

local record ListProductRestEndpointPagesInput
    MaxResults: string
    NextToken: string
    PortalProductId: string
    ResourceOwnerAccountId: string
end

local record ListProductRestEndpointPagesOutput
    Items: {ProductRestEndpointPageSummaryNoBody}
    NextToken: string
end

local record ListRoutingRulesInput
    DomainName: string
    DomainNameId: string
    MaxResults: number
    NextToken: string
end

local record ListRoutingRulesOutput
    NextToken: string
    RoutingRules: {RoutingRule}
end

local record PreviewPortalInput
    PortalId: string
end

local record PreviewPortalOutput
end

local record PublishPortalInput
    Description: string
    PortalId: string
end

local record PublishPortalOutput
end

local record PutPortalProductSharingPolicyInput
    PolicyDocument: string
    PortalProductId: string
end

local record PutPortalProductSharingPolicyOutput
end

local record PutRoutingRuleInput
    Actions: {RoutingRuleAction}
    Conditions: {RoutingRuleCondition}
    DomainName: string
    DomainNameId: string
    Priority: number
    RoutingRuleId: string
end

local record PutRoutingRuleOutput
    Actions: {RoutingRuleAction}
    Conditions: {RoutingRuleCondition}
    Priority: number
    RoutingRuleArn: string
    RoutingRuleId: string
end

local record ReimportApiInput
    ApiId: string
    Basepath: string
    Body: string
    FailOnWarnings: boolean
end

local record ReimportApiOutput
    ApiEndpoint: string
    ApiGatewayManaged: boolean
    ApiId: string
    ApiKeySelectionExpression: string
    CorsConfiguration: Cors
    CreatedDate: number
    Description: string
    DisableSchemaValidation: boolean
    DisableExecuteApiEndpoint: boolean
    ImportInfo: {string}
    IpAddressType: string
    Name: string
    ProtocolType: string
    RouteSelectionExpression: string
    Tags: {string : string}
    Version: string
    Warnings: {string}
end

local record ResetAuthorizersCacheInput
    ApiId: string
    StageName: string
end

local record ResetAuthorizersCacheOutput
end

local record TagResourceInput
    ResourceArn: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateApiInput
    ApiId: string
    ApiKeySelectionExpression: string
    CorsConfiguration: Cors
    CredentialsArn: string
    Description: string
    DisableSchemaValidation: boolean
    DisableExecuteApiEndpoint: boolean
    IpAddressType: string
    Name: string
    RouteKey: string
    RouteSelectionExpression: string
    Target: string
    Version: string
end

local record UpdateApiOutput
    ApiEndpoint: string
    ApiGatewayManaged: boolean
    ApiId: string
    ApiKeySelectionExpression: string
    CorsConfiguration: Cors
    CreatedDate: number
    Description: string
    DisableSchemaValidation: boolean
    DisableExecuteApiEndpoint: boolean
    ImportInfo: {string}
    IpAddressType: string
    Name: string
    ProtocolType: string
    RouteSelectionExpression: string
    Tags: {string : string}
    Version: string
    Warnings: {string}
end

local record UpdateApiMappingInput
    ApiId: string
    ApiMappingId: string
    ApiMappingKey: string
    DomainName: string
    Stage: string
end

local record UpdateApiMappingOutput
    ApiId: string
    ApiMappingId: string
    ApiMappingKey: string
    Stage: string
end

local record UpdateAuthorizerInput
    ApiId: string
    AuthorizerCredentialsArn: string
    AuthorizerId: string
    AuthorizerPayloadFormatVersion: string
    AuthorizerResultTtlInSeconds: number
    AuthorizerType: string
    AuthorizerUri: string
    EnableSimpleResponses: boolean
    IdentitySource: {string}
    IdentityValidationExpression: string
    JwtConfiguration: JWTConfiguration
    Name: string
end

local record UpdateAuthorizerOutput
    AuthorizerCredentialsArn: string
    AuthorizerId: string
    AuthorizerPayloadFormatVersion: string
    AuthorizerResultTtlInSeconds: number
    AuthorizerType: string
    AuthorizerUri: string
    EnableSimpleResponses: boolean
    IdentitySource: {string}
    IdentityValidationExpression: string
    JwtConfiguration: JWTConfiguration
    Name: string
end

local record UpdateDeploymentInput
    ApiId: string
    DeploymentId: string
    Description: string
end

local record UpdateDeploymentOutput
    AutoDeployed: boolean
    CreatedDate: number
    DeploymentId: string
    DeploymentStatus: string
    DeploymentStatusMessage: string
    Description: string
end

local record UpdateDomainNameInput
    DomainName: string
    DomainNameConfigurations: {DomainNameConfiguration}
    MutualTlsAuthentication: MutualTlsAuthenticationInput
    RoutingMode: string
end

local record UpdateDomainNameOutput
    ApiMappingSelectionExpression: string
    DomainName: string
    DomainNameArn: string
    DomainNameConfigurations: {DomainNameConfiguration}
    MutualTlsAuthentication: MutualTlsAuthentication
    RoutingMode: string
    Tags: {string : string}
end

local record UpdateIntegrationInput
    ApiId: string
    ConnectionId: string
    ConnectionType: string
    ContentHandlingStrategy: string
    CredentialsArn: string
    Description: string
    IntegrationId: string
    IntegrationMethod: string
    IntegrationSubtype: string
    IntegrationType: string
    IntegrationUri: string
    PassthroughBehavior: string
    PayloadFormatVersion: string
    RequestParameters: {string : string}
    RequestTemplates: {string : string}
    ResponseParameters: {string : {string : string}}
    TemplateSelectionExpression: string
    TimeoutInMillis: number
    TlsConfig: TlsConfigInput
end

local record UpdateIntegrationOutput
    ApiGatewayManaged: boolean
    ConnectionId: string
    ConnectionType: string
    ContentHandlingStrategy: string
    CredentialsArn: string
    Description: string
    IntegrationId: string
    IntegrationMethod: string
    IntegrationResponseSelectionExpression: string
    IntegrationSubtype: string
    IntegrationType: string
    IntegrationUri: string
    PassthroughBehavior: string
    PayloadFormatVersion: string
    RequestParameters: {string : string}
    RequestTemplates: {string : string}
    ResponseParameters: {string : {string : string}}
    TemplateSelectionExpression: string
    TimeoutInMillis: number
    TlsConfig: TlsConfig
end

local record UpdateIntegrationResponseInput
    ApiId: string
    ContentHandlingStrategy: string
    IntegrationId: string
    IntegrationResponseId: string
    IntegrationResponseKey: string
    ResponseParameters: {string : string}
    ResponseTemplates: {string : string}
    TemplateSelectionExpression: string
end

local record UpdateIntegrationResponseOutput
    ContentHandlingStrategy: string
    IntegrationResponseId: string
    IntegrationResponseKey: string
    ResponseParameters: {string : string}
    ResponseTemplates: {string : string}
    TemplateSelectionExpression: string
end

local record UpdateModelInput
    ApiId: string
    ContentType: string
    Description: string
    ModelId: string
    Name: string
    Schema: string
end

local record UpdateModelOutput
    ContentType: string
    Description: string
    ModelId: string
    Name: string
    Schema: string
end

local record UpdatePortalInput
    Authorization: Authorization
    EndpointConfiguration: EndpointConfigurationRequest
    IncludedPortalProductArns: {string}
    LogoUri: string
    PortalContent: PortalContent
    PortalId: string
    RumAppMonitorName: string
end

local record UpdatePortalOutput
    Authorization: Authorization
    EndpointConfiguration: EndpointConfigurationResponse
    IncludedPortalProductArns: {string}
    LastModified: number
    LastPublished: number
    LastPublishedDescription: string
    PortalArn: string
    PortalContent: PortalContent
    PortalId: string
    Preview: Preview
    PublishStatus: string
    RumAppMonitorName: string
    StatusException: StatusException
    Tags: {string : string}
end

local record UpdatePortalProductInput
    Description: string
    DisplayName: string
    DisplayOrder: DisplayOrder
    PortalProductId: string
end

local record UpdatePortalProductOutput
    Description: string
    DisplayName: string
    DisplayOrder: DisplayOrder
    LastModified: number
    PortalProductArn: string
    PortalProductId: string
    Tags: {string : string}
end

local record UpdateProductPageInput
    DisplayContent: DisplayContent
    PortalProductId: string
    ProductPageId: string
end

local record UpdateProductPageOutput
    DisplayContent: DisplayContent
    LastModified: number
    ProductPageArn: string
    ProductPageId: string
end

local record UpdateProductRestEndpointPageInput
    DisplayContent: EndpointDisplayContent
    PortalProductId: string
    ProductRestEndpointPageId: string
    TryItState: string
end

local record UpdateProductRestEndpointPageOutput
    DisplayContent: EndpointDisplayContentResponse
    LastModified: number
    ProductRestEndpointPageArn: string
    ProductRestEndpointPageId: string
    RestEndpointIdentifier: RestEndpointIdentifier
    Status: string
    StatusException: StatusException
    TryItState: string
end

local record UpdateRouteInput
    ApiId: string
    ApiKeyRequired: boolean
    AuthorizationScopes: {string}
    AuthorizationType: string
    AuthorizerId: string
    ModelSelectionExpression: string
    OperationName: string
    RequestModels: {string : string}
    RequestParameters: {string : ParameterConstraints}
    RouteId: string
    RouteKey: string
    RouteResponseSelectionExpression: string
    Target: string
end

local record UpdateRouteOutput
    ApiGatewayManaged: boolean
    ApiKeyRequired: boolean
    AuthorizationScopes: {string}
    AuthorizationType: string
    AuthorizerId: string
    ModelSelectionExpression: string
    OperationName: string
    RequestModels: {string : string}
    RequestParameters: {string : ParameterConstraints}
    RouteId: string
    RouteKey: string
    RouteResponseSelectionExpression: string
    Target: string
end

local record UpdateRouteResponseInput
    ApiId: string
    ModelSelectionExpression: string
    ResponseModels: {string : string}
    ResponseParameters: {string : ParameterConstraints}
    RouteId: string
    RouteResponseId: string
    RouteResponseKey: string
end

local record UpdateRouteResponseOutput
    ModelSelectionExpression: string
    ResponseModels: {string : string}
    ResponseParameters: {string : ParameterConstraints}
    RouteResponseId: string
    RouteResponseKey: string
end

local record UpdateStageInput
    AccessLogSettings: AccessLogSettings
    ApiId: string
    AutoDeploy: boolean
    ClientCertificateId: string
    DefaultRouteSettings: RouteSettings
    DeploymentId: string
    Description: string
    RouteSettings: {string : RouteSettings}
    StageName: string
    StageVariables: {string : string}
end

local record UpdateStageOutput
    AccessLogSettings: AccessLogSettings
    ApiGatewayManaged: boolean
    AutoDeploy: boolean
    ClientCertificateId: string
    CreatedDate: number
    DefaultRouteSettings: RouteSettings
    DeploymentId: string
    Description: string
    LastDeploymentStatusMessage: string
    LastUpdatedDate: number
    RouteSettings: {string : RouteSettings}
    StageName: string
    StageVariables: {string : string}
    Tags: {string : string}
end

local record UpdateVpcLinkInput
    Name: string
    VpcLinkId: string
end

local record UpdateVpcLinkOutput
    CreatedDate: number
    Name: string
    SecurityGroupIds: {string}
    SubnetIds: {string}
    Tags: {string : string}
    VpcLinkId: string
    VpcLinkStatus: string
    VpcLinkStatusMessage: string
    VpcLinkVersion: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local record BadRequestException
    Message: string
end

local record NotFoundException
    Message: string
    ResourceType: string
end

local record TooManyRequestsException
    LimitType: string
    Message: string
end

local type PassthroughBehavior = "WHEN_NO_MATCH" | "NEVER" | "WHEN_NO_TEMPLATES"

local type ProtocolType = "WEBSOCKET" | "HTTP"

local type ContentHandlingStrategy = "CONVERT_TO_BINARY" | "CONVERT_TO_TEXT"

local type AuthorizationType = "NONE" | "AWS_IAM" | "CUSTOM" | "JWT"

local type TryItState = "ENABLED" | "DISABLED"

local type IpAddressType = "ipv4" | "dualstack"

local type VpcLinkVersion = "V2"

local type VpcLinkStatus = "PENDING" | "AVAILABLE" | "DELETING" | "FAILED" | "INACTIVE"

local type IntegrationType = "AWS" | "HTTP" | "MOCK" | "HTTP_PROXY" | "AWS_PROXY"

local type ConnectionType = "INTERNET" | "VPC_LINK"

local type AuthorizerType = "REQUEST" | "JWT"

local type PublishStatus = "PUBLISHED" | "PUBLISH_IN_PROGRESS" | "PUBLISH_FAILED" | "DISABLE_IN_PROGRESS" | "DISABLE_FAILED" | "DISABLED"

local type RoutingMode = "API_MAPPING_ONLY" | "ROUTING_RULE_ONLY" | "ROUTING_RULE_THEN_API_MAPPING"

local type Status = "AVAILABLE" | "IN_PROGRESS" | "FAILED"

local type DeploymentStatus = "PENDING" | "FAILED" | "DEPLOYED"

local record M
    CreateApiInput: CreateApiInput
    CreateApiOutput: CreateApiOutput
    CreateApiMappingInput: CreateApiMappingInput
    CreateApiMappingOutput: CreateApiMappingOutput
    CreateAuthorizerInput: CreateAuthorizerInput
    CreateAuthorizerOutput: CreateAuthorizerOutput
    CreateDeploymentInput: CreateDeploymentInput
    CreateDeploymentOutput: CreateDeploymentOutput
    CreateDomainNameInput: CreateDomainNameInput
    CreateDomainNameOutput: CreateDomainNameOutput
    CreateIntegrationInput: CreateIntegrationInput
    CreateIntegrationOutput: CreateIntegrationOutput
    CreateIntegrationResponseInput: CreateIntegrationResponseInput
    CreateIntegrationResponseOutput: CreateIntegrationResponseOutput
    CreateModelInput: CreateModelInput
    CreateModelOutput: CreateModelOutput
    CreatePortalInput: CreatePortalInput
    CreatePortalOutput: CreatePortalOutput
    CreatePortalProductInput: CreatePortalProductInput
    CreatePortalProductOutput: CreatePortalProductOutput
    CreateProductPageInput: CreateProductPageInput
    CreateProductPageOutput: CreateProductPageOutput
    CreateProductRestEndpointPageInput: CreateProductRestEndpointPageInput
    CreateProductRestEndpointPageOutput: CreateProductRestEndpointPageOutput
    CreateRouteInput: CreateRouteInput
    CreateRouteOutput: CreateRouteOutput
    CreateRouteResponseInput: CreateRouteResponseInput
    CreateRouteResponseOutput: CreateRouteResponseOutput
    CreateRoutingRuleInput: CreateRoutingRuleInput
    CreateRoutingRuleOutput: CreateRoutingRuleOutput
    CreateStageInput: CreateStageInput
    CreateStageOutput: CreateStageOutput
    CreateVpcLinkInput: CreateVpcLinkInput
    CreateVpcLinkOutput: CreateVpcLinkOutput
    DeleteAccessLogSettingsInput: DeleteAccessLogSettingsInput
    DeleteAccessLogSettingsOutput: DeleteAccessLogSettingsOutput
    DeleteApiInput: DeleteApiInput
    DeleteApiOutput: DeleteApiOutput
    DeleteApiMappingInput: DeleteApiMappingInput
    DeleteApiMappingOutput: DeleteApiMappingOutput
    DeleteAuthorizerInput: DeleteAuthorizerInput
    DeleteAuthorizerOutput: DeleteAuthorizerOutput
    DeleteCorsConfigurationInput: DeleteCorsConfigurationInput
    DeleteCorsConfigurationOutput: DeleteCorsConfigurationOutput
    DeleteDeploymentInput: DeleteDeploymentInput
    DeleteDeploymentOutput: DeleteDeploymentOutput
    DeleteDomainNameInput: DeleteDomainNameInput
    DeleteDomainNameOutput: DeleteDomainNameOutput
    DeleteIntegrationInput: DeleteIntegrationInput
    DeleteIntegrationOutput: DeleteIntegrationOutput
    DeleteIntegrationResponseInput: DeleteIntegrationResponseInput
    DeleteIntegrationResponseOutput: DeleteIntegrationResponseOutput
    DeleteModelInput: DeleteModelInput
    DeleteModelOutput: DeleteModelOutput
    DeletePortalInput: DeletePortalInput
    DeletePortalOutput: DeletePortalOutput
    DeletePortalProductInput: DeletePortalProductInput
    DeletePortalProductOutput: DeletePortalProductOutput
    DeletePortalProductSharingPolicyInput: DeletePortalProductSharingPolicyInput
    DeletePortalProductSharingPolicyOutput: DeletePortalProductSharingPolicyOutput
    DeleteProductPageInput: DeleteProductPageInput
    DeleteProductPageOutput: DeleteProductPageOutput
    DeleteProductRestEndpointPageInput: DeleteProductRestEndpointPageInput
    DeleteProductRestEndpointPageOutput: DeleteProductRestEndpointPageOutput
    DeleteRouteInput: DeleteRouteInput
    DeleteRouteOutput: DeleteRouteOutput
    DeleteRouteRequestParameterInput: DeleteRouteRequestParameterInput
    DeleteRouteRequestParameterOutput: DeleteRouteRequestParameterOutput
    DeleteRouteResponseInput: DeleteRouteResponseInput
    DeleteRouteResponseOutput: DeleteRouteResponseOutput
    DeleteRouteSettingsInput: DeleteRouteSettingsInput
    DeleteRouteSettingsOutput: DeleteRouteSettingsOutput
    DeleteRoutingRuleInput: DeleteRoutingRuleInput
    DeleteRoutingRuleOutput: DeleteRoutingRuleOutput
    DeleteStageInput: DeleteStageInput
    DeleteStageOutput: DeleteStageOutput
    DeleteVpcLinkInput: DeleteVpcLinkInput
    DeleteVpcLinkOutput: DeleteVpcLinkOutput
    DisablePortalInput: DisablePortalInput
    DisablePortalOutput: DisablePortalOutput
    ExportApiInput: ExportApiInput
    ExportApiOutput: ExportApiOutput
    GetApiInput: GetApiInput
    GetApiOutput: GetApiOutput
    GetApiMappingInput: GetApiMappingInput
    GetApiMappingOutput: GetApiMappingOutput
    GetApiMappingsInput: GetApiMappingsInput
    GetApiMappingsOutput: GetApiMappingsOutput
    GetApisInput: GetApisInput
    GetApisOutput: GetApisOutput
    GetAuthorizerInput: GetAuthorizerInput
    GetAuthorizerOutput: GetAuthorizerOutput
    GetAuthorizersInput: GetAuthorizersInput
    GetAuthorizersOutput: GetAuthorizersOutput
    GetDeploymentInput: GetDeploymentInput
    GetDeploymentOutput: GetDeploymentOutput
    GetDeploymentsInput: GetDeploymentsInput
    GetDeploymentsOutput: GetDeploymentsOutput
    GetDomainNameInput: GetDomainNameInput
    GetDomainNameOutput: GetDomainNameOutput
    GetDomainNamesInput: GetDomainNamesInput
    GetDomainNamesOutput: GetDomainNamesOutput
    GetIntegrationInput: GetIntegrationInput
    GetIntegrationOutput: GetIntegrationOutput
    GetIntegrationResponseInput: GetIntegrationResponseInput
    GetIntegrationResponseOutput: GetIntegrationResponseOutput
    GetIntegrationResponsesInput: GetIntegrationResponsesInput
    GetIntegrationResponsesOutput: GetIntegrationResponsesOutput
    GetIntegrationsInput: GetIntegrationsInput
    GetIntegrationsOutput: GetIntegrationsOutput
    GetModelInput: GetModelInput
    GetModelOutput: GetModelOutput
    GetModelsInput: GetModelsInput
    GetModelsOutput: GetModelsOutput
    GetModelTemplateInput: GetModelTemplateInput
    GetModelTemplateOutput: GetModelTemplateOutput
    GetPortalInput: GetPortalInput
    GetPortalOutput: GetPortalOutput
    GetPortalProductInput: GetPortalProductInput
    GetPortalProductOutput: GetPortalProductOutput
    GetPortalProductSharingPolicyInput: GetPortalProductSharingPolicyInput
    GetPortalProductSharingPolicyOutput: GetPortalProductSharingPolicyOutput
    GetProductPageInput: GetProductPageInput
    GetProductPageOutput: GetProductPageOutput
    GetProductRestEndpointPageInput: GetProductRestEndpointPageInput
    GetProductRestEndpointPageOutput: GetProductRestEndpointPageOutput
    GetRouteInput: GetRouteInput
    GetRouteOutput: GetRouteOutput
    GetRouteResponseInput: GetRouteResponseInput
    GetRouteResponseOutput: GetRouteResponseOutput
    GetRouteResponsesInput: GetRouteResponsesInput
    GetRouteResponsesOutput: GetRouteResponsesOutput
    GetRoutesInput: GetRoutesInput
    GetRoutesOutput: GetRoutesOutput
    GetRoutingRuleInput: GetRoutingRuleInput
    GetRoutingRuleOutput: GetRoutingRuleOutput
    GetStageInput: GetStageInput
    GetStageOutput: GetStageOutput
    GetStagesInput: GetStagesInput
    GetStagesOutput: GetStagesOutput
    GetTagsInput: GetTagsInput
    GetTagsOutput: GetTagsOutput
    GetVpcLinkInput: GetVpcLinkInput
    GetVpcLinkOutput: GetVpcLinkOutput
    GetVpcLinksInput: GetVpcLinksInput
    GetVpcLinksOutput: GetVpcLinksOutput
    ImportApiInput: ImportApiInput
    ImportApiOutput: ImportApiOutput
    ListPortalProductsInput: ListPortalProductsInput
    ListPortalProductsOutput: ListPortalProductsOutput
    ListPortalsInput: ListPortalsInput
    ListPortalsOutput: ListPortalsOutput
    ListProductPagesInput: ListProductPagesInput
    ListProductPagesOutput: ListProductPagesOutput
    ListProductRestEndpointPagesInput: ListProductRestEndpointPagesInput
    ListProductRestEndpointPagesOutput: ListProductRestEndpointPagesOutput
    ListRoutingRulesInput: ListRoutingRulesInput
    ListRoutingRulesOutput: ListRoutingRulesOutput
    PreviewPortalInput: PreviewPortalInput
    PreviewPortalOutput: PreviewPortalOutput
    PublishPortalInput: PublishPortalInput
    PublishPortalOutput: PublishPortalOutput
    PutPortalProductSharingPolicyInput: PutPortalProductSharingPolicyInput
    PutPortalProductSharingPolicyOutput: PutPortalProductSharingPolicyOutput
    PutRoutingRuleInput: PutRoutingRuleInput
    PutRoutingRuleOutput: PutRoutingRuleOutput
    ReimportApiInput: ReimportApiInput
    ReimportApiOutput: ReimportApiOutput
    ResetAuthorizersCacheInput: ResetAuthorizersCacheInput
    ResetAuthorizersCacheOutput: ResetAuthorizersCacheOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateApiInput: UpdateApiInput
    UpdateApiOutput: UpdateApiOutput
    UpdateApiMappingInput: UpdateApiMappingInput
    UpdateApiMappingOutput: UpdateApiMappingOutput
    UpdateAuthorizerInput: UpdateAuthorizerInput
    UpdateAuthorizerOutput: UpdateAuthorizerOutput
    UpdateDeploymentInput: UpdateDeploymentInput
    UpdateDeploymentOutput: UpdateDeploymentOutput
    UpdateDomainNameInput: UpdateDomainNameInput
    UpdateDomainNameOutput: UpdateDomainNameOutput
    UpdateIntegrationInput: UpdateIntegrationInput
    UpdateIntegrationOutput: UpdateIntegrationOutput
    UpdateIntegrationResponseInput: UpdateIntegrationResponseInput
    UpdateIntegrationResponseOutput: UpdateIntegrationResponseOutput
    UpdateModelInput: UpdateModelInput
    UpdateModelOutput: UpdateModelOutput
    UpdatePortalInput: UpdatePortalInput
    UpdatePortalOutput: UpdatePortalOutput
    UpdatePortalProductInput: UpdatePortalProductInput
    UpdatePortalProductOutput: UpdatePortalProductOutput
    UpdateProductPageInput: UpdateProductPageInput
    UpdateProductPageOutput: UpdateProductPageOutput
    UpdateProductRestEndpointPageInput: UpdateProductRestEndpointPageInput
    UpdateProductRestEndpointPageOutput: UpdateProductRestEndpointPageOutput
    UpdateRouteInput: UpdateRouteInput
    UpdateRouteOutput: UpdateRouteOutput
    UpdateRouteResponseInput: UpdateRouteResponseInput
    UpdateRouteResponseOutput: UpdateRouteResponseOutput
    UpdateStageInput: UpdateStageInput
    UpdateStageOutput: UpdateStageOutput
    UpdateVpcLinkInput: UpdateVpcLinkInput
    UpdateVpcLinkOutput: UpdateVpcLinkOutput
end

return M
