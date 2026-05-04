local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Logref = {
            type = "string",
        },
    },
}

M.AgeRange = {
    type = "structure",
    members = {
        Low = {
            type = "integer",
        },
        High = {
            type = "integer",
        },
    },
}

M.S3Object = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.GroundTruthManifest = {
    type = "structure",
    members = {
        S3Object = M.S3Object,
    },
}

M.Asset = {
    type = "structure",
    members = {
        GroundTruthManifest = M.GroundTruthManifest,
    },
}

M.AssociatedFace = {
    type = "structure",
    members = {
        FaceId = {
            type = "string",
        },
    },
}

M.AssociateFacesInput = {
    type = "structure",
    members = {
        CollectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FaceIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        UserMatchThreshold = {
            type = "float",
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.UnsuccessfulFaceAssociationReason = {
    FACE_NOT_FOUND = "FACE_NOT_FOUND",
    ASSOCIATED_TO_A_DIFFERENT_USER = "ASSOCIATED_TO_A_DIFFERENT_USER",
    LOW_MATCH_CONFIDENCE = "LOW_MATCH_CONFIDENCE",
}

M.UnsuccessfulFaceAssociation = {
    type = "structure",
    members = {
        FaceId = {
            type = "string",
        },
        UserId = {
            type = "string",
        },
        Confidence = {
            type = "float",
        },
        Reasons = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UserStatus = {
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    CREATING = "CREATING",
    CREATED = "CREATED",
}

M.AssociateFacesOutput = {
    type = "structure",
    members = {
        AssociatedFaces = {
            type = "list",
            member = M.AssociatedFace,
        },
        UnsuccessfulFaceAssociations = {
            type = "list",
            member = M.UnsuccessfulFaceAssociation,
        },
        UserStatus = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Logref = {
            type = "string",
        },
    },
}

M.IdempotentParameterMismatchException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Logref = {
            type = "string",
        },
    },
}

M.InternalServerError = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Logref = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Logref = {
            type = "string",
        },
    },
}

M.ProvisionedThroughputExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Logref = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Logref = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Logref = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Logref = {
            type = "string",
        },
    },
}

M.Attribute = {
    DEFAULT = "DEFAULT",
    ALL = "ALL",
    AGE_RANGE = "AGE_RANGE",
    BEARD = "BEARD",
    EMOTIONS = "EMOTIONS",
    EYE_DIRECTION = "EYE_DIRECTION",
    EYEGLASSES = "EYEGLASSES",
    EYES_OPEN = "EYES_OPEN",
    GENDER = "GENDER",
    MOUTH_OPEN = "MOUTH_OPEN",
    MUSTACHE = "MUSTACHE",
    FACE_OCCLUDED = "FACE_OCCLUDED",
    SMILE = "SMILE",
    SUNGLASSES = "SUNGLASSES",
}

M.AudioMetadata = {
    type = "structure",
    members = {
        Codec = {
            type = "string",
        },
        DurationMillis = {
            type = "long",
        },
        SampleRate = {
            type = "long",
        },
        NumberOfChannels = {
            type = "long",
        },
    },
}

M.BoundingBox = {
    type = "structure",
    members = {
        Width = {
            type = "float",
        },
        Height = {
            type = "float",
        },
        Left = {
            type = "float",
        },
        Top = {
            type = "float",
        },
    },
}

M.AuditImage = {
    type = "structure",
    members = {
        Bytes = {
            type = "blob",
        },
        S3Object = M.S3Object,
        BoundingBox = M.BoundingBox,
    },
}

M.Beard = {
    type = "structure",
    members = {
        Value = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Confidence = {
            type = "float",
        },
    },
}

M.BlackFrame = {
    type = "structure",
    members = {
        MaxPixelThreshold = {
            type = "float",
        },
        MinCoveragePercentage = {
            type = "float",
        },
    },
}

M.BodyPart = {
    FACE = "FACE",
    HEAD = "HEAD",
    LEFT_HAND = "LEFT_HAND",
    RIGHT_HAND = "RIGHT_HAND",
}

M.CoversBodyPart = {
    type = "structure",
    members = {
        Confidence = {
            type = "float",
        },
        Value = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ProtectiveEquipmentType = {
    FACE_COVER = "FACE_COVER",
    HAND_COVER = "HAND_COVER",
    HEAD_COVER = "HEAD_COVER",
}

M.EquipmentDetection = {
    type = "structure",
    members = {
        BoundingBox = M.BoundingBox,
        Confidence = {
            type = "float",
        },
        Type = {
            type = "string",
        },
        CoversBodyPart = M.CoversBodyPart,
    },
}

M.ProtectiveEquipmentBodyPart = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Confidence = {
            type = "float",
        },
        EquipmentDetections = {
            type = "list",
            member = M.EquipmentDetection,
        },
    },
}

M.EmotionName = {
    HAPPY = "HAPPY",
    SAD = "SAD",
    ANGRY = "ANGRY",
    CONFUSED = "CONFUSED",
    DISGUSTED = "DISGUSTED",
    SURPRISED = "SURPRISED",
    CALM = "CALM",
    UNKNOWN = "UNKNOWN",
    FEAR = "FEAR",
}

M.Emotion = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Confidence = {
            type = "float",
        },
    },
}

M.LandmarkType = {
    eyeLeft = "eyeLeft",
    eyeRight = "eyeRight",
    nose = "nose",
    mouthLeft = "mouthLeft",
    mouthRight = "mouthRight",
    leftEyeBrowLeft = "leftEyeBrowLeft",
    leftEyeBrowRight = "leftEyeBrowRight",
    leftEyeBrowUp = "leftEyeBrowUp",
    rightEyeBrowLeft = "rightEyeBrowLeft",
    rightEyeBrowRight = "rightEyeBrowRight",
    rightEyeBrowUp = "rightEyeBrowUp",
    leftEyeLeft = "leftEyeLeft",
    leftEyeRight = "leftEyeRight",
    leftEyeUp = "leftEyeUp",
    leftEyeDown = "leftEyeDown",
    rightEyeLeft = "rightEyeLeft",
    rightEyeRight = "rightEyeRight",
    rightEyeUp = "rightEyeUp",
    rightEyeDown = "rightEyeDown",
    noseLeft = "noseLeft",
    noseRight = "noseRight",
    mouthUp = "mouthUp",
    mouthDown = "mouthDown",
    leftPupil = "leftPupil",
    rightPupil = "rightPupil",
    upperJawlineLeft = "upperJawlineLeft",
    midJawlineLeft = "midJawlineLeft",
    chinBottom = "chinBottom",
    midJawlineRight = "midJawlineRight",
    upperJawlineRight = "upperJawlineRight",
}

M.Landmark = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        X = {
            type = "float",
        },
        Y = {
            type = "float",
        },
    },
}

M.Pose = {
    type = "structure",
    members = {
        Roll = {
            type = "float",
        },
        Yaw = {
            type = "float",
        },
        Pitch = {
            type = "float",
        },
    },
}

M.ImageQuality = {
    type = "structure",
    members = {
        Brightness = {
            type = "float",
        },
        Sharpness = {
            type = "float",
        },
    },
}

M.Smile = {
    type = "structure",
    members = {
        Value = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Confidence = {
            type = "float",
        },
    },
}

M.ComparedFace = {
    type = "structure",
    members = {
        BoundingBox = M.BoundingBox,
        Confidence = {
            type = "float",
        },
        Landmarks = {
            type = "list",
            member = M.Landmark,
        },
        Pose = M.Pose,
        Quality = M.ImageQuality,
        Emotions = {
            type = "list",
            member = M.Emotion,
        },
        Smile = M.Smile,
    },
}

M.KnownGenderType = {
    Male = "Male",
    Female = "Female",
    Nonbinary = "Nonbinary",
    Unlisted = "Unlisted",
}

M.KnownGender = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
    },
}

M.Celebrity = {
    type = "structure",
    members = {
        Urls = {
            type = "list",
            member = { type = "string" },
        },
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Face = M.ComparedFace,
        MatchConfidence = {
            type = "float",
        },
        KnownGender = M.KnownGender,
    },
}

M.EyeDirection = {
    type = "structure",
    members = {
        Yaw = {
            type = "float",
        },
        Pitch = {
            type = "float",
        },
        Confidence = {
            type = "float",
        },
    },
}

M.Eyeglasses = {
    type = "structure",
    members = {
        Value = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Confidence = {
            type = "float",
        },
    },
}

M.EyeOpen = {
    type = "structure",
    members = {
        Value = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Confidence = {
            type = "float",
        },
    },
}

M.FaceOccluded = {
    type = "structure",
    members = {
        Value = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Confidence = {
            type = "float",
        },
    },
}

M.GenderType = {
    Male = "Male",
    Female = "Female",
}

M.Gender = {
    type = "structure",
    members = {
        Value = {
            type = "string",
        },
        Confidence = {
            type = "float",
        },
    },
}

M.MouthOpen = {
    type = "structure",
    members = {
        Value = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Confidence = {
            type = "float",
        },
    },
}

M.Mustache = {
    type = "structure",
    members = {
        Value = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Confidence = {
            type = "float",
        },
    },
}

M.Sunglasses = {
    type = "structure",
    members = {
        Value = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Confidence = {
            type = "float",
        },
    },
}

M.FaceDetail = {
    type = "structure",
    members = {
        BoundingBox = M.BoundingBox,
        AgeRange = M.AgeRange,
        Smile = M.Smile,
        Eyeglasses = M.Eyeglasses,
        Sunglasses = M.Sunglasses,
        Gender = M.Gender,
        Beard = M.Beard,
        Mustache = M.Mustache,
        EyesOpen = M.EyeOpen,
        MouthOpen = M.MouthOpen,
        Emotions = {
            type = "list",
            member = M.Emotion,
        },
        Landmarks = {
            type = "list",
            member = M.Landmark,
        },
        Pose = M.Pose,
        Quality = M.ImageQuality,
        Confidence = {
            type = "float",
        },
        FaceOccluded = M.FaceOccluded,
        EyeDirection = M.EyeDirection,
    },
}

M.CelebrityDetail = {
    type = "structure",
    members = {
        Urls = {
            type = "list",
            member = { type = "string" },
        },
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Confidence = {
            type = "float",
        },
        BoundingBox = M.BoundingBox,
        Face = M.FaceDetail,
        KnownGender = M.KnownGender,
    },
}

M.CelebrityRecognition = {
    type = "structure",
    members = {
        Timestamp = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Celebrity = M.CelebrityDetail,
    },
}

M.CelebrityRecognitionSortBy = {
    ID = "ID",
    TIMESTAMP = "TIMESTAMP",
}

M.ChallengeType = {
    FACE_MOVEMENT_AND_LIGHT_CHALLENGE = "FaceMovementAndLightChallenge",
    FACE_MOVEMENT_CHALLENGE = "FaceMovementChallenge",
}

M.Challenge = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Versions = {
    type = "structure",
    members = {
        Minimum = {
            type = "string",
        },
        Maximum = {
            type = "string",
        },
    },
}

M.ChallengePreference = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Versions = M.Versions,
    },
}

M.ComparedSourceImageFace = {
    type = "structure",
    members = {
        BoundingBox = M.BoundingBox,
        Confidence = {
            type = "float",
        },
    },
}

M.QualityFilter = {
    NONE = "NONE",
    AUTO = "AUTO",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
}

M.Image = {
    type = "structure",
    members = {
        Bytes = {
            type = "blob",
        },
        S3Object = M.S3Object,
    },
}

M.CompareFacesInput = {
    type = "structure",
    members = {
        SourceImage = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Image }),
        TargetImage = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Image }),
        SimilarityThreshold = {
            type = "float",
        },
        QualityFilter = {
            type = "string",
        },
    },
}

M.CompareFacesMatch = {
    type = "structure",
    members = {
        Similarity = {
            type = "float",
        },
        Face = M.ComparedFace,
    },
}

M.OrientationCorrection = {
    ROTATE_0 = "ROTATE_0",
    ROTATE_90 = "ROTATE_90",
    ROTATE_180 = "ROTATE_180",
    ROTATE_270 = "ROTATE_270",
}

M.CompareFacesOutput = {
    type = "structure",
    members = {
        SourceImageFace = M.ComparedSourceImageFace,
        FaceMatches = {
            type = "list",
            member = M.CompareFacesMatch,
        },
        UnmatchedFaces = {
            type = "list",
            member = M.ComparedFace,
        },
        SourceImageOrientationCorrection = {
            type = "string",
        },
        TargetImageOrientationCorrection = {
            type = "string",
        },
    },
}

M.ImageTooLargeException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Logref = {
            type = "string",
        },
    },
}

M.InvalidImageFormatException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Logref = {
            type = "string",
        },
    },
}

M.InvalidS3ObjectException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Logref = {
            type = "string",
        },
    },
}

M.ConnectedHomeSettings = {
    type = "structure",
    members = {
        Labels = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        MinConfidence = {
            type = "float",
        },
    },
}

M.ConnectedHomeSettingsForUpdate = {
    type = "structure",
    members = {
        Labels = {
            type = "list",
            member = { type = "string" },
        },
        MinConfidence = {
            type = "float",
        },
    },
}

M.ContentClassifier = {
    FREE_OF_PERSONALLY_IDENTIFIABLE_INFORMATION = "FreeOfPersonallyIdentifiableInformation",
    FREE_OF_ADULT_CONTENT = "FreeOfAdultContent",
}

M.ContentModerationAggregateBy = {
    TIMESTAMPS = "TIMESTAMPS",
    SEGMENTS = "SEGMENTS",
}

M.ContentType = {
    type = "structure",
    members = {
        Confidence = {
            type = "float",
        },
        Name = {
            type = "string",
        },
    },
}

M.ModerationLabel = {
    type = "structure",
    members = {
        Confidence = {
            type = "float",
        },
        Name = {
            type = "string",
        },
        ParentName = {
            type = "string",
        },
        TaxonomyLevel = {
            type = "integer",
        },
    },
}

M.ContentModerationDetection = {
    type = "structure",
    members = {
        Timestamp = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        ModerationLabel = M.ModerationLabel,
        StartTimestampMillis = {
            type = "long",
        },
        EndTimestampMillis = {
            type = "long",
        },
        DurationMillis = {
            type = "long",
        },
        ContentTypes = {
            type = "list",
            member = M.ContentType,
        },
    },
}

M.ContentModerationSortBy = {
    NAME = "NAME",
    TIMESTAMP = "TIMESTAMP",
}

M.OutputConfig = {
    type = "structure",
    members = {
        S3Bucket = {
            type = "string",
        },
        S3KeyPrefix = {
            type = "string",
        },
    },
}

M.CopyProjectVersionInput = {
    type = "structure",
    members = {
        SourceProjectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceProjectVersionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationProjectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputConfig }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.CopyProjectVersionOutput = {
    type = "structure",
    members = {
        ProjectVersionArn = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Logref = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Logref = {
            type = "string",
        },
    },
}

M.CreateCollectionInput = {
    type = "structure",
    members = {
        CollectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateCollectionOutput = {
    type = "structure",
    members = {
        StatusCode = {
            type = "integer",
        },
        CollectionArn = {
            type = "string",
        },
        FaceModelVersion = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Logref = {
            type = "string",
        },
    },
}

M.DatasetSource = {
    type = "structure",
    members = {
        GroundTruthManifest = M.GroundTruthManifest,
        DatasetArn = {
            type = "string",
        },
    },
}

M.DatasetType = {
    TRAIN = "TRAIN",
    TEST = "TEST",
}

M.CreateDatasetInput = {
    type = "structure",
    members = {
        DatasetSource = M.DatasetSource,
        DatasetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProjectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateDatasetOutput = {
    type = "structure",
    members = {
        DatasetArn = {
            type = "string",
        },
    },
}

M.LivenessOutputConfig = {
    type = "structure",
    members = {
        S3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3KeyPrefix = {
            type = "string",
        },
    },
}

M.CreateFaceLivenessSessionRequestSettings = {
    type = "structure",
    members = {
        OutputConfig = M.LivenessOutputConfig,
        AuditImagesLimit = {
            type = "integer",
        },
        ChallengePreferences = {
            type = "list",
            member = M.ChallengePreference,
        },
    },
}

M.CreateFaceLivenessSessionInput = {
    type = "structure",
    members = {
        KmsKeyId = {
            type = "string",
        },
        Settings = M.CreateFaceLivenessSessionRequestSettings,
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.CreateFaceLivenessSessionOutput = {
    type = "structure",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProjectAutoUpdate = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CustomizationFeature = {
    CONTENT_MODERATION = "CONTENT_MODERATION",
    CUSTOM_LABELS = "CUSTOM_LABELS",
}

M.CreateProjectInput = {
    type = "structure",
    members = {
        ProjectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Feature = {
            type = "string",
        },
        AutoUpdate = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateProjectOutput = {
    type = "structure",
    members = {
        ProjectArn = {
            type = "string",
        },
    },
}

M.CustomizationFeatureContentModerationConfig = {
    type = "structure",
    members = {
        ConfidenceThreshold = {
            type = "float",
        },
    },
}

M.CustomizationFeatureConfig = {
    type = "structure",
    members = {
        ContentModeration = M.CustomizationFeatureContentModerationConfig,
    },
}

M.TestingData = {
    type = "structure",
    members = {
        Assets = {
            type = "list",
            member = M.Asset,
        },
        AutoCreate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.TrainingData = {
    type = "structure",
    members = {
        Assets = {
            type = "list",
            member = M.Asset,
        },
    },
}

M.CreateProjectVersionInput = {
    type = "structure",
    members = {
        ProjectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputConfig }),
        TrainingData = M.TrainingData,
        TestingData = M.TestingData,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        KmsKeyId = {
            type = "string",
        },
        VersionDescription = {
            type = "string",
        },
        FeatureConfig = M.CustomizationFeatureConfig,
    },
}

M.CreateProjectVersionOutput = {
    type = "structure",
    members = {
        ProjectVersionArn = {
            type = "string",
        },
    },
}

M.StreamProcessorDataSharingPreference = {
    type = "structure",
    members = {
        OptIn = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.KinesisVideoStream = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.StreamProcessorInput = {
    type = "structure",
    members = {
        KinesisVideoStream = M.KinesisVideoStream,
    },
}

M.StreamProcessorNotificationChannel = {
    type = "structure",
    members = {
        SNSTopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KinesisDataStream = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.S3Destination = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
        },
        KeyPrefix = {
            type = "string",
        },
    },
}

M.StreamProcessorOutput = {
    type = "structure",
    members = {
        KinesisDataStream = M.KinesisDataStream,
        S3Destination = M.S3Destination,
    },
}

M.Point = {
    type = "structure",
    members = {
        X = {
            type = "float",
        },
        Y = {
            type = "float",
        },
    },
}

M.RegionOfInterest = {
    type = "structure",
    members = {
        BoundingBox = M.BoundingBox,
        Polygon = {
            type = "list",
            member = M.Point,
        },
    },
}

M.FaceSearchSettings = {
    type = "structure",
    members = {
        CollectionId = {
            type = "string",
        },
        FaceMatchThreshold = {
            type = "float",
        },
    },
}

M.StreamProcessorSettings = {
    type = "structure",
    members = {
        FaceSearch = M.FaceSearchSettings,
        ConnectedHome = M.ConnectedHomeSettings,
    },
}

M.CreateStreamProcessorInput = {
    type = "structure",
    members = {
        Input = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StreamProcessorInput }),
        Output = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StreamProcessorOutput }),
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Settings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StreamProcessorSettings }),
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        NotificationChannel = M.StreamProcessorNotificationChannel,
        KmsKeyId = {
            type = "string",
        },
        RegionsOfInterest = {
            type = "list",
            member = M.RegionOfInterest,
        },
        DataSharingPreference = M.StreamProcessorDataSharingPreference,
    },
}

M.CreateStreamProcessorOutput = {
    type = "structure",
    members = {
        StreamProcessorArn = {
            type = "string",
        },
    },
}

M.CreateUserInput = {
    type = "structure",
    members = {
        CollectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.CreateUserOutput = {
    type = "structure",
}

M.Geometry = {
    type = "structure",
    members = {
        BoundingBox = M.BoundingBox,
        Polygon = {
            type = "list",
            member = M.Point,
        },
    },
}

M.CustomLabel = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Confidence = {
            type = "float",
        },
        Geometry = M.Geometry,
    },
}

M.DatasetChanges = {
    type = "structure",
    members = {
        GroundTruth = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.DatasetStats = {
    type = "structure",
    members = {
        LabeledEntries = {
            type = "integer",
        },
        TotalEntries = {
            type = "integer",
        },
        TotalLabels = {
            type = "integer",
        },
        ErrorEntries = {
            type = "integer",
        },
    },
}

M.DatasetStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_COMPLETE = "CREATE_COMPLETE",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_COMPLETE = "UPDATE_COMPLETE",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
}

M.DatasetStatusMessageCode = {
    SUCCESS = "SUCCESS",
    SERVICE_ERROR = "SERVICE_ERROR",
    CLIENT_ERROR = "CLIENT_ERROR",
}

M.DatasetDescription = {
    type = "structure",
    members = {
        CreationTimestamp = {
            type = "timestamp",
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        StatusMessageCode = {
            type = "string",
        },
        DatasetStats = M.DatasetStats,
    },
}

M.DatasetLabelStats = {
    type = "structure",
    members = {
        EntryCount = {
            type = "integer",
        },
        BoundingBoxCount = {
            type = "integer",
        },
    },
}

M.DatasetLabelDescription = {
    type = "structure",
    members = {
        LabelName = {
            type = "string",
        },
        LabelStats = M.DatasetLabelStats,
    },
}

M.DatasetMetadata = {
    type = "structure",
    members = {
        CreationTimestamp = {
            type = "timestamp",
        },
        DatasetType = {
            type = "string",
        },
        DatasetArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        StatusMessageCode = {
            type = "string",
        },
    },
}

M.DeleteCollectionInput = {
    type = "structure",
    members = {
        CollectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCollectionOutput = {
    type = "structure",
    members = {
        StatusCode = {
            type = "integer",
        },
    },
}

M.DeleteDatasetInput = {
    type = "structure",
    members = {
        DatasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDatasetOutput = {
    type = "structure",
}

M.DeleteFacesInput = {
    type = "structure",
    members = {
        CollectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FaceIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UnsuccessfulFaceDeletionReason = {
    ASSOCIATED_TO_AN_EXISTING_USER = "ASSOCIATED_TO_AN_EXISTING_USER",
    FACE_NOT_FOUND = "FACE_NOT_FOUND",
}

M.UnsuccessfulFaceDeletion = {
    type = "structure",
    members = {
        FaceId = {
            type = "string",
        },
        UserId = {
            type = "string",
        },
        Reasons = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DeleteFacesOutput = {
    type = "structure",
    members = {
        DeletedFaces = {
            type = "list",
            member = { type = "string" },
        },
        UnsuccessfulFaceDeletions = {
            type = "list",
            member = M.UnsuccessfulFaceDeletion,
        },
    },
}

M.DeleteProjectInput = {
    type = "structure",
    members = {
        ProjectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProjectStatus = {
    CREATING = "CREATING",
    CREATED = "CREATED",
    DELETING = "DELETING",
}

M.DeleteProjectOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.DeleteProjectPolicyInput = {
    type = "structure",
    members = {
        ProjectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyRevisionId = {
            type = "string",
        },
    },
}

M.DeleteProjectPolicyOutput = {
    type = "structure",
}

M.InvalidPolicyRevisionIdException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Logref = {
            type = "string",
        },
    },
}

M.DeleteProjectVersionInput = {
    type = "structure",
    members = {
        ProjectVersionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProjectVersionStatus = {
    TRAINING_IN_PROGRESS = "TRAINING_IN_PROGRESS",
    TRAINING_COMPLETED = "TRAINING_COMPLETED",
    TRAINING_FAILED = "TRAINING_FAILED",
    STARTING = "STARTING",
    RUNNING = "RUNNING",
    FAILED = "FAILED",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    DELETING = "DELETING",
    COPYING_IN_PROGRESS = "COPYING_IN_PROGRESS",
    COPYING_COMPLETED = "COPYING_COMPLETED",
    COPYING_FAILED = "COPYING_FAILED",
    DEPRECATED = "DEPRECATED",
    EXPIRED = "EXPIRED",
}

M.DeleteProjectVersionOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.DeleteStreamProcessorInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteStreamProcessorOutput = {
    type = "structure",
}

M.DeleteUserInput = {
    type = "structure",
    members = {
        CollectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.DeleteUserOutput = {
    type = "structure",
}

M.DescribeCollectionInput = {
    type = "structure",
    members = {
        CollectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeCollectionOutput = {
    type = "structure",
    members = {
        FaceCount = {
            type = "long",
        },
        FaceModelVersion = {
            type = "string",
        },
        CollectionARN = {
            type = "string",
        },
        CreationTimestamp = {
            type = "timestamp",
        },
        UserCount = {
            type = "long",
        },
    },
}

M.DescribeDatasetInput = {
    type = "structure",
    members = {
        DatasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeDatasetOutput = {
    type = "structure",
    members = {
        DatasetDescription = M.DatasetDescription,
    },
}

M.DescribeProjectsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        ProjectNames = {
            type = "list",
            member = { type = "string" },
        },
        Features = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ProjectDescription = {
    type = "structure",
    members = {
        ProjectArn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        Datasets = {
            type = "list",
            member = M.DatasetMetadata,
        },
        Feature = {
            type = "string",
        },
        AutoUpdate = {
            type = "string",
        },
    },
}

M.DescribeProjectsOutput = {
    type = "structure",
    members = {
        ProjectDescriptions = {
            type = "list",
            member = M.ProjectDescription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidPaginationTokenException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Logref = {
            type = "string",
        },
    },
}

M.DescribeProjectVersionsInput = {
    type = "structure",
    members = {
        ProjectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionNames = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.Summary = {
    type = "structure",
    members = {
        S3Object = M.S3Object,
    },
}

M.EvaluationResult = {
    type = "structure",
    members = {
        F1Score = {
            type = "float",
        },
        Summary = M.Summary,
    },
}

M.ValidationData = {
    type = "structure",
    members = {
        Assets = {
            type = "list",
            member = M.Asset,
        },
    },
}

M.TestingDataResult = {
    type = "structure",
    members = {
        Input = M.TestingData,
        Output = M.TestingData,
        Validation = M.ValidationData,
    },
}

M.TrainingDataResult = {
    type = "structure",
    members = {
        Input = M.TrainingData,
        Output = M.TrainingData,
        Validation = M.ValidationData,
    },
}

M.ProjectVersionDescription = {
    type = "structure",
    members = {
        ProjectVersionArn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "timestamp",
        },
        MinInferenceUnits = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        BillableTrainingTimeInSeconds = {
            type = "long",
        },
        TrainingEndTimestamp = {
            type = "timestamp",
        },
        OutputConfig = M.OutputConfig,
        TrainingDataResult = M.TrainingDataResult,
        TestingDataResult = M.TestingDataResult,
        EvaluationResult = M.EvaluationResult,
        ManifestSummary = M.GroundTruthManifest,
        KmsKeyId = {
            type = "string",
        },
        MaxInferenceUnits = {
            type = "integer",
        },
        SourceProjectVersionArn = {
            type = "string",
        },
        VersionDescription = {
            type = "string",
        },
        Feature = {
            type = "string",
        },
        BaseModelVersion = {
            type = "string",
        },
        FeatureConfig = M.CustomizationFeatureConfig,
    },
}

M.DescribeProjectVersionsOutput = {
    type = "structure",
    members = {
        ProjectVersionDescriptions = {
            type = "list",
            member = M.ProjectVersionDescription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeStreamProcessorInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StreamProcessorStatus = {
    STOPPED = "STOPPED",
    STARTING = "STARTING",
    RUNNING = "RUNNING",
    FAILED = "FAILED",
    STOPPING = "STOPPING",
    UPDATING = "UPDATING",
}

M.DescribeStreamProcessorOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        StreamProcessorArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        CreationTimestamp = {
            type = "timestamp",
        },
        LastUpdateTimestamp = {
            type = "timestamp",
        },
        Input = M.StreamProcessorInput,
        Output = M.StreamProcessorOutput,
        RoleArn = {
            type = "string",
        },
        Settings = M.StreamProcessorSettings,
        NotificationChannel = M.StreamProcessorNotificationChannel,
        KmsKeyId = {
            type = "string",
        },
        RegionsOfInterest = {
            type = "list",
            member = M.RegionOfInterest,
        },
        DataSharingPreference = M.StreamProcessorDataSharingPreference,
    },
}

M.DetectCustomLabelsInput = {
    type = "structure",
    members = {
        ProjectVersionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Image = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Image }),
        MaxResults = {
            type = "integer",
        },
        MinConfidence = {
            type = "float",
        },
    },
}

M.DetectCustomLabelsOutput = {
    type = "structure",
    members = {
        CustomLabels = {
            type = "list",
            member = M.CustomLabel,
        },
    },
}

M.ResourceNotReadyException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Logref = {
            type = "string",
        },
    },
}

M.DetectFacesInput = {
    type = "structure",
    members = {
        Image = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Image }),
        Attributes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DetectFacesOutput = {
    type = "structure",
    members = {
        FaceDetails = {
            type = "list",
            member = M.FaceDetail,
        },
        OrientationCorrection = {
            type = "string",
        },
    },
}

M.DetectionFilter = {
    type = "structure",
    members = {
        MinConfidence = {
            type = "float",
        },
        MinBoundingBoxHeight = {
            type = "float",
        },
        MinBoundingBoxWidth = {
            type = "float",
        },
    },
}

M.DetectLabelsFeatureName = {
    GENERAL_LABELS = "GENERAL_LABELS",
    IMAGE_PROPERTIES = "IMAGE_PROPERTIES",
}

M.GeneralLabelsSettings = {
    type = "structure",
    members = {
        LabelInclusionFilters = {
            type = "list",
            member = { type = "string" },
        },
        LabelExclusionFilters = {
            type = "list",
            member = { type = "string" },
        },
        LabelCategoryInclusionFilters = {
            type = "list",
            member = { type = "string" },
        },
        LabelCategoryExclusionFilters = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DetectLabelsImagePropertiesSettings = {
    type = "structure",
    members = {
        MaxDominantColors = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.DetectLabelsSettings = {
    type = "structure",
    members = {
        GeneralLabels = M.GeneralLabelsSettings,
        ImageProperties = M.DetectLabelsImagePropertiesSettings,
    },
}

M.DetectLabelsInput = {
    type = "structure",
    members = {
        Image = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Image }),
        MaxLabels = {
            type = "integer",
        },
        MinConfidence = {
            type = "float",
        },
        Features = {
            type = "list",
            member = { type = "string" },
        },
        Settings = M.DetectLabelsSettings,
    },
}

M.DominantColor = {
    type = "structure",
    members = {
        Red = {
            type = "integer",
        },
        Blue = {
            type = "integer",
        },
        Green = {
            type = "integer",
        },
        HexCode = {
            type = "string",
        },
        CSSColor = {
            type = "string",
        },
        SimplifiedColor = {
            type = "string",
        },
        PixelPercent = {
            type = "float",
        },
    },
}

M.DetectLabelsImageQuality = {
    type = "structure",
    members = {
        Brightness = {
            type = "float",
        },
        Sharpness = {
            type = "float",
        },
        Contrast = {
            type = "float",
        },
    },
}

M.DetectLabelsImageBackground = {
    type = "structure",
    members = {
        Quality = M.DetectLabelsImageQuality,
        DominantColors = {
            type = "list",
            member = M.DominantColor,
        },
    },
}

M.DetectLabelsImageForeground = {
    type = "structure",
    members = {
        Quality = M.DetectLabelsImageQuality,
        DominantColors = {
            type = "list",
            member = M.DominantColor,
        },
    },
}

M.DetectLabelsImageProperties = {
    type = "structure",
    members = {
        Quality = M.DetectLabelsImageQuality,
        DominantColors = {
            type = "list",
            member = M.DominantColor,
        },
        Foreground = M.DetectLabelsImageForeground,
        Background = M.DetectLabelsImageBackground,
    },
}

M.LabelAlias = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.LabelCategory = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.Instance = {
    type = "structure",
    members = {
        BoundingBox = M.BoundingBox,
        Confidence = {
            type = "float",
        },
        DominantColors = {
            type = "list",
            member = M.DominantColor,
        },
    },
}

M.Parent = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.Label = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Confidence = {
            type = "float",
        },
        Instances = {
            type = "list",
            member = M.Instance,
        },
        Parents = {
            type = "list",
            member = M.Parent,
        },
        Aliases = {
            type = "list",
            member = M.LabelAlias,
        },
        Categories = {
            type = "list",
            member = M.LabelCategory,
        },
    },
}

M.DetectLabelsOutput = {
    type = "structure",
    members = {
        Labels = {
            type = "list",
            member = M.Label,
        },
        OrientationCorrection = {
            type = "string",
        },
        LabelModelVersion = {
            type = "string",
        },
        ImageProperties = M.DetectLabelsImageProperties,
    },
}

M.HumanLoopDataAttributes = {
    type = "structure",
    members = {
        ContentClassifiers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.HumanLoopConfig = {
    type = "structure",
    members = {
        HumanLoopName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FlowDefinitionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataAttributes = M.HumanLoopDataAttributes,
    },
}

M.DetectModerationLabelsInput = {
    type = "structure",
    members = {
        Image = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Image }),
        MinConfidence = {
            type = "float",
        },
        HumanLoopConfig = M.HumanLoopConfig,
        ProjectVersion = {
            type = "string",
        },
    },
}

M.HumanLoopActivationOutput = {
    type = "structure",
    members = {
        HumanLoopArn = {
            type = "string",
        },
        HumanLoopActivationReasons = {
            type = "list",
            member = { type = "string" },
        },
        HumanLoopActivationConditionsEvaluationResults = {
            type = "string",
        },
    },
}

M.DetectModerationLabelsOutput = {
    type = "structure",
    members = {
        ModerationLabels = {
            type = "list",
            member = M.ModerationLabel,
        },
        ModerationModelVersion = {
            type = "string",
        },
        HumanLoopActivationOutput = M.HumanLoopActivationOutput,
        ProjectVersion = {
            type = "string",
        },
        ContentTypes = {
            type = "list",
            member = M.ContentType,
        },
    },
}

M.HumanLoopQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        ResourceType = {
            type = "string",
        },
        QuotaCode = {
            type = "string",
        },
        ServiceCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Logref = {
            type = "string",
        },
    },
}

M.ProtectiveEquipmentSummarizationAttributes = {
    type = "structure",
    members = {
        MinConfidence = {
            type = "float",
            traits = {
                required = true,
            },
        },
        RequiredEquipmentTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DetectProtectiveEquipmentInput = {
    type = "structure",
    members = {
        Image = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Image }),
        SummarizationAttributes = M.ProtectiveEquipmentSummarizationAttributes,
    },
}

M.ProtectiveEquipmentPerson = {
    type = "structure",
    members = {
        BodyParts = {
            type = "list",
            member = M.ProtectiveEquipmentBodyPart,
        },
        BoundingBox = M.BoundingBox,
        Confidence = {
            type = "float",
        },
        Id = {
            type = "integer",
        },
    },
}

M.ProtectiveEquipmentSummary = {
    type = "structure",
    members = {
        PersonsWithRequiredEquipment = {
            type = "list",
            member = { type = "integer" },
        },
        PersonsWithoutRequiredEquipment = {
            type = "list",
            member = { type = "integer" },
        },
        PersonsIndeterminate = {
            type = "list",
            member = { type = "integer" },
        },
    },
}

M.DetectProtectiveEquipmentOutput = {
    type = "structure",
    members = {
        ProtectiveEquipmentModelVersion = {
            type = "string",
        },
        Persons = {
            type = "list",
            member = M.ProtectiveEquipmentPerson,
        },
        Summary = M.ProtectiveEquipmentSummary,
    },
}

M.DetectTextFilters = {
    type = "structure",
    members = {
        WordFilter = M.DetectionFilter,
        RegionsOfInterest = {
            type = "list",
            member = M.RegionOfInterest,
        },
    },
}

M.DetectTextInput = {
    type = "structure",
    members = {
        Image = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Image }),
        Filters = M.DetectTextFilters,
    },
}

M.TextTypes = {
    LINE = "LINE",
    WORD = "WORD",
}

M.TextDetection = {
    type = "structure",
    members = {
        DetectedText = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Id = {
            type = "integer",
        },
        ParentId = {
            type = "integer",
        },
        Confidence = {
            type = "float",
        },
        Geometry = M.Geometry,
    },
}

M.DetectTextOutput = {
    type = "structure",
    members = {
        TextDetections = {
            type = "list",
            member = M.TextDetection,
        },
        TextModelVersion = {
            type = "string",
        },
    },
}

M.DisassociatedFace = {
    type = "structure",
    members = {
        FaceId = {
            type = "string",
        },
    },
}

M.DisassociateFacesInput = {
    type = "structure",
    members = {
        CollectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        FaceIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UnsuccessfulFaceDisassociationReason = {
    FACE_NOT_FOUND = "FACE_NOT_FOUND",
    ASSOCIATED_TO_A_DIFFERENT_USER = "ASSOCIATED_TO_A_DIFFERENT_USER",
}

M.UnsuccessfulFaceDisassociation = {
    type = "structure",
    members = {
        FaceId = {
            type = "string",
        },
        UserId = {
            type = "string",
        },
        Reasons = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DisassociateFacesOutput = {
    type = "structure",
    members = {
        DisassociatedFaces = {
            type = "list",
            member = M.DisassociatedFace,
        },
        UnsuccessfulFaceDisassociations = {
            type = "list",
            member = M.UnsuccessfulFaceDisassociation,
        },
        UserStatus = {
            type = "string",
        },
    },
}

M.DistributeDataset = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DistributeDatasetEntriesInput = {
    type = "structure",
    members = {
        Datasets = {
            type = "list",
            member = M.DistributeDataset,
            traits = {
                required = true,
            },
        },
    },
}

M.DistributeDatasetEntriesOutput = {
    type = "structure",
}

M.Face = {
    type = "structure",
    members = {
        FaceId = {
            type = "string",
        },
        BoundingBox = M.BoundingBox,
        ImageId = {
            type = "string",
        },
        ExternalImageId = {
            type = "string",
        },
        Confidence = {
            type = "float",
        },
        IndexFacesModelVersion = {
            type = "string",
        },
        UserId = {
            type = "string",
        },
    },
}

M.FaceAttributes = {
    DEFAULT = "DEFAULT",
    ALL = "ALL",
}

M.FaceDetection = {
    type = "structure",
    members = {
        Timestamp = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Face = M.FaceDetail,
    },
}

M.FaceMatch = {
    type = "structure",
    members = {
        Similarity = {
            type = "float",
        },
        Face = M.Face,
    },
}

M.FaceRecord = {
    type = "structure",
    members = {
        Face = M.Face,
        FaceDetail = M.FaceDetail,
    },
}

M.FaceSearchSortBy = {
    INDEX = "INDEX",
    TIMESTAMP = "TIMESTAMP",
}

M.GetCelebrityInfoInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCelebrityInfoOutput = {
    type = "structure",
    members = {
        Urls = {
            type = "list",
            member = { type = "string" },
        },
        Name = {
            type = "string",
        },
        KnownGender = M.KnownGender,
    },
}

M.GetCelebrityRecognitionInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
    },
}

M.VideoJobStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.Video = {
    type = "structure",
    members = {
        S3Object = M.S3Object,
    },
}

M.VideoColorRange = {
    FULL = "FULL",
    LIMITED = "LIMITED",
}

M.VideoMetadata = {
    type = "structure",
    members = {
        Codec = {
            type = "string",
        },
        DurationMillis = {
            type = "long",
        },
        Format = {
            type = "string",
        },
        FrameRate = {
            type = "float",
        },
        FrameHeight = {
            type = "long",
        },
        FrameWidth = {
            type = "long",
        },
        ColorRange = {
            type = "string",
        },
    },
}

M.GetCelebrityRecognitionOutput = {
    type = "structure",
    members = {
        JobStatus = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        VideoMetadata = M.VideoMetadata,
        NextToken = {
            type = "string",
        },
        Celebrities = {
            type = "list",
            member = M.CelebrityRecognition,
        },
        JobId = {
            type = "string",
        },
        Video = M.Video,
        JobTag = {
            type = "string",
        },
    },
}

M.GetContentModerationInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        AggregateBy = {
            type = "string",
        },
    },
}

M.GetContentModerationRequestMetadata = {
    type = "structure",
    members = {
        SortBy = {
            type = "string",
        },
        AggregateBy = {
            type = "string",
        },
    },
}

M.GetContentModerationOutput = {
    type = "structure",
    members = {
        JobStatus = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        VideoMetadata = M.VideoMetadata,
        ModerationLabels = {
            type = "list",
            member = M.ContentModerationDetection,
        },
        NextToken = {
            type = "string",
        },
        ModerationModelVersion = {
            type = "string",
        },
        JobId = {
            type = "string",
        },
        Video = M.Video,
        JobTag = {
            type = "string",
        },
        GetRequestMetadata = M.GetContentModerationRequestMetadata,
    },
}

M.GetFaceDetectionInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetFaceDetectionOutput = {
    type = "structure",
    members = {
        JobStatus = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        VideoMetadata = M.VideoMetadata,
        NextToken = {
            type = "string",
        },
        Faces = {
            type = "list",
            member = M.FaceDetection,
        },
        JobId = {
            type = "string",
        },
        Video = M.Video,
        JobTag = {
            type = "string",
        },
    },
}

M.GetFaceLivenessSessionResultsInput = {
    type = "structure",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LivenessSessionStatus = {
    CREATED = "CREATED",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    EXPIRED = "EXPIRED",
}

M.GetFaceLivenessSessionResultsOutput = {
    type = "structure",
    members = {
        SessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Confidence = {
            type = "float",
        },
        ReferenceImage = M.AuditImage,
        AuditImages = {
            type = "list",
            member = M.AuditImage,
        },
        Challenge = M.Challenge,
    },
}

M.SessionNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Logref = {
            type = "string",
        },
    },
}

M.GetFaceSearchInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
    },
}

M.PersonDetail = {
    type = "structure",
    members = {
        Index = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        BoundingBox = M.BoundingBox,
        Face = M.FaceDetail,
    },
}

M.PersonMatch = {
    type = "structure",
    members = {
        Timestamp = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Person = M.PersonDetail,
        FaceMatches = {
            type = "list",
            member = M.FaceMatch,
        },
    },
}

M.GetFaceSearchOutput = {
    type = "structure",
    members = {
        JobStatus = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        VideoMetadata = M.VideoMetadata,
        Persons = {
            type = "list",
            member = M.PersonMatch,
        },
        JobId = {
            type = "string",
        },
        Video = M.Video,
        JobTag = {
            type = "string",
        },
    },
}

M.LabelDetectionAggregateBy = {
    TIMESTAMPS = "TIMESTAMPS",
    SEGMENTS = "SEGMENTS",
}

M.LabelDetectionSortBy = {
    NAME = "NAME",
    TIMESTAMP = "TIMESTAMP",
}

M.GetLabelDetectionInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
        AggregateBy = {
            type = "string",
        },
    },
}

M.GetLabelDetectionRequestMetadata = {
    type = "structure",
    members = {
        SortBy = {
            type = "string",
        },
        AggregateBy = {
            type = "string",
        },
    },
}

M.LabelDetection = {
    type = "structure",
    members = {
        Timestamp = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Label = M.Label,
        StartTimestampMillis = {
            type = "long",
        },
        EndTimestampMillis = {
            type = "long",
        },
        DurationMillis = {
            type = "long",
        },
    },
}

M.GetLabelDetectionOutput = {
    type = "structure",
    members = {
        JobStatus = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        VideoMetadata = M.VideoMetadata,
        NextToken = {
            type = "string",
        },
        Labels = {
            type = "list",
            member = M.LabelDetection,
        },
        LabelModelVersion = {
            type = "string",
        },
        JobId = {
            type = "string",
        },
        Video = M.Video,
        JobTag = {
            type = "string",
        },
        GetRequestMetadata = M.GetLabelDetectionRequestMetadata,
    },
}

M.GetMediaAnalysisJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MediaAnalysisJobFailureCode = {
    INTERNAL_ERROR = "INTERNAL_ERROR",
    INVALID_S3_OBJECT = "INVALID_S3_OBJECT",
    INVALID_MANIFEST = "INVALID_MANIFEST",
    INVALID_OUTPUT_CONFIG = "INVALID_OUTPUT_CONFIG",
    INVALID_KMS_KEY = "INVALID_KMS_KEY",
    ACCESS_DENIED = "ACCESS_DENIED",
    RESOURCE_NOT_FOUND = "RESOURCE_NOT_FOUND",
    RESOURCE_NOT_READY = "RESOURCE_NOT_READY",
    THROTTLED = "THROTTLED",
}

M.MediaAnalysisJobFailureDetails = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.MediaAnalysisInput = {
    type = "structure",
    members = {
        S3Object = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Object }),
    },
}

M.MediaAnalysisManifestSummary = {
    type = "structure",
    members = {
        S3Object = M.S3Object,
    },
}

M.MediaAnalysisDetectModerationLabelsConfig = {
    type = "structure",
    members = {
        MinConfidence = {
            type = "float",
        },
        ProjectVersion = {
            type = "string",
        },
    },
}

M.MediaAnalysisOperationsConfig = {
    type = "structure",
    members = {
        DetectModerationLabels = M.MediaAnalysisDetectModerationLabelsConfig,
    },
}

M.MediaAnalysisOutputConfig = {
    type = "structure",
    members = {
        S3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3KeyPrefix = {
            type = "string",
        },
    },
}

M.MediaAnalysisModelVersions = {
    type = "structure",
    members = {
        Moderation = {
            type = "string",
        },
    },
}

M.MediaAnalysisResults = {
    type = "structure",
    members = {
        S3Object = M.S3Object,
        ModelVersions = M.MediaAnalysisModelVersions,
    },
}

M.MediaAnalysisJobStatus = {
    CREATED = "CREATED",
    QUEUED = "QUEUED",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.GetMediaAnalysisJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobName = {
            type = "string",
        },
        OperationsConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MediaAnalysisOperationsConfig }),
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureDetails = M.MediaAnalysisJobFailureDetails,
        CreationTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CompletionTimestamp = {
            type = "timestamp",
        },
        Input = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MediaAnalysisInput }),
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MediaAnalysisOutputConfig }),
        KmsKeyId = {
            type = "string",
        },
        Results = M.MediaAnalysisResults,
        ManifestSummary = M.MediaAnalysisManifestSummary,
    },
}

M.PersonTrackingSortBy = {
    INDEX = "INDEX",
    TIMESTAMP = "TIMESTAMP",
}

M.GetPersonTrackingInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        SortBy = {
            type = "string",
        },
    },
}

M.PersonDetection = {
    type = "structure",
    members = {
        Timestamp = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Person = M.PersonDetail,
    },
}

M.GetPersonTrackingOutput = {
    type = "structure",
    members = {
        JobStatus = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        VideoMetadata = M.VideoMetadata,
        NextToken = {
            type = "string",
        },
        Persons = {
            type = "list",
            member = M.PersonDetection,
        },
        JobId = {
            type = "string",
        },
        Video = M.Video,
        JobTag = {
            type = "string",
        },
    },
}

M.GetSegmentDetectionInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ShotSegment = {
    type = "structure",
    members = {
        Index = {
            type = "long",
        },
        Confidence = {
            type = "float",
        },
    },
}

M.TechnicalCueType = {
    COLOR_BARS = "ColorBars",
    END_CREDITS = "EndCredits",
    BLACK_FRAMES = "BlackFrames",
    OPENING_CREDITS = "OpeningCredits",
    STUDIO_LOGO = "StudioLogo",
    SLATE = "Slate",
    CONTENT = "Content",
}

M.TechnicalCueSegment = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Confidence = {
            type = "float",
        },
    },
}

M.SegmentType = {
    TECHNICAL_CUE = "TECHNICAL_CUE",
    SHOT = "SHOT",
}

M.SegmentDetection = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        StartTimestampMillis = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        EndTimestampMillis = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        DurationMillis = {
            type = "long",
        },
        StartTimecodeSMPTE = {
            type = "string",
        },
        EndTimecodeSMPTE = {
            type = "string",
        },
        DurationSMPTE = {
            type = "string",
        },
        TechnicalCueSegment = M.TechnicalCueSegment,
        ShotSegment = M.ShotSegment,
        StartFrameNumber = {
            type = "long",
        },
        EndFrameNumber = {
            type = "long",
        },
        DurationFrames = {
            type = "long",
        },
    },
}

M.SegmentTypeInfo = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        ModelVersion = {
            type = "string",
        },
    },
}

M.GetSegmentDetectionOutput = {
    type = "structure",
    members = {
        JobStatus = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        VideoMetadata = {
            type = "list",
            member = M.VideoMetadata,
        },
        AudioMetadata = {
            type = "list",
            member = M.AudioMetadata,
        },
        NextToken = {
            type = "string",
        },
        Segments = {
            type = "list",
            member = M.SegmentDetection,
        },
        SelectedSegmentTypes = {
            type = "list",
            member = M.SegmentTypeInfo,
        },
        JobId = {
            type = "string",
        },
        Video = M.Video,
        JobTag = {
            type = "string",
        },
    },
}

M.GetTextDetectionInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TextDetectionResult = {
    type = "structure",
    members = {
        Timestamp = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        TextDetection = M.TextDetection,
    },
}

M.GetTextDetectionOutput = {
    type = "structure",
    members = {
        JobStatus = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        VideoMetadata = M.VideoMetadata,
        TextDetections = {
            type = "list",
            member = M.TextDetectionResult,
        },
        NextToken = {
            type = "string",
        },
        TextModelVersion = {
            type = "string",
        },
        JobId = {
            type = "string",
        },
        Video = M.Video,
        JobTag = {
            type = "string",
        },
    },
}

M.IndexFacesInput = {
    type = "structure",
    members = {
        CollectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Image = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Image }),
        ExternalImageId = {
            type = "string",
        },
        DetectionAttributes = {
            type = "list",
            member = { type = "string" },
        },
        MaxFaces = {
            type = "integer",
        },
        QualityFilter = {
            type = "string",
        },
    },
}

M.Reason = {
    EXCEEDS_MAX_FACES = "EXCEEDS_MAX_FACES",
    EXTREME_POSE = "EXTREME_POSE",
    LOW_BRIGHTNESS = "LOW_BRIGHTNESS",
    LOW_SHARPNESS = "LOW_SHARPNESS",
    LOW_CONFIDENCE = "LOW_CONFIDENCE",
    SMALL_BOUNDING_BOX = "SMALL_BOUNDING_BOX",
    LOW_FACE_QUALITY = "LOW_FACE_QUALITY",
}

M.UnindexedFace = {
    type = "structure",
    members = {
        Reasons = {
            type = "list",
            member = { type = "string" },
        },
        FaceDetail = M.FaceDetail,
    },
}

M.IndexFacesOutput = {
    type = "structure",
    members = {
        FaceRecords = {
            type = "list",
            member = M.FaceRecord,
        },
        OrientationCorrection = {
            type = "string",
        },
        FaceModelVersion = {
            type = "string",
        },
        UnindexedFaces = {
            type = "list",
            member = M.UnindexedFace,
        },
    },
}

M.InvalidManifestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Logref = {
            type = "string",
        },
    },
}

M.KinesisVideoStreamStartSelector = {
    type = "structure",
    members = {
        ProducerTimestamp = {
            type = "long",
        },
        FragmentNumber = {
            type = "string",
        },
    },
}

M.LabelDetectionFeatureName = {
    GENERAL_LABELS = "GENERAL_LABELS",
}

M.LabelDetectionSettings = {
    type = "structure",
    members = {
        GeneralLabels = M.GeneralLabelsSettings,
    },
}

M.ListCollectionsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListCollectionsOutput = {
    type = "structure",
    members = {
        CollectionIds = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        FaceModelVersions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListDatasetEntriesInput = {
    type = "structure",
    members = {
        DatasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContainsLabels = {
            type = "list",
            member = { type = "string" },
        },
        Labeled = {
            type = "boolean",
        },
        SourceRefContains = {
            type = "string",
        },
        HasErrors = {
            type = "boolean",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListDatasetEntriesOutput = {
    type = "structure",
    members = {
        DatasetEntries = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDatasetLabelsInput = {
    type = "structure",
    members = {
        DatasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListDatasetLabelsOutput = {
    type = "structure",
    members = {
        DatasetLabelDescriptions = {
            type = "list",
            member = M.DatasetLabelDescription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFacesInput = {
    type = "structure",
    members = {
        CollectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        UserId = {
            type = "string",
        },
        FaceIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListFacesOutput = {
    type = "structure",
    members = {
        Faces = {
            type = "list",
            member = M.Face,
        },
        NextToken = {
            type = "string",
        },
        FaceModelVersion = {
            type = "string",
        },
    },
}

M.ListMediaAnalysisJobsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.MediaAnalysisJobDescription = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobName = {
            type = "string",
        },
        OperationsConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MediaAnalysisOperationsConfig }),
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureDetails = M.MediaAnalysisJobFailureDetails,
        CreationTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CompletionTimestamp = {
            type = "timestamp",
        },
        Input = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MediaAnalysisInput }),
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MediaAnalysisOutputConfig }),
        KmsKeyId = {
            type = "string",
        },
        Results = M.MediaAnalysisResults,
        ManifestSummary = M.MediaAnalysisManifestSummary,
    },
}

M.ListMediaAnalysisJobsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MediaAnalysisJobs = {
            type = "list",
            member = M.MediaAnalysisJobDescription,
            traits = {
                required = true,
            },
        },
    },
}

M.ListProjectPoliciesInput = {
    type = "structure",
    members = {
        ProjectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ProjectPolicy = {
    type = "structure",
    members = {
        ProjectArn = {
            type = "string",
        },
        PolicyName = {
            type = "string",
        },
        PolicyRevisionId = {
            type = "string",
        },
        PolicyDocument = {
            type = "string",
        },
        CreationTimestamp = {
            type = "timestamp",
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListProjectPoliciesOutput = {
    type = "structure",
    members = {
        ProjectPolicies = {
            type = "list",
            member = M.ProjectPolicy,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListStreamProcessorsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.StreamProcessor = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ListStreamProcessorsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        StreamProcessors = {
            type = "list",
            member = M.StreamProcessor,
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListUsersInput = {
    type = "structure",
    members = {
        CollectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.User = {
    type = "structure",
    members = {
        UserId = {
            type = "string",
        },
        UserStatus = {
            type = "string",
        },
    },
}

M.ListUsersOutput = {
    type = "structure",
    members = {
        Users = {
            type = "list",
            member = M.User,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MalformedPolicyDocumentException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Logref = {
            type = "string",
        },
    },
}

M.MatchedUser = {
    type = "structure",
    members = {
        UserId = {
            type = "string",
        },
        UserStatus = {
            type = "string",
        },
    },
}

M.NotificationChannel = {
    type = "structure",
    members = {
        SNSTopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutProjectPolicyInput = {
    type = "structure",
    members = {
        ProjectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyRevisionId = {
            type = "string",
        },
        PolicyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutProjectPolicyOutput = {
    type = "structure",
    members = {
        PolicyRevisionId = {
            type = "string",
        },
    },
}

M.RecognizeCelebritiesInput = {
    type = "structure",
    members = {
        Image = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Image }),
    },
}

M.RecognizeCelebritiesOutput = {
    type = "structure",
    members = {
        CelebrityFaces = {
            type = "list",
            member = M.Celebrity,
        },
        UnrecognizedFaces = {
            type = "list",
            member = M.ComparedFace,
        },
        OrientationCorrection = {
            type = "string",
        },
    },
}

M.SearchFacesInput = {
    type = "structure",
    members = {
        CollectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxFaces = {
            type = "integer",
        },
        FaceMatchThreshold = {
            type = "float",
        },
    },
}

M.SearchFacesOutput = {
    type = "structure",
    members = {
        SearchedFaceId = {
            type = "string",
        },
        FaceMatches = {
            type = "list",
            member = M.FaceMatch,
        },
        FaceModelVersion = {
            type = "string",
        },
    },
}

M.SearchFacesByImageInput = {
    type = "structure",
    members = {
        CollectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Image = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Image }),
        MaxFaces = {
            type = "integer",
        },
        FaceMatchThreshold = {
            type = "float",
        },
        QualityFilter = {
            type = "string",
        },
    },
}

M.SearchFacesByImageOutput = {
    type = "structure",
    members = {
        SearchedFaceBoundingBox = M.BoundingBox,
        SearchedFaceConfidence = {
            type = "float",
        },
        FaceMatches = {
            type = "list",
            member = M.FaceMatch,
        },
        FaceModelVersion = {
            type = "string",
        },
    },
}

M.SearchUsersInput = {
    type = "structure",
    members = {
        CollectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
        },
        FaceId = {
            type = "string",
        },
        UserMatchThreshold = {
            type = "float",
        },
        MaxUsers = {
            type = "integer",
        },
    },
}

M.SearchedFace = {
    type = "structure",
    members = {
        FaceId = {
            type = "string",
        },
    },
}

M.SearchedUser = {
    type = "structure",
    members = {
        UserId = {
            type = "string",
        },
    },
}

M.UserMatch = {
    type = "structure",
    members = {
        Similarity = {
            type = "float",
        },
        User = M.MatchedUser,
    },
}

M.SearchUsersOutput = {
    type = "structure",
    members = {
        UserMatches = {
            type = "list",
            member = M.UserMatch,
        },
        FaceModelVersion = {
            type = "string",
        },
        SearchedFace = M.SearchedFace,
        SearchedUser = M.SearchedUser,
    },
}

M.SearchUsersByImageInput = {
    type = "structure",
    members = {
        CollectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Image = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Image }),
        UserMatchThreshold = {
            type = "float",
        },
        MaxUsers = {
            type = "integer",
        },
        QualityFilter = {
            type = "string",
        },
    },
}

M.SearchedFaceDetails = {
    type = "structure",
    members = {
        FaceDetail = M.FaceDetail,
    },
}

M.UnsearchedFaceReason = {
    FACE_NOT_LARGEST = "FACE_NOT_LARGEST",
    EXCEEDS_MAX_FACES = "EXCEEDS_MAX_FACES",
    EXTREME_POSE = "EXTREME_POSE",
    LOW_BRIGHTNESS = "LOW_BRIGHTNESS",
    LOW_SHARPNESS = "LOW_SHARPNESS",
    LOW_CONFIDENCE = "LOW_CONFIDENCE",
    SMALL_BOUNDING_BOX = "SMALL_BOUNDING_BOX",
    LOW_FACE_QUALITY = "LOW_FACE_QUALITY",
}

M.UnsearchedFace = {
    type = "structure",
    members = {
        FaceDetails = M.FaceDetail,
        Reasons = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SearchUsersByImageOutput = {
    type = "structure",
    members = {
        UserMatches = {
            type = "list",
            member = M.UserMatch,
        },
        FaceModelVersion = {
            type = "string",
        },
        SearchedFace = M.SearchedFaceDetails,
        UnsearchedFaces = {
            type = "list",
            member = M.UnsearchedFace,
        },
    },
}

M.StartCelebrityRecognitionInput = {
    type = "structure",
    members = {
        Video = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Video }),
        ClientRequestToken = {
            type = "string",
        },
        NotificationChannel = M.NotificationChannel,
        JobTag = {
            type = "string",
        },
    },
}

M.StartCelebrityRecognitionOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.VideoTooLargeException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Logref = {
            type = "string",
        },
    },
}

M.StartContentModerationInput = {
    type = "structure",
    members = {
        Video = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Video }),
        MinConfidence = {
            type = "float",
        },
        ClientRequestToken = {
            type = "string",
        },
        NotificationChannel = M.NotificationChannel,
        JobTag = {
            type = "string",
        },
    },
}

M.StartContentModerationOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.StartFaceDetectionInput = {
    type = "structure",
    members = {
        Video = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Video }),
        ClientRequestToken = {
            type = "string",
        },
        NotificationChannel = M.NotificationChannel,
        FaceAttributes = {
            type = "string",
        },
        JobTag = {
            type = "string",
        },
    },
}

M.StartFaceDetectionOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.StartFaceSearchInput = {
    type = "structure",
    members = {
        Video = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Video }),
        ClientRequestToken = {
            type = "string",
        },
        FaceMatchThreshold = {
            type = "float",
        },
        CollectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotificationChannel = M.NotificationChannel,
        JobTag = {
            type = "string",
        },
    },
}

M.StartFaceSearchOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.StartLabelDetectionInput = {
    type = "structure",
    members = {
        Video = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Video }),
        ClientRequestToken = {
            type = "string",
        },
        MinConfidence = {
            type = "float",
        },
        NotificationChannel = M.NotificationChannel,
        JobTag = {
            type = "string",
        },
        Features = {
            type = "list",
            member = { type = "string" },
        },
        Settings = M.LabelDetectionSettings,
    },
}

M.StartLabelDetectionOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.StartMediaAnalysisJobInput = {
    type = "structure",
    members = {
        ClientRequestToken = {
            type = "string",
        },
        JobName = {
            type = "string",
        },
        OperationsConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MediaAnalysisOperationsConfig }),
        Input = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MediaAnalysisInput }),
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MediaAnalysisOutputConfig }),
        KmsKeyId = {
            type = "string",
        },
    },
}

M.StartMediaAnalysisJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartPersonTrackingInput = {
    type = "structure",
    members = {
        Video = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Video }),
        ClientRequestToken = {
            type = "string",
        },
        NotificationChannel = M.NotificationChannel,
        JobTag = {
            type = "string",
        },
    },
}

M.StartPersonTrackingOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.StartProjectVersionInput = {
    type = "structure",
    members = {
        ProjectVersionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MinInferenceUnits = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MaxInferenceUnits = {
            type = "integer",
        },
    },
}

M.StartProjectVersionOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.StartShotDetectionFilter = {
    type = "structure",
    members = {
        MinSegmentConfidence = {
            type = "float",
        },
    },
}

M.StartTechnicalCueDetectionFilter = {
    type = "structure",
    members = {
        MinSegmentConfidence = {
            type = "float",
        },
        BlackFrame = M.BlackFrame,
    },
}

M.StartSegmentDetectionFilters = {
    type = "structure",
    members = {
        TechnicalCueFilter = M.StartTechnicalCueDetectionFilter,
        ShotFilter = M.StartShotDetectionFilter,
    },
}

M.StartSegmentDetectionInput = {
    type = "structure",
    members = {
        Video = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Video }),
        ClientRequestToken = {
            type = "string",
        },
        NotificationChannel = M.NotificationChannel,
        JobTag = {
            type = "string",
        },
        Filters = M.StartSegmentDetectionFilters,
        SegmentTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.StartSegmentDetectionOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.StreamProcessingStartSelector = {
    type = "structure",
    members = {
        KVSStreamStartSelector = M.KinesisVideoStreamStartSelector,
    },
}

M.StreamProcessingStopSelector = {
    type = "structure",
    members = {
        MaxDurationInSeconds = {
            type = "long",
        },
    },
}

M.StartStreamProcessorInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartSelector = M.StreamProcessingStartSelector,
        StopSelector = M.StreamProcessingStopSelector,
    },
}

M.StartStreamProcessorOutput = {
    type = "structure",
    members = {
        SessionId = {
            type = "string",
        },
    },
}

M.StartTextDetectionFilters = {
    type = "structure",
    members = {
        WordFilter = M.DetectionFilter,
        RegionsOfInterest = {
            type = "list",
            member = M.RegionOfInterest,
        },
    },
}

M.StartTextDetectionInput = {
    type = "structure",
    members = {
        Video = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Video }),
        ClientRequestToken = {
            type = "string",
        },
        NotificationChannel = M.NotificationChannel,
        JobTag = {
            type = "string",
        },
        Filters = M.StartTextDetectionFilters,
    },
}

M.StartTextDetectionOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.StopProjectVersionInput = {
    type = "structure",
    members = {
        ProjectVersionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopProjectVersionOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.StopStreamProcessorInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopStreamProcessorOutput = {
    type = "structure",
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateDatasetEntriesInput = {
    type = "structure",
    members = {
        DatasetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Changes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatasetChanges }),
    },
}

M.UpdateDatasetEntriesOutput = {
    type = "structure",
}

M.StreamProcessorParameterToDelete = {
    ConnectedHomeMinConfidence = "ConnectedHomeMinConfidence",
    RegionsOfInterest = "RegionsOfInterest",
}

M.StreamProcessorSettingsForUpdate = {
    type = "structure",
    members = {
        ConnectedHomeForUpdate = M.ConnectedHomeSettingsForUpdate,
    },
}

M.UpdateStreamProcessorInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SettingsForUpdate = M.StreamProcessorSettingsForUpdate,
        RegionsOfInterestForUpdate = {
            type = "list",
            member = M.RegionOfInterest,
        },
        DataSharingPreferenceForUpdate = M.StreamProcessorDataSharingPreference,
        ParametersToDelete = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateStreamProcessorOutput = {
    type = "structure",
}

return M
