local record AddAttributesToFindingsInput
    findingArns: {string}
    attributes: {Attribute}
end

local record AddAttributesToFindingsOutput
    failedItems: {string : FailedItemDetails}
end

local record CreateAssessmentTargetInput
    assessmentTargetName: string
    resourceGroupArn: string
end

local record CreateAssessmentTargetOutput
    assessmentTargetArn: string
end

local record CreateAssessmentTemplateInput
    assessmentTargetArn: string
    assessmentTemplateName: string
    durationInSeconds: number
    rulesPackageArns: {string}
    userAttributesForFindings: {Attribute}
end

local record CreateAssessmentTemplateOutput
    assessmentTemplateArn: string
end

local record CreateExclusionsPreviewInput
    assessmentTemplateArn: string
end

local record CreateExclusionsPreviewOutput
    previewToken: string
end

local record CreateResourceGroupInput
    resourceGroupTags: {ResourceGroupTag}
end

local record CreateResourceGroupOutput
    resourceGroupArn: string
end

local record DeleteAssessmentRunInput
    assessmentRunArn: string
end

local record DeleteAssessmentRunOutput
end

local record DeleteAssessmentTargetInput
    assessmentTargetArn: string
end

local record DeleteAssessmentTargetOutput
end

local record DeleteAssessmentTemplateInput
    assessmentTemplateArn: string
end

local record DeleteAssessmentTemplateOutput
end

local record DescribeAssessmentRunsInput
    assessmentRunArns: {string}
end

local record DescribeAssessmentRunsOutput
    assessmentRuns: {AssessmentRun}
    failedItems: {string : FailedItemDetails}
end

local record DescribeAssessmentTargetsInput
    assessmentTargetArns: {string}
end

local record DescribeAssessmentTargetsOutput
    assessmentTargets: {AssessmentTarget}
    failedItems: {string : FailedItemDetails}
end

local record DescribeAssessmentTemplatesInput
    assessmentTemplateArns: {string}
end

local record DescribeAssessmentTemplatesOutput
    assessmentTemplates: {AssessmentTemplate}
    failedItems: {string : FailedItemDetails}
end

local record DescribeCrossAccountAccessRoleInput
end

local record DescribeCrossAccountAccessRoleOutput
    roleArn: string
    valid: boolean
    registeredAt: number
end

local record DescribeExclusionsInput
    exclusionArns: {string}
    locale: string
end

local record DescribeExclusionsOutput
    exclusions: {string : Exclusion}
    failedItems: {string : FailedItemDetails}
end

local record DescribeFindingsInput
    findingArns: {string}
    locale: string
end

local record DescribeFindingsOutput
    findings: {Finding}
    failedItems: {string : FailedItemDetails}
end

local record DescribeResourceGroupsInput
    resourceGroupArns: {string}
end

local record DescribeResourceGroupsOutput
    resourceGroups: {ResourceGroup}
    failedItems: {string : FailedItemDetails}
end

local record DescribeRulesPackagesInput
    rulesPackageArns: {string}
    locale: string
end

local record DescribeRulesPackagesOutput
    rulesPackages: {RulesPackage}
    failedItems: {string : FailedItemDetails}
end

local record GetAssessmentReportInput
    assessmentRunArn: string
    reportFileFormat: string
    reportType: string
end

local record GetAssessmentReportOutput
    status: string
    url: string
end

local record GetExclusionsPreviewInput
    assessmentTemplateArn: string
    previewToken: string
    nextToken: string
    maxResults: number
    locale: string
end

local record GetExclusionsPreviewOutput
    previewStatus: string
    exclusionPreviews: {ExclusionPreview}
    nextToken: string
end

local record GetTelemetryMetadataInput
    assessmentRunArn: string
end

local record GetTelemetryMetadataOutput
    telemetryMetadata: {TelemetryMetadata}
end

local record ListAssessmentRunAgentsInput
    assessmentRunArn: string
    filter: AgentFilter
    nextToken: string
    maxResults: number
end

local record ListAssessmentRunAgentsOutput
    assessmentRunAgents: {AssessmentRunAgent}
    nextToken: string
end

local record ListAssessmentRunsInput
    assessmentTemplateArns: {string}
    filter: AssessmentRunFilter
    nextToken: string
    maxResults: number
end

local record ListAssessmentRunsOutput
    assessmentRunArns: {string}
    nextToken: string
end

local record ListAssessmentTargetsInput
    filter: AssessmentTargetFilter
    nextToken: string
    maxResults: number
end

local record ListAssessmentTargetsOutput
    assessmentTargetArns: {string}
    nextToken: string
end

local record ListAssessmentTemplatesInput
    assessmentTargetArns: {string}
    filter: AssessmentTemplateFilter
    nextToken: string
    maxResults: number
end

local record ListAssessmentTemplatesOutput
    assessmentTemplateArns: {string}
    nextToken: string
end

local record ListEventSubscriptionsInput
    resourceArn: string
    nextToken: string
    maxResults: number
end

local record ListEventSubscriptionsOutput
    subscriptions: {Subscription}
    nextToken: string
end

local record ListExclusionsInput
    assessmentRunArn: string
    nextToken: string
    maxResults: number
end

local record ListExclusionsOutput
    exclusionArns: {string}
    nextToken: string
end

local record ListFindingsInput
    assessmentRunArns: {string}
    filter: FindingFilter
    nextToken: string
    maxResults: number
end

local record ListFindingsOutput
    findingArns: {string}
    nextToken: string
end

local record ListRulesPackagesInput
    nextToken: string
    maxResults: number
end

local record ListRulesPackagesOutput
    rulesPackageArns: {string}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {Tag}
end

local record PreviewAgentsInput
    previewAgentsArn: string
    nextToken: string
    maxResults: number
end

local record PreviewAgentsOutput
    agentPreviews: {AgentPreview}
    nextToken: string
end

local record RegisterCrossAccountAccessRoleInput
    roleArn: string
end

local record RegisterCrossAccountAccessRoleOutput
end

local record RemoveAttributesFromFindingsInput
    findingArns: {string}
    attributeKeys: {string}
end

local record RemoveAttributesFromFindingsOutput
    failedItems: {string : FailedItemDetails}
end

local record SetTagsForResourceInput
    resourceArn: string
    tags: {Tag}
end

local record SetTagsForResourceOutput
end

local record StartAssessmentRunInput
    assessmentTemplateArn: string
    assessmentRunName: string
end

local record StartAssessmentRunOutput
    assessmentRunArn: string
end

local record StopAssessmentRunInput
    assessmentRunArn: string
    stopAction: string
end

local record StopAssessmentRunOutput
end

local record SubscribeToEventInput
    resourceArn: string
    event: string
    topicArn: string
end

local record SubscribeToEventOutput
end

local record UnsubscribeFromEventInput
    resourceArn: string
    event: string
    topicArn: string
end

local record UnsubscribeFromEventOutput
end

local record UpdateAssessmentTargetInput
    assessmentTargetArn: string
    assessmentTargetName: string
    resourceGroupArn: string
end

local record UpdateAssessmentTargetOutput
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record ServiceTemporarilyUnavailableException
    message: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidCrossAccountRoleException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record LimitExceededException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record ServiceTemporarilyUnavailableException
    message: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record LimitExceededException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record ServiceTemporarilyUnavailableException
    message: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record PreviewGenerationInProgressException
    message: string
end

local record ServiceTemporarilyUnavailableException
    message: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record LimitExceededException
    message: string
    errorCode: string
    canRetry: boolean
end

local record ServiceTemporarilyUnavailableException
    message: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record AssessmentRunInProgressException
    message: string
    assessmentRunArns: {string}
    assessmentRunArnsTruncated: boolean
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record ServiceTemporarilyUnavailableException
    message: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record AssessmentRunInProgressException
    message: string
    assessmentRunArns: {string}
    assessmentRunArnsTruncated: boolean
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record ServiceTemporarilyUnavailableException
    message: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record AssessmentRunInProgressException
    message: string
    assessmentRunArns: {string}
    assessmentRunArnsTruncated: boolean
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record ServiceTemporarilyUnavailableException
    message: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record AssessmentRunInProgressException
    message: string
    assessmentRunArns: {string}
    assessmentRunArnsTruncated: boolean
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record ServiceTemporarilyUnavailableException
    message: string
    canRetry: boolean
end

local record UnsupportedFeatureException
    message: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidCrossAccountRoleException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidCrossAccountRoleException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record ServiceTemporarilyUnavailableException
    message: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record ServiceTemporarilyUnavailableException
    message: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record ServiceTemporarilyUnavailableException
    message: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record AgentsAlreadyRunningAssessmentException
    message: string
    agents: {AgentAlreadyRunningAssessment}
    agentsTruncated: boolean
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidCrossAccountRoleException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record LimitExceededException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record ServiceTemporarilyUnavailableException
    message: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record ServiceTemporarilyUnavailableException
    message: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record LimitExceededException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record ServiceTemporarilyUnavailableException
    message: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record ServiceTemporarilyUnavailableException
    message: string
    canRetry: boolean
end

local record AccessDeniedException
    message: string
    errorCode: string
    canRetry: boolean
end

local record InternalException
    message: string
    canRetry: boolean
end

local record InvalidInputException
    message: string
    errorCode: string
    canRetry: boolean
end

local record NoSuchEntityException
    message: string
    errorCode: string
    canRetry: boolean
end

local record ServiceTemporarilyUnavailableException
    message: string
    canRetry: boolean
end

local type ReportStatus = "WORK_IN_PROGRESS" | "FAILED" | "COMPLETED"

local type PreviewStatus = "WORK_IN_PROGRESS" | "COMPLETED"

local type ReportType = "FINDING" | "FULL"

local type Locale = "EN_US"

local type InspectorEvent = "ASSESSMENT_RUN_STARTED" | "ASSESSMENT_RUN_COMPLETED" | "ASSESSMENT_RUN_STATE_CHANGED" | "FINDING_REPORTED" | "OTHER"

local type ReportFileFormat = "HTML" | "PDF"

local type StopAction = "START_EVALUATION" | "SKIP_EVALUATION"

local record M
    AddAttributesToFindingsInput: AddAttributesToFindingsInput
    AddAttributesToFindingsOutput: AddAttributesToFindingsOutput
    CreateAssessmentTargetInput: CreateAssessmentTargetInput
    CreateAssessmentTargetOutput: CreateAssessmentTargetOutput
    CreateAssessmentTemplateInput: CreateAssessmentTemplateInput
    CreateAssessmentTemplateOutput: CreateAssessmentTemplateOutput
    CreateExclusionsPreviewInput: CreateExclusionsPreviewInput
    CreateExclusionsPreviewOutput: CreateExclusionsPreviewOutput
    CreateResourceGroupInput: CreateResourceGroupInput
    CreateResourceGroupOutput: CreateResourceGroupOutput
    DeleteAssessmentRunInput: DeleteAssessmentRunInput
    DeleteAssessmentRunOutput: DeleteAssessmentRunOutput
    DeleteAssessmentTargetInput: DeleteAssessmentTargetInput
    DeleteAssessmentTargetOutput: DeleteAssessmentTargetOutput
    DeleteAssessmentTemplateInput: DeleteAssessmentTemplateInput
    DeleteAssessmentTemplateOutput: DeleteAssessmentTemplateOutput
    DescribeAssessmentRunsInput: DescribeAssessmentRunsInput
    DescribeAssessmentRunsOutput: DescribeAssessmentRunsOutput
    DescribeAssessmentTargetsInput: DescribeAssessmentTargetsInput
    DescribeAssessmentTargetsOutput: DescribeAssessmentTargetsOutput
    DescribeAssessmentTemplatesInput: DescribeAssessmentTemplatesInput
    DescribeAssessmentTemplatesOutput: DescribeAssessmentTemplatesOutput
    DescribeCrossAccountAccessRoleInput: DescribeCrossAccountAccessRoleInput
    DescribeCrossAccountAccessRoleOutput: DescribeCrossAccountAccessRoleOutput
    DescribeExclusionsInput: DescribeExclusionsInput
    DescribeExclusionsOutput: DescribeExclusionsOutput
    DescribeFindingsInput: DescribeFindingsInput
    DescribeFindingsOutput: DescribeFindingsOutput
    DescribeResourceGroupsInput: DescribeResourceGroupsInput
    DescribeResourceGroupsOutput: DescribeResourceGroupsOutput
    DescribeRulesPackagesInput: DescribeRulesPackagesInput
    DescribeRulesPackagesOutput: DescribeRulesPackagesOutput
    GetAssessmentReportInput: GetAssessmentReportInput
    GetAssessmentReportOutput: GetAssessmentReportOutput
    GetExclusionsPreviewInput: GetExclusionsPreviewInput
    GetExclusionsPreviewOutput: GetExclusionsPreviewOutput
    GetTelemetryMetadataInput: GetTelemetryMetadataInput
    GetTelemetryMetadataOutput: GetTelemetryMetadataOutput
    ListAssessmentRunAgentsInput: ListAssessmentRunAgentsInput
    ListAssessmentRunAgentsOutput: ListAssessmentRunAgentsOutput
    ListAssessmentRunsInput: ListAssessmentRunsInput
    ListAssessmentRunsOutput: ListAssessmentRunsOutput
    ListAssessmentTargetsInput: ListAssessmentTargetsInput
    ListAssessmentTargetsOutput: ListAssessmentTargetsOutput
    ListAssessmentTemplatesInput: ListAssessmentTemplatesInput
    ListAssessmentTemplatesOutput: ListAssessmentTemplatesOutput
    ListEventSubscriptionsInput: ListEventSubscriptionsInput
    ListEventSubscriptionsOutput: ListEventSubscriptionsOutput
    ListExclusionsInput: ListExclusionsInput
    ListExclusionsOutput: ListExclusionsOutput
    ListFindingsInput: ListFindingsInput
    ListFindingsOutput: ListFindingsOutput
    ListRulesPackagesInput: ListRulesPackagesInput
    ListRulesPackagesOutput: ListRulesPackagesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PreviewAgentsInput: PreviewAgentsInput
    PreviewAgentsOutput: PreviewAgentsOutput
    RegisterCrossAccountAccessRoleInput: RegisterCrossAccountAccessRoleInput
    RegisterCrossAccountAccessRoleOutput: RegisterCrossAccountAccessRoleOutput
    RemoveAttributesFromFindingsInput: RemoveAttributesFromFindingsInput
    RemoveAttributesFromFindingsOutput: RemoveAttributesFromFindingsOutput
    SetTagsForResourceInput: SetTagsForResourceInput
    SetTagsForResourceOutput: SetTagsForResourceOutput
    StartAssessmentRunInput: StartAssessmentRunInput
    StartAssessmentRunOutput: StartAssessmentRunOutput
    StopAssessmentRunInput: StopAssessmentRunInput
    StopAssessmentRunOutput: StopAssessmentRunOutput
    SubscribeToEventInput: SubscribeToEventInput
    SubscribeToEventOutput: SubscribeToEventOutput
    UnsubscribeFromEventInput: UnsubscribeFromEventInput
    UnsubscribeFromEventOutput: UnsubscribeFromEventOutput
    UpdateAssessmentTargetInput: UpdateAssessmentTargetInput
    UpdateAssessmentTargetOutput: UpdateAssessmentTargetOutput
end

return M
