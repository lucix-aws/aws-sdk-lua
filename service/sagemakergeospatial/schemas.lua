local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.sagemakergeospatial"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AccessDeniedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MultiPolygonGeometryInput = schema.new({
    id = id.from(_N, "MultiPolygonGeometryInput"),
    type = "structure",
    members = {
        Coordinates = schema.new({
            id = id.from(_N, "MultiPolygonGeometryInput", "Coordinates"),
            type = "list",
            name = "Coordinates",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PolygonGeometryInput = schema.new({
    id = id.from(_N, "PolygonGeometryInput"),
    type = "structure",
    members = {
        Coordinates = schema.new({
            id = id.from(_N, "PolygonGeometryInput", "Coordinates"),
            type = "list",
            name = "Coordinates",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AreaOfInterestGeometry = schema.new({
    id = id.from(_N, "AreaOfInterestGeometry"),
    type = "union",
    members = {
        PolygonGeometry = schema.new({
            id = id.from(_N, "AreaOfInterestGeometry", "PolygonGeometry"),
            type = "structure",
            name = "PolygonGeometry",
            target_id = id.from(_N, "PolygonGeometryInput"),
            target = M.PolygonGeometryInput,
        }),
        MultiPolygonGeometry = schema.new({
            id = id.from(_N, "AreaOfInterestGeometry", "MultiPolygonGeometry"),
            type = "structure",
            name = "MultiPolygonGeometry",
            target_id = id.from(_N, "MultiPolygonGeometryInput"),
            target = M.MultiPolygonGeometryInput,
        }),
    },
})

M.AreaOfInterest = schema.new({
    id = id.from(_N, "AreaOfInterest"),
    type = "union",
    members = {
        AreaOfInterestGeometry = schema.new({
            id = id.from(_N, "AreaOfInterest", "AreaOfInterestGeometry"),
            type = "union",
            name = "AreaOfInterestGeometry",
            target_id = id.from(_N, "AreaOfInterestGeometry"),
            target = M.AreaOfInterestGeometry,
        }),
    },
})

M.AssetValue = schema.new({
    id = id.from(_N, "AssetValue"),
    type = "structure",
    members = {
        Href = schema.new({
            id = id.from(_N, "AssetValue", "Href"),
            type = "string",
            name = "Href",
            target_id = prelude.String.id,
        }),
    },
})

M.Operation = schema.new({
    id = id.from(_N, "Operation"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Operation", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Equation = schema.new({
            id = id.from(_N, "Operation", "Equation"),
            type = "string",
            name = "Equation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OutputType = schema.new({
            id = id.from(_N, "Operation", "OutputType"),
            type = "string",
            name = "OutputType",
            target_id = prelude.String.id,
        }),
    },
})

M.CustomIndicesInput = schema.new({
    id = id.from(_N, "CustomIndicesInput"),
    type = "structure",
    members = {
        Operations = schema.new({
            id = id.from(_N, "CustomIndicesInput", "Operations"),
            type = "list",
            name = "Operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.BandMathConfigInput = schema.new({
    id = id.from(_N, "BandMathConfigInput"),
    type = "structure",
    members = {
        PredefinedIndices = schema.new({
            id = id.from(_N, "BandMathConfigInput", "PredefinedIndices"),
            type = "list",
            name = "PredefinedIndices",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CustomIndices = schema.new({
            id = id.from(_N, "BandMathConfigInput", "CustomIndices"),
            type = "structure",
            name = "CustomIndices",
            target_id = id.from(_N, "CustomIndicesInput"),
            target = M.CustomIndicesInput,
        }),
    },
})

M.CloudMaskingConfigInput = schema.new({
    id = id.from(_N, "CloudMaskingConfigInput"),
    type = "structure",
})

M.CloudRemovalConfigInput = schema.new({
    id = id.from(_N, "CloudRemovalConfigInput"),
    type = "structure",
    members = {
        AlgorithmName = schema.new({
            id = id.from(_N, "CloudRemovalConfigInput", "AlgorithmName"),
            type = "string",
            name = "AlgorithmName",
            target_id = prelude.String.id,
        }),
        InterpolationValue = schema.new({
            id = id.from(_N, "CloudRemovalConfigInput", "InterpolationValue"),
            type = "string",
            name = "InterpolationValue",
            target_id = prelude.String.id,
        }),
        TargetBands = schema.new({
            id = id.from(_N, "CloudRemovalConfigInput", "TargetBands"),
            type = "list",
            name = "TargetBands",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ConflictException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
    },
})

M.Filter = schema.new({
    id = id.from(_N, "Filter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Filter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "Filter", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Minimum = schema.new({
            id = id.from(_N, "Filter", "Minimum"),
            type = "float",
            name = "Minimum",
            target_id = prelude.Float.id,
        }),
        Maximum = schema.new({
            id = id.from(_N, "Filter", "Maximum"),
            type = "float",
            name = "Maximum",
            target_id = prelude.Float.id,
        }),
    },
})

M.RasterDataCollectionMetadata = schema.new({
    id = id.from(_N, "RasterDataCollectionMetadata"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "RasterDataCollectionMetadata", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "RasterDataCollectionMetadata", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "RasterDataCollectionMetadata", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "RasterDataCollectionMetadata", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DescriptionPageUrl = schema.new({
            id = id.from(_N, "RasterDataCollectionMetadata", "DescriptionPageUrl"),
            type = "string",
            name = "DescriptionPageUrl",
            target_id = prelude.String.id,
        }),
        SupportedFilters = schema.new({
            id = id.from(_N, "RasterDataCollectionMetadata", "SupportedFilters"),
            type = "list",
            name = "SupportedFilters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "RasterDataCollectionMetadata", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.DeleteEarthObservationJobInput = schema.new({
    id = id.from(_N, "DeleteEarthObservationJobInput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DeleteEarthObservationJobInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteEarthObservationJobOutput = schema.new({
    id = id.from(_N, "DeleteEarthObservationJobOutput"),
    type = "structure",
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "InternalServerException", "ResourceId"),
            type = "string",
            name = "ResourceId",
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ThrottlingException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ThrottlingException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ValidationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ValidationException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteVectorEnrichmentJobInput = schema.new({
    id = id.from(_N, "DeleteVectorEnrichmentJobInput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DeleteVectorEnrichmentJobInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteVectorEnrichmentJobOutput = schema.new({
    id = id.from(_N, "DeleteVectorEnrichmentJobOutput"),
    type = "structure",
})

M.ExportS3DataInput = schema.new({
    id = id.from(_N, "ExportS3DataInput"),
    type = "structure",
    members = {
        S3Uri = schema.new({
            id = id.from(_N, "ExportS3DataInput", "S3Uri"),
            type = "string",
            name = "S3Uri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "ExportS3DataInput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.OutputConfigInput = schema.new({
    id = id.from(_N, "OutputConfigInput"),
    type = "structure",
    members = {
        S3Data = schema.new({
            id = id.from(_N, "OutputConfigInput", "S3Data"),
            type = "structure",
            name = "S3Data",
            target_id = id.from(_N, "ExportS3DataInput"),
            target = M.ExportS3DataInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExportEarthObservationJobInput = schema.new({
    id = id.from(_N, "ExportEarthObservationJobInput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "ExportEarthObservationJobInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "ExportEarthObservationJobInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        ExecutionRoleArn = schema.new({
            id = id.from(_N, "ExportEarthObservationJobInput", "ExecutionRoleArn"),
            type = "string",
            name = "ExecutionRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OutputConfig = schema.new({
            id = id.from(_N, "ExportEarthObservationJobInput", "OutputConfig"),
            type = "structure",
            name = "OutputConfig",
            target_id = id.from(_N, "OutputConfigInput"),
            target = M.OutputConfigInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExportSourceImages = schema.new({
            id = id.from(_N, "ExportEarthObservationJobInput", "ExportSourceImages"),
            type = "boolean",
            name = "ExportSourceImages",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ExportEarthObservationJobOutput = schema.new({
    id = id.from(_N, "ExportEarthObservationJobOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "ExportEarthObservationJobOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "ExportEarthObservationJobOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        ExportStatus = schema.new({
            id = id.from(_N, "ExportEarthObservationJobOutput", "ExportStatus"),
            type = "string",
            name = "ExportStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExecutionRoleArn = schema.new({
            id = id.from(_N, "ExportEarthObservationJobOutput", "ExecutionRoleArn"),
            type = "string",
            name = "ExecutionRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OutputConfig = schema.new({
            id = id.from(_N, "ExportEarthObservationJobOutput", "OutputConfig"),
            type = "structure",
            name = "OutputConfig",
            target_id = id.from(_N, "OutputConfigInput"),
            target = M.OutputConfigInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExportSourceImages = schema.new({
            id = id.from(_N, "ExportEarthObservationJobOutput", "ExportSourceImages"),
            type = "boolean",
            name = "ExportSourceImages",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetEarthObservationJobInput = schema.new({
    id = id.from(_N, "GetEarthObservationJobInput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetEarthObservationJobInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.EarthObservationJobErrorDetails = schema.new({
    id = id.from(_N, "EarthObservationJobErrorDetails"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "EarthObservationJobErrorDetails", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "EarthObservationJobErrorDetails", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ExportErrorDetailsOutput = schema.new({
    id = id.from(_N, "ExportErrorDetailsOutput"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "ExportErrorDetailsOutput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "ExportErrorDetailsOutput", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ExportErrorDetails = schema.new({
    id = id.from(_N, "ExportErrorDetails"),
    type = "structure",
    members = {
        ExportResults = schema.new({
            id = id.from(_N, "ExportErrorDetails", "ExportResults"),
            type = "structure",
            name = "ExportResults",
            target_id = id.from(_N, "ExportErrorDetailsOutput"),
            target = M.ExportErrorDetailsOutput,
        }),
        ExportSourceImages = schema.new({
            id = id.from(_N, "ExportErrorDetails", "ExportSourceImages"),
            type = "structure",
            name = "ExportSourceImages",
            target_id = id.from(_N, "ExportErrorDetailsOutput"),
            target = M.ExportErrorDetailsOutput,
        }),
    },
})

M.EoCloudCoverInput = schema.new({
    id = id.from(_N, "EoCloudCoverInput"),
    type = "structure",
    members = {
        LowerBound = schema.new({
            id = id.from(_N, "EoCloudCoverInput", "LowerBound"),
            type = "float",
            name = "LowerBound",
            target_id = prelude.Float.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UpperBound = schema.new({
            id = id.from(_N, "EoCloudCoverInput", "UpperBound"),
            type = "float",
            name = "UpperBound",
            target_id = prelude.Float.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LandsatCloudCoverLandInput = schema.new({
    id = id.from(_N, "LandsatCloudCoverLandInput"),
    type = "structure",
    members = {
        LowerBound = schema.new({
            id = id.from(_N, "LandsatCloudCoverLandInput", "LowerBound"),
            type = "float",
            name = "LowerBound",
            target_id = prelude.Float.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UpperBound = schema.new({
            id = id.from(_N, "LandsatCloudCoverLandInput", "UpperBound"),
            type = "float",
            name = "UpperBound",
            target_id = prelude.Float.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PlatformInput = schema.new({
    id = id.from(_N, "PlatformInput"),
    type = "structure",
    members = {
        Value = schema.new({
            id = id.from(_N, "PlatformInput", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ComparisonOperator = schema.new({
            id = id.from(_N, "PlatformInput", "ComparisonOperator"),
            type = "string",
            name = "ComparisonOperator",
            target_id = prelude.String.id,
        }),
    },
})

M.ViewOffNadirInput = schema.new({
    id = id.from(_N, "ViewOffNadirInput"),
    type = "structure",
    members = {
        LowerBound = schema.new({
            id = id.from(_N, "ViewOffNadirInput", "LowerBound"),
            type = "float",
            name = "LowerBound",
            target_id = prelude.Float.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UpperBound = schema.new({
            id = id.from(_N, "ViewOffNadirInput", "UpperBound"),
            type = "float",
            name = "UpperBound",
            target_id = prelude.Float.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ViewSunAzimuthInput = schema.new({
    id = id.from(_N, "ViewSunAzimuthInput"),
    type = "structure",
    members = {
        LowerBound = schema.new({
            id = id.from(_N, "ViewSunAzimuthInput", "LowerBound"),
            type = "float",
            name = "LowerBound",
            target_id = prelude.Float.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UpperBound = schema.new({
            id = id.from(_N, "ViewSunAzimuthInput", "UpperBound"),
            type = "float",
            name = "UpperBound",
            target_id = prelude.Float.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ViewSunElevationInput = schema.new({
    id = id.from(_N, "ViewSunElevationInput"),
    type = "structure",
    members = {
        LowerBound = schema.new({
            id = id.from(_N, "ViewSunElevationInput", "LowerBound"),
            type = "float",
            name = "LowerBound",
            target_id = prelude.Float.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UpperBound = schema.new({
            id = id.from(_N, "ViewSunElevationInput", "UpperBound"),
            type = "float",
            name = "UpperBound",
            target_id = prelude.Float.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Property = schema.new({
    id = id.from(_N, "Property"),
    type = "union",
    members = {
        EoCloudCover = schema.new({
            id = id.from(_N, "Property", "EoCloudCover"),
            type = "structure",
            name = "EoCloudCover",
            target_id = id.from(_N, "EoCloudCoverInput"),
            target = M.EoCloudCoverInput,
        }),
        ViewOffNadir = schema.new({
            id = id.from(_N, "Property", "ViewOffNadir"),
            type = "structure",
            name = "ViewOffNadir",
            target_id = id.from(_N, "ViewOffNadirInput"),
            target = M.ViewOffNadirInput,
        }),
        ViewSunAzimuth = schema.new({
            id = id.from(_N, "Property", "ViewSunAzimuth"),
            type = "structure",
            name = "ViewSunAzimuth",
            target_id = id.from(_N, "ViewSunAzimuthInput"),
            target = M.ViewSunAzimuthInput,
        }),
        ViewSunElevation = schema.new({
            id = id.from(_N, "Property", "ViewSunElevation"),
            type = "structure",
            name = "ViewSunElevation",
            target_id = id.from(_N, "ViewSunElevationInput"),
            target = M.ViewSunElevationInput,
        }),
        Platform = schema.new({
            id = id.from(_N, "Property", "Platform"),
            type = "structure",
            name = "Platform",
            target_id = id.from(_N, "PlatformInput"),
            target = M.PlatformInput,
        }),
        LandsatCloudCoverLand = schema.new({
            id = id.from(_N, "Property", "LandsatCloudCoverLand"),
            type = "structure",
            name = "LandsatCloudCoverLand",
            target_id = id.from(_N, "LandsatCloudCoverLandInput"),
            target = M.LandsatCloudCoverLandInput,
        }),
    },
})

M.PropertyFilter = schema.new({
    id = id.from(_N, "PropertyFilter"),
    type = "structure",
    members = {
        Property = schema.new({
            id = id.from(_N, "PropertyFilter", "Property"),
            type = "union",
            name = "Property",
            target_id = id.from(_N, "Property"),
            target = M.Property,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PropertyFilters = schema.new({
    id = id.from(_N, "PropertyFilters"),
    type = "structure",
    members = {
        Properties = schema.new({
            id = id.from(_N, "PropertyFilters", "Properties"),
            type = "list",
            name = "Properties",
            target_id = prelude.Document.id,
            list_member = M.PropertyFilter,
        }),
        LogicalOperator = schema.new({
            id = id.from(_N, "PropertyFilters", "LogicalOperator"),
            type = "string",
            name = "LogicalOperator",
            target_id = prelude.String.id,
        }),
    },
})

M.TimeRangeFilterOutput = schema.new({
    id = id.from(_N, "TimeRangeFilterOutput"),
    type = "structure",
    members = {
        StartTime = schema.new({
            id = id.from(_N, "TimeRangeFilterOutput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "TimeRangeFilterOutput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.RasterDataCollectionQueryOutput = schema.new({
    id = id.from(_N, "RasterDataCollectionQueryOutput"),
    type = "structure",
    members = {
        RasterDataCollectionArn = schema.new({
            id = id.from(_N, "RasterDataCollectionQueryOutput", "RasterDataCollectionArn"),
            type = "string",
            name = "RasterDataCollectionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RasterDataCollectionName = schema.new({
            id = id.from(_N, "RasterDataCollectionQueryOutput", "RasterDataCollectionName"),
            type = "string",
            name = "RasterDataCollectionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TimeRangeFilter = schema.new({
            id = id.from(_N, "RasterDataCollectionQueryOutput", "TimeRangeFilter"),
            type = "structure",
            name = "TimeRangeFilter",
            target_id = id.from(_N, "TimeRangeFilterOutput"),
            target = M.TimeRangeFilterOutput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AreaOfInterest = schema.new({
            id = id.from(_N, "RasterDataCollectionQueryOutput", "AreaOfInterest"),
            type = "union",
            name = "AreaOfInterest",
            target_id = id.from(_N, "AreaOfInterest"),
            target = M.AreaOfInterest,
        }),
        PropertyFilters = schema.new({
            id = id.from(_N, "RasterDataCollectionQueryOutput", "PropertyFilters"),
            type = "structure",
            name = "PropertyFilters",
            target_id = id.from(_N, "PropertyFilters"),
            target = M.PropertyFilters,
        }),
    },
})

M.InputConfigOutput = schema.new({
    id = id.from(_N, "InputConfigOutput"),
    type = "structure",
    members = {
        PreviousEarthObservationJobArn = schema.new({
            id = id.from(_N, "InputConfigOutput", "PreviousEarthObservationJobArn"),
            type = "string",
            name = "PreviousEarthObservationJobArn",
            target_id = prelude.String.id,
        }),
        RasterDataCollectionQuery = schema.new({
            id = id.from(_N, "InputConfigOutput", "RasterDataCollectionQuery"),
            type = "structure",
            name = "RasterDataCollectionQuery",
            target_id = id.from(_N, "RasterDataCollectionQueryOutput"),
            target = M.RasterDataCollectionQueryOutput,
        }),
    },
})

M.GeoMosaicConfigInput = schema.new({
    id = id.from(_N, "GeoMosaicConfigInput"),
    type = "structure",
    members = {
        AlgorithmName = schema.new({
            id = id.from(_N, "GeoMosaicConfigInput", "AlgorithmName"),
            type = "string",
            name = "AlgorithmName",
            target_id = prelude.String.id,
        }),
        TargetBands = schema.new({
            id = id.from(_N, "GeoMosaicConfigInput", "TargetBands"),
            type = "list",
            name = "TargetBands",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.LandCoverSegmentationConfigInput = schema.new({
    id = id.from(_N, "LandCoverSegmentationConfigInput"),
    type = "structure",
})

M.UserDefined = schema.new({
    id = id.from(_N, "UserDefined"),
    type = "structure",
    members = {
        Value = schema.new({
            id = id.from(_N, "UserDefined", "Value"),
            type = "float",
            name = "Value",
            target_id = prelude.Float.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Unit = schema.new({
            id = id.from(_N, "UserDefined", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.OutputResolutionResamplingInput = schema.new({
    id = id.from(_N, "OutputResolutionResamplingInput"),
    type = "structure",
    members = {
        UserDefined = schema.new({
            id = id.from(_N, "OutputResolutionResamplingInput", "UserDefined"),
            type = "structure",
            name = "UserDefined",
            target_id = id.from(_N, "UserDefined"),
            target = M.UserDefined,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResamplingConfigInput = schema.new({
    id = id.from(_N, "ResamplingConfigInput"),
    type = "structure",
    members = {
        OutputResolution = schema.new({
            id = id.from(_N, "ResamplingConfigInput", "OutputResolution"),
            type = "structure",
            name = "OutputResolution",
            target_id = id.from(_N, "OutputResolutionResamplingInput"),
            target = M.OutputResolutionResamplingInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AlgorithmName = schema.new({
            id = id.from(_N, "ResamplingConfigInput", "AlgorithmName"),
            type = "string",
            name = "AlgorithmName",
            target_id = prelude.String.id,
        }),
        TargetBands = schema.new({
            id = id.from(_N, "ResamplingConfigInput", "TargetBands"),
            type = "list",
            name = "TargetBands",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.OutputResolutionStackInput = schema.new({
    id = id.from(_N, "OutputResolutionStackInput"),
    type = "structure",
    members = {
        Predefined = schema.new({
            id = id.from(_N, "OutputResolutionStackInput", "Predefined"),
            type = "string",
            name = "Predefined",
            target_id = prelude.String.id,
        }),
        UserDefined = schema.new({
            id = id.from(_N, "OutputResolutionStackInput", "UserDefined"),
            type = "structure",
            name = "UserDefined",
            target_id = id.from(_N, "UserDefined"),
            target = M.UserDefined,
        }),
    },
})

M.StackConfigInput = schema.new({
    id = id.from(_N, "StackConfigInput"),
    type = "structure",
    members = {
        OutputResolution = schema.new({
            id = id.from(_N, "StackConfigInput", "OutputResolution"),
            type = "structure",
            name = "OutputResolution",
            target_id = id.from(_N, "OutputResolutionStackInput"),
            target = M.OutputResolutionStackInput,
        }),
        TargetBands = schema.new({
            id = id.from(_N, "StackConfigInput", "TargetBands"),
            type = "list",
            name = "TargetBands",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.TemporalStatisticsConfigInput = schema.new({
    id = id.from(_N, "TemporalStatisticsConfigInput"),
    type = "structure",
    members = {
        GroupBy = schema.new({
            id = id.from(_N, "TemporalStatisticsConfigInput", "GroupBy"),
            type = "string",
            name = "GroupBy",
            target_id = prelude.String.id,
        }),
        Statistics = schema.new({
            id = id.from(_N, "TemporalStatisticsConfigInput", "Statistics"),
            type = "list",
            name = "Statistics",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetBands = schema.new({
            id = id.from(_N, "TemporalStatisticsConfigInput", "TargetBands"),
            type = "list",
            name = "TargetBands",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ZonalStatisticsConfigInput = schema.new({
    id = id.from(_N, "ZonalStatisticsConfigInput"),
    type = "structure",
    members = {
        ZoneS3Path = schema.new({
            id = id.from(_N, "ZonalStatisticsConfigInput", "ZoneS3Path"),
            type = "string",
            name = "ZoneS3Path",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Statistics = schema.new({
            id = id.from(_N, "ZonalStatisticsConfigInput", "Statistics"),
            type = "list",
            name = "Statistics",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetBands = schema.new({
            id = id.from(_N, "ZonalStatisticsConfigInput", "TargetBands"),
            type = "list",
            name = "TargetBands",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ZoneS3PathKmsKeyId = schema.new({
            id = id.from(_N, "ZonalStatisticsConfigInput", "ZoneS3PathKmsKeyId"),
            type = "string",
            name = "ZoneS3PathKmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.JobConfigInput = schema.new({
    id = id.from(_N, "JobConfigInput"),
    type = "union",
    members = {
        BandMathConfig = schema.new({
            id = id.from(_N, "JobConfigInput", "BandMathConfig"),
            type = "structure",
            name = "BandMathConfig",
            target_id = id.from(_N, "BandMathConfigInput"),
            target = M.BandMathConfigInput,
        }),
        ResamplingConfig = schema.new({
            id = id.from(_N, "JobConfigInput", "ResamplingConfig"),
            type = "structure",
            name = "ResamplingConfig",
            target_id = id.from(_N, "ResamplingConfigInput"),
            target = M.ResamplingConfigInput,
        }),
        TemporalStatisticsConfig = schema.new({
            id = id.from(_N, "JobConfigInput", "TemporalStatisticsConfig"),
            type = "structure",
            name = "TemporalStatisticsConfig",
            target_id = id.from(_N, "TemporalStatisticsConfigInput"),
            target = M.TemporalStatisticsConfigInput,
        }),
        CloudRemovalConfig = schema.new({
            id = id.from(_N, "JobConfigInput", "CloudRemovalConfig"),
            type = "structure",
            name = "CloudRemovalConfig",
            target_id = id.from(_N, "CloudRemovalConfigInput"),
            target = M.CloudRemovalConfigInput,
        }),
        ZonalStatisticsConfig = schema.new({
            id = id.from(_N, "JobConfigInput", "ZonalStatisticsConfig"),
            type = "structure",
            name = "ZonalStatisticsConfig",
            target_id = id.from(_N, "ZonalStatisticsConfigInput"),
            target = M.ZonalStatisticsConfigInput,
        }),
        GeoMosaicConfig = schema.new({
            id = id.from(_N, "JobConfigInput", "GeoMosaicConfig"),
            type = "structure",
            name = "GeoMosaicConfig",
            target_id = id.from(_N, "GeoMosaicConfigInput"),
            target = M.GeoMosaicConfigInput,
        }),
        StackConfig = schema.new({
            id = id.from(_N, "JobConfigInput", "StackConfig"),
            type = "structure",
            name = "StackConfig",
            target_id = id.from(_N, "StackConfigInput"),
            target = M.StackConfigInput,
        }),
        CloudMaskingConfig = schema.new({
            id = id.from(_N, "JobConfigInput", "CloudMaskingConfig"),
            type = "structure",
            name = "CloudMaskingConfig",
            target_id = id.from(_N, "CloudMaskingConfigInput"),
            target = M.CloudMaskingConfigInput,
        }),
        LandCoverSegmentationConfig = schema.new({
            id = id.from(_N, "JobConfigInput", "LandCoverSegmentationConfig"),
            type = "structure",
            name = "LandCoverSegmentationConfig",
            target_id = id.from(_N, "LandCoverSegmentationConfigInput"),
            target = M.LandCoverSegmentationConfigInput,
        }),
    },
})

M.OutputBand = schema.new({
    id = id.from(_N, "OutputBand"),
    type = "structure",
    members = {
        BandName = schema.new({
            id = id.from(_N, "OutputBand", "BandName"),
            type = "string",
            name = "BandName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OutputDataType = schema.new({
            id = id.from(_N, "OutputBand", "OutputDataType"),
            type = "string",
            name = "OutputDataType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetEarthObservationJobOutput = schema.new({
    id = id.from(_N, "GetEarthObservationJobOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetEarthObservationJobOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "GetEarthObservationJobOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "GetEarthObservationJobOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        DurationInSeconds = schema.new({
            id = id.from(_N, "GetEarthObservationJobOutput", "DurationInSeconds"),
            type = "integer",
            name = "DurationInSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "GetEarthObservationJobOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "GetEarthObservationJobOutput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        InputConfig = schema.new({
            id = id.from(_N, "GetEarthObservationJobOutput", "InputConfig"),
            type = "structure",
            name = "InputConfig",
            target_id = id.from(_N, "InputConfigOutput"),
            target = M.InputConfigOutput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        JobConfig = schema.new({
            id = id.from(_N, "GetEarthObservationJobOutput", "JobConfig"),
            type = "union",
            name = "JobConfig",
            target_id = id.from(_N, "JobConfigInput"),
            target = M.JobConfigInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OutputBands = schema.new({
            id = id.from(_N, "GetEarthObservationJobOutput", "OutputBands"),
            type = "list",
            name = "OutputBands",
            target_id = prelude.Document.id,
            list_member = M.OutputBand,
        }),
        ExecutionRoleArn = schema.new({
            id = id.from(_N, "GetEarthObservationJobOutput", "ExecutionRoleArn"),
            type = "string",
            name = "ExecutionRoleArn",
            target_id = prelude.String.id,
        }),
        ErrorDetails = schema.new({
            id = id.from(_N, "GetEarthObservationJobOutput", "ErrorDetails"),
            type = "structure",
            name = "ErrorDetails",
            target_id = id.from(_N, "EarthObservationJobErrorDetails"),
            target = M.EarthObservationJobErrorDetails,
        }),
        ExportStatus = schema.new({
            id = id.from(_N, "GetEarthObservationJobOutput", "ExportStatus"),
            type = "string",
            name = "ExportStatus",
            target_id = prelude.String.id,
        }),
        ExportErrorDetails = schema.new({
            id = id.from(_N, "GetEarthObservationJobOutput", "ExportErrorDetails"),
            type = "structure",
            name = "ExportErrorDetails",
            target_id = id.from(_N, "ExportErrorDetails"),
            target = M.ExportErrorDetails,
        }),
        Tags = schema.new({
            id = id.from(_N, "GetEarthObservationJobOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetTileInput = schema.new({
    id = id.from(_N, "GetTileInput"),
    type = "structure",
    members = {
        x = schema.new({
            id = id.from(_N, "GetTileInput", "x"),
            type = "integer",
            name = "x",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        y = schema.new({
            id = id.from(_N, "GetTileInput", "y"),
            type = "integer",
            name = "y",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        z = schema.new({
            id = id.from(_N, "GetTileInput", "z"),
            type = "integer",
            name = "z",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ImageAssets = schema.new({
            id = id.from(_N, "GetTileInput", "ImageAssets"),
            type = "list",
            name = "ImageAssets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "ImageAssets" },
            },
        }),
        Target = schema.new({
            id = id.from(_N, "GetTileInput", "Target"),
            type = "string",
            name = "Target",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "Target" },
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "GetTileInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "Arn" },
            },
        }),
        ImageMask = schema.new({
            id = id.from(_N, "GetTileInput", "ImageMask"),
            type = "boolean",
            name = "ImageMask",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "ImageMask" },
            },
        }),
        OutputFormat = schema.new({
            id = id.from(_N, "GetTileInput", "OutputFormat"),
            type = "string",
            name = "OutputFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "OutputFormat" },
            },
        }),
        TimeRangeFilter = schema.new({
            id = id.from(_N, "GetTileInput", "TimeRangeFilter"),
            type = "string",
            name = "TimeRangeFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "TimeRangeFilter" },
            },
        }),
        PropertyFilters = schema.new({
            id = id.from(_N, "GetTileInput", "PropertyFilters"),
            type = "string",
            name = "PropertyFilters",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "PropertyFilters" },
            },
        }),
        OutputDataType = schema.new({
            id = id.from(_N, "GetTileInput", "OutputDataType"),
            type = "string",
            name = "OutputDataType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "OutputDataType" },
            },
        }),
        ExecutionRoleArn = schema.new({
            id = id.from(_N, "GetTileInput", "ExecutionRoleArn"),
            type = "string",
            name = "ExecutionRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "ExecutionRoleArn" },
            },
        }),
    },
})

M.GetTileOutput = schema.new({
    id = id.from(_N, "GetTileOutput"),
    type = "structure",
    members = {
        BinaryFile = schema.new({
            id = id.from(_N, "GetTileOutput", "BinaryFile"),
            type = "blob",
            name = "BinaryFile",
            target_id = prelude.Blob.id,
            traits = {
                [traits.DEFAULT] = { value = "" },
                [traits.HTTP_PAYLOAD] = {},
                [traits.MEDIA_TYPE] = { value = "application/x-binary" },
            },
            direct_traits = {
                [traits.DEFAULT] = { value = "" },
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListEarthObservationJobsInput = schema.new({
    id = id.from(_N, "ListEarthObservationJobsInput"),
    type = "structure",
    members = {
        StatusEquals = schema.new({
            id = id.from(_N, "ListEarthObservationJobsInput", "StatusEquals"),
            type = "string",
            name = "StatusEquals",
            target_id = prelude.String.id,
        }),
        SortOrder = schema.new({
            id = id.from(_N, "ListEarthObservationJobsInput", "SortOrder"),
            type = "string",
            name = "SortOrder",
            target_id = prelude.String.id,
        }),
        SortBy = schema.new({
            id = id.from(_N, "ListEarthObservationJobsInput", "SortBy"),
            type = "string",
            name = "SortBy",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListEarthObservationJobsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListEarthObservationJobsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListEarthObservationJobOutputConfig = schema.new({
    id = id.from(_N, "ListEarthObservationJobOutputConfig"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "ListEarthObservationJobOutputConfig", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "ListEarthObservationJobOutputConfig", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "ListEarthObservationJobOutputConfig", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        DurationInSeconds = schema.new({
            id = id.from(_N, "ListEarthObservationJobOutputConfig", "DurationInSeconds"),
            type = "integer",
            name = "DurationInSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "ListEarthObservationJobOutputConfig", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OperationType = schema.new({
            id = id.from(_N, "ListEarthObservationJobOutputConfig", "OperationType"),
            type = "string",
            name = "OperationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "ListEarthObservationJobOutputConfig", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListEarthObservationJobsOutput = schema.new({
    id = id.from(_N, "ListEarthObservationJobsOutput"),
    type = "structure",
    members = {
        EarthObservationJobSummaries = schema.new({
            id = id.from(_N, "ListEarthObservationJobsOutput", "EarthObservationJobSummaries"),
            type = "list",
            name = "EarthObservationJobSummaries",
            target_id = prelude.Document.id,
            list_member = M.ListEarthObservationJobOutputConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListEarthObservationJobsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.TimeRangeFilterInput = schema.new({
    id = id.from(_N, "TimeRangeFilterInput"),
    type = "structure",
    members = {
        StartTime = schema.new({
            id = id.from(_N, "TimeRangeFilterInput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "TimeRangeFilterInput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RasterDataCollectionQueryInput = schema.new({
    id = id.from(_N, "RasterDataCollectionQueryInput"),
    type = "structure",
    members = {
        RasterDataCollectionArn = schema.new({
            id = id.from(_N, "RasterDataCollectionQueryInput", "RasterDataCollectionArn"),
            type = "string",
            name = "RasterDataCollectionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TimeRangeFilter = schema.new({
            id = id.from(_N, "RasterDataCollectionQueryInput", "TimeRangeFilter"),
            type = "structure",
            name = "TimeRangeFilter",
            target_id = id.from(_N, "TimeRangeFilterInput"),
            target = M.TimeRangeFilterInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AreaOfInterest = schema.new({
            id = id.from(_N, "RasterDataCollectionQueryInput", "AreaOfInterest"),
            type = "union",
            name = "AreaOfInterest",
            target_id = id.from(_N, "AreaOfInterest"),
            target = M.AreaOfInterest,
        }),
        PropertyFilters = schema.new({
            id = id.from(_N, "RasterDataCollectionQueryInput", "PropertyFilters"),
            type = "structure",
            name = "PropertyFilters",
            target_id = id.from(_N, "PropertyFilters"),
            target = M.PropertyFilters,
        }),
    },
})

M.InputConfigInput = schema.new({
    id = id.from(_N, "InputConfigInput"),
    type = "structure",
    members = {
        PreviousEarthObservationJobArn = schema.new({
            id = id.from(_N, "InputConfigInput", "PreviousEarthObservationJobArn"),
            type = "string",
            name = "PreviousEarthObservationJobArn",
            target_id = prelude.String.id,
        }),
        RasterDataCollectionQuery = schema.new({
            id = id.from(_N, "InputConfigInput", "RasterDataCollectionQuery"),
            type = "structure",
            name = "RasterDataCollectionQuery",
            target_id = id.from(_N, "RasterDataCollectionQueryInput"),
            target = M.RasterDataCollectionQueryInput,
        }),
    },
})

M.StartEarthObservationJobInput = schema.new({
    id = id.from(_N, "StartEarthObservationJobInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "StartEarthObservationJobInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "StartEarthObservationJobInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "StartEarthObservationJobInput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        InputConfig = schema.new({
            id = id.from(_N, "StartEarthObservationJobInput", "InputConfig"),
            type = "structure",
            name = "InputConfig",
            target_id = id.from(_N, "InputConfigInput"),
            target = M.InputConfigInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        JobConfig = schema.new({
            id = id.from(_N, "StartEarthObservationJobInput", "JobConfig"),
            type = "union",
            name = "JobConfig",
            target_id = id.from(_N, "JobConfigInput"),
            target = M.JobConfigInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExecutionRoleArn = schema.new({
            id = id.from(_N, "StartEarthObservationJobInput", "ExecutionRoleArn"),
            type = "string",
            name = "ExecutionRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "StartEarthObservationJobInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StartEarthObservationJobOutput = schema.new({
    id = id.from(_N, "StartEarthObservationJobOutput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "StartEarthObservationJobOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "StartEarthObservationJobOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "StartEarthObservationJobOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        DurationInSeconds = schema.new({
            id = id.from(_N, "StartEarthObservationJobOutput", "DurationInSeconds"),
            type = "integer",
            name = "DurationInSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "StartEarthObservationJobOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "StartEarthObservationJobOutput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        InputConfig = schema.new({
            id = id.from(_N, "StartEarthObservationJobOutput", "InputConfig"),
            type = "structure",
            name = "InputConfig",
            target_id = id.from(_N, "InputConfigOutput"),
            target = M.InputConfigOutput,
        }),
        JobConfig = schema.new({
            id = id.from(_N, "StartEarthObservationJobOutput", "JobConfig"),
            type = "union",
            name = "JobConfig",
            target_id = id.from(_N, "JobConfigInput"),
            target = M.JobConfigInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExecutionRoleArn = schema.new({
            id = id.from(_N, "StartEarthObservationJobOutput", "ExecutionRoleArn"),
            type = "string",
            name = "ExecutionRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "StartEarthObservationJobOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StopEarthObservationJobInput = schema.new({
    id = id.from(_N, "StopEarthObservationJobInput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "StopEarthObservationJobInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopEarthObservationJobOutput = schema.new({
    id = id.from(_N, "StopEarthObservationJobOutput"),
    type = "structure",
})

M.VectorEnrichmentJobS3Data = schema.new({
    id = id.from(_N, "VectorEnrichmentJobS3Data"),
    type = "structure",
    members = {
        S3Uri = schema.new({
            id = id.from(_N, "VectorEnrichmentJobS3Data", "S3Uri"),
            type = "string",
            name = "S3Uri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "VectorEnrichmentJobS3Data", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.ExportVectorEnrichmentJobOutputConfig = schema.new({
    id = id.from(_N, "ExportVectorEnrichmentJobOutputConfig"),
    type = "structure",
    members = {
        S3Data = schema.new({
            id = id.from(_N, "ExportVectorEnrichmentJobOutputConfig", "S3Data"),
            type = "structure",
            name = "S3Data",
            target_id = id.from(_N, "VectorEnrichmentJobS3Data"),
            target = M.VectorEnrichmentJobS3Data,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExportVectorEnrichmentJobInput = schema.new({
    id = id.from(_N, "ExportVectorEnrichmentJobInput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "ExportVectorEnrichmentJobInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "ExportVectorEnrichmentJobInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        ExecutionRoleArn = schema.new({
            id = id.from(_N, "ExportVectorEnrichmentJobInput", "ExecutionRoleArn"),
            type = "string",
            name = "ExecutionRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OutputConfig = schema.new({
            id = id.from(_N, "ExportVectorEnrichmentJobInput", "OutputConfig"),
            type = "structure",
            name = "OutputConfig",
            target_id = id.from(_N, "ExportVectorEnrichmentJobOutputConfig"),
            target = M.ExportVectorEnrichmentJobOutputConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExportVectorEnrichmentJobOutput = schema.new({
    id = id.from(_N, "ExportVectorEnrichmentJobOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "ExportVectorEnrichmentJobOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "ExportVectorEnrichmentJobOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        ExecutionRoleArn = schema.new({
            id = id.from(_N, "ExportVectorEnrichmentJobOutput", "ExecutionRoleArn"),
            type = "string",
            name = "ExecutionRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExportStatus = schema.new({
            id = id.from(_N, "ExportVectorEnrichmentJobOutput", "ExportStatus"),
            type = "string",
            name = "ExportStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OutputConfig = schema.new({
            id = id.from(_N, "ExportVectorEnrichmentJobOutput", "OutputConfig"),
            type = "structure",
            name = "OutputConfig",
            target_id = id.from(_N, "ExportVectorEnrichmentJobOutputConfig"),
            target = M.ExportVectorEnrichmentJobOutputConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Geometry = schema.new({
    id = id.from(_N, "Geometry"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "Geometry", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Coordinates = schema.new({
            id = id.from(_N, "Geometry", "Coordinates"),
            type = "list",
            name = "Coordinates",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRasterDataCollectionInput = schema.new({
    id = id.from(_N, "GetRasterDataCollectionInput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetRasterDataCollectionInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetRasterDataCollectionOutput = schema.new({
    id = id.from(_N, "GetRasterDataCollectionOutput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "GetRasterDataCollectionOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "GetRasterDataCollectionOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "GetRasterDataCollectionOutput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "GetRasterDataCollectionOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DescriptionPageUrl = schema.new({
            id = id.from(_N, "GetRasterDataCollectionOutput", "DescriptionPageUrl"),
            type = "string",
            name = "DescriptionPageUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SupportedFilters = schema.new({
            id = id.from(_N, "GetRasterDataCollectionOutput", "SupportedFilters"),
            type = "list",
            name = "SupportedFilters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ImageSourceBands = schema.new({
            id = id.from(_N, "GetRasterDataCollectionOutput", "ImageSourceBands"),
            type = "list",
            name = "ImageSourceBands",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "GetRasterDataCollectionOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetVectorEnrichmentJobInput = schema.new({
    id = id.from(_N, "GetVectorEnrichmentJobInput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetVectorEnrichmentJobInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.VectorEnrichmentJobErrorDetails = schema.new({
    id = id.from(_N, "VectorEnrichmentJobErrorDetails"),
    type = "structure",
    members = {
        ErrorType = schema.new({
            id = id.from(_N, "VectorEnrichmentJobErrorDetails", "ErrorType"),
            type = "string",
            name = "ErrorType",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "VectorEnrichmentJobErrorDetails", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.VectorEnrichmentJobExportErrorDetails = schema.new({
    id = id.from(_N, "VectorEnrichmentJobExportErrorDetails"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "VectorEnrichmentJobExportErrorDetails", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "VectorEnrichmentJobExportErrorDetails", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.VectorEnrichmentJobDataSourceConfigInput = schema.new({
    id = id.from(_N, "VectorEnrichmentJobDataSourceConfigInput"),
    type = "union",
    members = {
        S3Data = schema.new({
            id = id.from(_N, "VectorEnrichmentJobDataSourceConfigInput", "S3Data"),
            type = "structure",
            name = "S3Data",
            target_id = id.from(_N, "VectorEnrichmentJobS3Data"),
            target = M.VectorEnrichmentJobS3Data,
        }),
    },
})

M.VectorEnrichmentJobInputConfig = schema.new({
    id = id.from(_N, "VectorEnrichmentJobInputConfig"),
    type = "structure",
    members = {
        DocumentType = schema.new({
            id = id.from(_N, "VectorEnrichmentJobInputConfig", "DocumentType"),
            type = "string",
            name = "DocumentType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DataSourceConfig = schema.new({
            id = id.from(_N, "VectorEnrichmentJobInputConfig", "DataSourceConfig"),
            type = "union",
            name = "DataSourceConfig",
            target_id = id.from(_N, "VectorEnrichmentJobDataSourceConfigInput"),
            target = M.VectorEnrichmentJobDataSourceConfigInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MapMatchingConfig = schema.new({
    id = id.from(_N, "MapMatchingConfig"),
    type = "structure",
    members = {
        IdAttributeName = schema.new({
            id = id.from(_N, "MapMatchingConfig", "IdAttributeName"),
            type = "string",
            name = "IdAttributeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        YAttributeName = schema.new({
            id = id.from(_N, "MapMatchingConfig", "YAttributeName"),
            type = "string",
            name = "YAttributeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        XAttributeName = schema.new({
            id = id.from(_N, "MapMatchingConfig", "XAttributeName"),
            type = "string",
            name = "XAttributeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TimestampAttributeName = schema.new({
            id = id.from(_N, "MapMatchingConfig", "TimestampAttributeName"),
            type = "string",
            name = "TimestampAttributeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ReverseGeocodingConfig = schema.new({
    id = id.from(_N, "ReverseGeocodingConfig"),
    type = "structure",
    members = {
        YAttributeName = schema.new({
            id = id.from(_N, "ReverseGeocodingConfig", "YAttributeName"),
            type = "string",
            name = "YAttributeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        XAttributeName = schema.new({
            id = id.from(_N, "ReverseGeocodingConfig", "XAttributeName"),
            type = "string",
            name = "XAttributeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.VectorEnrichmentJobConfig = schema.new({
    id = id.from(_N, "VectorEnrichmentJobConfig"),
    type = "union",
    members = {
        ReverseGeocodingConfig = schema.new({
            id = id.from(_N, "VectorEnrichmentJobConfig", "ReverseGeocodingConfig"),
            type = "structure",
            name = "ReverseGeocodingConfig",
            target_id = id.from(_N, "ReverseGeocodingConfig"),
            target = M.ReverseGeocodingConfig,
        }),
        MapMatchingConfig = schema.new({
            id = id.from(_N, "VectorEnrichmentJobConfig", "MapMatchingConfig"),
            type = "structure",
            name = "MapMatchingConfig",
            target_id = id.from(_N, "MapMatchingConfig"),
            target = M.MapMatchingConfig,
        }),
    },
})

M.GetVectorEnrichmentJobOutput = schema.new({
    id = id.from(_N, "GetVectorEnrichmentJobOutput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "GetVectorEnrichmentJobOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "GetVectorEnrichmentJobOutput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "GetVectorEnrichmentJobOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "GetVectorEnrichmentJobOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        DurationInSeconds = schema.new({
            id = id.from(_N, "GetVectorEnrichmentJobOutput", "DurationInSeconds"),
            type = "integer",
            name = "DurationInSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "GetVectorEnrichmentJobOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "GetVectorEnrichmentJobOutput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        InputConfig = schema.new({
            id = id.from(_N, "GetVectorEnrichmentJobOutput", "InputConfig"),
            type = "structure",
            name = "InputConfig",
            target_id = id.from(_N, "VectorEnrichmentJobInputConfig"),
            target = M.VectorEnrichmentJobInputConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        JobConfig = schema.new({
            id = id.from(_N, "GetVectorEnrichmentJobOutput", "JobConfig"),
            type = "union",
            name = "JobConfig",
            target_id = id.from(_N, "VectorEnrichmentJobConfig"),
            target = M.VectorEnrichmentJobConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExecutionRoleArn = schema.new({
            id = id.from(_N, "GetVectorEnrichmentJobOutput", "ExecutionRoleArn"),
            type = "string",
            name = "ExecutionRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ErrorDetails = schema.new({
            id = id.from(_N, "GetVectorEnrichmentJobOutput", "ErrorDetails"),
            type = "structure",
            name = "ErrorDetails",
            target_id = id.from(_N, "VectorEnrichmentJobErrorDetails"),
            target = M.VectorEnrichmentJobErrorDetails,
        }),
        ExportStatus = schema.new({
            id = id.from(_N, "GetVectorEnrichmentJobOutput", "ExportStatus"),
            type = "string",
            name = "ExportStatus",
            target_id = prelude.String.id,
        }),
        ExportErrorDetails = schema.new({
            id = id.from(_N, "GetVectorEnrichmentJobOutput", "ExportErrorDetails"),
            type = "structure",
            name = "ExportErrorDetails",
            target_id = id.from(_N, "VectorEnrichmentJobExportErrorDetails"),
            target = M.VectorEnrichmentJobExportErrorDetails,
        }),
        Tags = schema.new({
            id = id.from(_N, "GetVectorEnrichmentJobOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.Properties = schema.new({
    id = id.from(_N, "Properties"),
    type = "structure",
    members = {
        EoCloudCover = schema.new({
            id = id.from(_N, "Properties", "EoCloudCover"),
            type = "float",
            name = "EoCloudCover",
            target_id = prelude.Float.id,
        }),
        ViewOffNadir = schema.new({
            id = id.from(_N, "Properties", "ViewOffNadir"),
            type = "float",
            name = "ViewOffNadir",
            target_id = prelude.Float.id,
        }),
        ViewSunAzimuth = schema.new({
            id = id.from(_N, "Properties", "ViewSunAzimuth"),
            type = "float",
            name = "ViewSunAzimuth",
            target_id = prelude.Float.id,
        }),
        ViewSunElevation = schema.new({
            id = id.from(_N, "Properties", "ViewSunElevation"),
            type = "float",
            name = "ViewSunElevation",
            target_id = prelude.Float.id,
        }),
        Platform = schema.new({
            id = id.from(_N, "Properties", "Platform"),
            type = "string",
            name = "Platform",
            target_id = prelude.String.id,
        }),
        LandsatCloudCoverLand = schema.new({
            id = id.from(_N, "Properties", "LandsatCloudCoverLand"),
            type = "float",
            name = "LandsatCloudCoverLand",
            target_id = prelude.Float.id,
        }),
    },
})

M.ItemSource = schema.new({
    id = id.from(_N, "ItemSource"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ItemSource", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Geometry = schema.new({
            id = id.from(_N, "ItemSource", "Geometry"),
            type = "structure",
            name = "Geometry",
            target_id = id.from(_N, "Geometry"),
            target = M.Geometry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Assets = schema.new({
            id = id.from(_N, "ItemSource", "Assets"),
            type = "map",
            name = "Assets",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AssetValue,
        }),
        DateTime = schema.new({
            id = id.from(_N, "ItemSource", "DateTime"),
            type = "timestamp",
            name = "DateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Properties = schema.new({
            id = id.from(_N, "ItemSource", "Properties"),
            type = "structure",
            name = "Properties",
            target_id = id.from(_N, "Properties"),
            target = M.Properties,
        }),
    },
})

M.ListRasterDataCollectionsInput = schema.new({
    id = id.from(_N, "ListRasterDataCollectionsInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListRasterDataCollectionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListRasterDataCollectionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
    },
})

M.ListRasterDataCollectionsOutput = schema.new({
    id = id.from(_N, "ListRasterDataCollectionsOutput"),
    type = "structure",
    members = {
        RasterDataCollectionSummaries = schema.new({
            id = id.from(_N, "ListRasterDataCollectionsOutput", "RasterDataCollectionSummaries"),
            type = "list",
            name = "RasterDataCollectionSummaries",
            target_id = prelude.Document.id,
            list_member = M.RasterDataCollectionMetadata,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRasterDataCollectionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceOutput"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListVectorEnrichmentJobOutputConfig = schema.new({
    id = id.from(_N, "ListVectorEnrichmentJobOutputConfig"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "ListVectorEnrichmentJobOutputConfig", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "ListVectorEnrichmentJobOutputConfig", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "ListVectorEnrichmentJobOutputConfig", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "ListVectorEnrichmentJobOutputConfig", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        DurationInSeconds = schema.new({
            id = id.from(_N, "ListVectorEnrichmentJobOutputConfig", "DurationInSeconds"),
            type = "integer",
            name = "DurationInSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "ListVectorEnrichmentJobOutputConfig", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "ListVectorEnrichmentJobOutputConfig", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListVectorEnrichmentJobsInput = schema.new({
    id = id.from(_N, "ListVectorEnrichmentJobsInput"),
    type = "structure",
    members = {
        StatusEquals = schema.new({
            id = id.from(_N, "ListVectorEnrichmentJobsInput", "StatusEquals"),
            type = "string",
            name = "StatusEquals",
            target_id = prelude.String.id,
        }),
        SortOrder = schema.new({
            id = id.from(_N, "ListVectorEnrichmentJobsInput", "SortOrder"),
            type = "string",
            name = "SortOrder",
            target_id = prelude.String.id,
        }),
        SortBy = schema.new({
            id = id.from(_N, "ListVectorEnrichmentJobsInput", "SortBy"),
            type = "string",
            name = "SortBy",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListVectorEnrichmentJobsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListVectorEnrichmentJobsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListVectorEnrichmentJobsOutput = schema.new({
    id = id.from(_N, "ListVectorEnrichmentJobsOutput"),
    type = "structure",
    members = {
        VectorEnrichmentJobSummaries = schema.new({
            id = id.from(_N, "ListVectorEnrichmentJobsOutput", "VectorEnrichmentJobSummaries"),
            type = "list",
            name = "VectorEnrichmentJobSummaries",
            target_id = prelude.Document.id,
            list_member = M.ListVectorEnrichmentJobOutputConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListVectorEnrichmentJobsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RasterDataCollectionQueryWithBandFilterInput = schema.new({
    id = id.from(_N, "RasterDataCollectionQueryWithBandFilterInput"),
    type = "structure",
    members = {
        TimeRangeFilter = schema.new({
            id = id.from(_N, "RasterDataCollectionQueryWithBandFilterInput", "TimeRangeFilter"),
            type = "structure",
            name = "TimeRangeFilter",
            target_id = id.from(_N, "TimeRangeFilterInput"),
            target = M.TimeRangeFilterInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AreaOfInterest = schema.new({
            id = id.from(_N, "RasterDataCollectionQueryWithBandFilterInput", "AreaOfInterest"),
            type = "union",
            name = "AreaOfInterest",
            target_id = id.from(_N, "AreaOfInterest"),
            target = M.AreaOfInterest,
        }),
        PropertyFilters = schema.new({
            id = id.from(_N, "RasterDataCollectionQueryWithBandFilterInput", "PropertyFilters"),
            type = "structure",
            name = "PropertyFilters",
            target_id = id.from(_N, "PropertyFilters"),
            target = M.PropertyFilters,
        }),
        BandFilter = schema.new({
            id = id.from(_N, "RasterDataCollectionQueryWithBandFilterInput", "BandFilter"),
            type = "list",
            name = "BandFilter",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.SearchRasterDataCollectionInput = schema.new({
    id = id.from(_N, "SearchRasterDataCollectionInput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "SearchRasterDataCollectionInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RasterDataCollectionQuery = schema.new({
            id = id.from(_N, "SearchRasterDataCollectionInput", "RasterDataCollectionQuery"),
            type = "structure",
            name = "RasterDataCollectionQuery",
            target_id = id.from(_N, "RasterDataCollectionQueryWithBandFilterInput"),
            target = M.RasterDataCollectionQueryWithBandFilterInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "SearchRasterDataCollectionInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SearchRasterDataCollectionOutput = schema.new({
    id = id.from(_N, "SearchRasterDataCollectionOutput"),
    type = "structure",
    members = {
        ApproximateResultCount = schema.new({
            id = id.from(_N, "SearchRasterDataCollectionOutput", "ApproximateResultCount"),
            type = "integer",
            name = "ApproximateResultCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "SearchRasterDataCollectionOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Items = schema.new({
            id = id.from(_N, "SearchRasterDataCollectionOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = M.ItemSource,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
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

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
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
                [traits.HTTP_QUERY] = { name = "tagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

M.StartVectorEnrichmentJobInput = schema.new({
    id = id.from(_N, "StartVectorEnrichmentJobInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "StartVectorEnrichmentJobInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "StartVectorEnrichmentJobInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "StartVectorEnrichmentJobInput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        InputConfig = schema.new({
            id = id.from(_N, "StartVectorEnrichmentJobInput", "InputConfig"),
            type = "structure",
            name = "InputConfig",
            target_id = id.from(_N, "VectorEnrichmentJobInputConfig"),
            target = M.VectorEnrichmentJobInputConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        JobConfig = schema.new({
            id = id.from(_N, "StartVectorEnrichmentJobInput", "JobConfig"),
            type = "union",
            name = "JobConfig",
            target_id = id.from(_N, "VectorEnrichmentJobConfig"),
            target = M.VectorEnrichmentJobConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExecutionRoleArn = schema.new({
            id = id.from(_N, "StartVectorEnrichmentJobInput", "ExecutionRoleArn"),
            type = "string",
            name = "ExecutionRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "StartVectorEnrichmentJobInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StartVectorEnrichmentJobOutput = schema.new({
    id = id.from(_N, "StartVectorEnrichmentJobOutput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "StartVectorEnrichmentJobOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Arn = schema.new({
            id = id.from(_N, "StartVectorEnrichmentJobOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "StartVectorEnrichmentJobOutput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CreationTime = schema.new({
            id = id.from(_N, "StartVectorEnrichmentJobOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        DurationInSeconds = schema.new({
            id = id.from(_N, "StartVectorEnrichmentJobOutput", "DurationInSeconds"),
            type = "integer",
            name = "DurationInSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "StartVectorEnrichmentJobOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "StartVectorEnrichmentJobOutput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        InputConfig = schema.new({
            id = id.from(_N, "StartVectorEnrichmentJobOutput", "InputConfig"),
            type = "structure",
            name = "InputConfig",
            target_id = id.from(_N, "VectorEnrichmentJobInputConfig"),
            target = M.VectorEnrichmentJobInputConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        JobConfig = schema.new({
            id = id.from(_N, "StartVectorEnrichmentJobOutput", "JobConfig"),
            type = "union",
            name = "JobConfig",
            target_id = id.from(_N, "VectorEnrichmentJobConfig"),
            target = M.VectorEnrichmentJobConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExecutionRoleArn = schema.new({
            id = id.from(_N, "StartVectorEnrichmentJobOutput", "ExecutionRoleArn"),
            type = "string",
            name = "ExecutionRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "StartVectorEnrichmentJobOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StopVectorEnrichmentJobInput = schema.new({
    id = id.from(_N, "StopVectorEnrichmentJobInput"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "StopVectorEnrichmentJobInput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopVectorEnrichmentJobOutput = schema.new({
    id = id.from(_N, "StopVectorEnrichmentJobOutput"),
    type = "structure",
})

return M
