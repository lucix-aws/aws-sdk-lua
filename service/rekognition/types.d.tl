local record AssociateFacesInput
    CollectionId: string
    UserId: string
    FaceIds: {string}
    UserMatchThreshold: number
    ClientRequestToken: string
end

local record AssociateFacesOutput
    AssociatedFaces: {AssociatedFace}
    UnsuccessfulFaceAssociations: {UnsuccessfulFaceAssociation}
    UserStatus: string
end

local record CompareFacesInput
    SourceImage: Image
    TargetImage: Image
    SimilarityThreshold: number
    QualityFilter: string
end

local record CompareFacesOutput
    SourceImageFace: ComparedSourceImageFace
    FaceMatches: {CompareFacesMatch}
    UnmatchedFaces: {ComparedFace}
    SourceImageOrientationCorrection: string
    TargetImageOrientationCorrection: string
end

local record CopyProjectVersionInput
    SourceProjectArn: string
    SourceProjectVersionArn: string
    DestinationProjectArn: string
    VersionName: string
    OutputConfig: OutputConfig
    Tags: {string : string}
    KmsKeyId: string
end

local record CopyProjectVersionOutput
    ProjectVersionArn: string
end

local record CreateCollectionInput
    CollectionId: string
    Tags: {string : string}
end

local record CreateCollectionOutput
    StatusCode: number
    CollectionArn: string
    FaceModelVersion: string
end

local record CreateDatasetInput
    DatasetSource: DatasetSource
    DatasetType: string
    ProjectArn: string
    Tags: {string : string}
end

local record CreateDatasetOutput
    DatasetArn: string
end

local record CreateFaceLivenessSessionInput
    KmsKeyId: string
    Settings: CreateFaceLivenessSessionRequestSettings
    ClientRequestToken: string
end

local record CreateFaceLivenessSessionOutput
    SessionId: string
end

local record CreateProjectInput
    ProjectName: string
    Feature: string
    AutoUpdate: string
    Tags: {string : string}
end

local record CreateProjectOutput
    ProjectArn: string
end

local record CreateProjectVersionInput
    ProjectArn: string
    VersionName: string
    OutputConfig: OutputConfig
    TrainingData: TrainingData
    TestingData: TestingData
    Tags: {string : string}
    KmsKeyId: string
    VersionDescription: string
    FeatureConfig: CustomizationFeatureConfig
end

local record CreateProjectVersionOutput
    ProjectVersionArn: string
end

local record CreateStreamProcessorInput
    Input: StreamProcessorInput
    Output: StreamProcessorOutput
    Name: string
    Settings: StreamProcessorSettings
    RoleArn: string
    Tags: {string : string}
    NotificationChannel: StreamProcessorNotificationChannel
    KmsKeyId: string
    RegionsOfInterest: {RegionOfInterest}
    DataSharingPreference: StreamProcessorDataSharingPreference
end

local record CreateStreamProcessorOutput
    StreamProcessorArn: string
end

local record CreateUserInput
    CollectionId: string
    UserId: string
    ClientRequestToken: string
end

local record CreateUserOutput
end

local record DeleteCollectionInput
    CollectionId: string
end

local record DeleteCollectionOutput
    StatusCode: number
end

local record DeleteDatasetInput
    DatasetArn: string
end

local record DeleteDatasetOutput
end

local record DeleteFacesInput
    CollectionId: string
    FaceIds: {string}
end

local record DeleteFacesOutput
    DeletedFaces: {string}
    UnsuccessfulFaceDeletions: {UnsuccessfulFaceDeletion}
end

local record DeleteProjectInput
    ProjectArn: string
end

local record DeleteProjectOutput
    Status: string
end

local record DeleteProjectPolicyInput
    ProjectArn: string
    PolicyName: string
    PolicyRevisionId: string
end

local record DeleteProjectPolicyOutput
end

local record DeleteProjectVersionInput
    ProjectVersionArn: string
end

local record DeleteProjectVersionOutput
    Status: string
end

local record DeleteStreamProcessorInput
    Name: string
end

local record DeleteStreamProcessorOutput
end

local record DeleteUserInput
    CollectionId: string
    UserId: string
    ClientRequestToken: string
end

local record DeleteUserOutput
end

local record DescribeCollectionInput
    CollectionId: string
end

local record DescribeCollectionOutput
    FaceCount: number
    FaceModelVersion: string
    CollectionARN: string
    CreationTimestamp: number
    UserCount: number
end

local record DescribeDatasetInput
    DatasetArn: string
end

local record DescribeDatasetOutput
    DatasetDescription: DatasetDescription
end

local record DescribeProjectsInput
    NextToken: string
    MaxResults: number
    ProjectNames: {string}
    Features: {string}
end

local record DescribeProjectsOutput
    ProjectDescriptions: {ProjectDescription}
    NextToken: string
end

local record DescribeProjectVersionsInput
    ProjectArn: string
    VersionNames: {string}
    NextToken: string
    MaxResults: number
end

local record DescribeProjectVersionsOutput
    ProjectVersionDescriptions: {ProjectVersionDescription}
    NextToken: string
end

local record DescribeStreamProcessorInput
    Name: string
end

local record DescribeStreamProcessorOutput
    Name: string
    StreamProcessorArn: string
    Status: string
    StatusMessage: string
    CreationTimestamp: number
    LastUpdateTimestamp: number
    Input: StreamProcessorInput
    Output: StreamProcessorOutput
    RoleArn: string
    Settings: StreamProcessorSettings
    NotificationChannel: StreamProcessorNotificationChannel
    KmsKeyId: string
    RegionsOfInterest: {RegionOfInterest}
    DataSharingPreference: StreamProcessorDataSharingPreference
end

local record DetectCustomLabelsInput
    ProjectVersionArn: string
    Image: Image
    MaxResults: number
    MinConfidence: number
end

local record DetectCustomLabelsOutput
    CustomLabels: {CustomLabel}
end

local record DetectFacesInput
    Image: Image
    Attributes: {string}
end

local record DetectFacesOutput
    FaceDetails: {FaceDetail}
    OrientationCorrection: string
end

local record DetectLabelsInput
    Image: Image
    MaxLabels: number
    MinConfidence: number
    Features: {string}
    Settings: DetectLabelsSettings
end

local record DetectLabelsOutput
    Labels: {Label}
    OrientationCorrection: string
    LabelModelVersion: string
    ImageProperties: DetectLabelsImageProperties
end

local record DetectModerationLabelsInput
    Image: Image
    MinConfidence: number
    HumanLoopConfig: HumanLoopConfig
    ProjectVersion: string
end

local record DetectModerationLabelsOutput
    ModerationLabels: {ModerationLabel}
    ModerationModelVersion: string
    HumanLoopActivationOutput: HumanLoopActivationOutput
    ProjectVersion: string
    ContentTypes: {ContentType}
end

local record DetectProtectiveEquipmentInput
    Image: Image
    SummarizationAttributes: ProtectiveEquipmentSummarizationAttributes
end

local record DetectProtectiveEquipmentOutput
    ProtectiveEquipmentModelVersion: string
    Persons: {ProtectiveEquipmentPerson}
    Summary: ProtectiveEquipmentSummary
end

local record DetectTextInput
    Image: Image
    Filters: DetectTextFilters
end

local record DetectTextOutput
    TextDetections: {TextDetection}
    TextModelVersion: string
end

local record DisassociateFacesInput
    CollectionId: string
    UserId: string
    ClientRequestToken: string
    FaceIds: {string}
end

local record DisassociateFacesOutput
    DisassociatedFaces: {DisassociatedFace}
    UnsuccessfulFaceDisassociations: {UnsuccessfulFaceDisassociation}
    UserStatus: string
end

local record DistributeDatasetEntriesInput
    Datasets: {DistributeDataset}
end

local record DistributeDatasetEntriesOutput
end

local record GetCelebrityInfoInput
    Id: string
end

local record GetCelebrityInfoOutput
    Urls: {string}
    Name: string
    KnownGender: KnownGender
end

local record GetCelebrityRecognitionInput
    JobId: string
    MaxResults: number
    NextToken: string
    SortBy: string
end

local record GetCelebrityRecognitionOutput
    JobStatus: string
    StatusMessage: string
    VideoMetadata: VideoMetadata
    NextToken: string
    Celebrities: {CelebrityRecognition}
    JobId: string
    Video: Video
    JobTag: string
end

local record GetContentModerationInput
    JobId: string
    MaxResults: number
    NextToken: string
    SortBy: string
    AggregateBy: string
end

local record GetContentModerationOutput
    JobStatus: string
    StatusMessage: string
    VideoMetadata: VideoMetadata
    ModerationLabels: {ContentModerationDetection}
    NextToken: string
    ModerationModelVersion: string
    JobId: string
    Video: Video
    JobTag: string
    GetRequestMetadata: GetContentModerationRequestMetadata
end

local record GetFaceDetectionInput
    JobId: string
    MaxResults: number
    NextToken: string
end

local record GetFaceDetectionOutput
    JobStatus: string
    StatusMessage: string
    VideoMetadata: VideoMetadata
    NextToken: string
    Faces: {FaceDetection}
    JobId: string
    Video: Video
    JobTag: string
end

local record GetFaceLivenessSessionResultsInput
    SessionId: string
end

local record GetFaceLivenessSessionResultsOutput
    SessionId: string
    Status: string
    Confidence: number
    ReferenceImage: AuditImage
    AuditImages: {AuditImage}
    Challenge: Challenge
end

local record GetFaceSearchInput
    JobId: string
    MaxResults: number
    NextToken: string
    SortBy: string
end

local record GetFaceSearchOutput
    JobStatus: string
    StatusMessage: string
    NextToken: string
    VideoMetadata: VideoMetadata
    Persons: {PersonMatch}
    JobId: string
    Video: Video
    JobTag: string
end

local record GetLabelDetectionInput
    JobId: string
    MaxResults: number
    NextToken: string
    SortBy: string
    AggregateBy: string
end

local record GetLabelDetectionOutput
    JobStatus: string
    StatusMessage: string
    VideoMetadata: VideoMetadata
    NextToken: string
    Labels: {LabelDetection}
    LabelModelVersion: string
    JobId: string
    Video: Video
    JobTag: string
    GetRequestMetadata: GetLabelDetectionRequestMetadata
end

local record GetMediaAnalysisJobInput
    JobId: string
end

local record GetMediaAnalysisJobOutput
    JobId: string
    JobName: string
    OperationsConfig: MediaAnalysisOperationsConfig
    Status: string
    FailureDetails: MediaAnalysisJobFailureDetails
    CreationTimestamp: number
    CompletionTimestamp: number
    Input: MediaAnalysisInput
    OutputConfig: MediaAnalysisOutputConfig
    KmsKeyId: string
    Results: MediaAnalysisResults
    ManifestSummary: MediaAnalysisManifestSummary
end

local record GetPersonTrackingInput
    JobId: string
    MaxResults: number
    NextToken: string
    SortBy: string
end

local record GetPersonTrackingOutput
    JobStatus: string
    StatusMessage: string
    VideoMetadata: VideoMetadata
    NextToken: string
    Persons: {PersonDetection}
    JobId: string
    Video: Video
    JobTag: string
end

local record GetSegmentDetectionInput
    JobId: string
    MaxResults: number
    NextToken: string
end

local record GetSegmentDetectionOutput
    JobStatus: string
    StatusMessage: string
    VideoMetadata: {VideoMetadata}
    AudioMetadata: {AudioMetadata}
    NextToken: string
    Segments: {SegmentDetection}
    SelectedSegmentTypes: {SegmentTypeInfo}
    JobId: string
    Video: Video
    JobTag: string
end

local record GetTextDetectionInput
    JobId: string
    MaxResults: number
    NextToken: string
end

local record GetTextDetectionOutput
    JobStatus: string
    StatusMessage: string
    VideoMetadata: VideoMetadata
    TextDetections: {TextDetectionResult}
    NextToken: string
    TextModelVersion: string
    JobId: string
    Video: Video
    JobTag: string
end

local record IndexFacesInput
    CollectionId: string
    Image: Image
    ExternalImageId: string
    DetectionAttributes: {string}
    MaxFaces: number
    QualityFilter: string
end

local record IndexFacesOutput
    FaceRecords: {FaceRecord}
    OrientationCorrection: string
    FaceModelVersion: string
    UnindexedFaces: {UnindexedFace}
end

local record ListCollectionsInput
    NextToken: string
    MaxResults: number
end

local record ListCollectionsOutput
    CollectionIds: {string}
    NextToken: string
    FaceModelVersions: {string}
end

local record ListDatasetEntriesInput
    DatasetArn: string
    ContainsLabels: {string}
    Labeled: boolean
    SourceRefContains: string
    HasErrors: boolean
    NextToken: string
    MaxResults: number
end

local record ListDatasetEntriesOutput
    DatasetEntries: {string}
    NextToken: string
end

local record ListDatasetLabelsInput
    DatasetArn: string
    NextToken: string
    MaxResults: number
end

local record ListDatasetLabelsOutput
    DatasetLabelDescriptions: {DatasetLabelDescription}
    NextToken: string
end

local record ListFacesInput
    CollectionId: string
    NextToken: string
    MaxResults: number
    UserId: string
    FaceIds: {string}
end

local record ListFacesOutput
    Faces: {Face}
    NextToken: string
    FaceModelVersion: string
end

local record ListMediaAnalysisJobsInput
    NextToken: string
    MaxResults: number
end

local record ListMediaAnalysisJobsOutput
    NextToken: string
    MediaAnalysisJobs: {MediaAnalysisJobDescription}
end

local record ListProjectPoliciesInput
    ProjectArn: string
    NextToken: string
    MaxResults: number
end

local record ListProjectPoliciesOutput
    ProjectPolicies: {ProjectPolicy}
    NextToken: string
end

local record ListStreamProcessorsInput
    NextToken: string
    MaxResults: number
end

local record ListStreamProcessorsOutput
    NextToken: string
    StreamProcessors: {StreamProcessor}
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record ListUsersInput
    CollectionId: string
    MaxResults: number
    NextToken: string
end

local record ListUsersOutput
    Users: {User}
    NextToken: string
end

local record PutProjectPolicyInput
    ProjectArn: string
    PolicyName: string
    PolicyRevisionId: string
    PolicyDocument: string
end

local record PutProjectPolicyOutput
    PolicyRevisionId: string
end

local record RecognizeCelebritiesInput
    Image: Image
end

local record RecognizeCelebritiesOutput
    CelebrityFaces: {Celebrity}
    UnrecognizedFaces: {ComparedFace}
    OrientationCorrection: string
end

local record SearchFacesInput
    CollectionId: string
    FaceId: string
    MaxFaces: number
    FaceMatchThreshold: number
end

local record SearchFacesOutput
    SearchedFaceId: string
    FaceMatches: {FaceMatch}
    FaceModelVersion: string
end

local record SearchFacesByImageInput
    CollectionId: string
    Image: Image
    MaxFaces: number
    FaceMatchThreshold: number
    QualityFilter: string
end

local record SearchFacesByImageOutput
    SearchedFaceBoundingBox: BoundingBox
    SearchedFaceConfidence: number
    FaceMatches: {FaceMatch}
    FaceModelVersion: string
end

local record SearchUsersInput
    CollectionId: string
    UserId: string
    FaceId: string
    UserMatchThreshold: number
    MaxUsers: number
end

local record SearchUsersOutput
    UserMatches: {UserMatch}
    FaceModelVersion: string
    SearchedFace: SearchedFace
    SearchedUser: SearchedUser
end

local record SearchUsersByImageInput
    CollectionId: string
    Image: Image
    UserMatchThreshold: number
    MaxUsers: number
    QualityFilter: string
end

local record SearchUsersByImageOutput
    UserMatches: {UserMatch}
    FaceModelVersion: string
    SearchedFace: SearchedFaceDetails
    UnsearchedFaces: {UnsearchedFace}
end

local record StartCelebrityRecognitionInput
    Video: Video
    ClientRequestToken: string
    NotificationChannel: NotificationChannel
    JobTag: string
end

local record StartCelebrityRecognitionOutput
    JobId: string
end

local record StartContentModerationInput
    Video: Video
    MinConfidence: number
    ClientRequestToken: string
    NotificationChannel: NotificationChannel
    JobTag: string
end

local record StartContentModerationOutput
    JobId: string
end

local record StartFaceDetectionInput
    Video: Video
    ClientRequestToken: string
    NotificationChannel: NotificationChannel
    FaceAttributes: string
    JobTag: string
end

local record StartFaceDetectionOutput
    JobId: string
end

local record StartFaceSearchInput
    Video: Video
    ClientRequestToken: string
    FaceMatchThreshold: number
    CollectionId: string
    NotificationChannel: NotificationChannel
    JobTag: string
end

local record StartFaceSearchOutput
    JobId: string
end

local record StartLabelDetectionInput
    Video: Video
    ClientRequestToken: string
    MinConfidence: number
    NotificationChannel: NotificationChannel
    JobTag: string
    Features: {string}
    Settings: LabelDetectionSettings
end

local record StartLabelDetectionOutput
    JobId: string
end

local record StartMediaAnalysisJobInput
    ClientRequestToken: string
    JobName: string
    OperationsConfig: MediaAnalysisOperationsConfig
    Input: MediaAnalysisInput
    OutputConfig: MediaAnalysisOutputConfig
    KmsKeyId: string
end

local record StartMediaAnalysisJobOutput
    JobId: string
end

local record StartPersonTrackingInput
    Video: Video
    ClientRequestToken: string
    NotificationChannel: NotificationChannel
    JobTag: string
end

local record StartPersonTrackingOutput
    JobId: string
end

local record StartProjectVersionInput
    ProjectVersionArn: string
    MinInferenceUnits: number
    MaxInferenceUnits: number
end

local record StartProjectVersionOutput
    Status: string
end

local record StartSegmentDetectionInput
    Video: Video
    ClientRequestToken: string
    NotificationChannel: NotificationChannel
    JobTag: string
    Filters: StartSegmentDetectionFilters
    SegmentTypes: {string}
end

local record StartSegmentDetectionOutput
    JobId: string
end

local record StartStreamProcessorInput
    Name: string
    StartSelector: StreamProcessingStartSelector
    StopSelector: StreamProcessingStopSelector
end

local record StartStreamProcessorOutput
    SessionId: string
end

local record StartTextDetectionInput
    Video: Video
    ClientRequestToken: string
    NotificationChannel: NotificationChannel
    JobTag: string
    Filters: StartTextDetectionFilters
end

local record StartTextDetectionOutput
    JobId: string
end

local record StopProjectVersionInput
    ProjectVersionArn: string
end

local record StopProjectVersionOutput
    Status: string
end

local record StopStreamProcessorInput
    Name: string
end

local record StopStreamProcessorOutput
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

local record UpdateDatasetEntriesInput
    DatasetArn: string
    Changes: DatasetChanges
end

local record UpdateDatasetEntriesOutput
end

local record UpdateStreamProcessorInput
    Name: string
    SettingsForUpdate: StreamProcessorSettingsForUpdate
    RegionsOfInterestForUpdate: {RegionOfInterest}
    DataSharingPreferenceForUpdate: StreamProcessorDataSharingPreference
    ParametersToDelete: {string}
end

local record UpdateStreamProcessorOutput
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record ConflictException
    Message: string
    Code: string
    Logref: string
end

local record IdempotentParameterMismatchException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ServiceQuotaExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record ImageTooLargeException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidImageFormatException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record LimitExceededException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceInUseException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ServiceQuotaExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceAlreadyExistsException
    Message: string
    Code: string
    Logref: string
end

local record ServiceQuotaExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
    Logref: string
end

local record LimitExceededException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceAlreadyExistsException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record LimitExceededException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceInUseException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record LimitExceededException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceInUseException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ServiceQuotaExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record LimitExceededException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceInUseException
    Message: string
    Code: string
    Logref: string
end

local record ServiceQuotaExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record ConflictException
    Message: string
    Code: string
    Logref: string
end

local record IdempotentParameterMismatchException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ServiceQuotaExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record LimitExceededException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceInUseException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceInUseException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record InvalidPolicyRevisionIdException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceInUseException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceInUseException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record ConflictException
    Message: string
    Code: string
    Logref: string
end

local record IdempotentParameterMismatchException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidPaginationTokenException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidPaginationTokenException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record ImageTooLargeException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidImageFormatException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
    Logref: string
end

local record LimitExceededException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotReadyException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record ImageTooLargeException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidImageFormatException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record ImageTooLargeException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidImageFormatException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record HumanLoopQuotaExceededException
    ResourceType: string
    QuotaCode: string
    ServiceCode: string
    Message: string
    Code: string
    Logref: string
end

local record ImageTooLargeException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidImageFormatException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotReadyException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record ImageTooLargeException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidImageFormatException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record ImageTooLargeException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidImageFormatException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record ConflictException
    Message: string
    Code: string
    Logref: string
end

local record IdempotentParameterMismatchException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotReadyException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidPaginationTokenException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidPaginationTokenException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidPaginationTokenException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record SessionNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidPaginationTokenException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidPaginationTokenException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidPaginationTokenException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidPaginationTokenException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidPaginationTokenException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record ImageTooLargeException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidImageFormatException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ServiceQuotaExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidPaginationTokenException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidPaginationTokenException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceInUseException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotReadyException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidPaginationTokenException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceInUseException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotReadyException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidPaginationTokenException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidPaginationTokenException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidPaginationTokenException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidPaginationTokenException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidPaginationTokenException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record InvalidPolicyRevisionIdException
    Message: string
    Code: string
    Logref: string
end

local record LimitExceededException
    Message: string
    Code: string
    Logref: string
end

local record MalformedPolicyDocumentException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceAlreadyExistsException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ServiceQuotaExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record ImageTooLargeException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidImageFormatException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record ImageTooLargeException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidImageFormatException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record ImageTooLargeException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidImageFormatException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record IdempotentParameterMismatchException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
    Logref: string
end

local record LimitExceededException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record VideoTooLargeException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record IdempotentParameterMismatchException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
    Logref: string
end

local record LimitExceededException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record VideoTooLargeException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record IdempotentParameterMismatchException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
    Logref: string
end

local record LimitExceededException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record VideoTooLargeException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record IdempotentParameterMismatchException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
    Logref: string
end

local record LimitExceededException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record VideoTooLargeException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record IdempotentParameterMismatchException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
    Logref: string
end

local record LimitExceededException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record VideoTooLargeException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record IdempotentParameterMismatchException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidManifestException
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
    Logref: string
end

local record LimitExceededException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotReadyException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record IdempotentParameterMismatchException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
    Logref: string
end

local record LimitExceededException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record VideoTooLargeException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record LimitExceededException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceInUseException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record IdempotentParameterMismatchException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
    Logref: string
end

local record LimitExceededException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record VideoTooLargeException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceInUseException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record IdempotentParameterMismatchException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
    Logref: string
end

local record LimitExceededException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record VideoTooLargeException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceInUseException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceInUseException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ServiceQuotaExceededException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record LimitExceededException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceInUseException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local record AccessDeniedException
    Message: string
    Code: string
    Logref: string
end

local record InternalServerError
    Message: string
    Code: string
    Logref: string
end

local record InvalidParameterException
    Message: string
    Code: string
    Logref: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
    Logref: string
end

local record ResourceInUseException
    Message: string
    Code: string
    Logref: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
    Logref: string
end

local record ThrottlingException
    Message: string
    Code: string
    Logref: string
end

local type ContentModerationSortBy = "NAME" | "TIMESTAMP"

local type CelebrityRecognitionSortBy = "ID" | "TIMESTAMP"

local type UserStatus = "ACTIVE" | "UPDATING" | "CREATING" | "CREATED"

local type QualityFilter = "NONE" | "AUTO" | "LOW" | "MEDIUM" | "HIGH"

local type StreamProcessorStatus = "STOPPED" | "STARTING" | "RUNNING" | "FAILED" | "STOPPING" | "UPDATING"

local type FaceAttributes = "DEFAULT" | "ALL"

local type VideoJobStatus = "IN_PROGRESS" | "SUCCEEDED" | "FAILED"

local type DatasetType = "TRAIN" | "TEST"

local type CustomizationFeature = "CONTENT_MODERATION" | "CUSTOM_LABELS"

local type ProjectStatus = "CREATING" | "CREATED" | "DELETING"

local type MediaAnalysisJobStatus = "CREATED" | "QUEUED" | "IN_PROGRESS" | "SUCCEEDED" | "FAILED"

local type FaceSearchSortBy = "INDEX" | "TIMESTAMP"

local type ProjectVersionStatus = "TRAINING_IN_PROGRESS" | "TRAINING_COMPLETED" | "TRAINING_FAILED" | "STARTING" | "RUNNING" | "FAILED" | "STOPPING" | "STOPPED" | "DELETING" | "COPYING_IN_PROGRESS" | "COPYING_COMPLETED" | "COPYING_FAILED" | "DEPRECATED" | "EXPIRED"

local type OrientationCorrection = "ROTATE_0" | "ROTATE_90" | "ROTATE_180" | "ROTATE_270"

local type ContentModerationAggregateBy = "TIMESTAMPS" | "SEGMENTS"

local type LabelDetectionSortBy = "NAME" | "TIMESTAMP"

local type LivenessSessionStatus = "CREATED" | "IN_PROGRESS" | "SUCCEEDED" | "FAILED" | "EXPIRED"

local type LabelDetectionAggregateBy = "TIMESTAMPS" | "SEGMENTS"

local type PersonTrackingSortBy = "INDEX" | "TIMESTAMP"

local type ProjectAutoUpdate = "ENABLED" | "DISABLED"

local record M
    AssociateFacesInput: AssociateFacesInput
    AssociateFacesOutput: AssociateFacesOutput
    CompareFacesInput: CompareFacesInput
    CompareFacesOutput: CompareFacesOutput
    CopyProjectVersionInput: CopyProjectVersionInput
    CopyProjectVersionOutput: CopyProjectVersionOutput
    CreateCollectionInput: CreateCollectionInput
    CreateCollectionOutput: CreateCollectionOutput
    CreateDatasetInput: CreateDatasetInput
    CreateDatasetOutput: CreateDatasetOutput
    CreateFaceLivenessSessionInput: CreateFaceLivenessSessionInput
    CreateFaceLivenessSessionOutput: CreateFaceLivenessSessionOutput
    CreateProjectInput: CreateProjectInput
    CreateProjectOutput: CreateProjectOutput
    CreateProjectVersionInput: CreateProjectVersionInput
    CreateProjectVersionOutput: CreateProjectVersionOutput
    CreateStreamProcessorInput: CreateStreamProcessorInput
    CreateStreamProcessorOutput: CreateStreamProcessorOutput
    CreateUserInput: CreateUserInput
    CreateUserOutput: CreateUserOutput
    DeleteCollectionInput: DeleteCollectionInput
    DeleteCollectionOutput: DeleteCollectionOutput
    DeleteDatasetInput: DeleteDatasetInput
    DeleteDatasetOutput: DeleteDatasetOutput
    DeleteFacesInput: DeleteFacesInput
    DeleteFacesOutput: DeleteFacesOutput
    DeleteProjectInput: DeleteProjectInput
    DeleteProjectOutput: DeleteProjectOutput
    DeleteProjectPolicyInput: DeleteProjectPolicyInput
    DeleteProjectPolicyOutput: DeleteProjectPolicyOutput
    DeleteProjectVersionInput: DeleteProjectVersionInput
    DeleteProjectVersionOutput: DeleteProjectVersionOutput
    DeleteStreamProcessorInput: DeleteStreamProcessorInput
    DeleteStreamProcessorOutput: DeleteStreamProcessorOutput
    DeleteUserInput: DeleteUserInput
    DeleteUserOutput: DeleteUserOutput
    DescribeCollectionInput: DescribeCollectionInput
    DescribeCollectionOutput: DescribeCollectionOutput
    DescribeDatasetInput: DescribeDatasetInput
    DescribeDatasetOutput: DescribeDatasetOutput
    DescribeProjectsInput: DescribeProjectsInput
    DescribeProjectsOutput: DescribeProjectsOutput
    DescribeProjectVersionsInput: DescribeProjectVersionsInput
    DescribeProjectVersionsOutput: DescribeProjectVersionsOutput
    DescribeStreamProcessorInput: DescribeStreamProcessorInput
    DescribeStreamProcessorOutput: DescribeStreamProcessorOutput
    DetectCustomLabelsInput: DetectCustomLabelsInput
    DetectCustomLabelsOutput: DetectCustomLabelsOutput
    DetectFacesInput: DetectFacesInput
    DetectFacesOutput: DetectFacesOutput
    DetectLabelsInput: DetectLabelsInput
    DetectLabelsOutput: DetectLabelsOutput
    DetectModerationLabelsInput: DetectModerationLabelsInput
    DetectModerationLabelsOutput: DetectModerationLabelsOutput
    DetectProtectiveEquipmentInput: DetectProtectiveEquipmentInput
    DetectProtectiveEquipmentOutput: DetectProtectiveEquipmentOutput
    DetectTextInput: DetectTextInput
    DetectTextOutput: DetectTextOutput
    DisassociateFacesInput: DisassociateFacesInput
    DisassociateFacesOutput: DisassociateFacesOutput
    DistributeDatasetEntriesInput: DistributeDatasetEntriesInput
    DistributeDatasetEntriesOutput: DistributeDatasetEntriesOutput
    GetCelebrityInfoInput: GetCelebrityInfoInput
    GetCelebrityInfoOutput: GetCelebrityInfoOutput
    GetCelebrityRecognitionInput: GetCelebrityRecognitionInput
    GetCelebrityRecognitionOutput: GetCelebrityRecognitionOutput
    GetContentModerationInput: GetContentModerationInput
    GetContentModerationOutput: GetContentModerationOutput
    GetFaceDetectionInput: GetFaceDetectionInput
    GetFaceDetectionOutput: GetFaceDetectionOutput
    GetFaceLivenessSessionResultsInput: GetFaceLivenessSessionResultsInput
    GetFaceLivenessSessionResultsOutput: GetFaceLivenessSessionResultsOutput
    GetFaceSearchInput: GetFaceSearchInput
    GetFaceSearchOutput: GetFaceSearchOutput
    GetLabelDetectionInput: GetLabelDetectionInput
    GetLabelDetectionOutput: GetLabelDetectionOutput
    GetMediaAnalysisJobInput: GetMediaAnalysisJobInput
    GetMediaAnalysisJobOutput: GetMediaAnalysisJobOutput
    GetPersonTrackingInput: GetPersonTrackingInput
    GetPersonTrackingOutput: GetPersonTrackingOutput
    GetSegmentDetectionInput: GetSegmentDetectionInput
    GetSegmentDetectionOutput: GetSegmentDetectionOutput
    GetTextDetectionInput: GetTextDetectionInput
    GetTextDetectionOutput: GetTextDetectionOutput
    IndexFacesInput: IndexFacesInput
    IndexFacesOutput: IndexFacesOutput
    ListCollectionsInput: ListCollectionsInput
    ListCollectionsOutput: ListCollectionsOutput
    ListDatasetEntriesInput: ListDatasetEntriesInput
    ListDatasetEntriesOutput: ListDatasetEntriesOutput
    ListDatasetLabelsInput: ListDatasetLabelsInput
    ListDatasetLabelsOutput: ListDatasetLabelsOutput
    ListFacesInput: ListFacesInput
    ListFacesOutput: ListFacesOutput
    ListMediaAnalysisJobsInput: ListMediaAnalysisJobsInput
    ListMediaAnalysisJobsOutput: ListMediaAnalysisJobsOutput
    ListProjectPoliciesInput: ListProjectPoliciesInput
    ListProjectPoliciesOutput: ListProjectPoliciesOutput
    ListStreamProcessorsInput: ListStreamProcessorsInput
    ListStreamProcessorsOutput: ListStreamProcessorsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListUsersInput: ListUsersInput
    ListUsersOutput: ListUsersOutput
    PutProjectPolicyInput: PutProjectPolicyInput
    PutProjectPolicyOutput: PutProjectPolicyOutput
    RecognizeCelebritiesInput: RecognizeCelebritiesInput
    RecognizeCelebritiesOutput: RecognizeCelebritiesOutput
    SearchFacesInput: SearchFacesInput
    SearchFacesOutput: SearchFacesOutput
    SearchFacesByImageInput: SearchFacesByImageInput
    SearchFacesByImageOutput: SearchFacesByImageOutput
    SearchUsersInput: SearchUsersInput
    SearchUsersOutput: SearchUsersOutput
    SearchUsersByImageInput: SearchUsersByImageInput
    SearchUsersByImageOutput: SearchUsersByImageOutput
    StartCelebrityRecognitionInput: StartCelebrityRecognitionInput
    StartCelebrityRecognitionOutput: StartCelebrityRecognitionOutput
    StartContentModerationInput: StartContentModerationInput
    StartContentModerationOutput: StartContentModerationOutput
    StartFaceDetectionInput: StartFaceDetectionInput
    StartFaceDetectionOutput: StartFaceDetectionOutput
    StartFaceSearchInput: StartFaceSearchInput
    StartFaceSearchOutput: StartFaceSearchOutput
    StartLabelDetectionInput: StartLabelDetectionInput
    StartLabelDetectionOutput: StartLabelDetectionOutput
    StartMediaAnalysisJobInput: StartMediaAnalysisJobInput
    StartMediaAnalysisJobOutput: StartMediaAnalysisJobOutput
    StartPersonTrackingInput: StartPersonTrackingInput
    StartPersonTrackingOutput: StartPersonTrackingOutput
    StartProjectVersionInput: StartProjectVersionInput
    StartProjectVersionOutput: StartProjectVersionOutput
    StartSegmentDetectionInput: StartSegmentDetectionInput
    StartSegmentDetectionOutput: StartSegmentDetectionOutput
    StartStreamProcessorInput: StartStreamProcessorInput
    StartStreamProcessorOutput: StartStreamProcessorOutput
    StartTextDetectionInput: StartTextDetectionInput
    StartTextDetectionOutput: StartTextDetectionOutput
    StopProjectVersionInput: StopProjectVersionInput
    StopProjectVersionOutput: StopProjectVersionOutput
    StopStreamProcessorInput: StopStreamProcessorInput
    StopStreamProcessorOutput: StopStreamProcessorOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateDatasetEntriesInput: UpdateDatasetEntriesInput
    UpdateDatasetEntriesOutput: UpdateDatasetEntriesOutput
    UpdateStreamProcessorInput: UpdateStreamProcessorInput
    UpdateStreamProcessorOutput: UpdateStreamProcessorOutput
end

return M
