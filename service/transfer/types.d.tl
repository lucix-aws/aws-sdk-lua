local record CreateAccessInput
    HomeDirectory: string
    HomeDirectoryType: string
    HomeDirectoryMappings: {HomeDirectoryMapEntry}
    Policy: string
    PosixProfile: PosixProfile
    Role: string
    ServerId: string
    ExternalId: string
end

local record CreateAccessOutput
    ServerId: string
    ExternalId: string
end

local record CreateAgreementInput
    Description: string
    ServerId: string
    LocalProfileId: string
    PartnerProfileId: string
    BaseDirectory: string
    AccessRole: string
    Status: string
    Tags: {Tag}
    PreserveFilename: string
    EnforceMessageSigning: string
    CustomDirectories: CustomDirectoriesType
end

local record CreateAgreementOutput
    AgreementId: string
end

local record CreateConnectorInput
    Url: string
    As2Config: As2ConnectorConfig
    AccessRole: string
    LoggingRole: string
    Tags: {Tag}
    SftpConfig: SftpConnectorConfig
    SecurityPolicyName: string
    EgressConfig: ConnectorEgressConfig
    IpAddressType: string
end

local record CreateConnectorOutput
    ConnectorId: string
end

local record CreateProfileInput
    As2Id: string
    ProfileType: string
    CertificateIds: {string}
    Tags: {Tag}
end

local record CreateProfileOutput
    ProfileId: string
end

local record CreateServerInput
    Certificate: string
    Domain: string
    EndpointDetails: EndpointDetails
    EndpointType: string
    HostKey: string
    IdentityProviderDetails: IdentityProviderDetails
    IdentityProviderType: string
    LoggingRole: string
    PostAuthenticationLoginBanner: string
    PreAuthenticationLoginBanner: string
    Protocols: {string}
    ProtocolDetails: ProtocolDetails
    SecurityPolicyName: string
    Tags: {Tag}
    WorkflowDetails: WorkflowDetails
    StructuredLogDestinations: {string}
    S3StorageOptions: S3StorageOptions
    IpAddressType: string
end

local record CreateServerOutput
    ServerId: string
end

local record CreateUserInput
    HomeDirectory: string
    HomeDirectoryType: string
    HomeDirectoryMappings: {HomeDirectoryMapEntry}
    Policy: string
    PosixProfile: PosixProfile
    Role: string
    ServerId: string
    SshPublicKeyBody: string
    Tags: {Tag}
    UserName: string
end

local record CreateUserOutput
    ServerId: string
    UserName: string
end

local record CreateWebAppInput
    IdentityProviderDetails: WebAppIdentityProviderDetails
    AccessEndpoint: string
    WebAppUnits: WebAppUnits
    Tags: {Tag}
    WebAppEndpointPolicy: string
    EndpointDetails: WebAppEndpointDetails
end

local record CreateWebAppOutput
    WebAppId: string
end

local record CreateWorkflowInput
    Description: string
    Steps: {WorkflowStep}
    OnExceptionSteps: {WorkflowStep}
    Tags: {Tag}
end

local record CreateWorkflowOutput
    WorkflowId: string
end

local record DeleteAccessInput
    ServerId: string
    ExternalId: string
end

local record DeleteAccessOutput
end

local record DeleteAgreementInput
    AgreementId: string
    ServerId: string
end

local record DeleteAgreementOutput
end

local record DeleteCertificateInput
    CertificateId: string
end

local record DeleteCertificateOutput
end

local record DeleteConnectorInput
    ConnectorId: string
end

local record DeleteConnectorOutput
end

local record DeleteHostKeyInput
    ServerId: string
    HostKeyId: string
end

local record DeleteHostKeyOutput
end

local record DeleteProfileInput
    ProfileId: string
end

local record DeleteProfileOutput
end

local record DeleteServerInput
    ServerId: string
end

local record DeleteServerOutput
end

local record DeleteSshPublicKeyInput
    ServerId: string
    SshPublicKeyId: string
    UserName: string
end

local record DeleteSshPublicKeyOutput
end

local record DeleteUserInput
    ServerId: string
    UserName: string
end

local record DeleteUserOutput
end

local record DeleteWebAppInput
    WebAppId: string
end

local record DeleteWebAppOutput
end

local record DeleteWebAppCustomizationInput
    WebAppId: string
end

local record DeleteWebAppCustomizationOutput
end

local record DeleteWorkflowInput
    WorkflowId: string
end

local record DeleteWorkflowOutput
end

local record DescribeAccessInput
    ServerId: string
    ExternalId: string
end

local record DescribeAccessOutput
    ServerId: string
    Access: DescribedAccess
end

local record DescribeAgreementInput
    AgreementId: string
    ServerId: string
end

local record DescribeAgreementOutput
    Agreement: DescribedAgreement
end

local record DescribeCertificateInput
    CertificateId: string
end

local record DescribeCertificateOutput
    Certificate: DescribedCertificate
end

local record DescribeConnectorInput
    ConnectorId: string
end

local record DescribeConnectorOutput
    Connector: DescribedConnector
end

local record DescribeExecutionInput
    ExecutionId: string
    WorkflowId: string
end

local record DescribeExecutionOutput
    WorkflowId: string
    Execution: DescribedExecution
end

local record DescribeHostKeyInput
    ServerId: string
    HostKeyId: string
end

local record DescribeHostKeyOutput
    HostKey: DescribedHostKey
end

local record DescribeProfileInput
    ProfileId: string
end

local record DescribeProfileOutput
    Profile: DescribedProfile
end

local record DescribeSecurityPolicyInput
    SecurityPolicyName: string
end

local record DescribeSecurityPolicyOutput
    SecurityPolicy: DescribedSecurityPolicy
end

local record DescribeServerInput
    ServerId: string
end

local record DescribeServerOutput
    Server: DescribedServer
end

local record DescribeUserInput
    ServerId: string
    UserName: string
end

local record DescribeUserOutput
    ServerId: string
    User: DescribedUser
end

local record DescribeWebAppInput
    WebAppId: string
end

local record DescribeWebAppOutput
    WebApp: DescribedWebApp
end

local record DescribeWebAppCustomizationInput
    WebAppId: string
end

local record DescribeWebAppCustomizationOutput
    WebAppCustomization: DescribedWebAppCustomization
end

local record DescribeWorkflowInput
    WorkflowId: string
end

local record DescribeWorkflowOutput
    Workflow: DescribedWorkflow
end

local record ImportCertificateInput
    Usage: string
    Certificate: string
    CertificateChain: string
    PrivateKey: string
    ActiveDate: number
    InactiveDate: number
    Description: string
    Tags: {Tag}
end

local record ImportCertificateOutput
    CertificateId: string
end

local record ImportHostKeyInput
    ServerId: string
    HostKeyBody: string
    Description: string
    Tags: {Tag}
end

local record ImportHostKeyOutput
    ServerId: string
    HostKeyId: string
end

local record ImportSshPublicKeyInput
    ServerId: string
    SshPublicKeyBody: string
    UserName: string
end

local record ImportSshPublicKeyOutput
    ServerId: string
    SshPublicKeyId: string
    UserName: string
end

local record ListAccessesInput
    MaxResults: number
    NextToken: string
    ServerId: string
end

local record ListAccessesOutput
    NextToken: string
    ServerId: string
    Accesses: {ListedAccess}
end

local record ListAgreementsInput
    MaxResults: number
    NextToken: string
    ServerId: string
end

local record ListAgreementsOutput
    NextToken: string
    Agreements: {ListedAgreement}
end

local record ListCertificatesInput
    MaxResults: number
    NextToken: string
end

local record ListCertificatesOutput
    NextToken: string
    Certificates: {ListedCertificate}
end

local record ListConnectorsInput
    MaxResults: number
    NextToken: string
end

local record ListConnectorsOutput
    NextToken: string
    Connectors: {ListedConnector}
end

local record ListExecutionsInput
    MaxResults: number
    NextToken: string
    WorkflowId: string
end

local record ListExecutionsOutput
    NextToken: string
    WorkflowId: string
    Executions: {ListedExecution}
end

local record ListFileTransferResultsInput
    ConnectorId: string
    TransferId: string
    NextToken: string
    MaxResults: number
end

local record ListFileTransferResultsOutput
    FileTransferResults: {ConnectorFileTransferResult}
    NextToken: string
end

local record ListHostKeysInput
    MaxResults: number
    NextToken: string
    ServerId: string
end

local record ListHostKeysOutput
    NextToken: string
    ServerId: string
    HostKeys: {ListedHostKey}
end

local record ListProfilesInput
    MaxResults: number
    NextToken: string
    ProfileType: string
end

local record ListProfilesOutput
    NextToken: string
    Profiles: {ListedProfile}
end

local record ListSecurityPoliciesInput
    MaxResults: number
    NextToken: string
end

local record ListSecurityPoliciesOutput
    NextToken: string
    SecurityPolicyNames: {string}
end

local record ListServersInput
    MaxResults: number
    NextToken: string
end

local record ListServersOutput
    NextToken: string
    Servers: {ListedServer}
end

local record ListTagsForResourceInput
    Arn: string
    MaxResults: number
    NextToken: string
end

local record ListTagsForResourceOutput
    Arn: string
    NextToken: string
    Tags: {Tag}
end

local record ListUsersInput
    MaxResults: number
    NextToken: string
    ServerId: string
end

local record ListUsersOutput
    NextToken: string
    ServerId: string
    Users: {ListedUser}
end

local record ListWebAppsInput
    MaxResults: number
    NextToken: string
end

local record ListWebAppsOutput
    NextToken: string
    WebApps: {ListedWebApp}
end

local record ListWorkflowsInput
    MaxResults: number
    NextToken: string
end

local record ListWorkflowsOutput
    NextToken: string
    Workflows: {ListedWorkflow}
end

local record SendWorkflowStepStateInput
    WorkflowId: string
    ExecutionId: string
    Token: string
    Status: string
end

local record SendWorkflowStepStateOutput
end

local record StartDirectoryListingInput
    ConnectorId: string
    RemoteDirectoryPath: string
    MaxItems: number
    OutputDirectoryPath: string
end

local record StartDirectoryListingOutput
    ListingId: string
    OutputFileName: string
end

local record StartFileTransferInput
    ConnectorId: string
    SendFilePaths: {string}
    RetrieveFilePaths: {string}
    LocalDirectoryPath: string
    RemoteDirectoryPath: string
    CustomHttpHeaders: {CustomHttpHeader}
end

local record StartFileTransferOutput
    TransferId: string
end

local record StartRemoteDeleteInput
    ConnectorId: string
    DeletePath: string
end

local record StartRemoteDeleteOutput
    DeleteId: string
end

local record StartRemoteMoveInput
    ConnectorId: string
    SourcePath: string
    TargetPath: string
end

local record StartRemoteMoveOutput
    MoveId: string
end

local record StartServerInput
    ServerId: string
end

local record StartServerOutput
end

local record StopServerInput
    ServerId: string
end

local record StopServerOutput
end

local record TagResourceInput
    Arn: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record TestConnectionInput
    ConnectorId: string
end

local record TestConnectionOutput
    ConnectorId: string
    Status: string
    StatusMessage: string
    SftpConnectionDetails: SftpConnectorConnectionDetails
end

local record TestIdentityProviderInput
    ServerId: string
    ServerProtocol: string
    SourceIp: string
    UserName: string
    UserPassword: string
end

local record TestIdentityProviderOutput
    Response: string
    StatusCode: number
    Message: string
    Url: string
end

local record UntagResourceInput
    Arn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateAccessInput
    HomeDirectory: string
    HomeDirectoryType: string
    HomeDirectoryMappings: {HomeDirectoryMapEntry}
    Policy: string
    PosixProfile: PosixProfile
    Role: string
    ServerId: string
    ExternalId: string
end

local record UpdateAccessOutput
    ServerId: string
    ExternalId: string
end

local record UpdateAgreementInput
    AgreementId: string
    ServerId: string
    Description: string
    Status: string
    LocalProfileId: string
    PartnerProfileId: string
    BaseDirectory: string
    AccessRole: string
    PreserveFilename: string
    EnforceMessageSigning: string
    CustomDirectories: CustomDirectoriesType
end

local record UpdateAgreementOutput
    AgreementId: string
end

local record UpdateCertificateInput
    CertificateId: string
    ActiveDate: number
    InactiveDate: number
    Description: string
end

local record UpdateCertificateOutput
    CertificateId: string
end

local record UpdateConnectorInput
    ConnectorId: string
    Url: string
    As2Config: As2ConnectorConfig
    AccessRole: string
    LoggingRole: string
    SftpConfig: SftpConnectorConfig
    SecurityPolicyName: string
    EgressConfig: UpdateConnectorEgressConfig
    IpAddressType: string
end

local record UpdateConnectorOutput
    ConnectorId: string
end

local record UpdateHostKeyInput
    ServerId: string
    HostKeyId: string
    Description: string
end

local record UpdateHostKeyOutput
    ServerId: string
    HostKeyId: string
end

local record UpdateProfileInput
    ProfileId: string
    CertificateIds: {string}
end

local record UpdateProfileOutput
    ProfileId: string
end

local record UpdateServerInput
    Certificate: string
    ProtocolDetails: ProtocolDetails
    EndpointDetails: EndpointDetails
    EndpointType: string
    HostKey: string
    IdentityProviderDetails: IdentityProviderDetails
    LoggingRole: string
    PostAuthenticationLoginBanner: string
    PreAuthenticationLoginBanner: string
    Protocols: {string}
    SecurityPolicyName: string
    ServerId: string
    WorkflowDetails: WorkflowDetails
    StructuredLogDestinations: {string}
    S3StorageOptions: S3StorageOptions
    IpAddressType: string
    IdentityProviderType: string
end

local record UpdateServerOutput
    ServerId: string
end

local record UpdateUserInput
    HomeDirectory: string
    HomeDirectoryType: string
    HomeDirectoryMappings: {HomeDirectoryMapEntry}
    Policy: string
    PosixProfile: PosixProfile
    Role: string
    ServerId: string
    UserName: string
end

local record UpdateUserOutput
    ServerId: string
    UserName: string
end

local record UpdateWebAppInput
    WebAppId: string
    IdentityProviderDetails: UpdateWebAppIdentityProviderDetails
    AccessEndpoint: string
    WebAppUnits: WebAppUnits
    EndpointDetails: UpdateWebAppEndpointDetails
end

local record UpdateWebAppOutput
    WebAppId: string
end

local record UpdateWebAppCustomizationInput
    WebAppId: string
    Title: string
    LogoFile: string
    FaviconFile: string
end

local record UpdateWebAppCustomizationOutput
    WebAppId: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceExistsException
    Message: string
    Resource: string
    ResourceType: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceExistsException
    Message: string
    Resource: string
    ResourceType: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceExistsException
    Message: string
    Resource: string
    ResourceType: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceExistsException
    Message: string
    Resource: string
    ResourceType: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceExistsException
    Message: string
    Resource: string
    ResourceType: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceExistsException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceExistsException
    Message: string
    Resource: string
    ResourceType: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceExistsException
    Message: string
    Resource: string
    ResourceType: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record InternalServiceError
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record InternalServiceError
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceExistsException
    Message: string
    Resource: string
    ResourceType: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceExistsException
    Message: string
    Resource: string
    ResourceType: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceExistsException
    Message: string
    Resource: string
    ResourceType: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceExistsException
    Message: string
    Resource: string
    ResourceType: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Resource: string
    ResourceType: string
end

local record ThrottlingException
    RetryAfterSeconds: string
end

local type EnforceMessageSigningType = "ENABLED" | "DISABLED"

local type AgreementStatusType = "ACTIVE" | "INACTIVE"

local type CustomStepStatus = "SUCCESS" | "FAILURE"

local type ProfileType = "LOCAL" | "PARTNER"

local type HomeDirectoryType = "PATH" | "LOGICAL"

local type IdentityProviderType = "SERVICE_MANAGED" | "API_GATEWAY" | "AWS_DIRECTORY_SERVICE" | "AWS_LAMBDA"

local type PreserveFilenameType = "ENABLED" | "DISABLED"

local type IpAddressType = "IPV4" | "DUALSTACK"

local type CertificateUsageType = "SIGNING" | "ENCRYPTION" | "TLS"

local type Domain = "S3" | "EFS"

local type EndpointType = "PUBLIC" | "VPC" | "VPC_ENDPOINT"

local type Protocol = "SFTP" | "FTP" | "FTPS" | "AS2"

local type ConnectorsIpAddressType = "IPV4" | "DUALSTACK"

local type WebAppEndpointPolicy = "FIPS" | "STANDARD"

local record M
    CreateAccessInput: CreateAccessInput
    CreateAccessOutput: CreateAccessOutput
    CreateAgreementInput: CreateAgreementInput
    CreateAgreementOutput: CreateAgreementOutput
    CreateConnectorInput: CreateConnectorInput
    CreateConnectorOutput: CreateConnectorOutput
    CreateProfileInput: CreateProfileInput
    CreateProfileOutput: CreateProfileOutput
    CreateServerInput: CreateServerInput
    CreateServerOutput: CreateServerOutput
    CreateUserInput: CreateUserInput
    CreateUserOutput: CreateUserOutput
    CreateWebAppInput: CreateWebAppInput
    CreateWebAppOutput: CreateWebAppOutput
    CreateWorkflowInput: CreateWorkflowInput
    CreateWorkflowOutput: CreateWorkflowOutput
    DeleteAccessInput: DeleteAccessInput
    DeleteAccessOutput: DeleteAccessOutput
    DeleteAgreementInput: DeleteAgreementInput
    DeleteAgreementOutput: DeleteAgreementOutput
    DeleteCertificateInput: DeleteCertificateInput
    DeleteCertificateOutput: DeleteCertificateOutput
    DeleteConnectorInput: DeleteConnectorInput
    DeleteConnectorOutput: DeleteConnectorOutput
    DeleteHostKeyInput: DeleteHostKeyInput
    DeleteHostKeyOutput: DeleteHostKeyOutput
    DeleteProfileInput: DeleteProfileInput
    DeleteProfileOutput: DeleteProfileOutput
    DeleteServerInput: DeleteServerInput
    DeleteServerOutput: DeleteServerOutput
    DeleteSshPublicKeyInput: DeleteSshPublicKeyInput
    DeleteSshPublicKeyOutput: DeleteSshPublicKeyOutput
    DeleteUserInput: DeleteUserInput
    DeleteUserOutput: DeleteUserOutput
    DeleteWebAppInput: DeleteWebAppInput
    DeleteWebAppOutput: DeleteWebAppOutput
    DeleteWebAppCustomizationInput: DeleteWebAppCustomizationInput
    DeleteWebAppCustomizationOutput: DeleteWebAppCustomizationOutput
    DeleteWorkflowInput: DeleteWorkflowInput
    DeleteWorkflowOutput: DeleteWorkflowOutput
    DescribeAccessInput: DescribeAccessInput
    DescribeAccessOutput: DescribeAccessOutput
    DescribeAgreementInput: DescribeAgreementInput
    DescribeAgreementOutput: DescribeAgreementOutput
    DescribeCertificateInput: DescribeCertificateInput
    DescribeCertificateOutput: DescribeCertificateOutput
    DescribeConnectorInput: DescribeConnectorInput
    DescribeConnectorOutput: DescribeConnectorOutput
    DescribeExecutionInput: DescribeExecutionInput
    DescribeExecutionOutput: DescribeExecutionOutput
    DescribeHostKeyInput: DescribeHostKeyInput
    DescribeHostKeyOutput: DescribeHostKeyOutput
    DescribeProfileInput: DescribeProfileInput
    DescribeProfileOutput: DescribeProfileOutput
    DescribeSecurityPolicyInput: DescribeSecurityPolicyInput
    DescribeSecurityPolicyOutput: DescribeSecurityPolicyOutput
    DescribeServerInput: DescribeServerInput
    DescribeServerOutput: DescribeServerOutput
    DescribeUserInput: DescribeUserInput
    DescribeUserOutput: DescribeUserOutput
    DescribeWebAppInput: DescribeWebAppInput
    DescribeWebAppOutput: DescribeWebAppOutput
    DescribeWebAppCustomizationInput: DescribeWebAppCustomizationInput
    DescribeWebAppCustomizationOutput: DescribeWebAppCustomizationOutput
    DescribeWorkflowInput: DescribeWorkflowInput
    DescribeWorkflowOutput: DescribeWorkflowOutput
    ImportCertificateInput: ImportCertificateInput
    ImportCertificateOutput: ImportCertificateOutput
    ImportHostKeyInput: ImportHostKeyInput
    ImportHostKeyOutput: ImportHostKeyOutput
    ImportSshPublicKeyInput: ImportSshPublicKeyInput
    ImportSshPublicKeyOutput: ImportSshPublicKeyOutput
    ListAccessesInput: ListAccessesInput
    ListAccessesOutput: ListAccessesOutput
    ListAgreementsInput: ListAgreementsInput
    ListAgreementsOutput: ListAgreementsOutput
    ListCertificatesInput: ListCertificatesInput
    ListCertificatesOutput: ListCertificatesOutput
    ListConnectorsInput: ListConnectorsInput
    ListConnectorsOutput: ListConnectorsOutput
    ListExecutionsInput: ListExecutionsInput
    ListExecutionsOutput: ListExecutionsOutput
    ListFileTransferResultsInput: ListFileTransferResultsInput
    ListFileTransferResultsOutput: ListFileTransferResultsOutput
    ListHostKeysInput: ListHostKeysInput
    ListHostKeysOutput: ListHostKeysOutput
    ListProfilesInput: ListProfilesInput
    ListProfilesOutput: ListProfilesOutput
    ListSecurityPoliciesInput: ListSecurityPoliciesInput
    ListSecurityPoliciesOutput: ListSecurityPoliciesOutput
    ListServersInput: ListServersInput
    ListServersOutput: ListServersOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListUsersInput: ListUsersInput
    ListUsersOutput: ListUsersOutput
    ListWebAppsInput: ListWebAppsInput
    ListWebAppsOutput: ListWebAppsOutput
    ListWorkflowsInput: ListWorkflowsInput
    ListWorkflowsOutput: ListWorkflowsOutput
    SendWorkflowStepStateInput: SendWorkflowStepStateInput
    SendWorkflowStepStateOutput: SendWorkflowStepStateOutput
    StartDirectoryListingInput: StartDirectoryListingInput
    StartDirectoryListingOutput: StartDirectoryListingOutput
    StartFileTransferInput: StartFileTransferInput
    StartFileTransferOutput: StartFileTransferOutput
    StartRemoteDeleteInput: StartRemoteDeleteInput
    StartRemoteDeleteOutput: StartRemoteDeleteOutput
    StartRemoteMoveInput: StartRemoteMoveInput
    StartRemoteMoveOutput: StartRemoteMoveOutput
    StartServerInput: StartServerInput
    StartServerOutput: StartServerOutput
    StopServerInput: StopServerInput
    StopServerOutput: StopServerOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TestConnectionInput: TestConnectionInput
    TestConnectionOutput: TestConnectionOutput
    TestIdentityProviderInput: TestIdentityProviderInput
    TestIdentityProviderOutput: TestIdentityProviderOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAccessInput: UpdateAccessInput
    UpdateAccessOutput: UpdateAccessOutput
    UpdateAgreementInput: UpdateAgreementInput
    UpdateAgreementOutput: UpdateAgreementOutput
    UpdateCertificateInput: UpdateCertificateInput
    UpdateCertificateOutput: UpdateCertificateOutput
    UpdateConnectorInput: UpdateConnectorInput
    UpdateConnectorOutput: UpdateConnectorOutput
    UpdateHostKeyInput: UpdateHostKeyInput
    UpdateHostKeyOutput: UpdateHostKeyOutput
    UpdateProfileInput: UpdateProfileInput
    UpdateProfileOutput: UpdateProfileOutput
    UpdateServerInput: UpdateServerInput
    UpdateServerOutput: UpdateServerOutput
    UpdateUserInput: UpdateUserInput
    UpdateUserOutput: UpdateUserOutput
    UpdateWebAppInput: UpdateWebAppInput
    UpdateWebAppOutput: UpdateWebAppOutput
    UpdateWebAppCustomizationInput: UpdateWebAppCustomizationInput
    UpdateWebAppCustomizationOutput: UpdateWebAppCustomizationOutput
end

return M
