local record CreateCentralizationRuleForOrganizationInput
    RuleName: string
    Rule: CentralizationRule
    Tags: {string : string}
end

local record CreateCentralizationRuleForOrganizationOutput
    RuleArn: string
end

local record CreateS3TableIntegrationInput
    Encryption: Encryption
    RoleArn: string
    Tags: {string : string}
end

local record CreateS3TableIntegrationOutput
    Arn: string
end

local record CreateTelemetryPipelineInput
    Name: string
    Configuration: TelemetryPipelineConfiguration
    Tags: {string : string}
end

local record CreateTelemetryPipelineOutput
    Arn: string
end

local record CreateTelemetryRuleInput
    RuleName: string
    Rule: TelemetryRule
    Tags: {string : string}
end

local record CreateTelemetryRuleOutput
    RuleArn: string
end

local record CreateTelemetryRuleForOrganizationInput
    RuleName: string
    Rule: TelemetryRule
    Tags: {string : string}
end

local record CreateTelemetryRuleForOrganizationOutput
    RuleArn: string
end

local record DeleteCentralizationRuleForOrganizationInput
    RuleIdentifier: string
end

local record DeleteCentralizationRuleForOrganizationOutput
end

local record DeleteS3TableIntegrationInput
    Arn: string
end

local record DeleteS3TableIntegrationOutput
end

local record DeleteTelemetryPipelineInput
    PipelineIdentifier: string
end

local record DeleteTelemetryPipelineOutput
end

local record DeleteTelemetryRuleInput
    RuleIdentifier: string
end

local record DeleteTelemetryRuleOutput
end

local record DeleteTelemetryRuleForOrganizationInput
    RuleIdentifier: string
end

local record DeleteTelemetryRuleForOrganizationOutput
end

local record GetCentralizationRuleForOrganizationInput
    RuleIdentifier: string
end

local record GetCentralizationRuleForOrganizationOutput
    RuleName: string
    RuleArn: string
    CreatorAccountId: string
    CreatedTimeStamp: number
    CreatedRegion: string
    LastUpdateTimeStamp: number
    RuleHealth: string
    FailureReason: string
    CentralizationRule: CentralizationRule
end

local record GetS3TableIntegrationInput
    Arn: string
end

local record GetS3TableIntegrationOutput
    Arn: string
    RoleArn: string
    Status: string
    Encryption: Encryption
    DestinationTableBucketArn: string
    CreatedTimeStamp: number
end

local record GetTelemetryEnrichmentStatusInput
end

local record GetTelemetryEnrichmentStatusOutput
    Status: string
    AwsResourceExplorerManagedViewArn: string
end

local record GetTelemetryEvaluationStatusInput
end

local record GetTelemetryEvaluationStatusOutput
    Status: string
    FailureReason: string
    HomeRegion: string
    RegionStatuses: {RegionStatus}
end

local record GetTelemetryEvaluationStatusForOrganizationInput
end

local record GetTelemetryEvaluationStatusForOrganizationOutput
    Status: string
    FailureReason: string
    HomeRegion: string
    RegionStatuses: {RegionStatus}
end

local record GetTelemetryPipelineInput
    PipelineIdentifier: string
end

local record GetTelemetryPipelineOutput
    Pipeline: TelemetryPipeline
end

local record GetTelemetryRuleInput
    RuleIdentifier: string
end

local record GetTelemetryRuleOutput
    RuleName: string
    RuleArn: string
    CreatedTimeStamp: number
    LastUpdateTimeStamp: number
    TelemetryRule: TelemetryRule
    HomeRegion: string
    IsReplicated: boolean
    RegionStatuses: {RegionStatus}
end

local record GetTelemetryRuleForOrganizationInput
    RuleIdentifier: string
end

local record GetTelemetryRuleForOrganizationOutput
    RuleName: string
    RuleArn: string
    CreatedTimeStamp: number
    LastUpdateTimeStamp: number
    TelemetryRule: TelemetryRule
    HomeRegion: string
    IsReplicated: boolean
    RegionStatuses: {RegionStatus}
end

local record ListCentralizationRulesForOrganizationInput
    RuleNamePrefix: string
    AllRegions: boolean
    MaxResults: number
    NextToken: string
end

local record ListCentralizationRulesForOrganizationOutput
    CentralizationRuleSummaries: {CentralizationRuleSummary}
    NextToken: string
end

local record ListResourceTelemetryInput
    ResourceIdentifierPrefix: string
    ResourceTypes: {string}
    TelemetryConfigurationState: {string : string}
    ResourceTags: {string : string}
    MaxResults: number
    NextToken: string
end

local record ListResourceTelemetryOutput
    TelemetryConfigurations: {TelemetryConfiguration}
    NextToken: string
end

local record ListResourceTelemetryForOrganizationInput
    AccountIdentifiers: {string}
    ResourceIdentifierPrefix: string
    ResourceTypes: {string}
    TelemetryConfigurationState: {string : string}
    ResourceTags: {string : string}
    MaxResults: number
    NextToken: string
end

local record ListResourceTelemetryForOrganizationOutput
    TelemetryConfigurations: {TelemetryConfiguration}
    NextToken: string
end

local record ListS3TableIntegrationsInput
    MaxResults: number
    NextToken: string
end

local record ListS3TableIntegrationsOutput
    IntegrationSummaries: {IntegrationSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceARN: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record ListTelemetryPipelinesInput
    MaxResults: number
    NextToken: string
end

local record ListTelemetryPipelinesOutput
    PipelineSummaries: {TelemetryPipelineSummary}
    NextToken: string
end

local record ListTelemetryRulesInput
    RuleNamePrefix: string
    MaxResults: number
    NextToken: string
end

local record ListTelemetryRulesOutput
    TelemetryRuleSummaries: {TelemetryRuleSummary}
    NextToken: string
end

local record ListTelemetryRulesForOrganizationInput
    RuleNamePrefix: string
    SourceAccountIds: {string}
    SourceOrganizationUnitIds: {string}
    MaxResults: number
    NextToken: string
end

local record ListTelemetryRulesForOrganizationOutput
    TelemetryRuleSummaries: {TelemetryRuleSummary}
    NextToken: string
end

local record StartTelemetryEnrichmentInput
end

local record StartTelemetryEnrichmentOutput
    Status: string
    AwsResourceExplorerManagedViewArn: string
end

local record StartTelemetryEvaluationInput
    Regions: {string}
    AllRegions: boolean
end

local record StartTelemetryEvaluationOutput
end

local record StartTelemetryEvaluationForOrganizationInput
    Regions: {string}
    AllRegions: boolean
end

local record StartTelemetryEvaluationForOrganizationOutput
end

local record StopTelemetryEnrichmentInput
end

local record StopTelemetryEnrichmentOutput
    Status: string
end

local record StopTelemetryEvaluationInput
end

local record StopTelemetryEvaluationOutput
end

local record StopTelemetryEvaluationForOrganizationInput
end

local record StopTelemetryEvaluationForOrganizationOutput
end

local record TagResourceInput
    ResourceARN: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record TestTelemetryPipelineInput
    Records: {Record}
    Configuration: TelemetryPipelineConfiguration
end

local record TestTelemetryPipelineOutput
    Results: {PipelineOutput}
end

local record UntagResourceInput
    ResourceARN: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateCentralizationRuleForOrganizationInput
    RuleIdentifier: string
    Rule: CentralizationRule
end

local record UpdateCentralizationRuleForOrganizationOutput
    RuleArn: string
end

local record UpdateTelemetryPipelineInput
    PipelineIdentifier: string
    Configuration: TelemetryPipelineConfiguration
end

local record UpdateTelemetryPipelineOutput
end

local record UpdateTelemetryRuleInput
    RuleIdentifier: string
    Rule: TelemetryRule
end

local record UpdateTelemetryRuleOutput
    RuleArn: string
end

local record UpdateTelemetryRuleForOrganizationInput
    RuleIdentifier: string
    Rule: TelemetryRule
end

local record UpdateTelemetryRuleForOrganizationOutput
    RuleArn: string
end

local record ValidateTelemetryPipelineConfigurationInput
    Configuration: TelemetryPipelineConfiguration
end

local record ValidateTelemetryPipelineConfigurationOutput
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    ServiceCode: string
    QuotaCode: string
    amznErrorType: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    ServiceCode: string
    QuotaCode: string
    amznErrorType: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    ServiceCode: string
    QuotaCode: string
    amznErrorType: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    ServiceCode: string
    QuotaCode: string
    amznErrorType: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    ServiceCode: string
    QuotaCode: string
    amznErrorType: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record InvalidStateException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    ServiceCode: string
    QuotaCode: string
    amznErrorType: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record TooManyRequestsException
    Message: string
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    ServiceCode: string
    QuotaCode: string
    amznErrorType: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    ServiceCode: string
    QuotaCode: string
    amznErrorType: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    ServiceCode: string
    QuotaCode: string
    amznErrorType: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    ServiceCode: string
    QuotaCode: string
    amznErrorType: string
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local record AccessDeniedException
    Message: string
    amznErrorType: string
end

local record InternalServerException
    Message: string
    amznErrorType: string
    retryAfterSeconds: number
end

local record TooManyRequestsException
    Message: string
end

local record ValidationException
    Message: string
    Errors: {ValidationError}
end

local type Status = "NOT_STARTED" | "STARTING" | "FAILED_START" | "RUNNING" | "STOPPING" | "FAILED_STOP" | "STOPPED"

local type RuleHealth = "Healthy" | "Unhealthy" | "Provisioning"

local type CentralizationFailureReason = "TRUSTED_ACCESS_NOT_ENABLED" | "DESTINATION_ACCOUNT_NOT_IN_ORGANIZATION" | "INTERNAL_SERVER_ERROR"

local type IntegrationStatus = "ACTIVE" | "DELETING"

local type TelemetryEnrichmentStatus = "Running" | "Stopped" | "Impaired"

local record M
    CreateCentralizationRuleForOrganizationInput: CreateCentralizationRuleForOrganizationInput
    CreateCentralizationRuleForOrganizationOutput: CreateCentralizationRuleForOrganizationOutput
    CreateS3TableIntegrationInput: CreateS3TableIntegrationInput
    CreateS3TableIntegrationOutput: CreateS3TableIntegrationOutput
    CreateTelemetryPipelineInput: CreateTelemetryPipelineInput
    CreateTelemetryPipelineOutput: CreateTelemetryPipelineOutput
    CreateTelemetryRuleInput: CreateTelemetryRuleInput
    CreateTelemetryRuleOutput: CreateTelemetryRuleOutput
    CreateTelemetryRuleForOrganizationInput: CreateTelemetryRuleForOrganizationInput
    CreateTelemetryRuleForOrganizationOutput: CreateTelemetryRuleForOrganizationOutput
    DeleteCentralizationRuleForOrganizationInput: DeleteCentralizationRuleForOrganizationInput
    DeleteCentralizationRuleForOrganizationOutput: DeleteCentralizationRuleForOrganizationOutput
    DeleteS3TableIntegrationInput: DeleteS3TableIntegrationInput
    DeleteS3TableIntegrationOutput: DeleteS3TableIntegrationOutput
    DeleteTelemetryPipelineInput: DeleteTelemetryPipelineInput
    DeleteTelemetryPipelineOutput: DeleteTelemetryPipelineOutput
    DeleteTelemetryRuleInput: DeleteTelemetryRuleInput
    DeleteTelemetryRuleOutput: DeleteTelemetryRuleOutput
    DeleteTelemetryRuleForOrganizationInput: DeleteTelemetryRuleForOrganizationInput
    DeleteTelemetryRuleForOrganizationOutput: DeleteTelemetryRuleForOrganizationOutput
    GetCentralizationRuleForOrganizationInput: GetCentralizationRuleForOrganizationInput
    GetCentralizationRuleForOrganizationOutput: GetCentralizationRuleForOrganizationOutput
    GetS3TableIntegrationInput: GetS3TableIntegrationInput
    GetS3TableIntegrationOutput: GetS3TableIntegrationOutput
    GetTelemetryEnrichmentStatusInput: GetTelemetryEnrichmentStatusInput
    GetTelemetryEnrichmentStatusOutput: GetTelemetryEnrichmentStatusOutput
    GetTelemetryEvaluationStatusInput: GetTelemetryEvaluationStatusInput
    GetTelemetryEvaluationStatusOutput: GetTelemetryEvaluationStatusOutput
    GetTelemetryEvaluationStatusForOrganizationInput: GetTelemetryEvaluationStatusForOrganizationInput
    GetTelemetryEvaluationStatusForOrganizationOutput: GetTelemetryEvaluationStatusForOrganizationOutput
    GetTelemetryPipelineInput: GetTelemetryPipelineInput
    GetTelemetryPipelineOutput: GetTelemetryPipelineOutput
    GetTelemetryRuleInput: GetTelemetryRuleInput
    GetTelemetryRuleOutput: GetTelemetryRuleOutput
    GetTelemetryRuleForOrganizationInput: GetTelemetryRuleForOrganizationInput
    GetTelemetryRuleForOrganizationOutput: GetTelemetryRuleForOrganizationOutput
    ListCentralizationRulesForOrganizationInput: ListCentralizationRulesForOrganizationInput
    ListCentralizationRulesForOrganizationOutput: ListCentralizationRulesForOrganizationOutput
    ListResourceTelemetryInput: ListResourceTelemetryInput
    ListResourceTelemetryOutput: ListResourceTelemetryOutput
    ListResourceTelemetryForOrganizationInput: ListResourceTelemetryForOrganizationInput
    ListResourceTelemetryForOrganizationOutput: ListResourceTelemetryForOrganizationOutput
    ListS3TableIntegrationsInput: ListS3TableIntegrationsInput
    ListS3TableIntegrationsOutput: ListS3TableIntegrationsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTelemetryPipelinesInput: ListTelemetryPipelinesInput
    ListTelemetryPipelinesOutput: ListTelemetryPipelinesOutput
    ListTelemetryRulesInput: ListTelemetryRulesInput
    ListTelemetryRulesOutput: ListTelemetryRulesOutput
    ListTelemetryRulesForOrganizationInput: ListTelemetryRulesForOrganizationInput
    ListTelemetryRulesForOrganizationOutput: ListTelemetryRulesForOrganizationOutput
    StartTelemetryEnrichmentInput: StartTelemetryEnrichmentInput
    StartTelemetryEnrichmentOutput: StartTelemetryEnrichmentOutput
    StartTelemetryEvaluationInput: StartTelemetryEvaluationInput
    StartTelemetryEvaluationOutput: StartTelemetryEvaluationOutput
    StartTelemetryEvaluationForOrganizationInput: StartTelemetryEvaluationForOrganizationInput
    StartTelemetryEvaluationForOrganizationOutput: StartTelemetryEvaluationForOrganizationOutput
    StopTelemetryEnrichmentInput: StopTelemetryEnrichmentInput
    StopTelemetryEnrichmentOutput: StopTelemetryEnrichmentOutput
    StopTelemetryEvaluationInput: StopTelemetryEvaluationInput
    StopTelemetryEvaluationOutput: StopTelemetryEvaluationOutput
    StopTelemetryEvaluationForOrganizationInput: StopTelemetryEvaluationForOrganizationInput
    StopTelemetryEvaluationForOrganizationOutput: StopTelemetryEvaluationForOrganizationOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TestTelemetryPipelineInput: TestTelemetryPipelineInput
    TestTelemetryPipelineOutput: TestTelemetryPipelineOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateCentralizationRuleForOrganizationInput: UpdateCentralizationRuleForOrganizationInput
    UpdateCentralizationRuleForOrganizationOutput: UpdateCentralizationRuleForOrganizationOutput
    UpdateTelemetryPipelineInput: UpdateTelemetryPipelineInput
    UpdateTelemetryPipelineOutput: UpdateTelemetryPipelineOutput
    UpdateTelemetryRuleInput: UpdateTelemetryRuleInput
    UpdateTelemetryRuleOutput: UpdateTelemetryRuleOutput
    UpdateTelemetryRuleForOrganizationInput: UpdateTelemetryRuleForOrganizationInput
    UpdateTelemetryRuleForOrganizationOutput: UpdateTelemetryRuleForOrganizationOutput
    ValidateTelemetryPipelineConfigurationInput: ValidateTelemetryPipelineConfigurationInput
    ValidateTelemetryPipelineConfigurationOutput: ValidateTelemetryPipelineConfigurationOutput
end

return M
