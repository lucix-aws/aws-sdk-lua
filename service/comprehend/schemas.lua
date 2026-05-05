local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.comprehend"

local M = {}

M.CustomerInputStringList = schema.new({ type = "list", list_member = prelude.String })

M.ListOfDetectDominantLanguageResult = schema.new({ type = "list", list_member = M.BatchDetectDominantLanguageItemResult })

M.BatchItemErrorList = schema.new({ type = "list", list_member = M.BatchItemError })

M.ListOfDetectEntitiesResult = schema.new({ type = "list", list_member = M.BatchDetectEntitiesItemResult })

M.ListOfDetectKeyPhrasesResult = schema.new({ type = "list", list_member = M.BatchDetectKeyPhrasesItemResult })

M.ListOfDetectSentimentResult = schema.new({ type = "list", list_member = M.BatchDetectSentimentItemResult })

M.ListOfDetectSyntaxResult = schema.new({ type = "list", list_member = M.BatchDetectSyntaxItemResult })

M.ListOfDetectTargetedSentimentResult = schema.new({ type = "list", list_member = M.BatchDetectTargetedSentimentItemResult })

M.ListOfClasses = schema.new({ type = "list", list_member = M.DocumentClass })

M.ListOfLabels = schema.new({ type = "list", list_member = M.DocumentLabel })

M.ListOfDocumentType = schema.new({ type = "list", list_member = M.DocumentTypeListItem })

M.ListOfErrors = schema.new({ type = "list", list_member = M.ErrorsListItem })

M.ListOfWarnings = schema.new({ type = "list", list_member = M.WarningsListItem })

M.ListOfEntityLabels = schema.new({ type = "list", list_member = M.EntityLabel })

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.ListOfDominantLanguages = schema.new({ type = "list", list_member = M.DominantLanguage })

M.ListOfEntities = schema.new({ type = "list", list_member = M.Entity })

M.ListOfBlocks = schema.new({ type = "list", list_member = M.Block })

M.ListOfKeyPhrases = schema.new({ type = "list", list_member = M.KeyPhrase })

M.ListOfPiiEntities = schema.new({ type = "list", list_member = M.PiiEntity })

M.ListOfSyntaxTokens = schema.new({ type = "list", list_member = M.SyntaxToken })

M.ListOfTargetedSentimentEntities = schema.new({ type = "list", list_member = M.TargetedSentimentEntity })

M.ListOfTextSegments = schema.new({ type = "list", list_member = M.TextSegment })

M.ListOfToxicLabels = schema.new({ type = "list", list_member = M.ToxicLabels })

M.DatasetPropertiesList = schema.new({ type = "list", list_member = M.DatasetProperties })

M.DocumentClassificationJobPropertiesList = schema.new({ type = "list", list_member = M.DocumentClassificationJobProperties })

M.DocumentClassifierPropertiesList = schema.new({ type = "list", list_member = M.DocumentClassifierProperties })

M.DocumentClassifierSummariesList = schema.new({ type = "list", list_member = M.DocumentClassifierSummary })

M.DominantLanguageDetectionJobPropertiesList = schema.new({ type = "list", list_member = M.DominantLanguageDetectionJobProperties })

M.EndpointPropertiesList = schema.new({ type = "list", list_member = M.EndpointProperties })

M.EntitiesDetectionJobPropertiesList = schema.new({ type = "list", list_member = M.EntitiesDetectionJobProperties })

M.EntityRecognizerPropertiesList = schema.new({ type = "list", list_member = M.EntityRecognizerProperties })

M.EntityRecognizerSummariesList = schema.new({ type = "list", list_member = M.EntityRecognizerSummary })

M.EventsDetectionJobPropertiesList = schema.new({ type = "list", list_member = M.EventsDetectionJobProperties })

M.FlywheelIterationPropertiesList = schema.new({ type = "list", list_member = M.FlywheelIterationProperties })

M.FlywheelSummaryList = schema.new({ type = "list", list_member = M.FlywheelSummary })

M.KeyPhrasesDetectionJobPropertiesList = schema.new({ type = "list", list_member = M.KeyPhrasesDetectionJobProperties })

M.PiiEntitiesDetectionJobPropertiesList = schema.new({ type = "list", list_member = M.PiiEntitiesDetectionJobProperties })

M.SentimentDetectionJobPropertiesList = schema.new({ type = "list", list_member = M.SentimentDetectionJobProperties })

M.TargetedSentimentDetectionJobPropertiesList = schema.new({ type = "list", list_member = M.TargetedSentimentDetectionJobProperties })

M.TopicsDetectionJobPropertiesList = schema.new({ type = "list", list_member = M.TopicsDetectionJobProperties })

M.TargetEventTypes = schema.new({ type = "list", list_member = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.ListOfDocumentReadFeatureTypes = schema.new({ type = "list", list_member = prelude.String })

M.ListOfExtractedCharacters = schema.new({ type = "list", list_member = M.ExtractedCharactersListItem })

M.DatasetAugmentedManifestsList = schema.new({ type = "list", list_member = M.DatasetAugmentedManifestsListItem })

M.DocumentClassifierAugmentedManifestsList = schema.new({ type = "list", list_member = M.AugmentedManifestsListItem })

M.SecurityGroupIds = schema.new({ type = "list", list_member = prelude.String })

M.Subnets = schema.new({ type = "list", list_member = prelude.String })

M.EntityTypesList = schema.new({ type = "list", list_member = M.EntityTypesListItem })

M.EntityRecognizerAugmentedManifestsList = schema.new({ type = "list", list_member = M.AugmentedManifestsListItem })

M.ListOfPiiEntityTypes = schema.new({ type = "list", list_member = prelude.String })

M.LabelsList = schema.new({ type = "list", list_member = prelude.String })

M.EntityRecognizerMetadataEntityTypesList = schema.new({ type = "list", list_member = M.EntityRecognizerMetadataEntityTypesListItem })

M.ListOfBlockReferences = schema.new({ type = "list", list_member = M.BlockReference })

M.ListOfRelationships = schema.new({ type = "list", list_member = M.RelationshipsListItem })

M.ListOfDescriptiveMentionIndices = schema.new({ type = "list", list_member = prelude.Integer })

M.ListOfMentions = schema.new({ type = "list", list_member = M.TargetedSentimentMention })

M.ListOfToxicContent = schema.new({ type = "list", list_member = M.ToxicContent })

M.AttributeNamesList = schema.new({ type = "list", list_member = prelude.String })

M.Polygon = schema.new({ type = "list", list_member = M.Point })

M.ListOfChildBlocks = schema.new({ type = "list", list_member = M.ChildBlock })

M.StringList = schema.new({ type = "list", list_member = prelude.String })

M.AugmentedManifestsListItem = schema.new({
    id = id.from(_N, "AugmentedManifestsListItem"),
    type = "structure",
    members = {
        S3Uri = schema.new({
            id = id.from(_N, "AugmentedManifestsListItem", "S3Uri"),
            type = "string",
            name = "S3Uri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Split = schema.new({
            id = id.from(_N, "AugmentedManifestsListItem", "Split"),
            type = "string",
            name = "Split",
            target_id = prelude.String.id,
        }),
        AttributeNames = schema.new({
            id = id.from(_N, "AugmentedManifestsListItem", "AttributeNames"),
            type = "list",
            name = "AttributeNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AnnotationDataS3Uri = schema.new({
            id = id.from(_N, "AugmentedManifestsListItem", "AnnotationDataS3Uri"),
            type = "string",
            name = "AnnotationDataS3Uri",
            target_id = prelude.String.id,
        }),
        SourceDocumentsS3Uri = schema.new({
            id = id.from(_N, "AugmentedManifestsListItem", "SourceDocumentsS3Uri"),
            type = "string",
            name = "SourceDocumentsS3Uri",
            target_id = prelude.String.id,
        }),
        DocumentType = schema.new({
            id = id.from(_N, "AugmentedManifestsListItem", "DocumentType"),
            type = "string",
            name = "DocumentType",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchDetectDominantLanguageInput = schema.new({
    id = id.from(_N, "BatchDetectDominantLanguageRequest"),
    type = "structure",
    members = {
        TextList = schema.new({
            id = id.from(_N, "BatchDetectDominantLanguageInput", "TextList"),
            type = "list",
            name = "TextList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchItemError = schema.new({
    id = id.from(_N, "BatchItemError"),
    type = "structure",
    members = {
        Index = schema.new({
            id = id.from(_N, "BatchItemError", "Index"),
            type = "integer",
            name = "Index",
            target_id = prelude.Integer.id,
        }),
        ErrorCode = schema.new({
            id = id.from(_N, "BatchItemError", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "BatchItemError", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.DominantLanguage = schema.new({
    id = id.from(_N, "DominantLanguage"),
    type = "structure",
    members = {
        LanguageCode = schema.new({
            id = id.from(_N, "DominantLanguage", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
        }),
        Score = schema.new({
            id = id.from(_N, "DominantLanguage", "Score"),
            type = "float",
            name = "Score",
            target_id = prelude.Float.id,
        }),
    },
})

M.BatchDetectDominantLanguageItemResult = schema.new({
    id = id.from(_N, "BatchDetectDominantLanguageItemResult"),
    type = "structure",
    members = {
        Index = schema.new({
            id = id.from(_N, "BatchDetectDominantLanguageItemResult", "Index"),
            type = "integer",
            name = "Index",
            target_id = prelude.Integer.id,
        }),
        Languages = schema.new({
            id = id.from(_N, "BatchDetectDominantLanguageItemResult", "Languages"),
            type = "list",
            name = "Languages",
            target_id = prelude.Document.id,
            list_member = M.DominantLanguage,
        }),
    },
})

M.BatchDetectDominantLanguageOutput = schema.new({
    id = id.from(_N, "BatchDetectDominantLanguageResponse"),
    type = "structure",
    members = {
        ResultList = schema.new({
            id = id.from(_N, "BatchDetectDominantLanguageOutput", "ResultList"),
            type = "list",
            name = "ResultList",
            target_id = prelude.Document.id,
            list_member = M.BatchDetectDominantLanguageItemResult,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ErrorList = schema.new({
            id = id.from(_N, "BatchDetectDominantLanguageOutput", "ErrorList"),
            type = "list",
            name = "ErrorList",
            target_id = prelude.Document.id,
            list_member = M.BatchItemError,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchSizeLimitExceededException = schema.new({
    id = id.from(_N, "BatchSizeLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "BatchSizeLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServerException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRequestDetail = schema.new({
    id = id.from(_N, "InvalidRequestDetail"),
    type = "structure",
    members = {
        Reason = schema.new({
            id = id.from(_N, "InvalidRequestDetail", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRequestException = schema.new({
    id = id.from(_N, "InvalidRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidRequestException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "InvalidRequestException", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
        Detail = schema.new({
            id = id.from(_N, "InvalidRequestException", "Detail"),
            type = "structure",
            name = "Detail",
            target_id = id.from(_N, "InvalidRequestDetail"),
            target = M.InvalidRequestDetail,
        }),
    },
})

M.TextSizeLimitExceededException = schema.new({
    id = id.from(_N, "TextSizeLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TextSizeLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchDetectEntitiesInput = schema.new({
    id = id.from(_N, "BatchDetectEntitiesRequest"),
    type = "structure",
    members = {
        TextList = schema.new({
            id = id.from(_N, "BatchDetectEntitiesInput", "TextList"),
            type = "list",
            name = "TextList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "BatchDetectEntitiesInput", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ChildBlock = schema.new({
    id = id.from(_N, "ChildBlock"),
    type = "structure",
    members = {
        ChildBlockId = schema.new({
            id = id.from(_N, "ChildBlock", "ChildBlockId"),
            type = "string",
            name = "ChildBlockId",
            target_id = prelude.String.id,
        }),
        BeginOffset = schema.new({
            id = id.from(_N, "ChildBlock", "BeginOffset"),
            type = "integer",
            name = "BeginOffset",
            target_id = prelude.Integer.id,
        }),
        EndOffset = schema.new({
            id = id.from(_N, "ChildBlock", "EndOffset"),
            type = "integer",
            name = "EndOffset",
            target_id = prelude.Integer.id,
        }),
    },
})

M.BlockReference = schema.new({
    id = id.from(_N, "BlockReference"),
    type = "structure",
    members = {
        BlockId = schema.new({
            id = id.from(_N, "BlockReference", "BlockId"),
            type = "string",
            name = "BlockId",
            target_id = prelude.String.id,
        }),
        BeginOffset = schema.new({
            id = id.from(_N, "BlockReference", "BeginOffset"),
            type = "integer",
            name = "BeginOffset",
            target_id = prelude.Integer.id,
        }),
        EndOffset = schema.new({
            id = id.from(_N, "BlockReference", "EndOffset"),
            type = "integer",
            name = "EndOffset",
            target_id = prelude.Integer.id,
        }),
        ChildBlocks = schema.new({
            id = id.from(_N, "BlockReference", "ChildBlocks"),
            type = "list",
            name = "ChildBlocks",
            target_id = prelude.Document.id,
            list_member = M.ChildBlock,
        }),
    },
})

M.Entity = schema.new({
    id = id.from(_N, "Entity"),
    type = "structure",
    members = {
        Score = schema.new({
            id = id.from(_N, "Entity", "Score"),
            type = "float",
            name = "Score",
            target_id = prelude.Float.id,
        }),
        Type = schema.new({
            id = id.from(_N, "Entity", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Text = schema.new({
            id = id.from(_N, "Entity", "Text"),
            type = "string",
            name = "Text",
            target_id = prelude.String.id,
        }),
        BeginOffset = schema.new({
            id = id.from(_N, "Entity", "BeginOffset"),
            type = "integer",
            name = "BeginOffset",
            target_id = prelude.Integer.id,
        }),
        EndOffset = schema.new({
            id = id.from(_N, "Entity", "EndOffset"),
            type = "integer",
            name = "EndOffset",
            target_id = prelude.Integer.id,
        }),
        BlockReferences = schema.new({
            id = id.from(_N, "Entity", "BlockReferences"),
            type = "list",
            name = "BlockReferences",
            target_id = prelude.Document.id,
            list_member = M.BlockReference,
        }),
    },
})

M.BatchDetectEntitiesItemResult = schema.new({
    id = id.from(_N, "BatchDetectEntitiesItemResult"),
    type = "structure",
    members = {
        Index = schema.new({
            id = id.from(_N, "BatchDetectEntitiesItemResult", "Index"),
            type = "integer",
            name = "Index",
            target_id = prelude.Integer.id,
        }),
        Entities = schema.new({
            id = id.from(_N, "BatchDetectEntitiesItemResult", "Entities"),
            type = "list",
            name = "Entities",
            target_id = prelude.Document.id,
            list_member = M.Entity,
        }),
    },
})

M.BatchDetectEntitiesOutput = schema.new({
    id = id.from(_N, "BatchDetectEntitiesResponse"),
    type = "structure",
    members = {
        ResultList = schema.new({
            id = id.from(_N, "BatchDetectEntitiesOutput", "ResultList"),
            type = "list",
            name = "ResultList",
            target_id = prelude.Document.id,
            list_member = M.BatchDetectEntitiesItemResult,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ErrorList = schema.new({
            id = id.from(_N, "BatchDetectEntitiesOutput", "ErrorList"),
            type = "list",
            name = "ErrorList",
            target_id = prelude.Document.id,
            list_member = M.BatchItemError,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UnsupportedLanguageException = schema.new({
    id = id.from(_N, "UnsupportedLanguageException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "UnsupportedLanguageException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchDetectKeyPhrasesInput = schema.new({
    id = id.from(_N, "BatchDetectKeyPhrasesRequest"),
    type = "structure",
    members = {
        TextList = schema.new({
            id = id.from(_N, "BatchDetectKeyPhrasesInput", "TextList"),
            type = "list",
            name = "TextList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "BatchDetectKeyPhrasesInput", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KeyPhrase = schema.new({
    id = id.from(_N, "KeyPhrase"),
    type = "structure",
    members = {
        Score = schema.new({
            id = id.from(_N, "KeyPhrase", "Score"),
            type = "float",
            name = "Score",
            target_id = prelude.Float.id,
        }),
        Text = schema.new({
            id = id.from(_N, "KeyPhrase", "Text"),
            type = "string",
            name = "Text",
            target_id = prelude.String.id,
        }),
        BeginOffset = schema.new({
            id = id.from(_N, "KeyPhrase", "BeginOffset"),
            type = "integer",
            name = "BeginOffset",
            target_id = prelude.Integer.id,
        }),
        EndOffset = schema.new({
            id = id.from(_N, "KeyPhrase", "EndOffset"),
            type = "integer",
            name = "EndOffset",
            target_id = prelude.Integer.id,
        }),
    },
})

M.BatchDetectKeyPhrasesItemResult = schema.new({
    id = id.from(_N, "BatchDetectKeyPhrasesItemResult"),
    type = "structure",
    members = {
        Index = schema.new({
            id = id.from(_N, "BatchDetectKeyPhrasesItemResult", "Index"),
            type = "integer",
            name = "Index",
            target_id = prelude.Integer.id,
        }),
        KeyPhrases = schema.new({
            id = id.from(_N, "BatchDetectKeyPhrasesItemResult", "KeyPhrases"),
            type = "list",
            name = "KeyPhrases",
            target_id = prelude.Document.id,
            list_member = M.KeyPhrase,
        }),
    },
})

M.BatchDetectKeyPhrasesOutput = schema.new({
    id = id.from(_N, "BatchDetectKeyPhrasesResponse"),
    type = "structure",
    members = {
        ResultList = schema.new({
            id = id.from(_N, "BatchDetectKeyPhrasesOutput", "ResultList"),
            type = "list",
            name = "ResultList",
            target_id = prelude.Document.id,
            list_member = M.BatchDetectKeyPhrasesItemResult,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ErrorList = schema.new({
            id = id.from(_N, "BatchDetectKeyPhrasesOutput", "ErrorList"),
            type = "list",
            name = "ErrorList",
            target_id = prelude.Document.id,
            list_member = M.BatchItemError,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchDetectSentimentInput = schema.new({
    id = id.from(_N, "BatchDetectSentimentRequest"),
    type = "structure",
    members = {
        TextList = schema.new({
            id = id.from(_N, "BatchDetectSentimentInput", "TextList"),
            type = "list",
            name = "TextList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "BatchDetectSentimentInput", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SentimentScore = schema.new({
    id = id.from(_N, "SentimentScore"),
    type = "structure",
    members = {
        Positive = schema.new({
            id = id.from(_N, "SentimentScore", "Positive"),
            type = "float",
            name = "Positive",
            target_id = prelude.Float.id,
        }),
        Negative = schema.new({
            id = id.from(_N, "SentimentScore", "Negative"),
            type = "float",
            name = "Negative",
            target_id = prelude.Float.id,
        }),
        Neutral = schema.new({
            id = id.from(_N, "SentimentScore", "Neutral"),
            type = "float",
            name = "Neutral",
            target_id = prelude.Float.id,
        }),
        Mixed = schema.new({
            id = id.from(_N, "SentimentScore", "Mixed"),
            type = "float",
            name = "Mixed",
            target_id = prelude.Float.id,
        }),
    },
})

M.BatchDetectSentimentItemResult = schema.new({
    id = id.from(_N, "BatchDetectSentimentItemResult"),
    type = "structure",
    members = {
        Index = schema.new({
            id = id.from(_N, "BatchDetectSentimentItemResult", "Index"),
            type = "integer",
            name = "Index",
            target_id = prelude.Integer.id,
        }),
        Sentiment = schema.new({
            id = id.from(_N, "BatchDetectSentimentItemResult", "Sentiment"),
            type = "string",
            name = "Sentiment",
            target_id = prelude.String.id,
        }),
        SentimentScore = schema.new({
            id = id.from(_N, "BatchDetectSentimentItemResult", "SentimentScore"),
            type = "structure",
            name = "SentimentScore",
            target_id = id.from(_N, "SentimentScore"),
            target = M.SentimentScore,
        }),
    },
})

M.BatchDetectSentimentOutput = schema.new({
    id = id.from(_N, "BatchDetectSentimentResponse"),
    type = "structure",
    members = {
        ResultList = schema.new({
            id = id.from(_N, "BatchDetectSentimentOutput", "ResultList"),
            type = "list",
            name = "ResultList",
            target_id = prelude.Document.id,
            list_member = M.BatchDetectSentimentItemResult,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ErrorList = schema.new({
            id = id.from(_N, "BatchDetectSentimentOutput", "ErrorList"),
            type = "list",
            name = "ErrorList",
            target_id = prelude.Document.id,
            list_member = M.BatchItemError,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchDetectSyntaxInput = schema.new({
    id = id.from(_N, "BatchDetectSyntaxRequest"),
    type = "structure",
    members = {
        TextList = schema.new({
            id = id.from(_N, "BatchDetectSyntaxInput", "TextList"),
            type = "list",
            name = "TextList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "BatchDetectSyntaxInput", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PartOfSpeechTag = schema.new({
    id = id.from(_N, "PartOfSpeechTag"),
    type = "structure",
    members = {
        Tag = schema.new({
            id = id.from(_N, "PartOfSpeechTag", "Tag"),
            type = "string",
            name = "Tag",
            target_id = prelude.String.id,
        }),
        Score = schema.new({
            id = id.from(_N, "PartOfSpeechTag", "Score"),
            type = "float",
            name = "Score",
            target_id = prelude.Float.id,
        }),
    },
})

M.SyntaxToken = schema.new({
    id = id.from(_N, "SyntaxToken"),
    type = "structure",
    members = {
        TokenId = schema.new({
            id = id.from(_N, "SyntaxToken", "TokenId"),
            type = "integer",
            name = "TokenId",
            target_id = prelude.Integer.id,
        }),
        Text = schema.new({
            id = id.from(_N, "SyntaxToken", "Text"),
            type = "string",
            name = "Text",
            target_id = prelude.String.id,
        }),
        BeginOffset = schema.new({
            id = id.from(_N, "SyntaxToken", "BeginOffset"),
            type = "integer",
            name = "BeginOffset",
            target_id = prelude.Integer.id,
        }),
        EndOffset = schema.new({
            id = id.from(_N, "SyntaxToken", "EndOffset"),
            type = "integer",
            name = "EndOffset",
            target_id = prelude.Integer.id,
        }),
        PartOfSpeech = schema.new({
            id = id.from(_N, "SyntaxToken", "PartOfSpeech"),
            type = "structure",
            name = "PartOfSpeech",
            target_id = id.from(_N, "PartOfSpeechTag"),
            target = M.PartOfSpeechTag,
        }),
    },
})

M.BatchDetectSyntaxItemResult = schema.new({
    id = id.from(_N, "BatchDetectSyntaxItemResult"),
    type = "structure",
    members = {
        Index = schema.new({
            id = id.from(_N, "BatchDetectSyntaxItemResult", "Index"),
            type = "integer",
            name = "Index",
            target_id = prelude.Integer.id,
        }),
        SyntaxTokens = schema.new({
            id = id.from(_N, "BatchDetectSyntaxItemResult", "SyntaxTokens"),
            type = "list",
            name = "SyntaxTokens",
            target_id = prelude.Document.id,
            list_member = M.SyntaxToken,
        }),
    },
})

M.BatchDetectSyntaxOutput = schema.new({
    id = id.from(_N, "BatchDetectSyntaxResponse"),
    type = "structure",
    members = {
        ResultList = schema.new({
            id = id.from(_N, "BatchDetectSyntaxOutput", "ResultList"),
            type = "list",
            name = "ResultList",
            target_id = prelude.Document.id,
            list_member = M.BatchDetectSyntaxItemResult,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ErrorList = schema.new({
            id = id.from(_N, "BatchDetectSyntaxOutput", "ErrorList"),
            type = "list",
            name = "ErrorList",
            target_id = prelude.Document.id,
            list_member = M.BatchItemError,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchDetectTargetedSentimentInput = schema.new({
    id = id.from(_N, "BatchDetectTargetedSentimentRequest"),
    type = "structure",
    members = {
        TextList = schema.new({
            id = id.from(_N, "BatchDetectTargetedSentimentInput", "TextList"),
            type = "list",
            name = "TextList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "BatchDetectTargetedSentimentInput", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MentionSentiment = schema.new({
    id = id.from(_N, "MentionSentiment"),
    type = "structure",
    members = {
        Sentiment = schema.new({
            id = id.from(_N, "MentionSentiment", "Sentiment"),
            type = "string",
            name = "Sentiment",
            target_id = prelude.String.id,
        }),
        SentimentScore = schema.new({
            id = id.from(_N, "MentionSentiment", "SentimentScore"),
            type = "structure",
            name = "SentimentScore",
            target_id = id.from(_N, "SentimentScore"),
            target = M.SentimentScore,
        }),
    },
})

M.TargetedSentimentMention = schema.new({
    id = id.from(_N, "TargetedSentimentMention"),
    type = "structure",
    members = {
        Score = schema.new({
            id = id.from(_N, "TargetedSentimentMention", "Score"),
            type = "float",
            name = "Score",
            target_id = prelude.Float.id,
        }),
        GroupScore = schema.new({
            id = id.from(_N, "TargetedSentimentMention", "GroupScore"),
            type = "float",
            name = "GroupScore",
            target_id = prelude.Float.id,
        }),
        Text = schema.new({
            id = id.from(_N, "TargetedSentimentMention", "Text"),
            type = "string",
            name = "Text",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "TargetedSentimentMention", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        MentionSentiment = schema.new({
            id = id.from(_N, "TargetedSentimentMention", "MentionSentiment"),
            type = "structure",
            name = "MentionSentiment",
            target_id = id.from(_N, "MentionSentiment"),
            target = M.MentionSentiment,
        }),
        BeginOffset = schema.new({
            id = id.from(_N, "TargetedSentimentMention", "BeginOffset"),
            type = "integer",
            name = "BeginOffset",
            target_id = prelude.Integer.id,
        }),
        EndOffset = schema.new({
            id = id.from(_N, "TargetedSentimentMention", "EndOffset"),
            type = "integer",
            name = "EndOffset",
            target_id = prelude.Integer.id,
        }),
    },
})

M.TargetedSentimentEntity = schema.new({
    id = id.from(_N, "TargetedSentimentEntity"),
    type = "structure",
    members = {
        DescriptiveMentionIndex = schema.new({
            id = id.from(_N, "TargetedSentimentEntity", "DescriptiveMentionIndex"),
            type = "list",
            name = "DescriptiveMentionIndex",
            target_id = prelude.Document.id,
            list_member = prelude.Integer,
        }),
        Mentions = schema.new({
            id = id.from(_N, "TargetedSentimentEntity", "Mentions"),
            type = "list",
            name = "Mentions",
            target_id = prelude.Document.id,
            list_member = M.TargetedSentimentMention,
        }),
    },
})

M.BatchDetectTargetedSentimentItemResult = schema.new({
    id = id.from(_N, "BatchDetectTargetedSentimentItemResult"),
    type = "structure",
    members = {
        Index = schema.new({
            id = id.from(_N, "BatchDetectTargetedSentimentItemResult", "Index"),
            type = "integer",
            name = "Index",
            target_id = prelude.Integer.id,
        }),
        Entities = schema.new({
            id = id.from(_N, "BatchDetectTargetedSentimentItemResult", "Entities"),
            type = "list",
            name = "Entities",
            target_id = prelude.Document.id,
            list_member = M.TargetedSentimentEntity,
        }),
    },
})

M.BatchDetectTargetedSentimentOutput = schema.new({
    id = id.from(_N, "BatchDetectTargetedSentimentResponse"),
    type = "structure",
    members = {
        ResultList = schema.new({
            id = id.from(_N, "BatchDetectTargetedSentimentOutput", "ResultList"),
            type = "list",
            name = "ResultList",
            target_id = prelude.Document.id,
            list_member = M.BatchDetectTargetedSentimentItemResult,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ErrorList = schema.new({
            id = id.from(_N, "BatchDetectTargetedSentimentOutput", "ErrorList"),
            type = "list",
            name = "ErrorList",
            target_id = prelude.Document.id,
            list_member = M.BatchItemError,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BoundingBox = schema.new({
    id = id.from(_N, "BoundingBox"),
    type = "structure",
    members = {
        Height = schema.new({
            id = id.from(_N, "BoundingBox", "Height"),
            type = "float",
            name = "Height",
            target_id = prelude.Float.id,
        }),
        Left = schema.new({
            id = id.from(_N, "BoundingBox", "Left"),
            type = "float",
            name = "Left",
            target_id = prelude.Float.id,
        }),
        Top = schema.new({
            id = id.from(_N, "BoundingBox", "Top"),
            type = "float",
            name = "Top",
            target_id = prelude.Float.id,
        }),
        Width = schema.new({
            id = id.from(_N, "BoundingBox", "Width"),
            type = "float",
            name = "Width",
            target_id = prelude.Float.id,
        }),
    },
})

M.Point = schema.new({
    id = id.from(_N, "Point"),
    type = "structure",
    members = {
        X = schema.new({
            id = id.from(_N, "Point", "X"),
            type = "float",
            name = "X",
            target_id = prelude.Float.id,
        }),
        Y = schema.new({
            id = id.from(_N, "Point", "Y"),
            type = "float",
            name = "Y",
            target_id = prelude.Float.id,
        }),
    },
})

M.Geometry = schema.new({
    id = id.from(_N, "Geometry"),
    type = "structure",
    members = {
        BoundingBox = schema.new({
            id = id.from(_N, "Geometry", "BoundingBox"),
            type = "structure",
            name = "BoundingBox",
            target_id = id.from(_N, "BoundingBox"),
            target = M.BoundingBox,
        }),
        Polygon = schema.new({
            id = id.from(_N, "Geometry", "Polygon"),
            type = "list",
            name = "Polygon",
            target_id = prelude.Document.id,
            list_member = M.Point,
        }),
    },
})

M.RelationshipsListItem = schema.new({
    id = id.from(_N, "RelationshipsListItem"),
    type = "structure",
    members = {
        Ids = schema.new({
            id = id.from(_N, "RelationshipsListItem", "Ids"),
            type = "list",
            name = "Ids",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Type = schema.new({
            id = id.from(_N, "RelationshipsListItem", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.Block = schema.new({
    id = id.from(_N, "Block"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "Block", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        BlockType = schema.new({
            id = id.from(_N, "Block", "BlockType"),
            type = "string",
            name = "BlockType",
            target_id = prelude.String.id,
        }),
        Text = schema.new({
            id = id.from(_N, "Block", "Text"),
            type = "string",
            name = "Text",
            target_id = prelude.String.id,
        }),
        Page = schema.new({
            id = id.from(_N, "Block", "Page"),
            type = "integer",
            name = "Page",
            target_id = prelude.Integer.id,
        }),
        Geometry = schema.new({
            id = id.from(_N, "Block", "Geometry"),
            type = "structure",
            name = "Geometry",
            target_id = id.from(_N, "Geometry"),
            target = M.Geometry,
        }),
        Relationships = schema.new({
            id = id.from(_N, "Block", "Relationships"),
            type = "list",
            name = "Relationships",
            target_id = prelude.Document.id,
            list_member = M.RelationshipsListItem,
        }),
    },
})

M.ClassifierEvaluationMetrics = schema.new({
    id = id.from(_N, "ClassifierEvaluationMetrics"),
    type = "structure",
    members = {
        Accuracy = schema.new({
            id = id.from(_N, "ClassifierEvaluationMetrics", "Accuracy"),
            type = "double",
            name = "Accuracy",
            target_id = prelude.Double.id,
        }),
        Precision = schema.new({
            id = id.from(_N, "ClassifierEvaluationMetrics", "Precision"),
            type = "double",
            name = "Precision",
            target_id = prelude.Double.id,
        }),
        Recall = schema.new({
            id = id.from(_N, "ClassifierEvaluationMetrics", "Recall"),
            type = "double",
            name = "Recall",
            target_id = prelude.Double.id,
        }),
        F1Score = schema.new({
            id = id.from(_N, "ClassifierEvaluationMetrics", "F1Score"),
            type = "double",
            name = "F1Score",
            target_id = prelude.Double.id,
        }),
        MicroPrecision = schema.new({
            id = id.from(_N, "ClassifierEvaluationMetrics", "MicroPrecision"),
            type = "double",
            name = "MicroPrecision",
            target_id = prelude.Double.id,
        }),
        MicroRecall = schema.new({
            id = id.from(_N, "ClassifierEvaluationMetrics", "MicroRecall"),
            type = "double",
            name = "MicroRecall",
            target_id = prelude.Double.id,
        }),
        MicroF1Score = schema.new({
            id = id.from(_N, "ClassifierEvaluationMetrics", "MicroF1Score"),
            type = "double",
            name = "MicroF1Score",
            target_id = prelude.Double.id,
        }),
        HammingLoss = schema.new({
            id = id.from(_N, "ClassifierEvaluationMetrics", "HammingLoss"),
            type = "double",
            name = "HammingLoss",
            target_id = prelude.Double.id,
        }),
    },
})

M.ClassifierMetadata = schema.new({
    id = id.from(_N, "ClassifierMetadata"),
    type = "structure",
    members = {
        NumberOfLabels = schema.new({
            id = id.from(_N, "ClassifierMetadata", "NumberOfLabels"),
            type = "integer",
            name = "NumberOfLabels",
            target_id = prelude.Integer.id,
        }),
        NumberOfTrainedDocuments = schema.new({
            id = id.from(_N, "ClassifierMetadata", "NumberOfTrainedDocuments"),
            type = "integer",
            name = "NumberOfTrainedDocuments",
            target_id = prelude.Integer.id,
        }),
        NumberOfTestDocuments = schema.new({
            id = id.from(_N, "ClassifierMetadata", "NumberOfTestDocuments"),
            type = "integer",
            name = "NumberOfTestDocuments",
            target_id = prelude.Integer.id,
        }),
        EvaluationMetrics = schema.new({
            id = id.from(_N, "ClassifierMetadata", "EvaluationMetrics"),
            type = "structure",
            name = "EvaluationMetrics",
            target_id = id.from(_N, "ClassifierEvaluationMetrics"),
            target = M.ClassifierEvaluationMetrics,
        }),
    },
})

M.DocumentReaderConfig = schema.new({
    id = id.from(_N, "DocumentReaderConfig"),
    type = "structure",
    members = {
        DocumentReadAction = schema.new({
            id = id.from(_N, "DocumentReaderConfig", "DocumentReadAction"),
            type = "string",
            name = "DocumentReadAction",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DocumentReadMode = schema.new({
            id = id.from(_N, "DocumentReaderConfig", "DocumentReadMode"),
            type = "string",
            name = "DocumentReadMode",
            target_id = prelude.String.id,
        }),
        FeatureTypes = schema.new({
            id = id.from(_N, "DocumentReaderConfig", "FeatureTypes"),
            type = "list",
            name = "FeatureTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ClassifyDocumentInput = schema.new({
    id = id.from(_N, "ClassifyDocumentRequest"),
    type = "structure",
    members = {
        Text = schema.new({
            id = id.from(_N, "ClassifyDocumentInput", "Text"),
            type = "string",
            name = "Text",
            target_id = prelude.String.id,
        }),
        EndpointArn = schema.new({
            id = id.from(_N, "ClassifyDocumentInput", "EndpointArn"),
            type = "string",
            name = "EndpointArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Bytes = schema.new({
            id = id.from(_N, "ClassifyDocumentInput", "Bytes"),
            type = "blob",
            name = "Bytes",
            target_id = prelude.Blob.id,
        }),
        DocumentReaderConfig = schema.new({
            id = id.from(_N, "ClassifyDocumentInput", "DocumentReaderConfig"),
            type = "structure",
            name = "DocumentReaderConfig",
            target_id = id.from(_N, "DocumentReaderConfig"),
            target = M.DocumentReaderConfig,
        }),
    },
})

M.DocumentClass = schema.new({
    id = id.from(_N, "DocumentClass"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DocumentClass", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Score = schema.new({
            id = id.from(_N, "DocumentClass", "Score"),
            type = "float",
            name = "Score",
            target_id = prelude.Float.id,
        }),
        Page = schema.new({
            id = id.from(_N, "DocumentClass", "Page"),
            type = "integer",
            name = "Page",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ExtractedCharactersListItem = schema.new({
    id = id.from(_N, "ExtractedCharactersListItem"),
    type = "structure",
    members = {
        Page = schema.new({
            id = id.from(_N, "ExtractedCharactersListItem", "Page"),
            type = "integer",
            name = "Page",
            target_id = prelude.Integer.id,
        }),
        Count = schema.new({
            id = id.from(_N, "ExtractedCharactersListItem", "Count"),
            type = "integer",
            name = "Count",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DocumentMetadata = schema.new({
    id = id.from(_N, "DocumentMetadata"),
    type = "structure",
    members = {
        Pages = schema.new({
            id = id.from(_N, "DocumentMetadata", "Pages"),
            type = "integer",
            name = "Pages",
            target_id = prelude.Integer.id,
        }),
        ExtractedCharacters = schema.new({
            id = id.from(_N, "DocumentMetadata", "ExtractedCharacters"),
            type = "list",
            name = "ExtractedCharacters",
            target_id = prelude.Document.id,
            list_member = M.ExtractedCharactersListItem,
        }),
    },
})

M.DocumentTypeListItem = schema.new({
    id = id.from(_N, "DocumentTypeListItem"),
    type = "structure",
    members = {
        Page = schema.new({
            id = id.from(_N, "DocumentTypeListItem", "Page"),
            type = "integer",
            name = "Page",
            target_id = prelude.Integer.id,
        }),
        Type = schema.new({
            id = id.from(_N, "DocumentTypeListItem", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.ErrorsListItem = schema.new({
    id = id.from(_N, "ErrorsListItem"),
    type = "structure",
    members = {
        Page = schema.new({
            id = id.from(_N, "ErrorsListItem", "Page"),
            type = "integer",
            name = "Page",
            target_id = prelude.Integer.id,
        }),
        ErrorCode = schema.new({
            id = id.from(_N, "ErrorsListItem", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "ErrorsListItem", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.DocumentLabel = schema.new({
    id = id.from(_N, "DocumentLabel"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "DocumentLabel", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Score = schema.new({
            id = id.from(_N, "DocumentLabel", "Score"),
            type = "float",
            name = "Score",
            target_id = prelude.Float.id,
        }),
        Page = schema.new({
            id = id.from(_N, "DocumentLabel", "Page"),
            type = "integer",
            name = "Page",
            target_id = prelude.Integer.id,
        }),
    },
})

M.WarningsListItem = schema.new({
    id = id.from(_N, "WarningsListItem"),
    type = "structure",
    members = {
        Page = schema.new({
            id = id.from(_N, "WarningsListItem", "Page"),
            type = "integer",
            name = "Page",
            target_id = prelude.Integer.id,
        }),
        WarnCode = schema.new({
            id = id.from(_N, "WarningsListItem", "WarnCode"),
            type = "string",
            name = "WarnCode",
            target_id = prelude.String.id,
        }),
        WarnMessage = schema.new({
            id = id.from(_N, "WarningsListItem", "WarnMessage"),
            type = "string",
            name = "WarnMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.ClassifyDocumentOutput = schema.new({
    id = id.from(_N, "ClassifyDocumentResponse"),
    type = "structure",
    members = {
        Classes = schema.new({
            id = id.from(_N, "ClassifyDocumentOutput", "Classes"),
            type = "list",
            name = "Classes",
            target_id = prelude.Document.id,
            list_member = M.DocumentClass,
        }),
        Labels = schema.new({
            id = id.from(_N, "ClassifyDocumentOutput", "Labels"),
            type = "list",
            name = "Labels",
            target_id = prelude.Document.id,
            list_member = M.DocumentLabel,
        }),
        DocumentMetadata = schema.new({
            id = id.from(_N, "ClassifyDocumentOutput", "DocumentMetadata"),
            type = "structure",
            name = "DocumentMetadata",
            target_id = id.from(_N, "DocumentMetadata"),
            target = M.DocumentMetadata,
        }),
        DocumentType = schema.new({
            id = id.from(_N, "ClassifyDocumentOutput", "DocumentType"),
            type = "list",
            name = "DocumentType",
            target_id = prelude.Document.id,
            list_member = M.DocumentTypeListItem,
        }),
        Errors = schema.new({
            id = id.from(_N, "ClassifyDocumentOutput", "Errors"),
            type = "list",
            name = "Errors",
            target_id = prelude.Document.id,
            list_member = M.ErrorsListItem,
        }),
        Warnings = schema.new({
            id = id.from(_N, "ClassifyDocumentOutput", "Warnings"),
            type = "list",
            name = "Warnings",
            target_id = prelude.Document.id,
            list_member = M.WarningsListItem,
        }),
    },
})

M.ResourceUnavailableException = schema.new({
    id = id.from(_N, "ResourceUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceUnavailableException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ContainsPiiEntitiesInput = schema.new({
    id = id.from(_N, "ContainsPiiEntitiesRequest"),
    type = "structure",
    members = {
        Text = schema.new({
            id = id.from(_N, "ContainsPiiEntitiesInput", "Text"),
            type = "string",
            name = "Text",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "ContainsPiiEntitiesInput", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EntityLabel = schema.new({
    id = id.from(_N, "EntityLabel"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "EntityLabel", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Score = schema.new({
            id = id.from(_N, "EntityLabel", "Score"),
            type = "float",
            name = "Score",
            target_id = prelude.Float.id,
        }),
    },
})

M.ContainsPiiEntitiesOutput = schema.new({
    id = id.from(_N, "ContainsPiiEntitiesResponse"),
    type = "structure",
    members = {
        Labels = schema.new({
            id = id.from(_N, "ContainsPiiEntitiesOutput", "Labels"),
            type = "list",
            name = "Labels",
            target_id = prelude.Document.id,
            list_member = M.EntityLabel,
        }),
    },
})

M.DatasetAugmentedManifestsListItem = schema.new({
    id = id.from(_N, "DatasetAugmentedManifestsListItem"),
    type = "structure",
    members = {
        AttributeNames = schema.new({
            id = id.from(_N, "DatasetAugmentedManifestsListItem", "AttributeNames"),
            type = "list",
            name = "AttributeNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3Uri = schema.new({
            id = id.from(_N, "DatasetAugmentedManifestsListItem", "S3Uri"),
            type = "string",
            name = "S3Uri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AnnotationDataS3Uri = schema.new({
            id = id.from(_N, "DatasetAugmentedManifestsListItem", "AnnotationDataS3Uri"),
            type = "string",
            name = "AnnotationDataS3Uri",
            target_id = prelude.String.id,
        }),
        SourceDocumentsS3Uri = schema.new({
            id = id.from(_N, "DatasetAugmentedManifestsListItem", "SourceDocumentsS3Uri"),
            type = "string",
            name = "SourceDocumentsS3Uri",
            target_id = prelude.String.id,
        }),
        DocumentType = schema.new({
            id = id.from(_N, "DatasetAugmentedManifestsListItem", "DocumentType"),
            type = "string",
            name = "DocumentType",
            target_id = prelude.String.id,
        }),
    },
})

M.DatasetDocumentClassifierInputDataConfig = schema.new({
    id = id.from(_N, "DatasetDocumentClassifierInputDataConfig"),
    type = "structure",
    members = {
        S3Uri = schema.new({
            id = id.from(_N, "DatasetDocumentClassifierInputDataConfig", "S3Uri"),
            type = "string",
            name = "S3Uri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LabelDelimiter = schema.new({
            id = id.from(_N, "DatasetDocumentClassifierInputDataConfig", "LabelDelimiter"),
            type = "string",
            name = "LabelDelimiter",
            target_id = prelude.String.id,
        }),
    },
})

M.DatasetEntityRecognizerAnnotations = schema.new({
    id = id.from(_N, "DatasetEntityRecognizerAnnotations"),
    type = "structure",
    members = {
        S3Uri = schema.new({
            id = id.from(_N, "DatasetEntityRecognizerAnnotations", "S3Uri"),
            type = "string",
            name = "S3Uri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DatasetEntityRecognizerDocuments = schema.new({
    id = id.from(_N, "DatasetEntityRecognizerDocuments"),
    type = "structure",
    members = {
        S3Uri = schema.new({
            id = id.from(_N, "DatasetEntityRecognizerDocuments", "S3Uri"),
            type = "string",
            name = "S3Uri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InputFormat = schema.new({
            id = id.from(_N, "DatasetEntityRecognizerDocuments", "InputFormat"),
            type = "string",
            name = "InputFormat",
            target_id = prelude.String.id,
        }),
    },
})

M.DatasetEntityRecognizerEntityList = schema.new({
    id = id.from(_N, "DatasetEntityRecognizerEntityList"),
    type = "structure",
    members = {
        S3Uri = schema.new({
            id = id.from(_N, "DatasetEntityRecognizerEntityList", "S3Uri"),
            type = "string",
            name = "S3Uri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DatasetEntityRecognizerInputDataConfig = schema.new({
    id = id.from(_N, "DatasetEntityRecognizerInputDataConfig"),
    type = "structure",
    members = {
        Annotations = schema.new({
            id = id.from(_N, "DatasetEntityRecognizerInputDataConfig", "Annotations"),
            type = "structure",
            name = "Annotations",
            target_id = id.from(_N, "DatasetEntityRecognizerAnnotations"),
            target = M.DatasetEntityRecognizerAnnotations,
        }),
        Documents = schema.new({
            id = id.from(_N, "DatasetEntityRecognizerInputDataConfig", "Documents"),
            type = "structure",
            name = "Documents",
            target_id = id.from(_N, "DatasetEntityRecognizerDocuments"),
            target = M.DatasetEntityRecognizerDocuments,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EntityList = schema.new({
            id = id.from(_N, "DatasetEntityRecognizerInputDataConfig", "EntityList"),
            type = "structure",
            name = "EntityList",
            target_id = id.from(_N, "DatasetEntityRecognizerEntityList"),
            target = M.DatasetEntityRecognizerEntityList,
        }),
    },
})

M.DatasetInputDataConfig = schema.new({
    id = id.from(_N, "DatasetInputDataConfig"),
    type = "structure",
    members = {
        AugmentedManifests = schema.new({
            id = id.from(_N, "DatasetInputDataConfig", "AugmentedManifests"),
            type = "list",
            name = "AugmentedManifests",
            target_id = prelude.Document.id,
            list_member = M.DatasetAugmentedManifestsListItem,
        }),
        DataFormat = schema.new({
            id = id.from(_N, "DatasetInputDataConfig", "DataFormat"),
            type = "string",
            name = "DataFormat",
            target_id = prelude.String.id,
        }),
        DocumentClassifierInputDataConfig = schema.new({
            id = id.from(_N, "DatasetInputDataConfig", "DocumentClassifierInputDataConfig"),
            type = "structure",
            name = "DocumentClassifierInputDataConfig",
            target_id = id.from(_N, "DatasetDocumentClassifierInputDataConfig"),
            target = M.DatasetDocumentClassifierInputDataConfig,
        }),
        EntityRecognizerInputDataConfig = schema.new({
            id = id.from(_N, "DatasetInputDataConfig", "EntityRecognizerInputDataConfig"),
            type = "structure",
            name = "EntityRecognizerInputDataConfig",
            target_id = id.from(_N, "DatasetEntityRecognizerInputDataConfig"),
            target = M.DatasetEntityRecognizerInputDataConfig,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Tag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDatasetInput = schema.new({
    id = id.from(_N, "CreateDatasetRequest"),
    type = "structure",
    members = {
        FlywheelArn = schema.new({
            id = id.from(_N, "CreateDatasetInput", "FlywheelArn"),
            type = "string",
            name = "FlywheelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DatasetName = schema.new({
            id = id.from(_N, "CreateDatasetInput", "DatasetName"),
            type = "string",
            name = "DatasetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DatasetType = schema.new({
            id = id.from(_N, "CreateDatasetInput", "DatasetType"),
            type = "string",
            name = "DatasetType",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateDatasetInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        InputDataConfig = schema.new({
            id = id.from(_N, "CreateDatasetInput", "InputDataConfig"),
            type = "structure",
            name = "InputDataConfig",
            target_id = id.from(_N, "DatasetInputDataConfig"),
            target = M.DatasetInputDataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateDatasetInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateDatasetInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateDatasetOutput = schema.new({
    id = id.from(_N, "CreateDatasetResponse"),
    type = "structure",
    members = {
        DatasetArn = schema.new({
            id = id.from(_N, "CreateDatasetOutput", "DatasetArn"),
            type = "string",
            name = "DatasetArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceInUseException = schema.new({
    id = id.from(_N, "ResourceInUseException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceInUseException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceLimitExceededException = schema.new({
    id = id.from(_N, "ResourceLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyRequestsException = schema.new({
    id = id.from(_N, "TooManyRequestsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyRequestsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyTagsException = schema.new({
    id = id.from(_N, "TooManyTagsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyTagsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DocumentClassifierDocuments = schema.new({
    id = id.from(_N, "DocumentClassifierDocuments"),
    type = "structure",
    members = {
        S3Uri = schema.new({
            id = id.from(_N, "DocumentClassifierDocuments", "S3Uri"),
            type = "string",
            name = "S3Uri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TestS3Uri = schema.new({
            id = id.from(_N, "DocumentClassifierDocuments", "TestS3Uri"),
            type = "string",
            name = "TestS3Uri",
            target_id = prelude.String.id,
        }),
    },
})

M.DocumentClassifierInputDataConfig = schema.new({
    id = id.from(_N, "DocumentClassifierInputDataConfig"),
    type = "structure",
    members = {
        DataFormat = schema.new({
            id = id.from(_N, "DocumentClassifierInputDataConfig", "DataFormat"),
            type = "string",
            name = "DataFormat",
            target_id = prelude.String.id,
        }),
        S3Uri = schema.new({
            id = id.from(_N, "DocumentClassifierInputDataConfig", "S3Uri"),
            type = "string",
            name = "S3Uri",
            target_id = prelude.String.id,
        }),
        TestS3Uri = schema.new({
            id = id.from(_N, "DocumentClassifierInputDataConfig", "TestS3Uri"),
            type = "string",
            name = "TestS3Uri",
            target_id = prelude.String.id,
        }),
        LabelDelimiter = schema.new({
            id = id.from(_N, "DocumentClassifierInputDataConfig", "LabelDelimiter"),
            type = "string",
            name = "LabelDelimiter",
            target_id = prelude.String.id,
        }),
        AugmentedManifests = schema.new({
            id = id.from(_N, "DocumentClassifierInputDataConfig", "AugmentedManifests"),
            type = "list",
            name = "AugmentedManifests",
            target_id = prelude.Document.id,
            list_member = M.AugmentedManifestsListItem,
        }),
        DocumentType = schema.new({
            id = id.from(_N, "DocumentClassifierInputDataConfig", "DocumentType"),
            type = "string",
            name = "DocumentType",
            target_id = prelude.String.id,
        }),
        Documents = schema.new({
            id = id.from(_N, "DocumentClassifierInputDataConfig", "Documents"),
            type = "structure",
            name = "Documents",
            target_id = id.from(_N, "DocumentClassifierDocuments"),
            target = M.DocumentClassifierDocuments,
        }),
        DocumentReaderConfig = schema.new({
            id = id.from(_N, "DocumentClassifierInputDataConfig", "DocumentReaderConfig"),
            type = "structure",
            name = "DocumentReaderConfig",
            target_id = id.from(_N, "DocumentReaderConfig"),
            target = M.DocumentReaderConfig,
        }),
    },
})

M.DocumentClassifierOutputDataConfig = schema.new({
    id = id.from(_N, "DocumentClassifierOutputDataConfig"),
    type = "structure",
    members = {
        S3Uri = schema.new({
            id = id.from(_N, "DocumentClassifierOutputDataConfig", "S3Uri"),
            type = "string",
            name = "S3Uri",
            target_id = prelude.String.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "DocumentClassifierOutputDataConfig", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        FlywheelStatsS3Prefix = schema.new({
            id = id.from(_N, "DocumentClassifierOutputDataConfig", "FlywheelStatsS3Prefix"),
            type = "string",
            name = "FlywheelStatsS3Prefix",
            target_id = prelude.String.id,
        }),
    },
})

M.VpcConfig = schema.new({
    id = id.from(_N, "VpcConfig"),
    type = "structure",
    members = {
        SecurityGroupIds = schema.new({
            id = id.from(_N, "VpcConfig", "SecurityGroupIds"),
            type = "list",
            name = "SecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subnets = schema.new({
            id = id.from(_N, "VpcConfig", "Subnets"),
            type = "list",
            name = "Subnets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateDocumentClassifierInput = schema.new({
    id = id.from(_N, "CreateDocumentClassifierRequest"),
    type = "structure",
    members = {
        DocumentClassifierName = schema.new({
            id = id.from(_N, "CreateDocumentClassifierInput", "DocumentClassifierName"),
            type = "string",
            name = "DocumentClassifierName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VersionName = schema.new({
            id = id.from(_N, "CreateDocumentClassifierInput", "VersionName"),
            type = "string",
            name = "VersionName",
            target_id = prelude.String.id,
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "CreateDocumentClassifierInput", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateDocumentClassifierInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        InputDataConfig = schema.new({
            id = id.from(_N, "CreateDocumentClassifierInput", "InputDataConfig"),
            type = "structure",
            name = "InputDataConfig",
            target_id = id.from(_N, "DocumentClassifierInputDataConfig"),
            target = M.DocumentClassifierInputDataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OutputDataConfig = schema.new({
            id = id.from(_N, "CreateDocumentClassifierInput", "OutputDataConfig"),
            type = "structure",
            name = "OutputDataConfig",
            target_id = id.from(_N, "DocumentClassifierOutputDataConfig"),
            target = M.DocumentClassifierOutputDataConfig,
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateDocumentClassifierInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "CreateDocumentClassifierInput", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VolumeKmsKeyId = schema.new({
            id = id.from(_N, "CreateDocumentClassifierInput", "VolumeKmsKeyId"),
            type = "string",
            name = "VolumeKmsKeyId",
            target_id = prelude.String.id,
        }),
        VpcConfig = schema.new({
            id = id.from(_N, "CreateDocumentClassifierInput", "VpcConfig"),
            type = "structure",
            name = "VpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        Mode = schema.new({
            id = id.from(_N, "CreateDocumentClassifierInput", "Mode"),
            type = "string",
            name = "Mode",
            target_id = prelude.String.id,
        }),
        ModelKmsKeyId = schema.new({
            id = id.from(_N, "CreateDocumentClassifierInput", "ModelKmsKeyId"),
            type = "string",
            name = "ModelKmsKeyId",
            target_id = prelude.String.id,
        }),
        ModelPolicy = schema.new({
            id = id.from(_N, "CreateDocumentClassifierInput", "ModelPolicy"),
            type = "string",
            name = "ModelPolicy",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDocumentClassifierOutput = schema.new({
    id = id.from(_N, "CreateDocumentClassifierResponse"),
    type = "structure",
    members = {
        DocumentClassifierArn = schema.new({
            id = id.from(_N, "CreateDocumentClassifierOutput", "DocumentClassifierArn"),
            type = "string",
            name = "DocumentClassifierArn",
            target_id = prelude.String.id,
        }),
    },
})

M.KmsKeyValidationException = schema.new({
    id = id.from(_N, "KmsKeyValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "KmsKeyValidationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateEndpointInput = schema.new({
    id = id.from(_N, "CreateEndpointRequest"),
    type = "structure",
    members = {
        EndpointName = schema.new({
            id = id.from(_N, "CreateEndpointInput", "EndpointName"),
            type = "string",
            name = "EndpointName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ModelArn = schema.new({
            id = id.from(_N, "CreateEndpointInput", "ModelArn"),
            type = "string",
            name = "ModelArn",
            target_id = prelude.String.id,
        }),
        DesiredInferenceUnits = schema.new({
            id = id.from(_N, "CreateEndpointInput", "DesiredInferenceUnits"),
            type = "integer",
            name = "DesiredInferenceUnits",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateEndpointInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateEndpointInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "CreateEndpointInput", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
        }),
        FlywheelArn = schema.new({
            id = id.from(_N, "CreateEndpointInput", "FlywheelArn"),
            type = "string",
            name = "FlywheelArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateEndpointOutput = schema.new({
    id = id.from(_N, "CreateEndpointResponse"),
    type = "structure",
    members = {
        EndpointArn = schema.new({
            id = id.from(_N, "CreateEndpointOutput", "EndpointArn"),
            type = "string",
            name = "EndpointArn",
            target_id = prelude.String.id,
        }),
        ModelArn = schema.new({
            id = id.from(_N, "CreateEndpointOutput", "ModelArn"),
            type = "string",
            name = "ModelArn",
            target_id = prelude.String.id,
        }),
    },
})

M.EntityRecognizerAnnotations = schema.new({
    id = id.from(_N, "EntityRecognizerAnnotations"),
    type = "structure",
    members = {
        S3Uri = schema.new({
            id = id.from(_N, "EntityRecognizerAnnotations", "S3Uri"),
            type = "string",
            name = "S3Uri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TestS3Uri = schema.new({
            id = id.from(_N, "EntityRecognizerAnnotations", "TestS3Uri"),
            type = "string",
            name = "TestS3Uri",
            target_id = prelude.String.id,
        }),
    },
})

M.EntityRecognizerDocuments = schema.new({
    id = id.from(_N, "EntityRecognizerDocuments"),
    type = "structure",
    members = {
        S3Uri = schema.new({
            id = id.from(_N, "EntityRecognizerDocuments", "S3Uri"),
            type = "string",
            name = "S3Uri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TestS3Uri = schema.new({
            id = id.from(_N, "EntityRecognizerDocuments", "TestS3Uri"),
            type = "string",
            name = "TestS3Uri",
            target_id = prelude.String.id,
        }),
        InputFormat = schema.new({
            id = id.from(_N, "EntityRecognizerDocuments", "InputFormat"),
            type = "string",
            name = "InputFormat",
            target_id = prelude.String.id,
        }),
    },
})

M.EntityRecognizerEntityList = schema.new({
    id = id.from(_N, "EntityRecognizerEntityList"),
    type = "structure",
    members = {
        S3Uri = schema.new({
            id = id.from(_N, "EntityRecognizerEntityList", "S3Uri"),
            type = "string",
            name = "S3Uri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EntityTypesListItem = schema.new({
    id = id.from(_N, "EntityTypesListItem"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "EntityTypesListItem", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EntityRecognizerInputDataConfig = schema.new({
    id = id.from(_N, "EntityRecognizerInputDataConfig"),
    type = "structure",
    members = {
        DataFormat = schema.new({
            id = id.from(_N, "EntityRecognizerInputDataConfig", "DataFormat"),
            type = "string",
            name = "DataFormat",
            target_id = prelude.String.id,
        }),
        EntityTypes = schema.new({
            id = id.from(_N, "EntityRecognizerInputDataConfig", "EntityTypes"),
            type = "list",
            name = "EntityTypes",
            target_id = prelude.Document.id,
            list_member = M.EntityTypesListItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Documents = schema.new({
            id = id.from(_N, "EntityRecognizerInputDataConfig", "Documents"),
            type = "structure",
            name = "Documents",
            target_id = id.from(_N, "EntityRecognizerDocuments"),
            target = M.EntityRecognizerDocuments,
        }),
        Annotations = schema.new({
            id = id.from(_N, "EntityRecognizerInputDataConfig", "Annotations"),
            type = "structure",
            name = "Annotations",
            target_id = id.from(_N, "EntityRecognizerAnnotations"),
            target = M.EntityRecognizerAnnotations,
        }),
        EntityList = schema.new({
            id = id.from(_N, "EntityRecognizerInputDataConfig", "EntityList"),
            type = "structure",
            name = "EntityList",
            target_id = id.from(_N, "EntityRecognizerEntityList"),
            target = M.EntityRecognizerEntityList,
        }),
        AugmentedManifests = schema.new({
            id = id.from(_N, "EntityRecognizerInputDataConfig", "AugmentedManifests"),
            type = "list",
            name = "AugmentedManifests",
            target_id = prelude.Document.id,
            list_member = M.AugmentedManifestsListItem,
        }),
    },
})

M.CreateEntityRecognizerInput = schema.new({
    id = id.from(_N, "CreateEntityRecognizerRequest"),
    type = "structure",
    members = {
        RecognizerName = schema.new({
            id = id.from(_N, "CreateEntityRecognizerInput", "RecognizerName"),
            type = "string",
            name = "RecognizerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VersionName = schema.new({
            id = id.from(_N, "CreateEntityRecognizerInput", "VersionName"),
            type = "string",
            name = "VersionName",
            target_id = prelude.String.id,
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "CreateEntityRecognizerInput", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateEntityRecognizerInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        InputDataConfig = schema.new({
            id = id.from(_N, "CreateEntityRecognizerInput", "InputDataConfig"),
            type = "structure",
            name = "InputDataConfig",
            target_id = id.from(_N, "EntityRecognizerInputDataConfig"),
            target = M.EntityRecognizerInputDataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateEntityRecognizerInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "CreateEntityRecognizerInput", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VolumeKmsKeyId = schema.new({
            id = id.from(_N, "CreateEntityRecognizerInput", "VolumeKmsKeyId"),
            type = "string",
            name = "VolumeKmsKeyId",
            target_id = prelude.String.id,
        }),
        VpcConfig = schema.new({
            id = id.from(_N, "CreateEntityRecognizerInput", "VpcConfig"),
            type = "structure",
            name = "VpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        ModelKmsKeyId = schema.new({
            id = id.from(_N, "CreateEntityRecognizerInput", "ModelKmsKeyId"),
            type = "string",
            name = "ModelKmsKeyId",
            target_id = prelude.String.id,
        }),
        ModelPolicy = schema.new({
            id = id.from(_N, "CreateEntityRecognizerInput", "ModelPolicy"),
            type = "string",
            name = "ModelPolicy",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateEntityRecognizerOutput = schema.new({
    id = id.from(_N, "CreateEntityRecognizerResponse"),
    type = "structure",
    members = {
        EntityRecognizerArn = schema.new({
            id = id.from(_N, "CreateEntityRecognizerOutput", "EntityRecognizerArn"),
            type = "string",
            name = "EntityRecognizerArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DataSecurityConfig = schema.new({
    id = id.from(_N, "DataSecurityConfig"),
    type = "structure",
    members = {
        ModelKmsKeyId = schema.new({
            id = id.from(_N, "DataSecurityConfig", "ModelKmsKeyId"),
            type = "string",
            name = "ModelKmsKeyId",
            target_id = prelude.String.id,
        }),
        VolumeKmsKeyId = schema.new({
            id = id.from(_N, "DataSecurityConfig", "VolumeKmsKeyId"),
            type = "string",
            name = "VolumeKmsKeyId",
            target_id = prelude.String.id,
        }),
        DataLakeKmsKeyId = schema.new({
            id = id.from(_N, "DataSecurityConfig", "DataLakeKmsKeyId"),
            type = "string",
            name = "DataLakeKmsKeyId",
            target_id = prelude.String.id,
        }),
        VpcConfig = schema.new({
            id = id.from(_N, "DataSecurityConfig", "VpcConfig"),
            type = "structure",
            name = "VpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
    },
})

M.DocumentClassificationConfig = schema.new({
    id = id.from(_N, "DocumentClassificationConfig"),
    type = "structure",
    members = {
        Mode = schema.new({
            id = id.from(_N, "DocumentClassificationConfig", "Mode"),
            type = "string",
            name = "Mode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Labels = schema.new({
            id = id.from(_N, "DocumentClassificationConfig", "Labels"),
            type = "list",
            name = "Labels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.EntityRecognitionConfig = schema.new({
    id = id.from(_N, "EntityRecognitionConfig"),
    type = "structure",
    members = {
        EntityTypes = schema.new({
            id = id.from(_N, "EntityRecognitionConfig", "EntityTypes"),
            type = "list",
            name = "EntityTypes",
            target_id = prelude.Document.id,
            list_member = M.EntityTypesListItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TaskConfig = schema.new({
    id = id.from(_N, "TaskConfig"),
    type = "structure",
    members = {
        LanguageCode = schema.new({
            id = id.from(_N, "TaskConfig", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DocumentClassificationConfig = schema.new({
            id = id.from(_N, "TaskConfig", "DocumentClassificationConfig"),
            type = "structure",
            name = "DocumentClassificationConfig",
            target_id = id.from(_N, "DocumentClassificationConfig"),
            target = M.DocumentClassificationConfig,
        }),
        EntityRecognitionConfig = schema.new({
            id = id.from(_N, "TaskConfig", "EntityRecognitionConfig"),
            type = "structure",
            name = "EntityRecognitionConfig",
            target_id = id.from(_N, "EntityRecognitionConfig"),
            target = M.EntityRecognitionConfig,
        }),
    },
})

M.CreateFlywheelInput = schema.new({
    id = id.from(_N, "CreateFlywheelRequest"),
    type = "structure",
    members = {
        FlywheelName = schema.new({
            id = id.from(_N, "CreateFlywheelInput", "FlywheelName"),
            type = "string",
            name = "FlywheelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ActiveModelArn = schema.new({
            id = id.from(_N, "CreateFlywheelInput", "ActiveModelArn"),
            type = "string",
            name = "ActiveModelArn",
            target_id = prelude.String.id,
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "CreateFlywheelInput", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TaskConfig = schema.new({
            id = id.from(_N, "CreateFlywheelInput", "TaskConfig"),
            type = "structure",
            name = "TaskConfig",
            target_id = id.from(_N, "TaskConfig"),
            target = M.TaskConfig,
        }),
        ModelType = schema.new({
            id = id.from(_N, "CreateFlywheelInput", "ModelType"),
            type = "string",
            name = "ModelType",
            target_id = prelude.String.id,
        }),
        DataLakeS3Uri = schema.new({
            id = id.from(_N, "CreateFlywheelInput", "DataLakeS3Uri"),
            type = "string",
            name = "DataLakeS3Uri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DataSecurityConfig = schema.new({
            id = id.from(_N, "CreateFlywheelInput", "DataSecurityConfig"),
            type = "structure",
            name = "DataSecurityConfig",
            target_id = id.from(_N, "DataSecurityConfig"),
            target = M.DataSecurityConfig,
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "CreateFlywheelInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateFlywheelInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateFlywheelOutput = schema.new({
    id = id.from(_N, "CreateFlywheelResponse"),
    type = "structure",
    members = {
        FlywheelArn = schema.new({
            id = id.from(_N, "CreateFlywheelOutput", "FlywheelArn"),
            type = "string",
            name = "FlywheelArn",
            target_id = prelude.String.id,
        }),
        ActiveModelArn = schema.new({
            id = id.from(_N, "CreateFlywheelOutput", "ActiveModelArn"),
            type = "string",
            name = "ActiveModelArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteDocumentClassifierInput = schema.new({
    id = id.from(_N, "DeleteDocumentClassifierRequest"),
    type = "structure",
    members = {
        DocumentClassifierArn = schema.new({
            id = id.from(_N, "DeleteDocumentClassifierInput", "DocumentClassifierArn"),
            type = "string",
            name = "DocumentClassifierArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDocumentClassifierOutput = schema.new({
    id = id.from(_N, "DeleteDocumentClassifierResponse"),
    type = "structure",
})

M.DeleteEndpointInput = schema.new({
    id = id.from(_N, "DeleteEndpointRequest"),
    type = "structure",
    members = {
        EndpointArn = schema.new({
            id = id.from(_N, "DeleteEndpointInput", "EndpointArn"),
            type = "string",
            name = "EndpointArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteEndpointOutput = schema.new({
    id = id.from(_N, "DeleteEndpointResponse"),
    type = "structure",
})

M.DeleteEntityRecognizerInput = schema.new({
    id = id.from(_N, "DeleteEntityRecognizerRequest"),
    type = "structure",
    members = {
        EntityRecognizerArn = schema.new({
            id = id.from(_N, "DeleteEntityRecognizerInput", "EntityRecognizerArn"),
            type = "string",
            name = "EntityRecognizerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteEntityRecognizerOutput = schema.new({
    id = id.from(_N, "DeleteEntityRecognizerResponse"),
    type = "structure",
})

M.DeleteFlywheelInput = schema.new({
    id = id.from(_N, "DeleteFlywheelRequest"),
    type = "structure",
    members = {
        FlywheelArn = schema.new({
            id = id.from(_N, "DeleteFlywheelInput", "FlywheelArn"),
            type = "string",
            name = "FlywheelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteFlywheelOutput = schema.new({
    id = id.from(_N, "DeleteFlywheelResponse"),
    type = "structure",
})

M.DeleteResourcePolicyInput = schema.new({
    id = id.from(_N, "DeleteResourcePolicyRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "DeleteResourcePolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyRevisionId = schema.new({
            id = id.from(_N, "DeleteResourcePolicyInput", "PolicyRevisionId"),
            type = "string",
            name = "PolicyRevisionId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteResourcePolicyOutput = schema.new({
    id = id.from(_N, "DeleteResourcePolicyResponse"),
    type = "structure",
})

M.DescribeDatasetInput = schema.new({
    id = id.from(_N, "DescribeDatasetRequest"),
    type = "structure",
    members = {
        DatasetArn = schema.new({
            id = id.from(_N, "DescribeDatasetInput", "DatasetArn"),
            type = "string",
            name = "DatasetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DatasetProperties = schema.new({
    id = id.from(_N, "DatasetProperties"),
    type = "structure",
    members = {
        DatasetArn = schema.new({
            id = id.from(_N, "DatasetProperties", "DatasetArn"),
            type = "string",
            name = "DatasetArn",
            target_id = prelude.String.id,
        }),
        DatasetName = schema.new({
            id = id.from(_N, "DatasetProperties", "DatasetName"),
            type = "string",
            name = "DatasetName",
            target_id = prelude.String.id,
        }),
        DatasetType = schema.new({
            id = id.from(_N, "DatasetProperties", "DatasetType"),
            type = "string",
            name = "DatasetType",
            target_id = prelude.String.id,
        }),
        DatasetS3Uri = schema.new({
            id = id.from(_N, "DatasetProperties", "DatasetS3Uri"),
            type = "string",
            name = "DatasetS3Uri",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "DatasetProperties", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DatasetProperties", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "DatasetProperties", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        NumberOfDocuments = schema.new({
            id = id.from(_N, "DatasetProperties", "NumberOfDocuments"),
            type = "long",
            name = "NumberOfDocuments",
            target_id = prelude.Long.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "DatasetProperties", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "DatasetProperties", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeDatasetOutput = schema.new({
    id = id.from(_N, "DescribeDatasetResponse"),
    type = "structure",
    members = {
        DatasetProperties = schema.new({
            id = id.from(_N, "DescribeDatasetOutput", "DatasetProperties"),
            type = "structure",
            name = "DatasetProperties",
            target_id = id.from(_N, "DatasetProperties"),
            target = M.DatasetProperties,
        }),
    },
})

M.DescribeDocumentClassificationJobInput = schema.new({
    id = id.from(_N, "DescribeDocumentClassificationJobRequest"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "DescribeDocumentClassificationJobInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InputDataConfig = schema.new({
    id = id.from(_N, "InputDataConfig"),
    type = "structure",
    members = {
        S3Uri = schema.new({
            id = id.from(_N, "InputDataConfig", "S3Uri"),
            type = "string",
            name = "S3Uri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InputFormat = schema.new({
            id = id.from(_N, "InputDataConfig", "InputFormat"),
            type = "string",
            name = "InputFormat",
            target_id = prelude.String.id,
        }),
        DocumentReaderConfig = schema.new({
            id = id.from(_N, "InputDataConfig", "DocumentReaderConfig"),
            type = "structure",
            name = "DocumentReaderConfig",
            target_id = id.from(_N, "DocumentReaderConfig"),
            target = M.DocumentReaderConfig,
        }),
    },
})

M.OutputDataConfig = schema.new({
    id = id.from(_N, "OutputDataConfig"),
    type = "structure",
    members = {
        S3Uri = schema.new({
            id = id.from(_N, "OutputDataConfig", "S3Uri"),
            type = "string",
            name = "S3Uri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "OutputDataConfig", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.DocumentClassificationJobProperties = schema.new({
    id = id.from(_N, "DocumentClassificationJobProperties"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "DocumentClassificationJobProperties", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobArn = schema.new({
            id = id.from(_N, "DocumentClassificationJobProperties", "JobArn"),
            type = "string",
            name = "JobArn",
            target_id = prelude.String.id,
        }),
        JobName = schema.new({
            id = id.from(_N, "DocumentClassificationJobProperties", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "DocumentClassificationJobProperties", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "DocumentClassificationJobProperties", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        SubmitTime = schema.new({
            id = id.from(_N, "DocumentClassificationJobProperties", "SubmitTime"),
            type = "timestamp",
            name = "SubmitTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "DocumentClassificationJobProperties", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        DocumentClassifierArn = schema.new({
            id = id.from(_N, "DocumentClassificationJobProperties", "DocumentClassifierArn"),
            type = "string",
            name = "DocumentClassifierArn",
            target_id = prelude.String.id,
        }),
        InputDataConfig = schema.new({
            id = id.from(_N, "DocumentClassificationJobProperties", "InputDataConfig"),
            type = "structure",
            name = "InputDataConfig",
            target_id = id.from(_N, "InputDataConfig"),
            target = M.InputDataConfig,
        }),
        OutputDataConfig = schema.new({
            id = id.from(_N, "DocumentClassificationJobProperties", "OutputDataConfig"),
            type = "structure",
            name = "OutputDataConfig",
            target_id = id.from(_N, "OutputDataConfig"),
            target = M.OutputDataConfig,
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "DocumentClassificationJobProperties", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
        }),
        VolumeKmsKeyId = schema.new({
            id = id.from(_N, "DocumentClassificationJobProperties", "VolumeKmsKeyId"),
            type = "string",
            name = "VolumeKmsKeyId",
            target_id = prelude.String.id,
        }),
        VpcConfig = schema.new({
            id = id.from(_N, "DocumentClassificationJobProperties", "VpcConfig"),
            type = "structure",
            name = "VpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        FlywheelArn = schema.new({
            id = id.from(_N, "DocumentClassificationJobProperties", "FlywheelArn"),
            type = "string",
            name = "FlywheelArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDocumentClassificationJobOutput = schema.new({
    id = id.from(_N, "DescribeDocumentClassificationJobResponse"),
    type = "structure",
    members = {
        DocumentClassificationJobProperties = schema.new({
            id = id.from(_N, "DescribeDocumentClassificationJobOutput", "DocumentClassificationJobProperties"),
            type = "structure",
            name = "DocumentClassificationJobProperties",
            target_id = id.from(_N, "DocumentClassificationJobProperties"),
            target = M.DocumentClassificationJobProperties,
        }),
    },
})

M.JobNotFoundException = schema.new({
    id = id.from(_N, "JobNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "JobNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDocumentClassifierInput = schema.new({
    id = id.from(_N, "DescribeDocumentClassifierRequest"),
    type = "structure",
    members = {
        DocumentClassifierArn = schema.new({
            id = id.from(_N, "DescribeDocumentClassifierInput", "DocumentClassifierArn"),
            type = "string",
            name = "DocumentClassifierArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DocumentClassifierProperties = schema.new({
    id = id.from(_N, "DocumentClassifierProperties"),
    type = "structure",
    members = {
        DocumentClassifierArn = schema.new({
            id = id.from(_N, "DocumentClassifierProperties", "DocumentClassifierArn"),
            type = "string",
            name = "DocumentClassifierArn",
            target_id = prelude.String.id,
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "DocumentClassifierProperties", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DocumentClassifierProperties", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "DocumentClassifierProperties", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        SubmitTime = schema.new({
            id = id.from(_N, "DocumentClassifierProperties", "SubmitTime"),
            type = "timestamp",
            name = "SubmitTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "DocumentClassifierProperties", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        TrainingStartTime = schema.new({
            id = id.from(_N, "DocumentClassifierProperties", "TrainingStartTime"),
            type = "timestamp",
            name = "TrainingStartTime",
            target_id = prelude.Timestamp.id,
        }),
        TrainingEndTime = schema.new({
            id = id.from(_N, "DocumentClassifierProperties", "TrainingEndTime"),
            type = "timestamp",
            name = "TrainingEndTime",
            target_id = prelude.Timestamp.id,
        }),
        InputDataConfig = schema.new({
            id = id.from(_N, "DocumentClassifierProperties", "InputDataConfig"),
            type = "structure",
            name = "InputDataConfig",
            target_id = id.from(_N, "DocumentClassifierInputDataConfig"),
            target = M.DocumentClassifierInputDataConfig,
        }),
        OutputDataConfig = schema.new({
            id = id.from(_N, "DocumentClassifierProperties", "OutputDataConfig"),
            type = "structure",
            name = "OutputDataConfig",
            target_id = id.from(_N, "DocumentClassifierOutputDataConfig"),
            target = M.DocumentClassifierOutputDataConfig,
        }),
        ClassifierMetadata = schema.new({
            id = id.from(_N, "DocumentClassifierProperties", "ClassifierMetadata"),
            type = "structure",
            name = "ClassifierMetadata",
            target_id = id.from(_N, "ClassifierMetadata"),
            target = M.ClassifierMetadata,
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "DocumentClassifierProperties", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
        }),
        VolumeKmsKeyId = schema.new({
            id = id.from(_N, "DocumentClassifierProperties", "VolumeKmsKeyId"),
            type = "string",
            name = "VolumeKmsKeyId",
            target_id = prelude.String.id,
        }),
        VpcConfig = schema.new({
            id = id.from(_N, "DocumentClassifierProperties", "VpcConfig"),
            type = "structure",
            name = "VpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        Mode = schema.new({
            id = id.from(_N, "DocumentClassifierProperties", "Mode"),
            type = "string",
            name = "Mode",
            target_id = prelude.String.id,
        }),
        ModelKmsKeyId = schema.new({
            id = id.from(_N, "DocumentClassifierProperties", "ModelKmsKeyId"),
            type = "string",
            name = "ModelKmsKeyId",
            target_id = prelude.String.id,
        }),
        VersionName = schema.new({
            id = id.from(_N, "DocumentClassifierProperties", "VersionName"),
            type = "string",
            name = "VersionName",
            target_id = prelude.String.id,
        }),
        SourceModelArn = schema.new({
            id = id.from(_N, "DocumentClassifierProperties", "SourceModelArn"),
            type = "string",
            name = "SourceModelArn",
            target_id = prelude.String.id,
        }),
        FlywheelArn = schema.new({
            id = id.from(_N, "DocumentClassifierProperties", "FlywheelArn"),
            type = "string",
            name = "FlywheelArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDocumentClassifierOutput = schema.new({
    id = id.from(_N, "DescribeDocumentClassifierResponse"),
    type = "structure",
    members = {
        DocumentClassifierProperties = schema.new({
            id = id.from(_N, "DescribeDocumentClassifierOutput", "DocumentClassifierProperties"),
            type = "structure",
            name = "DocumentClassifierProperties",
            target_id = id.from(_N, "DocumentClassifierProperties"),
            target = M.DocumentClassifierProperties,
        }),
    },
})

M.DescribeDominantLanguageDetectionJobInput = schema.new({
    id = id.from(_N, "DescribeDominantLanguageDetectionJobRequest"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "DescribeDominantLanguageDetectionJobInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DominantLanguageDetectionJobProperties = schema.new({
    id = id.from(_N, "DominantLanguageDetectionJobProperties"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "DominantLanguageDetectionJobProperties", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobArn = schema.new({
            id = id.from(_N, "DominantLanguageDetectionJobProperties", "JobArn"),
            type = "string",
            name = "JobArn",
            target_id = prelude.String.id,
        }),
        JobName = schema.new({
            id = id.from(_N, "DominantLanguageDetectionJobProperties", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "DominantLanguageDetectionJobProperties", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "DominantLanguageDetectionJobProperties", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        SubmitTime = schema.new({
            id = id.from(_N, "DominantLanguageDetectionJobProperties", "SubmitTime"),
            type = "timestamp",
            name = "SubmitTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "DominantLanguageDetectionJobProperties", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        InputDataConfig = schema.new({
            id = id.from(_N, "DominantLanguageDetectionJobProperties", "InputDataConfig"),
            type = "structure",
            name = "InputDataConfig",
            target_id = id.from(_N, "InputDataConfig"),
            target = M.InputDataConfig,
        }),
        OutputDataConfig = schema.new({
            id = id.from(_N, "DominantLanguageDetectionJobProperties", "OutputDataConfig"),
            type = "structure",
            name = "OutputDataConfig",
            target_id = id.from(_N, "OutputDataConfig"),
            target = M.OutputDataConfig,
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "DominantLanguageDetectionJobProperties", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
        }),
        VolumeKmsKeyId = schema.new({
            id = id.from(_N, "DominantLanguageDetectionJobProperties", "VolumeKmsKeyId"),
            type = "string",
            name = "VolumeKmsKeyId",
            target_id = prelude.String.id,
        }),
        VpcConfig = schema.new({
            id = id.from(_N, "DominantLanguageDetectionJobProperties", "VpcConfig"),
            type = "structure",
            name = "VpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
    },
})

M.DescribeDominantLanguageDetectionJobOutput = schema.new({
    id = id.from(_N, "DescribeDominantLanguageDetectionJobResponse"),
    type = "structure",
    members = {
        DominantLanguageDetectionJobProperties = schema.new({
            id = id.from(_N, "DescribeDominantLanguageDetectionJobOutput", "DominantLanguageDetectionJobProperties"),
            type = "structure",
            name = "DominantLanguageDetectionJobProperties",
            target_id = id.from(_N, "DominantLanguageDetectionJobProperties"),
            target = M.DominantLanguageDetectionJobProperties,
        }),
    },
})

M.DescribeEndpointInput = schema.new({
    id = id.from(_N, "DescribeEndpointRequest"),
    type = "structure",
    members = {
        EndpointArn = schema.new({
            id = id.from(_N, "DescribeEndpointInput", "EndpointArn"),
            type = "string",
            name = "EndpointArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EndpointProperties = schema.new({
    id = id.from(_N, "EndpointProperties"),
    type = "structure",
    members = {
        EndpointArn = schema.new({
            id = id.from(_N, "EndpointProperties", "EndpointArn"),
            type = "string",
            name = "EndpointArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "EndpointProperties", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "EndpointProperties", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        ModelArn = schema.new({
            id = id.from(_N, "EndpointProperties", "ModelArn"),
            type = "string",
            name = "ModelArn",
            target_id = prelude.String.id,
        }),
        DesiredModelArn = schema.new({
            id = id.from(_N, "EndpointProperties", "DesiredModelArn"),
            type = "string",
            name = "DesiredModelArn",
            target_id = prelude.String.id,
        }),
        DesiredInferenceUnits = schema.new({
            id = id.from(_N, "EndpointProperties", "DesiredInferenceUnits"),
            type = "integer",
            name = "DesiredInferenceUnits",
            target_id = prelude.Integer.id,
        }),
        CurrentInferenceUnits = schema.new({
            id = id.from(_N, "EndpointProperties", "CurrentInferenceUnits"),
            type = "integer",
            name = "CurrentInferenceUnits",
            target_id = prelude.Integer.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "EndpointProperties", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "EndpointProperties", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "EndpointProperties", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
        }),
        DesiredDataAccessRoleArn = schema.new({
            id = id.from(_N, "EndpointProperties", "DesiredDataAccessRoleArn"),
            type = "string",
            name = "DesiredDataAccessRoleArn",
            target_id = prelude.String.id,
        }),
        FlywheelArn = schema.new({
            id = id.from(_N, "EndpointProperties", "FlywheelArn"),
            type = "string",
            name = "FlywheelArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeEndpointOutput = schema.new({
    id = id.from(_N, "DescribeEndpointResponse"),
    type = "structure",
    members = {
        EndpointProperties = schema.new({
            id = id.from(_N, "DescribeEndpointOutput", "EndpointProperties"),
            type = "structure",
            name = "EndpointProperties",
            target_id = id.from(_N, "EndpointProperties"),
            target = M.EndpointProperties,
        }),
    },
})

M.DescribeEntitiesDetectionJobInput = schema.new({
    id = id.from(_N, "DescribeEntitiesDetectionJobRequest"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "DescribeEntitiesDetectionJobInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EntitiesDetectionJobProperties = schema.new({
    id = id.from(_N, "EntitiesDetectionJobProperties"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "EntitiesDetectionJobProperties", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobArn = schema.new({
            id = id.from(_N, "EntitiesDetectionJobProperties", "JobArn"),
            type = "string",
            name = "JobArn",
            target_id = prelude.String.id,
        }),
        JobName = schema.new({
            id = id.from(_N, "EntitiesDetectionJobProperties", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "EntitiesDetectionJobProperties", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "EntitiesDetectionJobProperties", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        SubmitTime = schema.new({
            id = id.from(_N, "EntitiesDetectionJobProperties", "SubmitTime"),
            type = "timestamp",
            name = "SubmitTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "EntitiesDetectionJobProperties", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        EntityRecognizerArn = schema.new({
            id = id.from(_N, "EntitiesDetectionJobProperties", "EntityRecognizerArn"),
            type = "string",
            name = "EntityRecognizerArn",
            target_id = prelude.String.id,
        }),
        InputDataConfig = schema.new({
            id = id.from(_N, "EntitiesDetectionJobProperties", "InputDataConfig"),
            type = "structure",
            name = "InputDataConfig",
            target_id = id.from(_N, "InputDataConfig"),
            target = M.InputDataConfig,
        }),
        OutputDataConfig = schema.new({
            id = id.from(_N, "EntitiesDetectionJobProperties", "OutputDataConfig"),
            type = "structure",
            name = "OutputDataConfig",
            target_id = id.from(_N, "OutputDataConfig"),
            target = M.OutputDataConfig,
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "EntitiesDetectionJobProperties", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "EntitiesDetectionJobProperties", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
        }),
        VolumeKmsKeyId = schema.new({
            id = id.from(_N, "EntitiesDetectionJobProperties", "VolumeKmsKeyId"),
            type = "string",
            name = "VolumeKmsKeyId",
            target_id = prelude.String.id,
        }),
        VpcConfig = schema.new({
            id = id.from(_N, "EntitiesDetectionJobProperties", "VpcConfig"),
            type = "structure",
            name = "VpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        FlywheelArn = schema.new({
            id = id.from(_N, "EntitiesDetectionJobProperties", "FlywheelArn"),
            type = "string",
            name = "FlywheelArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeEntitiesDetectionJobOutput = schema.new({
    id = id.from(_N, "DescribeEntitiesDetectionJobResponse"),
    type = "structure",
    members = {
        EntitiesDetectionJobProperties = schema.new({
            id = id.from(_N, "DescribeEntitiesDetectionJobOutput", "EntitiesDetectionJobProperties"),
            type = "structure",
            name = "EntitiesDetectionJobProperties",
            target_id = id.from(_N, "EntitiesDetectionJobProperties"),
            target = M.EntitiesDetectionJobProperties,
        }),
    },
})

M.DescribeEntityRecognizerInput = schema.new({
    id = id.from(_N, "DescribeEntityRecognizerRequest"),
    type = "structure",
    members = {
        EntityRecognizerArn = schema.new({
            id = id.from(_N, "DescribeEntityRecognizerInput", "EntityRecognizerArn"),
            type = "string",
            name = "EntityRecognizerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EntityRecognizerOutputDataConfig = schema.new({
    id = id.from(_N, "EntityRecognizerOutputDataConfig"),
    type = "structure",
    members = {
        FlywheelStatsS3Prefix = schema.new({
            id = id.from(_N, "EntityRecognizerOutputDataConfig", "FlywheelStatsS3Prefix"),
            type = "string",
            name = "FlywheelStatsS3Prefix",
            target_id = prelude.String.id,
        }),
    },
})

M.EntityTypesEvaluationMetrics = schema.new({
    id = id.from(_N, "EntityTypesEvaluationMetrics"),
    type = "structure",
    members = {
        Precision = schema.new({
            id = id.from(_N, "EntityTypesEvaluationMetrics", "Precision"),
            type = "double",
            name = "Precision",
            target_id = prelude.Double.id,
        }),
        Recall = schema.new({
            id = id.from(_N, "EntityTypesEvaluationMetrics", "Recall"),
            type = "double",
            name = "Recall",
            target_id = prelude.Double.id,
        }),
        F1Score = schema.new({
            id = id.from(_N, "EntityTypesEvaluationMetrics", "F1Score"),
            type = "double",
            name = "F1Score",
            target_id = prelude.Double.id,
        }),
    },
})

M.EntityRecognizerMetadataEntityTypesListItem = schema.new({
    id = id.from(_N, "EntityRecognizerMetadataEntityTypesListItem"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "EntityRecognizerMetadataEntityTypesListItem", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        EvaluationMetrics = schema.new({
            id = id.from(_N, "EntityRecognizerMetadataEntityTypesListItem", "EvaluationMetrics"),
            type = "structure",
            name = "EvaluationMetrics",
            target_id = id.from(_N, "EntityTypesEvaluationMetrics"),
            target = M.EntityTypesEvaluationMetrics,
        }),
        NumberOfTrainMentions = schema.new({
            id = id.from(_N, "EntityRecognizerMetadataEntityTypesListItem", "NumberOfTrainMentions"),
            type = "integer",
            name = "NumberOfTrainMentions",
            target_id = prelude.Integer.id,
        }),
    },
})

M.EntityRecognizerEvaluationMetrics = schema.new({
    id = id.from(_N, "EntityRecognizerEvaluationMetrics"),
    type = "structure",
    members = {
        Precision = schema.new({
            id = id.from(_N, "EntityRecognizerEvaluationMetrics", "Precision"),
            type = "double",
            name = "Precision",
            target_id = prelude.Double.id,
        }),
        Recall = schema.new({
            id = id.from(_N, "EntityRecognizerEvaluationMetrics", "Recall"),
            type = "double",
            name = "Recall",
            target_id = prelude.Double.id,
        }),
        F1Score = schema.new({
            id = id.from(_N, "EntityRecognizerEvaluationMetrics", "F1Score"),
            type = "double",
            name = "F1Score",
            target_id = prelude.Double.id,
        }),
    },
})

M.EntityRecognizerMetadata = schema.new({
    id = id.from(_N, "EntityRecognizerMetadata"),
    type = "structure",
    members = {
        NumberOfTrainedDocuments = schema.new({
            id = id.from(_N, "EntityRecognizerMetadata", "NumberOfTrainedDocuments"),
            type = "integer",
            name = "NumberOfTrainedDocuments",
            target_id = prelude.Integer.id,
        }),
        NumberOfTestDocuments = schema.new({
            id = id.from(_N, "EntityRecognizerMetadata", "NumberOfTestDocuments"),
            type = "integer",
            name = "NumberOfTestDocuments",
            target_id = prelude.Integer.id,
        }),
        EvaluationMetrics = schema.new({
            id = id.from(_N, "EntityRecognizerMetadata", "EvaluationMetrics"),
            type = "structure",
            name = "EvaluationMetrics",
            target_id = id.from(_N, "EntityRecognizerEvaluationMetrics"),
            target = M.EntityRecognizerEvaluationMetrics,
        }),
        EntityTypes = schema.new({
            id = id.from(_N, "EntityRecognizerMetadata", "EntityTypes"),
            type = "list",
            name = "EntityTypes",
            target_id = prelude.Document.id,
            list_member = M.EntityRecognizerMetadataEntityTypesListItem,
        }),
    },
})

M.EntityRecognizerProperties = schema.new({
    id = id.from(_N, "EntityRecognizerProperties"),
    type = "structure",
    members = {
        EntityRecognizerArn = schema.new({
            id = id.from(_N, "EntityRecognizerProperties", "EntityRecognizerArn"),
            type = "string",
            name = "EntityRecognizerArn",
            target_id = prelude.String.id,
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "EntityRecognizerProperties", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "EntityRecognizerProperties", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "EntityRecognizerProperties", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        SubmitTime = schema.new({
            id = id.from(_N, "EntityRecognizerProperties", "SubmitTime"),
            type = "timestamp",
            name = "SubmitTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "EntityRecognizerProperties", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        TrainingStartTime = schema.new({
            id = id.from(_N, "EntityRecognizerProperties", "TrainingStartTime"),
            type = "timestamp",
            name = "TrainingStartTime",
            target_id = prelude.Timestamp.id,
        }),
        TrainingEndTime = schema.new({
            id = id.from(_N, "EntityRecognizerProperties", "TrainingEndTime"),
            type = "timestamp",
            name = "TrainingEndTime",
            target_id = prelude.Timestamp.id,
        }),
        InputDataConfig = schema.new({
            id = id.from(_N, "EntityRecognizerProperties", "InputDataConfig"),
            type = "structure",
            name = "InputDataConfig",
            target_id = id.from(_N, "EntityRecognizerInputDataConfig"),
            target = M.EntityRecognizerInputDataConfig,
        }),
        RecognizerMetadata = schema.new({
            id = id.from(_N, "EntityRecognizerProperties", "RecognizerMetadata"),
            type = "structure",
            name = "RecognizerMetadata",
            target_id = id.from(_N, "EntityRecognizerMetadata"),
            target = M.EntityRecognizerMetadata,
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "EntityRecognizerProperties", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
        }),
        VolumeKmsKeyId = schema.new({
            id = id.from(_N, "EntityRecognizerProperties", "VolumeKmsKeyId"),
            type = "string",
            name = "VolumeKmsKeyId",
            target_id = prelude.String.id,
        }),
        VpcConfig = schema.new({
            id = id.from(_N, "EntityRecognizerProperties", "VpcConfig"),
            type = "structure",
            name = "VpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        ModelKmsKeyId = schema.new({
            id = id.from(_N, "EntityRecognizerProperties", "ModelKmsKeyId"),
            type = "string",
            name = "ModelKmsKeyId",
            target_id = prelude.String.id,
        }),
        VersionName = schema.new({
            id = id.from(_N, "EntityRecognizerProperties", "VersionName"),
            type = "string",
            name = "VersionName",
            target_id = prelude.String.id,
        }),
        SourceModelArn = schema.new({
            id = id.from(_N, "EntityRecognizerProperties", "SourceModelArn"),
            type = "string",
            name = "SourceModelArn",
            target_id = prelude.String.id,
        }),
        FlywheelArn = schema.new({
            id = id.from(_N, "EntityRecognizerProperties", "FlywheelArn"),
            type = "string",
            name = "FlywheelArn",
            target_id = prelude.String.id,
        }),
        OutputDataConfig = schema.new({
            id = id.from(_N, "EntityRecognizerProperties", "OutputDataConfig"),
            type = "structure",
            name = "OutputDataConfig",
            target_id = id.from(_N, "EntityRecognizerOutputDataConfig"),
            target = M.EntityRecognizerOutputDataConfig,
        }),
    },
})

M.DescribeEntityRecognizerOutput = schema.new({
    id = id.from(_N, "DescribeEntityRecognizerResponse"),
    type = "structure",
    members = {
        EntityRecognizerProperties = schema.new({
            id = id.from(_N, "DescribeEntityRecognizerOutput", "EntityRecognizerProperties"),
            type = "structure",
            name = "EntityRecognizerProperties",
            target_id = id.from(_N, "EntityRecognizerProperties"),
            target = M.EntityRecognizerProperties,
        }),
    },
})

M.DescribeEventsDetectionJobInput = schema.new({
    id = id.from(_N, "DescribeEventsDetectionJobRequest"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "DescribeEventsDetectionJobInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EventsDetectionJobProperties = schema.new({
    id = id.from(_N, "EventsDetectionJobProperties"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "EventsDetectionJobProperties", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobArn = schema.new({
            id = id.from(_N, "EventsDetectionJobProperties", "JobArn"),
            type = "string",
            name = "JobArn",
            target_id = prelude.String.id,
        }),
        JobName = schema.new({
            id = id.from(_N, "EventsDetectionJobProperties", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "EventsDetectionJobProperties", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "EventsDetectionJobProperties", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        SubmitTime = schema.new({
            id = id.from(_N, "EventsDetectionJobProperties", "SubmitTime"),
            type = "timestamp",
            name = "SubmitTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "EventsDetectionJobProperties", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        InputDataConfig = schema.new({
            id = id.from(_N, "EventsDetectionJobProperties", "InputDataConfig"),
            type = "structure",
            name = "InputDataConfig",
            target_id = id.from(_N, "InputDataConfig"),
            target = M.InputDataConfig,
        }),
        OutputDataConfig = schema.new({
            id = id.from(_N, "EventsDetectionJobProperties", "OutputDataConfig"),
            type = "structure",
            name = "OutputDataConfig",
            target_id = id.from(_N, "OutputDataConfig"),
            target = M.OutputDataConfig,
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "EventsDetectionJobProperties", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "EventsDetectionJobProperties", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
        }),
        TargetEventTypes = schema.new({
            id = id.from(_N, "EventsDetectionJobProperties", "TargetEventTypes"),
            type = "list",
            name = "TargetEventTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeEventsDetectionJobOutput = schema.new({
    id = id.from(_N, "DescribeEventsDetectionJobResponse"),
    type = "structure",
    members = {
        EventsDetectionJobProperties = schema.new({
            id = id.from(_N, "DescribeEventsDetectionJobOutput", "EventsDetectionJobProperties"),
            type = "structure",
            name = "EventsDetectionJobProperties",
            target_id = id.from(_N, "EventsDetectionJobProperties"),
            target = M.EventsDetectionJobProperties,
        }),
    },
})

M.DescribeFlywheelInput = schema.new({
    id = id.from(_N, "DescribeFlywheelRequest"),
    type = "structure",
    members = {
        FlywheelArn = schema.new({
            id = id.from(_N, "DescribeFlywheelInput", "FlywheelArn"),
            type = "string",
            name = "FlywheelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FlywheelProperties = schema.new({
    id = id.from(_N, "FlywheelProperties"),
    type = "structure",
    members = {
        FlywheelArn = schema.new({
            id = id.from(_N, "FlywheelProperties", "FlywheelArn"),
            type = "string",
            name = "FlywheelArn",
            target_id = prelude.String.id,
        }),
        ActiveModelArn = schema.new({
            id = id.from(_N, "FlywheelProperties", "ActiveModelArn"),
            type = "string",
            name = "ActiveModelArn",
            target_id = prelude.String.id,
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "FlywheelProperties", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
        }),
        TaskConfig = schema.new({
            id = id.from(_N, "FlywheelProperties", "TaskConfig"),
            type = "structure",
            name = "TaskConfig",
            target_id = id.from(_N, "TaskConfig"),
            target = M.TaskConfig,
        }),
        DataLakeS3Uri = schema.new({
            id = id.from(_N, "FlywheelProperties", "DataLakeS3Uri"),
            type = "string",
            name = "DataLakeS3Uri",
            target_id = prelude.String.id,
        }),
        DataSecurityConfig = schema.new({
            id = id.from(_N, "FlywheelProperties", "DataSecurityConfig"),
            type = "structure",
            name = "DataSecurityConfig",
            target_id = id.from(_N, "DataSecurityConfig"),
            target = M.DataSecurityConfig,
        }),
        Status = schema.new({
            id = id.from(_N, "FlywheelProperties", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ModelType = schema.new({
            id = id.from(_N, "FlywheelProperties", "ModelType"),
            type = "string",
            name = "ModelType",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "FlywheelProperties", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "FlywheelProperties", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "FlywheelProperties", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
        }),
        LatestFlywheelIteration = schema.new({
            id = id.from(_N, "FlywheelProperties", "LatestFlywheelIteration"),
            type = "string",
            name = "LatestFlywheelIteration",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeFlywheelOutput = schema.new({
    id = id.from(_N, "DescribeFlywheelResponse"),
    type = "structure",
    members = {
        FlywheelProperties = schema.new({
            id = id.from(_N, "DescribeFlywheelOutput", "FlywheelProperties"),
            type = "structure",
            name = "FlywheelProperties",
            target_id = id.from(_N, "FlywheelProperties"),
            target = M.FlywheelProperties,
        }),
    },
})

M.DescribeFlywheelIterationInput = schema.new({
    id = id.from(_N, "DescribeFlywheelIterationRequest"),
    type = "structure",
    members = {
        FlywheelArn = schema.new({
            id = id.from(_N, "DescribeFlywheelIterationInput", "FlywheelArn"),
            type = "string",
            name = "FlywheelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FlywheelIterationId = schema.new({
            id = id.from(_N, "DescribeFlywheelIterationInput", "FlywheelIterationId"),
            type = "string",
            name = "FlywheelIterationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FlywheelModelEvaluationMetrics = schema.new({
    id = id.from(_N, "FlywheelModelEvaluationMetrics"),
    type = "structure",
    members = {
        AverageF1Score = schema.new({
            id = id.from(_N, "FlywheelModelEvaluationMetrics", "AverageF1Score"),
            type = "double",
            name = "AverageF1Score",
            target_id = prelude.Double.id,
        }),
        AveragePrecision = schema.new({
            id = id.from(_N, "FlywheelModelEvaluationMetrics", "AveragePrecision"),
            type = "double",
            name = "AveragePrecision",
            target_id = prelude.Double.id,
        }),
        AverageRecall = schema.new({
            id = id.from(_N, "FlywheelModelEvaluationMetrics", "AverageRecall"),
            type = "double",
            name = "AverageRecall",
            target_id = prelude.Double.id,
        }),
        AverageAccuracy = schema.new({
            id = id.from(_N, "FlywheelModelEvaluationMetrics", "AverageAccuracy"),
            type = "double",
            name = "AverageAccuracy",
            target_id = prelude.Double.id,
        }),
    },
})

M.FlywheelIterationProperties = schema.new({
    id = id.from(_N, "FlywheelIterationProperties"),
    type = "structure",
    members = {
        FlywheelArn = schema.new({
            id = id.from(_N, "FlywheelIterationProperties", "FlywheelArn"),
            type = "string",
            name = "FlywheelArn",
            target_id = prelude.String.id,
        }),
        FlywheelIterationId = schema.new({
            id = id.from(_N, "FlywheelIterationProperties", "FlywheelIterationId"),
            type = "string",
            name = "FlywheelIterationId",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "FlywheelIterationProperties", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "FlywheelIterationProperties", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        Status = schema.new({
            id = id.from(_N, "FlywheelIterationProperties", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "FlywheelIterationProperties", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        EvaluatedModelArn = schema.new({
            id = id.from(_N, "FlywheelIterationProperties", "EvaluatedModelArn"),
            type = "string",
            name = "EvaluatedModelArn",
            target_id = prelude.String.id,
        }),
        EvaluatedModelMetrics = schema.new({
            id = id.from(_N, "FlywheelIterationProperties", "EvaluatedModelMetrics"),
            type = "structure",
            name = "EvaluatedModelMetrics",
            target_id = id.from(_N, "FlywheelModelEvaluationMetrics"),
            target = M.FlywheelModelEvaluationMetrics,
        }),
        TrainedModelArn = schema.new({
            id = id.from(_N, "FlywheelIterationProperties", "TrainedModelArn"),
            type = "string",
            name = "TrainedModelArn",
            target_id = prelude.String.id,
        }),
        TrainedModelMetrics = schema.new({
            id = id.from(_N, "FlywheelIterationProperties", "TrainedModelMetrics"),
            type = "structure",
            name = "TrainedModelMetrics",
            target_id = id.from(_N, "FlywheelModelEvaluationMetrics"),
            target = M.FlywheelModelEvaluationMetrics,
        }),
        EvaluationManifestS3Prefix = schema.new({
            id = id.from(_N, "FlywheelIterationProperties", "EvaluationManifestS3Prefix"),
            type = "string",
            name = "EvaluationManifestS3Prefix",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeFlywheelIterationOutput = schema.new({
    id = id.from(_N, "DescribeFlywheelIterationResponse"),
    type = "structure",
    members = {
        FlywheelIterationProperties = schema.new({
            id = id.from(_N, "DescribeFlywheelIterationOutput", "FlywheelIterationProperties"),
            type = "structure",
            name = "FlywheelIterationProperties",
            target_id = id.from(_N, "FlywheelIterationProperties"),
            target = M.FlywheelIterationProperties,
        }),
    },
})

M.DescribeKeyPhrasesDetectionJobInput = schema.new({
    id = id.from(_N, "DescribeKeyPhrasesDetectionJobRequest"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "DescribeKeyPhrasesDetectionJobInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KeyPhrasesDetectionJobProperties = schema.new({
    id = id.from(_N, "KeyPhrasesDetectionJobProperties"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "KeyPhrasesDetectionJobProperties", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobArn = schema.new({
            id = id.from(_N, "KeyPhrasesDetectionJobProperties", "JobArn"),
            type = "string",
            name = "JobArn",
            target_id = prelude.String.id,
        }),
        JobName = schema.new({
            id = id.from(_N, "KeyPhrasesDetectionJobProperties", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "KeyPhrasesDetectionJobProperties", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "KeyPhrasesDetectionJobProperties", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        SubmitTime = schema.new({
            id = id.from(_N, "KeyPhrasesDetectionJobProperties", "SubmitTime"),
            type = "timestamp",
            name = "SubmitTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "KeyPhrasesDetectionJobProperties", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        InputDataConfig = schema.new({
            id = id.from(_N, "KeyPhrasesDetectionJobProperties", "InputDataConfig"),
            type = "structure",
            name = "InputDataConfig",
            target_id = id.from(_N, "InputDataConfig"),
            target = M.InputDataConfig,
        }),
        OutputDataConfig = schema.new({
            id = id.from(_N, "KeyPhrasesDetectionJobProperties", "OutputDataConfig"),
            type = "structure",
            name = "OutputDataConfig",
            target_id = id.from(_N, "OutputDataConfig"),
            target = M.OutputDataConfig,
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "KeyPhrasesDetectionJobProperties", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "KeyPhrasesDetectionJobProperties", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
        }),
        VolumeKmsKeyId = schema.new({
            id = id.from(_N, "KeyPhrasesDetectionJobProperties", "VolumeKmsKeyId"),
            type = "string",
            name = "VolumeKmsKeyId",
            target_id = prelude.String.id,
        }),
        VpcConfig = schema.new({
            id = id.from(_N, "KeyPhrasesDetectionJobProperties", "VpcConfig"),
            type = "structure",
            name = "VpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
    },
})

M.DescribeKeyPhrasesDetectionJobOutput = schema.new({
    id = id.from(_N, "DescribeKeyPhrasesDetectionJobResponse"),
    type = "structure",
    members = {
        KeyPhrasesDetectionJobProperties = schema.new({
            id = id.from(_N, "DescribeKeyPhrasesDetectionJobOutput", "KeyPhrasesDetectionJobProperties"),
            type = "structure",
            name = "KeyPhrasesDetectionJobProperties",
            target_id = id.from(_N, "KeyPhrasesDetectionJobProperties"),
            target = M.KeyPhrasesDetectionJobProperties,
        }),
    },
})

M.DescribePiiEntitiesDetectionJobInput = schema.new({
    id = id.from(_N, "DescribePiiEntitiesDetectionJobRequest"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "DescribePiiEntitiesDetectionJobInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PiiOutputDataConfig = schema.new({
    id = id.from(_N, "PiiOutputDataConfig"),
    type = "structure",
    members = {
        S3Uri = schema.new({
            id = id.from(_N, "PiiOutputDataConfig", "S3Uri"),
            type = "string",
            name = "S3Uri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "PiiOutputDataConfig", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.RedactionConfig = schema.new({
    id = id.from(_N, "RedactionConfig"),
    type = "structure",
    members = {
        PiiEntityTypes = schema.new({
            id = id.from(_N, "RedactionConfig", "PiiEntityTypes"),
            type = "list",
            name = "PiiEntityTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MaskMode = schema.new({
            id = id.from(_N, "RedactionConfig", "MaskMode"),
            type = "string",
            name = "MaskMode",
            target_id = prelude.String.id,
        }),
        MaskCharacter = schema.new({
            id = id.from(_N, "RedactionConfig", "MaskCharacter"),
            type = "string",
            name = "MaskCharacter",
            target_id = prelude.String.id,
        }),
    },
})

M.PiiEntitiesDetectionJobProperties = schema.new({
    id = id.from(_N, "PiiEntitiesDetectionJobProperties"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "PiiEntitiesDetectionJobProperties", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobArn = schema.new({
            id = id.from(_N, "PiiEntitiesDetectionJobProperties", "JobArn"),
            type = "string",
            name = "JobArn",
            target_id = prelude.String.id,
        }),
        JobName = schema.new({
            id = id.from(_N, "PiiEntitiesDetectionJobProperties", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "PiiEntitiesDetectionJobProperties", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "PiiEntitiesDetectionJobProperties", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        SubmitTime = schema.new({
            id = id.from(_N, "PiiEntitiesDetectionJobProperties", "SubmitTime"),
            type = "timestamp",
            name = "SubmitTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "PiiEntitiesDetectionJobProperties", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        InputDataConfig = schema.new({
            id = id.from(_N, "PiiEntitiesDetectionJobProperties", "InputDataConfig"),
            type = "structure",
            name = "InputDataConfig",
            target_id = id.from(_N, "InputDataConfig"),
            target = M.InputDataConfig,
        }),
        OutputDataConfig = schema.new({
            id = id.from(_N, "PiiEntitiesDetectionJobProperties", "OutputDataConfig"),
            type = "structure",
            name = "OutputDataConfig",
            target_id = id.from(_N, "PiiOutputDataConfig"),
            target = M.PiiOutputDataConfig,
        }),
        RedactionConfig = schema.new({
            id = id.from(_N, "PiiEntitiesDetectionJobProperties", "RedactionConfig"),
            type = "structure",
            name = "RedactionConfig",
            target_id = id.from(_N, "RedactionConfig"),
            target = M.RedactionConfig,
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "PiiEntitiesDetectionJobProperties", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "PiiEntitiesDetectionJobProperties", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
        }),
        Mode = schema.new({
            id = id.from(_N, "PiiEntitiesDetectionJobProperties", "Mode"),
            type = "string",
            name = "Mode",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribePiiEntitiesDetectionJobOutput = schema.new({
    id = id.from(_N, "DescribePiiEntitiesDetectionJobResponse"),
    type = "structure",
    members = {
        PiiEntitiesDetectionJobProperties = schema.new({
            id = id.from(_N, "DescribePiiEntitiesDetectionJobOutput", "PiiEntitiesDetectionJobProperties"),
            type = "structure",
            name = "PiiEntitiesDetectionJobProperties",
            target_id = id.from(_N, "PiiEntitiesDetectionJobProperties"),
            target = M.PiiEntitiesDetectionJobProperties,
        }),
    },
})

M.DescribeResourcePolicyInput = schema.new({
    id = id.from(_N, "DescribeResourcePolicyRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "DescribeResourcePolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeResourcePolicyOutput = schema.new({
    id = id.from(_N, "DescribeResourcePolicyResponse"),
    type = "structure",
    members = {
        ResourcePolicy = schema.new({
            id = id.from(_N, "DescribeResourcePolicyOutput", "ResourcePolicy"),
            type = "string",
            name = "ResourcePolicy",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "DescribeResourcePolicyOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "DescribeResourcePolicyOutput", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
        }),
        PolicyRevisionId = schema.new({
            id = id.from(_N, "DescribeResourcePolicyOutput", "PolicyRevisionId"),
            type = "string",
            name = "PolicyRevisionId",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSentimentDetectionJobInput = schema.new({
    id = id.from(_N, "DescribeSentimentDetectionJobRequest"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "DescribeSentimentDetectionJobInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SentimentDetectionJobProperties = schema.new({
    id = id.from(_N, "SentimentDetectionJobProperties"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "SentimentDetectionJobProperties", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobArn = schema.new({
            id = id.from(_N, "SentimentDetectionJobProperties", "JobArn"),
            type = "string",
            name = "JobArn",
            target_id = prelude.String.id,
        }),
        JobName = schema.new({
            id = id.from(_N, "SentimentDetectionJobProperties", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "SentimentDetectionJobProperties", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "SentimentDetectionJobProperties", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        SubmitTime = schema.new({
            id = id.from(_N, "SentimentDetectionJobProperties", "SubmitTime"),
            type = "timestamp",
            name = "SubmitTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "SentimentDetectionJobProperties", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        InputDataConfig = schema.new({
            id = id.from(_N, "SentimentDetectionJobProperties", "InputDataConfig"),
            type = "structure",
            name = "InputDataConfig",
            target_id = id.from(_N, "InputDataConfig"),
            target = M.InputDataConfig,
        }),
        OutputDataConfig = schema.new({
            id = id.from(_N, "SentimentDetectionJobProperties", "OutputDataConfig"),
            type = "structure",
            name = "OutputDataConfig",
            target_id = id.from(_N, "OutputDataConfig"),
            target = M.OutputDataConfig,
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "SentimentDetectionJobProperties", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "SentimentDetectionJobProperties", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
        }),
        VolumeKmsKeyId = schema.new({
            id = id.from(_N, "SentimentDetectionJobProperties", "VolumeKmsKeyId"),
            type = "string",
            name = "VolumeKmsKeyId",
            target_id = prelude.String.id,
        }),
        VpcConfig = schema.new({
            id = id.from(_N, "SentimentDetectionJobProperties", "VpcConfig"),
            type = "structure",
            name = "VpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
    },
})

M.DescribeSentimentDetectionJobOutput = schema.new({
    id = id.from(_N, "DescribeSentimentDetectionJobResponse"),
    type = "structure",
    members = {
        SentimentDetectionJobProperties = schema.new({
            id = id.from(_N, "DescribeSentimentDetectionJobOutput", "SentimentDetectionJobProperties"),
            type = "structure",
            name = "SentimentDetectionJobProperties",
            target_id = id.from(_N, "SentimentDetectionJobProperties"),
            target = M.SentimentDetectionJobProperties,
        }),
    },
})

M.DescribeTargetedSentimentDetectionJobInput = schema.new({
    id = id.from(_N, "DescribeTargetedSentimentDetectionJobRequest"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "DescribeTargetedSentimentDetectionJobInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TargetedSentimentDetectionJobProperties = schema.new({
    id = id.from(_N, "TargetedSentimentDetectionJobProperties"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "TargetedSentimentDetectionJobProperties", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobArn = schema.new({
            id = id.from(_N, "TargetedSentimentDetectionJobProperties", "JobArn"),
            type = "string",
            name = "JobArn",
            target_id = prelude.String.id,
        }),
        JobName = schema.new({
            id = id.from(_N, "TargetedSentimentDetectionJobProperties", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "TargetedSentimentDetectionJobProperties", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "TargetedSentimentDetectionJobProperties", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        SubmitTime = schema.new({
            id = id.from(_N, "TargetedSentimentDetectionJobProperties", "SubmitTime"),
            type = "timestamp",
            name = "SubmitTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "TargetedSentimentDetectionJobProperties", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        InputDataConfig = schema.new({
            id = id.from(_N, "TargetedSentimentDetectionJobProperties", "InputDataConfig"),
            type = "structure",
            name = "InputDataConfig",
            target_id = id.from(_N, "InputDataConfig"),
            target = M.InputDataConfig,
        }),
        OutputDataConfig = schema.new({
            id = id.from(_N, "TargetedSentimentDetectionJobProperties", "OutputDataConfig"),
            type = "structure",
            name = "OutputDataConfig",
            target_id = id.from(_N, "OutputDataConfig"),
            target = M.OutputDataConfig,
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "TargetedSentimentDetectionJobProperties", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "TargetedSentimentDetectionJobProperties", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
        }),
        VolumeKmsKeyId = schema.new({
            id = id.from(_N, "TargetedSentimentDetectionJobProperties", "VolumeKmsKeyId"),
            type = "string",
            name = "VolumeKmsKeyId",
            target_id = prelude.String.id,
        }),
        VpcConfig = schema.new({
            id = id.from(_N, "TargetedSentimentDetectionJobProperties", "VpcConfig"),
            type = "structure",
            name = "VpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
    },
})

M.DescribeTargetedSentimentDetectionJobOutput = schema.new({
    id = id.from(_N, "DescribeTargetedSentimentDetectionJobResponse"),
    type = "structure",
    members = {
        TargetedSentimentDetectionJobProperties = schema.new({
            id = id.from(_N, "DescribeTargetedSentimentDetectionJobOutput", "TargetedSentimentDetectionJobProperties"),
            type = "structure",
            name = "TargetedSentimentDetectionJobProperties",
            target_id = id.from(_N, "TargetedSentimentDetectionJobProperties"),
            target = M.TargetedSentimentDetectionJobProperties,
        }),
    },
})

M.DescribeTopicsDetectionJobInput = schema.new({
    id = id.from(_N, "DescribeTopicsDetectionJobRequest"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "DescribeTopicsDetectionJobInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TopicsDetectionJobProperties = schema.new({
    id = id.from(_N, "TopicsDetectionJobProperties"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "TopicsDetectionJobProperties", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobArn = schema.new({
            id = id.from(_N, "TopicsDetectionJobProperties", "JobArn"),
            type = "string",
            name = "JobArn",
            target_id = prelude.String.id,
        }),
        JobName = schema.new({
            id = id.from(_N, "TopicsDetectionJobProperties", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "TopicsDetectionJobProperties", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "TopicsDetectionJobProperties", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        SubmitTime = schema.new({
            id = id.from(_N, "TopicsDetectionJobProperties", "SubmitTime"),
            type = "timestamp",
            name = "SubmitTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "TopicsDetectionJobProperties", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        InputDataConfig = schema.new({
            id = id.from(_N, "TopicsDetectionJobProperties", "InputDataConfig"),
            type = "structure",
            name = "InputDataConfig",
            target_id = id.from(_N, "InputDataConfig"),
            target = M.InputDataConfig,
        }),
        OutputDataConfig = schema.new({
            id = id.from(_N, "TopicsDetectionJobProperties", "OutputDataConfig"),
            type = "structure",
            name = "OutputDataConfig",
            target_id = id.from(_N, "OutputDataConfig"),
            target = M.OutputDataConfig,
        }),
        NumberOfTopics = schema.new({
            id = id.from(_N, "TopicsDetectionJobProperties", "NumberOfTopics"),
            type = "integer",
            name = "NumberOfTopics",
            target_id = prelude.Integer.id,
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "TopicsDetectionJobProperties", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
        }),
        VolumeKmsKeyId = schema.new({
            id = id.from(_N, "TopicsDetectionJobProperties", "VolumeKmsKeyId"),
            type = "string",
            name = "VolumeKmsKeyId",
            target_id = prelude.String.id,
        }),
        VpcConfig = schema.new({
            id = id.from(_N, "TopicsDetectionJobProperties", "VpcConfig"),
            type = "structure",
            name = "VpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
    },
})

M.DescribeTopicsDetectionJobOutput = schema.new({
    id = id.from(_N, "DescribeTopicsDetectionJobResponse"),
    type = "structure",
    members = {
        TopicsDetectionJobProperties = schema.new({
            id = id.from(_N, "DescribeTopicsDetectionJobOutput", "TopicsDetectionJobProperties"),
            type = "structure",
            name = "TopicsDetectionJobProperties",
            target_id = id.from(_N, "TopicsDetectionJobProperties"),
            target = M.TopicsDetectionJobProperties,
        }),
    },
})

M.DetectDominantLanguageInput = schema.new({
    id = id.from(_N, "DetectDominantLanguageRequest"),
    type = "structure",
    members = {
        Text = schema.new({
            id = id.from(_N, "DetectDominantLanguageInput", "Text"),
            type = "string",
            name = "Text",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DetectDominantLanguageOutput = schema.new({
    id = id.from(_N, "DetectDominantLanguageResponse"),
    type = "structure",
    members = {
        Languages = schema.new({
            id = id.from(_N, "DetectDominantLanguageOutput", "Languages"),
            type = "list",
            name = "Languages",
            target_id = prelude.Document.id,
            list_member = M.DominantLanguage,
        }),
    },
})

M.DetectEntitiesInput = schema.new({
    id = id.from(_N, "DetectEntitiesRequest"),
    type = "structure",
    members = {
        Text = schema.new({
            id = id.from(_N, "DetectEntitiesInput", "Text"),
            type = "string",
            name = "Text",
            target_id = prelude.String.id,
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "DetectEntitiesInput", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
        }),
        EndpointArn = schema.new({
            id = id.from(_N, "DetectEntitiesInput", "EndpointArn"),
            type = "string",
            name = "EndpointArn",
            target_id = prelude.String.id,
        }),
        Bytes = schema.new({
            id = id.from(_N, "DetectEntitiesInput", "Bytes"),
            type = "blob",
            name = "Bytes",
            target_id = prelude.Blob.id,
        }),
        DocumentReaderConfig = schema.new({
            id = id.from(_N, "DetectEntitiesInput", "DocumentReaderConfig"),
            type = "structure",
            name = "DocumentReaderConfig",
            target_id = id.from(_N, "DocumentReaderConfig"),
            target = M.DocumentReaderConfig,
        }),
    },
})

M.DetectEntitiesOutput = schema.new({
    id = id.from(_N, "DetectEntitiesResponse"),
    type = "structure",
    members = {
        Entities = schema.new({
            id = id.from(_N, "DetectEntitiesOutput", "Entities"),
            type = "list",
            name = "Entities",
            target_id = prelude.Document.id,
            list_member = M.Entity,
        }),
        DocumentMetadata = schema.new({
            id = id.from(_N, "DetectEntitiesOutput", "DocumentMetadata"),
            type = "structure",
            name = "DocumentMetadata",
            target_id = id.from(_N, "DocumentMetadata"),
            target = M.DocumentMetadata,
        }),
        DocumentType = schema.new({
            id = id.from(_N, "DetectEntitiesOutput", "DocumentType"),
            type = "list",
            name = "DocumentType",
            target_id = prelude.Document.id,
            list_member = M.DocumentTypeListItem,
        }),
        Blocks = schema.new({
            id = id.from(_N, "DetectEntitiesOutput", "Blocks"),
            type = "list",
            name = "Blocks",
            target_id = prelude.Document.id,
            list_member = M.Block,
        }),
        Errors = schema.new({
            id = id.from(_N, "DetectEntitiesOutput", "Errors"),
            type = "list",
            name = "Errors",
            target_id = prelude.Document.id,
            list_member = M.ErrorsListItem,
        }),
    },
})

M.DetectKeyPhrasesInput = schema.new({
    id = id.from(_N, "DetectKeyPhrasesRequest"),
    type = "structure",
    members = {
        Text = schema.new({
            id = id.from(_N, "DetectKeyPhrasesInput", "Text"),
            type = "string",
            name = "Text",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "DetectKeyPhrasesInput", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DetectKeyPhrasesOutput = schema.new({
    id = id.from(_N, "DetectKeyPhrasesResponse"),
    type = "structure",
    members = {
        KeyPhrases = schema.new({
            id = id.from(_N, "DetectKeyPhrasesOutput", "KeyPhrases"),
            type = "list",
            name = "KeyPhrases",
            target_id = prelude.Document.id,
            list_member = M.KeyPhrase,
        }),
    },
})

M.DetectPiiEntitiesInput = schema.new({
    id = id.from(_N, "DetectPiiEntitiesRequest"),
    type = "structure",
    members = {
        Text = schema.new({
            id = id.from(_N, "DetectPiiEntitiesInput", "Text"),
            type = "string",
            name = "Text",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "DetectPiiEntitiesInput", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PiiEntity = schema.new({
    id = id.from(_N, "PiiEntity"),
    type = "structure",
    members = {
        Score = schema.new({
            id = id.from(_N, "PiiEntity", "Score"),
            type = "float",
            name = "Score",
            target_id = prelude.Float.id,
        }),
        Type = schema.new({
            id = id.from(_N, "PiiEntity", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        BeginOffset = schema.new({
            id = id.from(_N, "PiiEntity", "BeginOffset"),
            type = "integer",
            name = "BeginOffset",
            target_id = prelude.Integer.id,
        }),
        EndOffset = schema.new({
            id = id.from(_N, "PiiEntity", "EndOffset"),
            type = "integer",
            name = "EndOffset",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DetectPiiEntitiesOutput = schema.new({
    id = id.from(_N, "DetectPiiEntitiesResponse"),
    type = "structure",
    members = {
        Entities = schema.new({
            id = id.from(_N, "DetectPiiEntitiesOutput", "Entities"),
            type = "list",
            name = "Entities",
            target_id = prelude.Document.id,
            list_member = M.PiiEntity,
        }),
    },
})

M.DetectSentimentInput = schema.new({
    id = id.from(_N, "DetectSentimentRequest"),
    type = "structure",
    members = {
        Text = schema.new({
            id = id.from(_N, "DetectSentimentInput", "Text"),
            type = "string",
            name = "Text",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "DetectSentimentInput", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DetectSentimentOutput = schema.new({
    id = id.from(_N, "DetectSentimentResponse"),
    type = "structure",
    members = {
        Sentiment = schema.new({
            id = id.from(_N, "DetectSentimentOutput", "Sentiment"),
            type = "string",
            name = "Sentiment",
            target_id = prelude.String.id,
        }),
        SentimentScore = schema.new({
            id = id.from(_N, "DetectSentimentOutput", "SentimentScore"),
            type = "structure",
            name = "SentimentScore",
            target_id = id.from(_N, "SentimentScore"),
            target = M.SentimentScore,
        }),
    },
})

M.DetectSyntaxInput = schema.new({
    id = id.from(_N, "DetectSyntaxRequest"),
    type = "structure",
    members = {
        Text = schema.new({
            id = id.from(_N, "DetectSyntaxInput", "Text"),
            type = "string",
            name = "Text",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "DetectSyntaxInput", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DetectSyntaxOutput = schema.new({
    id = id.from(_N, "DetectSyntaxResponse"),
    type = "structure",
    members = {
        SyntaxTokens = schema.new({
            id = id.from(_N, "DetectSyntaxOutput", "SyntaxTokens"),
            type = "list",
            name = "SyntaxTokens",
            target_id = prelude.Document.id,
            list_member = M.SyntaxToken,
        }),
    },
})

M.DetectTargetedSentimentInput = schema.new({
    id = id.from(_N, "DetectTargetedSentimentRequest"),
    type = "structure",
    members = {
        Text = schema.new({
            id = id.from(_N, "DetectTargetedSentimentInput", "Text"),
            type = "string",
            name = "Text",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "DetectTargetedSentimentInput", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DetectTargetedSentimentOutput = schema.new({
    id = id.from(_N, "DetectTargetedSentimentResponse"),
    type = "structure",
    members = {
        Entities = schema.new({
            id = id.from(_N, "DetectTargetedSentimentOutput", "Entities"),
            type = "list",
            name = "Entities",
            target_id = prelude.Document.id,
            list_member = M.TargetedSentimentEntity,
        }),
    },
})

M.TextSegment = schema.new({
    id = id.from(_N, "TextSegment"),
    type = "structure",
    members = {
        Text = schema.new({
            id = id.from(_N, "TextSegment", "Text"),
            type = "string",
            name = "Text",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DetectToxicContentInput = schema.new({
    id = id.from(_N, "DetectToxicContentRequest"),
    type = "structure",
    members = {
        TextSegments = schema.new({
            id = id.from(_N, "DetectToxicContentInput", "TextSegments"),
            type = "list",
            name = "TextSegments",
            target_id = prelude.Document.id,
            list_member = M.TextSegment,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "DetectToxicContentInput", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ToxicContent = schema.new({
    id = id.from(_N, "ToxicContent"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ToxicContent", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Score = schema.new({
            id = id.from(_N, "ToxicContent", "Score"),
            type = "float",
            name = "Score",
            target_id = prelude.Float.id,
        }),
    },
})

M.ToxicLabels = schema.new({
    id = id.from(_N, "ToxicLabels"),
    type = "structure",
    members = {
        Labels = schema.new({
            id = id.from(_N, "ToxicLabels", "Labels"),
            type = "list",
            name = "Labels",
            target_id = prelude.Document.id,
            list_member = M.ToxicContent,
        }),
        Toxicity = schema.new({
            id = id.from(_N, "ToxicLabels", "Toxicity"),
            type = "float",
            name = "Toxicity",
            target_id = prelude.Float.id,
        }),
    },
})

M.DetectToxicContentOutput = schema.new({
    id = id.from(_N, "DetectToxicContentResponse"),
    type = "structure",
    members = {
        ResultList = schema.new({
            id = id.from(_N, "DetectToxicContentOutput", "ResultList"),
            type = "list",
            name = "ResultList",
            target_id = prelude.Document.id,
            list_member = M.ToxicLabels,
        }),
    },
})

M.ImportModelInput = schema.new({
    id = id.from(_N, "ImportModelRequest"),
    type = "structure",
    members = {
        SourceModelArn = schema.new({
            id = id.from(_N, "ImportModelInput", "SourceModelArn"),
            type = "string",
            name = "SourceModelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ModelName = schema.new({
            id = id.from(_N, "ImportModelInput", "ModelName"),
            type = "string",
            name = "ModelName",
            target_id = prelude.String.id,
        }),
        VersionName = schema.new({
            id = id.from(_N, "ImportModelInput", "VersionName"),
            type = "string",
            name = "VersionName",
            target_id = prelude.String.id,
        }),
        ModelKmsKeyId = schema.new({
            id = id.from(_N, "ImportModelInput", "ModelKmsKeyId"),
            type = "string",
            name = "ModelKmsKeyId",
            target_id = prelude.String.id,
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "ImportModelInput", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "ImportModelInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.ImportModelOutput = schema.new({
    id = id.from(_N, "ImportModelResponse"),
    type = "structure",
    members = {
        ModelArn = schema.new({
            id = id.from(_N, "ImportModelOutput", "ModelArn"),
            type = "string",
            name = "ModelArn",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidFilterException = schema.new({
    id = id.from(_N, "InvalidFilterException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidFilterException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DatasetFilter = schema.new({
    id = id.from(_N, "DatasetFilter"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "DatasetFilter", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        DatasetType = schema.new({
            id = id.from(_N, "DatasetFilter", "DatasetType"),
            type = "string",
            name = "DatasetType",
            target_id = prelude.String.id,
        }),
        CreationTimeAfter = schema.new({
            id = id.from(_N, "DatasetFilter", "CreationTimeAfter"),
            type = "timestamp",
            name = "CreationTimeAfter",
            target_id = prelude.Timestamp.id,
        }),
        CreationTimeBefore = schema.new({
            id = id.from(_N, "DatasetFilter", "CreationTimeBefore"),
            type = "timestamp",
            name = "CreationTimeBefore",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListDatasetsInput = schema.new({
    id = id.from(_N, "ListDatasetsRequest"),
    type = "structure",
    members = {
        FlywheelArn = schema.new({
            id = id.from(_N, "ListDatasetsInput", "FlywheelArn"),
            type = "string",
            name = "FlywheelArn",
            target_id = prelude.String.id,
        }),
        Filter = schema.new({
            id = id.from(_N, "ListDatasetsInput", "Filter"),
            type = "structure",
            name = "Filter",
            target_id = id.from(_N, "DatasetFilter"),
            target = M.DatasetFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDatasetsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListDatasetsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListDatasetsOutput = schema.new({
    id = id.from(_N, "ListDatasetsResponse"),
    type = "structure",
    members = {
        DatasetPropertiesList = schema.new({
            id = id.from(_N, "ListDatasetsOutput", "DatasetPropertiesList"),
            type = "list",
            name = "DatasetPropertiesList",
            target_id = prelude.Document.id,
            list_member = M.DatasetProperties,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDatasetsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DocumentClassificationJobFilter = schema.new({
    id = id.from(_N, "DocumentClassificationJobFilter"),
    type = "structure",
    members = {
        JobName = schema.new({
            id = id.from(_N, "DocumentClassificationJobFilter", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "DocumentClassificationJobFilter", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
        SubmitTimeBefore = schema.new({
            id = id.from(_N, "DocumentClassificationJobFilter", "SubmitTimeBefore"),
            type = "timestamp",
            name = "SubmitTimeBefore",
            target_id = prelude.Timestamp.id,
        }),
        SubmitTimeAfter = schema.new({
            id = id.from(_N, "DocumentClassificationJobFilter", "SubmitTimeAfter"),
            type = "timestamp",
            name = "SubmitTimeAfter",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListDocumentClassificationJobsInput = schema.new({
    id = id.from(_N, "ListDocumentClassificationJobsRequest"),
    type = "structure",
    members = {
        Filter = schema.new({
            id = id.from(_N, "ListDocumentClassificationJobsInput", "Filter"),
            type = "structure",
            name = "Filter",
            target_id = id.from(_N, "DocumentClassificationJobFilter"),
            target = M.DocumentClassificationJobFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDocumentClassificationJobsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListDocumentClassificationJobsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListDocumentClassificationJobsOutput = schema.new({
    id = id.from(_N, "ListDocumentClassificationJobsResponse"),
    type = "structure",
    members = {
        DocumentClassificationJobPropertiesList = schema.new({
            id = id.from(_N, "ListDocumentClassificationJobsOutput", "DocumentClassificationJobPropertiesList"),
            type = "list",
            name = "DocumentClassificationJobPropertiesList",
            target_id = prelude.Document.id,
            list_member = M.DocumentClassificationJobProperties,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDocumentClassificationJobsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DocumentClassifierFilter = schema.new({
    id = id.from(_N, "DocumentClassifierFilter"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "DocumentClassifierFilter", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        DocumentClassifierName = schema.new({
            id = id.from(_N, "DocumentClassifierFilter", "DocumentClassifierName"),
            type = "string",
            name = "DocumentClassifierName",
            target_id = prelude.String.id,
        }),
        SubmitTimeBefore = schema.new({
            id = id.from(_N, "DocumentClassifierFilter", "SubmitTimeBefore"),
            type = "timestamp",
            name = "SubmitTimeBefore",
            target_id = prelude.Timestamp.id,
        }),
        SubmitTimeAfter = schema.new({
            id = id.from(_N, "DocumentClassifierFilter", "SubmitTimeAfter"),
            type = "timestamp",
            name = "SubmitTimeAfter",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListDocumentClassifiersInput = schema.new({
    id = id.from(_N, "ListDocumentClassifiersRequest"),
    type = "structure",
    members = {
        Filter = schema.new({
            id = id.from(_N, "ListDocumentClassifiersInput", "Filter"),
            type = "structure",
            name = "Filter",
            target_id = id.from(_N, "DocumentClassifierFilter"),
            target = M.DocumentClassifierFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDocumentClassifiersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListDocumentClassifiersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListDocumentClassifiersOutput = schema.new({
    id = id.from(_N, "ListDocumentClassifiersResponse"),
    type = "structure",
    members = {
        DocumentClassifierPropertiesList = schema.new({
            id = id.from(_N, "ListDocumentClassifiersOutput", "DocumentClassifierPropertiesList"),
            type = "list",
            name = "DocumentClassifierPropertiesList",
            target_id = prelude.Document.id,
            list_member = M.DocumentClassifierProperties,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDocumentClassifiersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDocumentClassifierSummariesInput = schema.new({
    id = id.from(_N, "ListDocumentClassifierSummariesRequest"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListDocumentClassifierSummariesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListDocumentClassifierSummariesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DocumentClassifierSummary = schema.new({
    id = id.from(_N, "DocumentClassifierSummary"),
    type = "structure",
    members = {
        DocumentClassifierName = schema.new({
            id = id.from(_N, "DocumentClassifierSummary", "DocumentClassifierName"),
            type = "string",
            name = "DocumentClassifierName",
            target_id = prelude.String.id,
        }),
        NumberOfVersions = schema.new({
            id = id.from(_N, "DocumentClassifierSummary", "NumberOfVersions"),
            type = "integer",
            name = "NumberOfVersions",
            target_id = prelude.Integer.id,
        }),
        LatestVersionCreatedAt = schema.new({
            id = id.from(_N, "DocumentClassifierSummary", "LatestVersionCreatedAt"),
            type = "timestamp",
            name = "LatestVersionCreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        LatestVersionName = schema.new({
            id = id.from(_N, "DocumentClassifierSummary", "LatestVersionName"),
            type = "string",
            name = "LatestVersionName",
            target_id = prelude.String.id,
        }),
        LatestVersionStatus = schema.new({
            id = id.from(_N, "DocumentClassifierSummary", "LatestVersionStatus"),
            type = "string",
            name = "LatestVersionStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDocumentClassifierSummariesOutput = schema.new({
    id = id.from(_N, "ListDocumentClassifierSummariesResponse"),
    type = "structure",
    members = {
        DocumentClassifierSummariesList = schema.new({
            id = id.from(_N, "ListDocumentClassifierSummariesOutput", "DocumentClassifierSummariesList"),
            type = "list",
            name = "DocumentClassifierSummariesList",
            target_id = prelude.Document.id,
            list_member = M.DocumentClassifierSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDocumentClassifierSummariesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DominantLanguageDetectionJobFilter = schema.new({
    id = id.from(_N, "DominantLanguageDetectionJobFilter"),
    type = "structure",
    members = {
        JobName = schema.new({
            id = id.from(_N, "DominantLanguageDetectionJobFilter", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "DominantLanguageDetectionJobFilter", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
        SubmitTimeBefore = schema.new({
            id = id.from(_N, "DominantLanguageDetectionJobFilter", "SubmitTimeBefore"),
            type = "timestamp",
            name = "SubmitTimeBefore",
            target_id = prelude.Timestamp.id,
        }),
        SubmitTimeAfter = schema.new({
            id = id.from(_N, "DominantLanguageDetectionJobFilter", "SubmitTimeAfter"),
            type = "timestamp",
            name = "SubmitTimeAfter",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListDominantLanguageDetectionJobsInput = schema.new({
    id = id.from(_N, "ListDominantLanguageDetectionJobsRequest"),
    type = "structure",
    members = {
        Filter = schema.new({
            id = id.from(_N, "ListDominantLanguageDetectionJobsInput", "Filter"),
            type = "structure",
            name = "Filter",
            target_id = id.from(_N, "DominantLanguageDetectionJobFilter"),
            target = M.DominantLanguageDetectionJobFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDominantLanguageDetectionJobsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListDominantLanguageDetectionJobsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListDominantLanguageDetectionJobsOutput = schema.new({
    id = id.from(_N, "ListDominantLanguageDetectionJobsResponse"),
    type = "structure",
    members = {
        DominantLanguageDetectionJobPropertiesList = schema.new({
            id = id.from(_N, "ListDominantLanguageDetectionJobsOutput", "DominantLanguageDetectionJobPropertiesList"),
            type = "list",
            name = "DominantLanguageDetectionJobPropertiesList",
            target_id = prelude.Document.id,
            list_member = M.DominantLanguageDetectionJobProperties,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDominantLanguageDetectionJobsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.EndpointFilter = schema.new({
    id = id.from(_N, "EndpointFilter"),
    type = "structure",
    members = {
        ModelArn = schema.new({
            id = id.from(_N, "EndpointFilter", "ModelArn"),
            type = "string",
            name = "ModelArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "EndpointFilter", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        CreationTimeBefore = schema.new({
            id = id.from(_N, "EndpointFilter", "CreationTimeBefore"),
            type = "timestamp",
            name = "CreationTimeBefore",
            target_id = prelude.Timestamp.id,
        }),
        CreationTimeAfter = schema.new({
            id = id.from(_N, "EndpointFilter", "CreationTimeAfter"),
            type = "timestamp",
            name = "CreationTimeAfter",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListEndpointsInput = schema.new({
    id = id.from(_N, "ListEndpointsRequest"),
    type = "structure",
    members = {
        Filter = schema.new({
            id = id.from(_N, "ListEndpointsInput", "Filter"),
            type = "structure",
            name = "Filter",
            target_id = id.from(_N, "EndpointFilter"),
            target = M.EndpointFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListEndpointsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListEndpointsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListEndpointsOutput = schema.new({
    id = id.from(_N, "ListEndpointsResponse"),
    type = "structure",
    members = {
        EndpointPropertiesList = schema.new({
            id = id.from(_N, "ListEndpointsOutput", "EndpointPropertiesList"),
            type = "list",
            name = "EndpointPropertiesList",
            target_id = prelude.Document.id,
            list_member = M.EndpointProperties,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListEndpointsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.EntitiesDetectionJobFilter = schema.new({
    id = id.from(_N, "EntitiesDetectionJobFilter"),
    type = "structure",
    members = {
        JobName = schema.new({
            id = id.from(_N, "EntitiesDetectionJobFilter", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "EntitiesDetectionJobFilter", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
        SubmitTimeBefore = schema.new({
            id = id.from(_N, "EntitiesDetectionJobFilter", "SubmitTimeBefore"),
            type = "timestamp",
            name = "SubmitTimeBefore",
            target_id = prelude.Timestamp.id,
        }),
        SubmitTimeAfter = schema.new({
            id = id.from(_N, "EntitiesDetectionJobFilter", "SubmitTimeAfter"),
            type = "timestamp",
            name = "SubmitTimeAfter",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListEntitiesDetectionJobsInput = schema.new({
    id = id.from(_N, "ListEntitiesDetectionJobsRequest"),
    type = "structure",
    members = {
        Filter = schema.new({
            id = id.from(_N, "ListEntitiesDetectionJobsInput", "Filter"),
            type = "structure",
            name = "Filter",
            target_id = id.from(_N, "EntitiesDetectionJobFilter"),
            target = M.EntitiesDetectionJobFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListEntitiesDetectionJobsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListEntitiesDetectionJobsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListEntitiesDetectionJobsOutput = schema.new({
    id = id.from(_N, "ListEntitiesDetectionJobsResponse"),
    type = "structure",
    members = {
        EntitiesDetectionJobPropertiesList = schema.new({
            id = id.from(_N, "ListEntitiesDetectionJobsOutput", "EntitiesDetectionJobPropertiesList"),
            type = "list",
            name = "EntitiesDetectionJobPropertiesList",
            target_id = prelude.Document.id,
            list_member = M.EntitiesDetectionJobProperties,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListEntitiesDetectionJobsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.EntityRecognizerFilter = schema.new({
    id = id.from(_N, "EntityRecognizerFilter"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "EntityRecognizerFilter", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        RecognizerName = schema.new({
            id = id.from(_N, "EntityRecognizerFilter", "RecognizerName"),
            type = "string",
            name = "RecognizerName",
            target_id = prelude.String.id,
        }),
        SubmitTimeBefore = schema.new({
            id = id.from(_N, "EntityRecognizerFilter", "SubmitTimeBefore"),
            type = "timestamp",
            name = "SubmitTimeBefore",
            target_id = prelude.Timestamp.id,
        }),
        SubmitTimeAfter = schema.new({
            id = id.from(_N, "EntityRecognizerFilter", "SubmitTimeAfter"),
            type = "timestamp",
            name = "SubmitTimeAfter",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListEntityRecognizersInput = schema.new({
    id = id.from(_N, "ListEntityRecognizersRequest"),
    type = "structure",
    members = {
        Filter = schema.new({
            id = id.from(_N, "ListEntityRecognizersInput", "Filter"),
            type = "structure",
            name = "Filter",
            target_id = id.from(_N, "EntityRecognizerFilter"),
            target = M.EntityRecognizerFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListEntityRecognizersInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListEntityRecognizersInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListEntityRecognizersOutput = schema.new({
    id = id.from(_N, "ListEntityRecognizersResponse"),
    type = "structure",
    members = {
        EntityRecognizerPropertiesList = schema.new({
            id = id.from(_N, "ListEntityRecognizersOutput", "EntityRecognizerPropertiesList"),
            type = "list",
            name = "EntityRecognizerPropertiesList",
            target_id = prelude.Document.id,
            list_member = M.EntityRecognizerProperties,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListEntityRecognizersOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListEntityRecognizerSummariesInput = schema.new({
    id = id.from(_N, "ListEntityRecognizerSummariesRequest"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListEntityRecognizerSummariesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListEntityRecognizerSummariesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.EntityRecognizerSummary = schema.new({
    id = id.from(_N, "EntityRecognizerSummary"),
    type = "structure",
    members = {
        RecognizerName = schema.new({
            id = id.from(_N, "EntityRecognizerSummary", "RecognizerName"),
            type = "string",
            name = "RecognizerName",
            target_id = prelude.String.id,
        }),
        NumberOfVersions = schema.new({
            id = id.from(_N, "EntityRecognizerSummary", "NumberOfVersions"),
            type = "integer",
            name = "NumberOfVersions",
            target_id = prelude.Integer.id,
        }),
        LatestVersionCreatedAt = schema.new({
            id = id.from(_N, "EntityRecognizerSummary", "LatestVersionCreatedAt"),
            type = "timestamp",
            name = "LatestVersionCreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        LatestVersionName = schema.new({
            id = id.from(_N, "EntityRecognizerSummary", "LatestVersionName"),
            type = "string",
            name = "LatestVersionName",
            target_id = prelude.String.id,
        }),
        LatestVersionStatus = schema.new({
            id = id.from(_N, "EntityRecognizerSummary", "LatestVersionStatus"),
            type = "string",
            name = "LatestVersionStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ListEntityRecognizerSummariesOutput = schema.new({
    id = id.from(_N, "ListEntityRecognizerSummariesResponse"),
    type = "structure",
    members = {
        EntityRecognizerSummariesList = schema.new({
            id = id.from(_N, "ListEntityRecognizerSummariesOutput", "EntityRecognizerSummariesList"),
            type = "list",
            name = "EntityRecognizerSummariesList",
            target_id = prelude.Document.id,
            list_member = M.EntityRecognizerSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListEntityRecognizerSummariesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.EventsDetectionJobFilter = schema.new({
    id = id.from(_N, "EventsDetectionJobFilter"),
    type = "structure",
    members = {
        JobName = schema.new({
            id = id.from(_N, "EventsDetectionJobFilter", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "EventsDetectionJobFilter", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
        SubmitTimeBefore = schema.new({
            id = id.from(_N, "EventsDetectionJobFilter", "SubmitTimeBefore"),
            type = "timestamp",
            name = "SubmitTimeBefore",
            target_id = prelude.Timestamp.id,
        }),
        SubmitTimeAfter = schema.new({
            id = id.from(_N, "EventsDetectionJobFilter", "SubmitTimeAfter"),
            type = "timestamp",
            name = "SubmitTimeAfter",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListEventsDetectionJobsInput = schema.new({
    id = id.from(_N, "ListEventsDetectionJobsRequest"),
    type = "structure",
    members = {
        Filter = schema.new({
            id = id.from(_N, "ListEventsDetectionJobsInput", "Filter"),
            type = "structure",
            name = "Filter",
            target_id = id.from(_N, "EventsDetectionJobFilter"),
            target = M.EventsDetectionJobFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListEventsDetectionJobsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListEventsDetectionJobsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListEventsDetectionJobsOutput = schema.new({
    id = id.from(_N, "ListEventsDetectionJobsResponse"),
    type = "structure",
    members = {
        EventsDetectionJobPropertiesList = schema.new({
            id = id.from(_N, "ListEventsDetectionJobsOutput", "EventsDetectionJobPropertiesList"),
            type = "list",
            name = "EventsDetectionJobPropertiesList",
            target_id = prelude.Document.id,
            list_member = M.EventsDetectionJobProperties,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListEventsDetectionJobsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.FlywheelIterationFilter = schema.new({
    id = id.from(_N, "FlywheelIterationFilter"),
    type = "structure",
    members = {
        CreationTimeAfter = schema.new({
            id = id.from(_N, "FlywheelIterationFilter", "CreationTimeAfter"),
            type = "timestamp",
            name = "CreationTimeAfter",
            target_id = prelude.Timestamp.id,
        }),
        CreationTimeBefore = schema.new({
            id = id.from(_N, "FlywheelIterationFilter", "CreationTimeBefore"),
            type = "timestamp",
            name = "CreationTimeBefore",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListFlywheelIterationHistoryInput = schema.new({
    id = id.from(_N, "ListFlywheelIterationHistoryRequest"),
    type = "structure",
    members = {
        FlywheelArn = schema.new({
            id = id.from(_N, "ListFlywheelIterationHistoryInput", "FlywheelArn"),
            type = "string",
            name = "FlywheelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filter = schema.new({
            id = id.from(_N, "ListFlywheelIterationHistoryInput", "Filter"),
            type = "structure",
            name = "Filter",
            target_id = id.from(_N, "FlywheelIterationFilter"),
            target = M.FlywheelIterationFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListFlywheelIterationHistoryInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListFlywheelIterationHistoryInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListFlywheelIterationHistoryOutput = schema.new({
    id = id.from(_N, "ListFlywheelIterationHistoryResponse"),
    type = "structure",
    members = {
        FlywheelIterationPropertiesList = schema.new({
            id = id.from(_N, "ListFlywheelIterationHistoryOutput", "FlywheelIterationPropertiesList"),
            type = "list",
            name = "FlywheelIterationPropertiesList",
            target_id = prelude.Document.id,
            list_member = M.FlywheelIterationProperties,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListFlywheelIterationHistoryOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.FlywheelFilter = schema.new({
    id = id.from(_N, "FlywheelFilter"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "FlywheelFilter", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        CreationTimeAfter = schema.new({
            id = id.from(_N, "FlywheelFilter", "CreationTimeAfter"),
            type = "timestamp",
            name = "CreationTimeAfter",
            target_id = prelude.Timestamp.id,
        }),
        CreationTimeBefore = schema.new({
            id = id.from(_N, "FlywheelFilter", "CreationTimeBefore"),
            type = "timestamp",
            name = "CreationTimeBefore",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListFlywheelsInput = schema.new({
    id = id.from(_N, "ListFlywheelsRequest"),
    type = "structure",
    members = {
        Filter = schema.new({
            id = id.from(_N, "ListFlywheelsInput", "Filter"),
            type = "structure",
            name = "Filter",
            target_id = id.from(_N, "FlywheelFilter"),
            target = M.FlywheelFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListFlywheelsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListFlywheelsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.FlywheelSummary = schema.new({
    id = id.from(_N, "FlywheelSummary"),
    type = "structure",
    members = {
        FlywheelArn = schema.new({
            id = id.from(_N, "FlywheelSummary", "FlywheelArn"),
            type = "string",
            name = "FlywheelArn",
            target_id = prelude.String.id,
        }),
        ActiveModelArn = schema.new({
            id = id.from(_N, "FlywheelSummary", "ActiveModelArn"),
            type = "string",
            name = "ActiveModelArn",
            target_id = prelude.String.id,
        }),
        DataLakeS3Uri = schema.new({
            id = id.from(_N, "FlywheelSummary", "DataLakeS3Uri"),
            type = "string",
            name = "DataLakeS3Uri",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "FlywheelSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        ModelType = schema.new({
            id = id.from(_N, "FlywheelSummary", "ModelType"),
            type = "string",
            name = "ModelType",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "FlywheelSummary", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "FlywheelSummary", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedTime = schema.new({
            id = id.from(_N, "FlywheelSummary", "LastModifiedTime"),
            type = "timestamp",
            name = "LastModifiedTime",
            target_id = prelude.Timestamp.id,
        }),
        LatestFlywheelIteration = schema.new({
            id = id.from(_N, "FlywheelSummary", "LatestFlywheelIteration"),
            type = "string",
            name = "LatestFlywheelIteration",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFlywheelsOutput = schema.new({
    id = id.from(_N, "ListFlywheelsResponse"),
    type = "structure",
    members = {
        FlywheelSummaryList = schema.new({
            id = id.from(_N, "ListFlywheelsOutput", "FlywheelSummaryList"),
            type = "list",
            name = "FlywheelSummaryList",
            target_id = prelude.Document.id,
            list_member = M.FlywheelSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListFlywheelsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.KeyPhrasesDetectionJobFilter = schema.new({
    id = id.from(_N, "KeyPhrasesDetectionJobFilter"),
    type = "structure",
    members = {
        JobName = schema.new({
            id = id.from(_N, "KeyPhrasesDetectionJobFilter", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "KeyPhrasesDetectionJobFilter", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
        SubmitTimeBefore = schema.new({
            id = id.from(_N, "KeyPhrasesDetectionJobFilter", "SubmitTimeBefore"),
            type = "timestamp",
            name = "SubmitTimeBefore",
            target_id = prelude.Timestamp.id,
        }),
        SubmitTimeAfter = schema.new({
            id = id.from(_N, "KeyPhrasesDetectionJobFilter", "SubmitTimeAfter"),
            type = "timestamp",
            name = "SubmitTimeAfter",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListKeyPhrasesDetectionJobsInput = schema.new({
    id = id.from(_N, "ListKeyPhrasesDetectionJobsRequest"),
    type = "structure",
    members = {
        Filter = schema.new({
            id = id.from(_N, "ListKeyPhrasesDetectionJobsInput", "Filter"),
            type = "structure",
            name = "Filter",
            target_id = id.from(_N, "KeyPhrasesDetectionJobFilter"),
            target = M.KeyPhrasesDetectionJobFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListKeyPhrasesDetectionJobsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListKeyPhrasesDetectionJobsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListKeyPhrasesDetectionJobsOutput = schema.new({
    id = id.from(_N, "ListKeyPhrasesDetectionJobsResponse"),
    type = "structure",
    members = {
        KeyPhrasesDetectionJobPropertiesList = schema.new({
            id = id.from(_N, "ListKeyPhrasesDetectionJobsOutput", "KeyPhrasesDetectionJobPropertiesList"),
            type = "list",
            name = "KeyPhrasesDetectionJobPropertiesList",
            target_id = prelude.Document.id,
            list_member = M.KeyPhrasesDetectionJobProperties,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListKeyPhrasesDetectionJobsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PiiEntitiesDetectionJobFilter = schema.new({
    id = id.from(_N, "PiiEntitiesDetectionJobFilter"),
    type = "structure",
    members = {
        JobName = schema.new({
            id = id.from(_N, "PiiEntitiesDetectionJobFilter", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "PiiEntitiesDetectionJobFilter", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
        SubmitTimeBefore = schema.new({
            id = id.from(_N, "PiiEntitiesDetectionJobFilter", "SubmitTimeBefore"),
            type = "timestamp",
            name = "SubmitTimeBefore",
            target_id = prelude.Timestamp.id,
        }),
        SubmitTimeAfter = schema.new({
            id = id.from(_N, "PiiEntitiesDetectionJobFilter", "SubmitTimeAfter"),
            type = "timestamp",
            name = "SubmitTimeAfter",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListPiiEntitiesDetectionJobsInput = schema.new({
    id = id.from(_N, "ListPiiEntitiesDetectionJobsRequest"),
    type = "structure",
    members = {
        Filter = schema.new({
            id = id.from(_N, "ListPiiEntitiesDetectionJobsInput", "Filter"),
            type = "structure",
            name = "Filter",
            target_id = id.from(_N, "PiiEntitiesDetectionJobFilter"),
            target = M.PiiEntitiesDetectionJobFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPiiEntitiesDetectionJobsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListPiiEntitiesDetectionJobsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListPiiEntitiesDetectionJobsOutput = schema.new({
    id = id.from(_N, "ListPiiEntitiesDetectionJobsResponse"),
    type = "structure",
    members = {
        PiiEntitiesDetectionJobPropertiesList = schema.new({
            id = id.from(_N, "ListPiiEntitiesDetectionJobsOutput", "PiiEntitiesDetectionJobPropertiesList"),
            type = "list",
            name = "PiiEntitiesDetectionJobPropertiesList",
            target_id = prelude.Document.id,
            list_member = M.PiiEntitiesDetectionJobProperties,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListPiiEntitiesDetectionJobsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SentimentDetectionJobFilter = schema.new({
    id = id.from(_N, "SentimentDetectionJobFilter"),
    type = "structure",
    members = {
        JobName = schema.new({
            id = id.from(_N, "SentimentDetectionJobFilter", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "SentimentDetectionJobFilter", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
        SubmitTimeBefore = schema.new({
            id = id.from(_N, "SentimentDetectionJobFilter", "SubmitTimeBefore"),
            type = "timestamp",
            name = "SubmitTimeBefore",
            target_id = prelude.Timestamp.id,
        }),
        SubmitTimeAfter = schema.new({
            id = id.from(_N, "SentimentDetectionJobFilter", "SubmitTimeAfter"),
            type = "timestamp",
            name = "SubmitTimeAfter",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListSentimentDetectionJobsInput = schema.new({
    id = id.from(_N, "ListSentimentDetectionJobsRequest"),
    type = "structure",
    members = {
        Filter = schema.new({
            id = id.from(_N, "ListSentimentDetectionJobsInput", "Filter"),
            type = "structure",
            name = "Filter",
            target_id = id.from(_N, "SentimentDetectionJobFilter"),
            target = M.SentimentDetectionJobFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSentimentDetectionJobsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListSentimentDetectionJobsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListSentimentDetectionJobsOutput = schema.new({
    id = id.from(_N, "ListSentimentDetectionJobsResponse"),
    type = "structure",
    members = {
        SentimentDetectionJobPropertiesList = schema.new({
            id = id.from(_N, "ListSentimentDetectionJobsOutput", "SentimentDetectionJobPropertiesList"),
            type = "list",
            name = "SentimentDetectionJobPropertiesList",
            target_id = prelude.Document.id,
            list_member = M.SentimentDetectionJobProperties,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListSentimentDetectionJobsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.TargetedSentimentDetectionJobFilter = schema.new({
    id = id.from(_N, "TargetedSentimentDetectionJobFilter"),
    type = "structure",
    members = {
        JobName = schema.new({
            id = id.from(_N, "TargetedSentimentDetectionJobFilter", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "TargetedSentimentDetectionJobFilter", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
        SubmitTimeBefore = schema.new({
            id = id.from(_N, "TargetedSentimentDetectionJobFilter", "SubmitTimeBefore"),
            type = "timestamp",
            name = "SubmitTimeBefore",
            target_id = prelude.Timestamp.id,
        }),
        SubmitTimeAfter = schema.new({
            id = id.from(_N, "TargetedSentimentDetectionJobFilter", "SubmitTimeAfter"),
            type = "timestamp",
            name = "SubmitTimeAfter",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListTargetedSentimentDetectionJobsInput = schema.new({
    id = id.from(_N, "ListTargetedSentimentDetectionJobsRequest"),
    type = "structure",
    members = {
        Filter = schema.new({
            id = id.from(_N, "ListTargetedSentimentDetectionJobsInput", "Filter"),
            type = "structure",
            name = "Filter",
            target_id = id.from(_N, "TargetedSentimentDetectionJobFilter"),
            target = M.TargetedSentimentDetectionJobFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTargetedSentimentDetectionJobsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListTargetedSentimentDetectionJobsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListTargetedSentimentDetectionJobsOutput = schema.new({
    id = id.from(_N, "ListTargetedSentimentDetectionJobsResponse"),
    type = "structure",
    members = {
        TargetedSentimentDetectionJobPropertiesList = schema.new({
            id = id.from(_N, "ListTargetedSentimentDetectionJobsOutput", "TargetedSentimentDetectionJobPropertiesList"),
            type = "list",
            name = "TargetedSentimentDetectionJobPropertiesList",
            target_id = prelude.Document.id,
            list_member = M.TargetedSentimentDetectionJobProperties,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTargetedSentimentDetectionJobsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.TopicsDetectionJobFilter = schema.new({
    id = id.from(_N, "TopicsDetectionJobFilter"),
    type = "structure",
    members = {
        JobName = schema.new({
            id = id.from(_N, "TopicsDetectionJobFilter", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "TopicsDetectionJobFilter", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
        SubmitTimeBefore = schema.new({
            id = id.from(_N, "TopicsDetectionJobFilter", "SubmitTimeBefore"),
            type = "timestamp",
            name = "SubmitTimeBefore",
            target_id = prelude.Timestamp.id,
        }),
        SubmitTimeAfter = schema.new({
            id = id.from(_N, "TopicsDetectionJobFilter", "SubmitTimeAfter"),
            type = "timestamp",
            name = "SubmitTimeAfter",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListTopicsDetectionJobsInput = schema.new({
    id = id.from(_N, "ListTopicsDetectionJobsRequest"),
    type = "structure",
    members = {
        Filter = schema.new({
            id = id.from(_N, "ListTopicsDetectionJobsInput", "Filter"),
            type = "structure",
            name = "Filter",
            target_id = id.from(_N, "TopicsDetectionJobFilter"),
            target = M.TopicsDetectionJobFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTopicsDetectionJobsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListTopicsDetectionJobsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListTopicsDetectionJobsOutput = schema.new({
    id = id.from(_N, "ListTopicsDetectionJobsResponse"),
    type = "structure",
    members = {
        TopicsDetectionJobPropertiesList = schema.new({
            id = id.from(_N, "ListTopicsDetectionJobsOutput", "TopicsDetectionJobPropertiesList"),
            type = "list",
            name = "TopicsDetectionJobPropertiesList",
            target_id = prelude.Document.id,
            list_member = M.TopicsDetectionJobProperties,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTopicsDetectionJobsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PutResourcePolicyInput = schema.new({
    id = id.from(_N, "PutResourcePolicyRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourcePolicy = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "ResourcePolicy"),
            type = "string",
            name = "ResourcePolicy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyRevisionId = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "PolicyRevisionId"),
            type = "string",
            name = "PolicyRevisionId",
            target_id = prelude.String.id,
        }),
    },
})

M.PutResourcePolicyOutput = schema.new({
    id = id.from(_N, "PutResourcePolicyResponse"),
    type = "structure",
    members = {
        PolicyRevisionId = schema.new({
            id = id.from(_N, "PutResourcePolicyOutput", "PolicyRevisionId"),
            type = "string",
            name = "PolicyRevisionId",
            target_id = prelude.String.id,
        }),
    },
})

M.StartDocumentClassificationJobInput = schema.new({
    id = id.from(_N, "StartDocumentClassificationJobRequest"),
    type = "structure",
    members = {
        JobName = schema.new({
            id = id.from(_N, "StartDocumentClassificationJobInput", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        DocumentClassifierArn = schema.new({
            id = id.from(_N, "StartDocumentClassificationJobInput", "DocumentClassifierArn"),
            type = "string",
            name = "DocumentClassifierArn",
            target_id = prelude.String.id,
        }),
        InputDataConfig = schema.new({
            id = id.from(_N, "StartDocumentClassificationJobInput", "InputDataConfig"),
            type = "structure",
            name = "InputDataConfig",
            target_id = id.from(_N, "InputDataConfig"),
            target = M.InputDataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OutputDataConfig = schema.new({
            id = id.from(_N, "StartDocumentClassificationJobInput", "OutputDataConfig"),
            type = "structure",
            name = "OutputDataConfig",
            target_id = id.from(_N, "OutputDataConfig"),
            target = M.OutputDataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "StartDocumentClassificationJobInput", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "StartDocumentClassificationJobInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        VolumeKmsKeyId = schema.new({
            id = id.from(_N, "StartDocumentClassificationJobInput", "VolumeKmsKeyId"),
            type = "string",
            name = "VolumeKmsKeyId",
            target_id = prelude.String.id,
        }),
        VpcConfig = schema.new({
            id = id.from(_N, "StartDocumentClassificationJobInput", "VpcConfig"),
            type = "structure",
            name = "VpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        Tags = schema.new({
            id = id.from(_N, "StartDocumentClassificationJobInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        FlywheelArn = schema.new({
            id = id.from(_N, "StartDocumentClassificationJobInput", "FlywheelArn"),
            type = "string",
            name = "FlywheelArn",
            target_id = prelude.String.id,
        }),
    },
})

M.StartDocumentClassificationJobOutput = schema.new({
    id = id.from(_N, "StartDocumentClassificationJobResponse"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StartDocumentClassificationJobOutput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobArn = schema.new({
            id = id.from(_N, "StartDocumentClassificationJobOutput", "JobArn"),
            type = "string",
            name = "JobArn",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "StartDocumentClassificationJobOutput", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
        DocumentClassifierArn = schema.new({
            id = id.from(_N, "StartDocumentClassificationJobOutput", "DocumentClassifierArn"),
            type = "string",
            name = "DocumentClassifierArn",
            target_id = prelude.String.id,
        }),
    },
})

M.StartDominantLanguageDetectionJobInput = schema.new({
    id = id.from(_N, "StartDominantLanguageDetectionJobRequest"),
    type = "structure",
    members = {
        InputDataConfig = schema.new({
            id = id.from(_N, "StartDominantLanguageDetectionJobInput", "InputDataConfig"),
            type = "structure",
            name = "InputDataConfig",
            target_id = id.from(_N, "InputDataConfig"),
            target = M.InputDataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OutputDataConfig = schema.new({
            id = id.from(_N, "StartDominantLanguageDetectionJobInput", "OutputDataConfig"),
            type = "structure",
            name = "OutputDataConfig",
            target_id = id.from(_N, "OutputDataConfig"),
            target = M.OutputDataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "StartDominantLanguageDetectionJobInput", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        JobName = schema.new({
            id = id.from(_N, "StartDominantLanguageDetectionJobInput", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "StartDominantLanguageDetectionJobInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        VolumeKmsKeyId = schema.new({
            id = id.from(_N, "StartDominantLanguageDetectionJobInput", "VolumeKmsKeyId"),
            type = "string",
            name = "VolumeKmsKeyId",
            target_id = prelude.String.id,
        }),
        VpcConfig = schema.new({
            id = id.from(_N, "StartDominantLanguageDetectionJobInput", "VpcConfig"),
            type = "structure",
            name = "VpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        Tags = schema.new({
            id = id.from(_N, "StartDominantLanguageDetectionJobInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.StartDominantLanguageDetectionJobOutput = schema.new({
    id = id.from(_N, "StartDominantLanguageDetectionJobResponse"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StartDominantLanguageDetectionJobOutput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobArn = schema.new({
            id = id.from(_N, "StartDominantLanguageDetectionJobOutput", "JobArn"),
            type = "string",
            name = "JobArn",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "StartDominantLanguageDetectionJobOutput", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.StartEntitiesDetectionJobInput = schema.new({
    id = id.from(_N, "StartEntitiesDetectionJobRequest"),
    type = "structure",
    members = {
        InputDataConfig = schema.new({
            id = id.from(_N, "StartEntitiesDetectionJobInput", "InputDataConfig"),
            type = "structure",
            name = "InputDataConfig",
            target_id = id.from(_N, "InputDataConfig"),
            target = M.InputDataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OutputDataConfig = schema.new({
            id = id.from(_N, "StartEntitiesDetectionJobInput", "OutputDataConfig"),
            type = "structure",
            name = "OutputDataConfig",
            target_id = id.from(_N, "OutputDataConfig"),
            target = M.OutputDataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "StartEntitiesDetectionJobInput", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        JobName = schema.new({
            id = id.from(_N, "StartEntitiesDetectionJobInput", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        EntityRecognizerArn = schema.new({
            id = id.from(_N, "StartEntitiesDetectionJobInput", "EntityRecognizerArn"),
            type = "string",
            name = "EntityRecognizerArn",
            target_id = prelude.String.id,
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "StartEntitiesDetectionJobInput", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "StartEntitiesDetectionJobInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        VolumeKmsKeyId = schema.new({
            id = id.from(_N, "StartEntitiesDetectionJobInput", "VolumeKmsKeyId"),
            type = "string",
            name = "VolumeKmsKeyId",
            target_id = prelude.String.id,
        }),
        VpcConfig = schema.new({
            id = id.from(_N, "StartEntitiesDetectionJobInput", "VpcConfig"),
            type = "structure",
            name = "VpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        Tags = schema.new({
            id = id.from(_N, "StartEntitiesDetectionJobInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        FlywheelArn = schema.new({
            id = id.from(_N, "StartEntitiesDetectionJobInput", "FlywheelArn"),
            type = "string",
            name = "FlywheelArn",
            target_id = prelude.String.id,
        }),
    },
})

M.StartEntitiesDetectionJobOutput = schema.new({
    id = id.from(_N, "StartEntitiesDetectionJobResponse"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StartEntitiesDetectionJobOutput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobArn = schema.new({
            id = id.from(_N, "StartEntitiesDetectionJobOutput", "JobArn"),
            type = "string",
            name = "JobArn",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "StartEntitiesDetectionJobOutput", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
        EntityRecognizerArn = schema.new({
            id = id.from(_N, "StartEntitiesDetectionJobOutput", "EntityRecognizerArn"),
            type = "string",
            name = "EntityRecognizerArn",
            target_id = prelude.String.id,
        }),
    },
})

M.StartEventsDetectionJobInput = schema.new({
    id = id.from(_N, "StartEventsDetectionJobRequest"),
    type = "structure",
    members = {
        InputDataConfig = schema.new({
            id = id.from(_N, "StartEventsDetectionJobInput", "InputDataConfig"),
            type = "structure",
            name = "InputDataConfig",
            target_id = id.from(_N, "InputDataConfig"),
            target = M.InputDataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OutputDataConfig = schema.new({
            id = id.from(_N, "StartEventsDetectionJobInput", "OutputDataConfig"),
            type = "structure",
            name = "OutputDataConfig",
            target_id = id.from(_N, "OutputDataConfig"),
            target = M.OutputDataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "StartEventsDetectionJobInput", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        JobName = schema.new({
            id = id.from(_N, "StartEventsDetectionJobInput", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "StartEventsDetectionJobInput", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "StartEventsDetectionJobInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        TargetEventTypes = schema.new({
            id = id.from(_N, "StartEventsDetectionJobInput", "TargetEventTypes"),
            type = "list",
            name = "TargetEventTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "StartEventsDetectionJobInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.StartEventsDetectionJobOutput = schema.new({
    id = id.from(_N, "StartEventsDetectionJobResponse"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StartEventsDetectionJobOutput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobArn = schema.new({
            id = id.from(_N, "StartEventsDetectionJobOutput", "JobArn"),
            type = "string",
            name = "JobArn",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "StartEventsDetectionJobOutput", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.StartFlywheelIterationInput = schema.new({
    id = id.from(_N, "StartFlywheelIterationRequest"),
    type = "structure",
    members = {
        FlywheelArn = schema.new({
            id = id.from(_N, "StartFlywheelIterationInput", "FlywheelArn"),
            type = "string",
            name = "FlywheelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "StartFlywheelIterationInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
        }),
    },
})

M.StartFlywheelIterationOutput = schema.new({
    id = id.from(_N, "StartFlywheelIterationResponse"),
    type = "structure",
    members = {
        FlywheelArn = schema.new({
            id = id.from(_N, "StartFlywheelIterationOutput", "FlywheelArn"),
            type = "string",
            name = "FlywheelArn",
            target_id = prelude.String.id,
        }),
        FlywheelIterationId = schema.new({
            id = id.from(_N, "StartFlywheelIterationOutput", "FlywheelIterationId"),
            type = "string",
            name = "FlywheelIterationId",
            target_id = prelude.String.id,
        }),
    },
})

M.StartKeyPhrasesDetectionJobInput = schema.new({
    id = id.from(_N, "StartKeyPhrasesDetectionJobRequest"),
    type = "structure",
    members = {
        InputDataConfig = schema.new({
            id = id.from(_N, "StartKeyPhrasesDetectionJobInput", "InputDataConfig"),
            type = "structure",
            name = "InputDataConfig",
            target_id = id.from(_N, "InputDataConfig"),
            target = M.InputDataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OutputDataConfig = schema.new({
            id = id.from(_N, "StartKeyPhrasesDetectionJobInput", "OutputDataConfig"),
            type = "structure",
            name = "OutputDataConfig",
            target_id = id.from(_N, "OutputDataConfig"),
            target = M.OutputDataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "StartKeyPhrasesDetectionJobInput", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        JobName = schema.new({
            id = id.from(_N, "StartKeyPhrasesDetectionJobInput", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "StartKeyPhrasesDetectionJobInput", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "StartKeyPhrasesDetectionJobInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        VolumeKmsKeyId = schema.new({
            id = id.from(_N, "StartKeyPhrasesDetectionJobInput", "VolumeKmsKeyId"),
            type = "string",
            name = "VolumeKmsKeyId",
            target_id = prelude.String.id,
        }),
        VpcConfig = schema.new({
            id = id.from(_N, "StartKeyPhrasesDetectionJobInput", "VpcConfig"),
            type = "structure",
            name = "VpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        Tags = schema.new({
            id = id.from(_N, "StartKeyPhrasesDetectionJobInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.StartKeyPhrasesDetectionJobOutput = schema.new({
    id = id.from(_N, "StartKeyPhrasesDetectionJobResponse"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StartKeyPhrasesDetectionJobOutput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobArn = schema.new({
            id = id.from(_N, "StartKeyPhrasesDetectionJobOutput", "JobArn"),
            type = "string",
            name = "JobArn",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "StartKeyPhrasesDetectionJobOutput", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.StartPiiEntitiesDetectionJobInput = schema.new({
    id = id.from(_N, "StartPiiEntitiesDetectionJobRequest"),
    type = "structure",
    members = {
        InputDataConfig = schema.new({
            id = id.from(_N, "StartPiiEntitiesDetectionJobInput", "InputDataConfig"),
            type = "structure",
            name = "InputDataConfig",
            target_id = id.from(_N, "InputDataConfig"),
            target = M.InputDataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OutputDataConfig = schema.new({
            id = id.from(_N, "StartPiiEntitiesDetectionJobInput", "OutputDataConfig"),
            type = "structure",
            name = "OutputDataConfig",
            target_id = id.from(_N, "OutputDataConfig"),
            target = M.OutputDataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Mode = schema.new({
            id = id.from(_N, "StartPiiEntitiesDetectionJobInput", "Mode"),
            type = "string",
            name = "Mode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RedactionConfig = schema.new({
            id = id.from(_N, "StartPiiEntitiesDetectionJobInput", "RedactionConfig"),
            type = "structure",
            name = "RedactionConfig",
            target_id = id.from(_N, "RedactionConfig"),
            target = M.RedactionConfig,
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "StartPiiEntitiesDetectionJobInput", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        JobName = schema.new({
            id = id.from(_N, "StartPiiEntitiesDetectionJobInput", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "StartPiiEntitiesDetectionJobInput", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "StartPiiEntitiesDetectionJobInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "StartPiiEntitiesDetectionJobInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.StartPiiEntitiesDetectionJobOutput = schema.new({
    id = id.from(_N, "StartPiiEntitiesDetectionJobResponse"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StartPiiEntitiesDetectionJobOutput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobArn = schema.new({
            id = id.from(_N, "StartPiiEntitiesDetectionJobOutput", "JobArn"),
            type = "string",
            name = "JobArn",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "StartPiiEntitiesDetectionJobOutput", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.StartSentimentDetectionJobInput = schema.new({
    id = id.from(_N, "StartSentimentDetectionJobRequest"),
    type = "structure",
    members = {
        InputDataConfig = schema.new({
            id = id.from(_N, "StartSentimentDetectionJobInput", "InputDataConfig"),
            type = "structure",
            name = "InputDataConfig",
            target_id = id.from(_N, "InputDataConfig"),
            target = M.InputDataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OutputDataConfig = schema.new({
            id = id.from(_N, "StartSentimentDetectionJobInput", "OutputDataConfig"),
            type = "structure",
            name = "OutputDataConfig",
            target_id = id.from(_N, "OutputDataConfig"),
            target = M.OutputDataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "StartSentimentDetectionJobInput", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        JobName = schema.new({
            id = id.from(_N, "StartSentimentDetectionJobInput", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "StartSentimentDetectionJobInput", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "StartSentimentDetectionJobInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        VolumeKmsKeyId = schema.new({
            id = id.from(_N, "StartSentimentDetectionJobInput", "VolumeKmsKeyId"),
            type = "string",
            name = "VolumeKmsKeyId",
            target_id = prelude.String.id,
        }),
        VpcConfig = schema.new({
            id = id.from(_N, "StartSentimentDetectionJobInput", "VpcConfig"),
            type = "structure",
            name = "VpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        Tags = schema.new({
            id = id.from(_N, "StartSentimentDetectionJobInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.StartSentimentDetectionJobOutput = schema.new({
    id = id.from(_N, "StartSentimentDetectionJobResponse"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StartSentimentDetectionJobOutput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobArn = schema.new({
            id = id.from(_N, "StartSentimentDetectionJobOutput", "JobArn"),
            type = "string",
            name = "JobArn",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "StartSentimentDetectionJobOutput", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.StartTargetedSentimentDetectionJobInput = schema.new({
    id = id.from(_N, "StartTargetedSentimentDetectionJobRequest"),
    type = "structure",
    members = {
        InputDataConfig = schema.new({
            id = id.from(_N, "StartTargetedSentimentDetectionJobInput", "InputDataConfig"),
            type = "structure",
            name = "InputDataConfig",
            target_id = id.from(_N, "InputDataConfig"),
            target = M.InputDataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OutputDataConfig = schema.new({
            id = id.from(_N, "StartTargetedSentimentDetectionJobInput", "OutputDataConfig"),
            type = "structure",
            name = "OutputDataConfig",
            target_id = id.from(_N, "OutputDataConfig"),
            target = M.OutputDataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "StartTargetedSentimentDetectionJobInput", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        JobName = schema.new({
            id = id.from(_N, "StartTargetedSentimentDetectionJobInput", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        LanguageCode = schema.new({
            id = id.from(_N, "StartTargetedSentimentDetectionJobInput", "LanguageCode"),
            type = "string",
            name = "LanguageCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "StartTargetedSentimentDetectionJobInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        VolumeKmsKeyId = schema.new({
            id = id.from(_N, "StartTargetedSentimentDetectionJobInput", "VolumeKmsKeyId"),
            type = "string",
            name = "VolumeKmsKeyId",
            target_id = prelude.String.id,
        }),
        VpcConfig = schema.new({
            id = id.from(_N, "StartTargetedSentimentDetectionJobInput", "VpcConfig"),
            type = "structure",
            name = "VpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        Tags = schema.new({
            id = id.from(_N, "StartTargetedSentimentDetectionJobInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.StartTargetedSentimentDetectionJobOutput = schema.new({
    id = id.from(_N, "StartTargetedSentimentDetectionJobResponse"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StartTargetedSentimentDetectionJobOutput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobArn = schema.new({
            id = id.from(_N, "StartTargetedSentimentDetectionJobOutput", "JobArn"),
            type = "string",
            name = "JobArn",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "StartTargetedSentimentDetectionJobOutput", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.StartTopicsDetectionJobInput = schema.new({
    id = id.from(_N, "StartTopicsDetectionJobRequest"),
    type = "structure",
    members = {
        InputDataConfig = schema.new({
            id = id.from(_N, "StartTopicsDetectionJobInput", "InputDataConfig"),
            type = "structure",
            name = "InputDataConfig",
            target_id = id.from(_N, "InputDataConfig"),
            target = M.InputDataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OutputDataConfig = schema.new({
            id = id.from(_N, "StartTopicsDetectionJobInput", "OutputDataConfig"),
            type = "structure",
            name = "OutputDataConfig",
            target_id = id.from(_N, "OutputDataConfig"),
            target = M.OutputDataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "StartTopicsDetectionJobInput", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        JobName = schema.new({
            id = id.from(_N, "StartTopicsDetectionJobInput", "JobName"),
            type = "string",
            name = "JobName",
            target_id = prelude.String.id,
        }),
        NumberOfTopics = schema.new({
            id = id.from(_N, "StartTopicsDetectionJobInput", "NumberOfTopics"),
            type = "integer",
            name = "NumberOfTopics",
            target_id = prelude.Integer.id,
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "StartTopicsDetectionJobInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        VolumeKmsKeyId = schema.new({
            id = id.from(_N, "StartTopicsDetectionJobInput", "VolumeKmsKeyId"),
            type = "string",
            name = "VolumeKmsKeyId",
            target_id = prelude.String.id,
        }),
        VpcConfig = schema.new({
            id = id.from(_N, "StartTopicsDetectionJobInput", "VpcConfig"),
            type = "structure",
            name = "VpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        Tags = schema.new({
            id = id.from(_N, "StartTopicsDetectionJobInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.StartTopicsDetectionJobOutput = schema.new({
    id = id.from(_N, "StartTopicsDetectionJobResponse"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StartTopicsDetectionJobOutput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobArn = schema.new({
            id = id.from(_N, "StartTopicsDetectionJobOutput", "JobArn"),
            type = "string",
            name = "JobArn",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "StartTopicsDetectionJobOutput", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.StopDominantLanguageDetectionJobInput = schema.new({
    id = id.from(_N, "StopDominantLanguageDetectionJobRequest"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StopDominantLanguageDetectionJobInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopDominantLanguageDetectionJobOutput = schema.new({
    id = id.from(_N, "StopDominantLanguageDetectionJobResponse"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StopDominantLanguageDetectionJobOutput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "StopDominantLanguageDetectionJobOutput", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.StopEntitiesDetectionJobInput = schema.new({
    id = id.from(_N, "StopEntitiesDetectionJobRequest"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StopEntitiesDetectionJobInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopEntitiesDetectionJobOutput = schema.new({
    id = id.from(_N, "StopEntitiesDetectionJobResponse"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StopEntitiesDetectionJobOutput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "StopEntitiesDetectionJobOutput", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.StopEventsDetectionJobInput = schema.new({
    id = id.from(_N, "StopEventsDetectionJobRequest"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StopEventsDetectionJobInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopEventsDetectionJobOutput = schema.new({
    id = id.from(_N, "StopEventsDetectionJobResponse"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StopEventsDetectionJobOutput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "StopEventsDetectionJobOutput", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.StopKeyPhrasesDetectionJobInput = schema.new({
    id = id.from(_N, "StopKeyPhrasesDetectionJobRequest"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StopKeyPhrasesDetectionJobInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopKeyPhrasesDetectionJobOutput = schema.new({
    id = id.from(_N, "StopKeyPhrasesDetectionJobResponse"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StopKeyPhrasesDetectionJobOutput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "StopKeyPhrasesDetectionJobOutput", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.StopPiiEntitiesDetectionJobInput = schema.new({
    id = id.from(_N, "StopPiiEntitiesDetectionJobRequest"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StopPiiEntitiesDetectionJobInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopPiiEntitiesDetectionJobOutput = schema.new({
    id = id.from(_N, "StopPiiEntitiesDetectionJobResponse"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StopPiiEntitiesDetectionJobOutput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "StopPiiEntitiesDetectionJobOutput", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.StopSentimentDetectionJobInput = schema.new({
    id = id.from(_N, "StopSentimentDetectionJobRequest"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StopSentimentDetectionJobInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopSentimentDetectionJobOutput = schema.new({
    id = id.from(_N, "StopSentimentDetectionJobResponse"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StopSentimentDetectionJobOutput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "StopSentimentDetectionJobOutput", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.StopTargetedSentimentDetectionJobInput = schema.new({
    id = id.from(_N, "StopTargetedSentimentDetectionJobRequest"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StopTargetedSentimentDetectionJobInput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopTargetedSentimentDetectionJobOutput = schema.new({
    id = id.from(_N, "StopTargetedSentimentDetectionJobResponse"),
    type = "structure",
    members = {
        JobId = schema.new({
            id = id.from(_N, "StopTargetedSentimentDetectionJobOutput", "JobId"),
            type = "string",
            name = "JobId",
            target_id = prelude.String.id,
        }),
        JobStatus = schema.new({
            id = id.from(_N, "StopTargetedSentimentDetectionJobOutput", "JobStatus"),
            type = "string",
            name = "JobStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.StopTrainingDocumentClassifierInput = schema.new({
    id = id.from(_N, "StopTrainingDocumentClassifierRequest"),
    type = "structure",
    members = {
        DocumentClassifierArn = schema.new({
            id = id.from(_N, "StopTrainingDocumentClassifierInput", "DocumentClassifierArn"),
            type = "string",
            name = "DocumentClassifierArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopTrainingDocumentClassifierOutput = schema.new({
    id = id.from(_N, "StopTrainingDocumentClassifierResponse"),
    type = "structure",
})

M.StopTrainingEntityRecognizerInput = schema.new({
    id = id.from(_N, "StopTrainingEntityRecognizerRequest"),
    type = "structure",
    members = {
        EntityRecognizerArn = schema.new({
            id = id.from(_N, "StopTrainingEntityRecognizerInput", "EntityRecognizerArn"),
            type = "string",
            name = "EntityRecognizerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopTrainingEntityRecognizerOutput = schema.new({
    id = id.from(_N, "StopTrainingEntityRecognizerResponse"),
    type = "structure",
})

M.ConcurrentModificationException = schema.new({
    id = id.from(_N, "ConcurrentModificationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ConcurrentModificationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceResponse"),
    type = "structure",
})

M.TooManyTagKeysException = schema.new({
    id = id.from(_N, "TooManyTagKeysException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyTagKeysException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.UpdateEndpointInput = schema.new({
    id = id.from(_N, "UpdateEndpointRequest"),
    type = "structure",
    members = {
        EndpointArn = schema.new({
            id = id.from(_N, "UpdateEndpointInput", "EndpointArn"),
            type = "string",
            name = "EndpointArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DesiredModelArn = schema.new({
            id = id.from(_N, "UpdateEndpointInput", "DesiredModelArn"),
            type = "string",
            name = "DesiredModelArn",
            target_id = prelude.String.id,
        }),
        DesiredInferenceUnits = schema.new({
            id = id.from(_N, "UpdateEndpointInput", "DesiredInferenceUnits"),
            type = "integer",
            name = "DesiredInferenceUnits",
            target_id = prelude.Integer.id,
        }),
        DesiredDataAccessRoleArn = schema.new({
            id = id.from(_N, "UpdateEndpointInput", "DesiredDataAccessRoleArn"),
            type = "string",
            name = "DesiredDataAccessRoleArn",
            target_id = prelude.String.id,
        }),
        FlywheelArn = schema.new({
            id = id.from(_N, "UpdateEndpointInput", "FlywheelArn"),
            type = "string",
            name = "FlywheelArn",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateEndpointOutput = schema.new({
    id = id.from(_N, "UpdateEndpointResponse"),
    type = "structure",
    members = {
        DesiredModelArn = schema.new({
            id = id.from(_N, "UpdateEndpointOutput", "DesiredModelArn"),
            type = "string",
            name = "DesiredModelArn",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDataSecurityConfig = schema.new({
    id = id.from(_N, "UpdateDataSecurityConfig"),
    type = "structure",
    members = {
        ModelKmsKeyId = schema.new({
            id = id.from(_N, "UpdateDataSecurityConfig", "ModelKmsKeyId"),
            type = "string",
            name = "ModelKmsKeyId",
            target_id = prelude.String.id,
        }),
        VolumeKmsKeyId = schema.new({
            id = id.from(_N, "UpdateDataSecurityConfig", "VolumeKmsKeyId"),
            type = "string",
            name = "VolumeKmsKeyId",
            target_id = prelude.String.id,
        }),
        VpcConfig = schema.new({
            id = id.from(_N, "UpdateDataSecurityConfig", "VpcConfig"),
            type = "structure",
            name = "VpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
    },
})

M.UpdateFlywheelInput = schema.new({
    id = id.from(_N, "UpdateFlywheelRequest"),
    type = "structure",
    members = {
        FlywheelArn = schema.new({
            id = id.from(_N, "UpdateFlywheelInput", "FlywheelArn"),
            type = "string",
            name = "FlywheelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ActiveModelArn = schema.new({
            id = id.from(_N, "UpdateFlywheelInput", "ActiveModelArn"),
            type = "string",
            name = "ActiveModelArn",
            target_id = prelude.String.id,
        }),
        DataAccessRoleArn = schema.new({
            id = id.from(_N, "UpdateFlywheelInput", "DataAccessRoleArn"),
            type = "string",
            name = "DataAccessRoleArn",
            target_id = prelude.String.id,
        }),
        DataSecurityConfig = schema.new({
            id = id.from(_N, "UpdateFlywheelInput", "DataSecurityConfig"),
            type = "structure",
            name = "DataSecurityConfig",
            target_id = id.from(_N, "UpdateDataSecurityConfig"),
            target = M.UpdateDataSecurityConfig,
        }),
    },
})

M.UpdateFlywheelOutput = schema.new({
    id = id.from(_N, "UpdateFlywheelResponse"),
    type = "structure",
    members = {
        FlywheelProperties = schema.new({
            id = id.from(_N, "UpdateFlywheelOutput", "FlywheelProperties"),
            type = "structure",
            name = "FlywheelProperties",
            target_id = id.from(_N, "FlywheelProperties"),
            target = M.FlywheelProperties,
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
