local record CreateDevicePoolInput
    projectArn: string
    name: string
    description: string
    rules: {Rule}
    maxDevices: number
end

local record CreateDevicePoolOutput
    devicePool: DevicePool
end

local record CreateInstanceProfileInput
    name: string
    description: string
    packageCleanup: boolean
    excludeAppPackagesFromCleanup: {string}
    rebootAfterUse: boolean
end

local record CreateInstanceProfileOutput
    instanceProfile: InstanceProfile
end

local record CreateNetworkProfileInput
    projectArn: string
    name: string
    description: string
    type: string
    uplinkBandwidthBits: number
    downlinkBandwidthBits: number
    uplinkDelayMs: number
    downlinkDelayMs: number
    uplinkJitterMs: number
    downlinkJitterMs: number
    uplinkLossPercent: number
    downlinkLossPercent: number
end

local record CreateNetworkProfileOutput
    networkProfile: NetworkProfile
end

local record CreateProjectInput
    name: string
    defaultJobTimeoutMinutes: number
    vpcConfig: VpcConfig
    environmentVariables: {EnvironmentVariable}
    executionRoleArn: string
end

local record CreateProjectOutput
    project: Project
end

local record CreateRemoteAccessSessionInput
    projectArn: string
    deviceArn: string
    appArn: string
    instanceArn: string
    name: string
    configuration: CreateRemoteAccessSessionConfiguration
    interactionMode: string
    skipAppResign: boolean
end

local record CreateRemoteAccessSessionOutput
    remoteAccessSession: RemoteAccessSession
end

local record CreateTestGridProjectInput
    name: string
    description: string
    vpcConfig: TestGridVpcConfig
end

local record CreateTestGridProjectOutput
    testGridProject: TestGridProject
end

local record CreateTestGridUrlInput
    projectArn: string
    expiresInSeconds: number
end

local record CreateTestGridUrlOutput
    url: string
    expires: number
end

local record CreateUploadInput
    projectArn: string
    name: string
    type: string
    contentType: string
end

local record CreateUploadOutput
    upload: Upload
end

local record CreateVPCEConfigurationInput
    vpceConfigurationName: string
    vpceServiceName: string
    serviceDnsName: string
    vpceConfigurationDescription: string
end

local record CreateVPCEConfigurationOutput
    vpceConfiguration: VPCEConfiguration
end

local record DeleteDevicePoolInput
    arn: string
end

local record DeleteDevicePoolOutput
end

local record DeleteInstanceProfileInput
    arn: string
end

local record DeleteInstanceProfileOutput
end

local record DeleteNetworkProfileInput
    arn: string
end

local record DeleteNetworkProfileOutput
end

local record DeleteProjectInput
    arn: string
end

local record DeleteProjectOutput
end

local record DeleteRemoteAccessSessionInput
    arn: string
end

local record DeleteRemoteAccessSessionOutput
end

local record DeleteRunInput
    arn: string
end

local record DeleteRunOutput
end

local record DeleteTestGridProjectInput
    projectArn: string
end

local record DeleteTestGridProjectOutput
end

local record DeleteUploadInput
    arn: string
end

local record DeleteUploadOutput
end

local record DeleteVPCEConfigurationInput
    arn: string
end

local record DeleteVPCEConfigurationOutput
end

local record GetAccountSettingsInput
end

local record GetAccountSettingsOutput
    accountSettings: AccountSettings
end

local record GetDeviceInput
    arn: string
end

local record GetDeviceOutput
    device: Device
end

local record GetDeviceInstanceInput
    arn: string
end

local record GetDeviceInstanceOutput
    deviceInstance: DeviceInstance
end

local record GetDevicePoolInput
    arn: string
end

local record GetDevicePoolOutput
    devicePool: DevicePool
end

local record GetDevicePoolCompatibilityInput
    devicePoolArn: string
    appArn: string
    testType: string
    test: ScheduleRunTest
    configuration: ScheduleRunConfiguration
    projectArn: string
end

local record GetDevicePoolCompatibilityOutput
    compatibleDevices: {DevicePoolCompatibilityResult}
    incompatibleDevices: {DevicePoolCompatibilityResult}
end

local record GetInstanceProfileInput
    arn: string
end

local record GetInstanceProfileOutput
    instanceProfile: InstanceProfile
end

local record GetJobInput
    arn: string
end

local record GetJobOutput
    job: Job
end

local record GetNetworkProfileInput
    arn: string
end

local record GetNetworkProfileOutput
    networkProfile: NetworkProfile
end

local record GetOfferingStatusInput
    nextToken: string
end

local record GetOfferingStatusOutput
    current: {string : OfferingStatus}
    nextPeriod: {string : OfferingStatus}
    nextToken: string
end

local record GetProjectInput
    arn: string
end

local record GetProjectOutput
    project: Project
end

local record GetRemoteAccessSessionInput
    arn: string
end

local record GetRemoteAccessSessionOutput
    remoteAccessSession: RemoteAccessSession
end

local record GetRunInput
    arn: string
end

local record GetRunOutput
    run: Run
end

local record GetSuiteInput
    arn: string
end

local record GetSuiteOutput
    suite: Suite
end

local record GetTestInput
    arn: string
end

local record GetTestOutput
    test: Test
end

local record GetTestGridProjectInput
    projectArn: string
end

local record GetTestGridProjectOutput
    testGridProject: TestGridProject
end

local record GetTestGridSessionInput
    projectArn: string
    sessionId: string
    sessionArn: string
end

local record GetTestGridSessionOutput
    testGridSession: TestGridSession
end

local record GetUploadInput
    arn: string
end

local record GetUploadOutput
    upload: Upload
end

local record GetVPCEConfigurationInput
    arn: string
end

local record GetVPCEConfigurationOutput
    vpceConfiguration: VPCEConfiguration
end

local record InstallToRemoteAccessSessionInput
    remoteAccessSessionArn: string
    appArn: string
end

local record InstallToRemoteAccessSessionOutput
    appUpload: Upload
end

local record ListArtifactsInput
    arn: string
    type: string
    nextToken: string
end

local record ListArtifactsOutput
    artifacts: {Artifact}
    nextToken: string
end

local record ListDeviceInstancesInput
    maxResults: number
    nextToken: string
end

local record ListDeviceInstancesOutput
    deviceInstances: {DeviceInstance}
    nextToken: string
end

local record ListDevicePoolsInput
    arn: string
    type: string
    nextToken: string
end

local record ListDevicePoolsOutput
    devicePools: {DevicePool}
    nextToken: string
end

local record ListDevicesInput
    arn: string
    nextToken: string
    filters: {DeviceFilter}
end

local record ListDevicesOutput
    devices: {Device}
    nextToken: string
end

local record ListInstanceProfilesInput
    maxResults: number
    nextToken: string
end

local record ListInstanceProfilesOutput
    instanceProfiles: {InstanceProfile}
    nextToken: string
end

local record ListJobsInput
    arn: string
    nextToken: string
end

local record ListJobsOutput
    jobs: {Job}
    nextToken: string
end

local record ListNetworkProfilesInput
    arn: string
    type: string
    nextToken: string
end

local record ListNetworkProfilesOutput
    networkProfiles: {NetworkProfile}
    nextToken: string
end

local record ListOfferingPromotionsInput
    nextToken: string
end

local record ListOfferingPromotionsOutput
    offeringPromotions: {OfferingPromotion}
    nextToken: string
end

local record ListOfferingsInput
    nextToken: string
end

local record ListOfferingsOutput
    offerings: {Offering}
    nextToken: string
end

local record ListOfferingTransactionsInput
    nextToken: string
end

local record ListOfferingTransactionsOutput
    offeringTransactions: {OfferingTransaction}
    nextToken: string
end

local record ListProjectsInput
    arn: string
    nextToken: string
end

local record ListProjectsOutput
    projects: {Project}
    nextToken: string
end

local record ListRemoteAccessSessionsInput
    arn: string
    nextToken: string
end

local record ListRemoteAccessSessionsOutput
    remoteAccessSessions: {RemoteAccessSession}
    nextToken: string
end

local record ListRunsInput
    arn: string
    nextToken: string
end

local record ListRunsOutput
    runs: {Run}
    nextToken: string
end

local record ListSamplesInput
    arn: string
    nextToken: string
end

local record ListSamplesOutput
    samples: {Sample}
    nextToken: string
end

local record ListSuitesInput
    arn: string
    nextToken: string
end

local record ListSuitesOutput
    suites: {Suite}
    nextToken: string
end

local record ListTagsForResourceInput
    ResourceARN: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record ListTestGridProjectsInput
    maxResult: number
    nextToken: string
end

local record ListTestGridProjectsOutput
    testGridProjects: {TestGridProject}
    nextToken: string
end

local record ListTestGridSessionActionsInput
    sessionArn: string
    maxResult: number
    nextToken: string
end

local record ListTestGridSessionActionsOutput
    actions: {TestGridSessionAction}
    nextToken: string
end

local record ListTestGridSessionArtifactsInput
    sessionArn: string
    type: string
    maxResult: number
    nextToken: string
end

local record ListTestGridSessionArtifactsOutput
    artifacts: {TestGridSessionArtifact}
    nextToken: string
end

local record ListTestGridSessionsInput
    projectArn: string
    status: string
    creationTimeAfter: number
    creationTimeBefore: number
    endTimeAfter: number
    endTimeBefore: number
    maxResult: number
    nextToken: string
end

local record ListTestGridSessionsOutput
    testGridSessions: {TestGridSession}
    nextToken: string
end

local record ListTestsInput
    arn: string
    nextToken: string
end

local record ListTestsOutput
    tests: {Test}
    nextToken: string
end

local record ListUniqueProblemsInput
    arn: string
    nextToken: string
end

local record ListUniqueProblemsOutput
    uniqueProblems: {string : {UniqueProblem}}
    nextToken: string
end

local record ListUploadsInput
    arn: string
    type: string
    nextToken: string
end

local record ListUploadsOutput
    uploads: {Upload}
    nextToken: string
end

local record ListVPCEConfigurationsInput
    maxResults: number
    nextToken: string
end

local record ListVPCEConfigurationsOutput
    vpceConfigurations: {VPCEConfiguration}
    nextToken: string
end

local record PurchaseOfferingInput
    offeringId: string
    quantity: number
    offeringPromotionId: string
end

local record PurchaseOfferingOutput
    offeringTransaction: OfferingTransaction
end

local record RenewOfferingInput
    offeringId: string
    quantity: number
end

local record RenewOfferingOutput
    offeringTransaction: OfferingTransaction
end

local record ScheduleRunInput
    projectArn: string
    appArn: string
    devicePoolArn: string
    deviceSelectionConfiguration: DeviceSelectionConfiguration
    name: string
    test: ScheduleRunTest
    configuration: ScheduleRunConfiguration
    executionConfiguration: ExecutionConfiguration
end

local record ScheduleRunOutput
    run: Run
end

local record StopJobInput
    arn: string
end

local record StopJobOutput
    job: Job
end

local record StopRemoteAccessSessionInput
    arn: string
end

local record StopRemoteAccessSessionOutput
    remoteAccessSession: RemoteAccessSession
end

local record StopRunInput
    arn: string
end

local record StopRunOutput
    run: Run
end

local record TagResourceInput
    ResourceARN: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceARN: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateDeviceInstanceInput
    arn: string
    profileArn: string
    labels: {string}
end

local record UpdateDeviceInstanceOutput
    deviceInstance: DeviceInstance
end

local record UpdateDevicePoolInput
    arn: string
    name: string
    description: string
    rules: {Rule}
    maxDevices: number
    clearMaxDevices: boolean
end

local record UpdateDevicePoolOutput
    devicePool: DevicePool
end

local record UpdateInstanceProfileInput
    arn: string
    name: string
    description: string
    packageCleanup: boolean
    excludeAppPackagesFromCleanup: {string}
    rebootAfterUse: boolean
end

local record UpdateInstanceProfileOutput
    instanceProfile: InstanceProfile
end

local record UpdateNetworkProfileInput
    arn: string
    name: string
    description: string
    type: string
    uplinkBandwidthBits: number
    downlinkBandwidthBits: number
    uplinkDelayMs: number
    downlinkDelayMs: number
    uplinkJitterMs: number
    downlinkJitterMs: number
    uplinkLossPercent: number
    downlinkLossPercent: number
end

local record UpdateNetworkProfileOutput
    networkProfile: NetworkProfile
end

local record UpdateProjectInput
    arn: string
    name: string
    defaultJobTimeoutMinutes: number
    vpcConfig: VpcConfig
    environmentVariables: {EnvironmentVariable}
    executionRoleArn: string
end

local record UpdateProjectOutput
    project: Project
end

local record UpdateTestGridProjectInput
    projectArn: string
    name: string
    description: string
    vpcConfig: TestGridVpcConfig
end

local record UpdateTestGridProjectOutput
    testGridProject: TestGridProject
end

local record UpdateUploadInput
    arn: string
    name: string
    contentType: string
    editContent: boolean
end

local record UpdateUploadOutput
    upload: Upload
end

local record UpdateVPCEConfigurationInput
    arn: string
    vpceConfigurationName: string
    vpceServiceName: string
    serviceDnsName: string
    vpceConfigurationDescription: string
end

local record UpdateVPCEConfigurationOutput
    vpceConfiguration: VPCEConfiguration
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record TagOperationException
    message: string
    resourceName: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record InternalServiceException
    message: string
end

local record LimitExceededException
    message: string
end

local record ArgumentException
    message: string
end

local record InternalServiceException
    message: string
end

local record NotFoundException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record CannotDeleteException
    message: string
end

local record InternalServiceException
    message: string
end

local record NotFoundException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record InvalidOperationException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotEligibleException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record InternalServiceException
    message: string
end

local record NotFoundException
    message: string
end

local record ArgumentException
    message: string
end

local record InternalServiceException
    message: string
end

local record NotFoundException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotEligibleException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotEligibleException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotEligibleException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record NotFoundException
    message: string
end

local record TagOperationException
    message: string
    resourceName: string
end

local record ArgumentException
    message: string
end

local record InternalServiceException
    message: string
end

local record ArgumentException
    message: string
end

local record InternalServiceException
    message: string
end

local record NotFoundException
    message: string
end

local record ArgumentException
    message: string
end

local record InternalServiceException
    message: string
end

local record NotFoundException
    message: string
end

local record ArgumentException
    message: string
end

local record InternalServiceException
    message: string
end

local record NotFoundException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotEligibleException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotEligibleException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record IdempotencyException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record NotFoundException
    message: string
end

local record TagOperationException
    message: string
    resourceName: string
end

local record TagPolicyException
    message: string
    resourceName: string
end

local record TooManyTagsException
    message: string
    resourceName: string
end

local record ArgumentException
    message: string
end

local record NotFoundException
    message: string
end

local record TagOperationException
    message: string
    resourceName: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record InternalServiceException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local record ArgumentException
    message: string
end

local record InvalidOperationException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceAccountException
    message: string
end

local type InteractionMode = "INTERACTIVE" | "NO_VIDEO" | "VIDEO_ONLY"

local type TestGridSessionStatus = "ACTIVE" | "CLOSED" | "ERRORED"

local type TestGridSessionArtifactCategory = "VIDEO" | "LOG"

local type NetworkProfileType = "CURATED" | "PRIVATE"

local type TestType = "BUILTIN_FUZZ" | "APPIUM_JAVA_JUNIT" | "APPIUM_JAVA_TESTNG" | "APPIUM_PYTHON" | "APPIUM_NODE" | "APPIUM_RUBY" | "APPIUM_WEB_JAVA_JUNIT" | "APPIUM_WEB_JAVA_TESTNG" | "APPIUM_WEB_PYTHON" | "APPIUM_WEB_NODE" | "APPIUM_WEB_RUBY" | "INSTRUMENTATION" | "XCTEST" | "XCTEST_UI"

local type ArtifactCategory = "SCREENSHOT" | "FILE" | "LOG"

local type DevicePoolType = "CURATED" | "PRIVATE"

local type UploadType = "ANDROID_APP" | "IOS_APP" | "WEB_APP" | "EXTERNAL_DATA" | "APPIUM_JAVA_JUNIT_TEST_PACKAGE" | "APPIUM_JAVA_TESTNG_TEST_PACKAGE" | "APPIUM_PYTHON_TEST_PACKAGE" | "APPIUM_NODE_TEST_PACKAGE" | "APPIUM_RUBY_TEST_PACKAGE" | "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE" | "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE" | "APPIUM_WEB_PYTHON_TEST_PACKAGE" | "APPIUM_WEB_NODE_TEST_PACKAGE" | "APPIUM_WEB_RUBY_TEST_PACKAGE" | "CALABASH_TEST_PACKAGE" | "INSTRUMENTATION_TEST_PACKAGE" | "UIAUTOMATION_TEST_PACKAGE" | "UIAUTOMATOR_TEST_PACKAGE" | "XCTEST_TEST_PACKAGE" | "XCTEST_UI_TEST_PACKAGE" | "APPIUM_JAVA_JUNIT_TEST_SPEC" | "APPIUM_JAVA_TESTNG_TEST_SPEC" | "APPIUM_PYTHON_TEST_SPEC" | "APPIUM_NODE_TEST_SPEC" | "APPIUM_RUBY_TEST_SPEC" | "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC" | "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC" | "APPIUM_WEB_PYTHON_TEST_SPEC" | "APPIUM_WEB_NODE_TEST_SPEC" | "APPIUM_WEB_RUBY_TEST_SPEC" | "INSTRUMENTATION_TEST_SPEC" | "XCTEST_UI_TEST_SPEC"

local record M
    CreateDevicePoolInput: CreateDevicePoolInput
    CreateDevicePoolOutput: CreateDevicePoolOutput
    CreateInstanceProfileInput: CreateInstanceProfileInput
    CreateInstanceProfileOutput: CreateInstanceProfileOutput
    CreateNetworkProfileInput: CreateNetworkProfileInput
    CreateNetworkProfileOutput: CreateNetworkProfileOutput
    CreateProjectInput: CreateProjectInput
    CreateProjectOutput: CreateProjectOutput
    CreateRemoteAccessSessionInput: CreateRemoteAccessSessionInput
    CreateRemoteAccessSessionOutput: CreateRemoteAccessSessionOutput
    CreateTestGridProjectInput: CreateTestGridProjectInput
    CreateTestGridProjectOutput: CreateTestGridProjectOutput
    CreateTestGridUrlInput: CreateTestGridUrlInput
    CreateTestGridUrlOutput: CreateTestGridUrlOutput
    CreateUploadInput: CreateUploadInput
    CreateUploadOutput: CreateUploadOutput
    CreateVPCEConfigurationInput: CreateVPCEConfigurationInput
    CreateVPCEConfigurationOutput: CreateVPCEConfigurationOutput
    DeleteDevicePoolInput: DeleteDevicePoolInput
    DeleteDevicePoolOutput: DeleteDevicePoolOutput
    DeleteInstanceProfileInput: DeleteInstanceProfileInput
    DeleteInstanceProfileOutput: DeleteInstanceProfileOutput
    DeleteNetworkProfileInput: DeleteNetworkProfileInput
    DeleteNetworkProfileOutput: DeleteNetworkProfileOutput
    DeleteProjectInput: DeleteProjectInput
    DeleteProjectOutput: DeleteProjectOutput
    DeleteRemoteAccessSessionInput: DeleteRemoteAccessSessionInput
    DeleteRemoteAccessSessionOutput: DeleteRemoteAccessSessionOutput
    DeleteRunInput: DeleteRunInput
    DeleteRunOutput: DeleteRunOutput
    DeleteTestGridProjectInput: DeleteTestGridProjectInput
    DeleteTestGridProjectOutput: DeleteTestGridProjectOutput
    DeleteUploadInput: DeleteUploadInput
    DeleteUploadOutput: DeleteUploadOutput
    DeleteVPCEConfigurationInput: DeleteVPCEConfigurationInput
    DeleteVPCEConfigurationOutput: DeleteVPCEConfigurationOutput
    GetAccountSettingsInput: GetAccountSettingsInput
    GetAccountSettingsOutput: GetAccountSettingsOutput
    GetDeviceInput: GetDeviceInput
    GetDeviceOutput: GetDeviceOutput
    GetDeviceInstanceInput: GetDeviceInstanceInput
    GetDeviceInstanceOutput: GetDeviceInstanceOutput
    GetDevicePoolInput: GetDevicePoolInput
    GetDevicePoolOutput: GetDevicePoolOutput
    GetDevicePoolCompatibilityInput: GetDevicePoolCompatibilityInput
    GetDevicePoolCompatibilityOutput: GetDevicePoolCompatibilityOutput
    GetInstanceProfileInput: GetInstanceProfileInput
    GetInstanceProfileOutput: GetInstanceProfileOutput
    GetJobInput: GetJobInput
    GetJobOutput: GetJobOutput
    GetNetworkProfileInput: GetNetworkProfileInput
    GetNetworkProfileOutput: GetNetworkProfileOutput
    GetOfferingStatusInput: GetOfferingStatusInput
    GetOfferingStatusOutput: GetOfferingStatusOutput
    GetProjectInput: GetProjectInput
    GetProjectOutput: GetProjectOutput
    GetRemoteAccessSessionInput: GetRemoteAccessSessionInput
    GetRemoteAccessSessionOutput: GetRemoteAccessSessionOutput
    GetRunInput: GetRunInput
    GetRunOutput: GetRunOutput
    GetSuiteInput: GetSuiteInput
    GetSuiteOutput: GetSuiteOutput
    GetTestInput: GetTestInput
    GetTestOutput: GetTestOutput
    GetTestGridProjectInput: GetTestGridProjectInput
    GetTestGridProjectOutput: GetTestGridProjectOutput
    GetTestGridSessionInput: GetTestGridSessionInput
    GetTestGridSessionOutput: GetTestGridSessionOutput
    GetUploadInput: GetUploadInput
    GetUploadOutput: GetUploadOutput
    GetVPCEConfigurationInput: GetVPCEConfigurationInput
    GetVPCEConfigurationOutput: GetVPCEConfigurationOutput
    InstallToRemoteAccessSessionInput: InstallToRemoteAccessSessionInput
    InstallToRemoteAccessSessionOutput: InstallToRemoteAccessSessionOutput
    ListArtifactsInput: ListArtifactsInput
    ListArtifactsOutput: ListArtifactsOutput
    ListDeviceInstancesInput: ListDeviceInstancesInput
    ListDeviceInstancesOutput: ListDeviceInstancesOutput
    ListDevicePoolsInput: ListDevicePoolsInput
    ListDevicePoolsOutput: ListDevicePoolsOutput
    ListDevicesInput: ListDevicesInput
    ListDevicesOutput: ListDevicesOutput
    ListInstanceProfilesInput: ListInstanceProfilesInput
    ListInstanceProfilesOutput: ListInstanceProfilesOutput
    ListJobsInput: ListJobsInput
    ListJobsOutput: ListJobsOutput
    ListNetworkProfilesInput: ListNetworkProfilesInput
    ListNetworkProfilesOutput: ListNetworkProfilesOutput
    ListOfferingPromotionsInput: ListOfferingPromotionsInput
    ListOfferingPromotionsOutput: ListOfferingPromotionsOutput
    ListOfferingsInput: ListOfferingsInput
    ListOfferingsOutput: ListOfferingsOutput
    ListOfferingTransactionsInput: ListOfferingTransactionsInput
    ListOfferingTransactionsOutput: ListOfferingTransactionsOutput
    ListProjectsInput: ListProjectsInput
    ListProjectsOutput: ListProjectsOutput
    ListRemoteAccessSessionsInput: ListRemoteAccessSessionsInput
    ListRemoteAccessSessionsOutput: ListRemoteAccessSessionsOutput
    ListRunsInput: ListRunsInput
    ListRunsOutput: ListRunsOutput
    ListSamplesInput: ListSamplesInput
    ListSamplesOutput: ListSamplesOutput
    ListSuitesInput: ListSuitesInput
    ListSuitesOutput: ListSuitesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTestGridProjectsInput: ListTestGridProjectsInput
    ListTestGridProjectsOutput: ListTestGridProjectsOutput
    ListTestGridSessionActionsInput: ListTestGridSessionActionsInput
    ListTestGridSessionActionsOutput: ListTestGridSessionActionsOutput
    ListTestGridSessionArtifactsInput: ListTestGridSessionArtifactsInput
    ListTestGridSessionArtifactsOutput: ListTestGridSessionArtifactsOutput
    ListTestGridSessionsInput: ListTestGridSessionsInput
    ListTestGridSessionsOutput: ListTestGridSessionsOutput
    ListTestsInput: ListTestsInput
    ListTestsOutput: ListTestsOutput
    ListUniqueProblemsInput: ListUniqueProblemsInput
    ListUniqueProblemsOutput: ListUniqueProblemsOutput
    ListUploadsInput: ListUploadsInput
    ListUploadsOutput: ListUploadsOutput
    ListVPCEConfigurationsInput: ListVPCEConfigurationsInput
    ListVPCEConfigurationsOutput: ListVPCEConfigurationsOutput
    PurchaseOfferingInput: PurchaseOfferingInput
    PurchaseOfferingOutput: PurchaseOfferingOutput
    RenewOfferingInput: RenewOfferingInput
    RenewOfferingOutput: RenewOfferingOutput
    ScheduleRunInput: ScheduleRunInput
    ScheduleRunOutput: ScheduleRunOutput
    StopJobInput: StopJobInput
    StopJobOutput: StopJobOutput
    StopRemoteAccessSessionInput: StopRemoteAccessSessionInput
    StopRemoteAccessSessionOutput: StopRemoteAccessSessionOutput
    StopRunInput: StopRunInput
    StopRunOutput: StopRunOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateDeviceInstanceInput: UpdateDeviceInstanceInput
    UpdateDeviceInstanceOutput: UpdateDeviceInstanceOutput
    UpdateDevicePoolInput: UpdateDevicePoolInput
    UpdateDevicePoolOutput: UpdateDevicePoolOutput
    UpdateInstanceProfileInput: UpdateInstanceProfileInput
    UpdateInstanceProfileOutput: UpdateInstanceProfileOutput
    UpdateNetworkProfileInput: UpdateNetworkProfileInput
    UpdateNetworkProfileOutput: UpdateNetworkProfileOutput
    UpdateProjectInput: UpdateProjectInput
    UpdateProjectOutput: UpdateProjectOutput
    UpdateTestGridProjectInput: UpdateTestGridProjectInput
    UpdateTestGridProjectOutput: UpdateTestGridProjectOutput
    UpdateUploadInput: UpdateUploadInput
    UpdateUploadOutput: UpdateUploadOutput
    UpdateVPCEConfigurationInput: UpdateVPCEConfigurationInput
    UpdateVPCEConfigurationOutput: UpdateVPCEConfigurationOutput
end

return M
