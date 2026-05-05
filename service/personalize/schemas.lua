local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.personalize"

local M = {}

M.AlgorithmImage = schema.new({
    id = id.from(_N, "AlgorithmImage"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "AlgorithmImage", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        dockerURI = schema.new({
            id = id.from(_N, "AlgorithmImage", "dockerURI"),
            type = "string",
            name = "dockerURI",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DefaultCategoricalHyperParameterRange = schema.new({
    id = id.from(_N, "DefaultCategoricalHyperParameterRange"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DefaultCategoricalHyperParameterRange", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        values = schema.new({
            id = id.from(_N, "DefaultCategoricalHyperParameterRange", "values"),
            type = "list",
            name = "values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        isTunable = schema.new({
            id = id.from(_N, "DefaultCategoricalHyperParameterRange", "isTunable"),
            type = "boolean",
            name = "isTunable",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DefaultContinuousHyperParameterRange = schema.new({
    id = id.from(_N, "DefaultContinuousHyperParameterRange"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DefaultContinuousHyperParameterRange", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        minValue = schema.new({
            id = id.from(_N, "DefaultContinuousHyperParameterRange", "minValue"),
            type = "double",
            name = "minValue",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        maxValue = schema.new({
            id = id.from(_N, "DefaultContinuousHyperParameterRange", "maxValue"),
            type = "double",
            name = "maxValue",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        isTunable = schema.new({
            id = id.from(_N, "DefaultContinuousHyperParameterRange", "isTunable"),
            type = "boolean",
            name = "isTunable",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DefaultIntegerHyperParameterRange = schema.new({
    id = id.from(_N, "DefaultIntegerHyperParameterRange"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DefaultIntegerHyperParameterRange", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        minValue = schema.new({
            id = id.from(_N, "DefaultIntegerHyperParameterRange", "minValue"),
            type = "integer",
            name = "minValue",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        maxValue = schema.new({
            id = id.from(_N, "DefaultIntegerHyperParameterRange", "maxValue"),
            type = "integer",
            name = "maxValue",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        isTunable = schema.new({
            id = id.from(_N, "DefaultIntegerHyperParameterRange", "isTunable"),
            type = "boolean",
            name = "isTunable",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.DefaultHyperParameterRanges = schema.new({
    id = id.from(_N, "DefaultHyperParameterRanges"),
    type = "structure",
    members = {
        integerHyperParameterRanges = schema.new({
            id = id.from(_N, "DefaultHyperParameterRanges", "integerHyperParameterRanges"),
            type = "list",
            name = "integerHyperParameterRanges",
            target_id = prelude.Document.id,
            list_member = M.DefaultIntegerHyperParameterRange,
        }),
        continuousHyperParameterRanges = schema.new({
            id = id.from(_N, "DefaultHyperParameterRanges", "continuousHyperParameterRanges"),
            type = "list",
            name = "continuousHyperParameterRanges",
            target_id = prelude.Document.id,
            list_member = M.DefaultContinuousHyperParameterRange,
        }),
        categoricalHyperParameterRanges = schema.new({
            id = id.from(_N, "DefaultHyperParameterRanges", "categoricalHyperParameterRanges"),
            type = "list",
            name = "categoricalHyperParameterRanges",
            target_id = prelude.Document.id,
            list_member = M.DefaultCategoricalHyperParameterRange,
        }),
    },
})

M.Algorithm = schema.new({
    id = id.from(_N, "Algorithm"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Algorithm", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        algorithmArn = schema.new({
            id = id.from(_N, "Algorithm", "algorithmArn"),
            type = "string",
            name = "algorithmArn",
            target_id = prelude.String.id,
        }),
        algorithmImage = schema.new({
            id = id.from(_N, "Algorithm", "algorithmImage"),
            type = "structure",
            name = "algorithmImage",
            target_id = id.from(_N, "AlgorithmImage"),
            target = M.AlgorithmImage,
        }),
        defaultHyperParameters = schema.new({
            id = id.from(_N, "Algorithm", "defaultHyperParameters"),
            type = "map",
            name = "defaultHyperParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        defaultHyperParameterRanges = schema.new({
            id = id.from(_N, "Algorithm", "defaultHyperParameterRanges"),
            type = "structure",
            name = "defaultHyperParameterRanges",
            target_id = id.from(_N, "DefaultHyperParameterRanges"),
            target = M.DefaultHyperParameterRanges,
        }),
        defaultResourceConfig = schema.new({
            id = id.from(_N, "Algorithm", "defaultResourceConfig"),
            type = "map",
            name = "defaultResourceConfig",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        trainingInputMode = schema.new({
            id = id.from(_N, "Algorithm", "trainingInputMode"),
            type = "string",
            name = "trainingInputMode",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "Algorithm", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "Algorithm", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "Algorithm", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.BatchInferenceJobConfig = schema.new({
    id = id.from(_N, "BatchInferenceJobConfig"),
    type = "structure",
    members = {
        itemExplorationConfig = schema.new({
            id = id.from(_N, "BatchInferenceJobConfig", "itemExplorationConfig"),
            type = "map",
            name = "itemExplorationConfig",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        rankingInfluence = schema.new({
            id = id.from(_N, "BatchInferenceJobConfig", "rankingInfluence"),
            type = "map",
            name = "rankingInfluence",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Double,
        }),
    },
})

M.S3DataConfig = schema.new({
    id = id.from(_N, "S3DataConfig"),
    type = "structure",
    members = {
        path = schema.new({
            id = id.from(_N, "S3DataConfig", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "S3DataConfig", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchInferenceJobInput = schema.new({
    id = id.from(_N, "BatchInferenceJobInput"),
    type = "structure",
    members = {
        s3DataSource = schema.new({
            id = id.from(_N, "BatchInferenceJobInput", "s3DataSource"),
            type = "structure",
            name = "s3DataSource",
            target_id = id.from(_N, "S3DataConfig"),
            target = M.S3DataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchInferenceJobOutput = schema.new({
    id = id.from(_N, "BatchInferenceJobOutput"),
    type = "structure",
    members = {
        s3DataDestination = schema.new({
            id = id.from(_N, "BatchInferenceJobOutput", "s3DataDestination"),
            type = "structure",
            name = "s3DataDestination",
            target_id = id.from(_N, "S3DataConfig"),
            target = M.S3DataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        tagKey = schema.new({
            id = id.from(_N, "Tag", "tagKey"),
            type = "string",
            name = "tagKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tagValue = schema.new({
            id = id.from(_N, "Tag", "tagValue"),
            type = "string",
            name = "tagValue",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FieldsForThemeGeneration = schema.new({
    id = id.from(_N, "FieldsForThemeGeneration"),
    type = "structure",
    members = {
        itemName = schema.new({
            id = id.from(_N, "FieldsForThemeGeneration", "itemName"),
            type = "string",
            name = "itemName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ThemeGenerationConfig = schema.new({
    id = id.from(_N, "ThemeGenerationConfig"),
    type = "structure",
    members = {
        fieldsForThemeGeneration = schema.new({
            id = id.from(_N, "ThemeGenerationConfig", "fieldsForThemeGeneration"),
            type = "structure",
            name = "fieldsForThemeGeneration",
            target_id = id.from(_N, "FieldsForThemeGeneration"),
            target = M.FieldsForThemeGeneration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateBatchInferenceJobInput = schema.new({
    id = id.from(_N, "CreateBatchInferenceJobInput"),
    type = "structure",
    members = {
        jobName = schema.new({
            id = id.from(_N, "CreateBatchInferenceJobInput", "jobName"),
            type = "string",
            name = "jobName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        solutionVersionArn = schema.new({
            id = id.from(_N, "CreateBatchInferenceJobInput", "solutionVersionArn"),
            type = "string",
            name = "solutionVersionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filterArn = schema.new({
            id = id.from(_N, "CreateBatchInferenceJobInput", "filterArn"),
            type = "string",
            name = "filterArn",
            target_id = prelude.String.id,
        }),
        numResults = schema.new({
            id = id.from(_N, "CreateBatchInferenceJobInput", "numResults"),
            type = "integer",
            name = "numResults",
            target_id = prelude.Integer.id,
        }),
        jobInput = schema.new({
            id = id.from(_N, "CreateBatchInferenceJobInput", "jobInput"),
            type = "structure",
            name = "jobInput",
            target_id = id.from(_N, "BatchInferenceJobInput"),
            target = M.BatchInferenceJobInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        jobOutput = schema.new({
            id = id.from(_N, "CreateBatchInferenceJobInput", "jobOutput"),
            type = "structure",
            name = "jobOutput",
            target_id = id.from(_N, "BatchInferenceJobOutput"),
            target = M.BatchInferenceJobOutput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "CreateBatchInferenceJobInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        batchInferenceJobConfig = schema.new({
            id = id.from(_N, "CreateBatchInferenceJobInput", "batchInferenceJobConfig"),
            type = "structure",
            name = "batchInferenceJobConfig",
            target_id = id.from(_N, "BatchInferenceJobConfig"),
            target = M.BatchInferenceJobConfig,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateBatchInferenceJobInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        batchInferenceJobMode = schema.new({
            id = id.from(_N, "CreateBatchInferenceJobInput", "batchInferenceJobMode"),
            type = "string",
            name = "batchInferenceJobMode",
            target_id = prelude.String.id,
        }),
        themeGenerationConfig = schema.new({
            id = id.from(_N, "CreateBatchInferenceJobInput", "themeGenerationConfig"),
            type = "structure",
            name = "themeGenerationConfig",
            target_id = id.from(_N, "ThemeGenerationConfig"),
            target = M.ThemeGenerationConfig,
        }),
    },
})

M.CreateBatchInferenceJobOutput = schema.new({
    id = id.from(_N, "CreateBatchInferenceJobOutput"),
    type = "structure",
    members = {
        batchInferenceJobArn = schema.new({
            id = id.from(_N, "CreateBatchInferenceJobOutput", "batchInferenceJobArn"),
            type = "string",
            name = "batchInferenceJobArn",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidInputException = schema.new({
    id = id.from(_N, "InvalidInputException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidInputException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.LimitExceededException = schema.new({
    id = id.from(_N, "LimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "LimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceAlreadyExistsException = schema.new({
    id = id.from(_N, "ResourceAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceAlreadyExistsException", "message"),
            type = "string",
            name = "message",
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
        message = schema.new({
            id = id.from(_N, "ResourceInUseException", "message"),
            type = "string",
            name = "message",
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
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
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
        message = schema.new({
            id = id.from(_N, "TooManyTagsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchSegmentJobInput = schema.new({
    id = id.from(_N, "BatchSegmentJobInput"),
    type = "structure",
    members = {
        s3DataSource = schema.new({
            id = id.from(_N, "BatchSegmentJobInput", "s3DataSource"),
            type = "structure",
            name = "s3DataSource",
            target_id = id.from(_N, "S3DataConfig"),
            target = M.S3DataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchSegmentJobOutput = schema.new({
    id = id.from(_N, "BatchSegmentJobOutput"),
    type = "structure",
    members = {
        s3DataDestination = schema.new({
            id = id.from(_N, "BatchSegmentJobOutput", "s3DataDestination"),
            type = "structure",
            name = "s3DataDestination",
            target_id = id.from(_N, "S3DataConfig"),
            target = M.S3DataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateBatchSegmentJobInput = schema.new({
    id = id.from(_N, "CreateBatchSegmentJobInput"),
    type = "structure",
    members = {
        jobName = schema.new({
            id = id.from(_N, "CreateBatchSegmentJobInput", "jobName"),
            type = "string",
            name = "jobName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        solutionVersionArn = schema.new({
            id = id.from(_N, "CreateBatchSegmentJobInput", "solutionVersionArn"),
            type = "string",
            name = "solutionVersionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filterArn = schema.new({
            id = id.from(_N, "CreateBatchSegmentJobInput", "filterArn"),
            type = "string",
            name = "filterArn",
            target_id = prelude.String.id,
        }),
        numResults = schema.new({
            id = id.from(_N, "CreateBatchSegmentJobInput", "numResults"),
            type = "integer",
            name = "numResults",
            target_id = prelude.Integer.id,
        }),
        jobInput = schema.new({
            id = id.from(_N, "CreateBatchSegmentJobInput", "jobInput"),
            type = "structure",
            name = "jobInput",
            target_id = id.from(_N, "BatchSegmentJobInput"),
            target = M.BatchSegmentJobInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        jobOutput = schema.new({
            id = id.from(_N, "CreateBatchSegmentJobInput", "jobOutput"),
            type = "structure",
            name = "jobOutput",
            target_id = id.from(_N, "BatchSegmentJobOutput"),
            target = M.BatchSegmentJobOutput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "CreateBatchSegmentJobInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateBatchSegmentJobInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateBatchSegmentJobOutput = schema.new({
    id = id.from(_N, "CreateBatchSegmentJobOutput"),
    type = "structure",
    members = {
        batchSegmentJobArn = schema.new({
            id = id.from(_N, "CreateBatchSegmentJobOutput", "batchSegmentJobArn"),
            type = "string",
            name = "batchSegmentJobArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CampaignConfig = schema.new({
    id = id.from(_N, "CampaignConfig"),
    type = "structure",
    members = {
        itemExplorationConfig = schema.new({
            id = id.from(_N, "CampaignConfig", "itemExplorationConfig"),
            type = "map",
            name = "itemExplorationConfig",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        enableMetadataWithRecommendations = schema.new({
            id = id.from(_N, "CampaignConfig", "enableMetadataWithRecommendations"),
            type = "boolean",
            name = "enableMetadataWithRecommendations",
            target_id = prelude.Boolean.id,
        }),
        syncWithLatestSolutionVersion = schema.new({
            id = id.from(_N, "CampaignConfig", "syncWithLatestSolutionVersion"),
            type = "boolean",
            name = "syncWithLatestSolutionVersion",
            target_id = prelude.Boolean.id,
        }),
        rankingInfluence = schema.new({
            id = id.from(_N, "CampaignConfig", "rankingInfluence"),
            type = "map",
            name = "rankingInfluence",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Double,
        }),
    },
})

M.CreateCampaignInput = schema.new({
    id = id.from(_N, "CreateCampaignInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateCampaignInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        solutionVersionArn = schema.new({
            id = id.from(_N, "CreateCampaignInput", "solutionVersionArn"),
            type = "string",
            name = "solutionVersionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        minProvisionedTPS = schema.new({
            id = id.from(_N, "CreateCampaignInput", "minProvisionedTPS"),
            type = "integer",
            name = "minProvisionedTPS",
            target_id = prelude.Integer.id,
        }),
        campaignConfig = schema.new({
            id = id.from(_N, "CreateCampaignInput", "campaignConfig"),
            type = "structure",
            name = "campaignConfig",
            target_id = id.from(_N, "CampaignConfig"),
            target = M.CampaignConfig,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateCampaignInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateCampaignOutput = schema.new({
    id = id.from(_N, "CreateCampaignOutput"),
    type = "structure",
    members = {
        campaignArn = schema.new({
            id = id.from(_N, "CreateCampaignOutput", "campaignArn"),
            type = "string",
            name = "campaignArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DataSource = schema.new({
    id = id.from(_N, "DataSource"),
    type = "structure",
    members = {
        dataLocation = schema.new({
            id = id.from(_N, "DataSource", "dataLocation"),
            type = "string",
            name = "dataLocation",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDataDeletionJobInput = schema.new({
    id = id.from(_N, "CreateDataDeletionJobInput"),
    type = "structure",
    members = {
        jobName = schema.new({
            id = id.from(_N, "CreateDataDeletionJobInput", "jobName"),
            type = "string",
            name = "jobName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datasetGroupArn = schema.new({
            id = id.from(_N, "CreateDataDeletionJobInput", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataSource = schema.new({
            id = id.from(_N, "CreateDataDeletionJobInput", "dataSource"),
            type = "structure",
            name = "dataSource",
            target_id = id.from(_N, "DataSource"),
            target = M.DataSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "CreateDataDeletionJobInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateDataDeletionJobInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateDataDeletionJobOutput = schema.new({
    id = id.from(_N, "CreateDataDeletionJobOutput"),
    type = "structure",
    members = {
        dataDeletionJobArn = schema.new({
            id = id.from(_N, "CreateDataDeletionJobOutput", "dataDeletionJobArn"),
            type = "string",
            name = "dataDeletionJobArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDatasetInput = schema.new({
    id = id.from(_N, "CreateDatasetInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateDatasetInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        schemaArn = schema.new({
            id = id.from(_N, "CreateDatasetInput", "schemaArn"),
            type = "string",
            name = "schemaArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datasetGroupArn = schema.new({
            id = id.from(_N, "CreateDatasetInput", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datasetType = schema.new({
            id = id.from(_N, "CreateDatasetInput", "datasetType"),
            type = "string",
            name = "datasetType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateDatasetInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateDatasetOutput = schema.new({
    id = id.from(_N, "CreateDatasetOutput"),
    type = "structure",
    members = {
        datasetArn = schema.new({
            id = id.from(_N, "CreateDatasetOutput", "datasetArn"),
            type = "string",
            name = "datasetArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DatasetExportJobOutput = schema.new({
    id = id.from(_N, "DatasetExportJobOutput"),
    type = "structure",
    members = {
        s3DataDestination = schema.new({
            id = id.from(_N, "DatasetExportJobOutput", "s3DataDestination"),
            type = "structure",
            name = "s3DataDestination",
            target_id = id.from(_N, "S3DataConfig"),
            target = M.S3DataConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateDatasetExportJobInput = schema.new({
    id = id.from(_N, "CreateDatasetExportJobInput"),
    type = "structure",
    members = {
        jobName = schema.new({
            id = id.from(_N, "CreateDatasetExportJobInput", "jobName"),
            type = "string",
            name = "jobName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datasetArn = schema.new({
            id = id.from(_N, "CreateDatasetExportJobInput", "datasetArn"),
            type = "string",
            name = "datasetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ingestionMode = schema.new({
            id = id.from(_N, "CreateDatasetExportJobInput", "ingestionMode"),
            type = "string",
            name = "ingestionMode",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "CreateDatasetExportJobInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        jobOutput = schema.new({
            id = id.from(_N, "CreateDatasetExportJobInput", "jobOutput"),
            type = "structure",
            name = "jobOutput",
            target_id = id.from(_N, "DatasetExportJobOutput"),
            target = M.DatasetExportJobOutput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateDatasetExportJobInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateDatasetExportJobOutput = schema.new({
    id = id.from(_N, "CreateDatasetExportJobOutput"),
    type = "structure",
    members = {
        datasetExportJobArn = schema.new({
            id = id.from(_N, "CreateDatasetExportJobOutput", "datasetExportJobArn"),
            type = "string",
            name = "datasetExportJobArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDatasetGroupInput = schema.new({
    id = id.from(_N, "CreateDatasetGroupInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateDatasetGroupInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "CreateDatasetGroupInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "CreateDatasetGroupInput", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
        domain = schema.new({
            id = id.from(_N, "CreateDatasetGroupInput", "domain"),
            type = "string",
            name = "domain",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateDatasetGroupInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateDatasetGroupOutput = schema.new({
    id = id.from(_N, "CreateDatasetGroupOutput"),
    type = "structure",
    members = {
        datasetGroupArn = schema.new({
            id = id.from(_N, "CreateDatasetGroupOutput", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
        }),
        domain = schema.new({
            id = id.from(_N, "CreateDatasetGroupOutput", "domain"),
            type = "string",
            name = "domain",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDatasetImportJobInput = schema.new({
    id = id.from(_N, "CreateDatasetImportJobInput"),
    type = "structure",
    members = {
        jobName = schema.new({
            id = id.from(_N, "CreateDatasetImportJobInput", "jobName"),
            type = "string",
            name = "jobName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datasetArn = schema.new({
            id = id.from(_N, "CreateDatasetImportJobInput", "datasetArn"),
            type = "string",
            name = "datasetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataSource = schema.new({
            id = id.from(_N, "CreateDatasetImportJobInput", "dataSource"),
            type = "structure",
            name = "dataSource",
            target_id = id.from(_N, "DataSource"),
            target = M.DataSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "CreateDatasetImportJobInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateDatasetImportJobInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        importMode = schema.new({
            id = id.from(_N, "CreateDatasetImportJobInput", "importMode"),
            type = "string",
            name = "importMode",
            target_id = prelude.String.id,
        }),
        publishAttributionMetricsToS3 = schema.new({
            id = id.from(_N, "CreateDatasetImportJobInput", "publishAttributionMetricsToS3"),
            type = "boolean",
            name = "publishAttributionMetricsToS3",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateDatasetImportJobOutput = schema.new({
    id = id.from(_N, "CreateDatasetImportJobOutput"),
    type = "structure",
    members = {
        datasetImportJobArn = schema.new({
            id = id.from(_N, "CreateDatasetImportJobOutput", "datasetImportJobArn"),
            type = "string",
            name = "datasetImportJobArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateEventTrackerInput = schema.new({
    id = id.from(_N, "CreateEventTrackerInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateEventTrackerInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datasetGroupArn = schema.new({
            id = id.from(_N, "CreateEventTrackerInput", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateEventTrackerInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateEventTrackerOutput = schema.new({
    id = id.from(_N, "CreateEventTrackerOutput"),
    type = "structure",
    members = {
        eventTrackerArn = schema.new({
            id = id.from(_N, "CreateEventTrackerOutput", "eventTrackerArn"),
            type = "string",
            name = "eventTrackerArn",
            target_id = prelude.String.id,
        }),
        trackingId = schema.new({
            id = id.from(_N, "CreateEventTrackerOutput", "trackingId"),
            type = "string",
            name = "trackingId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateFilterInput = schema.new({
    id = id.from(_N, "CreateFilterInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateFilterInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datasetGroupArn = schema.new({
            id = id.from(_N, "CreateFilterInput", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filterExpression = schema.new({
            id = id.from(_N, "CreateFilterInput", "filterExpression"),
            type = "string",
            name = "filterExpression",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateFilterInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateFilterOutput = schema.new({
    id = id.from(_N, "CreateFilterOutput"),
    type = "structure",
    members = {
        filterArn = schema.new({
            id = id.from(_N, "CreateFilterOutput", "filterArn"),
            type = "string",
            name = "filterArn",
            target_id = prelude.String.id,
        }),
    },
})

M.MetricAttribute = schema.new({
    id = id.from(_N, "MetricAttribute"),
    type = "structure",
    members = {
        eventType = schema.new({
            id = id.from(_N, "MetricAttribute", "eventType"),
            type = "string",
            name = "eventType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        metricName = schema.new({
            id = id.from(_N, "MetricAttribute", "metricName"),
            type = "string",
            name = "metricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        expression = schema.new({
            id = id.from(_N, "MetricAttribute", "expression"),
            type = "string",
            name = "expression",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MetricAttributionOutput = schema.new({
    id = id.from(_N, "MetricAttributionOutput"),
    type = "structure",
    members = {
        s3DataDestination = schema.new({
            id = id.from(_N, "MetricAttributionOutput", "s3DataDestination"),
            type = "structure",
            name = "s3DataDestination",
            target_id = id.from(_N, "S3DataConfig"),
            target = M.S3DataConfig,
        }),
        roleArn = schema.new({
            id = id.from(_N, "MetricAttributionOutput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateMetricAttributionInput = schema.new({
    id = id.from(_N, "CreateMetricAttributionInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateMetricAttributionInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datasetGroupArn = schema.new({
            id = id.from(_N, "CreateMetricAttributionInput", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        metrics = schema.new({
            id = id.from(_N, "CreateMetricAttributionInput", "metrics"),
            type = "list",
            name = "metrics",
            target_id = prelude.Document.id,
            list_member = M.MetricAttribute,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        metricsOutputConfig = schema.new({
            id = id.from(_N, "CreateMetricAttributionInput", "metricsOutputConfig"),
            type = "structure",
            name = "metricsOutputConfig",
            target_id = id.from(_N, "MetricAttributionOutput"),
            target = M.MetricAttributionOutput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateMetricAttributionOutput = schema.new({
    id = id.from(_N, "CreateMetricAttributionOutput"),
    type = "structure",
    members = {
        metricAttributionArn = schema.new({
            id = id.from(_N, "CreateMetricAttributionOutput", "metricAttributionArn"),
            type = "string",
            name = "metricAttributionArn",
            target_id = prelude.String.id,
        }),
    },
})

M.TrainingDataConfig = schema.new({
    id = id.from(_N, "TrainingDataConfig"),
    type = "structure",
    members = {
        excludedDatasetColumns = schema.new({
            id = id.from(_N, "TrainingDataConfig", "excludedDatasetColumns"),
            type = "map",
            name = "excludedDatasetColumns",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        includedDatasetColumns = schema.new({
            id = id.from(_N, "TrainingDataConfig", "includedDatasetColumns"),
            type = "map",
            name = "includedDatasetColumns",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
    },
})

M.RecommenderConfig = schema.new({
    id = id.from(_N, "RecommenderConfig"),
    type = "structure",
    members = {
        itemExplorationConfig = schema.new({
            id = id.from(_N, "RecommenderConfig", "itemExplorationConfig"),
            type = "map",
            name = "itemExplorationConfig",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        minRecommendationRequestsPerSecond = schema.new({
            id = id.from(_N, "RecommenderConfig", "minRecommendationRequestsPerSecond"),
            type = "integer",
            name = "minRecommendationRequestsPerSecond",
            target_id = prelude.Integer.id,
        }),
        trainingDataConfig = schema.new({
            id = id.from(_N, "RecommenderConfig", "trainingDataConfig"),
            type = "structure",
            name = "trainingDataConfig",
            target_id = id.from(_N, "TrainingDataConfig"),
            target = M.TrainingDataConfig,
        }),
        enableMetadataWithRecommendations = schema.new({
            id = id.from(_N, "RecommenderConfig", "enableMetadataWithRecommendations"),
            type = "boolean",
            name = "enableMetadataWithRecommendations",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateRecommenderInput = schema.new({
    id = id.from(_N, "CreateRecommenderInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateRecommenderInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datasetGroupArn = schema.new({
            id = id.from(_N, "CreateRecommenderInput", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recipeArn = schema.new({
            id = id.from(_N, "CreateRecommenderInput", "recipeArn"),
            type = "string",
            name = "recipeArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recommenderConfig = schema.new({
            id = id.from(_N, "CreateRecommenderInput", "recommenderConfig"),
            type = "structure",
            name = "recommenderConfig",
            target_id = id.from(_N, "RecommenderConfig"),
            target = M.RecommenderConfig,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateRecommenderInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateRecommenderOutput = schema.new({
    id = id.from(_N, "CreateRecommenderOutput"),
    type = "structure",
    members = {
        recommenderArn = schema.new({
            id = id.from(_N, "CreateRecommenderOutput", "recommenderArn"),
            type = "string",
            name = "recommenderArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSchemaInput = schema.new({
    id = id.from(_N, "CreateSchemaInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateSchemaInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        schema = schema.new({
            id = id.from(_N, "CreateSchemaInput", "schema"),
            type = "string",
            name = "schema",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        domain = schema.new({
            id = id.from(_N, "CreateSchemaInput", "domain"),
            type = "string",
            name = "domain",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSchemaOutput = schema.new({
    id = id.from(_N, "CreateSchemaOutput"),
    type = "structure",
    members = {
        schemaArn = schema.new({
            id = id.from(_N, "CreateSchemaOutput", "schemaArn"),
            type = "string",
            name = "schemaArn",
            target_id = prelude.String.id,
        }),
    },
})

M.AutoMLConfig = schema.new({
    id = id.from(_N, "AutoMLConfig"),
    type = "structure",
    members = {
        metricName = schema.new({
            id = id.from(_N, "AutoMLConfig", "metricName"),
            type = "string",
            name = "metricName",
            target_id = prelude.String.id,
        }),
        recipeList = schema.new({
            id = id.from(_N, "AutoMLConfig", "recipeList"),
            type = "list",
            name = "recipeList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.AutoTrainingConfig = schema.new({
    id = id.from(_N, "AutoTrainingConfig"),
    type = "structure",
    members = {
        schedulingExpression = schema.new({
            id = id.from(_N, "AutoTrainingConfig", "schedulingExpression"),
            type = "string",
            name = "schedulingExpression",
            target_id = prelude.String.id,
        }),
    },
})

M.EventParameters = schema.new({
    id = id.from(_N, "EventParameters"),
    type = "structure",
    members = {
        eventType = schema.new({
            id = id.from(_N, "EventParameters", "eventType"),
            type = "string",
            name = "eventType",
            target_id = prelude.String.id,
        }),
        eventValueThreshold = schema.new({
            id = id.from(_N, "EventParameters", "eventValueThreshold"),
            type = "double",
            name = "eventValueThreshold",
            target_id = prelude.Double.id,
        }),
        weight = schema.new({
            id = id.from(_N, "EventParameters", "weight"),
            type = "double",
            name = "weight",
            target_id = prelude.Double.id,
        }),
    },
})

M.EventsConfig = schema.new({
    id = id.from(_N, "EventsConfig"),
    type = "structure",
    members = {
        eventParametersList = schema.new({
            id = id.from(_N, "EventsConfig", "eventParametersList"),
            type = "list",
            name = "eventParametersList",
            target_id = prelude.Document.id,
            list_member = M.EventParameters,
        }),
    },
})

M.CategoricalHyperParameterRange = schema.new({
    id = id.from(_N, "CategoricalHyperParameterRange"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CategoricalHyperParameterRange", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        values = schema.new({
            id = id.from(_N, "CategoricalHyperParameterRange", "values"),
            type = "list",
            name = "values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ContinuousHyperParameterRange = schema.new({
    id = id.from(_N, "ContinuousHyperParameterRange"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ContinuousHyperParameterRange", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        minValue = schema.new({
            id = id.from(_N, "ContinuousHyperParameterRange", "minValue"),
            type = "double",
            name = "minValue",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        maxValue = schema.new({
            id = id.from(_N, "ContinuousHyperParameterRange", "maxValue"),
            type = "double",
            name = "maxValue",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.IntegerHyperParameterRange = schema.new({
    id = id.from(_N, "IntegerHyperParameterRange"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "IntegerHyperParameterRange", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        minValue = schema.new({
            id = id.from(_N, "IntegerHyperParameterRange", "minValue"),
            type = "integer",
            name = "minValue",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        maxValue = schema.new({
            id = id.from(_N, "IntegerHyperParameterRange", "maxValue"),
            type = "integer",
            name = "maxValue",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.HyperParameterRanges = schema.new({
    id = id.from(_N, "HyperParameterRanges"),
    type = "structure",
    members = {
        integerHyperParameterRanges = schema.new({
            id = id.from(_N, "HyperParameterRanges", "integerHyperParameterRanges"),
            type = "list",
            name = "integerHyperParameterRanges",
            target_id = prelude.Document.id,
            list_member = M.IntegerHyperParameterRange,
        }),
        continuousHyperParameterRanges = schema.new({
            id = id.from(_N, "HyperParameterRanges", "continuousHyperParameterRanges"),
            type = "list",
            name = "continuousHyperParameterRanges",
            target_id = prelude.Document.id,
            list_member = M.ContinuousHyperParameterRange,
        }),
        categoricalHyperParameterRanges = schema.new({
            id = id.from(_N, "HyperParameterRanges", "categoricalHyperParameterRanges"),
            type = "list",
            name = "categoricalHyperParameterRanges",
            target_id = prelude.Document.id,
            list_member = M.CategoricalHyperParameterRange,
        }),
    },
})

M.HPOObjective = schema.new({
    id = id.from(_N, "HPOObjective"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "HPOObjective", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        metricName = schema.new({
            id = id.from(_N, "HPOObjective", "metricName"),
            type = "string",
            name = "metricName",
            target_id = prelude.String.id,
        }),
        metricRegex = schema.new({
            id = id.from(_N, "HPOObjective", "metricRegex"),
            type = "string",
            name = "metricRegex",
            target_id = prelude.String.id,
        }),
    },
})

M.HPOResourceConfig = schema.new({
    id = id.from(_N, "HPOResourceConfig"),
    type = "structure",
    members = {
        maxNumberOfTrainingJobs = schema.new({
            id = id.from(_N, "HPOResourceConfig", "maxNumberOfTrainingJobs"),
            type = "string",
            name = "maxNumberOfTrainingJobs",
            target_id = prelude.String.id,
        }),
        maxParallelTrainingJobs = schema.new({
            id = id.from(_N, "HPOResourceConfig", "maxParallelTrainingJobs"),
            type = "string",
            name = "maxParallelTrainingJobs",
            target_id = prelude.String.id,
        }),
    },
})

M.HPOConfig = schema.new({
    id = id.from(_N, "HPOConfig"),
    type = "structure",
    members = {
        hpoObjective = schema.new({
            id = id.from(_N, "HPOConfig", "hpoObjective"),
            type = "structure",
            name = "hpoObjective",
            target_id = id.from(_N, "HPOObjective"),
            target = M.HPOObjective,
        }),
        hpoResourceConfig = schema.new({
            id = id.from(_N, "HPOConfig", "hpoResourceConfig"),
            type = "structure",
            name = "hpoResourceConfig",
            target_id = id.from(_N, "HPOResourceConfig"),
            target = M.HPOResourceConfig,
        }),
        algorithmHyperParameterRanges = schema.new({
            id = id.from(_N, "HPOConfig", "algorithmHyperParameterRanges"),
            type = "structure",
            name = "algorithmHyperParameterRanges",
            target_id = id.from(_N, "HyperParameterRanges"),
            target = M.HyperParameterRanges,
        }),
    },
})

M.OptimizationObjective = schema.new({
    id = id.from(_N, "OptimizationObjective"),
    type = "structure",
    members = {
        itemAttribute = schema.new({
            id = id.from(_N, "OptimizationObjective", "itemAttribute"),
            type = "string",
            name = "itemAttribute",
            target_id = prelude.String.id,
        }),
        objectiveSensitivity = schema.new({
            id = id.from(_N, "OptimizationObjective", "objectiveSensitivity"),
            type = "string",
            name = "objectiveSensitivity",
            target_id = prelude.String.id,
        }),
    },
})

M.SolutionConfig = schema.new({
    id = id.from(_N, "SolutionConfig"),
    type = "structure",
    members = {
        eventValueThreshold = schema.new({
            id = id.from(_N, "SolutionConfig", "eventValueThreshold"),
            type = "string",
            name = "eventValueThreshold",
            target_id = prelude.String.id,
        }),
        hpoConfig = schema.new({
            id = id.from(_N, "SolutionConfig", "hpoConfig"),
            type = "structure",
            name = "hpoConfig",
            target_id = id.from(_N, "HPOConfig"),
            target = M.HPOConfig,
        }),
        algorithmHyperParameters = schema.new({
            id = id.from(_N, "SolutionConfig", "algorithmHyperParameters"),
            type = "map",
            name = "algorithmHyperParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        featureTransformationParameters = schema.new({
            id = id.from(_N, "SolutionConfig", "featureTransformationParameters"),
            type = "map",
            name = "featureTransformationParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        autoMLConfig = schema.new({
            id = id.from(_N, "SolutionConfig", "autoMLConfig"),
            type = "structure",
            name = "autoMLConfig",
            target_id = id.from(_N, "AutoMLConfig"),
            target = M.AutoMLConfig,
        }),
        eventsConfig = schema.new({
            id = id.from(_N, "SolutionConfig", "eventsConfig"),
            type = "structure",
            name = "eventsConfig",
            target_id = id.from(_N, "EventsConfig"),
            target = M.EventsConfig,
        }),
        optimizationObjective = schema.new({
            id = id.from(_N, "SolutionConfig", "optimizationObjective"),
            type = "structure",
            name = "optimizationObjective",
            target_id = id.from(_N, "OptimizationObjective"),
            target = M.OptimizationObjective,
        }),
        trainingDataConfig = schema.new({
            id = id.from(_N, "SolutionConfig", "trainingDataConfig"),
            type = "structure",
            name = "trainingDataConfig",
            target_id = id.from(_N, "TrainingDataConfig"),
            target = M.TrainingDataConfig,
        }),
        autoTrainingConfig = schema.new({
            id = id.from(_N, "SolutionConfig", "autoTrainingConfig"),
            type = "structure",
            name = "autoTrainingConfig",
            target_id = id.from(_N, "AutoTrainingConfig"),
            target = M.AutoTrainingConfig,
        }),
    },
})

M.CreateSolutionInput = schema.new({
    id = id.from(_N, "CreateSolutionInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateSolutionInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        performHPO = schema.new({
            id = id.from(_N, "CreateSolutionInput", "performHPO"),
            type = "boolean",
            name = "performHPO",
            target_id = prelude.Boolean.id,
        }),
        performAutoML = schema.new({
            id = id.from(_N, "CreateSolutionInput", "performAutoML"),
            type = "boolean",
            name = "performAutoML",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        performAutoTraining = schema.new({
            id = id.from(_N, "CreateSolutionInput", "performAutoTraining"),
            type = "boolean",
            name = "performAutoTraining",
            target_id = prelude.Boolean.id,
        }),
        performIncrementalUpdate = schema.new({
            id = id.from(_N, "CreateSolutionInput", "performIncrementalUpdate"),
            type = "boolean",
            name = "performIncrementalUpdate",
            target_id = prelude.Boolean.id,
        }),
        recipeArn = schema.new({
            id = id.from(_N, "CreateSolutionInput", "recipeArn"),
            type = "string",
            name = "recipeArn",
            target_id = prelude.String.id,
        }),
        datasetGroupArn = schema.new({
            id = id.from(_N, "CreateSolutionInput", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        eventType = schema.new({
            id = id.from(_N, "CreateSolutionInput", "eventType"),
            type = "string",
            name = "eventType",
            target_id = prelude.String.id,
        }),
        solutionConfig = schema.new({
            id = id.from(_N, "CreateSolutionInput", "solutionConfig"),
            type = "structure",
            name = "solutionConfig",
            target_id = id.from(_N, "SolutionConfig"),
            target = M.SolutionConfig,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateSolutionInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateSolutionOutput = schema.new({
    id = id.from(_N, "CreateSolutionOutput"),
    type = "structure",
    members = {
        solutionArn = schema.new({
            id = id.from(_N, "CreateSolutionOutput", "solutionArn"),
            type = "string",
            name = "solutionArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSolutionVersionInput = schema.new({
    id = id.from(_N, "CreateSolutionVersionInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateSolutionVersionInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        solutionArn = schema.new({
            id = id.from(_N, "CreateSolutionVersionInput", "solutionArn"),
            type = "string",
            name = "solutionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        trainingMode = schema.new({
            id = id.from(_N, "CreateSolutionVersionInput", "trainingMode"),
            type = "string",
            name = "trainingMode",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateSolutionVersionInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateSolutionVersionOutput = schema.new({
    id = id.from(_N, "CreateSolutionVersionOutput"),
    type = "structure",
    members = {
        solutionVersionArn = schema.new({
            id = id.from(_N, "CreateSolutionVersionOutput", "solutionVersionArn"),
            type = "string",
            name = "solutionVersionArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteCampaignInput = schema.new({
    id = id.from(_N, "DeleteCampaignInput"),
    type = "structure",
    members = {
        campaignArn = schema.new({
            id = id.from(_N, "DeleteCampaignInput", "campaignArn"),
            type = "string",
            name = "campaignArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteCampaignOutput = schema.new({
    id = id.from(_N, "DeleteCampaignOutput"),
    type = "structure",
})

M.DeleteDatasetInput = schema.new({
    id = id.from(_N, "DeleteDatasetInput"),
    type = "structure",
    members = {
        datasetArn = schema.new({
            id = id.from(_N, "DeleteDatasetInput", "datasetArn"),
            type = "string",
            name = "datasetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDatasetOutput = schema.new({
    id = id.from(_N, "DeleteDatasetOutput"),
    type = "structure",
})

M.DeleteDatasetGroupInput = schema.new({
    id = id.from(_N, "DeleteDatasetGroupInput"),
    type = "structure",
    members = {
        datasetGroupArn = schema.new({
            id = id.from(_N, "DeleteDatasetGroupInput", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDatasetGroupOutput = schema.new({
    id = id.from(_N, "DeleteDatasetGroupOutput"),
    type = "structure",
})

M.DeleteEventTrackerInput = schema.new({
    id = id.from(_N, "DeleteEventTrackerInput"),
    type = "structure",
    members = {
        eventTrackerArn = schema.new({
            id = id.from(_N, "DeleteEventTrackerInput", "eventTrackerArn"),
            type = "string",
            name = "eventTrackerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteEventTrackerOutput = schema.new({
    id = id.from(_N, "DeleteEventTrackerOutput"),
    type = "structure",
})

M.DeleteFilterInput = schema.new({
    id = id.from(_N, "DeleteFilterInput"),
    type = "structure",
    members = {
        filterArn = schema.new({
            id = id.from(_N, "DeleteFilterInput", "filterArn"),
            type = "string",
            name = "filterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteFilterOutput = schema.new({
    id = id.from(_N, "DeleteFilterOutput"),
    type = "structure",
})

M.DeleteMetricAttributionInput = schema.new({
    id = id.from(_N, "DeleteMetricAttributionInput"),
    type = "structure",
    members = {
        metricAttributionArn = schema.new({
            id = id.from(_N, "DeleteMetricAttributionInput", "metricAttributionArn"),
            type = "string",
            name = "metricAttributionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteMetricAttributionOutput = schema.new({
    id = id.from(_N, "DeleteMetricAttributionOutput"),
    type = "structure",
})

M.DeleteRecommenderInput = schema.new({
    id = id.from(_N, "DeleteRecommenderInput"),
    type = "structure",
    members = {
        recommenderArn = schema.new({
            id = id.from(_N, "DeleteRecommenderInput", "recommenderArn"),
            type = "string",
            name = "recommenderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRecommenderOutput = schema.new({
    id = id.from(_N, "DeleteRecommenderOutput"),
    type = "structure",
})

M.DeleteSchemaInput = schema.new({
    id = id.from(_N, "DeleteSchemaInput"),
    type = "structure",
    members = {
        schemaArn = schema.new({
            id = id.from(_N, "DeleteSchemaInput", "schemaArn"),
            type = "string",
            name = "schemaArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSchemaOutput = schema.new({
    id = id.from(_N, "DeleteSchemaOutput"),
    type = "structure",
})

M.DeleteSolutionInput = schema.new({
    id = id.from(_N, "DeleteSolutionInput"),
    type = "structure",
    members = {
        solutionArn = schema.new({
            id = id.from(_N, "DeleteSolutionInput", "solutionArn"),
            type = "string",
            name = "solutionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSolutionOutput = schema.new({
    id = id.from(_N, "DeleteSolutionOutput"),
    type = "structure",
})

M.DescribeAlgorithmInput = schema.new({
    id = id.from(_N, "DescribeAlgorithmInput"),
    type = "structure",
    members = {
        algorithmArn = schema.new({
            id = id.from(_N, "DescribeAlgorithmInput", "algorithmArn"),
            type = "string",
            name = "algorithmArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeAlgorithmOutput = schema.new({
    id = id.from(_N, "DescribeAlgorithmOutput"),
    type = "structure",
    members = {
        algorithm = schema.new({
            id = id.from(_N, "DescribeAlgorithmOutput", "algorithm"),
            type = "structure",
            name = "algorithm",
            target_id = id.from(_N, "Algorithm"),
            target = M.Algorithm,
        }),
    },
})

M.DescribeBatchInferenceJobInput = schema.new({
    id = id.from(_N, "DescribeBatchInferenceJobInput"),
    type = "structure",
    members = {
        batchInferenceJobArn = schema.new({
            id = id.from(_N, "DescribeBatchInferenceJobInput", "batchInferenceJobArn"),
            type = "string",
            name = "batchInferenceJobArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchInferenceJob = schema.new({
    id = id.from(_N, "BatchInferenceJob"),
    type = "structure",
    members = {
        jobName = schema.new({
            id = id.from(_N, "BatchInferenceJob", "jobName"),
            type = "string",
            name = "jobName",
            target_id = prelude.String.id,
        }),
        batchInferenceJobArn = schema.new({
            id = id.from(_N, "BatchInferenceJob", "batchInferenceJobArn"),
            type = "string",
            name = "batchInferenceJobArn",
            target_id = prelude.String.id,
        }),
        filterArn = schema.new({
            id = id.from(_N, "BatchInferenceJob", "filterArn"),
            type = "string",
            name = "filterArn",
            target_id = prelude.String.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "BatchInferenceJob", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        solutionVersionArn = schema.new({
            id = id.from(_N, "BatchInferenceJob", "solutionVersionArn"),
            type = "string",
            name = "solutionVersionArn",
            target_id = prelude.String.id,
        }),
        numResults = schema.new({
            id = id.from(_N, "BatchInferenceJob", "numResults"),
            type = "integer",
            name = "numResults",
            target_id = prelude.Integer.id,
        }),
        jobInput = schema.new({
            id = id.from(_N, "BatchInferenceJob", "jobInput"),
            type = "structure",
            name = "jobInput",
            target_id = id.from(_N, "BatchInferenceJobInput"),
            target = M.BatchInferenceJobInput,
        }),
        jobOutput = schema.new({
            id = id.from(_N, "BatchInferenceJob", "jobOutput"),
            type = "structure",
            name = "jobOutput",
            target_id = id.from(_N, "BatchInferenceJobOutput"),
            target = M.BatchInferenceJobOutput,
        }),
        batchInferenceJobConfig = schema.new({
            id = id.from(_N, "BatchInferenceJob", "batchInferenceJobConfig"),
            type = "structure",
            name = "batchInferenceJobConfig",
            target_id = id.from(_N, "BatchInferenceJobConfig"),
            target = M.BatchInferenceJobConfig,
        }),
        roleArn = schema.new({
            id = id.from(_N, "BatchInferenceJob", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        batchInferenceJobMode = schema.new({
            id = id.from(_N, "BatchInferenceJob", "batchInferenceJobMode"),
            type = "string",
            name = "batchInferenceJobMode",
            target_id = prelude.String.id,
        }),
        themeGenerationConfig = schema.new({
            id = id.from(_N, "BatchInferenceJob", "themeGenerationConfig"),
            type = "structure",
            name = "themeGenerationConfig",
            target_id = id.from(_N, "ThemeGenerationConfig"),
            target = M.ThemeGenerationConfig,
        }),
        status = schema.new({
            id = id.from(_N, "BatchInferenceJob", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "BatchInferenceJob", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "BatchInferenceJob", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeBatchInferenceJobOutput = schema.new({
    id = id.from(_N, "DescribeBatchInferenceJobOutput"),
    type = "structure",
    members = {
        batchInferenceJob = schema.new({
            id = id.from(_N, "DescribeBatchInferenceJobOutput", "batchInferenceJob"),
            type = "structure",
            name = "batchInferenceJob",
            target_id = id.from(_N, "BatchInferenceJob"),
            target = M.BatchInferenceJob,
        }),
    },
})

M.DescribeBatchSegmentJobInput = schema.new({
    id = id.from(_N, "DescribeBatchSegmentJobInput"),
    type = "structure",
    members = {
        batchSegmentJobArn = schema.new({
            id = id.from(_N, "DescribeBatchSegmentJobInput", "batchSegmentJobArn"),
            type = "string",
            name = "batchSegmentJobArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchSegmentJob = schema.new({
    id = id.from(_N, "BatchSegmentJob"),
    type = "structure",
    members = {
        jobName = schema.new({
            id = id.from(_N, "BatchSegmentJob", "jobName"),
            type = "string",
            name = "jobName",
            target_id = prelude.String.id,
        }),
        batchSegmentJobArn = schema.new({
            id = id.from(_N, "BatchSegmentJob", "batchSegmentJobArn"),
            type = "string",
            name = "batchSegmentJobArn",
            target_id = prelude.String.id,
        }),
        filterArn = schema.new({
            id = id.from(_N, "BatchSegmentJob", "filterArn"),
            type = "string",
            name = "filterArn",
            target_id = prelude.String.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "BatchSegmentJob", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        solutionVersionArn = schema.new({
            id = id.from(_N, "BatchSegmentJob", "solutionVersionArn"),
            type = "string",
            name = "solutionVersionArn",
            target_id = prelude.String.id,
        }),
        numResults = schema.new({
            id = id.from(_N, "BatchSegmentJob", "numResults"),
            type = "integer",
            name = "numResults",
            target_id = prelude.Integer.id,
        }),
        jobInput = schema.new({
            id = id.from(_N, "BatchSegmentJob", "jobInput"),
            type = "structure",
            name = "jobInput",
            target_id = id.from(_N, "BatchSegmentJobInput"),
            target = M.BatchSegmentJobInput,
        }),
        jobOutput = schema.new({
            id = id.from(_N, "BatchSegmentJob", "jobOutput"),
            type = "structure",
            name = "jobOutput",
            target_id = id.from(_N, "BatchSegmentJobOutput"),
            target = M.BatchSegmentJobOutput,
        }),
        roleArn = schema.new({
            id = id.from(_N, "BatchSegmentJob", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "BatchSegmentJob", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "BatchSegmentJob", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "BatchSegmentJob", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeBatchSegmentJobOutput = schema.new({
    id = id.from(_N, "DescribeBatchSegmentJobOutput"),
    type = "structure",
    members = {
        batchSegmentJob = schema.new({
            id = id.from(_N, "DescribeBatchSegmentJobOutput", "batchSegmentJob"),
            type = "structure",
            name = "batchSegmentJob",
            target_id = id.from(_N, "BatchSegmentJob"),
            target = M.BatchSegmentJob,
        }),
    },
})

M.DescribeCampaignInput = schema.new({
    id = id.from(_N, "DescribeCampaignInput"),
    type = "structure",
    members = {
        campaignArn = schema.new({
            id = id.from(_N, "DescribeCampaignInput", "campaignArn"),
            type = "string",
            name = "campaignArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CampaignUpdateSummary = schema.new({
    id = id.from(_N, "CampaignUpdateSummary"),
    type = "structure",
    members = {
        solutionVersionArn = schema.new({
            id = id.from(_N, "CampaignUpdateSummary", "solutionVersionArn"),
            type = "string",
            name = "solutionVersionArn",
            target_id = prelude.String.id,
        }),
        minProvisionedTPS = schema.new({
            id = id.from(_N, "CampaignUpdateSummary", "minProvisionedTPS"),
            type = "integer",
            name = "minProvisionedTPS",
            target_id = prelude.Integer.id,
        }),
        campaignConfig = schema.new({
            id = id.from(_N, "CampaignUpdateSummary", "campaignConfig"),
            type = "structure",
            name = "campaignConfig",
            target_id = id.from(_N, "CampaignConfig"),
            target = M.CampaignConfig,
        }),
        status = schema.new({
            id = id.from(_N, "CampaignUpdateSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "CampaignUpdateSummary", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "CampaignUpdateSummary", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "CampaignUpdateSummary", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.Campaign = schema.new({
    id = id.from(_N, "Campaign"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Campaign", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        campaignArn = schema.new({
            id = id.from(_N, "Campaign", "campaignArn"),
            type = "string",
            name = "campaignArn",
            target_id = prelude.String.id,
        }),
        solutionVersionArn = schema.new({
            id = id.from(_N, "Campaign", "solutionVersionArn"),
            type = "string",
            name = "solutionVersionArn",
            target_id = prelude.String.id,
        }),
        minProvisionedTPS = schema.new({
            id = id.from(_N, "Campaign", "minProvisionedTPS"),
            type = "integer",
            name = "minProvisionedTPS",
            target_id = prelude.Integer.id,
        }),
        campaignConfig = schema.new({
            id = id.from(_N, "Campaign", "campaignConfig"),
            type = "structure",
            name = "campaignConfig",
            target_id = id.from(_N, "CampaignConfig"),
            target = M.CampaignConfig,
        }),
        status = schema.new({
            id = id.from(_N, "Campaign", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "Campaign", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "Campaign", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "Campaign", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        latestCampaignUpdate = schema.new({
            id = id.from(_N, "Campaign", "latestCampaignUpdate"),
            type = "structure",
            name = "latestCampaignUpdate",
            target_id = id.from(_N, "CampaignUpdateSummary"),
            target = M.CampaignUpdateSummary,
        }),
    },
})

M.DescribeCampaignOutput = schema.new({
    id = id.from(_N, "DescribeCampaignOutput"),
    type = "structure",
    members = {
        campaign = schema.new({
            id = id.from(_N, "DescribeCampaignOutput", "campaign"),
            type = "structure",
            name = "campaign",
            target_id = id.from(_N, "Campaign"),
            target = M.Campaign,
        }),
    },
})

M.DescribeDataDeletionJobInput = schema.new({
    id = id.from(_N, "DescribeDataDeletionJobInput"),
    type = "structure",
    members = {
        dataDeletionJobArn = schema.new({
            id = id.from(_N, "DescribeDataDeletionJobInput", "dataDeletionJobArn"),
            type = "string",
            name = "dataDeletionJobArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DataDeletionJob = schema.new({
    id = id.from(_N, "DataDeletionJob"),
    type = "structure",
    members = {
        jobName = schema.new({
            id = id.from(_N, "DataDeletionJob", "jobName"),
            type = "string",
            name = "jobName",
            target_id = prelude.String.id,
        }),
        dataDeletionJobArn = schema.new({
            id = id.from(_N, "DataDeletionJob", "dataDeletionJobArn"),
            type = "string",
            name = "dataDeletionJobArn",
            target_id = prelude.String.id,
        }),
        datasetGroupArn = schema.new({
            id = id.from(_N, "DataDeletionJob", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
        }),
        dataSource = schema.new({
            id = id.from(_N, "DataDeletionJob", "dataSource"),
            type = "structure",
            name = "dataSource",
            target_id = id.from(_N, "DataSource"),
            target = M.DataSource,
        }),
        roleArn = schema.new({
            id = id.from(_N, "DataDeletionJob", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "DataDeletionJob", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        numDeleted = schema.new({
            id = id.from(_N, "DataDeletionJob", "numDeleted"),
            type = "integer",
            name = "numDeleted",
            target_id = prelude.Integer.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "DataDeletionJob", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "DataDeletionJob", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "DataDeletionJob", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDataDeletionJobOutput = schema.new({
    id = id.from(_N, "DescribeDataDeletionJobOutput"),
    type = "structure",
    members = {
        dataDeletionJob = schema.new({
            id = id.from(_N, "DescribeDataDeletionJobOutput", "dataDeletionJob"),
            type = "structure",
            name = "dataDeletionJob",
            target_id = id.from(_N, "DataDeletionJob"),
            target = M.DataDeletionJob,
        }),
    },
})

M.DescribeDatasetInput = schema.new({
    id = id.from(_N, "DescribeDatasetInput"),
    type = "structure",
    members = {
        datasetArn = schema.new({
            id = id.from(_N, "DescribeDatasetInput", "datasetArn"),
            type = "string",
            name = "datasetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DatasetUpdateSummary = schema.new({
    id = id.from(_N, "DatasetUpdateSummary"),
    type = "structure",
    members = {
        schemaArn = schema.new({
            id = id.from(_N, "DatasetUpdateSummary", "schemaArn"),
            type = "string",
            name = "schemaArn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "DatasetUpdateSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "DatasetUpdateSummary", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "DatasetUpdateSummary", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "DatasetUpdateSummary", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.Dataset = schema.new({
    id = id.from(_N, "Dataset"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Dataset", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        datasetArn = schema.new({
            id = id.from(_N, "Dataset", "datasetArn"),
            type = "string",
            name = "datasetArn",
            target_id = prelude.String.id,
        }),
        datasetGroupArn = schema.new({
            id = id.from(_N, "Dataset", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
        }),
        datasetType = schema.new({
            id = id.from(_N, "Dataset", "datasetType"),
            type = "string",
            name = "datasetType",
            target_id = prelude.String.id,
        }),
        schemaArn = schema.new({
            id = id.from(_N, "Dataset", "schemaArn"),
            type = "string",
            name = "schemaArn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "Dataset", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "Dataset", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "Dataset", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        latestDatasetUpdate = schema.new({
            id = id.from(_N, "Dataset", "latestDatasetUpdate"),
            type = "structure",
            name = "latestDatasetUpdate",
            target_id = id.from(_N, "DatasetUpdateSummary"),
            target = M.DatasetUpdateSummary,
        }),
        trackingId = schema.new({
            id = id.from(_N, "Dataset", "trackingId"),
            type = "string",
            name = "trackingId",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDatasetOutput = schema.new({
    id = id.from(_N, "DescribeDatasetOutput"),
    type = "structure",
    members = {
        dataset = schema.new({
            id = id.from(_N, "DescribeDatasetOutput", "dataset"),
            type = "structure",
            name = "dataset",
            target_id = id.from(_N, "Dataset"),
            target = M.Dataset,
        }),
    },
})

M.DescribeDatasetExportJobInput = schema.new({
    id = id.from(_N, "DescribeDatasetExportJobInput"),
    type = "structure",
    members = {
        datasetExportJobArn = schema.new({
            id = id.from(_N, "DescribeDatasetExportJobInput", "datasetExportJobArn"),
            type = "string",
            name = "datasetExportJobArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DatasetExportJob = schema.new({
    id = id.from(_N, "DatasetExportJob"),
    type = "structure",
    members = {
        jobName = schema.new({
            id = id.from(_N, "DatasetExportJob", "jobName"),
            type = "string",
            name = "jobName",
            target_id = prelude.String.id,
        }),
        datasetExportJobArn = schema.new({
            id = id.from(_N, "DatasetExportJob", "datasetExportJobArn"),
            type = "string",
            name = "datasetExportJobArn",
            target_id = prelude.String.id,
        }),
        datasetArn = schema.new({
            id = id.from(_N, "DatasetExportJob", "datasetArn"),
            type = "string",
            name = "datasetArn",
            target_id = prelude.String.id,
        }),
        ingestionMode = schema.new({
            id = id.from(_N, "DatasetExportJob", "ingestionMode"),
            type = "string",
            name = "ingestionMode",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "DatasetExportJob", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "DatasetExportJob", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        jobOutput = schema.new({
            id = id.from(_N, "DatasetExportJob", "jobOutput"),
            type = "structure",
            name = "jobOutput",
            target_id = id.from(_N, "DatasetExportJobOutput"),
            target = M.DatasetExportJobOutput,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "DatasetExportJob", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "DatasetExportJob", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "DatasetExportJob", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDatasetExportJobOutput = schema.new({
    id = id.from(_N, "DescribeDatasetExportJobOutput"),
    type = "structure",
    members = {
        datasetExportJob = schema.new({
            id = id.from(_N, "DescribeDatasetExportJobOutput", "datasetExportJob"),
            type = "structure",
            name = "datasetExportJob",
            target_id = id.from(_N, "DatasetExportJob"),
            target = M.DatasetExportJob,
        }),
    },
})

M.DescribeDatasetGroupInput = schema.new({
    id = id.from(_N, "DescribeDatasetGroupInput"),
    type = "structure",
    members = {
        datasetGroupArn = schema.new({
            id = id.from(_N, "DescribeDatasetGroupInput", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DatasetGroup = schema.new({
    id = id.from(_N, "DatasetGroup"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DatasetGroup", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        datasetGroupArn = schema.new({
            id = id.from(_N, "DatasetGroup", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "DatasetGroup", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "DatasetGroup", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "DatasetGroup", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "DatasetGroup", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "DatasetGroup", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "DatasetGroup", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        domain = schema.new({
            id = id.from(_N, "DatasetGroup", "domain"),
            type = "string",
            name = "domain",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDatasetGroupOutput = schema.new({
    id = id.from(_N, "DescribeDatasetGroupOutput"),
    type = "structure",
    members = {
        datasetGroup = schema.new({
            id = id.from(_N, "DescribeDatasetGroupOutput", "datasetGroup"),
            type = "structure",
            name = "datasetGroup",
            target_id = id.from(_N, "DatasetGroup"),
            target = M.DatasetGroup,
        }),
    },
})

M.DescribeDatasetImportJobInput = schema.new({
    id = id.from(_N, "DescribeDatasetImportJobInput"),
    type = "structure",
    members = {
        datasetImportJobArn = schema.new({
            id = id.from(_N, "DescribeDatasetImportJobInput", "datasetImportJobArn"),
            type = "string",
            name = "datasetImportJobArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DatasetImportJob = schema.new({
    id = id.from(_N, "DatasetImportJob"),
    type = "structure",
    members = {
        jobName = schema.new({
            id = id.from(_N, "DatasetImportJob", "jobName"),
            type = "string",
            name = "jobName",
            target_id = prelude.String.id,
        }),
        datasetImportJobArn = schema.new({
            id = id.from(_N, "DatasetImportJob", "datasetImportJobArn"),
            type = "string",
            name = "datasetImportJobArn",
            target_id = prelude.String.id,
        }),
        datasetArn = schema.new({
            id = id.from(_N, "DatasetImportJob", "datasetArn"),
            type = "string",
            name = "datasetArn",
            target_id = prelude.String.id,
        }),
        dataSource = schema.new({
            id = id.from(_N, "DatasetImportJob", "dataSource"),
            type = "structure",
            name = "dataSource",
            target_id = id.from(_N, "DataSource"),
            target = M.DataSource,
        }),
        roleArn = schema.new({
            id = id.from(_N, "DatasetImportJob", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "DatasetImportJob", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "DatasetImportJob", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "DatasetImportJob", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "DatasetImportJob", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        importMode = schema.new({
            id = id.from(_N, "DatasetImportJob", "importMode"),
            type = "string",
            name = "importMode",
            target_id = prelude.String.id,
        }),
        publishAttributionMetricsToS3 = schema.new({
            id = id.from(_N, "DatasetImportJob", "publishAttributionMetricsToS3"),
            type = "boolean",
            name = "publishAttributionMetricsToS3",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeDatasetImportJobOutput = schema.new({
    id = id.from(_N, "DescribeDatasetImportJobOutput"),
    type = "structure",
    members = {
        datasetImportJob = schema.new({
            id = id.from(_N, "DescribeDatasetImportJobOutput", "datasetImportJob"),
            type = "structure",
            name = "datasetImportJob",
            target_id = id.from(_N, "DatasetImportJob"),
            target = M.DatasetImportJob,
        }),
    },
})

M.DescribeEventTrackerInput = schema.new({
    id = id.from(_N, "DescribeEventTrackerInput"),
    type = "structure",
    members = {
        eventTrackerArn = schema.new({
            id = id.from(_N, "DescribeEventTrackerInput", "eventTrackerArn"),
            type = "string",
            name = "eventTrackerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EventTracker = schema.new({
    id = id.from(_N, "EventTracker"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "EventTracker", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        eventTrackerArn = schema.new({
            id = id.from(_N, "EventTracker", "eventTrackerArn"),
            type = "string",
            name = "eventTrackerArn",
            target_id = prelude.String.id,
        }),
        accountId = schema.new({
            id = id.from(_N, "EventTracker", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
        }),
        trackingId = schema.new({
            id = id.from(_N, "EventTracker", "trackingId"),
            type = "string",
            name = "trackingId",
            target_id = prelude.String.id,
        }),
        datasetGroupArn = schema.new({
            id = id.from(_N, "EventTracker", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "EventTracker", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "EventTracker", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "EventTracker", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeEventTrackerOutput = schema.new({
    id = id.from(_N, "DescribeEventTrackerOutput"),
    type = "structure",
    members = {
        eventTracker = schema.new({
            id = id.from(_N, "DescribeEventTrackerOutput", "eventTracker"),
            type = "structure",
            name = "eventTracker",
            target_id = id.from(_N, "EventTracker"),
            target = M.EventTracker,
        }),
    },
})

M.DescribeFeatureTransformationInput = schema.new({
    id = id.from(_N, "DescribeFeatureTransformationInput"),
    type = "structure",
    members = {
        featureTransformationArn = schema.new({
            id = id.from(_N, "DescribeFeatureTransformationInput", "featureTransformationArn"),
            type = "string",
            name = "featureTransformationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FeatureTransformation = schema.new({
    id = id.from(_N, "FeatureTransformation"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "FeatureTransformation", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        featureTransformationArn = schema.new({
            id = id.from(_N, "FeatureTransformation", "featureTransformationArn"),
            type = "string",
            name = "featureTransformationArn",
            target_id = prelude.String.id,
        }),
        defaultParameters = schema.new({
            id = id.from(_N, "FeatureTransformation", "defaultParameters"),
            type = "map",
            name = "defaultParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "FeatureTransformation", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "FeatureTransformation", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "FeatureTransformation", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeFeatureTransformationOutput = schema.new({
    id = id.from(_N, "DescribeFeatureTransformationOutput"),
    type = "structure",
    members = {
        featureTransformation = schema.new({
            id = id.from(_N, "DescribeFeatureTransformationOutput", "featureTransformation"),
            type = "structure",
            name = "featureTransformation",
            target_id = id.from(_N, "FeatureTransformation"),
            target = M.FeatureTransformation,
        }),
    },
})

M.DescribeFilterInput = schema.new({
    id = id.from(_N, "DescribeFilterInput"),
    type = "structure",
    members = {
        filterArn = schema.new({
            id = id.from(_N, "DescribeFilterInput", "filterArn"),
            type = "string",
            name = "filterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Filter = schema.new({
    id = id.from(_N, "Filter"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Filter", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        filterArn = schema.new({
            id = id.from(_N, "Filter", "filterArn"),
            type = "string",
            name = "filterArn",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "Filter", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "Filter", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        datasetGroupArn = schema.new({
            id = id.from(_N, "Filter", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "Filter", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        filterExpression = schema.new({
            id = id.from(_N, "Filter", "filterExpression"),
            type = "string",
            name = "filterExpression",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "Filter", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeFilterOutput = schema.new({
    id = id.from(_N, "DescribeFilterOutput"),
    type = "structure",
    members = {
        filter = schema.new({
            id = id.from(_N, "DescribeFilterOutput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "Filter"),
            target = M.Filter,
        }),
    },
})

M.DescribeMetricAttributionInput = schema.new({
    id = id.from(_N, "DescribeMetricAttributionInput"),
    type = "structure",
    members = {
        metricAttributionArn = schema.new({
            id = id.from(_N, "DescribeMetricAttributionInput", "metricAttributionArn"),
            type = "string",
            name = "metricAttributionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MetricAttribution = schema.new({
    id = id.from(_N, "MetricAttribution"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "MetricAttribution", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        metricAttributionArn = schema.new({
            id = id.from(_N, "MetricAttribution", "metricAttributionArn"),
            type = "string",
            name = "metricAttributionArn",
            target_id = prelude.String.id,
        }),
        datasetGroupArn = schema.new({
            id = id.from(_N, "MetricAttribution", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
        }),
        metricsOutputConfig = schema.new({
            id = id.from(_N, "MetricAttribution", "metricsOutputConfig"),
            type = "structure",
            name = "metricsOutputConfig",
            target_id = id.from(_N, "MetricAttributionOutput"),
            target = M.MetricAttributionOutput,
        }),
        status = schema.new({
            id = id.from(_N, "MetricAttribution", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "MetricAttribution", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "MetricAttribution", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "MetricAttribution", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeMetricAttributionOutput = schema.new({
    id = id.from(_N, "DescribeMetricAttributionOutput"),
    type = "structure",
    members = {
        metricAttribution = schema.new({
            id = id.from(_N, "DescribeMetricAttributionOutput", "metricAttribution"),
            type = "structure",
            name = "metricAttribution",
            target_id = id.from(_N, "MetricAttribution"),
            target = M.MetricAttribution,
        }),
    },
})

M.DescribeRecipeInput = schema.new({
    id = id.from(_N, "DescribeRecipeInput"),
    type = "structure",
    members = {
        recipeArn = schema.new({
            id = id.from(_N, "DescribeRecipeInput", "recipeArn"),
            type = "string",
            name = "recipeArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Recipe = schema.new({
    id = id.from(_N, "Recipe"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Recipe", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        recipeArn = schema.new({
            id = id.from(_N, "Recipe", "recipeArn"),
            type = "string",
            name = "recipeArn",
            target_id = prelude.String.id,
        }),
        algorithmArn = schema.new({
            id = id.from(_N, "Recipe", "algorithmArn"),
            type = "string",
            name = "algorithmArn",
            target_id = prelude.String.id,
        }),
        featureTransformationArn = schema.new({
            id = id.from(_N, "Recipe", "featureTransformationArn"),
            type = "string",
            name = "featureTransformationArn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "Recipe", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "Recipe", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "Recipe", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        recipeType = schema.new({
            id = id.from(_N, "Recipe", "recipeType"),
            type = "string",
            name = "recipeType",
            target_id = prelude.String.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "Recipe", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeRecipeOutput = schema.new({
    id = id.from(_N, "DescribeRecipeOutput"),
    type = "structure",
    members = {
        recipe = schema.new({
            id = id.from(_N, "DescribeRecipeOutput", "recipe"),
            type = "structure",
            name = "recipe",
            target_id = id.from(_N, "Recipe"),
            target = M.Recipe,
        }),
    },
})

M.DescribeRecommenderInput = schema.new({
    id = id.from(_N, "DescribeRecommenderInput"),
    type = "structure",
    members = {
        recommenderArn = schema.new({
            id = id.from(_N, "DescribeRecommenderInput", "recommenderArn"),
            type = "string",
            name = "recommenderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RecommenderUpdateSummary = schema.new({
    id = id.from(_N, "RecommenderUpdateSummary"),
    type = "structure",
    members = {
        recommenderConfig = schema.new({
            id = id.from(_N, "RecommenderUpdateSummary", "recommenderConfig"),
            type = "structure",
            name = "recommenderConfig",
            target_id = id.from(_N, "RecommenderConfig"),
            target = M.RecommenderConfig,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "RecommenderUpdateSummary", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "RecommenderUpdateSummary", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "RecommenderUpdateSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "RecommenderUpdateSummary", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
    },
})

M.Recommender = schema.new({
    id = id.from(_N, "Recommender"),
    type = "structure",
    members = {
        recommenderArn = schema.new({
            id = id.from(_N, "Recommender", "recommenderArn"),
            type = "string",
            name = "recommenderArn",
            target_id = prelude.String.id,
        }),
        datasetGroupArn = schema.new({
            id = id.from(_N, "Recommender", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Recommender", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        recipeArn = schema.new({
            id = id.from(_N, "Recommender", "recipeArn"),
            type = "string",
            name = "recipeArn",
            target_id = prelude.String.id,
        }),
        recommenderConfig = schema.new({
            id = id.from(_N, "Recommender", "recommenderConfig"),
            type = "structure",
            name = "recommenderConfig",
            target_id = id.from(_N, "RecommenderConfig"),
            target = M.RecommenderConfig,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "Recommender", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "Recommender", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "Recommender", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "Recommender", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        latestRecommenderUpdate = schema.new({
            id = id.from(_N, "Recommender", "latestRecommenderUpdate"),
            type = "structure",
            name = "latestRecommenderUpdate",
            target_id = id.from(_N, "RecommenderUpdateSummary"),
            target = M.RecommenderUpdateSummary,
        }),
        modelMetrics = schema.new({
            id = id.from(_N, "Recommender", "modelMetrics"),
            type = "map",
            name = "modelMetrics",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Double,
        }),
    },
})

M.DescribeRecommenderOutput = schema.new({
    id = id.from(_N, "DescribeRecommenderOutput"),
    type = "structure",
    members = {
        recommender = schema.new({
            id = id.from(_N, "DescribeRecommenderOutput", "recommender"),
            type = "structure",
            name = "recommender",
            target_id = id.from(_N, "Recommender"),
            target = M.Recommender,
        }),
    },
})

M.DescribeSchemaInput = schema.new({
    id = id.from(_N, "DescribeSchemaInput"),
    type = "structure",
    members = {
        schemaArn = schema.new({
            id = id.from(_N, "DescribeSchemaInput", "schemaArn"),
            type = "string",
            name = "schemaArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DatasetSchema = schema.new({
    id = id.from(_N, "DatasetSchema"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DatasetSchema", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        schemaArn = schema.new({
            id = id.from(_N, "DatasetSchema", "schemaArn"),
            type = "string",
            name = "schemaArn",
            target_id = prelude.String.id,
        }),
        schema = schema.new({
            id = id.from(_N, "DatasetSchema", "schema"),
            type = "string",
            name = "schema",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "DatasetSchema", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "DatasetSchema", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        domain = schema.new({
            id = id.from(_N, "DatasetSchema", "domain"),
            type = "string",
            name = "domain",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSchemaOutput = schema.new({
    id = id.from(_N, "DescribeSchemaOutput"),
    type = "structure",
    members = {
        schema = schema.new({
            id = id.from(_N, "DescribeSchemaOutput", "schema"),
            type = "structure",
            name = "schema",
            target_id = id.from(_N, "DatasetSchema"),
            target = M.DatasetSchema,
        }),
    },
})

M.DescribeSolutionInput = schema.new({
    id = id.from(_N, "DescribeSolutionInput"),
    type = "structure",
    members = {
        solutionArn = schema.new({
            id = id.from(_N, "DescribeSolutionInput", "solutionArn"),
            type = "string",
            name = "solutionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AutoMLResult = schema.new({
    id = id.from(_N, "AutoMLResult"),
    type = "structure",
    members = {
        bestRecipeArn = schema.new({
            id = id.from(_N, "AutoMLResult", "bestRecipeArn"),
            type = "string",
            name = "bestRecipeArn",
            target_id = prelude.String.id,
        }),
    },
})

M.SolutionUpdateConfig = schema.new({
    id = id.from(_N, "SolutionUpdateConfig"),
    type = "structure",
    members = {
        autoTrainingConfig = schema.new({
            id = id.from(_N, "SolutionUpdateConfig", "autoTrainingConfig"),
            type = "structure",
            name = "autoTrainingConfig",
            target_id = id.from(_N, "AutoTrainingConfig"),
            target = M.AutoTrainingConfig,
        }),
        eventsConfig = schema.new({
            id = id.from(_N, "SolutionUpdateConfig", "eventsConfig"),
            type = "structure",
            name = "eventsConfig",
            target_id = id.from(_N, "EventsConfig"),
            target = M.EventsConfig,
        }),
    },
})

M.SolutionUpdateSummary = schema.new({
    id = id.from(_N, "SolutionUpdateSummary"),
    type = "structure",
    members = {
        solutionUpdateConfig = schema.new({
            id = id.from(_N, "SolutionUpdateSummary", "solutionUpdateConfig"),
            type = "structure",
            name = "solutionUpdateConfig",
            target_id = id.from(_N, "SolutionUpdateConfig"),
            target = M.SolutionUpdateConfig,
        }),
        status = schema.new({
            id = id.from(_N, "SolutionUpdateSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        performAutoTraining = schema.new({
            id = id.from(_N, "SolutionUpdateSummary", "performAutoTraining"),
            type = "boolean",
            name = "performAutoTraining",
            target_id = prelude.Boolean.id,
        }),
        performIncrementalUpdate = schema.new({
            id = id.from(_N, "SolutionUpdateSummary", "performIncrementalUpdate"),
            type = "boolean",
            name = "performIncrementalUpdate",
            target_id = prelude.Boolean.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "SolutionUpdateSummary", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "SolutionUpdateSummary", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "SolutionUpdateSummary", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
    },
})

M.SolutionVersionSummary = schema.new({
    id = id.from(_N, "SolutionVersionSummary"),
    type = "structure",
    members = {
        solutionVersionArn = schema.new({
            id = id.from(_N, "SolutionVersionSummary", "solutionVersionArn"),
            type = "string",
            name = "solutionVersionArn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "SolutionVersionSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        trainingMode = schema.new({
            id = id.from(_N, "SolutionVersionSummary", "trainingMode"),
            type = "string",
            name = "trainingMode",
            target_id = prelude.String.id,
        }),
        trainingType = schema.new({
            id = id.from(_N, "SolutionVersionSummary", "trainingType"),
            type = "string",
            name = "trainingType",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "SolutionVersionSummary", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "SolutionVersionSummary", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "SolutionVersionSummary", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
    },
})

M.Solution = schema.new({
    id = id.from(_N, "Solution"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Solution", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        solutionArn = schema.new({
            id = id.from(_N, "Solution", "solutionArn"),
            type = "string",
            name = "solutionArn",
            target_id = prelude.String.id,
        }),
        performHPO = schema.new({
            id = id.from(_N, "Solution", "performHPO"),
            type = "boolean",
            name = "performHPO",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        performAutoML = schema.new({
            id = id.from(_N, "Solution", "performAutoML"),
            type = "boolean",
            name = "performAutoML",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        performAutoTraining = schema.new({
            id = id.from(_N, "Solution", "performAutoTraining"),
            type = "boolean",
            name = "performAutoTraining",
            target_id = prelude.Boolean.id,
        }),
        performIncrementalUpdate = schema.new({
            id = id.from(_N, "Solution", "performIncrementalUpdate"),
            type = "boolean",
            name = "performIncrementalUpdate",
            target_id = prelude.Boolean.id,
        }),
        recipeArn = schema.new({
            id = id.from(_N, "Solution", "recipeArn"),
            type = "string",
            name = "recipeArn",
            target_id = prelude.String.id,
        }),
        datasetGroupArn = schema.new({
            id = id.from(_N, "Solution", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
        }),
        eventType = schema.new({
            id = id.from(_N, "Solution", "eventType"),
            type = "string",
            name = "eventType",
            target_id = prelude.String.id,
        }),
        solutionConfig = schema.new({
            id = id.from(_N, "Solution", "solutionConfig"),
            type = "structure",
            name = "solutionConfig",
            target_id = id.from(_N, "SolutionConfig"),
            target = M.SolutionConfig,
        }),
        autoMLResult = schema.new({
            id = id.from(_N, "Solution", "autoMLResult"),
            type = "structure",
            name = "autoMLResult",
            target_id = id.from(_N, "AutoMLResult"),
            target = M.AutoMLResult,
        }),
        status = schema.new({
            id = id.from(_N, "Solution", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "Solution", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "Solution", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        latestSolutionVersion = schema.new({
            id = id.from(_N, "Solution", "latestSolutionVersion"),
            type = "structure",
            name = "latestSolutionVersion",
            target_id = id.from(_N, "SolutionVersionSummary"),
            target = M.SolutionVersionSummary,
        }),
        latestSolutionUpdate = schema.new({
            id = id.from(_N, "Solution", "latestSolutionUpdate"),
            type = "structure",
            name = "latestSolutionUpdate",
            target_id = id.from(_N, "SolutionUpdateSummary"),
            target = M.SolutionUpdateSummary,
        }),
    },
})

M.DescribeSolutionOutput = schema.new({
    id = id.from(_N, "DescribeSolutionOutput"),
    type = "structure",
    members = {
        solution = schema.new({
            id = id.from(_N, "DescribeSolutionOutput", "solution"),
            type = "structure",
            name = "solution",
            target_id = id.from(_N, "Solution"),
            target = M.Solution,
        }),
    },
})

M.DescribeSolutionVersionInput = schema.new({
    id = id.from(_N, "DescribeSolutionVersionInput"),
    type = "structure",
    members = {
        solutionVersionArn = schema.new({
            id = id.from(_N, "DescribeSolutionVersionInput", "solutionVersionArn"),
            type = "string",
            name = "solutionVersionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TunedHPOParams = schema.new({
    id = id.from(_N, "TunedHPOParams"),
    type = "structure",
    members = {
        algorithmHyperParameters = schema.new({
            id = id.from(_N, "TunedHPOParams", "algorithmHyperParameters"),
            type = "map",
            name = "algorithmHyperParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.SolutionVersion = schema.new({
    id = id.from(_N, "SolutionVersion"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "SolutionVersion", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        solutionVersionArn = schema.new({
            id = id.from(_N, "SolutionVersion", "solutionVersionArn"),
            type = "string",
            name = "solutionVersionArn",
            target_id = prelude.String.id,
        }),
        solutionArn = schema.new({
            id = id.from(_N, "SolutionVersion", "solutionArn"),
            type = "string",
            name = "solutionArn",
            target_id = prelude.String.id,
        }),
        performHPO = schema.new({
            id = id.from(_N, "SolutionVersion", "performHPO"),
            type = "boolean",
            name = "performHPO",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        performAutoML = schema.new({
            id = id.from(_N, "SolutionVersion", "performAutoML"),
            type = "boolean",
            name = "performAutoML",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        performIncrementalUpdate = schema.new({
            id = id.from(_N, "SolutionVersion", "performIncrementalUpdate"),
            type = "boolean",
            name = "performIncrementalUpdate",
            target_id = prelude.Boolean.id,
        }),
        recipeArn = schema.new({
            id = id.from(_N, "SolutionVersion", "recipeArn"),
            type = "string",
            name = "recipeArn",
            target_id = prelude.String.id,
        }),
        eventType = schema.new({
            id = id.from(_N, "SolutionVersion", "eventType"),
            type = "string",
            name = "eventType",
            target_id = prelude.String.id,
        }),
        datasetGroupArn = schema.new({
            id = id.from(_N, "SolutionVersion", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
        }),
        solutionConfig = schema.new({
            id = id.from(_N, "SolutionVersion", "solutionConfig"),
            type = "structure",
            name = "solutionConfig",
            target_id = id.from(_N, "SolutionConfig"),
            target = M.SolutionConfig,
        }),
        trainingHours = schema.new({
            id = id.from(_N, "SolutionVersion", "trainingHours"),
            type = "double",
            name = "trainingHours",
            target_id = prelude.Double.id,
        }),
        trainingMode = schema.new({
            id = id.from(_N, "SolutionVersion", "trainingMode"),
            type = "string",
            name = "trainingMode",
            target_id = prelude.String.id,
        }),
        tunedHPOParams = schema.new({
            id = id.from(_N, "SolutionVersion", "tunedHPOParams"),
            type = "structure",
            name = "tunedHPOParams",
            target_id = id.from(_N, "TunedHPOParams"),
            target = M.TunedHPOParams,
        }),
        status = schema.new({
            id = id.from(_N, "SolutionVersion", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "SolutionVersion", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "SolutionVersion", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "SolutionVersion", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        trainingType = schema.new({
            id = id.from(_N, "SolutionVersion", "trainingType"),
            type = "string",
            name = "trainingType",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSolutionVersionOutput = schema.new({
    id = id.from(_N, "DescribeSolutionVersionOutput"),
    type = "structure",
    members = {
        solutionVersion = schema.new({
            id = id.from(_N, "DescribeSolutionVersionOutput", "solutionVersion"),
            type = "structure",
            name = "solutionVersion",
            target_id = id.from(_N, "SolutionVersion"),
            target = M.SolutionVersion,
        }),
    },
})

M.GetSolutionMetricsInput = schema.new({
    id = id.from(_N, "GetSolutionMetricsInput"),
    type = "structure",
    members = {
        solutionVersionArn = schema.new({
            id = id.from(_N, "GetSolutionMetricsInput", "solutionVersionArn"),
            type = "string",
            name = "solutionVersionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetSolutionMetricsOutput = schema.new({
    id = id.from(_N, "GetSolutionMetricsOutput"),
    type = "structure",
    members = {
        solutionVersionArn = schema.new({
            id = id.from(_N, "GetSolutionMetricsOutput", "solutionVersionArn"),
            type = "string",
            name = "solutionVersionArn",
            target_id = prelude.String.id,
        }),
        metrics = schema.new({
            id = id.from(_N, "GetSolutionMetricsOutput", "metrics"),
            type = "map",
            name = "metrics",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Double,
        }),
    },
})

M.InvalidNextTokenException = schema.new({
    id = id.from(_N, "InvalidNextTokenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidNextTokenException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBatchInferenceJobsInput = schema.new({
    id = id.from(_N, "ListBatchInferenceJobsInput"),
    type = "structure",
    members = {
        solutionVersionArn = schema.new({
            id = id.from(_N, "ListBatchInferenceJobsInput", "solutionVersionArn"),
            type = "string",
            name = "solutionVersionArn",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBatchInferenceJobsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListBatchInferenceJobsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.BatchInferenceJobSummary = schema.new({
    id = id.from(_N, "BatchInferenceJobSummary"),
    type = "structure",
    members = {
        batchInferenceJobArn = schema.new({
            id = id.from(_N, "BatchInferenceJobSummary", "batchInferenceJobArn"),
            type = "string",
            name = "batchInferenceJobArn",
            target_id = prelude.String.id,
        }),
        jobName = schema.new({
            id = id.from(_N, "BatchInferenceJobSummary", "jobName"),
            type = "string",
            name = "jobName",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "BatchInferenceJobSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "BatchInferenceJobSummary", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "BatchInferenceJobSummary", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "BatchInferenceJobSummary", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        solutionVersionArn = schema.new({
            id = id.from(_N, "BatchInferenceJobSummary", "solutionVersionArn"),
            type = "string",
            name = "solutionVersionArn",
            target_id = prelude.String.id,
        }),
        batchInferenceJobMode = schema.new({
            id = id.from(_N, "BatchInferenceJobSummary", "batchInferenceJobMode"),
            type = "string",
            name = "batchInferenceJobMode",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBatchInferenceJobsOutput = schema.new({
    id = id.from(_N, "ListBatchInferenceJobsOutput"),
    type = "structure",
    members = {
        batchInferenceJobs = schema.new({
            id = id.from(_N, "ListBatchInferenceJobsOutput", "batchInferenceJobs"),
            type = "list",
            name = "batchInferenceJobs",
            target_id = prelude.Document.id,
            list_member = M.BatchInferenceJobSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBatchInferenceJobsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBatchSegmentJobsInput = schema.new({
    id = id.from(_N, "ListBatchSegmentJobsInput"),
    type = "structure",
    members = {
        solutionVersionArn = schema.new({
            id = id.from(_N, "ListBatchSegmentJobsInput", "solutionVersionArn"),
            type = "string",
            name = "solutionVersionArn",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBatchSegmentJobsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListBatchSegmentJobsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.BatchSegmentJobSummary = schema.new({
    id = id.from(_N, "BatchSegmentJobSummary"),
    type = "structure",
    members = {
        batchSegmentJobArn = schema.new({
            id = id.from(_N, "BatchSegmentJobSummary", "batchSegmentJobArn"),
            type = "string",
            name = "batchSegmentJobArn",
            target_id = prelude.String.id,
        }),
        jobName = schema.new({
            id = id.from(_N, "BatchSegmentJobSummary", "jobName"),
            type = "string",
            name = "jobName",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "BatchSegmentJobSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "BatchSegmentJobSummary", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "BatchSegmentJobSummary", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "BatchSegmentJobSummary", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        solutionVersionArn = schema.new({
            id = id.from(_N, "BatchSegmentJobSummary", "solutionVersionArn"),
            type = "string",
            name = "solutionVersionArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBatchSegmentJobsOutput = schema.new({
    id = id.from(_N, "ListBatchSegmentJobsOutput"),
    type = "structure",
    members = {
        batchSegmentJobs = schema.new({
            id = id.from(_N, "ListBatchSegmentJobsOutput", "batchSegmentJobs"),
            type = "list",
            name = "batchSegmentJobs",
            target_id = prelude.Document.id,
            list_member = M.BatchSegmentJobSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBatchSegmentJobsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCampaignsInput = schema.new({
    id = id.from(_N, "ListCampaignsInput"),
    type = "structure",
    members = {
        solutionArn = schema.new({
            id = id.from(_N, "ListCampaignsInput", "solutionArn"),
            type = "string",
            name = "solutionArn",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListCampaignsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListCampaignsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CampaignSummary = schema.new({
    id = id.from(_N, "CampaignSummary"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CampaignSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        campaignArn = schema.new({
            id = id.from(_N, "CampaignSummary", "campaignArn"),
            type = "string",
            name = "campaignArn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CampaignSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "CampaignSummary", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "CampaignSummary", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "CampaignSummary", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCampaignsOutput = schema.new({
    id = id.from(_N, "ListCampaignsOutput"),
    type = "structure",
    members = {
        campaigns = schema.new({
            id = id.from(_N, "ListCampaignsOutput", "campaigns"),
            type = "list",
            name = "campaigns",
            target_id = prelude.Document.id,
            list_member = M.CampaignSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListCampaignsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDataDeletionJobsInput = schema.new({
    id = id.from(_N, "ListDataDeletionJobsInput"),
    type = "structure",
    members = {
        datasetGroupArn = schema.new({
            id = id.from(_N, "ListDataDeletionJobsInput", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDataDeletionJobsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListDataDeletionJobsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DataDeletionJobSummary = schema.new({
    id = id.from(_N, "DataDeletionJobSummary"),
    type = "structure",
    members = {
        dataDeletionJobArn = schema.new({
            id = id.from(_N, "DataDeletionJobSummary", "dataDeletionJobArn"),
            type = "string",
            name = "dataDeletionJobArn",
            target_id = prelude.String.id,
        }),
        datasetGroupArn = schema.new({
            id = id.from(_N, "DataDeletionJobSummary", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
        }),
        jobName = schema.new({
            id = id.from(_N, "DataDeletionJobSummary", "jobName"),
            type = "string",
            name = "jobName",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "DataDeletionJobSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "DataDeletionJobSummary", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "DataDeletionJobSummary", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "DataDeletionJobSummary", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDataDeletionJobsOutput = schema.new({
    id = id.from(_N, "ListDataDeletionJobsOutput"),
    type = "structure",
    members = {
        dataDeletionJobs = schema.new({
            id = id.from(_N, "ListDataDeletionJobsOutput", "dataDeletionJobs"),
            type = "list",
            name = "dataDeletionJobs",
            target_id = prelude.Document.id,
            list_member = M.DataDeletionJobSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDataDeletionJobsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDatasetExportJobsInput = schema.new({
    id = id.from(_N, "ListDatasetExportJobsInput"),
    type = "structure",
    members = {
        datasetArn = schema.new({
            id = id.from(_N, "ListDatasetExportJobsInput", "datasetArn"),
            type = "string",
            name = "datasetArn",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDatasetExportJobsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListDatasetExportJobsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DatasetExportJobSummary = schema.new({
    id = id.from(_N, "DatasetExportJobSummary"),
    type = "structure",
    members = {
        datasetExportJobArn = schema.new({
            id = id.from(_N, "DatasetExportJobSummary", "datasetExportJobArn"),
            type = "string",
            name = "datasetExportJobArn",
            target_id = prelude.String.id,
        }),
        jobName = schema.new({
            id = id.from(_N, "DatasetExportJobSummary", "jobName"),
            type = "string",
            name = "jobName",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "DatasetExportJobSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "DatasetExportJobSummary", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "DatasetExportJobSummary", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "DatasetExportJobSummary", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDatasetExportJobsOutput = schema.new({
    id = id.from(_N, "ListDatasetExportJobsOutput"),
    type = "structure",
    members = {
        datasetExportJobs = schema.new({
            id = id.from(_N, "ListDatasetExportJobsOutput", "datasetExportJobs"),
            type = "list",
            name = "datasetExportJobs",
            target_id = prelude.Document.id,
            list_member = M.DatasetExportJobSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDatasetExportJobsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDatasetGroupsInput = schema.new({
    id = id.from(_N, "ListDatasetGroupsInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListDatasetGroupsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListDatasetGroupsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DatasetGroupSummary = schema.new({
    id = id.from(_N, "DatasetGroupSummary"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DatasetGroupSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        datasetGroupArn = schema.new({
            id = id.from(_N, "DatasetGroupSummary", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "DatasetGroupSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "DatasetGroupSummary", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "DatasetGroupSummary", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "DatasetGroupSummary", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        domain = schema.new({
            id = id.from(_N, "DatasetGroupSummary", "domain"),
            type = "string",
            name = "domain",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDatasetGroupsOutput = schema.new({
    id = id.from(_N, "ListDatasetGroupsOutput"),
    type = "structure",
    members = {
        datasetGroups = schema.new({
            id = id.from(_N, "ListDatasetGroupsOutput", "datasetGroups"),
            type = "list",
            name = "datasetGroups",
            target_id = prelude.Document.id,
            list_member = M.DatasetGroupSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDatasetGroupsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDatasetImportJobsInput = schema.new({
    id = id.from(_N, "ListDatasetImportJobsInput"),
    type = "structure",
    members = {
        datasetArn = schema.new({
            id = id.from(_N, "ListDatasetImportJobsInput", "datasetArn"),
            type = "string",
            name = "datasetArn",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDatasetImportJobsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListDatasetImportJobsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DatasetImportJobSummary = schema.new({
    id = id.from(_N, "DatasetImportJobSummary"),
    type = "structure",
    members = {
        datasetImportJobArn = schema.new({
            id = id.from(_N, "DatasetImportJobSummary", "datasetImportJobArn"),
            type = "string",
            name = "datasetImportJobArn",
            target_id = prelude.String.id,
        }),
        jobName = schema.new({
            id = id.from(_N, "DatasetImportJobSummary", "jobName"),
            type = "string",
            name = "jobName",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "DatasetImportJobSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "DatasetImportJobSummary", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "DatasetImportJobSummary", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "DatasetImportJobSummary", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        importMode = schema.new({
            id = id.from(_N, "DatasetImportJobSummary", "importMode"),
            type = "string",
            name = "importMode",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDatasetImportJobsOutput = schema.new({
    id = id.from(_N, "ListDatasetImportJobsOutput"),
    type = "structure",
    members = {
        datasetImportJobs = schema.new({
            id = id.from(_N, "ListDatasetImportJobsOutput", "datasetImportJobs"),
            type = "list",
            name = "datasetImportJobs",
            target_id = prelude.Document.id,
            list_member = M.DatasetImportJobSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDatasetImportJobsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDatasetsInput = schema.new({
    id = id.from(_N, "ListDatasetsInput"),
    type = "structure",
    members = {
        datasetGroupArn = schema.new({
            id = id.from(_N, "ListDatasetsInput", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDatasetsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListDatasetsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DatasetSummary = schema.new({
    id = id.from(_N, "DatasetSummary"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DatasetSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        datasetArn = schema.new({
            id = id.from(_N, "DatasetSummary", "datasetArn"),
            type = "string",
            name = "datasetArn",
            target_id = prelude.String.id,
        }),
        datasetType = schema.new({
            id = id.from(_N, "DatasetSummary", "datasetType"),
            type = "string",
            name = "datasetType",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "DatasetSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "DatasetSummary", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "DatasetSummary", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListDatasetsOutput = schema.new({
    id = id.from(_N, "ListDatasetsOutput"),
    type = "structure",
    members = {
        datasets = schema.new({
            id = id.from(_N, "ListDatasetsOutput", "datasets"),
            type = "list",
            name = "datasets",
            target_id = prelude.Document.id,
            list_member = M.DatasetSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDatasetsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListEventTrackersInput = schema.new({
    id = id.from(_N, "ListEventTrackersInput"),
    type = "structure",
    members = {
        datasetGroupArn = schema.new({
            id = id.from(_N, "ListEventTrackersInput", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListEventTrackersInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListEventTrackersInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.EventTrackerSummary = schema.new({
    id = id.from(_N, "EventTrackerSummary"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "EventTrackerSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        eventTrackerArn = schema.new({
            id = id.from(_N, "EventTrackerSummary", "eventTrackerArn"),
            type = "string",
            name = "eventTrackerArn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "EventTrackerSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "EventTrackerSummary", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "EventTrackerSummary", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListEventTrackersOutput = schema.new({
    id = id.from(_N, "ListEventTrackersOutput"),
    type = "structure",
    members = {
        eventTrackers = schema.new({
            id = id.from(_N, "ListEventTrackersOutput", "eventTrackers"),
            type = "list",
            name = "eventTrackers",
            target_id = prelude.Document.id,
            list_member = M.EventTrackerSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListEventTrackersOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFiltersInput = schema.new({
    id = id.from(_N, "ListFiltersInput"),
    type = "structure",
    members = {
        datasetGroupArn = schema.new({
            id = id.from(_N, "ListFiltersInput", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListFiltersInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListFiltersInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.FilterSummary = schema.new({
    id = id.from(_N, "FilterSummary"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "FilterSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        filterArn = schema.new({
            id = id.from(_N, "FilterSummary", "filterArn"),
            type = "string",
            name = "filterArn",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "FilterSummary", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "FilterSummary", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        datasetGroupArn = schema.new({
            id = id.from(_N, "FilterSummary", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "FilterSummary", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "FilterSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFiltersOutput = schema.new({
    id = id.from(_N, "ListFiltersOutput"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "ListFiltersOutput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = M.FilterSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListFiltersOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMetricAttributionMetricsInput = schema.new({
    id = id.from(_N, "ListMetricAttributionMetricsInput"),
    type = "structure",
    members = {
        metricAttributionArn = schema.new({
            id = id.from(_N, "ListMetricAttributionMetricsInput", "metricAttributionArn"),
            type = "string",
            name = "metricAttributionArn",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListMetricAttributionMetricsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListMetricAttributionMetricsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListMetricAttributionMetricsOutput = schema.new({
    id = id.from(_N, "ListMetricAttributionMetricsOutput"),
    type = "structure",
    members = {
        metrics = schema.new({
            id = id.from(_N, "ListMetricAttributionMetricsOutput", "metrics"),
            type = "list",
            name = "metrics",
            target_id = prelude.Document.id,
            list_member = M.MetricAttribute,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListMetricAttributionMetricsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMetricAttributionsInput = schema.new({
    id = id.from(_N, "ListMetricAttributionsInput"),
    type = "structure",
    members = {
        datasetGroupArn = schema.new({
            id = id.from(_N, "ListMetricAttributionsInput", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListMetricAttributionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListMetricAttributionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.MetricAttributionSummary = schema.new({
    id = id.from(_N, "MetricAttributionSummary"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "MetricAttributionSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        metricAttributionArn = schema.new({
            id = id.from(_N, "MetricAttributionSummary", "metricAttributionArn"),
            type = "string",
            name = "metricAttributionArn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "MetricAttributionSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "MetricAttributionSummary", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "MetricAttributionSummary", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "MetricAttributionSummary", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMetricAttributionsOutput = schema.new({
    id = id.from(_N, "ListMetricAttributionsOutput"),
    type = "structure",
    members = {
        metricAttributions = schema.new({
            id = id.from(_N, "ListMetricAttributionsOutput", "metricAttributions"),
            type = "list",
            name = "metricAttributions",
            target_id = prelude.Document.id,
            list_member = M.MetricAttributionSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListMetricAttributionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRecipesInput = schema.new({
    id = id.from(_N, "ListRecipesInput"),
    type = "structure",
    members = {
        recipeProvider = schema.new({
            id = id.from(_N, "ListRecipesInput", "recipeProvider"),
            type = "string",
            name = "recipeProvider",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRecipesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListRecipesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        domain = schema.new({
            id = id.from(_N, "ListRecipesInput", "domain"),
            type = "string",
            name = "domain",
            target_id = prelude.String.id,
        }),
    },
})

M.RecipeSummary = schema.new({
    id = id.from(_N, "RecipeSummary"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "RecipeSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        recipeArn = schema.new({
            id = id.from(_N, "RecipeSummary", "recipeArn"),
            type = "string",
            name = "recipeArn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "RecipeSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "RecipeSummary", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "RecipeSummary", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        domain = schema.new({
            id = id.from(_N, "RecipeSummary", "domain"),
            type = "string",
            name = "domain",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRecipesOutput = schema.new({
    id = id.from(_N, "ListRecipesOutput"),
    type = "structure",
    members = {
        recipes = schema.new({
            id = id.from(_N, "ListRecipesOutput", "recipes"),
            type = "list",
            name = "recipes",
            target_id = prelude.Document.id,
            list_member = M.RecipeSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRecipesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRecommendersInput = schema.new({
    id = id.from(_N, "ListRecommendersInput"),
    type = "structure",
    members = {
        datasetGroupArn = schema.new({
            id = id.from(_N, "ListRecommendersInput", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRecommendersInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListRecommendersInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.RecommenderSummary = schema.new({
    id = id.from(_N, "RecommenderSummary"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "RecommenderSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        recommenderArn = schema.new({
            id = id.from(_N, "RecommenderSummary", "recommenderArn"),
            type = "string",
            name = "recommenderArn",
            target_id = prelude.String.id,
        }),
        datasetGroupArn = schema.new({
            id = id.from(_N, "RecommenderSummary", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
        }),
        recipeArn = schema.new({
            id = id.from(_N, "RecommenderSummary", "recipeArn"),
            type = "string",
            name = "recipeArn",
            target_id = prelude.String.id,
        }),
        recommenderConfig = schema.new({
            id = id.from(_N, "RecommenderSummary", "recommenderConfig"),
            type = "structure",
            name = "recommenderConfig",
            target_id = id.from(_N, "RecommenderConfig"),
            target = M.RecommenderConfig,
        }),
        status = schema.new({
            id = id.from(_N, "RecommenderSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "RecommenderSummary", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "RecommenderSummary", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListRecommendersOutput = schema.new({
    id = id.from(_N, "ListRecommendersOutput"),
    type = "structure",
    members = {
        recommenders = schema.new({
            id = id.from(_N, "ListRecommendersOutput", "recommenders"),
            type = "list",
            name = "recommenders",
            target_id = prelude.Document.id,
            list_member = M.RecommenderSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRecommendersOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSchemasInput = schema.new({
    id = id.from(_N, "ListSchemasInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListSchemasInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListSchemasInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DatasetSchemaSummary = schema.new({
    id = id.from(_N, "DatasetSchemaSummary"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DatasetSchemaSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        schemaArn = schema.new({
            id = id.from(_N, "DatasetSchemaSummary", "schemaArn"),
            type = "string",
            name = "schemaArn",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "DatasetSchemaSummary", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "DatasetSchemaSummary", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        domain = schema.new({
            id = id.from(_N, "DatasetSchemaSummary", "domain"),
            type = "string",
            name = "domain",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSchemasOutput = schema.new({
    id = id.from(_N, "ListSchemasOutput"),
    type = "structure",
    members = {
        schemas = schema.new({
            id = id.from(_N, "ListSchemasOutput", "schemas"),
            type = "list",
            name = "schemas",
            target_id = prelude.Document.id,
            list_member = M.DatasetSchemaSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSchemasOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSolutionsInput = schema.new({
    id = id.from(_N, "ListSolutionsInput"),
    type = "structure",
    members = {
        datasetGroupArn = schema.new({
            id = id.from(_N, "ListSolutionsInput", "datasetGroupArn"),
            type = "string",
            name = "datasetGroupArn",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSolutionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListSolutionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.SolutionSummary = schema.new({
    id = id.from(_N, "SolutionSummary"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "SolutionSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        solutionArn = schema.new({
            id = id.from(_N, "SolutionSummary", "solutionArn"),
            type = "string",
            name = "solutionArn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "SolutionSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "SolutionSummary", "creationDateTime"),
            type = "timestamp",
            name = "creationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "SolutionSummary", "lastUpdatedDateTime"),
            type = "timestamp",
            name = "lastUpdatedDateTime",
            target_id = prelude.Timestamp.id,
        }),
        recipeArn = schema.new({
            id = id.from(_N, "SolutionSummary", "recipeArn"),
            type = "string",
            name = "recipeArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSolutionsOutput = schema.new({
    id = id.from(_N, "ListSolutionsOutput"),
    type = "structure",
    members = {
        solutions = schema.new({
            id = id.from(_N, "ListSolutionsOutput", "solutions"),
            type = "list",
            name = "solutions",
            target_id = prelude.Document.id,
            list_member = M.SolutionSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSolutionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSolutionVersionsInput = schema.new({
    id = id.from(_N, "ListSolutionVersionsInput"),
    type = "structure",
    members = {
        solutionArn = schema.new({
            id = id.from(_N, "ListSolutionVersionsInput", "solutionArn"),
            type = "string",
            name = "solutionArn",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSolutionVersionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListSolutionVersionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListSolutionVersionsOutput = schema.new({
    id = id.from(_N, "ListSolutionVersionsOutput"),
    type = "structure",
    members = {
        solutionVersions = schema.new({
            id = id.from(_N, "ListSolutionVersionsOutput", "solutionVersions"),
            type = "list",
            name = "solutionVersions",
            target_id = prelude.Document.id,
            list_member = M.SolutionVersionSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSolutionVersionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceOutput"),
    type = "structure",
    members = {
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.StartRecommenderInput = schema.new({
    id = id.from(_N, "StartRecommenderInput"),
    type = "structure",
    members = {
        recommenderArn = schema.new({
            id = id.from(_N, "StartRecommenderInput", "recommenderArn"),
            type = "string",
            name = "recommenderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartRecommenderOutput = schema.new({
    id = id.from(_N, "StartRecommenderOutput"),
    type = "structure",
    members = {
        recommenderArn = schema.new({
            id = id.from(_N, "StartRecommenderOutput", "recommenderArn"),
            type = "string",
            name = "recommenderArn",
            target_id = prelude.String.id,
        }),
    },
})

M.StopRecommenderInput = schema.new({
    id = id.from(_N, "StopRecommenderInput"),
    type = "structure",
    members = {
        recommenderArn = schema.new({
            id = id.from(_N, "StopRecommenderInput", "recommenderArn"),
            type = "string",
            name = "recommenderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopRecommenderOutput = schema.new({
    id = id.from(_N, "StopRecommenderOutput"),
    type = "structure",
    members = {
        recommenderArn = schema.new({
            id = id.from(_N, "StopRecommenderOutput", "recommenderArn"),
            type = "string",
            name = "recommenderArn",
            target_id = prelude.String.id,
        }),
    },
})

M.StopSolutionVersionCreationInput = schema.new({
    id = id.from(_N, "StopSolutionVersionCreationInput"),
    type = "structure",
    members = {
        solutionVersionArn = schema.new({
            id = id.from(_N, "StopSolutionVersionCreationInput", "solutionVersionArn"),
            type = "string",
            name = "solutionVersionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopSolutionVersionCreationOutput = schema.new({
    id = id.from(_N, "StopSolutionVersionCreationOutput"),
    type = "structure",
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.TooManyTagKeysException = schema.new({
    id = id.from(_N, "TooManyTagKeysException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TooManyTagKeysException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "tagKeys"),
            type = "list",
            name = "tagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

M.UpdateCampaignInput = schema.new({
    id = id.from(_N, "UpdateCampaignInput"),
    type = "structure",
    members = {
        campaignArn = schema.new({
            id = id.from(_N, "UpdateCampaignInput", "campaignArn"),
            type = "string",
            name = "campaignArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        solutionVersionArn = schema.new({
            id = id.from(_N, "UpdateCampaignInput", "solutionVersionArn"),
            type = "string",
            name = "solutionVersionArn",
            target_id = prelude.String.id,
        }),
        minProvisionedTPS = schema.new({
            id = id.from(_N, "UpdateCampaignInput", "minProvisionedTPS"),
            type = "integer",
            name = "minProvisionedTPS",
            target_id = prelude.Integer.id,
        }),
        campaignConfig = schema.new({
            id = id.from(_N, "UpdateCampaignInput", "campaignConfig"),
            type = "structure",
            name = "campaignConfig",
            target_id = id.from(_N, "CampaignConfig"),
            target = M.CampaignConfig,
        }),
    },
})

M.UpdateCampaignOutput = schema.new({
    id = id.from(_N, "UpdateCampaignOutput"),
    type = "structure",
    members = {
        campaignArn = schema.new({
            id = id.from(_N, "UpdateCampaignOutput", "campaignArn"),
            type = "string",
            name = "campaignArn",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDatasetInput = schema.new({
    id = id.from(_N, "UpdateDatasetInput"),
    type = "structure",
    members = {
        datasetArn = schema.new({
            id = id.from(_N, "UpdateDatasetInput", "datasetArn"),
            type = "string",
            name = "datasetArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        schemaArn = schema.new({
            id = id.from(_N, "UpdateDatasetInput", "schemaArn"),
            type = "string",
            name = "schemaArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateDatasetOutput = schema.new({
    id = id.from(_N, "UpdateDatasetOutput"),
    type = "structure",
    members = {
        datasetArn = schema.new({
            id = id.from(_N, "UpdateDatasetOutput", "datasetArn"),
            type = "string",
            name = "datasetArn",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateMetricAttributionInput = schema.new({
    id = id.from(_N, "UpdateMetricAttributionInput"),
    type = "structure",
    members = {
        addMetrics = schema.new({
            id = id.from(_N, "UpdateMetricAttributionInput", "addMetrics"),
            type = "list",
            name = "addMetrics",
            target_id = prelude.Document.id,
            list_member = M.MetricAttribute,
        }),
        removeMetrics = schema.new({
            id = id.from(_N, "UpdateMetricAttributionInput", "removeMetrics"),
            type = "list",
            name = "removeMetrics",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        metricsOutputConfig = schema.new({
            id = id.from(_N, "UpdateMetricAttributionInput", "metricsOutputConfig"),
            type = "structure",
            name = "metricsOutputConfig",
            target_id = id.from(_N, "MetricAttributionOutput"),
            target = M.MetricAttributionOutput,
        }),
        metricAttributionArn = schema.new({
            id = id.from(_N, "UpdateMetricAttributionInput", "metricAttributionArn"),
            type = "string",
            name = "metricAttributionArn",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateMetricAttributionOutput = schema.new({
    id = id.from(_N, "UpdateMetricAttributionOutput"),
    type = "structure",
    members = {
        metricAttributionArn = schema.new({
            id = id.from(_N, "UpdateMetricAttributionOutput", "metricAttributionArn"),
            type = "string",
            name = "metricAttributionArn",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateRecommenderInput = schema.new({
    id = id.from(_N, "UpdateRecommenderInput"),
    type = "structure",
    members = {
        recommenderArn = schema.new({
            id = id.from(_N, "UpdateRecommenderInput", "recommenderArn"),
            type = "string",
            name = "recommenderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recommenderConfig = schema.new({
            id = id.from(_N, "UpdateRecommenderInput", "recommenderConfig"),
            type = "structure",
            name = "recommenderConfig",
            target_id = id.from(_N, "RecommenderConfig"),
            target = M.RecommenderConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRecommenderOutput = schema.new({
    id = id.from(_N, "UpdateRecommenderOutput"),
    type = "structure",
    members = {
        recommenderArn = schema.new({
            id = id.from(_N, "UpdateRecommenderOutput", "recommenderArn"),
            type = "string",
            name = "recommenderArn",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSolutionInput = schema.new({
    id = id.from(_N, "UpdateSolutionInput"),
    type = "structure",
    members = {
        solutionArn = schema.new({
            id = id.from(_N, "UpdateSolutionInput", "solutionArn"),
            type = "string",
            name = "solutionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        performAutoTraining = schema.new({
            id = id.from(_N, "UpdateSolutionInput", "performAutoTraining"),
            type = "boolean",
            name = "performAutoTraining",
            target_id = prelude.Boolean.id,
        }),
        performIncrementalUpdate = schema.new({
            id = id.from(_N, "UpdateSolutionInput", "performIncrementalUpdate"),
            type = "boolean",
            name = "performIncrementalUpdate",
            target_id = prelude.Boolean.id,
        }),
        solutionUpdateConfig = schema.new({
            id = id.from(_N, "UpdateSolutionInput", "solutionUpdateConfig"),
            type = "structure",
            name = "solutionUpdateConfig",
            target_id = id.from(_N, "SolutionUpdateConfig"),
            target = M.SolutionUpdateConfig,
        }),
    },
})

M.UpdateSolutionOutput = schema.new({
    id = id.from(_N, "UpdateSolutionOutput"),
    type = "structure",
    members = {
        solutionArn = schema.new({
            id = id.from(_N, "UpdateSolutionOutput", "solutionArn"),
            type = "string",
            name = "solutionArn",
            target_id = prelude.String.id,
        }),
    },
})

return M
