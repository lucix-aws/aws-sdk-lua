local record CreateAccountAssociationInput
    ClientToken: string
    ConnectorDestinationId: string
    Name: string
    Description: string
    Tags: {string : string}
    GeneralAuthorization: GeneralAuthorizationName
end

local record CreateAccountAssociationOutput
    OAuthAuthorizationUrl: string
    AccountAssociationId: string
    AssociationState: string
    Arn: string
end

local record CreateCloudConnectorInput
    Name: string
    EndpointConfig: EndpointConfig
    Description: string
    EndpointType: string
    ClientToken: string
end

local record CreateCloudConnectorOutput
    Id: string
end

local record CreateConnectorDestinationInput
    Name: string
    Description: string
    CloudConnectorId: string
    AuthType: string
    AuthConfig: AuthConfig
    SecretsManager: SecretsManager
    ClientToken: string
end

local record CreateConnectorDestinationOutput
    Id: string
end

local record CreateCredentialLockerInput
    Name: string
    ClientToken: string
    Tags: {string : string}
end

local record CreateCredentialLockerOutput
    Id: string
    Arn: string
    CreatedAt: number
end

local record CreateDestinationInput
    DeliveryDestinationArn: string
    DeliveryDestinationType: string
    Name: string
    RoleArn: string
    ClientToken: string
    Description: string
    Tags: {string : string}
end

local record CreateDestinationOutput
    Name: string
end

local record CreateEventLogConfigurationInput
    ResourceType: string
    ResourceId: string
    EventLogLevel: string
    ClientToken: string
end

local record CreateEventLogConfigurationOutput
    Id: string
end

local record CreateManagedThingInput
    Role: string
    Owner: string
    CredentialLockerId: string
    AuthenticationMaterial: string
    AuthenticationMaterialType: string
    WiFiSimpleSetupConfiguration: WiFiSimpleSetupConfiguration
    SerialNumber: string
    Brand: string
    Model: string
    Name: string
    CapabilityReport: CapabilityReport
    CapabilitySchemas: {CapabilitySchemaItem}
    Capabilities: string
    ClientToken: string
    Classification: string
    Tags: {string : string}
    MetaData: {string : string}
end

local record CreateManagedThingOutput
    Id: string
    Arn: string
    CreatedAt: number
end

local record CreateNotificationConfigurationInput
    EventType: string
    DestinationName: string
    ClientToken: string
    Tags: {string : string}
end

local record CreateNotificationConfigurationOutput
    EventType: string
end

local record CreateOtaTaskInput
    Description: string
    S3Url: string
    Protocol: string
    Target: {string}
    TaskConfigurationId: string
    OtaMechanism: string
    OtaType: string
    OtaTargetQueryString: string
    ClientToken: string
    OtaSchedulingConfig: OtaTaskSchedulingConfig
    OtaTaskExecutionRetryConfig: OtaTaskExecutionRetryConfig
    Tags: {string : string}
end

local record CreateOtaTaskOutput
    TaskId: string
    TaskArn: string
    Description: string
end

local record CreateOtaTaskConfigurationInput
    Description: string
    Name: string
    PushConfig: PushConfig
    ClientToken: string
end

local record CreateOtaTaskConfigurationOutput
    TaskConfigurationId: string
end

local record CreateProvisioningProfileInput
    ProvisioningType: string
    CaCertificate: string
    ClaimCertificate: string
    Name: string
    ClientToken: string
    Tags: {string : string}
end

local record CreateProvisioningProfileOutput
    Arn: string
    Name: string
    ProvisioningType: string
    Id: string
    Status: string
    ClaimCertificate: string
    ClaimCertificatePrivateKey: string
end

local record DeleteAccountAssociationInput
    AccountAssociationId: string
end

local record DeleteAccountAssociationOutput
end

local record DeleteCloudConnectorInput
    Identifier: string
end

local record DeleteCloudConnectorOutput
end

local record DeleteConnectorDestinationInput
    Identifier: string
end

local record DeleteConnectorDestinationOutput
end

local record DeleteCredentialLockerInput
    Identifier: string
end

local record DeleteCredentialLockerOutput
end

local record DeleteDestinationInput
    Name: string
end

local record DeleteDestinationOutput
end

local record DeleteEventLogConfigurationInput
    Id: string
end

local record DeleteEventLogConfigurationOutput
end

local record DeleteManagedThingInput
    Identifier: string
    Force: boolean
end

local record DeleteManagedThingOutput
end

local record DeleteNotificationConfigurationInput
    EventType: string
end

local record DeleteNotificationConfigurationOutput
end

local record DeleteOtaTaskInput
    Identifier: string
end

local record DeleteOtaTaskOutput
end

local record DeleteOtaTaskConfigurationInput
    Identifier: string
end

local record DeleteOtaTaskConfigurationOutput
end

local record DeleteProvisioningProfileInput
    Identifier: string
end

local record DeleteProvisioningProfileOutput
end

local record DeregisterAccountAssociationInput
    ManagedThingId: string
    AccountAssociationId: string
end

local record DeregisterAccountAssociationOutput
end

local record GetAccountAssociationInput
    AccountAssociationId: string
end

local record GetAccountAssociationOutput
    AccountAssociationId: string
    AssociationState: string
    ErrorMessage: string
    ConnectorDestinationId: string
    Name: string
    Description: string
    Arn: string
    OAuthAuthorizationUrl: string
    Tags: {string : string}
    GeneralAuthorization: GeneralAuthorizationName
end

local record GetCloudConnectorInput
    Identifier: string
end

local record GetCloudConnectorOutput
    Name: string
    EndpointConfig: EndpointConfig
    Description: string
    EndpointType: string
    Id: string
    Type: string
end

local record GetConnectorDestinationInput
    Identifier: string
end

local record GetConnectorDestinationOutput
    Name: string
    Description: string
    CloudConnectorId: string
    Id: string
    AuthType: string
    AuthConfig: AuthConfig
    SecretsManager: SecretsManager
    OAuthCompleteRedirectUrl: string
end

local record GetCredentialLockerInput
    Identifier: string
end

local record GetCredentialLockerOutput
    Id: string
    Arn: string
    Name: string
    CreatedAt: number
    Tags: {string : string}
end

local record GetCustomEndpointInput
end

local record GetCustomEndpointOutput
    EndpointAddress: string
end

local record GetDefaultEncryptionConfigurationInput
end

local record GetDefaultEncryptionConfigurationOutput
    configurationStatus: ConfigurationStatus
    encryptionType: string
    kmsKeyArn: string
end

local record GetDestinationInput
    Name: string
end

local record GetDestinationOutput
    Description: string
    DeliveryDestinationArn: string
    DeliveryDestinationType: string
    Name: string
    RoleArn: string
    CreatedAt: number
    UpdatedAt: number
    Tags: {string : string}
end

local record GetDeviceDiscoveryInput
    Identifier: string
end

local record GetDeviceDiscoveryOutput
    Id: string
    Arn: string
    DiscoveryType: string
    Status: string
    StartedAt: number
    ControllerId: string
    ConnectorAssociationId: string
    AccountAssociationId: string
    FinishedAt: number
    Tags: {string : string}
end

local record GetEventLogConfigurationInput
    Id: string
end

local record GetEventLogConfigurationOutput
    Id: string
    ResourceType: string
    ResourceId: string
    EventLogLevel: string
end

local record GetHubConfigurationInput
end

local record GetHubConfigurationOutput
    HubTokenTimerExpirySettingInSeconds: number
    UpdatedAt: number
end

local record GetManagedThingInput
    Identifier: string
end

local record GetManagedThingOutput
    Id: string
    Arn: string
    Owner: string
    CredentialLockerId: string
    AdvertisedProductId: string
    Role: string
    ProvisioningStatus: string
    Name: string
    Model: string
    Brand: string
    SerialNumber: string
    UniversalProductCode: string
    InternationalArticleNumber: string
    ConnectorPolicyId: string
    ConnectorDestinationId: string
    ConnectorDeviceId: string
    DeviceSpecificKey: string
    MacAddress: string
    ParentControllerId: string
    Classification: string
    CreatedAt: number
    UpdatedAt: number
    ActivatedAt: number
    HubNetworkMode: string
    MetaData: {string : string}
    Tags: {string : string}
    WiFiSimpleSetupConfiguration: WiFiSimpleSetupConfiguration
end

local record GetManagedThingCapabilitiesInput
    Identifier: string
end

local record GetManagedThingCapabilitiesOutput
    ManagedThingId: string
    Capabilities: string
    CapabilityReport: CapabilityReport
end

local record GetManagedThingCertificateInput
    Identifier: string
end

local record GetManagedThingCertificateOutput
    ManagedThingId: string
    CertificatePem: string
end

local record GetManagedThingConnectivityDataInput
    Identifier: string
end

local record GetManagedThingConnectivityDataOutput
    ManagedThingId: string
    Connected: boolean
    Timestamp: number
    DisconnectReason: string
end

local record GetManagedThingMetaDataInput
    Identifier: string
end

local record GetManagedThingMetaDataOutput
    ManagedThingId: string
    MetaData: {string : string}
end

local record GetManagedThingStateInput
    ManagedThingId: string
end

local record GetManagedThingStateOutput
    Endpoints: {StateEndpoint}
end

local record GetNotificationConfigurationInput
    EventType: string
end

local record GetNotificationConfigurationOutput
    EventType: string
    DestinationName: string
    CreatedAt: number
    UpdatedAt: number
    Tags: {string : string}
end

local record GetOtaTaskInput
    Identifier: string
end

local record GetOtaTaskOutput
    TaskId: string
    TaskArn: string
    Description: string
    S3Url: string
    Protocol: string
    OtaType: string
    OtaTargetQueryString: string
    OtaMechanism: string
    Target: {string}
    CreatedAt: number
    LastUpdatedAt: number
    TaskConfigurationId: string
    TaskProcessingDetails: TaskProcessingDetails
    OtaSchedulingConfig: OtaTaskSchedulingConfig
    OtaTaskExecutionRetryConfig: OtaTaskExecutionRetryConfig
    Status: string
    Tags: {string : string}
end

local record GetOtaTaskConfigurationInput
    Identifier: string
end

local record GetOtaTaskConfigurationOutput
    TaskConfigurationId: string
    Name: string
    PushConfig: PushConfig
    Description: string
    CreatedAt: number
end

local record GetProvisioningProfileInput
    Identifier: string
end

local record GetProvisioningProfileOutput
    Arn: string
    Name: string
    ProvisioningType: string
    Id: string
    Status: string
    ClaimCertificate: string
    Tags: {string : string}
end

local record GetRuntimeLogConfigurationInput
    ManagedThingId: string
end

local record GetRuntimeLogConfigurationOutput
    ManagedThingId: string
    RuntimeLogConfigurations: RuntimeLogConfigurations
end

local record GetSchemaVersionInput
    Type: string
    SchemaVersionedId: string
    Format: string
end

local record GetSchemaVersionOutput
    SchemaId: string
    Type: string
    Description: string
    Namespace: string
    SemanticVersion: string
    Visibility: string
    Schema: any
end

local record ListAccountAssociationsInput
    ConnectorDestinationId: string
    MaxResults: number
    NextToken: string
end

local record ListAccountAssociationsOutput
    Items: {AccountAssociationItem}
    NextToken: string
end

local record ListCloudConnectorsInput
    Type: string
    LambdaArn: string
    MaxResults: number
    NextToken: string
end

local record ListCloudConnectorsOutput
    Items: {ConnectorItem}
    NextToken: string
end

local record ListConnectorDestinationsInput
    CloudConnectorId: string
    NextToken: string
    MaxResults: number
end

local record ListConnectorDestinationsOutput
    ConnectorDestinationList: {ConnectorDestinationSummary}
    NextToken: string
end

local record ListCredentialLockersInput
    NextToken: string
    MaxResults: number
end

local record ListCredentialLockersOutput
    Items: {CredentialLockerSummary}
    NextToken: string
end

local record ListDestinationsInput
    NextToken: string
    MaxResults: number
end

local record ListDestinationsOutput
    DestinationList: {DestinationSummary}
    NextToken: string
end

local record ListDeviceDiscoveriesInput
    NextToken: string
    MaxResults: number
    TypeFilter: string
    StatusFilter: string
end

local record ListDeviceDiscoveriesOutput
    Items: {DeviceDiscoverySummary}
    NextToken: string
end

local record ListDiscoveredDevicesInput
    Identifier: string
    NextToken: string
    MaxResults: number
end

local record ListDiscoveredDevicesOutput
    Items: {DiscoveredDeviceSummary}
    NextToken: string
end

local record ListEventLogConfigurationsInput
    NextToken: string
    MaxResults: number
end

local record ListEventLogConfigurationsOutput
    EventLogConfigurationList: {EventLogConfigurationSummary}
    NextToken: string
end

local record ListManagedThingAccountAssociationsInput
    ManagedThingId: string
    AccountAssociationId: string
    MaxResults: number
    NextToken: string
end

local record ListManagedThingAccountAssociationsOutput
    Items: {ManagedThingAssociation}
    NextToken: string
end

local record ListManagedThingsInput
    OwnerFilter: string
    CredentialLockerFilter: string
    RoleFilter: string
    ParentControllerIdentifierFilter: string
    ConnectorPolicyIdFilter: string
    ConnectorDestinationIdFilter: string
    ConnectorDeviceIdFilter: string
    SerialNumberFilter: string
    ProvisioningStatusFilter: string
    NextToken: string
    MaxResults: number
end

local record ListManagedThingsOutput
    Items: {ManagedThingSummary}
    NextToken: string
end

local record ListManagedThingSchemasInput
    Identifier: string
    EndpointIdFilter: string
    CapabilityIdFilter: string
    NextToken: string
    MaxResults: number
end

local record ListManagedThingSchemasOutput
    Items: {ManagedThingSchemaListItem}
    NextToken: string
end

local record ListNotificationConfigurationsInput
    MaxResults: number
    NextToken: string
end

local record ListNotificationConfigurationsOutput
    NotificationConfigurationList: {NotificationConfigurationSummary}
    NextToken: string
end

local record ListOtaTaskConfigurationsInput
    NextToken: string
    MaxResults: number
end

local record ListOtaTaskConfigurationsOutput
    Items: {OtaTaskConfigurationSummary}
    NextToken: string
end

local record ListOtaTaskExecutionsInput
    Identifier: string
    NextToken: string
    MaxResults: number
end

local record ListOtaTaskExecutionsOutput
    ExecutionSummaries: {OtaTaskExecutionSummaries}
    NextToken: string
end

local record ListOtaTasksInput
    NextToken: string
    MaxResults: number
end

local record ListOtaTasksOutput
    Tasks: {OtaTaskSummary}
    NextToken: string
end

local record ListProvisioningProfilesInput
    NextToken: string
    MaxResults: number
end

local record ListProvisioningProfilesOutput
    Items: {ProvisioningProfileSummary}
    NextToken: string
end

local record ListSchemaVersionsInput
    Type: string
    MaxResults: number
    NextToken: string
    SchemaId: string
    Namespace: string
    Visibility: string
    SemanticVersion: string
end

local record ListSchemaVersionsOutput
    Items: {SchemaVersionListItem}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record PutDefaultEncryptionConfigurationInput
    encryptionType: string
    kmsKeyArn: string
end

local record PutDefaultEncryptionConfigurationOutput
    configurationStatus: ConfigurationStatus
    encryptionType: string
    kmsKeyArn: string
end

local record PutHubConfigurationInput
    HubTokenTimerExpirySettingInSeconds: number
end

local record PutHubConfigurationOutput
    HubTokenTimerExpirySettingInSeconds: number
end

local record PutRuntimeLogConfigurationInput
    ManagedThingId: string
    RuntimeLogConfigurations: RuntimeLogConfigurations
end

local record PutRuntimeLogConfigurationOutput
end

local record RegisterAccountAssociationInput
    ManagedThingId: string
    AccountAssociationId: string
    DeviceDiscoveryId: string
end

local record RegisterAccountAssociationOutput
    AccountAssociationId: string
    DeviceDiscoveryId: string
    ManagedThingId: string
end

local record RegisterCustomEndpointInput
end

local record RegisterCustomEndpointOutput
    EndpointAddress: string
end

local record ResetRuntimeLogConfigurationInput
    ManagedThingId: string
end

local record ResetRuntimeLogConfigurationOutput
end

local record SendConnectorEventInput
    ConnectorId: string
    UserId: string
    Operation: string
    OperationVersion: string
    StatusCode: number
    Message: string
    DeviceDiscoveryId: string
    ConnectorDeviceId: string
    TraceId: string
    Devices: {Device}
    MatterEndpoint: MatterEndpoint
end

local record SendConnectorEventOutput
    ConnectorId: string
end

local record SendManagedThingCommandInput
    ManagedThingId: string
    Endpoints: {CommandEndpoint}
    ConnectorAssociationId: string
    AccountAssociationId: string
end

local record SendManagedThingCommandOutput
    TraceId: string
end

local record StartAccountAssociationRefreshInput
    AccountAssociationId: string
end

local record StartAccountAssociationRefreshOutput
    OAuthAuthorizationUrl: string
end

local record StartDeviceDiscoveryInput
    DiscoveryType: string
    CustomProtocolDetail: {string : string}
    ControllerIdentifier: string
    ConnectorAssociationIdentifier: string
    AccountAssociationId: string
    AuthenticationMaterial: string
    AuthenticationMaterialType: string
    ClientToken: string
    Tags: {string : string}
    ConnectorDeviceIdList: {string}
    Protocol: string
    EndDeviceIdentifier: string
end

local record StartDeviceDiscoveryOutput
    Id: string
    StartedAt: number
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

local record UpdateAccountAssociationInput
    AccountAssociationId: string
    Name: string
    Description: string
end

local record UpdateAccountAssociationOutput
end

local record UpdateCloudConnectorInput
    Identifier: string
    Name: string
    Description: string
end

local record UpdateCloudConnectorOutput
end

local record UpdateConnectorDestinationInput
    Identifier: string
    Description: string
    Name: string
    AuthType: string
    AuthConfig: AuthConfigUpdate
    SecretsManager: SecretsManager
end

local record UpdateConnectorDestinationOutput
end

local record UpdateDestinationInput
    Name: string
    DeliveryDestinationArn: string
    DeliveryDestinationType: string
    RoleArn: string
    Description: string
end

local record UpdateDestinationOutput
end

local record UpdateEventLogConfigurationInput
    Id: string
    EventLogLevel: string
end

local record UpdateEventLogConfigurationOutput
end

local record UpdateManagedThingInput
    Identifier: string
    Owner: string
    CredentialLockerId: string
    SerialNumber: string
    WiFiSimpleSetupConfiguration: WiFiSimpleSetupConfiguration
    Brand: string
    Model: string
    Name: string
    CapabilityReport: CapabilityReport
    CapabilitySchemas: {CapabilitySchemaItem}
    Capabilities: string
    Classification: string
    HubNetworkMode: string
    MetaData: {string : string}
end

local record UpdateManagedThingOutput
end

local record UpdateNotificationConfigurationInput
    EventType: string
    DestinationName: string
end

local record UpdateNotificationConfigurationOutput
end

local record UpdateOtaTaskInput
    Identifier: string
    Description: string
    TaskConfigurationId: string
end

local record UpdateOtaTaskOutput
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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

local record ServiceQuotaExceededException
    Message: string
end

local record ServiceUnavailableException
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
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
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
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
    ResourceId: string
    ResourceType: string
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
    ResourceId: string
    ResourceType: string
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
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

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
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
    ResourceId: string
    ResourceType: string
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
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
    ResourceId: string
    ResourceType: string
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
    ResourceId: string
    ResourceType: string
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ValidationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
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
    ResourceId: string
    ResourceType: string
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
    ResourceId: string
    ResourceType: string
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
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
    ResourceId: string
    ResourceType: string
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

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
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
    ResourceId: string
    ResourceType: string
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
    ResourceId: string
    ResourceType: string
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

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
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
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
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
    ResourceId: string
    ResourceType: string
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
    ResourceId: string
    ResourceType: string
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
    ResourceId: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnauthorizedException
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
    ResourceId: string
    ResourceType: string
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
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local type SchemaVersionVisibility = "PUBLIC" | "PRIVATE"

local type HubNetworkMode = "STANDARD" | "NETWORK_WIDE_EXCLUSION"

local type SchemaVersionType = "capability" | "definition"

local type EncryptionType = "MANAGED_INTEGRATIONS_DEFAULT_ENCRYPTION" | "CUSTOMER_KEY_ENCRYPTION"

local type DeviceDiscoveryStatus = "RUNNING" | "SUCCEEDED" | "FAILED" | "TIMED_OUT"

local type ProvisioningProfileStatus = "CREATE_IN_PROGRESS" | "CREATE_FAILED" | "CREATED" | "DELETE_IN_PROGRESS" | "DELETE_FAILED"

local type ConnectorEventOperation = "DEVICE_COMMAND_RESPONSE" | "DEVICE_DISCOVERY" | "DEVICE_EVENT" | "DEVICE_COMMAND_REQUEST"

local type DeliveryDestinationType = "KINESIS"

local type LogLevel = "DEBUG" | "ERROR" | "INFO" | "WARN"

local type AssociationState = "ASSOCIATION_IN_PROGRESS" | "ASSOCIATION_FAILED" | "ASSOCIATION_SUCCEEDED" | "ASSOCIATION_DELETING" | "REFRESH_TOKEN_EXPIRED"

local type AuthType = "OAUTH"

local type EventType = "DEVICE_COMMAND" | "DEVICE_COMMAND_REQUEST" | "DEVICE_DISCOVERY_STATUS" | "DEVICE_EVENT" | "DEVICE_LIFE_CYCLE" | "DEVICE_STATE" | "DEVICE_OTA" | "DEVICE_WSS" | "CONNECTOR_ASSOCIATION" | "ACCOUNT_ASSOCIATION" | "CONNECTOR_ERROR_REPORT"

local type AuthMaterialType = "CUSTOM_PROTOCOL_QR_BAR_CODE" | "WIFI_SETUP_QR_BAR_CODE" | "ZWAVE_QR_BAR_CODE" | "ZIGBEE_QR_BAR_CODE" | "DISCOVERED_DEVICE" | "PRE_ONBOARDED_CLOUD"

local type OtaType = "ONE_TIME" | "CONTINUOUS"

local type Role = "CONTROLLER" | "DEVICE"

local type OtaProtocol = "HTTP"

local type DiscoveryType = "ZWAVE" | "ZIGBEE" | "CLOUD" | "CUSTOM" | "CONTROLLER_CAPABILITY_REDISCOVERY"

local type CloudConnectorType = "LISTED" | "UNLISTED"

local type EndpointType = "LAMBDA"

local type OtaMechanism = "PUSH"

local type ProtocolType = "ZWAVE" | "ZIGBEE" | "CUSTOM"

local type DiscoveryAuthMaterialType = "ZWAVE_INSTALL_CODE"

local type OtaStatus = "IN_PROGRESS" | "CANCELED" | "COMPLETED" | "DELETION_IN_PROGRESS" | "SCHEDULED"

local type ProvisioningStatus = "UNASSOCIATED" | "PRE_ASSOCIATED" | "DISCOVERED" | "ACTIVATED" | "DELETION_FAILED" | "DELETE_IN_PROGRESS" | "ISOLATED" | "DELETED"

local type ProvisioningType = "FLEET_PROVISIONING" | "JITR"

local type SchemaVersionFormat = "AWS" | "ZCL" | "CONNECTOR"

local type DisconnectReasonValue = "AUTH_ERROR" | "CLIENT_INITIATED_DISCONNECT" | "CLIENT_ERROR" | "CONNECTION_LOST" | "DUPLICATE_CLIENTID" | "FORBIDDEN_ACCESS" | "MQTT_KEEP_ALIVE_TIMEOUT" | "SERVER_ERROR" | "SERVER_INITIATED_DISCONNECT" | "THROTTLED" | "WEBSOCKET_TTL_EXPIRATION" | "CUSTOMAUTH_TTL_EXPIRATION" | "UNKNOWN" | "NONE"

local record M
    CreateAccountAssociationInput: CreateAccountAssociationInput
    CreateAccountAssociationOutput: CreateAccountAssociationOutput
    CreateCloudConnectorInput: CreateCloudConnectorInput
    CreateCloudConnectorOutput: CreateCloudConnectorOutput
    CreateConnectorDestinationInput: CreateConnectorDestinationInput
    CreateConnectorDestinationOutput: CreateConnectorDestinationOutput
    CreateCredentialLockerInput: CreateCredentialLockerInput
    CreateCredentialLockerOutput: CreateCredentialLockerOutput
    CreateDestinationInput: CreateDestinationInput
    CreateDestinationOutput: CreateDestinationOutput
    CreateEventLogConfigurationInput: CreateEventLogConfigurationInput
    CreateEventLogConfigurationOutput: CreateEventLogConfigurationOutput
    CreateManagedThingInput: CreateManagedThingInput
    CreateManagedThingOutput: CreateManagedThingOutput
    CreateNotificationConfigurationInput: CreateNotificationConfigurationInput
    CreateNotificationConfigurationOutput: CreateNotificationConfigurationOutput
    CreateOtaTaskInput: CreateOtaTaskInput
    CreateOtaTaskOutput: CreateOtaTaskOutput
    CreateOtaTaskConfigurationInput: CreateOtaTaskConfigurationInput
    CreateOtaTaskConfigurationOutput: CreateOtaTaskConfigurationOutput
    CreateProvisioningProfileInput: CreateProvisioningProfileInput
    CreateProvisioningProfileOutput: CreateProvisioningProfileOutput
    DeleteAccountAssociationInput: DeleteAccountAssociationInput
    DeleteAccountAssociationOutput: DeleteAccountAssociationOutput
    DeleteCloudConnectorInput: DeleteCloudConnectorInput
    DeleteCloudConnectorOutput: DeleteCloudConnectorOutput
    DeleteConnectorDestinationInput: DeleteConnectorDestinationInput
    DeleteConnectorDestinationOutput: DeleteConnectorDestinationOutput
    DeleteCredentialLockerInput: DeleteCredentialLockerInput
    DeleteCredentialLockerOutput: DeleteCredentialLockerOutput
    DeleteDestinationInput: DeleteDestinationInput
    DeleteDestinationOutput: DeleteDestinationOutput
    DeleteEventLogConfigurationInput: DeleteEventLogConfigurationInput
    DeleteEventLogConfigurationOutput: DeleteEventLogConfigurationOutput
    DeleteManagedThingInput: DeleteManagedThingInput
    DeleteManagedThingOutput: DeleteManagedThingOutput
    DeleteNotificationConfigurationInput: DeleteNotificationConfigurationInput
    DeleteNotificationConfigurationOutput: DeleteNotificationConfigurationOutput
    DeleteOtaTaskInput: DeleteOtaTaskInput
    DeleteOtaTaskOutput: DeleteOtaTaskOutput
    DeleteOtaTaskConfigurationInput: DeleteOtaTaskConfigurationInput
    DeleteOtaTaskConfigurationOutput: DeleteOtaTaskConfigurationOutput
    DeleteProvisioningProfileInput: DeleteProvisioningProfileInput
    DeleteProvisioningProfileOutput: DeleteProvisioningProfileOutput
    DeregisterAccountAssociationInput: DeregisterAccountAssociationInput
    DeregisterAccountAssociationOutput: DeregisterAccountAssociationOutput
    GetAccountAssociationInput: GetAccountAssociationInput
    GetAccountAssociationOutput: GetAccountAssociationOutput
    GetCloudConnectorInput: GetCloudConnectorInput
    GetCloudConnectorOutput: GetCloudConnectorOutput
    GetConnectorDestinationInput: GetConnectorDestinationInput
    GetConnectorDestinationOutput: GetConnectorDestinationOutput
    GetCredentialLockerInput: GetCredentialLockerInput
    GetCredentialLockerOutput: GetCredentialLockerOutput
    GetCustomEndpointInput: GetCustomEndpointInput
    GetCustomEndpointOutput: GetCustomEndpointOutput
    GetDefaultEncryptionConfigurationInput: GetDefaultEncryptionConfigurationInput
    GetDefaultEncryptionConfigurationOutput: GetDefaultEncryptionConfigurationOutput
    GetDestinationInput: GetDestinationInput
    GetDestinationOutput: GetDestinationOutput
    GetDeviceDiscoveryInput: GetDeviceDiscoveryInput
    GetDeviceDiscoveryOutput: GetDeviceDiscoveryOutput
    GetEventLogConfigurationInput: GetEventLogConfigurationInput
    GetEventLogConfigurationOutput: GetEventLogConfigurationOutput
    GetHubConfigurationInput: GetHubConfigurationInput
    GetHubConfigurationOutput: GetHubConfigurationOutput
    GetManagedThingInput: GetManagedThingInput
    GetManagedThingOutput: GetManagedThingOutput
    GetManagedThingCapabilitiesInput: GetManagedThingCapabilitiesInput
    GetManagedThingCapabilitiesOutput: GetManagedThingCapabilitiesOutput
    GetManagedThingCertificateInput: GetManagedThingCertificateInput
    GetManagedThingCertificateOutput: GetManagedThingCertificateOutput
    GetManagedThingConnectivityDataInput: GetManagedThingConnectivityDataInput
    GetManagedThingConnectivityDataOutput: GetManagedThingConnectivityDataOutput
    GetManagedThingMetaDataInput: GetManagedThingMetaDataInput
    GetManagedThingMetaDataOutput: GetManagedThingMetaDataOutput
    GetManagedThingStateInput: GetManagedThingStateInput
    GetManagedThingStateOutput: GetManagedThingStateOutput
    GetNotificationConfigurationInput: GetNotificationConfigurationInput
    GetNotificationConfigurationOutput: GetNotificationConfigurationOutput
    GetOtaTaskInput: GetOtaTaskInput
    GetOtaTaskOutput: GetOtaTaskOutput
    GetOtaTaskConfigurationInput: GetOtaTaskConfigurationInput
    GetOtaTaskConfigurationOutput: GetOtaTaskConfigurationOutput
    GetProvisioningProfileInput: GetProvisioningProfileInput
    GetProvisioningProfileOutput: GetProvisioningProfileOutput
    GetRuntimeLogConfigurationInput: GetRuntimeLogConfigurationInput
    GetRuntimeLogConfigurationOutput: GetRuntimeLogConfigurationOutput
    GetSchemaVersionInput: GetSchemaVersionInput
    GetSchemaVersionOutput: GetSchemaVersionOutput
    ListAccountAssociationsInput: ListAccountAssociationsInput
    ListAccountAssociationsOutput: ListAccountAssociationsOutput
    ListCloudConnectorsInput: ListCloudConnectorsInput
    ListCloudConnectorsOutput: ListCloudConnectorsOutput
    ListConnectorDestinationsInput: ListConnectorDestinationsInput
    ListConnectorDestinationsOutput: ListConnectorDestinationsOutput
    ListCredentialLockersInput: ListCredentialLockersInput
    ListCredentialLockersOutput: ListCredentialLockersOutput
    ListDestinationsInput: ListDestinationsInput
    ListDestinationsOutput: ListDestinationsOutput
    ListDeviceDiscoveriesInput: ListDeviceDiscoveriesInput
    ListDeviceDiscoveriesOutput: ListDeviceDiscoveriesOutput
    ListDiscoveredDevicesInput: ListDiscoveredDevicesInput
    ListDiscoveredDevicesOutput: ListDiscoveredDevicesOutput
    ListEventLogConfigurationsInput: ListEventLogConfigurationsInput
    ListEventLogConfigurationsOutput: ListEventLogConfigurationsOutput
    ListManagedThingAccountAssociationsInput: ListManagedThingAccountAssociationsInput
    ListManagedThingAccountAssociationsOutput: ListManagedThingAccountAssociationsOutput
    ListManagedThingsInput: ListManagedThingsInput
    ListManagedThingsOutput: ListManagedThingsOutput
    ListManagedThingSchemasInput: ListManagedThingSchemasInput
    ListManagedThingSchemasOutput: ListManagedThingSchemasOutput
    ListNotificationConfigurationsInput: ListNotificationConfigurationsInput
    ListNotificationConfigurationsOutput: ListNotificationConfigurationsOutput
    ListOtaTaskConfigurationsInput: ListOtaTaskConfigurationsInput
    ListOtaTaskConfigurationsOutput: ListOtaTaskConfigurationsOutput
    ListOtaTaskExecutionsInput: ListOtaTaskExecutionsInput
    ListOtaTaskExecutionsOutput: ListOtaTaskExecutionsOutput
    ListOtaTasksInput: ListOtaTasksInput
    ListOtaTasksOutput: ListOtaTasksOutput
    ListProvisioningProfilesInput: ListProvisioningProfilesInput
    ListProvisioningProfilesOutput: ListProvisioningProfilesOutput
    ListSchemaVersionsInput: ListSchemaVersionsInput
    ListSchemaVersionsOutput: ListSchemaVersionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutDefaultEncryptionConfigurationInput: PutDefaultEncryptionConfigurationInput
    PutDefaultEncryptionConfigurationOutput: PutDefaultEncryptionConfigurationOutput
    PutHubConfigurationInput: PutHubConfigurationInput
    PutHubConfigurationOutput: PutHubConfigurationOutput
    PutRuntimeLogConfigurationInput: PutRuntimeLogConfigurationInput
    PutRuntimeLogConfigurationOutput: PutRuntimeLogConfigurationOutput
    RegisterAccountAssociationInput: RegisterAccountAssociationInput
    RegisterAccountAssociationOutput: RegisterAccountAssociationOutput
    RegisterCustomEndpointInput: RegisterCustomEndpointInput
    RegisterCustomEndpointOutput: RegisterCustomEndpointOutput
    ResetRuntimeLogConfigurationInput: ResetRuntimeLogConfigurationInput
    ResetRuntimeLogConfigurationOutput: ResetRuntimeLogConfigurationOutput
    SendConnectorEventInput: SendConnectorEventInput
    SendConnectorEventOutput: SendConnectorEventOutput
    SendManagedThingCommandInput: SendManagedThingCommandInput
    SendManagedThingCommandOutput: SendManagedThingCommandOutput
    StartAccountAssociationRefreshInput: StartAccountAssociationRefreshInput
    StartAccountAssociationRefreshOutput: StartAccountAssociationRefreshOutput
    StartDeviceDiscoveryInput: StartDeviceDiscoveryInput
    StartDeviceDiscoveryOutput: StartDeviceDiscoveryOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAccountAssociationInput: UpdateAccountAssociationInput
    UpdateAccountAssociationOutput: UpdateAccountAssociationOutput
    UpdateCloudConnectorInput: UpdateCloudConnectorInput
    UpdateCloudConnectorOutput: UpdateCloudConnectorOutput
    UpdateConnectorDestinationInput: UpdateConnectorDestinationInput
    UpdateConnectorDestinationOutput: UpdateConnectorDestinationOutput
    UpdateDestinationInput: UpdateDestinationInput
    UpdateDestinationOutput: UpdateDestinationOutput
    UpdateEventLogConfigurationInput: UpdateEventLogConfigurationInput
    UpdateEventLogConfigurationOutput: UpdateEventLogConfigurationOutput
    UpdateManagedThingInput: UpdateManagedThingInput
    UpdateManagedThingOutput: UpdateManagedThingOutput
    UpdateNotificationConfigurationInput: UpdateNotificationConfigurationInput
    UpdateNotificationConfigurationOutput: UpdateNotificationConfigurationOutput
    UpdateOtaTaskInput: UpdateOtaTaskInput
    UpdateOtaTaskOutput: UpdateOtaTaskOutput
end

return M
