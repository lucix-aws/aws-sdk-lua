local record CancelContactInput
    contactId: string
end

local record CancelContactOutput
    contactId: string
    versionId: number
end

local record CreateConfigInput
    name: string
    configData: ConfigTypeData
    tags: {string : string}
end

local record CreateConfigOutput
    configId: string
    configType: string
    configArn: string
end

local record CreateDataflowEndpointGroupInput
    endpointDetails: {EndpointDetails}
    tags: {string : string}
    contactPrePassDurationSeconds: number
    contactPostPassDurationSeconds: number
end

local record CreateDataflowEndpointGroupOutput
    dataflowEndpointGroupId: string
end

local record CreateDataflowEndpointGroupV2Input
    endpoints: {CreateEndpointDetails}
    contactPrePassDurationSeconds: number
    contactPostPassDurationSeconds: number
    tags: {string : string}
end

local record CreateDataflowEndpointGroupV2Output
    dataflowEndpointGroupId: string
end

local record CreateEphemerisInput
    satelliteId: string
    enabled: boolean
    priority: number
    expirationTime: number
    name: string
    kmsKeyArn: string
    ephemeris: EphemerisData
    tags: {string : string}
end

local record CreateEphemerisOutput
    ephemerisId: string
end

local record CreateMissionProfileInput
    name: string
    contactPrePassDurationSeconds: number
    contactPostPassDurationSeconds: number
    minimumViableContactDurationSeconds: number
    dataflowEdges: {{string}}
    trackingConfigArn: string
    telemetrySinkConfigArn: string
    tags: {string : string}
    streamsKmsKey: KmsKey
    streamsKmsRole: string
end

local record CreateMissionProfileOutput
    missionProfileId: string
end

local record DeleteConfigInput
    configId: string
    configType: string
end

local record DeleteConfigOutput
    configId: string
    configType: string
    configArn: string
end

local record DeleteDataflowEndpointGroupInput
    dataflowEndpointGroupId: string
end

local record DeleteDataflowEndpointGroupOutput
    dataflowEndpointGroupId: string
end

local record DeleteEphemerisInput
    ephemerisId: string
end

local record DeleteEphemerisOutput
    ephemerisId: string
end

local record DeleteMissionProfileInput
    missionProfileId: string
end

local record DeleteMissionProfileOutput
    missionProfileId: string
end

local record DescribeContactInput
    contactId: string
end

local record DescribeContactOutput
    contactId: string
    missionProfileArn: string
    satelliteArn: string
    startTime: number
    endTime: number
    prePassStartTime: number
    postPassEndTime: number
    groundStation: string
    contactStatus: string
    errorMessage: string
    maximumElevation: Elevation
    tags: {string : string}
    region: string
    dataflowList: {DataflowDetail}
    visibilityStartTime: number
    visibilityEndTime: number
    trackingOverrides: TrackingOverrides
    ephemeris: EphemerisResponseData
    version: ContactVersion
end

local record DescribeContactVersionInput
    contactId: string
    versionId: number
end

local record DescribeContactVersionOutput
    contactId: string
    missionProfileArn: string
    satelliteArn: string
    startTime: number
    endTime: number
    prePassStartTime: number
    postPassEndTime: number
    groundStation: string
    contactStatus: string
    errorMessage: string
    maximumElevation: Elevation
    tags: {string : string}
    region: string
    dataflowList: {DataflowDetail}
    visibilityStartTime: number
    visibilityEndTime: number
    trackingOverrides: TrackingOverrides
    ephemeris: EphemerisResponseData
    version: ContactVersion
end

local record DescribeEphemerisInput
    ephemerisId: string
end

local record DescribeEphemerisOutput
    ephemerisId: string
    satelliteId: string
    status: string
    priority: number
    creationTime: number
    enabled: boolean
    name: string
    tags: {string : string}
    suppliedData: EphemerisTypeDescription
    invalidReason: string
    errorReasons: {EphemerisErrorReason}
end

local record GetAgentConfigurationInput
    agentId: string
end

local record GetAgentConfigurationOutput
    agentId: string
    taskingDocument: string
end

local record GetAgentTaskResponseUrlInput
    agentId: string
    taskId: string
end

local record GetAgentTaskResponseUrlOutput
    agentId: string
    taskId: string
    presignedLogUrl: string
end

local record GetConfigInput
    configId: string
    configType: string
end

local record GetConfigOutput
    configId: string
    configArn: string
    name: string
    configType: string
    configData: ConfigTypeData
    tags: {string : string}
end

local record GetDataflowEndpointGroupInput
    dataflowEndpointGroupId: string
end

local record GetDataflowEndpointGroupOutput
    dataflowEndpointGroupId: string
    dataflowEndpointGroupArn: string
    endpointsDetails: {EndpointDetails}
    tags: {string : string}
    contactPrePassDurationSeconds: number
    contactPostPassDurationSeconds: number
end

local record GetMinuteUsageInput
    month: number
    year: number
end

local record GetMinuteUsageOutput
    isReservedMinutesCustomer: boolean
    totalReservedMinuteAllocation: number
    upcomingMinutesScheduled: number
    totalScheduledMinutes: number
    estimatedMinutesRemaining: number
end

local record GetMissionProfileInput
    missionProfileId: string
end

local record GetMissionProfileOutput
    missionProfileId: string
    missionProfileArn: string
    name: string
    region: string
    contactPrePassDurationSeconds: number
    contactPostPassDurationSeconds: number
    minimumViableContactDurationSeconds: number
    dataflowEdges: {{string}}
    trackingConfigArn: string
    telemetrySinkConfigArn: string
    tags: {string : string}
    streamsKmsKey: KmsKey
    streamsKmsRole: string
end

local record GetSatelliteInput
    satelliteId: string
end

local record GetSatelliteOutput
    satelliteId: string
    satelliteArn: string
    noradSatelliteID: number
    groundStations: {string}
    currentEphemeris: EphemerisMetaData
end

local record ListAntennasInput
    groundStationId: string
    maxResults: number
    nextToken: string
end

local record ListAntennasOutput
    antennaList: {AntennaListItem}
    nextToken: string
end

local record ListConfigsInput
    maxResults: number
    nextToken: string
end

local record ListConfigsOutput
    nextToken: string
    configList: {ConfigListItem}
end

local record ListContactsInput
    maxResults: number
    nextToken: string
    statusList: {string}
    startTime: number
    endTime: number
    groundStation: string
    satelliteArn: string
    missionProfileArn: string
    ephemeris: EphemerisFilter
end

local record ListContactsOutput
    nextToken: string
    contactList: {ContactData}
end

local record ListContactVersionsInput
    contactId: string
    maxResults: number
    nextToken: string
end

local record ListContactVersionsOutput
    nextToken: string
    contactVersionsList: {ContactVersion}
end

local record ListDataflowEndpointGroupsInput
    maxResults: number
    nextToken: string
end

local record ListDataflowEndpointGroupsOutput
    nextToken: string
    dataflowEndpointGroupList: {DataflowEndpointListItem}
end

local record ListEphemeridesInput
    satelliteId: string
    ephemerisType: string
    startTime: number
    endTime: number
    statusList: {string}
    maxResults: number
    nextToken: string
end

local record ListEphemeridesOutput
    nextToken: string
    ephemerides: {EphemerisItem}
end

local record ListGroundStationReservationsInput
    groundStationId: string
    startTime: number
    endTime: number
    reservationTypes: {string}
    maxResults: number
    nextToken: string
end

local record ListGroundStationReservationsOutput
    reservationList: {GroundStationReservationListItem}
    nextToken: string
end

local record ListGroundStationsInput
    satelliteId: string
    maxResults: number
    nextToken: string
end

local record ListGroundStationsOutput
    nextToken: string
    groundStationList: {GroundStationData}
end

local record ListMissionProfilesInput
    maxResults: number
    nextToken: string
end

local record ListMissionProfilesOutput
    nextToken: string
    missionProfileList: {MissionProfileListItem}
end

local record ListSatellitesInput
    maxResults: number
    nextToken: string
end

local record ListSatellitesOutput
    nextToken: string
    satellites: {SatelliteListItem}
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record RegisterAgentInput
    discoveryData: DiscoveryData
    agentDetails: AgentDetails
    tags: {string : string}
end

local record RegisterAgentOutput
    agentId: string
end

local record ReserveContactInput
    missionProfileArn: string
    satelliteArn: string
    startTime: number
    endTime: number
    groundStation: string
    tags: {string : string}
    trackingOverrides: TrackingOverrides
end

local record ReserveContactOutput
    contactId: string
    versionId: number
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

local record UpdateAgentStatusInput
    agentId: string
    taskId: string
    aggregateStatus: AggregateStatus
    componentStatuses: {ComponentStatusData}
end

local record UpdateAgentStatusOutput
    agentId: string
end

local record UpdateConfigInput
    configId: string
    name: string
    configType: string
    configData: ConfigTypeData
end

local record UpdateConfigOutput
    configId: string
    configType: string
    configArn: string
end

local record UpdateContactInput
    contactId: string
    clientToken: string
    trackingOverrides: TrackingOverrides
    satelliteArn: string
end

local record UpdateContactOutput
    contactId: string
    versionId: number
end

local record UpdateEphemerisInput
    ephemerisId: string
    enabled: boolean
    name: string
    priority: number
end

local record UpdateEphemerisOutput
    ephemerisId: string
end

local record UpdateMissionProfileInput
    missionProfileId: string
    name: string
    contactPrePassDurationSeconds: number
    contactPostPassDurationSeconds: number
    minimumViableContactDurationSeconds: number
    dataflowEdges: {{string}}
    trackingConfigArn: string
    telemetrySinkConfigArn: string
    streamsKmsKey: KmsKey
    streamsKmsRole: string
end

local record UpdateMissionProfileOutput
    missionProfileId: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceLimitExceededException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
    parameterName: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceLimitExceededException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceLimitExceededException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local record DependencyException
    message: string
    parameterName: string
end

local record InvalidParameterException
    message: string
    parameterName: string
end

local record ResourceNotFoundException
    message: string
end

local type ContactStatus = "SCHEDULING" | "FAILED_TO_SCHEDULE" | "SCHEDULED" | "CANCELLED" | "AWS_CANCELLED" | "PREPASS" | "PASS" | "POSTPASS" | "COMPLETED" | "FAILED" | "AVAILABLE" | "CANCELLING" | "AWS_FAILED"

local type ConfigCapabilityType = "antenna-downlink" | "antenna-downlink-demod-decode" | "tracking" | "dataflow-endpoint" | "antenna-uplink" | "uplink-echo" | "s3-recording" | "telemetry-sink"

local type EphemerisType = "TLE" | "OEM" | "AZ_EL" | "SERVICE_MANAGED"

local type EphemerisInvalidReason = "METADATA_INVALID" | "TIME_RANGE_INVALID" | "TRAJECTORY_INVALID" | "KMS_KEY_INVALID" | "VALIDATION_ERROR"

local type EphemerisStatus = "VALIDATING" | "INVALID" | "ERROR" | "ENABLED" | "DISABLED" | "EXPIRED"

local record M
    CancelContactInput: CancelContactInput
    CancelContactOutput: CancelContactOutput
    CreateConfigInput: CreateConfigInput
    CreateConfigOutput: CreateConfigOutput
    CreateDataflowEndpointGroupInput: CreateDataflowEndpointGroupInput
    CreateDataflowEndpointGroupOutput: CreateDataflowEndpointGroupOutput
    CreateDataflowEndpointGroupV2Input: CreateDataflowEndpointGroupV2Input
    CreateDataflowEndpointGroupV2Output: CreateDataflowEndpointGroupV2Output
    CreateEphemerisInput: CreateEphemerisInput
    CreateEphemerisOutput: CreateEphemerisOutput
    CreateMissionProfileInput: CreateMissionProfileInput
    CreateMissionProfileOutput: CreateMissionProfileOutput
    DeleteConfigInput: DeleteConfigInput
    DeleteConfigOutput: DeleteConfigOutput
    DeleteDataflowEndpointGroupInput: DeleteDataflowEndpointGroupInput
    DeleteDataflowEndpointGroupOutput: DeleteDataflowEndpointGroupOutput
    DeleteEphemerisInput: DeleteEphemerisInput
    DeleteEphemerisOutput: DeleteEphemerisOutput
    DeleteMissionProfileInput: DeleteMissionProfileInput
    DeleteMissionProfileOutput: DeleteMissionProfileOutput
    DescribeContactInput: DescribeContactInput
    DescribeContactOutput: DescribeContactOutput
    DescribeContactVersionInput: DescribeContactVersionInput
    DescribeContactVersionOutput: DescribeContactVersionOutput
    DescribeEphemerisInput: DescribeEphemerisInput
    DescribeEphemerisOutput: DescribeEphemerisOutput
    GetAgentConfigurationInput: GetAgentConfigurationInput
    GetAgentConfigurationOutput: GetAgentConfigurationOutput
    GetAgentTaskResponseUrlInput: GetAgentTaskResponseUrlInput
    GetAgentTaskResponseUrlOutput: GetAgentTaskResponseUrlOutput
    GetConfigInput: GetConfigInput
    GetConfigOutput: GetConfigOutput
    GetDataflowEndpointGroupInput: GetDataflowEndpointGroupInput
    GetDataflowEndpointGroupOutput: GetDataflowEndpointGroupOutput
    GetMinuteUsageInput: GetMinuteUsageInput
    GetMinuteUsageOutput: GetMinuteUsageOutput
    GetMissionProfileInput: GetMissionProfileInput
    GetMissionProfileOutput: GetMissionProfileOutput
    GetSatelliteInput: GetSatelliteInput
    GetSatelliteOutput: GetSatelliteOutput
    ListAntennasInput: ListAntennasInput
    ListAntennasOutput: ListAntennasOutput
    ListConfigsInput: ListConfigsInput
    ListConfigsOutput: ListConfigsOutput
    ListContactsInput: ListContactsInput
    ListContactsOutput: ListContactsOutput
    ListContactVersionsInput: ListContactVersionsInput
    ListContactVersionsOutput: ListContactVersionsOutput
    ListDataflowEndpointGroupsInput: ListDataflowEndpointGroupsInput
    ListDataflowEndpointGroupsOutput: ListDataflowEndpointGroupsOutput
    ListEphemeridesInput: ListEphemeridesInput
    ListEphemeridesOutput: ListEphemeridesOutput
    ListGroundStationReservationsInput: ListGroundStationReservationsInput
    ListGroundStationReservationsOutput: ListGroundStationReservationsOutput
    ListGroundStationsInput: ListGroundStationsInput
    ListGroundStationsOutput: ListGroundStationsOutput
    ListMissionProfilesInput: ListMissionProfilesInput
    ListMissionProfilesOutput: ListMissionProfilesOutput
    ListSatellitesInput: ListSatellitesInput
    ListSatellitesOutput: ListSatellitesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    RegisterAgentInput: RegisterAgentInput
    RegisterAgentOutput: RegisterAgentOutput
    ReserveContactInput: ReserveContactInput
    ReserveContactOutput: ReserveContactOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAgentStatusInput: UpdateAgentStatusInput
    UpdateAgentStatusOutput: UpdateAgentStatusOutput
    UpdateConfigInput: UpdateConfigInput
    UpdateConfigOutput: UpdateConfigOutput
    UpdateContactInput: UpdateContactInput
    UpdateContactOutput: UpdateContactOutput
    UpdateEphemerisInput: UpdateEphemerisInput
    UpdateEphemerisOutput: UpdateEphemerisOutput
    UpdateMissionProfileInput: UpdateMissionProfileInput
    UpdateMissionProfileOutput: UpdateMissionProfileOutput
end

return M
