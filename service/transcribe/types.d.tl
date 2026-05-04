local record CreateCallAnalyticsCategoryInput
    CategoryName: string
    Rules: {Rule}
    Tags: {Tag}
    InputType: string
end

local record CreateCallAnalyticsCategoryOutput
    CategoryProperties: CategoryProperties
end

local record CreateLanguageModelInput
    LanguageCode: string
    BaseModelName: string
    ModelName: string
    InputDataConfig: InputDataConfig
    Tags: {Tag}
end

local record CreateLanguageModelOutput
    LanguageCode: string
    BaseModelName: string
    ModelName: string
    InputDataConfig: InputDataConfig
    ModelStatus: string
end

local record CreateMedicalVocabularyInput
    VocabularyName: string
    LanguageCode: string
    VocabularyFileUri: string
    Tags: {Tag}
end

local record CreateMedicalVocabularyOutput
    VocabularyName: string
    LanguageCode: string
    VocabularyState: string
    LastModifiedTime: number
    FailureReason: string
end

local record CreateVocabularyInput
    VocabularyName: string
    LanguageCode: string
    Phrases: {string}
    VocabularyFileUri: string
    Tags: {Tag}
    DataAccessRoleArn: string
end

local record CreateVocabularyOutput
    VocabularyName: string
    LanguageCode: string
    VocabularyState: string
    LastModifiedTime: number
    FailureReason: string
end

local record CreateVocabularyFilterInput
    VocabularyFilterName: string
    LanguageCode: string
    Words: {string}
    VocabularyFilterFileUri: string
    Tags: {Tag}
    DataAccessRoleArn: string
end

local record CreateVocabularyFilterOutput
    VocabularyFilterName: string
    LanguageCode: string
    LastModifiedTime: number
end

local record DeleteCallAnalyticsCategoryInput
    CategoryName: string
end

local record DeleteCallAnalyticsCategoryOutput
end

local record DeleteCallAnalyticsJobInput
    CallAnalyticsJobName: string
end

local record DeleteCallAnalyticsJobOutput
end

local record DeleteLanguageModelInput
    ModelName: string
end

local record DeleteLanguageModelOutput
end

local record DeleteMedicalScribeJobInput
    MedicalScribeJobName: string
end

local record DeleteMedicalScribeJobOutput
end

local record DeleteMedicalTranscriptionJobInput
    MedicalTranscriptionJobName: string
end

local record DeleteMedicalTranscriptionJobOutput
end

local record DeleteMedicalVocabularyInput
    VocabularyName: string
end

local record DeleteMedicalVocabularyOutput
end

local record DeleteTranscriptionJobInput
    TranscriptionJobName: string
end

local record DeleteTranscriptionJobOutput
end

local record DeleteVocabularyInput
    VocabularyName: string
end

local record DeleteVocabularyOutput
end

local record DeleteVocabularyFilterInput
    VocabularyFilterName: string
end

local record DeleteVocabularyFilterOutput
end

local record DescribeLanguageModelInput
    ModelName: string
end

local record DescribeLanguageModelOutput
    LanguageModel: LanguageModel
end

local record GetCallAnalyticsCategoryInput
    CategoryName: string
end

local record GetCallAnalyticsCategoryOutput
    CategoryProperties: CategoryProperties
end

local record GetCallAnalyticsJobInput
    CallAnalyticsJobName: string
end

local record GetCallAnalyticsJobOutput
    CallAnalyticsJob: CallAnalyticsJob
end

local record GetMedicalScribeJobInput
    MedicalScribeJobName: string
end

local record GetMedicalScribeJobOutput
    MedicalScribeJob: MedicalScribeJob
end

local record GetMedicalTranscriptionJobInput
    MedicalTranscriptionJobName: string
end

local record GetMedicalTranscriptionJobOutput
    MedicalTranscriptionJob: MedicalTranscriptionJob
end

local record GetMedicalVocabularyInput
    VocabularyName: string
end

local record GetMedicalVocabularyOutput
    VocabularyName: string
    LanguageCode: string
    VocabularyState: string
    LastModifiedTime: number
    FailureReason: string
    DownloadUri: string
end

local record GetTranscriptionJobInput
    TranscriptionJobName: string
end

local record GetTranscriptionJobOutput
    TranscriptionJob: TranscriptionJob
end

local record GetVocabularyInput
    VocabularyName: string
end

local record GetVocabularyOutput
    VocabularyName: string
    LanguageCode: string
    VocabularyState: string
    LastModifiedTime: number
    FailureReason: string
    DownloadUri: string
end

local record GetVocabularyFilterInput
    VocabularyFilterName: string
end

local record GetVocabularyFilterOutput
    VocabularyFilterName: string
    LanguageCode: string
    LastModifiedTime: number
    DownloadUri: string
end

local record ListCallAnalyticsCategoriesInput
    NextToken: string
    MaxResults: number
end

local record ListCallAnalyticsCategoriesOutput
    NextToken: string
    Categories: {CategoryProperties}
end

local record ListCallAnalyticsJobsInput
    Status: string
    JobNameContains: string
    NextToken: string
    MaxResults: number
end

local record ListCallAnalyticsJobsOutput
    Status: string
    NextToken: string
    CallAnalyticsJobSummaries: {CallAnalyticsJobSummary}
end

local record ListLanguageModelsInput
    StatusEquals: string
    NameContains: string
    NextToken: string
    MaxResults: number
end

local record ListLanguageModelsOutput
    NextToken: string
    Models: {LanguageModel}
end

local record ListMedicalScribeJobsInput
    Status: string
    JobNameContains: string
    NextToken: string
    MaxResults: number
end

local record ListMedicalScribeJobsOutput
    Status: string
    NextToken: string
    MedicalScribeJobSummaries: {MedicalScribeJobSummary}
end

local record ListMedicalTranscriptionJobsInput
    Status: string
    JobNameContains: string
    NextToken: string
    MaxResults: number
end

local record ListMedicalTranscriptionJobsOutput
    Status: string
    NextToken: string
    MedicalTranscriptionJobSummaries: {MedicalTranscriptionJobSummary}
end

local record ListMedicalVocabulariesInput
    NextToken: string
    MaxResults: number
    StateEquals: string
    NameContains: string
end

local record ListMedicalVocabulariesOutput
    Status: string
    NextToken: string
    Vocabularies: {VocabularyInfo}
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    ResourceArn: string
    Tags: {Tag}
end

local record ListTranscriptionJobsInput
    Status: string
    JobNameContains: string
    NextToken: string
    MaxResults: number
end

local record ListTranscriptionJobsOutput
    Status: string
    NextToken: string
    TranscriptionJobSummaries: {TranscriptionJobSummary}
end

local record ListVocabulariesInput
    NextToken: string
    MaxResults: number
    StateEquals: string
    NameContains: string
end

local record ListVocabulariesOutput
    Status: string
    NextToken: string
    Vocabularies: {VocabularyInfo}
end

local record ListVocabularyFiltersInput
    NextToken: string
    MaxResults: number
    NameContains: string
end

local record ListVocabularyFiltersOutput
    NextToken: string
    VocabularyFilters: {VocabularyFilterInfo}
end

local record StartCallAnalyticsJobInput
    CallAnalyticsJobName: string
    Media: Media
    OutputLocation: string
    OutputEncryptionKMSKeyId: string
    DataAccessRoleArn: string
    Settings: CallAnalyticsJobSettings
    Tags: {Tag}
    ChannelDefinitions: {ChannelDefinition}
end

local record StartCallAnalyticsJobOutput
    CallAnalyticsJob: CallAnalyticsJob
end

local record StartMedicalScribeJobInput
    MedicalScribeJobName: string
    Media: Media
    OutputBucketName: string
    OutputEncryptionKMSKeyId: string
    KMSEncryptionContext: {string : string}
    DataAccessRoleArn: string
    Settings: MedicalScribeSettings
    ChannelDefinitions: {MedicalScribeChannelDefinition}
    Tags: {Tag}
    MedicalScribeContext: MedicalScribeContext
end

local record StartMedicalScribeJobOutput
    MedicalScribeJob: MedicalScribeJob
end

local record StartMedicalTranscriptionJobInput
    MedicalTranscriptionJobName: string
    LanguageCode: string
    MediaSampleRateHertz: number
    MediaFormat: string
    Media: Media
    OutputBucketName: string
    OutputKey: string
    OutputEncryptionKMSKeyId: string
    KMSEncryptionContext: {string : string}
    Settings: MedicalTranscriptionSetting
    ContentIdentificationType: string
    Specialty: string
    Type: string
    Tags: {Tag}
end

local record StartMedicalTranscriptionJobOutput
    MedicalTranscriptionJob: MedicalTranscriptionJob
end

local record StartTranscriptionJobInput
    TranscriptionJobName: string
    LanguageCode: string
    MediaSampleRateHertz: number
    MediaFormat: string
    Media: Media
    OutputBucketName: string
    OutputKey: string
    OutputEncryptionKMSKeyId: string
    KMSEncryptionContext: {string : string}
    Settings: Settings
    ModelSettings: ModelSettings
    JobExecutionSettings: JobExecutionSettings
    ContentRedaction: ContentRedaction
    IdentifyLanguage: boolean
    IdentifyMultipleLanguages: boolean
    LanguageOptions: {string}
    Subtitles: Subtitles
    Tags: {Tag}
    LanguageIdSettings: {string : LanguageIdSettings}
    ToxicityDetection: {ToxicityDetectionSettings}
end

local record StartTranscriptionJobOutput
    TranscriptionJob: TranscriptionJob
end

local record TagResourceInput
    ResourceArn: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateCallAnalyticsCategoryInput
    CategoryName: string
    Rules: {Rule}
    InputType: string
end

local record UpdateCallAnalyticsCategoryOutput
    CategoryProperties: CategoryProperties
end

local record UpdateMedicalVocabularyInput
    VocabularyName: string
    LanguageCode: string
    VocabularyFileUri: string
end

local record UpdateMedicalVocabularyOutput
    VocabularyName: string
    LanguageCode: string
    LastModifiedTime: number
    VocabularyState: string
end

local record UpdateVocabularyInput
    VocabularyName: string
    LanguageCode: string
    Phrases: {string}
    VocabularyFileUri: string
    DataAccessRoleArn: string
end

local record UpdateVocabularyOutput
    VocabularyName: string
    LanguageCode: string
    LastModifiedTime: number
    VocabularyState: string
end

local record UpdateVocabularyFilterInput
    VocabularyFilterName: string
    Words: {string}
    VocabularyFilterFileUri: string
    DataAccessRoleArn: string
end

local record UpdateVocabularyFilterOutput
    VocabularyFilterName: string
    LanguageCode: string
    LastModifiedTime: number
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadRequestException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local record BadRequestException
    Message: string
end

local record InternalFailureException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record NotFoundException
    Message: string
end

local type VocabularyState = "PENDING" | "READY" | "FAILED"

local type Type = "CONVERSATION" | "DICTATION"

local type MedicalScribeJobStatus = "QUEUED" | "IN_PROGRESS" | "FAILED" | "COMPLETED"

local type CallAnalyticsJobStatus = "QUEUED" | "IN_PROGRESS" | "FAILED" | "COMPLETED"

local type Specialty = "PRIMARYCARE"

local type CLMLanguageCode = "en-US" | "hi-IN" | "es-US" | "en-GB" | "en-AU" | "de-DE" | "ja-JP"

local type TranscriptionJobStatus = "QUEUED" | "IN_PROGRESS" | "FAILED" | "COMPLETED"

local type InputType = "REAL_TIME" | "POST_CALL"

local type ModelStatus = "IN_PROGRESS" | "FAILED" | "COMPLETED"

local type MediaFormat = "mp3" | "mp4" | "wav" | "flac" | "ogg" | "amr" | "webm" | "m4a"

local type BaseModelName = "NarrowBand" | "WideBand"

local type MedicalContentIdentificationType = "PHI"

local type LanguageCode = "af-ZA" | "ar-AE" | "ar-SA" | "da-DK" | "de-CH" | "de-DE" | "en-AB" | "en-AU" | "en-GB" | "en-IE" | "en-IN" | "en-US" | "en-WL" | "es-ES" | "es-US" | "fa-IR" | "fr-CA" | "fr-FR" | "he-IL" | "hi-IN" | "id-ID" | "it-IT" | "ja-JP" | "ko-KR" | "ms-MY" | "nl-NL" | "pt-BR" | "pt-PT" | "ru-RU" | "ta-IN" | "te-IN" | "tr-TR" | "zh-CN" | "zh-TW" | "th-TH" | "en-ZA" | "en-NZ" | "vi-VN" | "sv-SE" | "ab-GE" | "ast-ES" | "az-AZ" | "ba-RU" | "be-BY" | "bg-BG" | "bn-IN" | "bs-BA" | "ca-ES" | "ckb-IQ" | "ckb-IR" | "cs-CZ" | "cy-WL" | "el-GR" | "et-EE" | "et-ET" | "eu-ES" | "fi-FI" | "gl-ES" | "gu-IN" | "ha-NG" | "hr-HR" | "hu-HU" | "hy-AM" | "is-IS" | "ka-GE" | "kab-DZ" | "kk-KZ" | "kn-IN" | "ky-KG" | "lg-IN" | "lt-LT" | "lv-LV" | "mhr-RU" | "mi-NZ" | "mk-MK" | "ml-IN" | "mn-MN" | "mr-IN" | "mt-MT" | "no-NO" | "or-IN" | "pa-IN" | "pl-PL" | "ps-AF" | "ro-RO" | "rw-RW" | "si-LK" | "sk-SK" | "sl-SI" | "so-SO" | "sr-RS" | "su-ID" | "sw-BI" | "sw-KE" | "sw-RW" | "sw-TZ" | "sw-UG" | "tl-PH" | "tt-RU" | "ug-CN" | "uk-UA" | "uz-UZ" | "wo-SN" | "zh-HK" | "zu-ZA"

local record M
    CreateCallAnalyticsCategoryInput: CreateCallAnalyticsCategoryInput
    CreateCallAnalyticsCategoryOutput: CreateCallAnalyticsCategoryOutput
    CreateLanguageModelInput: CreateLanguageModelInput
    CreateLanguageModelOutput: CreateLanguageModelOutput
    CreateMedicalVocabularyInput: CreateMedicalVocabularyInput
    CreateMedicalVocabularyOutput: CreateMedicalVocabularyOutput
    CreateVocabularyInput: CreateVocabularyInput
    CreateVocabularyOutput: CreateVocabularyOutput
    CreateVocabularyFilterInput: CreateVocabularyFilterInput
    CreateVocabularyFilterOutput: CreateVocabularyFilterOutput
    DeleteCallAnalyticsCategoryInput: DeleteCallAnalyticsCategoryInput
    DeleteCallAnalyticsCategoryOutput: DeleteCallAnalyticsCategoryOutput
    DeleteCallAnalyticsJobInput: DeleteCallAnalyticsJobInput
    DeleteCallAnalyticsJobOutput: DeleteCallAnalyticsJobOutput
    DeleteLanguageModelInput: DeleteLanguageModelInput
    DeleteLanguageModelOutput: DeleteLanguageModelOutput
    DeleteMedicalScribeJobInput: DeleteMedicalScribeJobInput
    DeleteMedicalScribeJobOutput: DeleteMedicalScribeJobOutput
    DeleteMedicalTranscriptionJobInput: DeleteMedicalTranscriptionJobInput
    DeleteMedicalTranscriptionJobOutput: DeleteMedicalTranscriptionJobOutput
    DeleteMedicalVocabularyInput: DeleteMedicalVocabularyInput
    DeleteMedicalVocabularyOutput: DeleteMedicalVocabularyOutput
    DeleteTranscriptionJobInput: DeleteTranscriptionJobInput
    DeleteTranscriptionJobOutput: DeleteTranscriptionJobOutput
    DeleteVocabularyInput: DeleteVocabularyInput
    DeleteVocabularyOutput: DeleteVocabularyOutput
    DeleteVocabularyFilterInput: DeleteVocabularyFilterInput
    DeleteVocabularyFilterOutput: DeleteVocabularyFilterOutput
    DescribeLanguageModelInput: DescribeLanguageModelInput
    DescribeLanguageModelOutput: DescribeLanguageModelOutput
    GetCallAnalyticsCategoryInput: GetCallAnalyticsCategoryInput
    GetCallAnalyticsCategoryOutput: GetCallAnalyticsCategoryOutput
    GetCallAnalyticsJobInput: GetCallAnalyticsJobInput
    GetCallAnalyticsJobOutput: GetCallAnalyticsJobOutput
    GetMedicalScribeJobInput: GetMedicalScribeJobInput
    GetMedicalScribeJobOutput: GetMedicalScribeJobOutput
    GetMedicalTranscriptionJobInput: GetMedicalTranscriptionJobInput
    GetMedicalTranscriptionJobOutput: GetMedicalTranscriptionJobOutput
    GetMedicalVocabularyInput: GetMedicalVocabularyInput
    GetMedicalVocabularyOutput: GetMedicalVocabularyOutput
    GetTranscriptionJobInput: GetTranscriptionJobInput
    GetTranscriptionJobOutput: GetTranscriptionJobOutput
    GetVocabularyInput: GetVocabularyInput
    GetVocabularyOutput: GetVocabularyOutput
    GetVocabularyFilterInput: GetVocabularyFilterInput
    GetVocabularyFilterOutput: GetVocabularyFilterOutput
    ListCallAnalyticsCategoriesInput: ListCallAnalyticsCategoriesInput
    ListCallAnalyticsCategoriesOutput: ListCallAnalyticsCategoriesOutput
    ListCallAnalyticsJobsInput: ListCallAnalyticsJobsInput
    ListCallAnalyticsJobsOutput: ListCallAnalyticsJobsOutput
    ListLanguageModelsInput: ListLanguageModelsInput
    ListLanguageModelsOutput: ListLanguageModelsOutput
    ListMedicalScribeJobsInput: ListMedicalScribeJobsInput
    ListMedicalScribeJobsOutput: ListMedicalScribeJobsOutput
    ListMedicalTranscriptionJobsInput: ListMedicalTranscriptionJobsInput
    ListMedicalTranscriptionJobsOutput: ListMedicalTranscriptionJobsOutput
    ListMedicalVocabulariesInput: ListMedicalVocabulariesInput
    ListMedicalVocabulariesOutput: ListMedicalVocabulariesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTranscriptionJobsInput: ListTranscriptionJobsInput
    ListTranscriptionJobsOutput: ListTranscriptionJobsOutput
    ListVocabulariesInput: ListVocabulariesInput
    ListVocabulariesOutput: ListVocabulariesOutput
    ListVocabularyFiltersInput: ListVocabularyFiltersInput
    ListVocabularyFiltersOutput: ListVocabularyFiltersOutput
    StartCallAnalyticsJobInput: StartCallAnalyticsJobInput
    StartCallAnalyticsJobOutput: StartCallAnalyticsJobOutput
    StartMedicalScribeJobInput: StartMedicalScribeJobInput
    StartMedicalScribeJobOutput: StartMedicalScribeJobOutput
    StartMedicalTranscriptionJobInput: StartMedicalTranscriptionJobInput
    StartMedicalTranscriptionJobOutput: StartMedicalTranscriptionJobOutput
    StartTranscriptionJobInput: StartTranscriptionJobInput
    StartTranscriptionJobOutput: StartTranscriptionJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateCallAnalyticsCategoryInput: UpdateCallAnalyticsCategoryInput
    UpdateCallAnalyticsCategoryOutput: UpdateCallAnalyticsCategoryOutput
    UpdateMedicalVocabularyInput: UpdateMedicalVocabularyInput
    UpdateMedicalVocabularyOutput: UpdateMedicalVocabularyOutput
    UpdateVocabularyInput: UpdateVocabularyInput
    UpdateVocabularyOutput: UpdateVocabularyOutput
    UpdateVocabularyFilterInput: UpdateVocabularyFilterInput
    UpdateVocabularyFilterOutput: UpdateVocabularyFilterOutput
end

return M
