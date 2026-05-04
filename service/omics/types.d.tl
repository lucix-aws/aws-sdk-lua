local record AbortMultipartReadSetUploadInput
    sequenceStoreId: string
    uploadId: string
end

local record AbortMultipartReadSetUploadOutput
end

local record AcceptShareInput
    shareId: string
end

local record AcceptShareOutput
    status: string
end

local record BatchDeleteReadSetInput
    ids: {string}
    sequenceStoreId: string
end

local record BatchDeleteReadSetOutput
    errors: {ReadSetBatchError}
end

local record CancelAnnotationImportJobInput
    jobId: string
end

local record CancelAnnotationImportJobOutput
end

local record CancelRunInput
    id: string
end

local record CancelRunOutput
end

local record CancelRunBatchInput
    batchId: string
end

local record CancelRunBatchOutput
end

local record CancelVariantImportJobInput
    jobId: string
end

local record CancelVariantImportJobOutput
end

local record CompleteMultipartReadSetUploadInput
    sequenceStoreId: string
    uploadId: string
    parts: {CompleteReadSetUploadPartListItem}
end

local record CompleteMultipartReadSetUploadOutput
    readSetId: string
end

local record CreateAnnotationStoreInput
    reference: ReferenceItem
    name: string
    description: string
    tags: {string : string}
    versionName: string
    sseConfig: SseConfig
    storeFormat: string
    storeOptions: StoreOptions
end

local record CreateAnnotationStoreOutput
    id: string
    reference: ReferenceItem
    storeFormat: string
    storeOptions: StoreOptions
    status: string
    name: string
    versionName: string
    creationTime: number
end

local record CreateAnnotationStoreVersionInput
    name: string
    versionName: string
    description: string
    versionOptions: VersionOptions
    tags: {string : string}
end

local record CreateAnnotationStoreVersionOutput
    id: string
    versionName: string
    storeId: string
    versionOptions: VersionOptions
    name: string
    status: string
    creationTime: number
end

local record CreateConfigurationInput
    name: string
    description: string
    runConfigurations: RunConfigurations
    tags: {string : string}
    requestId: string
end

local record CreateConfigurationOutput
    arn: string
    uuid: string
    name: string
    description: string
    runConfigurations: RunConfigurationsResponse
    status: string
    creationTime: number
    tags: {string : string}
end

local record CreateMultipartReadSetUploadInput
    sequenceStoreId: string
    clientToken: string
    sourceFileType: string
    subjectId: string
    sampleId: string
    generatedFrom: string
    referenceArn: string
    name: string
    description: string
    tags: {string : string}
end

local record CreateMultipartReadSetUploadOutput
    sequenceStoreId: string
    uploadId: string
    sourceFileType: string
    subjectId: string
    sampleId: string
    generatedFrom: string
    referenceArn: string
    name: string
    description: string
    tags: {string : string}
    creationTime: number
end

local record CreateReferenceStoreInput
    name: string
    description: string
    sseConfig: SseConfig
    tags: {string : string}
    clientToken: string
end

local record CreateReferenceStoreOutput
    id: string
    arn: string
    name: string
    description: string
    sseConfig: SseConfig
    creationTime: number
end

local record CreateRunCacheInput
    cacheBehavior: string
    cacheS3Location: string
    description: string
    name: string
    requestId: string
    tags: {string : string}
    cacheBucketOwnerId: string
end

local record CreateRunCacheOutput
    arn: string
    id: string
    status: string
    tags: {string : string}
end

local record CreateRunGroupInput
    name: string
    maxCpus: number
    maxRuns: number
    maxDuration: number
    tags: {string : string}
    requestId: string
    maxGpus: number
end

local record CreateRunGroupOutput
    arn: string
    id: string
    tags: {string : string}
end

local record CreateSequenceStoreInput
    name: string
    description: string
    sseConfig: SseConfig
    tags: {string : string}
    clientToken: string
    fallbackLocation: string
    eTagAlgorithmFamily: string
    propagatedSetLevelTags: {string}
    s3AccessConfig: S3AccessConfig
end

local record CreateSequenceStoreOutput
    id: string
    arn: string
    name: string
    description: string
    sseConfig: SseConfig
    creationTime: number
    fallbackLocation: string
    eTagAlgorithmFamily: string
    status: string
    statusMessage: string
    propagatedSetLevelTags: {string}
    s3Access: SequenceStoreS3Access
end

local record CreateShareInput
    resourceArn: string
    principalSubscriber: string
    shareName: string
end

local record CreateShareOutput
    shareId: string
    status: string
    shareName: string
end

local record CreateVariantStoreInput
    reference: ReferenceItem
    name: string
    description: string
    tags: {string : string}
    sseConfig: SseConfig
end

local record CreateVariantStoreOutput
    id: string
    reference: ReferenceItem
    status: string
    name: string
    creationTime: number
end

local record CreateWorkflowInput
    name: string
    description: string
    engine: string
    definitionZip: string
    definitionUri: string
    main: string
    parameterTemplate: {string : WorkflowParameter}
    storageCapacity: number
    tags: {string : string}
    requestId: string
    accelerators: string
    storageType: string
    containerRegistryMap: ContainerRegistryMap
    containerRegistryMapUri: string
    readmeMarkdown: string
    parameterTemplatePath: string
    readmePath: string
    definitionRepository: DefinitionRepository
    workflowBucketOwnerId: string
    readmeUri: string
end

local record CreateWorkflowOutput
    arn: string
    id: string
    status: string
    tags: {string : string}
    uuid: string
end

local record CreateWorkflowVersionInput
    workflowId: string
    versionName: string
    definitionZip: string
    definitionUri: string
    accelerators: string
    description: string
    engine: string
    main: string
    parameterTemplate: {string : WorkflowParameter}
    requestId: string
    storageType: string
    storageCapacity: number
    tags: {string : string}
    workflowBucketOwnerId: string
    containerRegistryMap: ContainerRegistryMap
    containerRegistryMapUri: string
    readmeMarkdown: string
    parameterTemplatePath: string
    readmePath: string
    definitionRepository: DefinitionRepository
    readmeUri: string
end

local record CreateWorkflowVersionOutput
    arn: string
    workflowId: string
    versionName: string
    status: string
    tags: {string : string}
    uuid: string
end

local record DeleteAnnotationStoreInput
    name: string
    force: boolean
end

local record DeleteAnnotationStoreOutput
    status: string
end

local record DeleteAnnotationStoreVersionsInput
    name: string
    versions: {string}
    force: boolean
end

local record DeleteAnnotationStoreVersionsOutput
    errors: {VersionDeleteError}
end

local record DeleteBatchInput
    batchId: string
end

local record DeleteBatchOutput
end

local record DeleteConfigurationInput
    name: string
end

local record DeleteConfigurationOutput
end

local record DeleteReferenceInput
    id: string
    referenceStoreId: string
end

local record DeleteReferenceOutput
end

local record DeleteReferenceStoreInput
    id: string
end

local record DeleteReferenceStoreOutput
end

local record DeleteRunInput
    id: string
end

local record DeleteRunOutput
end

local record DeleteRunBatchInput
    batchId: string
end

local record DeleteRunBatchOutput
end

local record DeleteRunCacheInput
    id: string
end

local record DeleteRunCacheOutput
end

local record DeleteRunGroupInput
    id: string
end

local record DeleteRunGroupOutput
end

local record DeleteS3AccessPolicyInput
    s3AccessPointArn: string
end

local record DeleteS3AccessPolicyOutput
end

local record DeleteSequenceStoreInput
    id: string
end

local record DeleteSequenceStoreOutput
end

local record DeleteShareInput
    shareId: string
end

local record DeleteShareOutput
    status: string
end

local record DeleteVariantStoreInput
    name: string
    force: boolean
end

local record DeleteVariantStoreOutput
    status: string
end

local record DeleteWorkflowInput
    id: string
end

local record DeleteWorkflowOutput
end

local record DeleteWorkflowVersionInput
    workflowId: string
    versionName: string
end

local record DeleteWorkflowVersionOutput
end

local record GetAnnotationImportJobInput
    jobId: string
end

local record GetAnnotationImportJobOutput
    id: string
    destinationName: string
    versionName: string
    roleArn: string
    status: string
    statusMessage: string
    creationTime: number
    updateTime: number
    completionTime: number
    items: {AnnotationImportItemDetail}
    runLeftNormalization: boolean
    formatOptions: FormatOptions
    annotationFields: {string : string}
end

local record GetAnnotationStoreInput
    name: string
end

local record GetAnnotationStoreOutput
    id: string
    reference: ReferenceItem
    status: string
    storeArn: string
    name: string
    description: string
    sseConfig: SseConfig
    creationTime: number
    updateTime: number
    tags: {string : string}
    storeOptions: StoreOptions
    storeFormat: string
    statusMessage: string
    storeSizeBytes: number
    numVersions: number
end

local record GetAnnotationStoreVersionInput
    name: string
    versionName: string
end

local record GetAnnotationStoreVersionOutput
    storeId: string
    id: string
    status: string
    versionArn: string
    name: string
    versionName: string
    description: string
    creationTime: number
    updateTime: number
    tags: {string : string}
    versionOptions: VersionOptions
    statusMessage: string
    versionSizeBytes: number
end

local record GetBatchInput
    batchId: string
end

local record GetBatchOutput
    id: string
    arn: string
    uuid: string
    name: string
    status: string
    tags: {string : string}
    totalRuns: number
    defaultRunSetting: DefaultRunSetting
    submissionSummary: SubmissionSummary
    runSummary: RunSummary
    creationTime: number
    submittedTime: number
    processedTime: number
    failedTime: number
    failureReason: string
end

local record GetConfigurationInput
    name: string
end

local record GetConfigurationOutput
    arn: string
    uuid: string
    name: string
    description: string
    runConfigurations: RunConfigurationsResponse
    status: string
    creationTime: number
    tags: {string : string}
end

local record GetReadSetInput
    id: string
    sequenceStoreId: string
    file: string
    partNumber: number
end

local record GetReadSetOutput
    payload: string
end

local record GetReadSetActivationJobInput
    id: string
    sequenceStoreId: string
end

local record GetReadSetActivationJobOutput
    id: string
    sequenceStoreId: string
    status: string
    statusMessage: string
    creationTime: number
    completionTime: number
    sources: {ActivateReadSetSourceItem}
end

local record GetReadSetExportJobInput
    sequenceStoreId: string
    id: string
end

local record GetReadSetExportJobOutput
    id: string
    sequenceStoreId: string
    destination: string
    status: string
    statusMessage: string
    creationTime: number
    completionTime: number
    readSets: {ExportReadSetDetail}
end

local record GetReadSetImportJobInput
    id: string
    sequenceStoreId: string
end

local record GetReadSetImportJobOutput
    id: string
    sequenceStoreId: string
    roleArn: string
    status: string
    statusMessage: string
    creationTime: number
    completionTime: number
    sources: {ImportReadSetSourceItem}
end

local record GetReadSetMetadataInput
    id: string
    sequenceStoreId: string
end

local record GetReadSetMetadataOutput
    id: string
    arn: string
    sequenceStoreId: string
    subjectId: string
    sampleId: string
    status: string
    name: string
    description: string
    fileType: string
    creationTime: number
    sequenceInformation: SequenceInformation
    referenceArn: string
    files: ReadSetFiles
    statusMessage: string
    creationType: string
    etag: ETag
    creationJobId: string
end

local record GetReferenceInput
    id: string
    referenceStoreId: string
    range: string
    partNumber: number
    file: string
end

local record GetReferenceOutput
    payload: string
end

local record GetReferenceImportJobInput
    id: string
    referenceStoreId: string
end

local record GetReferenceImportJobOutput
    id: string
    referenceStoreId: string
    roleArn: string
    status: string
    statusMessage: string
    creationTime: number
    completionTime: number
    sources: {ImportReferenceSourceItem}
end

local record GetReferenceMetadataInput
    id: string
    referenceStoreId: string
end

local record GetReferenceMetadataOutput
    id: string
    arn: string
    referenceStoreId: string
    md5: string
    status: string
    name: string
    description: string
    creationTime: number
    updateTime: number
    files: ReferenceFiles
    creationType: string
    creationJobId: string
end

local record GetReferenceStoreInput
    id: string
end

local record GetReferenceStoreOutput
    id: string
    arn: string
    name: string
    description: string
    sseConfig: SseConfig
    creationTime: number
end

local record GetRunInput
    id: string
    export: {string}
end

local record GetRunOutput
    arn: string
    id: string
    cacheId: string
    cacheBehavior: string
    engineVersion: string
    status: string
    workflowId: string
    workflowType: string
    runId: string
    roleArn: string
    name: string
    runGroupId: string
    batchId: string
    priority: number
    definition: string
    digest: string
    parameters: any
    storageCapacity: number
    outputUri: string
    logLevel: string
    resourceDigests: {string : string}
    startedBy: string
    creationTime: number
    startTime: number
    stopTime: number
    statusMessage: string
    tags: {string : string}
    accelerators: string
    retentionMode: string
    failureReason: string
    logLocation: RunLogLocation
    uuid: string
    runOutputUri: string
    storageType: string
    workflowOwnerId: string
    workflowVersionName: string
    workflowUuid: string
    networkingMode: string
    configuration: ConfigurationDetails
    vpcConfig: VpcConfigResponse
end

local record GetRunCacheInput
    id: string
end

local record GetRunCacheOutput
    arn: string
    cacheBehavior: string
    cacheBucketOwnerId: string
    cacheS3Uri: string
    creationTime: number
    description: string
    id: string
    name: string
    status: string
    tags: {string : string}
end

local record GetRunGroupInput
    id: string
end

local record GetRunGroupOutput
    arn: string
    id: string
    name: string
    maxCpus: number
    maxRuns: number
    maxDuration: number
    creationTime: number
    tags: {string : string}
    maxGpus: number
end

local record GetRunTaskInput
    id: string
    taskId: string
end

local record GetRunTaskOutput
    taskId: string
    status: string
    name: string
    cpus: number
    cacheHit: boolean
    cacheS3Uri: string
    memory: number
    creationTime: number
    startTime: number
    stopTime: number
    statusMessage: string
    logStream: string
    gpus: number
    instanceType: string
    failureReason: string
    imageDetails: ImageDetails
end

local record GetS3AccessPolicyInput
    s3AccessPointArn: string
end

local record GetS3AccessPolicyOutput
    s3AccessPointArn: string
    storeId: string
    storeType: string
    updateTime: number
    s3AccessPolicy: string
end

local record GetSequenceStoreInput
    id: string
end

local record GetSequenceStoreOutput
    id: string
    arn: string
    name: string
    description: string
    sseConfig: SseConfig
    creationTime: number
    fallbackLocation: string
    s3Access: SequenceStoreS3Access
    eTagAlgorithmFamily: string
    status: string
    statusMessage: string
    propagatedSetLevelTags: {string}
    updateTime: number
end

local record GetShareInput
    shareId: string
end

local record GetShareOutput
    share: ShareDetails
end

local record GetVariantImportJobInput
    jobId: string
end

local record GetVariantImportJobOutput
    id: string
    destinationName: string
    roleArn: string
    status: string
    statusMessage: string
    creationTime: number
    updateTime: number
    completionTime: number
    items: {VariantImportItemDetail}
    runLeftNormalization: boolean
    annotationFields: {string : string}
end

local record GetVariantStoreInput
    name: string
end

local record GetVariantStoreOutput
    id: string
    reference: ReferenceItem
    status: string
    storeArn: string
    name: string
    description: string
    sseConfig: SseConfig
    creationTime: number
    updateTime: number
    tags: {string : string}
    statusMessage: string
    storeSizeBytes: number
end

local record GetWorkflowInput
    id: string
    type: string
    export: {string}
    workflowOwnerId: string
end

local record GetWorkflowOutput
    arn: string
    id: string
    status: string
    type: string
    name: string
    description: string
    engine: string
    definition: string
    main: string
    digest: string
    parameterTemplate: {string : WorkflowParameter}
    storageCapacity: number
    creationTime: number
    statusMessage: string
    tags: {string : string}
    metadata: {string : string}
    accelerators: string
    storageType: string
    uuid: string
    containerRegistryMap: ContainerRegistryMap
    readme: string
    definitionRepositoryDetails: DefinitionRepositoryDetails
    readmePath: string
end

local record GetWorkflowVersionInput
    workflowId: string
    versionName: string
    type: string
    export: {string}
    workflowOwnerId: string
end

local record GetWorkflowVersionOutput
    arn: string
    workflowId: string
    versionName: string
    accelerators: string
    creationTime: number
    description: string
    definition: string
    digest: string
    engine: string
    main: string
    metadata: {string : string}
    parameterTemplate: {string : WorkflowParameter}
    status: string
    statusMessage: string
    storageType: string
    storageCapacity: number
    type: string
    tags: {string : string}
    uuid: string
    workflowBucketOwnerId: string
    containerRegistryMap: ContainerRegistryMap
    readme: string
    definitionRepositoryDetails: DefinitionRepositoryDetails
    readmePath: string
end

local record ListAnnotationImportJobsInput
    maxResults: number
    ids: {string}
    nextToken: string
    filter: ListAnnotationImportJobsFilter
end

local record ListAnnotationImportJobsOutput
    annotationImportJobs: {AnnotationImportJobItem}
    nextToken: string
end

local record ListAnnotationStoresInput
    ids: {string}
    maxResults: number
    nextToken: string
    filter: ListAnnotationStoresFilter
end

local record ListAnnotationStoresOutput
    annotationStores: {AnnotationStoreItem}
    nextToken: string
end

local record ListAnnotationStoreVersionsInput
    name: string
    maxResults: number
    nextToken: string
    filter: ListAnnotationStoreVersionsFilter
end

local record ListAnnotationStoreVersionsOutput
    annotationStoreVersions: {AnnotationStoreVersionItem}
    nextToken: string
end

local record ListBatchInput
    maxItems: number
    startingToken: string
    status: string
    name: string
    runGroupId: string
end

local record ListBatchOutput
    items: {BatchListItem}
    nextToken: string
end

local record ListConfigurationsInput
    maxResults: number
    startingToken: string
end

local record ListConfigurationsOutput
    items: {ConfigurationListItem}
    nextToken: string
end

local record ListMultipartReadSetUploadsInput
    sequenceStoreId: string
    maxResults: number
    nextToken: string
end

local record ListMultipartReadSetUploadsOutput
    nextToken: string
    uploads: {MultipartReadSetUploadListItem}
end

local record ListReadSetActivationJobsInput
    sequenceStoreId: string
    maxResults: number
    nextToken: string
    filter: ActivateReadSetFilter
end

local record ListReadSetActivationJobsOutput
    nextToken: string
    activationJobs: {ActivateReadSetJobItem}
end

local record ListReadSetExportJobsInput
    sequenceStoreId: string
    maxResults: number
    nextToken: string
    filter: ExportReadSetFilter
end

local record ListReadSetExportJobsOutput
    nextToken: string
    exportJobs: {ExportReadSetJobDetail}
end

local record ListReadSetImportJobsInput
    maxResults: number
    nextToken: string
    sequenceStoreId: string
    filter: ImportReadSetFilter
end

local record ListReadSetImportJobsOutput
    nextToken: string
    importJobs: {ImportReadSetJobItem}
end

local record ListReadSetsInput
    sequenceStoreId: string
    maxResults: number
    nextToken: string
    filter: ReadSetFilter
end

local record ListReadSetsOutput
    nextToken: string
    readSets: {ReadSetListItem}
end

local record ListReadSetUploadPartsInput
    sequenceStoreId: string
    uploadId: string
    partSource: string
    maxResults: number
    nextToken: string
    filter: ReadSetUploadPartListFilter
end

local record ListReadSetUploadPartsOutput
    nextToken: string
    parts: {ReadSetUploadPartListItem}
end

local record ListReferenceImportJobsInput
    maxResults: number
    nextToken: string
    referenceStoreId: string
    filter: ImportReferenceFilter
end

local record ListReferenceImportJobsOutput
    nextToken: string
    importJobs: {ImportReferenceJobItem}
end

local record ListReferencesInput
    referenceStoreId: string
    maxResults: number
    nextToken: string
    filter: ReferenceFilter
end

local record ListReferencesOutput
    nextToken: string
    references: {ReferenceListItem}
end

local record ListReferenceStoresInput
    maxResults: number
    nextToken: string
    filter: ReferenceStoreFilter
end

local record ListReferenceStoresOutput
    nextToken: string
    referenceStores: {ReferenceStoreDetail}
end

local record ListRunCachesInput
    maxResults: number
    startingToken: string
end

local record ListRunCachesOutput
    items: {RunCacheListItem}
    nextToken: string
end

local record ListRunGroupsInput
    name: string
    startingToken: string
    maxResults: number
end

local record ListRunGroupsOutput
    items: {RunGroupListItem}
    nextToken: string
end

local record ListRunsInput
    name: string
    runGroupId: string
    batchId: string
    startingToken: string
    maxResults: number
    status: string
end

local record ListRunsOutput
    items: {RunListItem}
    nextToken: string
end

local record ListRunsInBatchInput
    batchId: string
    maxItems: number
    startingToken: string
    submissionStatus: string
    runSettingId: string
    runId: string
end

local record ListRunsInBatchOutput
    runs: {RunBatchListItem}
    nextToken: string
end

local record ListRunTasksInput
    id: string
    status: string
    startingToken: string
    maxResults: number
end

local record ListRunTasksOutput
    items: {TaskListItem}
    nextToken: string
end

local record ListSequenceStoresInput
    maxResults: number
    nextToken: string
    filter: SequenceStoreFilter
end

local record ListSequenceStoresOutput
    nextToken: string
    sequenceStores: {SequenceStoreDetail}
end

local record ListSharesInput
    resourceOwner: string
    filter: Filter
    nextToken: string
    maxResults: number
end

local record ListSharesOutput
    shares: {ShareDetails}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListVariantImportJobsInput
    maxResults: number
    ids: {string}
    nextToken: string
    filter: ListVariantImportJobsFilter
end

local record ListVariantImportJobsOutput
    variantImportJobs: {VariantImportJobItem}
    nextToken: string
end

local record ListVariantStoresInput
    maxResults: number
    ids: {string}
    nextToken: string
    filter: ListVariantStoresFilter
end

local record ListVariantStoresOutput
    variantStores: {VariantStoreItem}
    nextToken: string
end

local record ListWorkflowsInput
    type: string
    name: string
    startingToken: string
    maxResults: number
end

local record ListWorkflowsOutput
    items: {WorkflowListItem}
    nextToken: string
end

local record ListWorkflowVersionsInput
    workflowId: string
    type: string
    workflowOwnerId: string
    startingToken: string
    maxResults: number
end

local record ListWorkflowVersionsOutput
    items: {WorkflowVersionListItem}
    nextToken: string
end

local record PutS3AccessPolicyInput
    s3AccessPointArn: string
    s3AccessPolicy: string
end

local record PutS3AccessPolicyOutput
    s3AccessPointArn: string
    storeId: string
    storeType: string
end

local record StartAnnotationImportJobInput
    destinationName: string
    roleArn: string
    items: {AnnotationImportItemSource}
    versionName: string
    formatOptions: FormatOptions
    runLeftNormalization: boolean
    annotationFields: {string : string}
end

local record StartAnnotationImportJobOutput
    jobId: string
end

local record StartReadSetActivationJobInput
    sequenceStoreId: string
    clientToken: string
    sources: {StartReadSetActivationJobSourceItem}
end

local record StartReadSetActivationJobOutput
    id: string
    sequenceStoreId: string
    status: string
    creationTime: number
end

local record StartReadSetExportJobInput
    sequenceStoreId: string
    destination: string
    roleArn: string
    clientToken: string
    sources: {ExportReadSet}
end

local record StartReadSetExportJobOutput
    id: string
    sequenceStoreId: string
    destination: string
    status: string
    creationTime: number
end

local record StartReadSetImportJobInput
    sequenceStoreId: string
    roleArn: string
    clientToken: string
    sources: {StartReadSetImportJobSourceItem}
end

local record StartReadSetImportJobOutput
    id: string
    sequenceStoreId: string
    roleArn: string
    status: string
    creationTime: number
end

local record StartReferenceImportJobInput
    referenceStoreId: string
    roleArn: string
    clientToken: string
    sources: {StartReferenceImportJobSourceItem}
end

local record StartReferenceImportJobOutput
    id: string
    referenceStoreId: string
    roleArn: string
    status: string
    creationTime: number
end

local record StartRunInput
    workflowId: string
    workflowType: string
    runId: string
    roleArn: string
    name: string
    cacheId: string
    cacheBehavior: string
    runGroupId: string
    priority: number
    parameters: any
    storageCapacity: number
    outputUri: string
    logLevel: string
    tags: {string : string}
    requestId: string
    retentionMode: string
    storageType: string
    workflowOwnerId: string
    workflowVersionName: string
    networkingMode: string
    configurationName: string
end

local record StartRunOutput
    arn: string
    id: string
    status: string
    tags: {string : string}
    uuid: string
    runOutputUri: string
    configuration: ConfigurationDetails
    networkingMode: string
end

local record StartRunBatchInput
    batchName: string
    requestId: string
    tags: {string : string}
    defaultRunSetting: DefaultRunSetting
    batchRunSettings: BatchRunSettings
end

local record StartRunBatchOutput
    id: string
    arn: string
    status: string
    uuid: string
    tags: {string : string}
end

local record StartVariantImportJobInput
    destinationName: string
    roleArn: string
    items: {VariantImportItemSource}
    runLeftNormalization: boolean
    annotationFields: {string : string}
end

local record StartVariantImportJobOutput
    jobId: string
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

local record UpdateAnnotationStoreInput
    name: string
    description: string
end

local record UpdateAnnotationStoreOutput
    id: string
    reference: ReferenceItem
    status: string
    name: string
    description: string
    creationTime: number
    updateTime: number
    storeOptions: StoreOptions
    storeFormat: string
end

local record UpdateAnnotationStoreVersionInput
    name: string
    versionName: string
    description: string
end

local record UpdateAnnotationStoreVersionOutput
    storeId: string
    id: string
    status: string
    name: string
    versionName: string
    description: string
    creationTime: number
    updateTime: number
end

local record UpdateRunCacheInput
    cacheBehavior: string
    description: string
    id: string
    name: string
end

local record UpdateRunCacheOutput
end

local record UpdateRunGroupInput
    id: string
    name: string
    maxCpus: number
    maxRuns: number
    maxDuration: number
    maxGpus: number
end

local record UpdateRunGroupOutput
end

local record UpdateSequenceStoreInput
    id: string
    name: string
    description: string
    clientToken: string
    fallbackLocation: string
    propagatedSetLevelTags: {string}
    s3AccessConfig: S3AccessConfig
end

local record UpdateSequenceStoreOutput
    id: string
    arn: string
    name: string
    description: string
    sseConfig: SseConfig
    creationTime: number
    updateTime: number
    propagatedSetLevelTags: {string}
    status: string
    statusMessage: string
    fallbackLocation: string
    s3Access: SequenceStoreS3Access
    eTagAlgorithmFamily: string
end

local record UpdateVariantStoreInput
    name: string
    description: string
end

local record UpdateVariantStoreOutput
    id: string
    reference: ReferenceItem
    status: string
    name: string
    description: string
    creationTime: number
    updateTime: number
end

local record UpdateWorkflowInput
    id: string
    name: string
    description: string
    storageType: string
    storageCapacity: number
    readmeMarkdown: string
end

local record UpdateWorkflowOutput
end

local record UpdateWorkflowVersionInput
    workflowId: string
    versionName: string
    description: string
    storageType: string
    storageCapacity: number
    readmeMarkdown: string
end

local record UpdateWorkflowVersionOutput
end

local record UploadReadSetPartInput
    sequenceStoreId: string
    uploadId: string
    partSource: string
    partNumber: number
    payload: string
end

local record UploadReadSetPartOutput
    checksum: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record NotSupportedOperationException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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
end

local record ThrottlingException
    message: string
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

local record NotSupportedOperationException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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

local record NotSupportedOperationException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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

local record NotSupportedOperationException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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
end

local record ThrottlingException
    message: string
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
end

local record ThrottlingException
    message: string
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
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RangeNotSatisfiableException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
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

local record RangeNotSatisfiableException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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

local record NotSupportedOperationException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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
end

local record ThrottlingException
    message: string
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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
end

local record ThrottlingException
    message: string
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
end

local record ThrottlingException
    message: string
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
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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

local record NotSupportedOperationException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
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

local record NotSupportedOperationException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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
end

local record ThrottlingException
    message: string
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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

local record NotSupportedOperationException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
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
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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
end

local record ThrottlingException
    message: string
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
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
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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

local record NotSupportedOperationException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local type StoreType = "SEQUENCE_STORE" | "REFERENCE_STORE"

local record M
    AbortMultipartReadSetUploadInput: AbortMultipartReadSetUploadInput
    AbortMultipartReadSetUploadOutput: AbortMultipartReadSetUploadOutput
    AcceptShareInput: AcceptShareInput
    AcceptShareOutput: AcceptShareOutput
    BatchDeleteReadSetInput: BatchDeleteReadSetInput
    BatchDeleteReadSetOutput: BatchDeleteReadSetOutput
    CancelAnnotationImportJobInput: CancelAnnotationImportJobInput
    CancelAnnotationImportJobOutput: CancelAnnotationImportJobOutput
    CancelRunInput: CancelRunInput
    CancelRunOutput: CancelRunOutput
    CancelRunBatchInput: CancelRunBatchInput
    CancelRunBatchOutput: CancelRunBatchOutput
    CancelVariantImportJobInput: CancelVariantImportJobInput
    CancelVariantImportJobOutput: CancelVariantImportJobOutput
    CompleteMultipartReadSetUploadInput: CompleteMultipartReadSetUploadInput
    CompleteMultipartReadSetUploadOutput: CompleteMultipartReadSetUploadOutput
    CreateAnnotationStoreInput: CreateAnnotationStoreInput
    CreateAnnotationStoreOutput: CreateAnnotationStoreOutput
    CreateAnnotationStoreVersionInput: CreateAnnotationStoreVersionInput
    CreateAnnotationStoreVersionOutput: CreateAnnotationStoreVersionOutput
    CreateConfigurationInput: CreateConfigurationInput
    CreateConfigurationOutput: CreateConfigurationOutput
    CreateMultipartReadSetUploadInput: CreateMultipartReadSetUploadInput
    CreateMultipartReadSetUploadOutput: CreateMultipartReadSetUploadOutput
    CreateReferenceStoreInput: CreateReferenceStoreInput
    CreateReferenceStoreOutput: CreateReferenceStoreOutput
    CreateRunCacheInput: CreateRunCacheInput
    CreateRunCacheOutput: CreateRunCacheOutput
    CreateRunGroupInput: CreateRunGroupInput
    CreateRunGroupOutput: CreateRunGroupOutput
    CreateSequenceStoreInput: CreateSequenceStoreInput
    CreateSequenceStoreOutput: CreateSequenceStoreOutput
    CreateShareInput: CreateShareInput
    CreateShareOutput: CreateShareOutput
    CreateVariantStoreInput: CreateVariantStoreInput
    CreateVariantStoreOutput: CreateVariantStoreOutput
    CreateWorkflowInput: CreateWorkflowInput
    CreateWorkflowOutput: CreateWorkflowOutput
    CreateWorkflowVersionInput: CreateWorkflowVersionInput
    CreateWorkflowVersionOutput: CreateWorkflowVersionOutput
    DeleteAnnotationStoreInput: DeleteAnnotationStoreInput
    DeleteAnnotationStoreOutput: DeleteAnnotationStoreOutput
    DeleteAnnotationStoreVersionsInput: DeleteAnnotationStoreVersionsInput
    DeleteAnnotationStoreVersionsOutput: DeleteAnnotationStoreVersionsOutput
    DeleteBatchInput: DeleteBatchInput
    DeleteBatchOutput: DeleteBatchOutput
    DeleteConfigurationInput: DeleteConfigurationInput
    DeleteConfigurationOutput: DeleteConfigurationOutput
    DeleteReferenceInput: DeleteReferenceInput
    DeleteReferenceOutput: DeleteReferenceOutput
    DeleteReferenceStoreInput: DeleteReferenceStoreInput
    DeleteReferenceStoreOutput: DeleteReferenceStoreOutput
    DeleteRunInput: DeleteRunInput
    DeleteRunOutput: DeleteRunOutput
    DeleteRunBatchInput: DeleteRunBatchInput
    DeleteRunBatchOutput: DeleteRunBatchOutput
    DeleteRunCacheInput: DeleteRunCacheInput
    DeleteRunCacheOutput: DeleteRunCacheOutput
    DeleteRunGroupInput: DeleteRunGroupInput
    DeleteRunGroupOutput: DeleteRunGroupOutput
    DeleteS3AccessPolicyInput: DeleteS3AccessPolicyInput
    DeleteS3AccessPolicyOutput: DeleteS3AccessPolicyOutput
    DeleteSequenceStoreInput: DeleteSequenceStoreInput
    DeleteSequenceStoreOutput: DeleteSequenceStoreOutput
    DeleteShareInput: DeleteShareInput
    DeleteShareOutput: DeleteShareOutput
    DeleteVariantStoreInput: DeleteVariantStoreInput
    DeleteVariantStoreOutput: DeleteVariantStoreOutput
    DeleteWorkflowInput: DeleteWorkflowInput
    DeleteWorkflowOutput: DeleteWorkflowOutput
    DeleteWorkflowVersionInput: DeleteWorkflowVersionInput
    DeleteWorkflowVersionOutput: DeleteWorkflowVersionOutput
    GetAnnotationImportJobInput: GetAnnotationImportJobInput
    GetAnnotationImportJobOutput: GetAnnotationImportJobOutput
    GetAnnotationStoreInput: GetAnnotationStoreInput
    GetAnnotationStoreOutput: GetAnnotationStoreOutput
    GetAnnotationStoreVersionInput: GetAnnotationStoreVersionInput
    GetAnnotationStoreVersionOutput: GetAnnotationStoreVersionOutput
    GetBatchInput: GetBatchInput
    GetBatchOutput: GetBatchOutput
    GetConfigurationInput: GetConfigurationInput
    GetConfigurationOutput: GetConfigurationOutput
    GetReadSetInput: GetReadSetInput
    GetReadSetOutput: GetReadSetOutput
    GetReadSetActivationJobInput: GetReadSetActivationJobInput
    GetReadSetActivationJobOutput: GetReadSetActivationJobOutput
    GetReadSetExportJobInput: GetReadSetExportJobInput
    GetReadSetExportJobOutput: GetReadSetExportJobOutput
    GetReadSetImportJobInput: GetReadSetImportJobInput
    GetReadSetImportJobOutput: GetReadSetImportJobOutput
    GetReadSetMetadataInput: GetReadSetMetadataInput
    GetReadSetMetadataOutput: GetReadSetMetadataOutput
    GetReferenceInput: GetReferenceInput
    GetReferenceOutput: GetReferenceOutput
    GetReferenceImportJobInput: GetReferenceImportJobInput
    GetReferenceImportJobOutput: GetReferenceImportJobOutput
    GetReferenceMetadataInput: GetReferenceMetadataInput
    GetReferenceMetadataOutput: GetReferenceMetadataOutput
    GetReferenceStoreInput: GetReferenceStoreInput
    GetReferenceStoreOutput: GetReferenceStoreOutput
    GetRunInput: GetRunInput
    GetRunOutput: GetRunOutput
    GetRunCacheInput: GetRunCacheInput
    GetRunCacheOutput: GetRunCacheOutput
    GetRunGroupInput: GetRunGroupInput
    GetRunGroupOutput: GetRunGroupOutput
    GetRunTaskInput: GetRunTaskInput
    GetRunTaskOutput: GetRunTaskOutput
    GetS3AccessPolicyInput: GetS3AccessPolicyInput
    GetS3AccessPolicyOutput: GetS3AccessPolicyOutput
    GetSequenceStoreInput: GetSequenceStoreInput
    GetSequenceStoreOutput: GetSequenceStoreOutput
    GetShareInput: GetShareInput
    GetShareOutput: GetShareOutput
    GetVariantImportJobInput: GetVariantImportJobInput
    GetVariantImportJobOutput: GetVariantImportJobOutput
    GetVariantStoreInput: GetVariantStoreInput
    GetVariantStoreOutput: GetVariantStoreOutput
    GetWorkflowInput: GetWorkflowInput
    GetWorkflowOutput: GetWorkflowOutput
    GetWorkflowVersionInput: GetWorkflowVersionInput
    GetWorkflowVersionOutput: GetWorkflowVersionOutput
    ListAnnotationImportJobsInput: ListAnnotationImportJobsInput
    ListAnnotationImportJobsOutput: ListAnnotationImportJobsOutput
    ListAnnotationStoresInput: ListAnnotationStoresInput
    ListAnnotationStoresOutput: ListAnnotationStoresOutput
    ListAnnotationStoreVersionsInput: ListAnnotationStoreVersionsInput
    ListAnnotationStoreVersionsOutput: ListAnnotationStoreVersionsOutput
    ListBatchInput: ListBatchInput
    ListBatchOutput: ListBatchOutput
    ListConfigurationsInput: ListConfigurationsInput
    ListConfigurationsOutput: ListConfigurationsOutput
    ListMultipartReadSetUploadsInput: ListMultipartReadSetUploadsInput
    ListMultipartReadSetUploadsOutput: ListMultipartReadSetUploadsOutput
    ListReadSetActivationJobsInput: ListReadSetActivationJobsInput
    ListReadSetActivationJobsOutput: ListReadSetActivationJobsOutput
    ListReadSetExportJobsInput: ListReadSetExportJobsInput
    ListReadSetExportJobsOutput: ListReadSetExportJobsOutput
    ListReadSetImportJobsInput: ListReadSetImportJobsInput
    ListReadSetImportJobsOutput: ListReadSetImportJobsOutput
    ListReadSetsInput: ListReadSetsInput
    ListReadSetsOutput: ListReadSetsOutput
    ListReadSetUploadPartsInput: ListReadSetUploadPartsInput
    ListReadSetUploadPartsOutput: ListReadSetUploadPartsOutput
    ListReferenceImportJobsInput: ListReferenceImportJobsInput
    ListReferenceImportJobsOutput: ListReferenceImportJobsOutput
    ListReferencesInput: ListReferencesInput
    ListReferencesOutput: ListReferencesOutput
    ListReferenceStoresInput: ListReferenceStoresInput
    ListReferenceStoresOutput: ListReferenceStoresOutput
    ListRunCachesInput: ListRunCachesInput
    ListRunCachesOutput: ListRunCachesOutput
    ListRunGroupsInput: ListRunGroupsInput
    ListRunGroupsOutput: ListRunGroupsOutput
    ListRunsInput: ListRunsInput
    ListRunsOutput: ListRunsOutput
    ListRunsInBatchInput: ListRunsInBatchInput
    ListRunsInBatchOutput: ListRunsInBatchOutput
    ListRunTasksInput: ListRunTasksInput
    ListRunTasksOutput: ListRunTasksOutput
    ListSequenceStoresInput: ListSequenceStoresInput
    ListSequenceStoresOutput: ListSequenceStoresOutput
    ListSharesInput: ListSharesInput
    ListSharesOutput: ListSharesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListVariantImportJobsInput: ListVariantImportJobsInput
    ListVariantImportJobsOutput: ListVariantImportJobsOutput
    ListVariantStoresInput: ListVariantStoresInput
    ListVariantStoresOutput: ListVariantStoresOutput
    ListWorkflowsInput: ListWorkflowsInput
    ListWorkflowsOutput: ListWorkflowsOutput
    ListWorkflowVersionsInput: ListWorkflowVersionsInput
    ListWorkflowVersionsOutput: ListWorkflowVersionsOutput
    PutS3AccessPolicyInput: PutS3AccessPolicyInput
    PutS3AccessPolicyOutput: PutS3AccessPolicyOutput
    StartAnnotationImportJobInput: StartAnnotationImportJobInput
    StartAnnotationImportJobOutput: StartAnnotationImportJobOutput
    StartReadSetActivationJobInput: StartReadSetActivationJobInput
    StartReadSetActivationJobOutput: StartReadSetActivationJobOutput
    StartReadSetExportJobInput: StartReadSetExportJobInput
    StartReadSetExportJobOutput: StartReadSetExportJobOutput
    StartReadSetImportJobInput: StartReadSetImportJobInput
    StartReadSetImportJobOutput: StartReadSetImportJobOutput
    StartReferenceImportJobInput: StartReferenceImportJobInput
    StartReferenceImportJobOutput: StartReferenceImportJobOutput
    StartRunInput: StartRunInput
    StartRunOutput: StartRunOutput
    StartRunBatchInput: StartRunBatchInput
    StartRunBatchOutput: StartRunBatchOutput
    StartVariantImportJobInput: StartVariantImportJobInput
    StartVariantImportJobOutput: StartVariantImportJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAnnotationStoreInput: UpdateAnnotationStoreInput
    UpdateAnnotationStoreOutput: UpdateAnnotationStoreOutput
    UpdateAnnotationStoreVersionInput: UpdateAnnotationStoreVersionInput
    UpdateAnnotationStoreVersionOutput: UpdateAnnotationStoreVersionOutput
    UpdateRunCacheInput: UpdateRunCacheInput
    UpdateRunCacheOutput: UpdateRunCacheOutput
    UpdateRunGroupInput: UpdateRunGroupInput
    UpdateRunGroupOutput: UpdateRunGroupOutput
    UpdateSequenceStoreInput: UpdateSequenceStoreInput
    UpdateSequenceStoreOutput: UpdateSequenceStoreOutput
    UpdateVariantStoreInput: UpdateVariantStoreInput
    UpdateVariantStoreOutput: UpdateVariantStoreOutput
    UpdateWorkflowInput: UpdateWorkflowInput
    UpdateWorkflowOutput: UpdateWorkflowOutput
    UpdateWorkflowVersionInput: UpdateWorkflowVersionInput
    UpdateWorkflowVersionOutput: UpdateWorkflowVersionOutput
    UploadReadSetPartInput: UploadReadSetPartInput
    UploadReadSetPartOutput: UploadReadSetPartOutput
end

return M
