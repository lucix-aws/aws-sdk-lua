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

M.AccessPoint = {
    type = "structure",
    id = "AccessPoint",
    members = {
        Position = {
            type = "list",
            member = { type = "double" },
        },
    },
}

M.Category = {
    type = "structure",
    id = "Category",
    members = {
        Id = {
            type = "string",
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
        LocalizedName = {
            type = "string",
        },
        Primary = {
            type = "boolean",
        },
    },
}

M.AccessRestriction = {
    type = "structure",
    id = "AccessRestriction",
    members = {
        Restricted = {
            type = "boolean",
        },
        Categories = {
            type = "list",
            member = M.Category,
        },
    },
}

M.Country = {
    type = "structure",
    id = "Country",
    members = {
        Code2 = {
            type = "string",
        },
        Code3 = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.Region = {
    type = "structure",
    id = "Region",
    members = {
        Code = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.SecondaryAddressComponent = {
    type = "structure",
    id = "SecondaryAddressComponent",
    members = {
        Number = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Designator = {
            type = "string",
        },
    },
}

M.TypePlacement = {
    BEFORE_BASE_NAME = "BeforeBaseName",
    AFTER_BASE_NAME = "AfterBaseName",
}

M.StreetComponents = {
    type = "structure",
    id = "StreetComponents",
    members = {
        BaseName = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        TypePlacement = {
            type = "string",
        },
        TypeSeparator = {
            type = "string",
        },
        Prefix = {
            type = "string",
        },
        Suffix = {
            type = "string",
        },
        Direction = {
            type = "string",
        },
        Language = {
            type = "string",
        },
    },
}

M.SubRegion = {
    type = "structure",
    id = "SubRegion",
    members = {
        Code = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.Address = {
    type = "structure",
    id = "Address",
    members = {
        Label = {
            type = "string",
        },
        Country = M.Country,
        Region = M.Region,
        SubRegion = M.SubRegion,
        Locality = {
            type = "string",
        },
        District = {
            type = "string",
        },
        SubDistrict = {
            type = "string",
        },
        PostalCode = {
            type = "string",
        },
        Block = {
            type = "string",
        },
        SubBlock = {
            type = "string",
        },
        Intersection = {
            type = "list",
            member = { type = "string" },
        },
        Street = {
            type = "string",
        },
        StreetComponents = {
            type = "list",
            member = M.StreetComponents,
        },
        AddressNumber = {
            type = "string",
        },
        Building = {
            type = "string",
        },
        SecondaryAddressComponents = {
            type = "list",
            member = M.SecondaryAddressComponent,
        },
    },
}

M.SecondaryAddressComponentMatchScore = {
    type = "structure",
    id = "SecondaryAddressComponentMatchScore",
    members = {
        Number = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.AddressComponentMatchScores = {
    type = "structure",
    id = "AddressComponentMatchScores",
    members = {
        Country = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Region = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        SubRegion = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Locality = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        District = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        SubDistrict = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        PostalCode = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Block = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        SubBlock = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Intersection = {
            type = "list",
            member = { type = "double" },
        },
        AddressNumber = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Building = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        SecondaryAddressComponents = {
            type = "list",
            member = M.SecondaryAddressComponentMatchScore,
        },
    },
}

M.PhonemeTranscription = {
    type = "structure",
    id = "PhonemeTranscription",
    members = {
        Value = {
            type = "string",
        },
        Language = {
            type = "string",
        },
        Preferred = {
            type = "boolean",
        },
    },
}

M.AddressComponentPhonemes = {
    type = "structure",
    id = "AddressComponentPhonemes",
    members = {
        Country = {
            type = "list",
            member = M.PhonemeTranscription,
        },
        Region = {
            type = "list",
            member = M.PhonemeTranscription,
        },
        SubRegion = {
            type = "list",
            member = M.PhonemeTranscription,
        },
        Locality = {
            type = "list",
            member = M.PhonemeTranscription,
        },
        District = {
            type = "list",
            member = M.PhonemeTranscription,
        },
        SubDistrict = {
            type = "list",
            member = M.PhonemeTranscription,
        },
        Block = {
            type = "list",
            member = M.PhonemeTranscription,
        },
        SubBlock = {
            type = "list",
            member = M.PhonemeTranscription,
        },
        Street = {
            type = "list",
            member = M.PhonemeTranscription,
        },
    },
}

M.AutocompleteAdditionalFeature = {
    CORE = "Core",
}

M.FilterCircle = {
    type = "structure",
    id = "FilterCircle",
    members = {
        Center = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        Radius = {
            type = "long",
            traits = {
                default = nil,
                required = true,
            },
        },
    },
}

M.AutocompleteFilterPlaceType = {
    LOCALITY = "Locality",
    POSTAL_CODE = "PostalCode",
}

M.AutocompleteFilter = {
    type = "structure",
    id = "AutocompleteFilter",
    members = {
        BoundingBox = {
            type = "list",
            member = { type = "double" },
        },
        Circle = M.FilterCircle,
        IncludeCountries = {
            type = "list",
            member = { type = "string" },
        },
        IncludePlaceTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AutocompleteIntendedUse = {
    SINGLE_USE = "SingleUse",
}

M.PostalCodeMode = {
    MERGE_ALL_SPANNED_LOCALITIES = "MergeAllSpannedLocalities",
    ENUMERATE_SPANNED_LOCALITIES = "EnumerateSpannedLocalities",
}

M.AutocompleteInput = {
    type = "structure",
    id = "AutocompleteInput",
    members = {
        QueryText = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        BiasPosition = {
            type = "list",
            member = { type = "double" },
        },
        Filter = M.AutocompleteFilter,
        PostalCodeMode = {
            type = "string",
        },
        AdditionalFeatures = {
            type = "list",
            member = { type = "string" },
        },
        Language = {
            type = "string",
        },
        PoliticalView = {
            type = "string",
        },
        IntendedUse = {
            type = "string",
        },
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
    },
}

M.Highlight = {
    type = "structure",
    id = "Highlight",
    members = {
        StartIndex = {
            type = "integer",
        },
        EndIndex = {
            type = "integer",
        },
        Value = {
            type = "string",
        },
    },
}

M.CountryHighlights = {
    type = "structure",
    id = "CountryHighlights",
    members = {
        Code = {
            type = "list",
            member = M.Highlight,
        },
        Name = {
            type = "list",
            member = M.Highlight,
        },
    },
}

M.RegionHighlights = {
    type = "structure",
    id = "RegionHighlights",
    members = {
        Code = {
            type = "list",
            member = M.Highlight,
        },
        Name = {
            type = "list",
            member = M.Highlight,
        },
    },
}

M.SubRegionHighlights = {
    type = "structure",
    id = "SubRegionHighlights",
    members = {
        Code = {
            type = "list",
            member = M.Highlight,
        },
        Name = {
            type = "list",
            member = M.Highlight,
        },
    },
}

M.AutocompleteAddressHighlights = {
    type = "structure",
    id = "AutocompleteAddressHighlights",
    members = {
        Label = {
            type = "list",
            member = M.Highlight,
        },
        Country = M.CountryHighlights,
        Region = M.RegionHighlights,
        SubRegion = M.SubRegionHighlights,
        Locality = {
            type = "list",
            member = M.Highlight,
        },
        District = {
            type = "list",
            member = M.Highlight,
        },
        SubDistrict = {
            type = "list",
            member = M.Highlight,
        },
        Street = {
            type = "list",
            member = M.Highlight,
        },
        Block = {
            type = "list",
            member = M.Highlight,
        },
        SubBlock = {
            type = "list",
            member = M.Highlight,
        },
        Intersection = {
            type = "list",
            member = { type = "list" },
        },
        PostalCode = {
            type = "list",
            member = M.Highlight,
        },
        AddressNumber = {
            type = "list",
            member = M.Highlight,
        },
        Building = {
            type = "list",
            member = M.Highlight,
        },
    },
}

M.AutocompleteHighlights = {
    type = "structure",
    id = "AutocompleteHighlights",
    members = {
        Title = {
            type = "list",
            member = M.Highlight,
        },
        Address = M.AutocompleteAddressHighlights,
    },
}

M.PlaceType = {
    COUNTRY = "Country",
    REGION = "Region",
    SUB_REGION = "SubRegion",
    LOCALITY = "Locality",
    DISTRICT = "District",
    SUB_DISTRICT = "SubDistrict",
    POSTAL_CODE = "PostalCode",
    BLOCK = "Block",
    SUB_BLOCK = "SubBlock",
    INTERSECTION = "Intersection",
    STREET = "Street",
    POINT_OF_INTEREST = "PointOfInterest",
    POINT_ADDRESS = "PointAddress",
    INTERPOLATED_ADDRESS = "InterpolatedAddress",
    SECONDARY_ADDRESS = "SecondaryAddress",
    INFERRED_SECONDARY_ADDRESS = "InferredSecondaryAddress",
}

M.AutocompleteResultItem = {
    type = "structure",
    id = "AutocompleteResultItem",
    members = {
        PlaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PlaceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Address = M.Address,
        Distance = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Language = {
            type = "string",
        },
        PoliticalView = {
            type = "string",
        },
        Highlights = M.AutocompleteHighlights,
    },
}

M.AutocompleteOutput = {
    type = "structure",
    id = "AutocompleteOutput",
    members = {
        PricingBucket = {
            type = "string",
            traits = {
                http_header = "x-amz-geo-pricing-bucket",
                required = true,
            },
        },
        ResultItems = {
            type = "list",
            member = M.AutocompleteResultItem,
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

M.BusinessChain = {
    type = "structure",
    id = "BusinessChain",
    members = {
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
    },
}

M.ComponentMatchScores = {
    type = "structure",
    id = "ComponentMatchScores",
    members = {
        Title = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Address = M.AddressComponentMatchScores,
    },
}

M.ContactDetails = {
    type = "structure",
    id = "ContactDetails",
    members = {
        Label = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        Categories = {
            type = "list",
            member = M.Category,
        },
    },
}

M.Contacts = {
    type = "structure",
    id = "Contacts",
    members = {
        Phones = {
            type = "list",
            member = M.ContactDetails,
        },
        Faxes = {
            type = "list",
            member = M.ContactDetails,
        },
        Websites = {
            type = "list",
            member = M.ContactDetails,
        },
        Emails = {
            type = "list",
            member = M.ContactDetails,
        },
    },
}

M.FoodType = {
    type = "structure",
    id = "FoodType",
    members = {
        LocalizedName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
        },
        Primary = {
            type = "boolean",
        },
    },
}

M.GeocodeAdditionalFeature = {
    TIME_ZONE = "TimeZone",
    ACCESS = "Access",
    SECONDARY_ADDRESSES = "SecondaryAddresses",
    INTERSECTIONS = "Intersections",
}

M.GeocodeFilterPlaceType = {
    LOCALITY = "Locality",
    POSTAL_CODE = "PostalCode",
    INTERSECTION = "Intersection",
    STREET = "Street",
    POINT_ADDRESS = "PointAddress",
    INTERPOLATED_ADDRESS = "InterpolatedAddress",
}

M.GeocodeFilter = {
    type = "structure",
    id = "GeocodeFilter",
    members = {
        IncludeCountries = {
            type = "list",
            member = { type = "string" },
        },
        IncludePlaceTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GeocodeIntendedUse = {
    SINGLE_USE = "SingleUse",
    STORAGE = "Storage",
}

M.GeocodeQueryComponents = {
    type = "structure",
    id = "GeocodeQueryComponents",
    members = {
        Country = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        SubRegion = {
            type = "string",
        },
        Locality = {
            type = "string",
        },
        District = {
            type = "string",
        },
        Street = {
            type = "string",
        },
        AddressNumber = {
            type = "string",
        },
        PostalCode = {
            type = "string",
        },
    },
}

M.GeocodeInput = {
    type = "structure",
    id = "GeocodeInput",
    members = {
        QueryText = {
            type = "string",
        },
        QueryComponents = M.GeocodeQueryComponents,
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        BiasPosition = {
            type = "list",
            member = { type = "double" },
        },
        Filter = M.GeocodeFilter,
        AdditionalFeatures = {
            type = "list",
            member = { type = "string" },
        },
        Language = {
            type = "string",
        },
        PoliticalView = {
            type = "string",
        },
        IntendedUse = {
            type = "string",
        },
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
    },
}

M.Intersection = {
    type = "structure",
    id = "Intersection",
    members = {
        PlaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Address = M.Address,
        Position = {
            type = "list",
            member = { type = "double" },
        },
        Distance = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        RouteDistance = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        MapView = {
            type = "list",
            member = { type = "double" },
        },
        AccessPoints = {
            type = "list",
            member = M.AccessPoint,
        },
    },
}

M.RelatedPlace = {
    type = "structure",
    id = "RelatedPlace",
    members = {
        PlaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PlaceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Address = M.Address,
        Position = {
            type = "list",
            member = { type = "double" },
        },
        AccessPoints = {
            type = "list",
            member = M.AccessPoint,
        },
    },
}

M.MatchScoreDetails = {
    type = "structure",
    id = "MatchScoreDetails",
    members = {
        Overall = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Components = M.ComponentMatchScores,
    },
}

M.ParsedQueryComponent = {
    type = "structure",
    id = "ParsedQueryComponent",
    members = {
        StartIndex = {
            type = "integer",
        },
        EndIndex = {
            type = "integer",
        },
        Value = {
            type = "string",
        },
        QueryComponent = {
            type = "string",
        },
    },
}

M.ParsedQuerySecondaryAddressComponent = {
    type = "structure",
    id = "ParsedQuerySecondaryAddressComponent",
    members = {
        StartIndex = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        EndIndex = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Number = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Designator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GeocodeParsedQueryAddressComponents = {
    type = "structure",
    id = "GeocodeParsedQueryAddressComponents",
    members = {
        Country = {
            type = "list",
            member = M.ParsedQueryComponent,
        },
        Region = {
            type = "list",
            member = M.ParsedQueryComponent,
        },
        SubRegion = {
            type = "list",
            member = M.ParsedQueryComponent,
        },
        Locality = {
            type = "list",
            member = M.ParsedQueryComponent,
        },
        District = {
            type = "list",
            member = M.ParsedQueryComponent,
        },
        SubDistrict = {
            type = "list",
            member = M.ParsedQueryComponent,
        },
        PostalCode = {
            type = "list",
            member = M.ParsedQueryComponent,
        },
        Block = {
            type = "list",
            member = M.ParsedQueryComponent,
        },
        SubBlock = {
            type = "list",
            member = M.ParsedQueryComponent,
        },
        Street = {
            type = "list",
            member = M.ParsedQueryComponent,
        },
        AddressNumber = {
            type = "list",
            member = M.ParsedQueryComponent,
        },
        Building = {
            type = "list",
            member = M.ParsedQueryComponent,
        },
        SecondaryAddressComponents = {
            type = "list",
            member = M.ParsedQuerySecondaryAddressComponent,
        },
    },
}

M.GeocodeParsedQuery = {
    type = "structure",
    id = "GeocodeParsedQuery",
    members = {
        Title = {
            type = "list",
            member = M.ParsedQueryComponent,
        },
        Address = M.GeocodeParsedQueryAddressComponents,
    },
}

M.PostalAuthority = {
    USPS = "Usps",
}

M.PostalCodeType = {
    USPS_ZIP = "UspsZip",
    USPS_ZIP_PLUS_4 = "UspsZipPlus4",
}

M.ZipClassificationCode = {
    MILITARY = "Military",
    POST_OFFICE_BOXES = "PostOfficeBoxes",
    UNIQUE = "Unique",
}

M.UspsZip = {
    type = "structure",
    id = "UspsZip",
    members = {
        ZipClassificationCode = {
            type = "string",
        },
    },
}

M.RecordTypeCode = {
    FIRM = "Firm",
    GENERAL = "General",
    HIGH_RISE = "HighRise",
    POST_OFFICE_BOX = "PostOfficeBox",
    RURAL = "Rural",
    STREET = "Street",
}

M.UspsZipPlus4 = {
    type = "structure",
    id = "UspsZipPlus4",
    members = {
        RecordTypeCode = {
            type = "string",
        },
    },
}

M.PostalCodeDetails = {
    type = "structure",
    id = "PostalCodeDetails",
    members = {
        PostalCode = {
            type = "string",
        },
        PostalAuthority = {
            type = "string",
        },
        PostalCodeType = {
            type = "string",
        },
        UspsZip = M.UspsZip,
        UspsZipPlus4 = M.UspsZipPlus4,
    },
}

M.TimeZone = {
    type = "structure",
    id = "TimeZone",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Offset = {
            type = "string",
        },
        OffsetSeconds = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.GeocodeResultItem = {
    type = "structure",
    id = "GeocodeResultItem",
    members = {
        PlaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PlaceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Address = M.Address,
        AddressNumberCorrected = {
            type = "boolean",
        },
        PostalCodeDetails = {
            type = "list",
            member = M.PostalCodeDetails,
        },
        Position = {
            type = "list",
            member = { type = "double" },
        },
        Distance = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        MapView = {
            type = "list",
            member = { type = "double" },
        },
        Categories = {
            type = "list",
            member = M.Category,
        },
        FoodTypes = {
            type = "list",
            member = M.FoodType,
        },
        AccessPoints = {
            type = "list",
            member = M.AccessPoint,
        },
        TimeZone = M.TimeZone,
        PoliticalView = {
            type = "string",
        },
        MatchScores = M.MatchScoreDetails,
        ParsedQuery = M.GeocodeParsedQuery,
        Intersections = {
            type = "list",
            member = M.Intersection,
        },
        MainAddress = M.RelatedPlace,
        SecondaryAddresses = {
            type = "list",
            member = M.RelatedPlace,
        },
    },
}

M.GeocodeOutput = {
    type = "structure",
    id = "GeocodeOutput",
    members = {
        PricingBucket = {
            type = "string",
            traits = {
                http_header = "x-amz-geo-pricing-bucket",
                required = true,
            },
        },
        ResultItems = {
            type = "list",
            member = M.GeocodeResultItem,
        },
    },
}

M.GetPlaceAdditionalFeature = {
    TIME_ZONE = "TimeZone",
    PHONEMES = "Phonemes",
    ACCESS = "Access",
    CONTACT = "Contact",
    SECONDARY_ADDRESSES = "SecondaryAddresses",
}

M.GetPlaceIntendedUse = {
    SINGLE_USE = "SingleUse",
    STORAGE = "Storage",
}

M.GetPlaceInput = {
    type = "structure",
    id = "GetPlaceInput",
    members = {
        PlaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AdditionalFeatures = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "additional-features",
            },
        },
        Language = {
            type = "string",
            traits = {
                http_query = "language",
            },
        },
        PoliticalView = {
            type = "string",
            traits = {
                http_query = "political-view",
            },
        },
        IntendedUse = {
            type = "string",
            traits = {
                http_query = "intended-use",
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

M.OpeningHoursComponents = {
    type = "structure",
    id = "OpeningHoursComponents",
    members = {
        OpenTime = {
            type = "string",
        },
        OpenDuration = {
            type = "string",
        },
        Recurrence = {
            type = "string",
        },
    },
}

M.OpeningHours = {
    type = "structure",
    id = "OpeningHours",
    members = {
        Display = {
            type = "list",
            member = { type = "string" },
        },
        OpenNow = {
            type = "boolean",
        },
        Components = {
            type = "list",
            member = M.OpeningHoursComponents,
        },
        Categories = {
            type = "list",
            member = M.Category,
        },
    },
}

M.PhonemeDetails = {
    type = "structure",
    id = "PhonemeDetails",
    members = {
        Title = {
            type = "list",
            member = M.PhonemeTranscription,
        },
        Address = M.AddressComponentPhonemes,
    },
}

M.GetPlaceOutput = {
    type = "structure",
    id = "GetPlaceOutput",
    members = {
        PlaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PlaceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PricingBucket = {
            type = "string",
            traits = {
                http_header = "x-amz-geo-pricing-bucket",
                required = true,
            },
        },
        Address = M.Address,
        AddressNumberCorrected = {
            type = "boolean",
        },
        PostalCodeDetails = {
            type = "list",
            member = M.PostalCodeDetails,
        },
        Position = {
            type = "list",
            member = { type = "double" },
        },
        MapView = {
            type = "list",
            member = { type = "double" },
        },
        Categories = {
            type = "list",
            member = M.Category,
        },
        FoodTypes = {
            type = "list",
            member = M.FoodType,
        },
        BusinessChains = {
            type = "list",
            member = M.BusinessChain,
        },
        Contacts = M.Contacts,
        OpeningHours = {
            type = "list",
            member = M.OpeningHours,
        },
        AccessPoints = {
            type = "list",
            member = M.AccessPoint,
        },
        AccessRestrictions = {
            type = "list",
            member = M.AccessRestriction,
        },
        TimeZone = M.TimeZone,
        PoliticalView = {
            type = "string",
        },
        Phonemes = M.PhonemeDetails,
        MainAddress = M.RelatedPlace,
        SecondaryAddresses = {
            type = "list",
            member = M.RelatedPlace,
        },
    },
}

M.ReverseGeocodeAdditionalFeature = {
    TIME_ZONE = "TimeZone",
    ACCESS = "Access",
    INTERSECTIONS = "Intersections",
}

M.ReverseGeocodeFilterPlaceType = {
    LOCALITY = "Locality",
    INTERSECTION = "Intersection",
    STREET = "Street",
    POINT_ADDRESS = "PointAddress",
    INTERPOLATED_ADDRESS = "InterpolatedAddress",
}

M.ReverseGeocodeFilter = {
    type = "structure",
    id = "ReverseGeocodeFilter",
    members = {
        IncludePlaceTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ReverseGeocodeIntendedUse = {
    SINGLE_USE = "SingleUse",
    STORAGE = "Storage",
}

M.ReverseGeocodeInput = {
    type = "structure",
    id = "ReverseGeocodeInput",
    members = {
        QueryPosition = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        QueryRadius = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        Filter = M.ReverseGeocodeFilter,
        AdditionalFeatures = {
            type = "list",
            member = { type = "string" },
        },
        Language = {
            type = "string",
        },
        PoliticalView = {
            type = "string",
        },
        IntendedUse = {
            type = "string",
        },
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
        Heading = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.ReverseGeocodeResultItem = {
    type = "structure",
    id = "ReverseGeocodeResultItem",
    members = {
        PlaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PlaceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Address = M.Address,
        AddressNumberCorrected = {
            type = "boolean",
        },
        PostalCodeDetails = {
            type = "list",
            member = M.PostalCodeDetails,
        },
        Position = {
            type = "list",
            member = { type = "double" },
        },
        Distance = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        MapView = {
            type = "list",
            member = { type = "double" },
        },
        Categories = {
            type = "list",
            member = M.Category,
        },
        FoodTypes = {
            type = "list",
            member = M.FoodType,
        },
        AccessPoints = {
            type = "list",
            member = M.AccessPoint,
        },
        TimeZone = M.TimeZone,
        PoliticalView = {
            type = "string",
        },
        Intersections = {
            type = "list",
            member = M.Intersection,
        },
    },
}

M.ReverseGeocodeOutput = {
    type = "structure",
    id = "ReverseGeocodeOutput",
    members = {
        PricingBucket = {
            type = "string",
            traits = {
                http_header = "x-amz-geo-pricing-bucket",
                required = true,
            },
        },
        ResultItems = {
            type = "list",
            member = M.ReverseGeocodeResultItem,
        },
    },
}

M.SearchNearbyAdditionalFeature = {
    TIME_ZONE = "TimeZone",
    PHONEMES = "Phonemes",
    ACCESS = "Access",
    CONTACT = "Contact",
}

M.SearchNearbyFilter = {
    type = "structure",
    id = "SearchNearbyFilter",
    members = {
        BoundingBox = {
            type = "list",
            member = { type = "double" },
        },
        IncludeCountries = {
            type = "list",
            member = { type = "string" },
        },
        IncludeCategories = {
            type = "list",
            member = { type = "string" },
        },
        ExcludeCategories = {
            type = "list",
            member = { type = "string" },
        },
        IncludeBusinessChains = {
            type = "list",
            member = { type = "string" },
        },
        ExcludeBusinessChains = {
            type = "list",
            member = { type = "string" },
        },
        IncludeFoodTypes = {
            type = "list",
            member = { type = "string" },
        },
        ExcludeFoodTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SearchNearbyIntendedUse = {
    SINGLE_USE = "SingleUse",
    STORAGE = "Storage",
}

M.SearchNearbyInput = {
    type = "structure",
    id = "SearchNearbyInput",
    members = {
        QueryPosition = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
        QueryRadius = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        Filter = M.SearchNearbyFilter,
        AdditionalFeatures = {
            type = "list",
            member = { type = "string" },
        },
        Language = {
            type = "string",
        },
        PoliticalView = {
            type = "string",
        },
        IntendedUse = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
    },
}

M.SearchNearbyResultItem = {
    type = "structure",
    id = "SearchNearbyResultItem",
    members = {
        PlaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PlaceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Address = M.Address,
        AddressNumberCorrected = {
            type = "boolean",
        },
        Position = {
            type = "list",
            member = { type = "double" },
        },
        Distance = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        MapView = {
            type = "list",
            member = { type = "double" },
        },
        Categories = {
            type = "list",
            member = M.Category,
        },
        FoodTypes = {
            type = "list",
            member = M.FoodType,
        },
        BusinessChains = {
            type = "list",
            member = M.BusinessChain,
        },
        Contacts = M.Contacts,
        OpeningHours = {
            type = "list",
            member = M.OpeningHours,
        },
        AccessPoints = {
            type = "list",
            member = M.AccessPoint,
        },
        AccessRestrictions = {
            type = "list",
            member = M.AccessRestriction,
        },
        TimeZone = M.TimeZone,
        PoliticalView = {
            type = "string",
        },
        Phonemes = M.PhonemeDetails,
    },
}

M.SearchNearbyOutput = {
    type = "structure",
    id = "SearchNearbyOutput",
    members = {
        PricingBucket = {
            type = "string",
            traits = {
                http_header = "x-amz-geo-pricing-bucket",
                required = true,
            },
        },
        ResultItems = {
            type = "list",
            member = M.SearchNearbyResultItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SearchTextAdditionalFeature = {
    TIME_ZONE = "TimeZone",
    PHONEMES = "Phonemes",
    ACCESS = "Access",
    CONTACT = "Contact",
}

M.SearchTextFilter = {
    type = "structure",
    id = "SearchTextFilter",
    members = {
        BoundingBox = {
            type = "list",
            member = { type = "double" },
        },
        Circle = M.FilterCircle,
        IncludeCountries = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SearchTextIntendedUse = {
    SINGLE_USE = "SingleUse",
    STORAGE = "Storage",
}

M.SearchTextInput = {
    type = "structure",
    id = "SearchTextInput",
    members = {
        QueryText = {
            type = "string",
        },
        QueryId = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        BiasPosition = {
            type = "list",
            member = { type = "double" },
        },
        Filter = M.SearchTextFilter,
        AdditionalFeatures = {
            type = "list",
            member = { type = "string" },
        },
        Language = {
            type = "string",
        },
        PoliticalView = {
            type = "string",
        },
        IntendedUse = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
    },
}

M.SearchTextResultItem = {
    type = "structure",
    id = "SearchTextResultItem",
    members = {
        PlaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PlaceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Address = M.Address,
        AddressNumberCorrected = {
            type = "boolean",
        },
        Position = {
            type = "list",
            member = { type = "double" },
        },
        Distance = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        MapView = {
            type = "list",
            member = { type = "double" },
        },
        Categories = {
            type = "list",
            member = M.Category,
        },
        FoodTypes = {
            type = "list",
            member = M.FoodType,
        },
        BusinessChains = {
            type = "list",
            member = M.BusinessChain,
        },
        Contacts = M.Contacts,
        OpeningHours = {
            type = "list",
            member = M.OpeningHours,
        },
        AccessPoints = {
            type = "list",
            member = M.AccessPoint,
        },
        AccessRestrictions = {
            type = "list",
            member = M.AccessRestriction,
        },
        TimeZone = M.TimeZone,
        PoliticalView = {
            type = "string",
        },
        Phonemes = M.PhonemeDetails,
    },
}

M.SearchTextOutput = {
    type = "structure",
    id = "SearchTextOutput",
    members = {
        PricingBucket = {
            type = "string",
            traits = {
                http_header = "x-amz-geo-pricing-bucket",
                required = true,
            },
        },
        ResultItems = {
            type = "list",
            member = M.SearchTextResultItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SuggestAdditionalFeature = {
    CORE = "Core",
    TIME_ZONE = "TimeZone",
    PHONEMES = "Phonemes",
    ACCESS = "Access",
}

M.SuggestFilter = {
    type = "structure",
    id = "SuggestFilter",
    members = {
        BoundingBox = {
            type = "list",
            member = { type = "double" },
        },
        Circle = M.FilterCircle,
        IncludeCountries = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SuggestIntendedUse = {
    SINGLE_USE = "SingleUse",
}

M.SuggestInput = {
    type = "structure",
    id = "SuggestInput",
    members = {
        QueryText = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        MaxQueryRefinements = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        BiasPosition = {
            type = "list",
            member = { type = "double" },
        },
        Filter = M.SuggestFilter,
        AdditionalFeatures = {
            type = "list",
            member = { type = "string" },
        },
        Language = {
            type = "string",
        },
        PoliticalView = {
            type = "string",
        },
        IntendedUse = {
            type = "string",
        },
        Key = {
            type = "string",
            traits = {
                http_query = "key",
            },
        },
    },
}

M.QueryRefinement = {
    type = "structure",
    id = "QueryRefinement",
    members = {
        RefinedTerm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginalTerm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartIndex = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        EndIndex = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.SuggestAddressHighlights = {
    type = "structure",
    id = "SuggestAddressHighlights",
    members = {
        Label = {
            type = "list",
            member = M.Highlight,
        },
    },
}

M.SuggestHighlights = {
    type = "structure",
    id = "SuggestHighlights",
    members = {
        Title = {
            type = "list",
            member = M.Highlight,
        },
        Address = M.SuggestAddressHighlights,
    },
}

M.SuggestPlaceResult = {
    type = "structure",
    id = "SuggestPlaceResult",
    members = {
        PlaceId = {
            type = "string",
        },
        PlaceType = {
            type = "string",
        },
        Address = M.Address,
        Position = {
            type = "list",
            member = { type = "double" },
        },
        Distance = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        MapView = {
            type = "list",
            member = { type = "double" },
        },
        Categories = {
            type = "list",
            member = M.Category,
        },
        FoodTypes = {
            type = "list",
            member = M.FoodType,
        },
        BusinessChains = {
            type = "list",
            member = M.BusinessChain,
        },
        AccessPoints = {
            type = "list",
            member = M.AccessPoint,
        },
        AccessRestrictions = {
            type = "list",
            member = M.AccessRestriction,
        },
        TimeZone = M.TimeZone,
        PoliticalView = {
            type = "string",
        },
        Phonemes = M.PhonemeDetails,
    },
}

M.QueryType = {
    CATEGORY = "Category",
    BUSINESS_CHAIN = "BusinessChain",
}

M.SuggestQueryResult = {
    type = "structure",
    id = "SuggestQueryResult",
    members = {
        QueryId = {
            type = "string",
        },
        QueryType = {
            type = "string",
        },
    },
}

M.SuggestResultItemType = {
    PLACE = "Place",
    QUERY = "Query",
}

M.SuggestResultItem = {
    type = "structure",
    id = "SuggestResultItem",
    members = {
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SuggestResultItemType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Place = M.SuggestPlaceResult,
        Query = M.SuggestQueryResult,
        Highlights = M.SuggestHighlights,
    },
}

M.SuggestOutput = {
    type = "structure",
    id = "SuggestOutput",
    members = {
        PricingBucket = {
            type = "string",
            traits = {
                http_header = "x-amz-geo-pricing-bucket",
                required = true,
            },
        },
        ResultItems = {
            type = "list",
            member = M.SuggestResultItem,
        },
        QueryRefinements = {
            type = "list",
            member = M.QueryRefinement,
        },
    },
}

return M
