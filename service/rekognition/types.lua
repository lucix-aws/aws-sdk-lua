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
            type = "number",
        },
        High = {
            type = "number",
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
        S3Object = {
            type = "structure",
        },
    },
}

M.Asset = {
    type = "structure",
    members = {
        GroundTruthManifest = {
            type = "structure",
        },
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        UserMatchThreshold = {
            type = "number",
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
            type = "number",
        },
        Reasons = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        UnsuccessfulFaceAssociations = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        SampleRate = {
            type = "number",
        },
        NumberOfChannels = {
            type = "number",
        },
    },
}

M.BoundingBox = {
    type = "structure",
    members = {
        Width = {
            type = "number",
        },
        Height = {
            type = "number",
        },
        Left = {
            type = "number",
        },
        Top = {
            type = "number",
        },
    },
}

M.AuditImage = {
    type = "structure",
    members = {
        Bytes = {
            type = "blob",
        },
        S3Object = {
            type = "structure",
        },
        BoundingBox = {
            type = "structure",
        },
    },
}

M.Beard = {
    type = "structure",
    members = {
        Value = {
            type = "boolean",
        },
        Confidence = {
            type = "number",
        },
    },
}

M.BlackFrame = {
    type = "structure",
    members = {
        MaxPixelThreshold = {
            type = "number",
        },
        MinCoveragePercentage = {
            type = "number",
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
            type = "number",
        },
        Value = {
            type = "boolean",
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
        BoundingBox = {
            type = "structure",
        },
        Confidence = {
            type = "number",
        },
        Type = {
            type = "string",
        },
        CoversBodyPart = {
            type = "structure",
        },
    },
}

M.ProtectiveEquipmentBodyPart = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Confidence = {
            type = "number",
        },
        EquipmentDetections = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        Y = {
            type = "number",
        },
    },
}

M.Pose = {
    type = "structure",
    members = {
        Roll = {
            type = "number",
        },
        Yaw = {
            type = "number",
        },
        Pitch = {
            type = "number",
        },
    },
}

M.ImageQuality = {
    type = "structure",
    members = {
        Brightness = {
            type = "number",
        },
        Sharpness = {
            type = "number",
        },
    },
}

M.Smile = {
    type = "structure",
    members = {
        Value = {
            type = "boolean",
        },
        Confidence = {
            type = "number",
        },
    },
}

M.ComparedFace = {
    type = "structure",
    members = {
        BoundingBox = {
            type = "structure",
        },
        Confidence = {
            type = "number",
        },
        Landmarks = {
            type = "list",
            member_type = "structure",
        },
        Pose = {
            type = "structure",
        },
        Quality = {
            type = "structure",
        },
        Emotions = {
            type = "list",
            member_type = "structure",
        },
        Smile = {
            type = "structure",
        },
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
            member_type = "string",
        },
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Face = {
            type = "structure",
        },
        MatchConfidence = {
            type = "number",
        },
        KnownGender = {
            type = "structure",
        },
    },
}

M.EyeDirection = {
    type = "structure",
    members = {
        Yaw = {
            type = "number",
        },
        Pitch = {
            type = "number",
        },
        Confidence = {
            type = "number",
        },
    },
}

M.Eyeglasses = {
    type = "structure",
    members = {
        Value = {
            type = "boolean",
        },
        Confidence = {
            type = "number",
        },
    },
}

M.EyeOpen = {
    type = "structure",
    members = {
        Value = {
            type = "boolean",
        },
        Confidence = {
            type = "number",
        },
    },
}

M.FaceOccluded = {
    type = "structure",
    members = {
        Value = {
            type = "boolean",
        },
        Confidence = {
            type = "number",
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
            type = "number",
        },
    },
}

M.MouthOpen = {
    type = "structure",
    members = {
        Value = {
            type = "boolean",
        },
        Confidence = {
            type = "number",
        },
    },
}

M.Mustache = {
    type = "structure",
    members = {
        Value = {
            type = "boolean",
        },
        Confidence = {
            type = "number",
        },
    },
}

M.Sunglasses = {
    type = "structure",
    members = {
        Value = {
            type = "boolean",
        },
        Confidence = {
            type = "number",
        },
    },
}

M.FaceDetail = {
    type = "structure",
    members = {
        BoundingBox = {
            type = "structure",
        },
        AgeRange = {
            type = "structure",
        },
        Smile = {
            type = "structure",
        },
        Eyeglasses = {
            type = "structure",
        },
        Sunglasses = {
            type = "structure",
        },
        Gender = {
            type = "structure",
        },
        Beard = {
            type = "structure",
        },
        Mustache = {
            type = "structure",
        },
        EyesOpen = {
            type = "structure",
        },
        MouthOpen = {
            type = "structure",
        },
        Emotions = {
            type = "list",
            member_type = "structure",
        },
        Landmarks = {
            type = "list",
            member_type = "structure",
        },
        Pose = {
            type = "structure",
        },
        Quality = {
            type = "structure",
        },
        Confidence = {
            type = "number",
        },
        FaceOccluded = {
            type = "structure",
        },
        EyeDirection = {
            type = "structure",
        },
    },
}

M.CelebrityDetail = {
    type = "structure",
    members = {
        Urls = {
            type = "list",
            member_type = "string",
        },
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Confidence = {
            type = "number",
        },
        BoundingBox = {
            type = "structure",
        },
        Face = {
            type = "structure",
        },
        KnownGender = {
            type = "structure",
        },
    },
}

M.CelebrityRecognition = {
    type = "structure",
    members = {
        Timestamp = {
            type = "number",
        },
        Celebrity = {
            type = "structure",
        },
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
        Versions = {
            type = "structure",
        },
    },
}

M.ComparedSourceImageFace = {
    type = "structure",
    members = {
        BoundingBox = {
            type = "structure",
        },
        Confidence = {
            type = "number",
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
        S3Object = {
            type = "structure",
        },
    },
}

M.CompareFacesInput = {
    type = "structure",
    members = {
        SourceImage = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TargetImage = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SimilarityThreshold = {
            type = "number",
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
            type = "number",
        },
        Face = {
            type = "structure",
        },
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
        SourceImageFace = {
            type = "structure",
        },
        FaceMatches = {
            type = "list",
            member_type = "structure",
        },
        UnmatchedFaces = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        MinConfidence = {
            type = "number",
        },
    },
}

M.ConnectedHomeSettingsForUpdate = {
    type = "structure",
    members = {
        Labels = {
            type = "list",
            member_type = "string",
        },
        MinConfidence = {
            type = "number",
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
            type = "number",
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
            type = "number",
        },
        Name = {
            type = "string",
        },
        ParentName = {
            type = "string",
        },
        TaxonomyLevel = {
            type = "number",
        },
    },
}

M.ContentModerationDetection = {
    type = "structure",
    members = {
        Timestamp = {
            type = "number",
        },
        ModerationLabel = {
            type = "structure",
        },
        StartTimestampMillis = {
            type = "number",
        },
        EndTimestampMillis = {
            type = "number",
        },
        DurationMillis = {
            type = "number",
        },
        ContentTypes = {
            type = "list",
            member_type = "structure",
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
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateCollectionOutput = {
    type = "structure",
    members = {
        StatusCode = {
            type = "number",
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
        GroundTruthManifest = {
            type = "structure",
        },
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
        DatasetSource = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
        OutputConfig = {
            type = "structure",
        },
        AuditImagesLimit = {
            type = "number",
        },
        ChallengePreferences = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateFaceLivenessSessionInput = {
    type = "structure",
    members = {
        KmsKeyId = {
            type = "string",
        },
        Settings = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
    },
}

M.CustomizationFeatureConfig = {
    type = "structure",
    members = {
        ContentModeration = {
            type = "structure",
        },
    },
}

M.TestingData = {
    type = "structure",
    members = {
        Assets = {
            type = "list",
            member_type = "structure",
        },
        AutoCreate = {
            type = "boolean",
        },
    },
}

M.TrainingData = {
    type = "structure",
    members = {
        Assets = {
            type = "list",
            member_type = "structure",
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
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TrainingData = {
            type = "structure",
        },
        TestingData = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        VersionDescription = {
            type = "string",
        },
        FeatureConfig = {
            type = "structure",
        },
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
        KinesisVideoStream = {
            type = "structure",
        },
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
        KinesisDataStream = {
            type = "structure",
        },
        S3Destination = {
            type = "structure",
        },
    },
}

M.Point = {
    type = "structure",
    members = {
        X = {
            type = "number",
        },
        Y = {
            type = "number",
        },
    },
}

M.RegionOfInterest = {
    type = "structure",
    members = {
        BoundingBox = {
            type = "structure",
        },
        Polygon = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.StreamProcessorSettings = {
    type = "structure",
    members = {
        FaceSearch = {
            type = "structure",
        },
        ConnectedHome = {
            type = "structure",
        },
    },
}

M.CreateStreamProcessorInput = {
    type = "structure",
    members = {
        Input = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Output = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Settings = {
            type = "structure",
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
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        NotificationChannel = {
            type = "structure",
        },
        KmsKeyId = {
            type = "string",
        },
        RegionsOfInterest = {
            type = "list",
            member_type = "structure",
        },
        DataSharingPreference = {
            type = "structure",
        },
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
        BoundingBox = {
            type = "structure",
        },
        Polygon = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        Geometry = {
            type = "structure",
        },
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
            type = "number",
        },
        TotalEntries = {
            type = "number",
        },
        TotalLabels = {
            type = "number",
        },
        ErrorEntries = {
            type = "number",
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
        DatasetStats = {
            type = "structure",
        },
    },
}

M.DatasetLabelStats = {
    type = "structure",
    members = {
        EntryCount = {
            type = "number",
        },
        BoundingBoxCount = {
            type = "number",
        },
    },
}

M.DatasetLabelDescription = {
    type = "structure",
    members = {
        LabelName = {
            type = "string",
        },
        LabelStats = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "string",
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
            member_type = "string",
        },
    },
}

M.DeleteFacesOutput = {
    type = "structure",
    members = {
        DeletedFaces = {
            type = "list",
            member_type = "string",
        },
        UnsuccessfulFaceDeletions = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
        DatasetDescription = {
            type = "structure",
        },
    },
}

M.DescribeProjectsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        ProjectNames = {
            type = "list",
            member_type = "string",
        },
        Features = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.Summary = {
    type = "structure",
    members = {
        S3Object = {
            type = "structure",
        },
    },
}

M.EvaluationResult = {
    type = "structure",
    members = {
        F1Score = {
            type = "number",
        },
        Summary = {
            type = "structure",
        },
    },
}

M.ValidationData = {
    type = "structure",
    members = {
        Assets = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TestingDataResult = {
    type = "structure",
    members = {
        Input = {
            type = "structure",
        },
        Output = {
            type = "structure",
        },
        Validation = {
            type = "structure",
        },
    },
}

M.TrainingDataResult = {
    type = "structure",
    members = {
        Input = {
            type = "structure",
        },
        Output = {
            type = "structure",
        },
        Validation = {
            type = "structure",
        },
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
            type = "number",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        BillableTrainingTimeInSeconds = {
            type = "number",
        },
        TrainingEndTimestamp = {
            type = "timestamp",
        },
        OutputConfig = {
            type = "structure",
        },
        TrainingDataResult = {
            type = "structure",
        },
        TestingDataResult = {
            type = "structure",
        },
        EvaluationResult = {
            type = "structure",
        },
        ManifestSummary = {
            type = "structure",
        },
        KmsKeyId = {
            type = "string",
        },
        MaxInferenceUnits = {
            type = "number",
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
        FeatureConfig = {
            type = "structure",
        },
    },
}

M.DescribeProjectVersionsOutput = {
    type = "structure",
    members = {
        ProjectVersionDescriptions = {
            type = "list",
            member_type = "structure",
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
        Input = {
            type = "structure",
        },
        Output = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
        },
        Settings = {
            type = "structure",
        },
        NotificationChannel = {
            type = "structure",
        },
        KmsKeyId = {
            type = "string",
        },
        RegionsOfInterest = {
            type = "list",
            member_type = "structure",
        },
        DataSharingPreference = {
            type = "structure",
        },
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
        Image = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        MinConfidence = {
            type = "number",
        },
    },
}

M.DetectCustomLabelsOutput = {
    type = "structure",
    members = {
        CustomLabels = {
            type = "list",
            member_type = "structure",
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
        Image = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DetectFacesOutput = {
    type = "structure",
    members = {
        FaceDetails = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        MinBoundingBoxHeight = {
            type = "number",
        },
        MinBoundingBoxWidth = {
            type = "number",
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
            member_type = "string",
        },
        LabelExclusionFilters = {
            type = "list",
            member_type = "string",
        },
        LabelCategoryInclusionFilters = {
            type = "list",
            member_type = "string",
        },
        LabelCategoryExclusionFilters = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DetectLabelsImagePropertiesSettings = {
    type = "structure",
    members = {
        MaxDominantColors = {
            type = "number",
        },
    },
}

M.DetectLabelsSettings = {
    type = "structure",
    members = {
        GeneralLabels = {
            type = "structure",
        },
        ImageProperties = {
            type = "structure",
        },
    },
}

M.DetectLabelsInput = {
    type = "structure",
    members = {
        Image = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MaxLabels = {
            type = "number",
        },
        MinConfidence = {
            type = "number",
        },
        Features = {
            type = "list",
            member_type = "string",
        },
        Settings = {
            type = "structure",
        },
    },
}

M.DominantColor = {
    type = "structure",
    members = {
        Red = {
            type = "number",
        },
        Blue = {
            type = "number",
        },
        Green = {
            type = "number",
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
            type = "number",
        },
    },
}

M.DetectLabelsImageQuality = {
    type = "structure",
    members = {
        Brightness = {
            type = "number",
        },
        Sharpness = {
            type = "number",
        },
        Contrast = {
            type = "number",
        },
    },
}

M.DetectLabelsImageBackground = {
    type = "structure",
    members = {
        Quality = {
            type = "structure",
        },
        DominantColors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DetectLabelsImageForeground = {
    type = "structure",
    members = {
        Quality = {
            type = "structure",
        },
        DominantColors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DetectLabelsImageProperties = {
    type = "structure",
    members = {
        Quality = {
            type = "structure",
        },
        DominantColors = {
            type = "list",
            member_type = "structure",
        },
        Foreground = {
            type = "structure",
        },
        Background = {
            type = "structure",
        },
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
        BoundingBox = {
            type = "structure",
        },
        Confidence = {
            type = "number",
        },
        DominantColors = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        Instances = {
            type = "list",
            member_type = "structure",
        },
        Parents = {
            type = "list",
            member_type = "structure",
        },
        Aliases = {
            type = "list",
            member_type = "structure",
        },
        Categories = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DetectLabelsOutput = {
    type = "structure",
    members = {
        Labels = {
            type = "list",
            member_type = "structure",
        },
        OrientationCorrection = {
            type = "string",
        },
        LabelModelVersion = {
            type = "string",
        },
        ImageProperties = {
            type = "structure",
        },
    },
}

M.HumanLoopDataAttributes = {
    type = "structure",
    members = {
        ContentClassifiers = {
            type = "list",
            member_type = "string",
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
        DataAttributes = {
            type = "structure",
        },
    },
}

M.DetectModerationLabelsInput = {
    type = "structure",
    members = {
        Image = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MinConfidence = {
            type = "number",
        },
        HumanLoopConfig = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "structure",
        },
        ModerationModelVersion = {
            type = "string",
        },
        HumanLoopActivationOutput = {
            type = "structure",
        },
        ProjectVersion = {
            type = "string",
        },
        ContentTypes = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        RequiredEquipmentTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetectProtectiveEquipmentInput = {
    type = "structure",
    members = {
        Image = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SummarizationAttributes = {
            type = "structure",
        },
    },
}

M.ProtectiveEquipmentPerson = {
    type = "structure",
    members = {
        BodyParts = {
            type = "list",
            member_type = "structure",
        },
        BoundingBox = {
            type = "structure",
        },
        Confidence = {
            type = "number",
        },
        Id = {
            type = "number",
        },
    },
}

M.ProtectiveEquipmentSummary = {
    type = "structure",
    members = {
        PersonsWithRequiredEquipment = {
            type = "list",
            member_type = "number",
        },
        PersonsWithoutRequiredEquipment = {
            type = "list",
            member_type = "number",
        },
        PersonsIndeterminate = {
            type = "list",
            member_type = "number",
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
            member_type = "structure",
        },
        Summary = {
            type = "structure",
        },
    },
}

M.DetectTextFilters = {
    type = "structure",
    members = {
        WordFilter = {
            type = "structure",
        },
        RegionsOfInterest = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DetectTextInput = {
    type = "structure",
    members = {
        Image = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "structure",
        },
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
            type = "number",
        },
        ParentId = {
            type = "number",
        },
        Confidence = {
            type = "number",
        },
        Geometry = {
            type = "structure",
        },
    },
}

M.DetectTextOutput = {
    type = "structure",
    members = {
        TextDetections = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
        },
    },
}

M.DisassociateFacesOutput = {
    type = "structure",
    members = {
        DisassociatedFaces = {
            type = "list",
            member_type = "structure",
        },
        UnsuccessfulFaceDisassociations = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        BoundingBox = {
            type = "structure",
        },
        ImageId = {
            type = "string",
        },
        ExternalImageId = {
            type = "string",
        },
        Confidence = {
            type = "number",
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
            type = "number",
        },
        Face = {
            type = "structure",
        },
    },
}

M.FaceMatch = {
    type = "structure",
    members = {
        Similarity = {
            type = "number",
        },
        Face = {
            type = "structure",
        },
    },
}

M.FaceRecord = {
    type = "structure",
    members = {
        Face = {
            type = "structure",
        },
        FaceDetail = {
            type = "structure",
        },
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
            member_type = "string",
        },
        Name = {
            type = "string",
        },
        KnownGender = {
            type = "structure",
        },
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
            type = "number",
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
        S3Object = {
            type = "structure",
        },
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
            type = "number",
        },
        Format = {
            type = "string",
        },
        FrameRate = {
            type = "number",
        },
        FrameHeight = {
            type = "number",
        },
        FrameWidth = {
            type = "number",
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
        VideoMetadata = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
        Celebrities = {
            type = "list",
            member_type = "structure",
        },
        JobId = {
            type = "string",
        },
        Video = {
            type = "structure",
        },
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
            type = "number",
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
        VideoMetadata = {
            type = "structure",
        },
        ModerationLabels = {
            type = "list",
            member_type = "structure",
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
        Video = {
            type = "structure",
        },
        JobTag = {
            type = "string",
        },
        GetRequestMetadata = {
            type = "structure",
        },
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
            type = "number",
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
        VideoMetadata = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
        Faces = {
            type = "list",
            member_type = "structure",
        },
        JobId = {
            type = "string",
        },
        Video = {
            type = "structure",
        },
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
            type = "number",
        },
        ReferenceImage = {
            type = "structure",
        },
        AuditImages = {
            type = "list",
            member_type = "structure",
        },
        Challenge = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        BoundingBox = {
            type = "structure",
        },
        Face = {
            type = "structure",
        },
    },
}

M.PersonMatch = {
    type = "structure",
    members = {
        Timestamp = {
            type = "number",
        },
        Person = {
            type = "structure",
        },
        FaceMatches = {
            type = "list",
            member_type = "structure",
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
        VideoMetadata = {
            type = "structure",
        },
        Persons = {
            type = "list",
            member_type = "structure",
        },
        JobId = {
            type = "string",
        },
        Video = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        Label = {
            type = "structure",
        },
        StartTimestampMillis = {
            type = "number",
        },
        EndTimestampMillis = {
            type = "number",
        },
        DurationMillis = {
            type = "number",
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
        VideoMetadata = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
        Labels = {
            type = "list",
            member_type = "structure",
        },
        LabelModelVersion = {
            type = "string",
        },
        JobId = {
            type = "string",
        },
        Video = {
            type = "structure",
        },
        JobTag = {
            type = "string",
        },
        GetRequestMetadata = {
            type = "structure",
        },
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
        S3Object = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.MediaAnalysisManifestSummary = {
    type = "structure",
    members = {
        S3Object = {
            type = "structure",
        },
    },
}

M.MediaAnalysisDetectModerationLabelsConfig = {
    type = "structure",
    members = {
        MinConfidence = {
            type = "number",
        },
        ProjectVersion = {
            type = "string",
        },
    },
}

M.MediaAnalysisOperationsConfig = {
    type = "structure",
    members = {
        DetectModerationLabels = {
            type = "structure",
        },
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
        S3Object = {
            type = "structure",
        },
        ModelVersions = {
            type = "structure",
        },
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
        OperationsConfig = {
            type = "structure",
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
        FailureDetails = {
            type = "structure",
        },
        CreationTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CompletionTimestamp = {
            type = "timestamp",
        },
        Input = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
        Results = {
            type = "structure",
        },
        ManifestSummary = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        Person = {
            type = "structure",
        },
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
        VideoMetadata = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
        Persons = {
            type = "list",
            member_type = "structure",
        },
        JobId = {
            type = "string",
        },
        Video = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        Confidence = {
            type = "number",
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
            type = "number",
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
            type = "number",
        },
        EndTimestampMillis = {
            type = "number",
        },
        DurationMillis = {
            type = "number",
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
        TechnicalCueSegment = {
            type = "structure",
        },
        ShotSegment = {
            type = "structure",
        },
        StartFrameNumber = {
            type = "number",
        },
        EndFrameNumber = {
            type = "number",
        },
        DurationFrames = {
            type = "number",
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
            member_type = "structure",
        },
        AudioMetadata = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        Segments = {
            type = "list",
            member_type = "structure",
        },
        SelectedSegmentTypes = {
            type = "list",
            member_type = "structure",
        },
        JobId = {
            type = "string",
        },
        Video = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        TextDetection = {
            type = "structure",
        },
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
        VideoMetadata = {
            type = "structure",
        },
        TextDetections = {
            type = "list",
            member_type = "structure",
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
        Video = {
            type = "structure",
        },
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
        Image = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ExternalImageId = {
            type = "string",
        },
        DetectionAttributes = {
            type = "list",
            member_type = "string",
        },
        MaxFaces = {
            type = "number",
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
            member_type = "string",
        },
        FaceDetail = {
            type = "structure",
        },
    },
}

M.IndexFacesOutput = {
    type = "structure",
    members = {
        FaceRecords = {
            type = "list",
            member_type = "structure",
        },
        OrientationCorrection = {
            type = "string",
        },
        FaceModelVersion = {
            type = "string",
        },
        UnindexedFaces = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        GeneralLabels = {
            type = "structure",
        },
    },
}

M.ListCollectionsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListCollectionsOutput = {
    type = "structure",
    members = {
        CollectionIds = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        FaceModelVersions = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
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
            type = "number",
        },
    },
}

M.ListDatasetEntriesOutput = {
    type = "structure",
    members = {
        DatasetEntries = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
    },
}

M.ListDatasetLabelsOutput = {
    type = "structure",
    members = {
        DatasetLabelDescriptions = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        UserId = {
            type = "string",
        },
        FaceIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListFacesOutput = {
    type = "structure",
    members = {
        Faces = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        OperationsConfig = {
            type = "structure",
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
        FailureDetails = {
            type = "structure",
        },
        CreationTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CompletionTimestamp = {
            type = "timestamp",
        },
        Input = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
        Results = {
            type = "structure",
        },
        ManifestSummary = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
        Image = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RecognizeCelebritiesOutput = {
    type = "structure",
    members = {
        CelebrityFaces = {
            type = "list",
            member_type = "structure",
        },
        UnrecognizedFaces = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        FaceMatchThreshold = {
            type = "number",
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
            member_type = "structure",
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
        Image = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MaxFaces = {
            type = "number",
        },
        FaceMatchThreshold = {
            type = "number",
        },
        QualityFilter = {
            type = "string",
        },
    },
}

M.SearchFacesByImageOutput = {
    type = "structure",
    members = {
        SearchedFaceBoundingBox = {
            type = "structure",
        },
        SearchedFaceConfidence = {
            type = "number",
        },
        FaceMatches = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        MaxUsers = {
            type = "number",
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
            type = "number",
        },
        User = {
            type = "structure",
        },
    },
}

M.SearchUsersOutput = {
    type = "structure",
    members = {
        UserMatches = {
            type = "list",
            member_type = "structure",
        },
        FaceModelVersion = {
            type = "string",
        },
        SearchedFace = {
            type = "structure",
        },
        SearchedUser = {
            type = "structure",
        },
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
        Image = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        UserMatchThreshold = {
            type = "number",
        },
        MaxUsers = {
            type = "number",
        },
        QualityFilter = {
            type = "string",
        },
    },
}

M.SearchedFaceDetails = {
    type = "structure",
    members = {
        FaceDetail = {
            type = "structure",
        },
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
        FaceDetails = {
            type = "structure",
        },
        Reasons = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SearchUsersByImageOutput = {
    type = "structure",
    members = {
        UserMatches = {
            type = "list",
            member_type = "structure",
        },
        FaceModelVersion = {
            type = "string",
        },
        SearchedFace = {
            type = "structure",
        },
        UnsearchedFaces = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StartCelebrityRecognitionInput = {
    type = "structure",
    members = {
        Video = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        NotificationChannel = {
            type = "structure",
        },
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
        Video = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MinConfidence = {
            type = "number",
        },
        ClientRequestToken = {
            type = "string",
        },
        NotificationChannel = {
            type = "structure",
        },
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
        Video = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        NotificationChannel = {
            type = "structure",
        },
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
        Video = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        FaceMatchThreshold = {
            type = "number",
        },
        CollectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotificationChannel = {
            type = "structure",
        },
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
        Video = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        MinConfidence = {
            type = "number",
        },
        NotificationChannel = {
            type = "structure",
        },
        JobTag = {
            type = "string",
        },
        Features = {
            type = "list",
            member_type = "string",
        },
        Settings = {
            type = "structure",
        },
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
        OperationsConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Input = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        OutputConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        Video = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        NotificationChannel = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        MaxInferenceUnits = {
            type = "number",
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
            type = "number",
        },
    },
}

M.StartTechnicalCueDetectionFilter = {
    type = "structure",
    members = {
        MinSegmentConfidence = {
            type = "number",
        },
        BlackFrame = {
            type = "structure",
        },
    },
}

M.StartSegmentDetectionFilters = {
    type = "structure",
    members = {
        TechnicalCueFilter = {
            type = "structure",
        },
        ShotFilter = {
            type = "structure",
        },
    },
}

M.StartSegmentDetectionInput = {
    type = "structure",
    members = {
        Video = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        NotificationChannel = {
            type = "structure",
        },
        JobTag = {
            type = "string",
        },
        Filters = {
            type = "structure",
        },
        SegmentTypes = {
            type = "list",
            member_type = "string",
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
        KVSStreamStartSelector = {
            type = "structure",
        },
    },
}

M.StreamProcessingStopSelector = {
    type = "structure",
    members = {
        MaxDurationInSeconds = {
            type = "number",
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
        StartSelector = {
            type = "structure",
        },
        StopSelector = {
            type = "structure",
        },
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
        WordFilter = {
            type = "structure",
        },
        RegionsOfInterest = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StartTextDetectionInput = {
    type = "structure",
    members = {
        Video = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        NotificationChannel = {
            type = "structure",
        },
        JobTag = {
            type = "string",
        },
        Filters = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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
        Changes = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        ConnectedHomeForUpdate = {
            type = "structure",
        },
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
        SettingsForUpdate = {
            type = "structure",
        },
        RegionsOfInterestForUpdate = {
            type = "list",
            member_type = "structure",
        },
        DataSharingPreferenceForUpdate = {
            type = "structure",
        },
        ParametersToDelete = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateStreamProcessorOutput = {
    type = "structure",
}

return M
