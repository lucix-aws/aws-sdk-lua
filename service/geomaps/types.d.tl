local record GetGlyphsInput
    FontStack: string
    FontUnicodeRange: string
end

local record GetGlyphsOutput
    Blob: string
    ContentType: string
    CacheControl: string
    ETag: string
end

local record GetSpritesInput
    FileName: string
    Style: string
    ColorScheme: string
    Variant: string
end

local record GetSpritesOutput
    Blob: string
    ContentType: string
    CacheControl: string
    ETag: string
end

local record GetStaticMapInput
    BoundingBox: string
    BoundedPositions: string
    Center: string
    ColorScheme: string
    CompactOverlay: string
    CropLabels: boolean
    GeoJsonOverlay: string
    Height: number
    Key: string
    LabelSize: string
    Language: string
    Padding: number
    PoliticalView: string
    PointsOfInterests: string
    Radius: number
    FileName: string
    ScaleBarUnit: string
    Style: string
    Width: number
    Zoom: number
end

local record GetStaticMapOutput
    Blob: string
    ContentType: string
    CacheControl: string
    ETag: string
    PricingBucket: string
end

local record GetStyleDescriptorInput
    Style: string
    ColorScheme: string
    PoliticalView: string
    Terrain: string
    ContourDensity: string
    Traffic: string
    TravelModes: {string}
    Buildings: string
    Key: string
end

local record GetStyleDescriptorOutput
    Blob: string
    ContentType: string
    CacheControl: string
    ETag: string
end

local record GetTileInput
    AdditionalFeatures: {string}
    Tileset: string
    Z: string
    X: string
    Y: string
    Key: string
end

local record GetTileOutput
    Blob: string
    ContentType: string
    CacheControl: string
    ETag: string
    PricingBucket: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record M
    GetGlyphsInput: GetGlyphsInput
    GetGlyphsOutput: GetGlyphsOutput
    GetSpritesInput: GetSpritesInput
    GetSpritesOutput: GetSpritesOutput
    GetStaticMapInput: GetStaticMapInput
    GetStaticMapOutput: GetStaticMapOutput
    GetStyleDescriptorInput: GetStyleDescriptorInput
    GetStyleDescriptorOutput: GetStyleDescriptorOutput
    GetTileInput: GetTileInput
    GetTileOutput: GetTileOutput
end

return M
