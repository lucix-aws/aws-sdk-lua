local record GetMedicalScribeStreamInput
    SessionId: string
end

local record GetMedicalScribeStreamOutput
    MedicalScribeStreamDetails: MedicalScribeStreamDetails
end

local record StartCallAnalyticsStreamTranscriptionInput
    LanguageCode: string
    MediaSampleRateHertz: number
    MediaEncoding: string
    VocabularyName: string
    SessionId: string
    AudioStream: AudioStream
    VocabularyFilterName: string
    VocabularyFilterMethod: string
    LanguageModelName: string
    IdentifyLanguage: boolean
    LanguageOptions: string
    PreferredLanguage: string
    VocabularyNames: string
    VocabularyFilterNames: string
    EnablePartialResultsStabilization: boolean
    PartialResultsStability: string
    ContentIdentificationType: string
    ContentRedactionType: string
    PiiEntityTypes: string
end

local record StartCallAnalyticsStreamTranscriptionOutput
    RequestId: string
    LanguageCode: string
    MediaSampleRateHertz: number
    MediaEncoding: string
    VocabularyName: string
    SessionId: string
    CallAnalyticsTranscriptResultStream: CallAnalyticsTranscriptResultStream
    VocabularyFilterName: string
    VocabularyFilterMethod: string
    LanguageModelName: string
    IdentifyLanguage: boolean
    LanguageOptions: string
    PreferredLanguage: string
    VocabularyNames: string
    VocabularyFilterNames: string
    EnablePartialResultsStabilization: boolean
    PartialResultsStability: string
    ContentIdentificationType: string
    ContentRedactionType: string
    PiiEntityTypes: string
end

local record StartMedicalScribeStreamInput
    SessionId: string
    LanguageCode: string
    MediaSampleRateHertz: number
    MediaEncoding: string
    InputStream: MedicalScribeInputStream
end

local record StartMedicalScribeStreamOutput
    SessionId: string
    RequestId: string
    LanguageCode: string
    MediaSampleRateHertz: number
    MediaEncoding: string
    ResultStream: MedicalScribeResultStream
end

local record StartMedicalStreamTranscriptionInput
    LanguageCode: string
    MediaSampleRateHertz: number
    MediaEncoding: string
    VocabularyName: string
    Specialty: string
    Type: string
    ShowSpeakerLabel: boolean
    SessionId: string
    AudioStream: AudioStream
    EnableChannelIdentification: boolean
    NumberOfChannels: number
    ContentIdentificationType: string
end

local record StartMedicalStreamTranscriptionOutput
    RequestId: string
    LanguageCode: string
    MediaSampleRateHertz: number
    MediaEncoding: string
    VocabularyName: string
    Specialty: string
    Type: string
    ShowSpeakerLabel: boolean
    SessionId: string
    TranscriptResultStream: MedicalTranscriptResultStream
    EnableChannelIdentification: boolean
    NumberOfChannels: number
    ContentIdentificationType: string
end

local record StartStreamTranscriptionInput
    LanguageCode: string
    MediaSampleRateHertz: number
    MediaEncoding: string
    VocabularyName: string
    SessionId: string
    AudioStream: AudioStream
    VocabularyFilterName: string
    VocabularyFilterMethod: string
    ShowSpeakerLabel: boolean
    EnableChannelIdentification: boolean
    NumberOfChannels: number
    EnablePartialResultsStabilization: boolean
    PartialResultsStability: string
    ContentIdentificationType: string
    ContentRedactionType: string
    PiiEntityTypes: string
    LanguageModelName: string
    IdentifyLanguage: boolean
    LanguageOptions: string
    PreferredLanguage: string
    IdentifyMultipleLanguages: boolean
    VocabularyNames: string
    VocabularyFilterNames: string
    SessionResumeWindow: number
end

local record StartStreamTranscriptionOutput
    RequestId: string
    LanguageCode: string
    MediaSampleRateHertz: number
    MediaEncoding: string
    VocabularyName: string
    SessionId: string
    TranscriptResultStream: TranscriptResultStream
    VocabularyFilterName: string
    VocabularyFilterMethod: string
    ShowSpeakerLabel: boolean
    EnableChannelIdentification: boolean
    NumberOfChannels: number
    EnablePartialResultsStabilization: boolean
    PartialResultsStability: string
    ContentIdentificationType: string
    ContentRedactionType: string
    PiiEntityTypes: string
    LanguageModelName: string
    IdentifyLanguage: boolean
    LanguageOptions: string
    PreferredLanguage: string
    IdentifyMultipleLanguages: boolean
    VocabularyNames: string
    VocabularyFilterNames: string
    SessionResumeWindow: number
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

local record ResourceNotFoundException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
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

local record ServiceUnavailableException
    Message: string
end

local type MedicalScribeLanguageCode = "en-US"

local type VocabularyFilterMethod = "remove" | "mask" | "tag"

local type MediaEncoding = "pcm" | "ogg-opus" | "flac"

local type MedicalScribeMediaEncoding = "pcm" | "ogg-opus" | "flac"

local type MedicalContentIdentificationType = "PHI"

local type Type = "CONVERSATION" | "DICTATION"

local type CallAnalyticsLanguageCode = "en-US" | "en-GB" | "es-US" | "fr-CA" | "fr-FR" | "en-AU" | "it-IT" | "de-DE" | "pt-BR"

local type LanguageCode = "en-US" | "en-GB" | "es-US" | "fr-CA" | "fr-FR" | "en-AU" | "it-IT" | "de-DE" | "pt-BR" | "ja-JP" | "ko-KR" | "zh-CN" | "th-TH" | "es-ES" | "ar-SA" | "pt-PT" | "ca-ES" | "ar-AE" | "hi-IN" | "zh-HK" | "nl-NL" | "no-NO" | "sv-SE" | "pl-PL" | "fi-FI" | "zh-TW" | "en-IN" | "en-IE" | "en-NZ" | "en-AB" | "en-ZA" | "en-WL" | "de-CH" | "af-ZA" | "eu-ES" | "hr-HR" | "cs-CZ" | "da-DK" | "fa-IR" | "gl-ES" | "el-GR" | "he-IL" | "id-ID" | "lv-LV" | "ms-MY" | "ro-RO" | "ru-RU" | "sr-RS" | "sk-SK" | "so-SO" | "tl-PH" | "uk-UA" | "vi-VN" | "zu-ZA" | "am-ET" | "be-BY" | "bg-BG" | "bn-IN" | "bs-BA" | "ckb-IQ" | "ckb-IR" | "cy-WL" | "es-MX" | "et-ET" | "fa-AF" | "gu-IN" | "ht-HT" | "hu-HU" | "hy-AM" | "is-IS" | "jv-ID" | "ka-GE" | "kab-DZ" | "kk-KZ" | "km-KH" | "kn-IN" | "lg-IN" | "lt-LT" | "mk-MK" | "ml-IN" | "mr-IN" | "my-MM" | "ne-NP" | "or-IN" | "pa-IN" | "ps-AF" | "si-LK" | "sl-SI" | "sq-AL" | "su-ID" | "sw-BI" | "sw-KE" | "sw-RW" | "sw-TZ" | "sw-UG" | "ta-IN" | "te-IN" | "tr-TR" | "uz-UZ"

local type ContentRedactionType = "PII"

local type ContentIdentificationType = "PII"

local type PartialResultsStability = "high" | "medium" | "low"

local type Specialty = "PRIMARYCARE" | "CARDIOLOGY" | "NEUROLOGY" | "ONCOLOGY" | "RADIOLOGY" | "UROLOGY"

local record M
    GetMedicalScribeStreamInput: GetMedicalScribeStreamInput
    GetMedicalScribeStreamOutput: GetMedicalScribeStreamOutput
    StartCallAnalyticsStreamTranscriptionInput: StartCallAnalyticsStreamTranscriptionInput
    StartCallAnalyticsStreamTranscriptionOutput: StartCallAnalyticsStreamTranscriptionOutput
    StartMedicalScribeStreamInput: StartMedicalScribeStreamInput
    StartMedicalScribeStreamOutput: StartMedicalScribeStreamOutput
    StartMedicalStreamTranscriptionInput: StartMedicalStreamTranscriptionInput
    StartMedicalStreamTranscriptionOutput: StartMedicalStreamTranscriptionOutput
    StartStreamTranscriptionInput: StartStreamTranscriptionInput
    StartStreamTranscriptionOutput: StartStreamTranscriptionOutput
end

return M
