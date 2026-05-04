local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.Buildings = {
    BUILDINGS_3D = "Buildings3D",
}

M.ColorScheme = {
    LIGHT = "Light",
    DARK = "Dark",
}

M.ContourDensity = {
    LOW = "Low",
    MEDIUM = "Medium",
    HIGH = "High",
}

M.GetGlyphsInput = {
    type = "structure",
    id = "GetGlyphsInput",
    members = {
        FontStack = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FontUnicodeRange = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetGlyphsOutput = {
    type = "structure",
    id = "GetGlyphsOutput",
    members = {
        Blob = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        CacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.MapStyle = {
    STANDARD = "Standard",
    MONOCHROME = "Monochrome",
    HYBRID = "Hybrid",
    SATELLITE = "Satellite",
}

M.Variant = {
    DEFAULT = "Default",
}

M.GetSpritesInput = {
    type = "structure",
    id = "GetSpritesInput",
    members = {
        FileName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Style = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ColorScheme = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Variant = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSpritesOutput = {
    type = "structure",
    id = "GetSpritesOutput",
    members = {
        Blob = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        CacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.LabelSize = {
    SMALL = "Small",
    LARGE = "Large",
}

M.MapFeatureMode = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
}

M.ScaleBarUnit = {
    KILOMETERS = "Kilometers",
    KILOMETERS_MILES = "KilometersMiles",
    MILES = "Miles",
    MILES_KILOMETERS = "MilesKilometers",
}

M.StaticMapStyle = {
    SATELLITE = "Satellite",
    STANDARD = "Standard",
}

M.GetStaticMapInput = {
    type = "structure",
    id = "GetStaticMapInput",
    members = {
        BoundingBox = {
            type = "string",
            traits = {
                http_query = "bounding-box",
            },
        },
        BoundedPositions = {
            type = "string",
            traits = {
                http_query = "bounded-positions",
            },
        },
        Center = {
            type = "string",
            traits = {
                http_query = "center",
            },
        },
        ColorScheme = {
            type = "string",
            traits = {
                http_query = "color-scheme",
            },
        },
        CompactOverlay = {
            type = "string",
            traits = {
                http_query = "compact-overlay",
            },
        },
        CropLabels = {
            type = "boolean",
            traits = {
                http_query = "crop-labels",
            },
        },
        GeoJsonOverlay = {
            type = "string",
            traits = {
                http_query = "geojson-overlay",
            },
        },
        Height = {
            type = "integer",
            traits = {
                http_query = "height",
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
        LabelSize = {
            type = "string",
            traits = {
                http_query = "label-size",
            },
        },
        Language = {
            type = "string",
            traits = {
                http_query = "lang",
            },
        },
        Padding = {
            type = "integer",
            traits = {
                http_query = "padding",
            },
        },
        PoliticalView = {
            type = "string",
            traits = {
                http_query = "political-view",
            },
        },
        PointsOfInterests = {
            type = "string",
            traits = {
                http_query = "pois",
            },
        },
        Radius = {
            type = "long",
            traits = {
                default = nil,
                http_query = "radius",
            },
        },
        FileName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ScaleBarUnit = {
            type = "string",
            traits = {
                http_query = "scale-unit",
            },
        },
        Style = {
            type = "string",
            traits = {
                http_query = "style",
            },
        },
        Width = {
            type = "integer",
            traits = {
                http_query = "width",
                required = true,
            },
        },
        Zoom = {
            type = "float",
            traits = {
                default = nil,
                http_query = "zoom",
            },
        },
    },
}

M.GetStaticMapOutput = {
    type = "structure",
    id = "GetStaticMapOutput",
    members = {
        Blob = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        CacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
        PricingBucket = {
            type = "string",
            traits = {
                http_header = "x-amz-geo-pricing-bucket",
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
    members = {
        Name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "UnknownOperation",
    MISSING = "Missing",
    CANNOT_PARSE = "CannotParse",
    FIELD_VALIDATION_FAILED = "FieldValidationFailed",
    OTHER = "Other",
    UNKNOWN_FIELD = "UnknownField",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
        Reason = {
            type = "string",
            traits = {
                json_name = "reason",
                required = true,
            },
        },
        FieldList = {
            type = "list",
            member = M.ValidationExceptionField,
            traits = {
                json_name = "fieldList",
                required = true,
            },
        },
    },
}

M.Terrain = {
    HILLSHADE = "Hillshade",
    TERRAIN_3D = "Terrain3D",
}

M.Traffic = {
    ALL = "All",
    CONGESTION = "Congestion",
}

M.TravelMode = {
    TRANSIT = "Transit",
    TRUCK = "Truck",
}

M.GetStyleDescriptorInput = {
    type = "structure",
    id = "GetStyleDescriptorInput",
    members = {
        Style = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ColorScheme = {
            type = "string",
            traits = {
                http_query = "color-scheme",
            },
        },
        PoliticalView = {
            type = "string",
            traits = {
                http_query = "political-view",
            },
        },
        Terrain = {
            type = "string",
            traits = {
                http_query = "terrain",
            },
        },
        ContourDensity = {
            type = "string",
            traits = {
                http_query = "contour-density",
            },
        },
        Traffic = {
            type = "string",
            traits = {
                http_query = "traffic",
            },
        },
        TravelModes = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "travel-modes",
            },
        },
        Buildings = {
            type = "string",
            traits = {
                http_query = "buildings",
            },
        },
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
    },
}

M.GetStyleDescriptorOutput = {
    type = "structure",
    id = "GetStyleDescriptorOutput",
    members = {
        Blob = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        CacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.TileAdditionalFeature = {
    CONTOUR_LINES = "ContourLines",
    HILLSHADE = "Hillshade",
    LOGISTICS = "Logistics",
    TRANSIT = "Transit",
}

M.GetTileInput = {
    type = "structure",
    id = "GetTileInput",
    members = {
        AdditionalFeatures = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "additional-features",
            },
        },
        Tileset = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Z = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        X = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Y = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
    },
}

M.GetTileOutput = {
    type = "structure",
    id = "GetTileOutput",
    members = {
        Blob = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        CacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
        PricingBucket = {
            type = "string",
            traits = {
                http_header = "x-amz-geo-pricing-bucket",
                required = true,
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

return M
