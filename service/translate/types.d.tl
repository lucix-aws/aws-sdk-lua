local record CreateParallelDataInput
    Name: string
    Description: string
    ParallelDataConfig: ParallelDataConfig
    EncryptionKey: EncryptionKey
    ClientToken: string
    Tags: {Tag}
end

local record CreateParallelDataOutput
    Name: string
    Status: string
end

local record DeleteParallelDataInput
    Name: string
end

local record DeleteParallelDataOutput
    Name: string
    Status: string
end

local record DeleteTerminologyInput
    Name: string
end

local record DeleteTerminologyOutput
end

local record DescribeTextTranslationJobInput
    JobId: string
end

local record DescribeTextTranslationJobOutput
    TextTranslationJobProperties: TextTranslationJobProperties
end

local record GetParallelDataInput
    Name: string
end

local record GetParallelDataOutput
    ParallelDataProperties: ParallelDataProperties
    DataLocation: ParallelDataDataLocation
    AuxiliaryDataLocation: ParallelDataDataLocation
    LatestUpdateAttemptAuxiliaryDataLocation: ParallelDataDataLocation
end

local record GetTerminologyInput
    Name: string
    TerminologyDataFormat: string
end

local record GetTerminologyOutput
    TerminologyProperties: TerminologyProperties
    TerminologyDataLocation: TerminologyDataLocation
    AuxiliaryDataLocation: TerminologyDataLocation
end

local record ImportTerminologyInput
    Name: string
    MergeStrategy: string
    Description: string
    TerminologyData: TerminologyData
    EncryptionKey: EncryptionKey
    Tags: {Tag}
end

local record ImportTerminologyOutput
    TerminologyProperties: TerminologyProperties
    AuxiliaryDataLocation: TerminologyDataLocation
end

local record ListLanguagesInput
    DisplayLanguageCode: string
    NextToken: string
    MaxResults: number
end

local record ListLanguagesOutput
    Languages: {Language}
    DisplayLanguageCode: string
    NextToken: string
end

local record ListParallelDataInput
    NextToken: string
    MaxResults: number
end

local record ListParallelDataOutput
    ParallelDataPropertiesList: {ParallelDataProperties}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record ListTerminologiesInput
    NextToken: string
    MaxResults: number
end

local record ListTerminologiesOutput
    TerminologyPropertiesList: {TerminologyProperties}
    NextToken: string
end

local record ListTextTranslationJobsInput
    Filter: TextTranslationJobFilter
    NextToken: string
    MaxResults: number
end

local record ListTextTranslationJobsOutput
    TextTranslationJobPropertiesList: {TextTranslationJobProperties}
    NextToken: string
end

local record StartTextTranslationJobInput
    JobName: string
    InputDataConfig: InputDataConfig
    OutputDataConfig: OutputDataConfig
    DataAccessRoleArn: string
    SourceLanguageCode: string
    TargetLanguageCodes: {string}
    TerminologyNames: {string}
    ParallelDataNames: {string}
    ClientToken: string
    Settings: TranslationSettings
end

local record StartTextTranslationJobOutput
    JobId: string
    JobStatus: string
end

local record StopTextTranslationJobInput
    JobId: string
end

local record StopTextTranslationJobOutput
    JobId: string
    JobStatus: string
end

local record TagResourceInput
    ResourceArn: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record TranslateDocumentInput
    Document: Document
    TerminologyNames: {string}
    SourceLanguageCode: string
    TargetLanguageCode: string
    Settings: TranslationSettings
end

local record TranslateDocumentOutput
    TranslatedDocument: TranslatedDocument
    SourceLanguageCode: string
    TargetLanguageCode: string
    AppliedTerminologies: {AppliedTerminology}
    AppliedSettings: TranslationSettings
end

local record TranslateTextInput
    Text: string
    TerminologyNames: {string}
    SourceLanguageCode: string
    TargetLanguageCode: string
    Settings: TranslationSettings
end

local record TranslateTextOutput
    TranslatedText: string
    SourceLanguageCode: string
    TargetLanguageCode: string
    AppliedTerminologies: {AppliedTerminology}
    AppliedSettings: TranslationSettings
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateParallelDataInput
    Name: string
    Description: string
    ParallelDataConfig: ParallelDataConfig
    ClientToken: string
end

local record UpdateParallelDataOutput
    Name: string
    Status: string
    LatestUpdateAttemptStatus: string
    LatestUpdateAttemptAt: number
end

local record ConcurrentModificationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record TooManyTagsException
    message: string
    ResourceArn: string
end

local record ConcurrentModificationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record TooManyTagsException
    message: string
    ResourceArn: string
end

local record InternalServerException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnsupportedDisplayLanguageCodeException
    Message: string
    DisplayLanguageCode: string
end

local record InternalServerException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidFilterException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnsupportedLanguagePairException
    Message: string
    SourceLanguageCode: string
    TargetLanguageCode: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyTagsException
    message: string
    ResourceArn: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnsupportedLanguagePairException
    Message: string
    SourceLanguageCode: string
    TargetLanguageCode: string
end

local record DetectedLanguageLowConfidenceException
    Message: string
    DetectedLanguageCode: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TextSizeLimitExceededException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnsupportedLanguagePairException
    Message: string
    SourceLanguageCode: string
    TargetLanguageCode: string
end

local record ConcurrentModificationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidParameterValueException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local type MergeStrategy = "OVERWRITE"

local type JobStatus = "SUBMITTED" | "IN_PROGRESS" | "COMPLETED" | "COMPLETED_WITH_ERROR" | "FAILED" | "STOP_REQUESTED" | "STOPPED"

local type DisplayLanguageCode = "de" | "en" | "es" | "fr" | "it" | "ja" | "ko" | "pt" | "zh" | "zh-TW"

local type ParallelDataStatus = "CREATING" | "UPDATING" | "ACTIVE" | "DELETING" | "FAILED"

local type TerminologyDataFormat = "CSV" | "TMX" | "TSV"

local record M
    CreateParallelDataInput: CreateParallelDataInput
    CreateParallelDataOutput: CreateParallelDataOutput
    DeleteParallelDataInput: DeleteParallelDataInput
    DeleteParallelDataOutput: DeleteParallelDataOutput
    DeleteTerminologyInput: DeleteTerminologyInput
    DeleteTerminologyOutput: DeleteTerminologyOutput
    DescribeTextTranslationJobInput: DescribeTextTranslationJobInput
    DescribeTextTranslationJobOutput: DescribeTextTranslationJobOutput
    GetParallelDataInput: GetParallelDataInput
    GetParallelDataOutput: GetParallelDataOutput
    GetTerminologyInput: GetTerminologyInput
    GetTerminologyOutput: GetTerminologyOutput
    ImportTerminologyInput: ImportTerminologyInput
    ImportTerminologyOutput: ImportTerminologyOutput
    ListLanguagesInput: ListLanguagesInput
    ListLanguagesOutput: ListLanguagesOutput
    ListParallelDataInput: ListParallelDataInput
    ListParallelDataOutput: ListParallelDataOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTerminologiesInput: ListTerminologiesInput
    ListTerminologiesOutput: ListTerminologiesOutput
    ListTextTranslationJobsInput: ListTextTranslationJobsInput
    ListTextTranslationJobsOutput: ListTextTranslationJobsOutput
    StartTextTranslationJobInput: StartTextTranslationJobInput
    StartTextTranslationJobOutput: StartTextTranslationJobOutput
    StopTextTranslationJobInput: StopTextTranslationJobInput
    StopTextTranslationJobOutput: StopTextTranslationJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TranslateDocumentInput: TranslateDocumentInput
    TranslateDocumentOutput: TranslateDocumentOutput
    TranslateTextInput: TranslateTextInput
    TranslateTextOutput: TranslateTextOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateParallelDataInput: UpdateParallelDataInput
    UpdateParallelDataOutput: UpdateParallelDataOutput
end

return M
