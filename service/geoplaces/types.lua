local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        Position = {
            type = "list",
            member_type = "number",
        },
    },
}

M.Category = {
    type = "structure",
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
    members = {
        Restricted = {
            type = "boolean",
        },
        Categories = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Country = {
    type = "structure",
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
    members = {
        Label = {
            type = "string",
        },
        Country = {
            type = "structure",
        },
        Region = {
            type = "structure",
        },
        SubRegion = {
            type = "structure",
        },
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
            member_type = "string",
        },
        Street = {
            type = "string",
        },
        StreetComponents = {
            type = "list",
            member_type = "structure",
        },
        AddressNumber = {
            type = "string",
        },
        Building = {
            type = "string",
        },
        SecondaryAddressComponents = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SecondaryAddressComponentMatchScore = {
    type = "structure",
    members = {
        Number = {
            type = "number",
        },
    },
}

M.AddressComponentMatchScores = {
    type = "structure",
    members = {
        Country = {
            type = "number",
        },
        Region = {
            type = "number",
        },
        SubRegion = {
            type = "number",
        },
        Locality = {
            type = "number",
        },
        District = {
            type = "number",
        },
        SubDistrict = {
            type = "number",
        },
        PostalCode = {
            type = "number",
        },
        Block = {
            type = "number",
        },
        SubBlock = {
            type = "number",
        },
        Intersection = {
            type = "list",
            member_type = "number",
        },
        AddressNumber = {
            type = "number",
        },
        Building = {
            type = "number",
        },
        SecondaryAddressComponents = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PhonemeTranscription = {
    type = "structure",
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
    members = {
        Country = {
            type = "list",
            member_type = "structure",
        },
        Region = {
            type = "list",
            member_type = "structure",
        },
        SubRegion = {
            type = "list",
            member_type = "structure",
        },
        Locality = {
            type = "list",
            member_type = "structure",
        },
        District = {
            type = "list",
            member_type = "structure",
        },
        SubDistrict = {
            type = "list",
            member_type = "structure",
        },
        Block = {
            type = "list",
            member_type = "structure",
        },
        SubBlock = {
            type = "list",
            member_type = "structure",
        },
        Street = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AutocompleteAdditionalFeature = {
    CORE = "Core",
}

M.FilterCircle = {
    type = "structure",
    members = {
        Center = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
        Radius = {
            type = "number",
            traits = {
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
    members = {
        BoundingBox = {
            type = "list",
            member_type = "number",
        },
        Circle = {
            type = "structure",
        },
        IncludeCountries = {
            type = "list",
            member_type = "string",
        },
        IncludePlaceTypes = {
            type = "list",
            member_type = "string",
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
    members = {
        QueryText = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        BiasPosition = {
            type = "list",
            member_type = "number",
        },
        Filter = {
            type = "structure",
        },
        PostalCodeMode = {
            type = "string",
        },
        AdditionalFeatures = {
            type = "list",
            member_type = "string",
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
    members = {
        StartIndex = {
            type = "number",
        },
        EndIndex = {
            type = "number",
        },
        Value = {
            type = "string",
        },
    },
}

M.CountryHighlights = {
    type = "structure",
    members = {
        Code = {
            type = "list",
            member_type = "structure",
        },
        Name = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RegionHighlights = {
    type = "structure",
    members = {
        Code = {
            type = "list",
            member_type = "structure",
        },
        Name = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SubRegionHighlights = {
    type = "structure",
    members = {
        Code = {
            type = "list",
            member_type = "structure",
        },
        Name = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AutocompleteAddressHighlights = {
    type = "structure",
    members = {
        Label = {
            type = "list",
            member_type = "structure",
        },
        Country = {
            type = "structure",
        },
        Region = {
            type = "structure",
        },
        SubRegion = {
            type = "structure",
        },
        Locality = {
            type = "list",
            member_type = "structure",
        },
        District = {
            type = "list",
            member_type = "structure",
        },
        SubDistrict = {
            type = "list",
            member_type = "structure",
        },
        Street = {
            type = "list",
            member_type = "structure",
        },
        Block = {
            type = "list",
            member_type = "structure",
        },
        SubBlock = {
            type = "list",
            member_type = "structure",
        },
        Intersection = {
            type = "list",
            member_type = "list",
        },
        PostalCode = {
            type = "list",
            member_type = "structure",
        },
        AddressNumber = {
            type = "list",
            member_type = "structure",
        },
        Building = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AutocompleteHighlights = {
    type = "structure",
    members = {
        Title = {
            type = "list",
            member_type = "structure",
        },
        Address = {
            type = "structure",
        },
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
        Address = {
            type = "structure",
        },
        Distance = {
            type = "number",
        },
        Language = {
            type = "string",
        },
        PoliticalView = {
            type = "string",
        },
        Highlights = {
            type = "structure",
        },
    },
}

M.AutocompleteOutput = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.InternalServerException = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                json_name = "fieldList",
                required = true,
            },
        },
    },
}

M.BusinessChain = {
    type = "structure",
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
    members = {
        Title = {
            type = "number",
        },
        Address = {
            type = "structure",
        },
    },
}

M.ContactDetails = {
    type = "structure",
    members = {
        Label = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        Categories = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Contacts = {
    type = "structure",
    members = {
        Phones = {
            type = "list",
            member_type = "structure",
        },
        Faxes = {
            type = "list",
            member_type = "structure",
        },
        Websites = {
            type = "list",
            member_type = "structure",
        },
        Emails = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.FoodType = {
    type = "structure",
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
    members = {
        IncludeCountries = {
            type = "list",
            member_type = "string",
        },
        IncludePlaceTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GeocodeIntendedUse = {
    SINGLE_USE = "SingleUse",
    STORAGE = "Storage",
}

M.GeocodeQueryComponents = {
    type = "structure",
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
    members = {
        QueryText = {
            type = "string",
        },
        QueryComponents = {
            type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        BiasPosition = {
            type = "list",
            member_type = "number",
        },
        Filter = {
            type = "structure",
        },
        AdditionalFeatures = {
            type = "list",
            member_type = "string",
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
        Address = {
            type = "structure",
        },
        Position = {
            type = "list",
            member_type = "number",
        },
        Distance = {
            type = "number",
        },
        RouteDistance = {
            type = "number",
        },
        MapView = {
            type = "list",
            member_type = "number",
        },
        AccessPoints = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RelatedPlace = {
    type = "structure",
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
        Address = {
            type = "structure",
        },
        Position = {
            type = "list",
            member_type = "number",
        },
        AccessPoints = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.MatchScoreDetails = {
    type = "structure",
    members = {
        Overall = {
            type = "number",
        },
        Components = {
            type = "structure",
        },
    },
}

M.ParsedQueryComponent = {
    type = "structure",
    members = {
        StartIndex = {
            type = "number",
        },
        EndIndex = {
            type = "number",
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
    members = {
        StartIndex = {
            type = "number",
            traits = {
                required = true,
            },
        },
        EndIndex = {
            type = "number",
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
    members = {
        Country = {
            type = "list",
            member_type = "structure",
        },
        Region = {
            type = "list",
            member_type = "structure",
        },
        SubRegion = {
            type = "list",
            member_type = "structure",
        },
        Locality = {
            type = "list",
            member_type = "structure",
        },
        District = {
            type = "list",
            member_type = "structure",
        },
        SubDistrict = {
            type = "list",
            member_type = "structure",
        },
        PostalCode = {
            type = "list",
            member_type = "structure",
        },
        Block = {
            type = "list",
            member_type = "structure",
        },
        SubBlock = {
            type = "list",
            member_type = "structure",
        },
        Street = {
            type = "list",
            member_type = "structure",
        },
        AddressNumber = {
            type = "list",
            member_type = "structure",
        },
        Building = {
            type = "list",
            member_type = "structure",
        },
        SecondaryAddressComponents = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GeocodeParsedQuery = {
    type = "structure",
    members = {
        Title = {
            type = "list",
            member_type = "structure",
        },
        Address = {
            type = "structure",
        },
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
    members = {
        RecordTypeCode = {
            type = "string",
        },
    },
}

M.PostalCodeDetails = {
    type = "structure",
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
        UspsZip = {
            type = "structure",
        },
        UspsZipPlus4 = {
            type = "structure",
        },
    },
}

M.TimeZone = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.GeocodeResultItem = {
    type = "structure",
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
        Address = {
            type = "structure",
        },
        AddressNumberCorrected = {
            type = "boolean",
        },
        PostalCodeDetails = {
            type = "list",
            member_type = "structure",
        },
        Position = {
            type = "list",
            member_type = "number",
        },
        Distance = {
            type = "number",
        },
        MapView = {
            type = "list",
            member_type = "number",
        },
        Categories = {
            type = "list",
            member_type = "structure",
        },
        FoodTypes = {
            type = "list",
            member_type = "structure",
        },
        AccessPoints = {
            type = "list",
            member_type = "structure",
        },
        TimeZone = {
            type = "structure",
        },
        PoliticalView = {
            type = "string",
        },
        MatchScores = {
            type = "structure",
        },
        ParsedQuery = {
            type = "structure",
        },
        Intersections = {
            type = "list",
            member_type = "structure",
        },
        MainAddress = {
            type = "structure",
        },
        SecondaryAddresses = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GeocodeOutput = {
    type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
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
    members = {
        Display = {
            type = "list",
            member_type = "string",
        },
        OpenNow = {
            type = "boolean",
        },
        Components = {
            type = "list",
            member_type = "structure",
        },
        Categories = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PhonemeDetails = {
    type = "structure",
    members = {
        Title = {
            type = "list",
            member_type = "structure",
        },
        Address = {
            type = "structure",
        },
    },
}

M.GetPlaceOutput = {
    type = "structure",
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
        Address = {
            type = "structure",
        },
        AddressNumberCorrected = {
            type = "boolean",
        },
        PostalCodeDetails = {
            type = "list",
            member_type = "structure",
        },
        Position = {
            type = "list",
            member_type = "number",
        },
        MapView = {
            type = "list",
            member_type = "number",
        },
        Categories = {
            type = "list",
            member_type = "structure",
        },
        FoodTypes = {
            type = "list",
            member_type = "structure",
        },
        BusinessChains = {
            type = "list",
            member_type = "structure",
        },
        Contacts = {
            type = "structure",
        },
        OpeningHours = {
            type = "list",
            member_type = "structure",
        },
        AccessPoints = {
            type = "list",
            member_type = "structure",
        },
        AccessRestrictions = {
            type = "list",
            member_type = "structure",
        },
        TimeZone = {
            type = "structure",
        },
        PoliticalView = {
            type = "string",
        },
        Phonemes = {
            type = "structure",
        },
        MainAddress = {
            type = "structure",
        },
        SecondaryAddresses = {
            type = "list",
            member_type = "structure",
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
    members = {
        IncludePlaceTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ReverseGeocodeIntendedUse = {
    SINGLE_USE = "SingleUse",
    STORAGE = "Storage",
}

M.ReverseGeocodeInput = {
    type = "structure",
    members = {
        QueryPosition = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
        QueryRadius = {
            type = "number",
        },
        MaxResults = {
            type = "number",
        },
        Filter = {
            type = "structure",
        },
        AdditionalFeatures = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
    },
}

M.ReverseGeocodeResultItem = {
    type = "structure",
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
        Address = {
            type = "structure",
        },
        AddressNumberCorrected = {
            type = "boolean",
        },
        PostalCodeDetails = {
            type = "list",
            member_type = "structure",
        },
        Position = {
            type = "list",
            member_type = "number",
        },
        Distance = {
            type = "number",
        },
        MapView = {
            type = "list",
            member_type = "number",
        },
        Categories = {
            type = "list",
            member_type = "structure",
        },
        FoodTypes = {
            type = "list",
            member_type = "structure",
        },
        AccessPoints = {
            type = "list",
            member_type = "structure",
        },
        TimeZone = {
            type = "structure",
        },
        PoliticalView = {
            type = "string",
        },
        Intersections = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ReverseGeocodeOutput = {
    type = "structure",
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
            member_type = "structure",
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
    members = {
        BoundingBox = {
            type = "list",
            member_type = "number",
        },
        IncludeCountries = {
            type = "list",
            member_type = "string",
        },
        IncludeCategories = {
            type = "list",
            member_type = "string",
        },
        ExcludeCategories = {
            type = "list",
            member_type = "string",
        },
        IncludeBusinessChains = {
            type = "list",
            member_type = "string",
        },
        ExcludeBusinessChains = {
            type = "list",
            member_type = "string",
        },
        IncludeFoodTypes = {
            type = "list",
            member_type = "string",
        },
        ExcludeFoodTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SearchNearbyIntendedUse = {
    SINGLE_USE = "SingleUse",
    STORAGE = "Storage",
}

M.SearchNearbyInput = {
    type = "structure",
    members = {
        QueryPosition = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
        QueryRadius = {
            type = "number",
        },
        MaxResults = {
            type = "number",
        },
        Filter = {
            type = "structure",
        },
        AdditionalFeatures = {
            type = "list",
            member_type = "string",
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
        Address = {
            type = "structure",
        },
        AddressNumberCorrected = {
            type = "boolean",
        },
        Position = {
            type = "list",
            member_type = "number",
        },
        Distance = {
            type = "number",
        },
        MapView = {
            type = "list",
            member_type = "number",
        },
        Categories = {
            type = "list",
            member_type = "structure",
        },
        FoodTypes = {
            type = "list",
            member_type = "structure",
        },
        BusinessChains = {
            type = "list",
            member_type = "structure",
        },
        Contacts = {
            type = "structure",
        },
        OpeningHours = {
            type = "list",
            member_type = "structure",
        },
        AccessPoints = {
            type = "list",
            member_type = "structure",
        },
        AccessRestrictions = {
            type = "list",
            member_type = "structure",
        },
        TimeZone = {
            type = "structure",
        },
        PoliticalView = {
            type = "string",
        },
        Phonemes = {
            type = "structure",
        },
    },
}

M.SearchNearbyOutput = {
    type = "structure",
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
            member_type = "structure",
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
    members = {
        BoundingBox = {
            type = "list",
            member_type = "number",
        },
        Circle = {
            type = "structure",
        },
        IncludeCountries = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SearchTextIntendedUse = {
    SINGLE_USE = "SingleUse",
    STORAGE = "Storage",
}

M.SearchTextInput = {
    type = "structure",
    members = {
        QueryText = {
            type = "string",
        },
        QueryId = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        BiasPosition = {
            type = "list",
            member_type = "number",
        },
        Filter = {
            type = "structure",
        },
        AdditionalFeatures = {
            type = "list",
            member_type = "string",
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
        Address = {
            type = "structure",
        },
        AddressNumberCorrected = {
            type = "boolean",
        },
        Position = {
            type = "list",
            member_type = "number",
        },
        Distance = {
            type = "number",
        },
        MapView = {
            type = "list",
            member_type = "number",
        },
        Categories = {
            type = "list",
            member_type = "structure",
        },
        FoodTypes = {
            type = "list",
            member_type = "structure",
        },
        BusinessChains = {
            type = "list",
            member_type = "structure",
        },
        Contacts = {
            type = "structure",
        },
        OpeningHours = {
            type = "list",
            member_type = "structure",
        },
        AccessPoints = {
            type = "list",
            member_type = "structure",
        },
        AccessRestrictions = {
            type = "list",
            member_type = "structure",
        },
        TimeZone = {
            type = "structure",
        },
        PoliticalView = {
            type = "string",
        },
        Phonemes = {
            type = "structure",
        },
    },
}

M.SearchTextOutput = {
    type = "structure",
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
            member_type = "structure",
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
    members = {
        BoundingBox = {
            type = "list",
            member_type = "number",
        },
        Circle = {
            type = "structure",
        },
        IncludeCountries = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SuggestIntendedUse = {
    SINGLE_USE = "SingleUse",
}

M.SuggestInput = {
    type = "structure",
    members = {
        QueryText = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        MaxQueryRefinements = {
            type = "number",
        },
        BiasPosition = {
            type = "list",
            member_type = "number",
        },
        Filter = {
            type = "structure",
        },
        AdditionalFeatures = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        EndIndex = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.SuggestAddressHighlights = {
    type = "structure",
    members = {
        Label = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SuggestHighlights = {
    type = "structure",
    members = {
        Title = {
            type = "list",
            member_type = "structure",
        },
        Address = {
            type = "structure",
        },
    },
}

M.SuggestPlaceResult = {
    type = "structure",
    members = {
        PlaceId = {
            type = "string",
        },
        PlaceType = {
            type = "string",
        },
        Address = {
            type = "structure",
        },
        Position = {
            type = "list",
            member_type = "number",
        },
        Distance = {
            type = "number",
        },
        MapView = {
            type = "list",
            member_type = "number",
        },
        Categories = {
            type = "list",
            member_type = "structure",
        },
        FoodTypes = {
            type = "list",
            member_type = "structure",
        },
        BusinessChains = {
            type = "list",
            member_type = "structure",
        },
        AccessPoints = {
            type = "list",
            member_type = "structure",
        },
        AccessRestrictions = {
            type = "list",
            member_type = "structure",
        },
        TimeZone = {
            type = "structure",
        },
        PoliticalView = {
            type = "string",
        },
        Phonemes = {
            type = "structure",
        },
    },
}

M.QueryType = {
    CATEGORY = "Category",
    BUSINESS_CHAIN = "BusinessChain",
}

M.SuggestQueryResult = {
    type = "structure",
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
        Place = {
            type = "structure",
        },
        Query = {
            type = "structure",
        },
        Highlights = {
            type = "structure",
        },
    },
}

M.SuggestOutput = {
    type = "structure",
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
            member_type = "structure",
        },
        QueryRefinements = {
            type = "list",
            member_type = "structure",
        },
    },
}

return M
