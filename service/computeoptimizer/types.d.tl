local record DeleteRecommendationPreferencesInput
    resourceType: string
    scope: Scope
    recommendationPreferenceNames: {string}
end

local record DeleteRecommendationPreferencesOutput
end

local record DescribeRecommendationExportJobsInput
    jobIds: {string}
    filters: {JobFilter}
    nextToken: string
    maxResults: number
end

local record DescribeRecommendationExportJobsOutput
    recommendationExportJobs: {RecommendationExportJob}
    nextToken: string
end

local record ExportAutoScalingGroupRecommendationsInput
    accountIds: {string}
    filters: {Filter}
    fieldsToExport: {string}
    s3DestinationConfig: S3DestinationConfig
    fileFormat: string
    includeMemberAccounts: boolean
    recommendationPreferences: RecommendationPreferences
end

local record ExportAutoScalingGroupRecommendationsOutput
    jobId: string
    s3Destination: S3Destination
end

local record ExportEBSVolumeRecommendationsInput
    accountIds: {string}
    filters: {EBSFilter}
    fieldsToExport: {string}
    s3DestinationConfig: S3DestinationConfig
    fileFormat: string
    includeMemberAccounts: boolean
end

local record ExportEBSVolumeRecommendationsOutput
    jobId: string
    s3Destination: S3Destination
end

local record ExportEC2InstanceRecommendationsInput
    accountIds: {string}
    filters: {Filter}
    fieldsToExport: {string}
    s3DestinationConfig: S3DestinationConfig
    fileFormat: string
    includeMemberAccounts: boolean
    recommendationPreferences: RecommendationPreferences
end

local record ExportEC2InstanceRecommendationsOutput
    jobId: string
    s3Destination: S3Destination
end

local record ExportECSServiceRecommendationsInput
    accountIds: {string}
    filters: {ECSServiceRecommendationFilter}
    fieldsToExport: {string}
    s3DestinationConfig: S3DestinationConfig
    fileFormat: string
    includeMemberAccounts: boolean
end

local record ExportECSServiceRecommendationsOutput
    jobId: string
    s3Destination: S3Destination
end

local record ExportIdleRecommendationsInput
    accountIds: {string}
    filters: {IdleRecommendationFilter}
    fieldsToExport: {string}
    s3DestinationConfig: S3DestinationConfig
    fileFormat: string
    includeMemberAccounts: boolean
end

local record ExportIdleRecommendationsOutput
    jobId: string
    s3Destination: S3Destination
end

local record ExportLambdaFunctionRecommendationsInput
    accountIds: {string}
    filters: {LambdaFunctionRecommendationFilter}
    fieldsToExport: {string}
    s3DestinationConfig: S3DestinationConfig
    fileFormat: string
    includeMemberAccounts: boolean
end

local record ExportLambdaFunctionRecommendationsOutput
    jobId: string
    s3Destination: S3Destination
end

local record ExportLicenseRecommendationsInput
    accountIds: {string}
    filters: {LicenseRecommendationFilter}
    fieldsToExport: {string}
    s3DestinationConfig: S3DestinationConfig
    fileFormat: string
    includeMemberAccounts: boolean
end

local record ExportLicenseRecommendationsOutput
    jobId: string
    s3Destination: S3Destination
end

local record ExportRDSDatabaseRecommendationsInput
    accountIds: {string}
    filters: {RDSDBRecommendationFilter}
    fieldsToExport: {string}
    s3DestinationConfig: S3DestinationConfig
    fileFormat: string
    includeMemberAccounts: boolean
    recommendationPreferences: RecommendationPreferences
end

local record ExportRDSDatabaseRecommendationsOutput
    jobId: string
    s3Destination: S3Destination
end

local record GetAutoScalingGroupRecommendationsInput
    accountIds: {string}
    autoScalingGroupArns: {string}
    nextToken: string
    maxResults: number
    filters: {Filter}
    recommendationPreferences: RecommendationPreferences
end

local record GetAutoScalingGroupRecommendationsOutput
    nextToken: string
    autoScalingGroupRecommendations: {AutoScalingGroupRecommendation}
    errors: {GetRecommendationError}
end

local record GetEBSVolumeRecommendationsInput
    volumeArns: {string}
    nextToken: string
    maxResults: number
    filters: {EBSFilter}
    accountIds: {string}
end

local record GetEBSVolumeRecommendationsOutput
    nextToken: string
    volumeRecommendations: {VolumeRecommendation}
    errors: {GetRecommendationError}
end

local record GetEC2InstanceRecommendationsInput
    instanceArns: {string}
    nextToken: string
    maxResults: number
    filters: {Filter}
    accountIds: {string}
    recommendationPreferences: RecommendationPreferences
end

local record GetEC2InstanceRecommendationsOutput
    nextToken: string
    instanceRecommendations: {InstanceRecommendation}
    errors: {GetRecommendationError}
end

local record GetEC2RecommendationProjectedMetricsInput
    instanceArn: string
    stat: string
    period: number
    startTime: number
    endTime: number
    recommendationPreferences: RecommendationPreferences
end

local record GetEC2RecommendationProjectedMetricsOutput
    recommendedOptionProjectedMetrics: {RecommendedOptionProjectedMetric}
end

local record GetECSServiceRecommendationProjectedMetricsInput
    serviceArn: string
    stat: string
    period: number
    startTime: number
    endTime: number
end

local record GetECSServiceRecommendationProjectedMetricsOutput
    recommendedOptionProjectedMetrics: {ECSServiceRecommendedOptionProjectedMetric}
end

local record GetECSServiceRecommendationsInput
    serviceArns: {string}
    nextToken: string
    maxResults: number
    filters: {ECSServiceRecommendationFilter}
    accountIds: {string}
end

local record GetECSServiceRecommendationsOutput
    nextToken: string
    ecsServiceRecommendations: {ECSServiceRecommendation}
    errors: {GetRecommendationError}
end

local record GetEffectiveRecommendationPreferencesInput
    resourceArn: string
end

local record GetEffectiveRecommendationPreferencesOutput
    enhancedInfrastructureMetrics: string
    externalMetricsPreference: ExternalMetricsPreference
    lookBackPeriod: string
    utilizationPreferences: {UtilizationPreference}
    preferredResources: {EffectivePreferredResource}
end

local record GetEnrollmentStatusInput
end

local record GetEnrollmentStatusOutput
    status: string
    statusReason: string
    memberAccountsEnrolled: boolean
    lastUpdatedTimestamp: number
    numberOfMemberAccountsOptedIn: number
end

local record GetEnrollmentStatusesForOrganizationInput
    filters: {EnrollmentFilter}
    nextToken: string
    maxResults: number
end

local record GetEnrollmentStatusesForOrganizationOutput
    accountEnrollmentStatuses: {AccountEnrollmentStatus}
    nextToken: string
end

local record GetIdleRecommendationsInput
    resourceArns: {string}
    nextToken: string
    maxResults: number
    filters: {IdleRecommendationFilter}
    accountIds: {string}
    orderBy: OrderBy
end

local record GetIdleRecommendationsOutput
    nextToken: string
    idleRecommendations: {IdleRecommendation}
    errors: {IdleRecommendationError}
end

local record GetLambdaFunctionRecommendationsInput
    functionArns: {string}
    accountIds: {string}
    filters: {LambdaFunctionRecommendationFilter}
    nextToken: string
    maxResults: number
end

local record GetLambdaFunctionRecommendationsOutput
    nextToken: string
    lambdaFunctionRecommendations: {LambdaFunctionRecommendation}
end

local record GetLicenseRecommendationsInput
    resourceArns: {string}
    nextToken: string
    maxResults: number
    filters: {LicenseRecommendationFilter}
    accountIds: {string}
end

local record GetLicenseRecommendationsOutput
    nextToken: string
    licenseRecommendations: {LicenseRecommendation}
    errors: {GetRecommendationError}
end

local record GetRDSDatabaseRecommendationProjectedMetricsInput
    resourceArn: string
    stat: string
    period: number
    startTime: number
    endTime: number
    recommendationPreferences: RecommendationPreferences
end

local record GetRDSDatabaseRecommendationProjectedMetricsOutput
    recommendedOptionProjectedMetrics: {RDSDatabaseRecommendedOptionProjectedMetric}
end

local record GetRDSDatabaseRecommendationsInput
    resourceArns: {string}
    nextToken: string
    maxResults: number
    filters: {RDSDBRecommendationFilter}
    accountIds: {string}
    recommendationPreferences: RecommendationPreferences
end

local record GetRDSDatabaseRecommendationsOutput
    nextToken: string
    rdsDBRecommendations: {RDSDBRecommendation}
    errors: {GetRecommendationError}
end

local record GetRecommendationPreferencesInput
    resourceType: string
    scope: Scope
    nextToken: string
    maxResults: number
end

local record GetRecommendationPreferencesOutput
    nextToken: string
    recommendationPreferencesDetails: {RecommendationPreferencesDetail}
end

local record GetRecommendationSummariesInput
    accountIds: {string}
    nextToken: string
    maxResults: number
end

local record GetRecommendationSummariesOutput
    nextToken: string
    recommendationSummaries: {RecommendationSummary}
end

local record PutRecommendationPreferencesInput
    resourceType: string
    scope: Scope
    enhancedInfrastructureMetrics: string
    inferredWorkloadTypes: string
    externalMetricsPreference: ExternalMetricsPreference
    lookBackPeriod: string
    utilizationPreferences: {UtilizationPreference}
    preferredResources: {PreferredResource}
    savingsEstimationMode: string
end

local record PutRecommendationPreferencesOutput
end

local record UpdateEnrollmentStatusInput
    status: string
    includeMemberAccounts: boolean
end

local record UpdateEnrollmentStatusOutput
    status: string
    statusReason: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record LimitExceededException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record LimitExceededException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record LimitExceededException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record LimitExceededException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record LimitExceededException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record LimitExceededException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record LimitExceededException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record LimitExceededException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record LimitExceededException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record OptInRequiredException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record MissingAuthenticationToken
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local type LookBackPeriodPreference = "DAYS_14" | "DAYS_32" | "DAYS_93"

local type FileFormat = "Csv"

local type SavingsEstimationMode = "AfterDiscounts" | "BeforeDiscounts"

local type ResourceType = "Ec2Instance" | "AutoScalingGroup" | "EbsVolume" | "LambdaFunction" | "NotApplicable" | "EcsService" | "License" | "RdsDBInstance" | "AuroraDBClusterStorage" | "Idle"

local type Status = "Active" | "Inactive" | "Pending" | "Failed"

local type EnhancedInfrastructureMetrics = "Active" | "Inactive"

local type MetricStatistic = "Maximum" | "Average"

local type InferredWorkloadTypesPreference = "Active" | "Inactive"

local record M
    DeleteRecommendationPreferencesInput: DeleteRecommendationPreferencesInput
    DeleteRecommendationPreferencesOutput: DeleteRecommendationPreferencesOutput
    DescribeRecommendationExportJobsInput: DescribeRecommendationExportJobsInput
    DescribeRecommendationExportJobsOutput: DescribeRecommendationExportJobsOutput
    ExportAutoScalingGroupRecommendationsInput: ExportAutoScalingGroupRecommendationsInput
    ExportAutoScalingGroupRecommendationsOutput: ExportAutoScalingGroupRecommendationsOutput
    ExportEBSVolumeRecommendationsInput: ExportEBSVolumeRecommendationsInput
    ExportEBSVolumeRecommendationsOutput: ExportEBSVolumeRecommendationsOutput
    ExportEC2InstanceRecommendationsInput: ExportEC2InstanceRecommendationsInput
    ExportEC2InstanceRecommendationsOutput: ExportEC2InstanceRecommendationsOutput
    ExportECSServiceRecommendationsInput: ExportECSServiceRecommendationsInput
    ExportECSServiceRecommendationsOutput: ExportECSServiceRecommendationsOutput
    ExportIdleRecommendationsInput: ExportIdleRecommendationsInput
    ExportIdleRecommendationsOutput: ExportIdleRecommendationsOutput
    ExportLambdaFunctionRecommendationsInput: ExportLambdaFunctionRecommendationsInput
    ExportLambdaFunctionRecommendationsOutput: ExportLambdaFunctionRecommendationsOutput
    ExportLicenseRecommendationsInput: ExportLicenseRecommendationsInput
    ExportLicenseRecommendationsOutput: ExportLicenseRecommendationsOutput
    ExportRDSDatabaseRecommendationsInput: ExportRDSDatabaseRecommendationsInput
    ExportRDSDatabaseRecommendationsOutput: ExportRDSDatabaseRecommendationsOutput
    GetAutoScalingGroupRecommendationsInput: GetAutoScalingGroupRecommendationsInput
    GetAutoScalingGroupRecommendationsOutput: GetAutoScalingGroupRecommendationsOutput
    GetEBSVolumeRecommendationsInput: GetEBSVolumeRecommendationsInput
    GetEBSVolumeRecommendationsOutput: GetEBSVolumeRecommendationsOutput
    GetEC2InstanceRecommendationsInput: GetEC2InstanceRecommendationsInput
    GetEC2InstanceRecommendationsOutput: GetEC2InstanceRecommendationsOutput
    GetEC2RecommendationProjectedMetricsInput: GetEC2RecommendationProjectedMetricsInput
    GetEC2RecommendationProjectedMetricsOutput: GetEC2RecommendationProjectedMetricsOutput
    GetECSServiceRecommendationProjectedMetricsInput: GetECSServiceRecommendationProjectedMetricsInput
    GetECSServiceRecommendationProjectedMetricsOutput: GetECSServiceRecommendationProjectedMetricsOutput
    GetECSServiceRecommendationsInput: GetECSServiceRecommendationsInput
    GetECSServiceRecommendationsOutput: GetECSServiceRecommendationsOutput
    GetEffectiveRecommendationPreferencesInput: GetEffectiveRecommendationPreferencesInput
    GetEffectiveRecommendationPreferencesOutput: GetEffectiveRecommendationPreferencesOutput
    GetEnrollmentStatusInput: GetEnrollmentStatusInput
    GetEnrollmentStatusOutput: GetEnrollmentStatusOutput
    GetEnrollmentStatusesForOrganizationInput: GetEnrollmentStatusesForOrganizationInput
    GetEnrollmentStatusesForOrganizationOutput: GetEnrollmentStatusesForOrganizationOutput
    GetIdleRecommendationsInput: GetIdleRecommendationsInput
    GetIdleRecommendationsOutput: GetIdleRecommendationsOutput
    GetLambdaFunctionRecommendationsInput: GetLambdaFunctionRecommendationsInput
    GetLambdaFunctionRecommendationsOutput: GetLambdaFunctionRecommendationsOutput
    GetLicenseRecommendationsInput: GetLicenseRecommendationsInput
    GetLicenseRecommendationsOutput: GetLicenseRecommendationsOutput
    GetRDSDatabaseRecommendationProjectedMetricsInput: GetRDSDatabaseRecommendationProjectedMetricsInput
    GetRDSDatabaseRecommendationProjectedMetricsOutput: GetRDSDatabaseRecommendationProjectedMetricsOutput
    GetRDSDatabaseRecommendationsInput: GetRDSDatabaseRecommendationsInput
    GetRDSDatabaseRecommendationsOutput: GetRDSDatabaseRecommendationsOutput
    GetRecommendationPreferencesInput: GetRecommendationPreferencesInput
    GetRecommendationPreferencesOutput: GetRecommendationPreferencesOutput
    GetRecommendationSummariesInput: GetRecommendationSummariesInput
    GetRecommendationSummariesOutput: GetRecommendationSummariesOutput
    PutRecommendationPreferencesInput: PutRecommendationPreferencesInput
    PutRecommendationPreferencesOutput: PutRecommendationPreferencesOutput
    UpdateEnrollmentStatusInput: UpdateEnrollmentStatusInput
    UpdateEnrollmentStatusOutput: UpdateEnrollmentStatusOutput
end

return M
