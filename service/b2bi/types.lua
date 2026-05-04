local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.X12SplitBy = {
    NONE = "NONE",
    TRANSACTION = "TRANSACTION",
}

M.X12SplitOptions = {
    type = "structure",
    id = "X12SplitOptions",
    members = {
        splitBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.X12CodeListValidationRule = {
    type = "structure",
    id = "X12CodeListValidationRule",
    members = {
        elementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        codesToAdd = {
            type = "list",
            member = { type = "string" },
        },
        codesToRemove = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.X12ElementLengthValidationRule = {
    type = "structure",
    id = "X12ElementLengthValidationRule",
    members = {
        elementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxLength = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        minLength = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ElementRequirement = {
    OPTIONAL = "OPTIONAL",
    MANDATORY = "MANDATORY",
}

M.X12ElementRequirementValidationRule = {
    type = "structure",
    id = "X12ElementRequirementValidationRule",
    members = {
        elementPosition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requirement = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.X12ValidationRule = {
    type = "union",
    id = "X12ValidationRule",
    members = {
        codeListValidationRule = M.X12CodeListValidationRule,
        elementLengthValidationRule = M.X12ElementLengthValidationRule,
        elementRequirementValidationRule = M.X12ElementRequirementValidationRule,
    },
}

M.X12ValidationOptions = {
    type = "structure",
    id = "X12ValidationOptions",
    members = {
        validationRules = {
            type = "list",
            member = M.X12ValidationRule,
        },
    },
}

M.X12AdvancedOptions = {
    type = "structure",
    id = "X12AdvancedOptions",
    members = {
        splitOptions = M.X12SplitOptions,
        validationOptions = M.X12ValidationOptions,
    },
}

M.AdvancedOptions = {
    type = "structure",
    id = "AdvancedOptions",
    members = {
        x12 = M.X12AdvancedOptions,
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CapabilityDirection = {
    INBOUND = "INBOUND",
    OUTBOUND = "OUTBOUND",
}

M.S3Location = {
    type = "structure",
    id = "S3Location",
    members = {
        bucketName = {
            type = "string",
        },
        key = {
            type = "string",
        },
    },
}

M.X12TransactionSet = {
    X12_100 = "X12_100",
    X12_101 = "X12_101",
    X12_102 = "X12_102",
    X12_103 = "X12_103",
    X12_104 = "X12_104",
    X12_105 = "X12_105",
    X12_106 = "X12_106",
    X12_107 = "X12_107",
    X12_108 = "X12_108",
    X12_109 = "X12_109",
    X12_110 = "X12_110",
    X12_111 = "X12_111",
    X12_112 = "X12_112",
    X12_113 = "X12_113",
    X12_120 = "X12_120",
    X12_121 = "X12_121",
    X12_124 = "X12_124",
    X12_125 = "X12_125",
    X12_126 = "X12_126",
    X12_127 = "X12_127",
    X12_128 = "X12_128",
    X12_129 = "X12_129",
    X12_130 = "X12_130",
    X12_131 = "X12_131",
    X12_132 = "X12_132",
    X12_133 = "X12_133",
    X12_135 = "X12_135",
    X12_138 = "X12_138",
    X12_139 = "X12_139",
    X12_140 = "X12_140",
    X12_141 = "X12_141",
    X12_142 = "X12_142",
    X12_143 = "X12_143",
    X12_144 = "X12_144",
    X12_146 = "X12_146",
    X12_147 = "X12_147",
    X12_148 = "X12_148",
    X12_149 = "X12_149",
    X12_150 = "X12_150",
    X12_151 = "X12_151",
    X12_152 = "X12_152",
    X12_153 = "X12_153",
    X12_154 = "X12_154",
    X12_155 = "X12_155",
    X12_157 = "X12_157",
    X12_158 = "X12_158",
    X12_159 = "X12_159",
    X12_160 = "X12_160",
    X12_161 = "X12_161",
    X12_163 = "X12_163",
    X12_170 = "X12_170",
    X12_175 = "X12_175",
    X12_176 = "X12_176",
    X12_179 = "X12_179",
    X12_180 = "X12_180",
    X12_185 = "X12_185",
    X12_186 = "X12_186",
    X12_187 = "X12_187",
    X12_188 = "X12_188",
    X12_189 = "X12_189",
    X12_190 = "X12_190",
    X12_191 = "X12_191",
    X12_194 = "X12_194",
    X12_195 = "X12_195",
    X12_196 = "X12_196",
    X12_197 = "X12_197",
    X12_198 = "X12_198",
    X12_199 = "X12_199",
    X12_200 = "X12_200",
    X12_201 = "X12_201",
    X12_202 = "X12_202",
    X12_203 = "X12_203",
    X12_204 = "X12_204",
    X12_205 = "X12_205",
    X12_206 = "X12_206",
    X12_210 = "X12_210",
    X12_211 = "X12_211",
    X12_212 = "X12_212",
    X12_213 = "X12_213",
    X12_214 = "X12_214",
    X12_215 = "X12_215",
    X12_216 = "X12_216",
    X12_217 = "X12_217",
    X12_218 = "X12_218",
    X12_219 = "X12_219",
    X12_220 = "X12_220",
    X12_222 = "X12_222",
    X12_223 = "X12_223",
    X12_224 = "X12_224",
    X12_225 = "X12_225",
    X12_227 = "X12_227",
    X12_228 = "X12_228",
    X12_240 = "X12_240",
    X12_242 = "X12_242",
    X12_244 = "X12_244",
    X12_245 = "X12_245",
    X12_248 = "X12_248",
    X12_249 = "X12_249",
    X12_250 = "X12_250",
    X12_251 = "X12_251",
    X12_252 = "X12_252",
    X12_255 = "X12_255",
    X12_256 = "X12_256",
    X12_259 = "X12_259",
    X12_260 = "X12_260",
    X12_261 = "X12_261",
    X12_262 = "X12_262",
    X12_263 = "X12_263",
    X12_264 = "X12_264",
    X12_265 = "X12_265",
    X12_266 = "X12_266",
    X12_267 = "X12_267",
    X12_268 = "X12_268",
    X12_269 = "X12_269",
    X12_270 = "X12_270",
    X12_271 = "X12_271",
    X12_272 = "X12_272",
    X12_273 = "X12_273",
    X12_274 = "X12_274",
    X12_275 = "X12_275",
    X12_276 = "X12_276",
    X12_277 = "X12_277",
    X12_278 = "X12_278",
    X12_280 = "X12_280",
    X12_283 = "X12_283",
    X12_284 = "X12_284",
    X12_285 = "X12_285",
    X12_286 = "X12_286",
    X12_288 = "X12_288",
    X12_290 = "X12_290",
    X12_300 = "X12_300",
    X12_301 = "X12_301",
    X12_303 = "X12_303",
    X12_304 = "X12_304",
    X12_309 = "X12_309",
    X12_310 = "X12_310",
    X12_311 = "X12_311",
    X12_312 = "X12_312",
    X12_313 = "X12_313",
    X12_315 = "X12_315",
    X12_317 = "X12_317",
    X12_319 = "X12_319",
    X12_322 = "X12_322",
    X12_323 = "X12_323",
    X12_324 = "X12_324",
    X12_325 = "X12_325",
    X12_326 = "X12_326",
    X12_350 = "X12_350",
    X12_352 = "X12_352",
    X12_353 = "X12_353",
    X12_354 = "X12_354",
    X12_355 = "X12_355",
    X12_356 = "X12_356",
    X12_357 = "X12_357",
    X12_358 = "X12_358",
    X12_361 = "X12_361",
    X12_362 = "X12_362",
    X12_404 = "X12_404",
    X12_410 = "X12_410",
    X12_412 = "X12_412",
    X12_414 = "X12_414",
    X12_417 = "X12_417",
    X12_418 = "X12_418",
    X12_419 = "X12_419",
    X12_420 = "X12_420",
    X12_421 = "X12_421",
    X12_422 = "X12_422",
    X12_423 = "X12_423",
    X12_424 = "X12_424",
    X12_425 = "X12_425",
    X12_426 = "X12_426",
    X12_429 = "X12_429",
    X12_431 = "X12_431",
    X12_432 = "X12_432",
    X12_433 = "X12_433",
    X12_434 = "X12_434",
    X12_435 = "X12_435",
    X12_436 = "X12_436",
    X12_437 = "X12_437",
    X12_440 = "X12_440",
    X12_451 = "X12_451",
    X12_452 = "X12_452",
    X12_453 = "X12_453",
    X12_455 = "X12_455",
    X12_456 = "X12_456",
    X12_460 = "X12_460",
    X12_463 = "X12_463",
    X12_466 = "X12_466",
    X12_468 = "X12_468",
    X12_470 = "X12_470",
    X12_475 = "X12_475",
    X12_485 = "X12_485",
    X12_486 = "X12_486",
    X12_490 = "X12_490",
    X12_492 = "X12_492",
    X12_494 = "X12_494",
    X12_500 = "X12_500",
    X12_501 = "X12_501",
    X12_503 = "X12_503",
    X12_504 = "X12_504",
    X12_511 = "X12_511",
    X12_517 = "X12_517",
    X12_521 = "X12_521",
    X12_527 = "X12_527",
    X12_536 = "X12_536",
    X12_540 = "X12_540",
    X12_561 = "X12_561",
    X12_567 = "X12_567",
    X12_568 = "X12_568",
    X12_601 = "X12_601",
    X12_602 = "X12_602",
    X12_620 = "X12_620",
    X12_625 = "X12_625",
    X12_650 = "X12_650",
    X12_715 = "X12_715",
    X12_753 = "X12_753",
    X12_754 = "X12_754",
    X12_805 = "X12_805",
    X12_806 = "X12_806",
    X12_810 = "X12_810",
    X12_811 = "X12_811",
    X12_812 = "X12_812",
    X12_813 = "X12_813",
    X12_814 = "X12_814",
    X12_815 = "X12_815",
    X12_816 = "X12_816",
    X12_818 = "X12_818",
    X12_819 = "X12_819",
    X12_820 = "X12_820",
    X12_821 = "X12_821",
    X12_822 = "X12_822",
    X12_823 = "X12_823",
    X12_824 = "X12_824",
    X12_826 = "X12_826",
    X12_827 = "X12_827",
    X12_828 = "X12_828",
    X12_829 = "X12_829",
    X12_830 = "X12_830",
    X12_831 = "X12_831",
    X12_832 = "X12_832",
    X12_833 = "X12_833",
    X12_834 = "X12_834",
    X12_835 = "X12_835",
    X12_836 = "X12_836",
    X12_837 = "X12_837",
    X12_838 = "X12_838",
    X12_839 = "X12_839",
    X12_840 = "X12_840",
    X12_841 = "X12_841",
    X12_842 = "X12_842",
    X12_843 = "X12_843",
    X12_844 = "X12_844",
    X12_845 = "X12_845",
    X12_846 = "X12_846",
    X12_847 = "X12_847",
    X12_848 = "X12_848",
    X12_849 = "X12_849",
    X12_850 = "X12_850",
    X12_851 = "X12_851",
    X12_852 = "X12_852",
    X12_853 = "X12_853",
    X12_854 = "X12_854",
    X12_855 = "X12_855",
    X12_856 = "X12_856",
    X12_857 = "X12_857",
    X12_858 = "X12_858",
    X12_859 = "X12_859",
    X12_860 = "X12_860",
    X12_861 = "X12_861",
    X12_862 = "X12_862",
    X12_863 = "X12_863",
    X12_864 = "X12_864",
    X12_865 = "X12_865",
    X12_866 = "X12_866",
    X12_867 = "X12_867",
    X12_868 = "X12_868",
    X12_869 = "X12_869",
    X12_870 = "X12_870",
    X12_871 = "X12_871",
    X12_872 = "X12_872",
    X12_873 = "X12_873",
    X12_874 = "X12_874",
    X12_875 = "X12_875",
    X12_876 = "X12_876",
    X12_877 = "X12_877",
    X12_878 = "X12_878",
    X12_879 = "X12_879",
    X12_880 = "X12_880",
    X12_881 = "X12_881",
    X12_882 = "X12_882",
    X12_883 = "X12_883",
    X12_884 = "X12_884",
    X12_885 = "X12_885",
    X12_886 = "X12_886",
    X12_887 = "X12_887",
    X12_888 = "X12_888",
    X12_889 = "X12_889",
    X12_891 = "X12_891",
    X12_893 = "X12_893",
    X12_894 = "X12_894",
    X12_895 = "X12_895",
    X12_896 = "X12_896",
    X12_920 = "X12_920",
    X12_924 = "X12_924",
    X12_925 = "X12_925",
    X12_926 = "X12_926",
    X12_928 = "X12_928",
    X12_940 = "X12_940",
    X12_943 = "X12_943",
    X12_944 = "X12_944",
    X12_945 = "X12_945",
    X12_947 = "X12_947",
    X12_980 = "X12_980",
    X12_990 = "X12_990",
    X12_993 = "X12_993",
    X12_996 = "X12_996",
    X12_997 = "X12_997",
    X12_998 = "X12_998",
    X12_999 = "X12_999",
    X12_270_X279 = "X12_270_X279",
    X12_271_X279 = "X12_271_X279",
    X12_275_X210 = "X12_275_X210",
    X12_275_X211 = "X12_275_X211",
    X12_276_X212 = "X12_276_X212",
    X12_277_X212 = "X12_277_X212",
    X12_277_X214 = "X12_277_X214",
    X12_277_X364 = "X12_277_X364",
    X12_278_X217 = "X12_278_X217",
    X12_820_X218 = "X12_820_X218",
    X12_820_X306 = "X12_820_X306",
    X12_824_X186 = "X12_824_X186",
    X12_834_X220 = "X12_834_X220",
    X12_834_X307 = "X12_834_X307",
    X12_834_X318 = "X12_834_X318",
    X12_835_X221 = "X12_835_X221",
    X12_837_X222 = "X12_837_X222",
    X12_837_X223 = "X12_837_X223",
    X12_837_X224 = "X12_837_X224",
    X12_837_X291 = "X12_837_X291",
    X12_837_X292 = "X12_837_X292",
    X12_837_X298 = "X12_837_X298",
    X12_999_X231 = "X12_999_X231",
}

M.X12Version = {
    VERSION_4010 = "VERSION_4010",
    VERSION_4030 = "VERSION_4030",
    VERSION_4050 = "VERSION_4050",
    VERSION_4060 = "VERSION_4060",
    VERSION_5010 = "VERSION_5010",
    VERSION_5010_HIPAA = "VERSION_5010_HIPAA",
}

M.X12Details = {
    type = "structure",
    id = "X12Details",
    members = {
        transactionSet = {
            type = "string",
        },
        version = {
            type = "string",
        },
    },
}

M.EdiType = {
    type = "union",
    id = "EdiType",
    members = {
        x12Details = M.X12Details,
    },
}

M.EdiConfiguration = {
    type = "structure",
    id = "EdiConfiguration",
    members = {
        capabilityDirection = {
            type = "string",
        },
        type = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EdiType }),
        inputLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
        outputLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
        transformerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CapabilityConfiguration = {
    type = "union",
    id = "CapabilityConfiguration",
    members = {
        edi = M.EdiConfiguration,
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        Key = {
            type = "string",
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
    },
}

M.CapabilityType = {
    EDI = "edi",
}

M.CreateCapabilityInput = {
    type = "structure",
    id = "CreateCapabilityInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CapabilityConfiguration }),
        instructionsDocuments = {
            type = "list",
            member = M.S3Location,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateCapabilityOutput = {
    type = "structure",
    id = "CreateCapabilityOutput",
    members = {
        capabilityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        capabilityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CapabilityConfiguration }),
        instructionsDocuments = {
            type = "list",
            member = M.S3Location,
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaCode = {
            type = "string",
            traits = {
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
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCapabilityInput = {
    type = "structure",
    id = "DeleteCapabilityInput",
    members = {
        capabilityId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCapabilityOutput = {
    type = "structure",
    id = "DeleteCapabilityOutput",
}

M.GetCapabilityInput = {
    type = "structure",
    id = "GetCapabilityInput",
    members = {
        capabilityId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCapabilityOutput = {
    type = "structure",
    id = "GetCapabilityOutput",
    members = {
        capabilityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        capabilityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CapabilityConfiguration }),
        instructionsDocuments = {
            type = "list",
            member = M.S3Location,
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListCapabilitiesInput = {
    type = "structure",
    id = "ListCapabilitiesInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.CapabilitySummary = {
    type = "structure",
    id = "CapabilitySummary",
    members = {
        capabilityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListCapabilitiesOutput = {
    type = "structure",
    id = "ListCapabilitiesOutput",
    members = {
        capabilities = {
            type = "list",
            member = M.CapabilitySummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateCapabilityInput = {
    type = "structure",
    id = "UpdateCapabilityInput",
    members = {
        capabilityId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        configuration = M.CapabilityConfiguration,
        instructionsDocuments = {
            type = "list",
            member = M.S3Location,
        },
    },
}

M.UpdateCapabilityOutput = {
    type = "structure",
    id = "UpdateCapabilityOutput",
    members = {
        capabilityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        capabilityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CapabilityConfiguration }),
        instructionsDocuments = {
            type = "list",
            member = M.S3Location,
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.MappingType = {
    JSONATA = "JSONATA",
    XSLT = "XSLT",
}

M.TemplateDetails = {
    type = "union",
    id = "TemplateDetails",
    members = {
        x12 = M.X12Details,
    },
}

M.CreateStarterMappingTemplateInput = {
    type = "structure",
    id = "CreateStarterMappingTemplateInput",
    members = {
        outputSampleLocation = M.S3Location,
        mappingType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TemplateDetails }),
    },
}

M.CreateStarterMappingTemplateOutput = {
    type = "structure",
    id = "CreateStarterMappingTemplateOutput",
    members = {
        mappingTemplate = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GenerateMappingInput = {
    type = "structure",
    id = "GenerateMappingInput",
    members = {
        inputFileContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputFileContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mappingType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GenerateMappingOutput = {
    type = "structure",
    id = "GenerateMappingOutput",
    members = {
        mappingTemplate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mappingAccuracy = {
            type = "float",
        },
    },
}

M.GetTransformerJobInput = {
    type = "structure",
    id = "GetTransformerJobInput",
    members = {
        transformerJobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        transformerId = {
            type = "string",
            traits = {
                http_query = "transformerId",
                required = true,
            },
        },
    },
}

M.TransformerJobStatus = {
    RUNNING = "running",
    SUCCEEDED = "succeeded",
    FAILED = "failed",
}

M.GetTransformerJobOutput = {
    type = "structure",
    id = "GetTransformerJobOutput",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputFiles = {
            type = "list",
            member = M.S3Location,
        },
        message = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.X12FunctionalAcknowledgment = {
    DO_NOT_GENERATE = "DO_NOT_GENERATE",
    GENERATE_ALL_SEGMENTS = "GENERATE_ALL_SEGMENTS",
    GENERATE_WITHOUT_TRANSACTION_SET_RESPONSE_LOOP = "GENERATE_WITHOUT_TRANSACTION_SET_RESPONSE_LOOP",
}

M.X12TechnicalAcknowledgment = {
    DO_NOT_GENERATE = "DO_NOT_GENERATE",
    GENERATE_ALL_SEGMENTS = "GENERATE_ALL_SEGMENTS",
}

M.X12AcknowledgmentOptions = {
    type = "structure",
    id = "X12AcknowledgmentOptions",
    members = {
        functionalAcknowledgment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        technicalAcknowledgment = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.X12InboundEdiOptions = {
    type = "structure",
    id = "X12InboundEdiOptions",
    members = {
        acknowledgmentOptions = M.X12AcknowledgmentOptions,
    },
}

M.InboundEdiOptions = {
    type = "structure",
    id = "InboundEdiOptions",
    members = {
        x12 = M.X12InboundEdiOptions,
    },
}

M.X12ControlNumbers = {
    type = "structure",
    id = "X12ControlNumbers",
    members = {
        startingInterchangeControlNumber = {
            type = "integer",
        },
        startingFunctionalGroupControlNumber = {
            type = "integer",
        },
        startingTransactionSetControlNumber = {
            type = "integer",
        },
    },
}

M.X12Delimiters = {
    type = "structure",
    id = "X12Delimiters",
    members = {
        componentSeparator = {
            type = "string",
        },
        dataElementSeparator = {
            type = "string",
        },
        segmentTerminator = {
            type = "string",
        },
    },
}

M.X12FunctionalGroupHeaders = {
    type = "structure",
    id = "X12FunctionalGroupHeaders",
    members = {
        applicationSenderCode = {
            type = "string",
        },
        applicationReceiverCode = {
            type = "string",
        },
        responsibleAgencyCode = {
            type = "string",
        },
    },
}

M.X12GS05TimeFormat = {
    HHMM = "HHMM",
    HHMMSS = "HHMMSS",
    HHMMSSDD = "HHMMSSDD",
}

M.X12InterchangeControlHeaders = {
    type = "structure",
    id = "X12InterchangeControlHeaders",
    members = {
        senderIdQualifier = {
            type = "string",
        },
        senderId = {
            type = "string",
        },
        receiverIdQualifier = {
            type = "string",
        },
        receiverId = {
            type = "string",
        },
        repetitionSeparator = {
            type = "string",
        },
        acknowledgmentRequestedCode = {
            type = "string",
        },
        usageIndicatorCode = {
            type = "string",
        },
    },
}

M.X12OutboundEdiHeaders = {
    type = "structure",
    id = "X12OutboundEdiHeaders",
    members = {
        interchangeControlHeaders = M.X12InterchangeControlHeaders,
        functionalGroupHeaders = M.X12FunctionalGroupHeaders,
        delimiters = M.X12Delimiters,
        validateEdi = {
            type = "boolean",
        },
        controlNumbers = M.X12ControlNumbers,
        gs05TimeFormat = {
            type = "string",
        },
    },
}

M.LineTerminator = {
    CRLF = "CRLF",
    LF = "LF",
    CR = "CR",
}

M.WrapFormat = {
    SEGMENT = "SEGMENT",
    ONE_LINE = "ONE_LINE",
    LINE_LENGTH = "LINE_LENGTH",
}

M.WrapOptions = {
    type = "structure",
    id = "WrapOptions",
    members = {
        wrapBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lineTerminator = {
            type = "string",
        },
        lineLength = {
            type = "integer",
        },
    },
}

M.X12Envelope = {
    type = "structure",
    id = "X12Envelope",
    members = {
        common = M.X12OutboundEdiHeaders,
        wrapOptions = M.WrapOptions,
    },
}

M.OutboundEdiOptions = {
    type = "union",
    id = "OutboundEdiOptions",
    members = {
        x12 = M.X12Envelope,
    },
}

M.CapabilityOptions = {
    type = "structure",
    id = "CapabilityOptions",
    members = {
        outboundEdi = M.OutboundEdiOptions,
        inboundEdi = M.InboundEdiOptions,
    },
}

M.CreatePartnershipInput = {
    type = "structure",
    id = "CreatePartnershipInput",
    members = {
        profileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        email = {
            type = "string",
            traits = {
                required = true,
            },
        },
        phone = {
            type = "string",
        },
        capabilities = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        capabilityOptions = M.CapabilityOptions,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreatePartnershipOutput = {
    type = "structure",
    id = "CreatePartnershipOutput",
    members = {
        profileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        partnershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        partnershipArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        email = {
            type = "string",
        },
        phone = {
            type = "string",
        },
        capabilities = {
            type = "list",
            member = { type = "string" },
        },
        capabilityOptions = M.CapabilityOptions,
        tradingPartnerId = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeletePartnershipInput = {
    type = "structure",
    id = "DeletePartnershipInput",
    members = {
        partnershipId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePartnershipOutput = {
    type = "structure",
    id = "DeletePartnershipOutput",
}

M.GetPartnershipInput = {
    type = "structure",
    id = "GetPartnershipInput",
    members = {
        partnershipId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetPartnershipOutput = {
    type = "structure",
    id = "GetPartnershipOutput",
    members = {
        profileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        partnershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        partnershipArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        email = {
            type = "string",
        },
        phone = {
            type = "string",
        },
        capabilities = {
            type = "list",
            member = { type = "string" },
        },
        capabilityOptions = M.CapabilityOptions,
        tradingPartnerId = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListPartnershipsInput = {
    type = "structure",
    id = "ListPartnershipsInput",
    members = {
        profileId = {
            type = "string",
            traits = {
                http_query = "profileId",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.PartnershipSummary = {
    type = "structure",
    id = "PartnershipSummary",
    members = {
        profileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        partnershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        capabilities = {
            type = "list",
            member = { type = "string" },
        },
        capabilityOptions = M.CapabilityOptions,
        tradingPartnerId = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListPartnershipsOutput = {
    type = "structure",
    id = "ListPartnershipsOutput",
    members = {
        partnerships = {
            type = "list",
            member = M.PartnershipSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdatePartnershipInput = {
    type = "structure",
    id = "UpdatePartnershipInput",
    members = {
        partnershipId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        capabilities = {
            type = "list",
            member = { type = "string" },
        },
        capabilityOptions = M.CapabilityOptions,
    },
}

M.UpdatePartnershipOutput = {
    type = "structure",
    id = "UpdatePartnershipOutput",
    members = {
        profileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        partnershipId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        partnershipArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        email = {
            type = "string",
        },
        phone = {
            type = "string",
        },
        capabilities = {
            type = "list",
            member = { type = "string" },
        },
        capabilityOptions = M.CapabilityOptions,
        tradingPartnerId = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.Logging = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CreateProfileInput = {
    type = "structure",
    id = "CreateProfileInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        email = {
            type = "string",
        },
        phone = {
            type = "string",
            traits = {
                required = true,
            },
        },
        businessName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logging = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateProfileOutput = {
    type = "structure",
    id = "CreateProfileOutput",
    members = {
        profileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        profileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        businessName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        phone = {
            type = "string",
            traits = {
                required = true,
            },
        },
        email = {
            type = "string",
        },
        logging = {
            type = "string",
        },
        logGroupName = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeleteProfileInput = {
    type = "structure",
    id = "DeleteProfileInput",
    members = {
        profileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteProfileOutput = {
    type = "structure",
    id = "DeleteProfileOutput",
}

M.GetProfileInput = {
    type = "structure",
    id = "GetProfileInput",
    members = {
        profileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetProfileOutput = {
    type = "structure",
    id = "GetProfileOutput",
    members = {
        profileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        profileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        email = {
            type = "string",
        },
        phone = {
            type = "string",
            traits = {
                required = true,
            },
        },
        businessName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logging = {
            type = "string",
        },
        logGroupName = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListProfilesInput = {
    type = "structure",
    id = "ListProfilesInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ProfileSummary = {
    type = "structure",
    id = "ProfileSummary",
    members = {
        profileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        businessName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logging = {
            type = "string",
        },
        logGroupName = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListProfilesOutput = {
    type = "structure",
    id = "ListProfilesOutput",
    members = {
        profiles = {
            type = "list",
            member = M.ProfileSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateProfileInput = {
    type = "structure",
    id = "UpdateProfileInput",
    members = {
        profileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        email = {
            type = "string",
        },
        phone = {
            type = "string",
        },
        businessName = {
            type = "string",
        },
    },
}

M.UpdateProfileOutput = {
    type = "structure",
    id = "UpdateProfileOutput",
    members = {
        profileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        profileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        email = {
            type = "string",
        },
        phone = {
            type = "string",
            traits = {
                required = true,
            },
        },
        businessName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logging = {
            type = "string",
        },
        logGroupName = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.StartTransformerJobInput = {
    type = "structure",
    id = "StartTransformerJobInput",
    members = {
        inputFile = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
        outputLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
        transformerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartTransformerJobOutput = {
    type = "structure",
    id = "StartTransformerJobOutput",
    members = {
        transformerJobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.ConversionSourceFormat = {
    JSON = "JSON",
    XML = "XML",
}

M.InputFileSource = {
    type = "union",
    id = "InputFileSource",
    members = {
        fileContent = {
            type = "string",
        },
    },
}

M.ConversionSource = {
    type = "structure",
    id = "ConversionSource",
    members = {
        fileFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputFile = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputFileSource }),
    },
}

M.ConversionTargetFormat = {
    X12 = "X12",
}

M.ConversionTargetFormatDetails = {
    type = "union",
    id = "ConversionTargetFormatDetails",
    members = {
        x12 = M.X12Details,
    },
}

M.OutputSampleFileSource = {
    type = "union",
    id = "OutputSampleFileSource",
    members = {
        fileLocation = M.S3Location,
    },
}

M.ConversionTarget = {
    type = "structure",
    id = "ConversionTarget",
    members = {
        fileFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        formatDetails = M.ConversionTargetFormatDetails,
        outputSampleFile = M.OutputSampleFileSource,
        advancedOptions = M.AdvancedOptions,
    },
}

M.TestConversionInput = {
    type = "structure",
    id = "TestConversionInput",
    members = {
        source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConversionSource }),
        target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConversionTarget }),
    },
}

M.TestConversionOutput = {
    type = "structure",
    id = "TestConversionOutput",
    members = {
        convertedFileContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
        validationMessages = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.FileFormat = {
    XML = "XML",
    JSON = "JSON",
    NOT_USED = "NOT_USED",
}

M.TestMappingInput = {
    type = "structure",
    id = "TestMappingInput",
    members = {
        inputFileContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mappingTemplate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TestMappingOutput = {
    type = "structure",
    id = "TestMappingOutput",
    members = {
        mappedFileContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TestParsingInput = {
    type = "structure",
    id = "TestParsingInput",
    members = {
        inputFile = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
        fileFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ediType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EdiType }),
        advancedOptions = M.AdvancedOptions,
    },
}

M.TestParsingOutput = {
    type = "structure",
    id = "TestParsingOutput",
    members = {
        parsedFileContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parsedSplitFileContents = {
            type = "list",
            member = { type = "string" },
        },
        validationMessages = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.FormatOptions = {
    type = "union",
    id = "FormatOptions",
    members = {
        x12 = M.X12Details,
    },
}

M.FromFormat = {
    X12 = "X12",
}

M.InputConversion = {
    type = "structure",
    id = "InputConversion",
    members = {
        fromFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        formatOptions = M.FormatOptions,
        advancedOptions = M.AdvancedOptions,
    },
}

M.MappingTemplateLanguage = {
    XSLT = "XSLT",
    JSONATA = "JSONATA",
}

M.Mapping = {
    type = "structure",
    id = "Mapping",
    members = {
        templateLanguage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        template = {
            type = "string",
        },
    },
}

M.ToFormat = {
    X12 = "X12",
}

M.OutputConversion = {
    type = "structure",
    id = "OutputConversion",
    members = {
        toFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        formatOptions = M.FormatOptions,
        advancedOptions = M.AdvancedOptions,
    },
}

M.SampleDocumentKeys = {
    type = "structure",
    id = "SampleDocumentKeys",
    members = {
        input = {
            type = "string",
        },
        output = {
            type = "string",
        },
    },
}

M.SampleDocuments = {
    type = "structure",
    id = "SampleDocuments",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        keys = {
            type = "list",
            member = M.SampleDocumentKeys,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTransformerInput = {
    type = "structure",
    id = "CreateTransformerInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        fileFormat = {
            type = "string",
        },
        mappingTemplate = {
            type = "string",
        },
        ediType = M.EdiType,
        sampleDocument = {
            type = "string",
        },
        inputConversion = M.InputConversion,
        mapping = M.Mapping,
        outputConversion = M.OutputConversion,
        sampleDocuments = M.SampleDocuments,
    },
}

M.TransformerStatus = {
    ACTIVE = "active",
    INACTIVE = "inactive",
}

M.CreateTransformerOutput = {
    type = "structure",
    id = "CreateTransformerOutput",
    members = {
        transformerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        transformerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        fileFormat = {
            type = "string",
            traits = {
                default = "NOT_USED",
            },
        },
        mappingTemplate = {
            type = "string",
            traits = {
                default = "NOT_USED",
            },
        },
        ediType = M.EdiType,
        sampleDocument = {
            type = "string",
        },
        inputConversion = M.InputConversion,
        mapping = M.Mapping,
        outputConversion = M.OutputConversion,
        sampleDocuments = M.SampleDocuments,
    },
}

M.DeleteTransformerInput = {
    type = "structure",
    id = "DeleteTransformerInput",
    members = {
        transformerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTransformerOutput = {
    type = "structure",
    id = "DeleteTransformerOutput",
}

M.GetTransformerInput = {
    type = "structure",
    id = "GetTransformerInput",
    members = {
        transformerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetTransformerOutput = {
    type = "structure",
    id = "GetTransformerOutput",
    members = {
        transformerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        transformerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        fileFormat = {
            type = "string",
            traits = {
                default = "NOT_USED",
            },
        },
        mappingTemplate = {
            type = "string",
            traits = {
                default = "NOT_USED",
            },
        },
        ediType = M.EdiType,
        sampleDocument = {
            type = "string",
        },
        inputConversion = M.InputConversion,
        mapping = M.Mapping,
        outputConversion = M.OutputConversion,
        sampleDocuments = M.SampleDocuments,
    },
}

M.ListTransformersInput = {
    type = "structure",
    id = "ListTransformersInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.TransformerSummary = {
    type = "structure",
    id = "TransformerSummary",
    members = {
        transformerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        fileFormat = {
            type = "string",
            traits = {
                default = "NOT_USED",
            },
        },
        mappingTemplate = {
            type = "string",
            traits = {
                default = "NOT_USED",
            },
        },
        ediType = M.EdiType,
        sampleDocument = {
            type = "string",
        },
        inputConversion = M.InputConversion,
        mapping = M.Mapping,
        outputConversion = M.OutputConversion,
        sampleDocuments = M.SampleDocuments,
    },
}

M.ListTransformersOutput = {
    type = "structure",
    id = "ListTransformersOutput",
    members = {
        transformers = {
            type = "list",
            member = M.TransformerSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateTransformerInput = {
    type = "structure",
    id = "UpdateTransformerInput",
    members = {
        transformerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        fileFormat = {
            type = "string",
        },
        mappingTemplate = {
            type = "string",
        },
        ediType = M.EdiType,
        sampleDocument = {
            type = "string",
        },
        inputConversion = M.InputConversion,
        mapping = M.Mapping,
        outputConversion = M.OutputConversion,
        sampleDocuments = M.SampleDocuments,
    },
}

M.UpdateTransformerOutput = {
    type = "structure",
    id = "UpdateTransformerOutput",
    members = {
        transformerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        transformerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        modifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        fileFormat = {
            type = "string",
            traits = {
                default = "NOT_USED",
            },
        },
        mappingTemplate = {
            type = "string",
            traits = {
                default = "NOT_USED",
            },
        },
        ediType = M.EdiType,
        sampleDocument = {
            type = "string",
        },
        inputConversion = M.InputConversion,
        mapping = M.Mapping,
        outputConversion = M.OutputConversion,
        sampleDocuments = M.SampleDocuments,
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "TagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

return M
