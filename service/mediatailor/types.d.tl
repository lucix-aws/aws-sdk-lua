local record ConfigureLogsForChannelInput
    ChannelName: string
    LogTypes: {string}
end

local record ConfigureLogsForChannelOutput
    ChannelName: string
    LogTypes: {string}
end

local record ConfigureLogsForPlaybackConfigurationInput
    PercentEnabled: number
    PlaybackConfigurationName: string
    EnabledLoggingStrategies: {string}
    AdsInteractionLog: AdsInteractionLog
    ManifestServiceInteractionLog: ManifestServiceInteractionLog
end

local record ConfigureLogsForPlaybackConfigurationOutput
    PercentEnabled: number
    PlaybackConfigurationName: string
    EnabledLoggingStrategies: {string}
    AdsInteractionLog: AdsInteractionLog
    ManifestServiceInteractionLog: ManifestServiceInteractionLog
end

local record CreateChannelInput
    ChannelName: string
    FillerSlate: SlateSource
    Outputs: {RequestOutputItem}
    PlaybackMode: string
    Tags: {string : string}
    Tier: string
    TimeShiftConfiguration: TimeShiftConfiguration
    Audiences: {string}
end

local record CreateChannelOutput
    Arn: string
    ChannelName: string
    ChannelState: string
    CreationTime: number
    FillerSlate: SlateSource
    LastModifiedTime: number
    Outputs: {ResponseOutputItem}
    PlaybackMode: string
    Tags: {string : string}
    Tier: string
    TimeShiftConfiguration: TimeShiftConfiguration
    Audiences: {string}
end

local record CreateLiveSourceInput
    HttpPackageConfigurations: {HttpPackageConfiguration}
    LiveSourceName: string
    SourceLocationName: string
    Tags: {string : string}
end

local record CreateLiveSourceOutput
    Arn: string
    CreationTime: number
    HttpPackageConfigurations: {HttpPackageConfiguration}
    LastModifiedTime: number
    LiveSourceName: string
    SourceLocationName: string
    Tags: {string : string}
end

local record CreatePrefetchScheduleInput
    Consumption: PrefetchConsumption
    Name: string
    PlaybackConfigurationName: string
    Retrieval: PrefetchRetrieval
    RecurringPrefetchConfiguration: RecurringPrefetchConfiguration
    ScheduleType: string
    StreamId: string
    Tags: {string : string}
end

local record CreatePrefetchScheduleOutput
    Arn: string
    Consumption: PrefetchConsumption
    Name: string
    PlaybackConfigurationName: string
    Retrieval: PrefetchRetrieval
    RecurringPrefetchConfiguration: RecurringPrefetchConfiguration
    ScheduleType: string
    StreamId: string
    Tags: {string : string}
end

local record CreateProgramInput
    AdBreaks: {AdBreak}
    ChannelName: string
    LiveSourceName: string
    ProgramName: string
    ScheduleConfiguration: ScheduleConfiguration
    SourceLocationName: string
    VodSourceName: string
    AudienceMedia: {AudienceMedia}
    Tags: {string : string}
end

local record CreateProgramOutput
    AdBreaks: {AdBreak}
    Arn: string
    ChannelName: string
    CreationTime: number
    LiveSourceName: string
    ProgramName: string
    ScheduledStartTime: number
    SourceLocationName: string
    VodSourceName: string
    ClipRange: ClipRange
    DurationMillis: number
    AudienceMedia: {AudienceMedia}
    Tags: {string : string}
end

local record CreateSourceLocationInput
    AccessConfiguration: AccessConfiguration
    DefaultSegmentDeliveryConfiguration: DefaultSegmentDeliveryConfiguration
    HttpConfiguration: HttpConfiguration
    SegmentDeliveryConfigurations: {SegmentDeliveryConfiguration}
    SourceLocationName: string
    Tags: {string : string}
end

local record CreateSourceLocationOutput
    AccessConfiguration: AccessConfiguration
    Arn: string
    CreationTime: number
    DefaultSegmentDeliveryConfiguration: DefaultSegmentDeliveryConfiguration
    HttpConfiguration: HttpConfiguration
    LastModifiedTime: number
    SegmentDeliveryConfigurations: {SegmentDeliveryConfiguration}
    SourceLocationName: string
    Tags: {string : string}
end

local record CreateVodSourceInput
    HttpPackageConfigurations: {HttpPackageConfiguration}
    SourceLocationName: string
    Tags: {string : string}
    VodSourceName: string
end

local record CreateVodSourceOutput
    Arn: string
    CreationTime: number
    HttpPackageConfigurations: {HttpPackageConfiguration}
    LastModifiedTime: number
    SourceLocationName: string
    Tags: {string : string}
    VodSourceName: string
end

local record DeleteChannelInput
    ChannelName: string
end

local record DeleteChannelOutput
end

local record DeleteChannelPolicyInput
    ChannelName: string
end

local record DeleteChannelPolicyOutput
end

local record DeleteLiveSourceInput
    LiveSourceName: string
    SourceLocationName: string
end

local record DeleteLiveSourceOutput
end

local record DeletePlaybackConfigurationInput
    Name: string
end

local record DeletePlaybackConfigurationOutput
end

local record DeletePrefetchScheduleInput
    Name: string
    PlaybackConfigurationName: string
end

local record DeletePrefetchScheduleOutput
end

local record DeleteProgramInput
    ChannelName: string
    ProgramName: string
end

local record DeleteProgramOutput
end

local record DeleteSourceLocationInput
    SourceLocationName: string
end

local record DeleteSourceLocationOutput
end

local record DeleteVodSourceInput
    SourceLocationName: string
    VodSourceName: string
end

local record DeleteVodSourceOutput
end

local record DescribeChannelInput
    ChannelName: string
end

local record DescribeChannelOutput
    Arn: string
    ChannelName: string
    ChannelState: string
    CreationTime: number
    FillerSlate: SlateSource
    LastModifiedTime: number
    Outputs: {ResponseOutputItem}
    PlaybackMode: string
    Tags: {string : string}
    Tier: string
    LogConfiguration: LogConfigurationForChannel
    TimeShiftConfiguration: TimeShiftConfiguration
    Audiences: {string}
end

local record DescribeLiveSourceInput
    LiveSourceName: string
    SourceLocationName: string
end

local record DescribeLiveSourceOutput
    Arn: string
    CreationTime: number
    HttpPackageConfigurations: {HttpPackageConfiguration}
    LastModifiedTime: number
    LiveSourceName: string
    SourceLocationName: string
    Tags: {string : string}
end

local record DescribeProgramInput
    ChannelName: string
    ProgramName: string
end

local record DescribeProgramOutput
    AdBreaks: {AdBreak}
    Arn: string
    ChannelName: string
    CreationTime: number
    LiveSourceName: string
    ProgramName: string
    ScheduledStartTime: number
    SourceLocationName: string
    VodSourceName: string
    ClipRange: ClipRange
    DurationMillis: number
    AudienceMedia: {AudienceMedia}
    Tags: {string : string}
end

local record DescribeSourceLocationInput
    SourceLocationName: string
end

local record DescribeSourceLocationOutput
    AccessConfiguration: AccessConfiguration
    Arn: string
    CreationTime: number
    DefaultSegmentDeliveryConfiguration: DefaultSegmentDeliveryConfiguration
    HttpConfiguration: HttpConfiguration
    LastModifiedTime: number
    SegmentDeliveryConfigurations: {SegmentDeliveryConfiguration}
    SourceLocationName: string
    Tags: {string : string}
end

local record DescribeVodSourceInput
    SourceLocationName: string
    VodSourceName: string
end

local record DescribeVodSourceOutput
    AdBreakOpportunities: {AdBreakOpportunity}
    Arn: string
    CreationTime: number
    HttpPackageConfigurations: {HttpPackageConfiguration}
    LastModifiedTime: number
    SourceLocationName: string
    Tags: {string : string}
    VodSourceName: string
end

local record GetChannelPolicyInput
    ChannelName: string
end

local record GetChannelPolicyOutput
    Policy: string
end

local record GetChannelScheduleInput
    ChannelName: string
    DurationMinutes: string
    MaxResults: number
    NextToken: string
    Audience: string
end

local record GetChannelScheduleOutput
    Items: {ScheduleEntry}
    NextToken: string
end

local record GetPlaybackConfigurationInput
    Name: string
end

local record GetPlaybackConfigurationOutput
    AdDecisionServerUrl: string
    AvailSuppression: AvailSuppression
    Bumper: Bumper
    CdnConfiguration: CdnConfiguration
    ConfigurationAliases: {string : {string : string}}
    DashConfiguration: DashConfiguration
    HlsConfiguration: HlsConfiguration
    InsertionMode: string
    LivePreRollConfiguration: LivePreRollConfiguration
    LogConfiguration: LogConfiguration
    ManifestProcessingRules: ManifestProcessingRules
    Name: string
    PersonalizationThresholdSeconds: number
    PlaybackConfigurationArn: string
    PlaybackEndpointPrefix: string
    SessionInitializationEndpointPrefix: string
    SlateAdUrl: string
    Tags: {string : string}
    TranscodeProfileName: string
    VideoContentSourceUrl: string
    AdConditioningConfiguration: AdConditioningConfiguration
    AdDecisionServerConfiguration: AdDecisionServerConfiguration
end

local record GetPrefetchScheduleInput
    Name: string
    PlaybackConfigurationName: string
end

local record GetPrefetchScheduleOutput
    Arn: string
    Consumption: PrefetchConsumption
    Name: string
    PlaybackConfigurationName: string
    Retrieval: PrefetchRetrieval
    ScheduleType: string
    RecurringPrefetchConfiguration: RecurringPrefetchConfiguration
    StreamId: string
    Tags: {string : string}
end

local record ListAlertsInput
    MaxResults: number
    NextToken: string
    ResourceArn: string
end

local record ListAlertsOutput
    Items: {Alert}
    NextToken: string
end

local record ListChannelsInput
    MaxResults: number
    NextToken: string
end

local record ListChannelsOutput
    Items: {Channel}
    NextToken: string
end

local record ListLiveSourcesInput
    MaxResults: number
    NextToken: string
    SourceLocationName: string
end

local record ListLiveSourcesOutput
    Items: {LiveSource}
    NextToken: string
end

local record ListPlaybackConfigurationsInput
    MaxResults: number
    NextToken: string
end

local record ListPlaybackConfigurationsOutput
    Items: {PlaybackConfiguration}
    NextToken: string
end

local record ListPrefetchSchedulesInput
    MaxResults: number
    NextToken: string
    PlaybackConfigurationName: string
    ScheduleType: string
    StreamId: string
end

local record ListPrefetchSchedulesOutput
    Items: {PrefetchSchedule}
    NextToken: string
end

local record ListSourceLocationsInput
    MaxResults: number
    NextToken: string
end

local record ListSourceLocationsOutput
    Items: {SourceLocation}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record ListVodSourcesInput
    MaxResults: number
    NextToken: string
    SourceLocationName: string
end

local record ListVodSourcesOutput
    Items: {VodSource}
    NextToken: string
end

local record PutChannelPolicyInput
    ChannelName: string
    Policy: string
end

local record PutChannelPolicyOutput
end

local record PutPlaybackConfigurationInput
    AdDecisionServerUrl: string
    AvailSuppression: AvailSuppression
    Bumper: Bumper
    CdnConfiguration: CdnConfiguration
    ConfigurationAliases: {string : {string : string}}
    DashConfiguration: DashConfigurationForPut
    InsertionMode: string
    LivePreRollConfiguration: LivePreRollConfiguration
    ManifestProcessingRules: ManifestProcessingRules
    Name: string
    PersonalizationThresholdSeconds: number
    SlateAdUrl: string
    Tags: {string : string}
    TranscodeProfileName: string
    VideoContentSourceUrl: string
    AdConditioningConfiguration: AdConditioningConfiguration
    AdDecisionServerConfiguration: AdDecisionServerConfiguration
end

local record PutPlaybackConfigurationOutput
    AdDecisionServerUrl: string
    AvailSuppression: AvailSuppression
    Bumper: Bumper
    CdnConfiguration: CdnConfiguration
    ConfigurationAliases: {string : {string : string}}
    DashConfiguration: DashConfiguration
    HlsConfiguration: HlsConfiguration
    InsertionMode: string
    LivePreRollConfiguration: LivePreRollConfiguration
    LogConfiguration: LogConfiguration
    ManifestProcessingRules: ManifestProcessingRules
    Name: string
    PersonalizationThresholdSeconds: number
    PlaybackConfigurationArn: string
    PlaybackEndpointPrefix: string
    SessionInitializationEndpointPrefix: string
    SlateAdUrl: string
    Tags: {string : string}
    TranscodeProfileName: string
    VideoContentSourceUrl: string
    AdConditioningConfiguration: AdConditioningConfiguration
    AdDecisionServerConfiguration: AdDecisionServerConfiguration
end

local record StartChannelInput
    ChannelName: string
end

local record StartChannelOutput
end

local record StopChannelInput
    ChannelName: string
end

local record StopChannelOutput
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

local record UpdateChannelInput
    ChannelName: string
    FillerSlate: SlateSource
    Outputs: {RequestOutputItem}
    TimeShiftConfiguration: TimeShiftConfiguration
    Audiences: {string}
end

local record UpdateChannelOutput
    Arn: string
    ChannelName: string
    ChannelState: string
    CreationTime: number
    FillerSlate: SlateSource
    LastModifiedTime: number
    Outputs: {ResponseOutputItem}
    PlaybackMode: string
    Tags: {string : string}
    Tier: string
    TimeShiftConfiguration: TimeShiftConfiguration
    Audiences: {string}
end

local record UpdateLiveSourceInput
    HttpPackageConfigurations: {HttpPackageConfiguration}
    LiveSourceName: string
    SourceLocationName: string
end

local record UpdateLiveSourceOutput
    Arn: string
    CreationTime: number
    HttpPackageConfigurations: {HttpPackageConfiguration}
    LastModifiedTime: number
    LiveSourceName: string
    SourceLocationName: string
    Tags: {string : string}
end

local record UpdateProgramInput
    AdBreaks: {AdBreak}
    ChannelName: string
    ProgramName: string
    ScheduleConfiguration: UpdateProgramScheduleConfiguration
    AudienceMedia: {AudienceMedia}
end

local record UpdateProgramOutput
    AdBreaks: {AdBreak}
    Arn: string
    ChannelName: string
    CreationTime: number
    ProgramName: string
    SourceLocationName: string
    VodSourceName: string
    LiveSourceName: string
    ClipRange: ClipRange
    DurationMillis: number
    ScheduledStartTime: number
    AudienceMedia: {AudienceMedia}
    Tags: {string : string}
end

local record UpdateSourceLocationInput
    AccessConfiguration: AccessConfiguration
    DefaultSegmentDeliveryConfiguration: DefaultSegmentDeliveryConfiguration
    HttpConfiguration: HttpConfiguration
    SegmentDeliveryConfigurations: {SegmentDeliveryConfiguration}
    SourceLocationName: string
end

local record UpdateSourceLocationOutput
    AccessConfiguration: AccessConfiguration
    Arn: string
    CreationTime: number
    DefaultSegmentDeliveryConfiguration: DefaultSegmentDeliveryConfiguration
    HttpConfiguration: HttpConfiguration
    LastModifiedTime: number
    SegmentDeliveryConfigurations: {SegmentDeliveryConfiguration}
    SourceLocationName: string
    Tags: {string : string}
end

local record UpdateVodSourceInput
    HttpPackageConfigurations: {HttpPackageConfiguration}
    SourceLocationName: string
    VodSourceName: string
end

local record UpdateVodSourceOutput
    Arn: string
    CreationTime: number
    HttpPackageConfigurations: {HttpPackageConfiguration}
    LastModifiedTime: number
    SourceLocationName: string
    Tags: {string : string}
    VodSourceName: string
end

local record BadRequestException
    Message: string
end

local record BadRequestException
    Message: string
end

local record BadRequestException
    Message: string
end

local type InsertionMode = "STITCHED_ONLY" | "PLAYER_SELECT"

local type PlaybackMode = "LOOP" | "LINEAR"

local type ChannelState = "RUNNING" | "STOPPED"

local type PrefetchScheduleType = "SINGLE" | "RECURRING"

local type ListPrefetchScheduleType = "SINGLE" | "RECURRING" | "ALL"

local type Tier = "BASIC" | "STANDARD"

local record M
    ConfigureLogsForChannelInput: ConfigureLogsForChannelInput
    ConfigureLogsForChannelOutput: ConfigureLogsForChannelOutput
    ConfigureLogsForPlaybackConfigurationInput: ConfigureLogsForPlaybackConfigurationInput
    ConfigureLogsForPlaybackConfigurationOutput: ConfigureLogsForPlaybackConfigurationOutput
    CreateChannelInput: CreateChannelInput
    CreateChannelOutput: CreateChannelOutput
    CreateLiveSourceInput: CreateLiveSourceInput
    CreateLiveSourceOutput: CreateLiveSourceOutput
    CreatePrefetchScheduleInput: CreatePrefetchScheduleInput
    CreatePrefetchScheduleOutput: CreatePrefetchScheduleOutput
    CreateProgramInput: CreateProgramInput
    CreateProgramOutput: CreateProgramOutput
    CreateSourceLocationInput: CreateSourceLocationInput
    CreateSourceLocationOutput: CreateSourceLocationOutput
    CreateVodSourceInput: CreateVodSourceInput
    CreateVodSourceOutput: CreateVodSourceOutput
    DeleteChannelInput: DeleteChannelInput
    DeleteChannelOutput: DeleteChannelOutput
    DeleteChannelPolicyInput: DeleteChannelPolicyInput
    DeleteChannelPolicyOutput: DeleteChannelPolicyOutput
    DeleteLiveSourceInput: DeleteLiveSourceInput
    DeleteLiveSourceOutput: DeleteLiveSourceOutput
    DeletePlaybackConfigurationInput: DeletePlaybackConfigurationInput
    DeletePlaybackConfigurationOutput: DeletePlaybackConfigurationOutput
    DeletePrefetchScheduleInput: DeletePrefetchScheduleInput
    DeletePrefetchScheduleOutput: DeletePrefetchScheduleOutput
    DeleteProgramInput: DeleteProgramInput
    DeleteProgramOutput: DeleteProgramOutput
    DeleteSourceLocationInput: DeleteSourceLocationInput
    DeleteSourceLocationOutput: DeleteSourceLocationOutput
    DeleteVodSourceInput: DeleteVodSourceInput
    DeleteVodSourceOutput: DeleteVodSourceOutput
    DescribeChannelInput: DescribeChannelInput
    DescribeChannelOutput: DescribeChannelOutput
    DescribeLiveSourceInput: DescribeLiveSourceInput
    DescribeLiveSourceOutput: DescribeLiveSourceOutput
    DescribeProgramInput: DescribeProgramInput
    DescribeProgramOutput: DescribeProgramOutput
    DescribeSourceLocationInput: DescribeSourceLocationInput
    DescribeSourceLocationOutput: DescribeSourceLocationOutput
    DescribeVodSourceInput: DescribeVodSourceInput
    DescribeVodSourceOutput: DescribeVodSourceOutput
    GetChannelPolicyInput: GetChannelPolicyInput
    GetChannelPolicyOutput: GetChannelPolicyOutput
    GetChannelScheduleInput: GetChannelScheduleInput
    GetChannelScheduleOutput: GetChannelScheduleOutput
    GetPlaybackConfigurationInput: GetPlaybackConfigurationInput
    GetPlaybackConfigurationOutput: GetPlaybackConfigurationOutput
    GetPrefetchScheduleInput: GetPrefetchScheduleInput
    GetPrefetchScheduleOutput: GetPrefetchScheduleOutput
    ListAlertsInput: ListAlertsInput
    ListAlertsOutput: ListAlertsOutput
    ListChannelsInput: ListChannelsInput
    ListChannelsOutput: ListChannelsOutput
    ListLiveSourcesInput: ListLiveSourcesInput
    ListLiveSourcesOutput: ListLiveSourcesOutput
    ListPlaybackConfigurationsInput: ListPlaybackConfigurationsInput
    ListPlaybackConfigurationsOutput: ListPlaybackConfigurationsOutput
    ListPrefetchSchedulesInput: ListPrefetchSchedulesInput
    ListPrefetchSchedulesOutput: ListPrefetchSchedulesOutput
    ListSourceLocationsInput: ListSourceLocationsInput
    ListSourceLocationsOutput: ListSourceLocationsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListVodSourcesInput: ListVodSourcesInput
    ListVodSourcesOutput: ListVodSourcesOutput
    PutChannelPolicyInput: PutChannelPolicyInput
    PutChannelPolicyOutput: PutChannelPolicyOutput
    PutPlaybackConfigurationInput: PutPlaybackConfigurationInput
    PutPlaybackConfigurationOutput: PutPlaybackConfigurationOutput
    StartChannelInput: StartChannelInput
    StartChannelOutput: StartChannelOutput
    StopChannelInput: StopChannelInput
    StopChannelOutput: StopChannelOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateChannelInput: UpdateChannelInput
    UpdateChannelOutput: UpdateChannelOutput
    UpdateLiveSourceInput: UpdateLiveSourceInput
    UpdateLiveSourceOutput: UpdateLiveSourceOutput
    UpdateProgramInput: UpdateProgramInput
    UpdateProgramOutput: UpdateProgramOutput
    UpdateSourceLocationInput: UpdateSourceLocationInput
    UpdateSourceLocationOutput: UpdateSourceLocationOutput
    UpdateVodSourceInput: UpdateVodSourceInput
    UpdateVodSourceOutput: UpdateVodSourceOutput
end

return M
