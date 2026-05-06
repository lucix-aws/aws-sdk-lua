local record AcceptResourceGroupingRecommendationsInput
    appArn: string
    entries: {AcceptGroupingRecommendationEntry}
end

local record AcceptResourceGroupingRecommendationsOutput
    appArn: string
    failedEntries: {FailedGroupingRecommendationEntry}
end

local record AddDraftAppVersionResourceMappingsInput
    appArn: string
    resourceMappings: {ResourceMapping}
end

local record AddDraftAppVersionResourceMappingsOutput
    appArn: string
    appVersion: string
    resourceMappings: {ResourceMapping}
end

local record BatchUpdateRecommendationStatusInput
    appArn: string
    requestEntries: {UpdateRecommendationStatusRequestEntry}
end

local record BatchUpdateRecommendationStatusOutput
    appArn: string
    successfulEntries: {BatchUpdateRecommendationStatusSuccessfulEntry}
    failedEntries: {BatchUpdateRecommendationStatusFailedEntry}
end

local record CreateAppInput
    name: string
    description: string
    policyArn: string
    tags: {string : string}
    clientToken: string
    assessmentSchedule: string
    permissionModel: PermissionModel
    eventSubscriptions: {EventSubscription}
    awsApplicationArn: string
end

local record CreateAppOutput
    app: App
end

local record CreateAppVersionAppComponentInput
    appArn: string
    id: string
    name: string
    type: string
    additionalInfo: {string : {string}}
    clientToken: string
end

local record CreateAppVersionAppComponentOutput
    appArn: string
    appVersion: string
    appComponent: AppComponent
end

local record CreateAppVersionResourceInput
    appArn: string
    resourceName: string
    logicalResourceId: LogicalResourceId
    physicalResourceId: string
    awsRegion: string
    awsAccountId: string
    resourceType: string
    appComponents: {string}
    additionalInfo: {string : {string}}
    clientToken: string
end

local record CreateAppVersionResourceOutput
    appArn: string
    appVersion: string
    physicalResource: PhysicalResource
end

local record CreateRecommendationTemplateInput
    recommendationIds: {string}
    format: string
    recommendationTypes: {string}
    assessmentArn: string
    name: string
    clientToken: string
    tags: {string : string}
    bucketName: string
end

local record CreateRecommendationTemplateOutput
    recommendationTemplate: RecommendationTemplate
end

local record CreateResiliencyPolicyInput
    policyName: string
    policyDescription: string
    dataLocationConstraint: string
    tier: string
    policy: {string : FailurePolicy}
    clientToken: string
    tags: {string : string}
end

local record CreateResiliencyPolicyOutput
    policy: ResiliencyPolicy
end

local record DeleteAppInput
    appArn: string
    forceDelete: boolean
    clientToken: string
end

local record DeleteAppOutput
    appArn: string
end

local record DeleteAppAssessmentInput
    assessmentArn: string
    clientToken: string
end

local record DeleteAppAssessmentOutput
    assessmentArn: string
    assessmentStatus: string
end

local record DeleteAppInputSourceInput
    appArn: string
    sourceArn: string
    terraformSource: TerraformSource
    clientToken: string
    eksSourceClusterNamespace: EksSourceClusterNamespace
end

local record DeleteAppInputSourceOutput
    appArn: string
    appInputSource: AppInputSource
end

local record DeleteAppVersionAppComponentInput
    appArn: string
    id: string
    clientToken: string
end

local record DeleteAppVersionAppComponentOutput
    appArn: string
    appVersion: string
    appComponent: AppComponent
end

local record DeleteAppVersionResourceInput
    appArn: string
    resourceName: string
    logicalResourceId: LogicalResourceId
    physicalResourceId: string
    awsRegion: string
    awsAccountId: string
    clientToken: string
end

local record DeleteAppVersionResourceOutput
    appArn: string
    appVersion: string
    physicalResource: PhysicalResource
end

local record DeleteRecommendationTemplateInput
    recommendationTemplateArn: string
    clientToken: string
end

local record DeleteRecommendationTemplateOutput
    recommendationTemplateArn: string
    status: string
end

local record DeleteResiliencyPolicyInput
    policyArn: string
    clientToken: string
end

local record DeleteResiliencyPolicyOutput
    policyArn: string
end

local record DescribeAppInput
    appArn: string
end

local record DescribeAppOutput
    app: App
end

local record DescribeAppAssessmentInput
    assessmentArn: string
end

local record DescribeAppAssessmentOutput
    assessment: AppAssessment
end

local record DescribeAppVersionInput
    appArn: string
    appVersion: string
end

local record DescribeAppVersionOutput
    appArn: string
    appVersion: string
    additionalInfo: {string : {string}}
end

local record DescribeAppVersionAppComponentInput
    appArn: string
    appVersion: string
    id: string
end

local record DescribeAppVersionAppComponentOutput
    appArn: string
    appVersion: string
    appComponent: AppComponent
end

local record DescribeAppVersionResourceInput
    appArn: string
    appVersion: string
    resourceName: string
    logicalResourceId: LogicalResourceId
    physicalResourceId: string
    awsRegion: string
    awsAccountId: string
end

local record DescribeAppVersionResourceOutput
    appArn: string
    appVersion: string
    physicalResource: PhysicalResource
end

local record DescribeAppVersionResourcesResolutionStatusInput
    appArn: string
    appVersion: string
    resolutionId: string
end

local record DescribeAppVersionResourcesResolutionStatusOutput
    appArn: string
    appVersion: string
    resolutionId: string
    status: string
    errorMessage: string
end

local record DescribeAppVersionTemplateInput
    appArn: string
    appVersion: string
end

local record DescribeAppVersionTemplateOutput
    appArn: string
    appVersion: string
    appTemplateBody: string
end

local record DescribeDraftAppVersionResourcesImportStatusInput
    appArn: string
end

local record DescribeDraftAppVersionResourcesImportStatusOutput
    appArn: string
    appVersion: string
    status: string
    statusChangeTime: number
    errorMessage: string
    errorDetails: {ErrorDetail}
end

local record DescribeMetricsExportInput
    metricsExportId: string
end

local record DescribeMetricsExportOutput
    metricsExportId: string
    status: string
    exportLocation: S3Location
    errorMessage: string
end

local record DescribeResiliencyPolicyInput
    policyArn: string
end

local record DescribeResiliencyPolicyOutput
    policy: ResiliencyPolicy
end

local record DescribeResourceGroupingRecommendationTaskInput
    appArn: string
    groupingId: string
end

local record DescribeResourceGroupingRecommendationTaskOutput
    groupingId: string
    status: string
    errorMessage: string
end

local record ImportResourcesToDraftAppVersionInput
    appArn: string
    sourceArns: {string}
    terraformSources: {TerraformSource}
    importStrategy: string
    eksSources: {EksSource}
end

local record ImportResourcesToDraftAppVersionOutput
    appArn: string
    appVersion: string
    sourceArns: {string}
    status: string
    terraformSources: {TerraformSource}
    eksSources: {EksSource}
end

local record ListAlarmRecommendationsInput
    assessmentArn: string
    nextToken: string
    maxResults: number
end

local record ListAlarmRecommendationsOutput
    alarmRecommendations: {AlarmRecommendation}
    nextToken: string
end

local record ListAppAssessmentComplianceDriftsInput
    assessmentArn: string
    nextToken: string
    maxResults: number
end

local record ListAppAssessmentComplianceDriftsOutput
    complianceDrifts: {ComplianceDrift}
    nextToken: string
end

local record ListAppAssessmentResourceDriftsInput
    assessmentArn: string
    nextToken: string
    maxResults: number
end

local record ListAppAssessmentResourceDriftsOutput
    resourceDrifts: {ResourceDrift}
    nextToken: string
end

local record ListAppAssessmentsInput
    appArn: string
    assessmentName: string
    assessmentStatus: {string}
    complianceStatus: string
    invoker: string
    reverseOrder: boolean
    nextToken: string
    maxResults: number
end

local record ListAppAssessmentsOutput
    nextToken: string
    assessmentSummaries: {AppAssessmentSummary}
end

local record ListAppComponentCompliancesInput
    nextToken: string
    maxResults: number
    assessmentArn: string
end

local record ListAppComponentCompliancesOutput
    componentCompliances: {AppComponentCompliance}
    nextToken: string
end

local record ListAppComponentRecommendationsInput
    assessmentArn: string
    nextToken: string
    maxResults: number
end

local record ListAppComponentRecommendationsOutput
    componentRecommendations: {ComponentRecommendation}
    nextToken: string
end

local record ListAppInputSourcesInput
    appArn: string
    appVersion: string
    nextToken: string
    maxResults: number
end

local record ListAppInputSourcesOutput
    appInputSources: {AppInputSource}
    nextToken: string
end

local record ListAppsInput
    nextToken: string
    maxResults: number
    name: string
    appArn: string
    fromLastAssessmentTime: number
    toLastAssessmentTime: number
    reverseOrder: boolean
    awsApplicationArn: string
end

local record ListAppsOutput
    appSummaries: {AppSummary}
    nextToken: string
end

local record ListAppVersionAppComponentsInput
    appArn: string
    appVersion: string
    nextToken: string
    maxResults: number
end

local record ListAppVersionAppComponentsOutput
    appArn: string
    appVersion: string
    appComponents: {AppComponent}
    nextToken: string
end

local record ListAppVersionResourceMappingsInput
    appArn: string
    appVersion: string
    nextToken: string
    maxResults: number
end

local record ListAppVersionResourceMappingsOutput
    resourceMappings: {ResourceMapping}
    nextToken: string
end

local record ListAppVersionResourcesInput
    appArn: string
    appVersion: string
    resolutionId: string
    nextToken: string
    maxResults: number
end

local record ListAppVersionResourcesOutput
    physicalResources: {PhysicalResource}
    resolutionId: string
    nextToken: string
end

local record ListAppVersionsInput
    appArn: string
    nextToken: string
    maxResults: number
    startTime: number
    endTime: number
end

local record ListAppVersionsOutput
    appVersions: {AppVersionSummary}
    nextToken: string
end

local record ListMetricsInput
    nextToken: string
    maxResults: number
    fields: {Field}
    dataSource: string
    conditions: {Condition}
    sorts: {Sort}
end

local record ListMetricsOutput
    rows: {{string}}
    nextToken: string
end

local record ListRecommendationTemplatesInput
    assessmentArn: string
    reverseOrder: boolean
    status: {string}
    recommendationTemplateArn: string
    name: string
    nextToken: string
    maxResults: number
end

local record ListRecommendationTemplatesOutput
    nextToken: string
    recommendationTemplates: {RecommendationTemplate}
end

local record ListResiliencyPoliciesInput
    policyName: string
    nextToken: string
    maxResults: number
end

local record ListResiliencyPoliciesOutput
    resiliencyPolicies: {ResiliencyPolicy}
    nextToken: string
end

local record ListResourceGroupingRecommendationsInput
    appArn: string
    nextToken: string
    maxResults: number
end

local record ListResourceGroupingRecommendationsOutput
    groupingRecommendations: {GroupingRecommendation}
    nextToken: string
end

local record ListSopRecommendationsInput
    nextToken: string
    maxResults: number
    assessmentArn: string
end

local record ListSopRecommendationsOutput
    nextToken: string
    sopRecommendations: {SopRecommendation}
end

local record ListSuggestedResiliencyPoliciesInput
    nextToken: string
    maxResults: number
end

local record ListSuggestedResiliencyPoliciesOutput
    resiliencyPolicies: {ResiliencyPolicy}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListTestRecommendationsInput
    nextToken: string
    maxResults: number
    assessmentArn: string
end

local record ListTestRecommendationsOutput
    nextToken: string
    testRecommendations: {TestRecommendation}
end

local record ListUnsupportedAppVersionResourcesInput
    appArn: string
    appVersion: string
    resolutionId: string
    nextToken: string
    maxResults: number
end

local record ListUnsupportedAppVersionResourcesOutput
    unsupportedResources: {UnsupportedResource}
    resolutionId: string
    nextToken: string
end

local record PublishAppVersionInput
    appArn: string
    versionName: string
end

local record PublishAppVersionOutput
    appArn: string
    appVersion: string
    identifier: number
    versionName: string
end

local record PutDraftAppVersionTemplateInput
    appArn: string
    appTemplateBody: string
end

local record PutDraftAppVersionTemplateOutput
    appArn: string
    appVersion: string
end

local record RejectResourceGroupingRecommendationsInput
    appArn: string
    entries: {RejectGroupingRecommendationEntry}
end

local record RejectResourceGroupingRecommendationsOutput
    appArn: string
    failedEntries: {FailedGroupingRecommendationEntry}
end

local record RemoveDraftAppVersionResourceMappingsInput
    appArn: string
    resourceNames: {string}
    logicalStackNames: {string}
    appRegistryAppNames: {string}
    resourceGroupNames: {string}
    terraformSourceNames: {string}
    eksSourceNames: {string}
end

local record RemoveDraftAppVersionResourceMappingsOutput
    appArn: string
    appVersion: string
end

local record ResolveAppVersionResourcesInput
    appArn: string
    appVersion: string
end

local record ResolveAppVersionResourcesOutput
    appArn: string
    appVersion: string
    resolutionId: string
    status: string
end

local record StartAppAssessmentInput
    appArn: string
    appVersion: string
    assessmentName: string
    clientToken: string
    tags: {string : string}
end

local record StartAppAssessmentOutput
    assessment: AppAssessment
end

local record StartMetricsExportInput
    bucketName: string
    clientToken: string
end

local record StartMetricsExportOutput
    metricsExportId: string
    status: string
end

local record StartResourceGroupingRecommendationTaskInput
    appArn: string
end

local record StartResourceGroupingRecommendationTaskOutput
    appArn: string
    groupingId: string
    status: string
    errorMessage: string
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

local record UpdateAppInput
    appArn: string
    description: string
    policyArn: string
    clearResiliencyPolicyArn: boolean
    assessmentSchedule: string
    permissionModel: PermissionModel
    eventSubscriptions: {EventSubscription}
end

local record UpdateAppOutput
    app: App
end

local record UpdateAppVersionInput
    appArn: string
    additionalInfo: {string : {string}}
end

local record UpdateAppVersionOutput
    appArn: string
    appVersion: string
    additionalInfo: {string : {string}}
end

local record UpdateAppVersionAppComponentInput
    appArn: string
    id: string
    name: string
    type: string
    additionalInfo: {string : {string}}
end

local record UpdateAppVersionAppComponentOutput
    appArn: string
    appVersion: string
    appComponent: AppComponent
end

local record UpdateAppVersionResourceInput
    appArn: string
    resourceName: string
    logicalResourceId: LogicalResourceId
    physicalResourceId: string
    awsRegion: string
    awsAccountId: string
    resourceType: string
    appComponents: {string}
    additionalInfo: {string : {string}}
    excluded: boolean
end

local record UpdateAppVersionResourceOutput
    appArn: string
    appVersion: string
    physicalResource: PhysicalResource
end

local record UpdateResiliencyPolicyInput
    policyArn: string
    policyName: string
    policyDescription: string
    dataLocationConstraint: string
    tier: string
    policy: {string : FailurePolicy}
end

local record UpdateResiliencyPolicyOutput
    policy: ResiliencyPolicy
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
end

local type DataLocationConstraint = "AnyLocation" | "SameContinent" | "SameCountry"

local type ResourceResolutionStatusType = "Pending" | "InProgress" | "Failed" | "Success"

local type RecommendationTemplateStatus = "Pending" | "InProgress" | "Failed" | "Success"

local type ResourceImportStatusType = "Pending" | "InProgress" | "Failed" | "Success"

local type AppAssessmentScheduleType = "Disabled" | "Daily"

local type ComplianceStatus = "PolicyBreached" | "PolicyMet" | "NotApplicable" | "MissingPolicy"

local type ResourcesGroupingRecGenStatusType = "Pending" | "InProgress" | "Failed" | "Success"

local type AssessmentInvoker = "User" | "System"

local type MetricsExportStatusType = "Pending" | "InProgress" | "Failed" | "Success"

local type ResiliencyPolicyTier = "MissionCritical" | "Critical" | "Important" | "CoreServices" | "NonCritical" | "NotApplicable"

local type TemplateFormat = "CfnYaml" | "CfnJson"

local type AssessmentStatus = "Pending" | "InProgress" | "Failed" | "Success"

local type ResourceImportStrategyType = "AddOnly" | "ReplaceAll"

local record M
    AcceptResourceGroupingRecommendationsInput: AcceptResourceGroupingRecommendationsInput
    AcceptResourceGroupingRecommendationsOutput: AcceptResourceGroupingRecommendationsOutput
    AddDraftAppVersionResourceMappingsInput: AddDraftAppVersionResourceMappingsInput
    AddDraftAppVersionResourceMappingsOutput: AddDraftAppVersionResourceMappingsOutput
    BatchUpdateRecommendationStatusInput: BatchUpdateRecommendationStatusInput
    BatchUpdateRecommendationStatusOutput: BatchUpdateRecommendationStatusOutput
    CreateAppInput: CreateAppInput
    CreateAppOutput: CreateAppOutput
    CreateAppVersionAppComponentInput: CreateAppVersionAppComponentInput
    CreateAppVersionAppComponentOutput: CreateAppVersionAppComponentOutput
    CreateAppVersionResourceInput: CreateAppVersionResourceInput
    CreateAppVersionResourceOutput: CreateAppVersionResourceOutput
    CreateRecommendationTemplateInput: CreateRecommendationTemplateInput
    CreateRecommendationTemplateOutput: CreateRecommendationTemplateOutput
    CreateResiliencyPolicyInput: CreateResiliencyPolicyInput
    CreateResiliencyPolicyOutput: CreateResiliencyPolicyOutput
    DeleteAppInput: DeleteAppInput
    DeleteAppOutput: DeleteAppOutput
    DeleteAppAssessmentInput: DeleteAppAssessmentInput
    DeleteAppAssessmentOutput: DeleteAppAssessmentOutput
    DeleteAppInputSourceInput: DeleteAppInputSourceInput
    DeleteAppInputSourceOutput: DeleteAppInputSourceOutput
    DeleteAppVersionAppComponentInput: DeleteAppVersionAppComponentInput
    DeleteAppVersionAppComponentOutput: DeleteAppVersionAppComponentOutput
    DeleteAppVersionResourceInput: DeleteAppVersionResourceInput
    DeleteAppVersionResourceOutput: DeleteAppVersionResourceOutput
    DeleteRecommendationTemplateInput: DeleteRecommendationTemplateInput
    DeleteRecommendationTemplateOutput: DeleteRecommendationTemplateOutput
    DeleteResiliencyPolicyInput: DeleteResiliencyPolicyInput
    DeleteResiliencyPolicyOutput: DeleteResiliencyPolicyOutput
    DescribeAppInput: DescribeAppInput
    DescribeAppOutput: DescribeAppOutput
    DescribeAppAssessmentInput: DescribeAppAssessmentInput
    DescribeAppAssessmentOutput: DescribeAppAssessmentOutput
    DescribeAppVersionInput: DescribeAppVersionInput
    DescribeAppVersionOutput: DescribeAppVersionOutput
    DescribeAppVersionAppComponentInput: DescribeAppVersionAppComponentInput
    DescribeAppVersionAppComponentOutput: DescribeAppVersionAppComponentOutput
    DescribeAppVersionResourceInput: DescribeAppVersionResourceInput
    DescribeAppVersionResourceOutput: DescribeAppVersionResourceOutput
    DescribeAppVersionResourcesResolutionStatusInput: DescribeAppVersionResourcesResolutionStatusInput
    DescribeAppVersionResourcesResolutionStatusOutput: DescribeAppVersionResourcesResolutionStatusOutput
    DescribeAppVersionTemplateInput: DescribeAppVersionTemplateInput
    DescribeAppVersionTemplateOutput: DescribeAppVersionTemplateOutput
    DescribeDraftAppVersionResourcesImportStatusInput: DescribeDraftAppVersionResourcesImportStatusInput
    DescribeDraftAppVersionResourcesImportStatusOutput: DescribeDraftAppVersionResourcesImportStatusOutput
    DescribeMetricsExportInput: DescribeMetricsExportInput
    DescribeMetricsExportOutput: DescribeMetricsExportOutput
    DescribeResiliencyPolicyInput: DescribeResiliencyPolicyInput
    DescribeResiliencyPolicyOutput: DescribeResiliencyPolicyOutput
    DescribeResourceGroupingRecommendationTaskInput: DescribeResourceGroupingRecommendationTaskInput
    DescribeResourceGroupingRecommendationTaskOutput: DescribeResourceGroupingRecommendationTaskOutput
    ImportResourcesToDraftAppVersionInput: ImportResourcesToDraftAppVersionInput
    ImportResourcesToDraftAppVersionOutput: ImportResourcesToDraftAppVersionOutput
    ListAlarmRecommendationsInput: ListAlarmRecommendationsInput
    ListAlarmRecommendationsOutput: ListAlarmRecommendationsOutput
    ListAppAssessmentComplianceDriftsInput: ListAppAssessmentComplianceDriftsInput
    ListAppAssessmentComplianceDriftsOutput: ListAppAssessmentComplianceDriftsOutput
    ListAppAssessmentResourceDriftsInput: ListAppAssessmentResourceDriftsInput
    ListAppAssessmentResourceDriftsOutput: ListAppAssessmentResourceDriftsOutput
    ListAppAssessmentsInput: ListAppAssessmentsInput
    ListAppAssessmentsOutput: ListAppAssessmentsOutput
    ListAppComponentCompliancesInput: ListAppComponentCompliancesInput
    ListAppComponentCompliancesOutput: ListAppComponentCompliancesOutput
    ListAppComponentRecommendationsInput: ListAppComponentRecommendationsInput
    ListAppComponentRecommendationsOutput: ListAppComponentRecommendationsOutput
    ListAppInputSourcesInput: ListAppInputSourcesInput
    ListAppInputSourcesOutput: ListAppInputSourcesOutput
    ListAppsInput: ListAppsInput
    ListAppsOutput: ListAppsOutput
    ListAppVersionAppComponentsInput: ListAppVersionAppComponentsInput
    ListAppVersionAppComponentsOutput: ListAppVersionAppComponentsOutput
    ListAppVersionResourceMappingsInput: ListAppVersionResourceMappingsInput
    ListAppVersionResourceMappingsOutput: ListAppVersionResourceMappingsOutput
    ListAppVersionResourcesInput: ListAppVersionResourcesInput
    ListAppVersionResourcesOutput: ListAppVersionResourcesOutput
    ListAppVersionsInput: ListAppVersionsInput
    ListAppVersionsOutput: ListAppVersionsOutput
    ListMetricsInput: ListMetricsInput
    ListMetricsOutput: ListMetricsOutput
    ListRecommendationTemplatesInput: ListRecommendationTemplatesInput
    ListRecommendationTemplatesOutput: ListRecommendationTemplatesOutput
    ListResiliencyPoliciesInput: ListResiliencyPoliciesInput
    ListResiliencyPoliciesOutput: ListResiliencyPoliciesOutput
    ListResourceGroupingRecommendationsInput: ListResourceGroupingRecommendationsInput
    ListResourceGroupingRecommendationsOutput: ListResourceGroupingRecommendationsOutput
    ListSopRecommendationsInput: ListSopRecommendationsInput
    ListSopRecommendationsOutput: ListSopRecommendationsOutput
    ListSuggestedResiliencyPoliciesInput: ListSuggestedResiliencyPoliciesInput
    ListSuggestedResiliencyPoliciesOutput: ListSuggestedResiliencyPoliciesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTestRecommendationsInput: ListTestRecommendationsInput
    ListTestRecommendationsOutput: ListTestRecommendationsOutput
    ListUnsupportedAppVersionResourcesInput: ListUnsupportedAppVersionResourcesInput
    ListUnsupportedAppVersionResourcesOutput: ListUnsupportedAppVersionResourcesOutput
    PublishAppVersionInput: PublishAppVersionInput
    PublishAppVersionOutput: PublishAppVersionOutput
    PutDraftAppVersionTemplateInput: PutDraftAppVersionTemplateInput
    PutDraftAppVersionTemplateOutput: PutDraftAppVersionTemplateOutput
    RejectResourceGroupingRecommendationsInput: RejectResourceGroupingRecommendationsInput
    RejectResourceGroupingRecommendationsOutput: RejectResourceGroupingRecommendationsOutput
    RemoveDraftAppVersionResourceMappingsInput: RemoveDraftAppVersionResourceMappingsInput
    RemoveDraftAppVersionResourceMappingsOutput: RemoveDraftAppVersionResourceMappingsOutput
    ResolveAppVersionResourcesInput: ResolveAppVersionResourcesInput
    ResolveAppVersionResourcesOutput: ResolveAppVersionResourcesOutput
    StartAppAssessmentInput: StartAppAssessmentInput
    StartAppAssessmentOutput: StartAppAssessmentOutput
    StartMetricsExportInput: StartMetricsExportInput
    StartMetricsExportOutput: StartMetricsExportOutput
    StartResourceGroupingRecommendationTaskInput: StartResourceGroupingRecommendationTaskInput
    StartResourceGroupingRecommendationTaskOutput: StartResourceGroupingRecommendationTaskOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAppInput: UpdateAppInput
    UpdateAppOutput: UpdateAppOutput
    UpdateAppVersionInput: UpdateAppVersionInput
    UpdateAppVersionOutput: UpdateAppVersionOutput
    UpdateAppVersionAppComponentInput: UpdateAppVersionAppComponentInput
    UpdateAppVersionAppComponentOutput: UpdateAppVersionAppComponentOutput
    UpdateAppVersionResourceInput: UpdateAppVersionResourceInput
    UpdateAppVersionResourceOutput: UpdateAppVersionResourceOutput
    UpdateResiliencyPolicyInput: UpdateResiliencyPolicyInput
    UpdateResiliencyPolicyOutput: UpdateResiliencyPolicyOutput
end

return M
