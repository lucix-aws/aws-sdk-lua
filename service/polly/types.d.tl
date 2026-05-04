local record DeleteLexiconInput
    Name: string
end

local record DeleteLexiconOutput
end

local record DescribeVoicesInput
    Engine: string
    LanguageCode: string
    IncludeAdditionalLanguageCodes: boolean
    NextToken: string
end

local record DescribeVoicesOutput
    Voices: {Voice}
    NextToken: string
end

local record GetLexiconInput
    Name: string
end

local record GetLexiconOutput
    Lexicon: Lexicon
    LexiconAttributes: LexiconAttributes
end

local record GetSpeechSynthesisTaskInput
    TaskId: string
end

local record GetSpeechSynthesisTaskOutput
    SynthesisTask: SynthesisTask
end

local record ListLexiconsInput
    NextToken: string
end

local record ListLexiconsOutput
    Lexicons: {LexiconDescription}
    NextToken: string
end

local record ListSpeechSynthesisTasksInput
    MaxResults: number
    NextToken: string
    Status: string
end

local record ListSpeechSynthesisTasksOutput
    NextToken: string
    SynthesisTasks: {SynthesisTask}
end

local record PutLexiconInput
    Name: string
    Content: string
end

local record PutLexiconOutput
end

local record StartSpeechSynthesisStreamInput
    Engine: string
    LanguageCode: string
    LexiconNames: {string}
    OutputFormat: string
    SampleRate: string
    VoiceId: string
    ActionStream: StartSpeechSynthesisStreamActionStream
end

local record StartSpeechSynthesisStreamOutput
    EventStream: StartSpeechSynthesisStreamEventStream
end

local record StartSpeechSynthesisTaskInput
    Engine: string
    LanguageCode: string
    LexiconNames: {string}
    OutputFormat: string
    OutputS3BucketName: string
    OutputS3KeyPrefix: string
    SampleRate: string
    SnsTopicArn: string
    SpeechMarkTypes: {string}
    Text: string
    TextType: string
    VoiceId: string
end

local record StartSpeechSynthesisTaskOutput
    SynthesisTask: SynthesisTask
end

local record SynthesizeSpeechInput
    Engine: string
    LanguageCode: string
    LexiconNames: {string}
    OutputFormat: string
    SampleRate: string
    SpeechMarkTypes: {string}
    Text: string
    TextType: string
    VoiceId: string
end

local record SynthesizeSpeechOutput
    AudioStream: string
    ContentType: string
    RequestCharacters: number
end

local record LexiconNotFoundException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record ServiceFailureException
    message: string
end

local record LexiconNotFoundException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidTaskIdException
    message: string
end

local record ServiceFailureException
    message: string
end

local record SynthesisTaskNotFoundException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record ServiceFailureException
    message: string
end

local record InvalidLexiconException
    message: string
end

local record LexiconSizeExceededException
    message: string
end

local record MaxLexemeLengthExceededException
    message: string
end

local record MaxLexiconsNumberExceededException
    message: string
end

local record ServiceFailureException
    message: string
end

local record UnsupportedPlsAlphabetException
    message: string
end

local record UnsupportedPlsLanguageException
    message: string
end

local record ServiceFailureException
    message: string
end

local record ServiceQuotaExceededException
    message: string
    quotaCode: string
    serviceCode: string
end

local record ThrottlingException
    message: string
    throttlingReasons: {ThrottlingReason}
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record EngineNotSupportedException
    message: string
end

local record InvalidS3BucketException
    message: string
end

local record InvalidS3KeyException
    message: string
end

local record InvalidSampleRateException
    message: string
end

local record InvalidSnsTopicArnException
    message: string
end

local record InvalidSsmlException
    message: string
end

local record LanguageNotSupportedException
    message: string
end

local record LexiconNotFoundException
    message: string
end

local record MarksNotSupportedForFormatException
    message: string
end

local record ServiceFailureException
    message: string
end

local record SsmlMarksNotSupportedForTextTypeException
    message: string
end

local record TextLengthExceededException
    message: string
end

local record EngineNotSupportedException
    message: string
end

local record InvalidSampleRateException
    message: string
end

local record InvalidSsmlException
    message: string
end

local record LanguageNotSupportedException
    message: string
end

local record LexiconNotFoundException
    message: string
end

local record MarksNotSupportedForFormatException
    message: string
end

local record ServiceFailureException
    message: string
end

local record SsmlMarksNotSupportedForTextTypeException
    message: string
end

local record TextLengthExceededException
    message: string
end

local type LanguageCode = "arb" | "cmn-CN" | "cy-GB" | "da-DK" | "de-DE" | "en-AU" | "en-GB" | "en-GB-WLS" | "en-IN" | "en-US" | "es-ES" | "es-MX" | "es-US" | "fr-CA" | "fr-FR" | "is-IS" | "it-IT" | "ja-JP" | "hi-IN" | "ko-KR" | "nb-NO" | "nl-NL" | "pl-PL" | "pt-BR" | "pt-PT" | "ro-RO" | "ru-RU" | "sv-SE" | "tr-TR" | "en-NZ" | "en-ZA" | "ca-ES" | "de-AT" | "yue-CN" | "ar-AE" | "fi-FI" | "en-IE" | "nl-BE" | "fr-BE" | "cs-CZ" | "de-CH" | "en-SG"

local type TextType = "ssml" | "text"

local type TaskStatus = "scheduled" | "inProgress" | "completed" | "failed"

local type OutputFormat = "json" | "mp3" | "ogg_opus" | "ogg_vorbis" | "pcm" | "mulaw" | "alaw"

local type Engine = "standard" | "neural" | "long-form" | "generative"

local type VoiceId = "Aditi" | "Amy" | "Astrid" | "Bianca" | "Brian" | "Camila" | "Carla" | "Carmen" | "Celine" | "Chantal" | "Conchita" | "Cristiano" | "Dora" | "Emma" | "Enrique" | "Ewa" | "Filiz" | "Gabrielle" | "Geraint" | "Giorgio" | "Gwyneth" | "Hans" | "Ines" | "Ivy" | "Jacek" | "Jan" | "Joanna" | "Joey" | "Justin" | "Karl" | "Kendra" | "Kevin" | "Kimberly" | "Lea" | "Liv" | "Lotte" | "Lucia" | "Lupe" | "Mads" | "Maja" | "Marlene" | "Mathieu" | "Matthew" | "Maxim" | "Mia" | "Miguel" | "Mizuki" | "Naja" | "Nicole" | "Olivia" | "Penelope" | "Raveena" | "Ricardo" | "Ruben" | "Russell" | "Salli" | "Seoyeon" | "Takumi" | "Tatyana" | "Vicki" | "Vitoria" | "Zeina" | "Zhiyu" | "Aria" | "Ayanda" | "Arlet" | "Hannah" | "Arthur" | "Daniel" | "Liam" | "Pedro" | "Kajal" | "Hiujin" | "Laura" | "Elin" | "Ida" | "Suvi" | "Ola" | "Hala" | "Andres" | "Sergio" | "Remi" | "Adriano" | "Thiago" | "Ruth" | "Stephen" | "Kazuha" | "Tomoko" | "Niamh" | "Sofie" | "Lisa" | "Isabelle" | "Zayd" | "Danielle" | "Gregory" | "Burcu" | "Jitka" | "Sabrina" | "Jasmine" | "Jihye" | "Ambre" | "Beatrice" | "Florian" | "Lennart" | "Lorenzo" | "Tiffany"

local record M
    DeleteLexiconInput: DeleteLexiconInput
    DeleteLexiconOutput: DeleteLexiconOutput
    DescribeVoicesInput: DescribeVoicesInput
    DescribeVoicesOutput: DescribeVoicesOutput
    GetLexiconInput: GetLexiconInput
    GetLexiconOutput: GetLexiconOutput
    GetSpeechSynthesisTaskInput: GetSpeechSynthesisTaskInput
    GetSpeechSynthesisTaskOutput: GetSpeechSynthesisTaskOutput
    ListLexiconsInput: ListLexiconsInput
    ListLexiconsOutput: ListLexiconsOutput
    ListSpeechSynthesisTasksInput: ListSpeechSynthesisTasksInput
    ListSpeechSynthesisTasksOutput: ListSpeechSynthesisTasksOutput
    PutLexiconInput: PutLexiconInput
    PutLexiconOutput: PutLexiconOutput
    StartSpeechSynthesisStreamInput: StartSpeechSynthesisStreamInput
    StartSpeechSynthesisStreamOutput: StartSpeechSynthesisStreamOutput
    StartSpeechSynthesisTaskInput: StartSpeechSynthesisTaskInput
    StartSpeechSynthesisTaskOutput: StartSpeechSynthesisTaskOutput
    SynthesizeSpeechInput: SynthesizeSpeechInput
    SynthesizeSpeechOutput: SynthesizeSpeechOutput
end

return M
