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

M.NodeDataType = {
    INT8 = "INT8",
    UINT8 = "UINT8",
    INT16 = "INT16",
    UINT16 = "UINT16",
    INT32 = "INT32",
    UINT32 = "UINT32",
    INT64 = "INT64",
    UINT64 = "UINT64",
    BOOLEAN = "BOOLEAN",
    FLOAT = "FLOAT",
    DOUBLE = "DOUBLE",
    STRING = "STRING",
    UNIX_TIMESTAMP = "UNIX_TIMESTAMP",
    INT8_ARRAY = "INT8_ARRAY",
    UINT8_ARRAY = "UINT8_ARRAY",
    INT16_ARRAY = "INT16_ARRAY",
    UINT16_ARRAY = "UINT16_ARRAY",
    INT32_ARRAY = "INT32_ARRAY",
    UINT32_ARRAY = "UINT32_ARRAY",
    INT64_ARRAY = "INT64_ARRAY",
    UINT64_ARRAY = "UINT64_ARRAY",
    BOOLEAN_ARRAY = "BOOLEAN_ARRAY",
    FLOAT_ARRAY = "FLOAT_ARRAY",
    DOUBLE_ARRAY = "DOUBLE_ARRAY",
    STRING_ARRAY = "STRING_ARRAY",
    UNIX_TIMESTAMP_ARRAY = "UNIX_TIMESTAMP_ARRAY",
    UNKNOWN = "UNKNOWN",
    STRUCT = "STRUCT",
    STRUCT_ARRAY = "STRUCT_ARRAY",
}

M.Actuator = {
    type = "structure",
    id = "Actuator",
    members = {
        fullyQualifiedName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        unit = {
            type = "string",
        },
        allowedValues = {
            type = "list",
            member = { type = "string" },
        },
        min = {
            type = "double",
        },
        max = {
            type = "double",
        },
        assignedValue = {
            type = "string",
        },
        deprecationMessage = {
            type = "string",
        },
        comment = {
            type = "string",
        },
        structFullyQualifiedName = {
            type = "string",
        },
    },
}

M.AssociateVehicleFleetInput = {
    type = "structure",
    id = "AssociateVehicleFleetInput",
    members = {
        vehicleName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateVehicleFleetOutput = {
    type = "structure",
    id = "AssociateVehicleFleetOutput",
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
                default = 0,
                http_header = "Retry-After",
            },
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
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
        quotaCode = {
            type = "string",
        },
        serviceCode = {
            type = "string",
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                default = 0,
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.Attribute = {
    type = "structure",
    id = "Attribute",
    members = {
        fullyQualifiedName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        unit = {
            type = "string",
        },
        allowedValues = {
            type = "list",
            member = { type = "string" },
        },
        min = {
            type = "double",
        },
        max = {
            type = "double",
        },
        assignedValue = {
            type = "string",
        },
        defaultValue = {
            type = "string",
        },
        deprecationMessage = {
            type = "string",
        },
        comment = {
            type = "string",
        },
    },
}

M.VehicleAssociationBehavior = {
    CREATE_IOT_THING = "CreateIotThing",
    VALIDATE_IOT_THING_EXISTS = "ValidateIotThingExists",
}

M.OnChangeStateTemplateUpdateStrategy = {
    type = "structure",
    id = "OnChangeStateTemplateUpdateStrategy",
}

M.TimeUnit = {
    MILLISECOND = "MILLISECOND",
    SECOND = "SECOND",
    MINUTE = "MINUTE",
    HOUR = "HOUR",
}

M.TimePeriod = {
    type = "structure",
    id = "TimePeriod",
    members = {
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.PeriodicStateTemplateUpdateStrategy = {
    type = "structure",
    id = "PeriodicStateTemplateUpdateStrategy",
    members = {
        stateTemplateUpdateRate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimePeriod }),
    },
}

M.StateTemplateUpdateStrategy = {
    type = "union",
    id = "StateTemplateUpdateStrategy",
    members = {
        periodic = M.PeriodicStateTemplateUpdateStrategy,
        onChange = M.OnChangeStateTemplateUpdateStrategy,
    },
}

M.StateTemplateAssociation = {
    type = "structure",
    id = "StateTemplateAssociation",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stateTemplateUpdateStrategy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StateTemplateUpdateStrategy }),
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

M.CreateVehicleRequestItem = {
    type = "structure",
    id = "CreateVehicleRequestItem",
    members = {
        vehicleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelManifestArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        decoderManifestArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        associationBehavior = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        stateTemplates = {
            type = "list",
            member = M.StateTemplateAssociation,
        },
    },
}

M.BatchCreateVehicleInput = {
    type = "structure",
    id = "BatchCreateVehicleInput",
    members = {
        vehicles = {
            type = "list",
            member = M.CreateVehicleRequestItem,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateVehicleError = {
    type = "structure",
    id = "CreateVehicleError",
    members = {
        vehicleName = {
            type = "string",
        },
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.CreateVehicleResponseItem = {
    type = "structure",
    id = "CreateVehicleResponseItem",
    members = {
        vehicleName = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        thingArn = {
            type = "string",
        },
    },
}

M.BatchCreateVehicleOutput = {
    type = "structure",
    id = "BatchCreateVehicleOutput",
    members = {
        vehicles = {
            type = "list",
            member = M.CreateVehicleResponseItem,
        },
        errors = {
            type = "list",
            member = M.CreateVehicleError,
        },
    },
}

M.UpdateMode = {
    OVERWRITE = "Overwrite",
    MERGE = "Merge",
}

M.UpdateVehicleRequestItem = {
    type = "structure",
    id = "UpdateVehicleRequestItem",
    members = {
        vehicleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelManifestArn = {
            type = "string",
        },
        decoderManifestArn = {
            type = "string",
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        attributeUpdateMode = {
            type = "string",
        },
        stateTemplatesToAdd = {
            type = "list",
            member = M.StateTemplateAssociation,
        },
        stateTemplatesToRemove = {
            type = "list",
            member = { type = "string" },
        },
        stateTemplatesToUpdate = {
            type = "list",
            member = M.StateTemplateAssociation,
        },
    },
}

M.BatchUpdateVehicleInput = {
    type = "structure",
    id = "BatchUpdateVehicleInput",
    members = {
        vehicles = {
            type = "list",
            member = M.UpdateVehicleRequestItem,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateVehicleError = {
    type = "structure",
    id = "UpdateVehicleError",
    members = {
        vehicleName = {
            type = "string",
        },
        code = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        message = {
            type = "string",
        },
    },
}

M.UpdateVehicleResponseItem = {
    type = "structure",
    id = "UpdateVehicleResponseItem",
    members = {
        vehicleName = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.BatchUpdateVehicleOutput = {
    type = "structure",
    id = "BatchUpdateVehicleOutput",
    members = {
        vehicles = {
            type = "list",
            member = M.UpdateVehicleResponseItem,
        },
        errors = {
            type = "list",
            member = M.UpdateVehicleError,
        },
    },
}

M.Branch = {
    type = "structure",
    id = "Branch",
    members = {
        fullyQualifiedName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        deprecationMessage = {
            type = "string",
        },
        comment = {
            type = "string",
        },
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
        resource = {
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
    },
}

M.TriggerMode = {
    ALWAYS = "ALWAYS",
    RISING_EDGE = "RISING_EDGE",
}

M.ConditionBasedCollectionScheme = {
    type = "structure",
    id = "ConditionBasedCollectionScheme",
    members = {
        expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        minimumTriggerIntervalMs = {
            type = "long",
        },
        triggerMode = {
            type = "string",
        },
        conditionLanguageVersion = {
            type = "integer",
        },
    },
}

M.TimeBasedCollectionScheme = {
    type = "structure",
    id = "TimeBasedCollectionScheme",
    members = {
        periodMs = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.CollectionScheme = {
    type = "union",
    id = "CollectionScheme",
    members = {
        timeBasedCollectionScheme = M.TimeBasedCollectionScheme,
        conditionBasedCollectionScheme = M.ConditionBasedCollectionScheme,
    },
}

M.Compression = {
    OFF = "OFF",
    SNAPPY = "SNAPPY",
}

M.MqttTopicConfig = {
    type = "structure",
    id = "MqttTopicConfig",
    members = {
        mqttTopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataFormat = {
    JSON = "JSON",
    PARQUET = "PARQUET",
}

M.StorageCompressionFormat = {
    NONE = "NONE",
    GZIP = "GZIP",
}

M.S3Config = {
    type = "structure",
    id = "S3Config",
    members = {
        bucketArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataFormat = {
            type = "string",
        },
        storageCompressionFormat = {
            type = "string",
        },
        prefix = {
            type = "string",
        },
    },
}

M.TimestreamConfig = {
    type = "structure",
    id = "TimestreamConfig",
    members = {
        timestreamTableArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataDestinationConfig = {
    type = "union",
    id = "DataDestinationConfig",
    members = {
        s3Config = M.S3Config,
        timestreamConfig = M.TimestreamConfig,
        mqttTopicConfig = M.MqttTopicConfig,
    },
}

M.StorageMaximumSizeUnit = {
    MB = "MB",
    GB = "GB",
    TB = "TB",
}

M.StorageMaximumSize = {
    type = "structure",
    id = "StorageMaximumSize",
    members = {
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.StorageMinimumTimeToLiveUnit = {
    HOURS = "HOURS",
    DAYS = "DAYS",
    WEEKS = "WEEKS",
}

M.StorageMinimumTimeToLive = {
    type = "structure",
    id = "StorageMinimumTimeToLive",
    members = {
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.DataPartitionStorageOptions = {
    type = "structure",
    id = "DataPartitionStorageOptions",
    members = {
        maximumSize = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StorageMaximumSize }),
        storageLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        minimumTimeToLive = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StorageMinimumTimeToLive }),
    },
}

M.DataPartitionUploadOptions = {
    type = "structure",
    id = "DataPartitionUploadOptions",
    members = {
        expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        conditionLanguageVersion = {
            type = "integer",
        },
    },
}

M.DataPartition = {
    type = "structure",
    id = "DataPartition",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        storageOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataPartitionStorageOptions }),
        uploadOptions = M.DataPartitionUploadOptions,
    },
}

M.DiagnosticsMode = {
    OFF = "OFF",
    SEND_ACTIVE_DTCS = "SEND_ACTIVE_DTCS",
}

M.SignalInformation = {
    type = "structure",
    id = "SignalInformation",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxSampleCount = {
            type = "long",
        },
        minimumSamplingIntervalMs = {
            type = "long",
        },
        dataPartitionId = {
            type = "string",
        },
    },
}

M.ConditionBasedSignalFetchConfig = {
    type = "structure",
    id = "ConditionBasedSignalFetchConfig",
    members = {
        conditionExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        triggerMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TimeBasedSignalFetchConfig = {
    type = "structure",
    id = "TimeBasedSignalFetchConfig",
    members = {
        executionFrequencyMs = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.SignalFetchConfig = {
    type = "union",
    id = "SignalFetchConfig",
    members = {
        timeBased = M.TimeBasedSignalFetchConfig,
        conditionBased = M.ConditionBasedSignalFetchConfig,
    },
}

M.SignalFetchInformation = {
    type = "structure",
    id = "SignalFetchInformation",
    members = {
        fullyQualifiedName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        signalFetchConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SignalFetchConfig }),
        conditionLanguageVersion = {
            type = "integer",
        },
        actions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SpoolingMode = {
    OFF = "OFF",
    TO_DISK = "TO_DISK",
}

M.CreateCampaignInput = {
    type = "structure",
    id = "CreateCampaignInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        signalCatalogArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
        },
        expiryTime = {
            type = "timestamp",
        },
        postTriggerCollectionDuration = {
            type = "long",
        },
        diagnosticsMode = {
            type = "string",
        },
        spoolingMode = {
            type = "string",
        },
        compression = {
            type = "string",
        },
        priority = {
            type = "integer",
        },
        signalsToCollect = {
            type = "list",
            member = M.SignalInformation,
        },
        collectionScheme = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CollectionScheme }),
        dataExtraDimensions = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        dataDestinationConfigs = {
            type = "list",
            member = M.DataDestinationConfig,
        },
        dataPartitions = {
            type = "list",
            member = M.DataPartition,
        },
        signalsToFetch = {
            type = "list",
            member = M.SignalFetchInformation,
        },
    },
}

M.CreateCampaignOutput = {
    type = "structure",
    id = "CreateCampaignOutput",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.DeleteCampaignInput = {
    type = "structure",
    id = "DeleteCampaignInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCampaignOutput = {
    type = "structure",
    id = "DeleteCampaignOutput",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.GetCampaignInput = {
    type = "structure",
    id = "GetCampaignInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CampaignStatus = {
    CREATING = "CREATING",
    WAITING_FOR_APPROVAL = "WAITING_FOR_APPROVAL",
    RUNNING = "RUNNING",
    SUSPENDED = "SUSPENDED",
}

M.GetCampaignOutput = {
    type = "structure",
    id = "GetCampaignOutput",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        description = {
            type = "string",
        },
        signalCatalogArn = {
            type = "string",
        },
        targetArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        expiryTime = {
            type = "timestamp",
        },
        postTriggerCollectionDuration = {
            type = "long",
        },
        diagnosticsMode = {
            type = "string",
        },
        spoolingMode = {
            type = "string",
        },
        compression = {
            type = "string",
        },
        priority = {
            type = "integer",
        },
        signalsToCollect = {
            type = "list",
            member = M.SignalInformation,
        },
        collectionScheme = M.CollectionScheme,
        dataExtraDimensions = {
            type = "list",
            member = { type = "string" },
        },
        creationTime = {
            type = "timestamp",
        },
        lastModificationTime = {
            type = "timestamp",
        },
        dataDestinationConfigs = {
            type = "list",
            member = M.DataDestinationConfig,
        },
        dataPartitions = {
            type = "list",
            member = M.DataPartition,
        },
        signalsToFetch = {
            type = "list",
            member = M.SignalFetchInformation,
        },
    },
}

M.ListResponseScope = {
    METADATA_ONLY = "METADATA_ONLY",
}

M.ListCampaignsInput = {
    type = "structure",
    id = "ListCampaignsInput",
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
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        listResponseScope = {
            type = "string",
            traits = {
                http_query = "listResponseScope",
            },
        },
    },
}

M.CampaignSummary = {
    type = "structure",
    id = "CampaignSummary",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        signalCatalogArn = {
            type = "string",
        },
        targetArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModificationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCampaignsOutput = {
    type = "structure",
    id = "ListCampaignsOutput",
    members = {
        campaignSummaries = {
            type = "list",
            member = M.CampaignSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateCampaignAction = {
    APPROVE = "APPROVE",
    SUSPEND = "SUSPEND",
    RESUME = "RESUME",
    UPDATE = "UPDATE",
}

M.UpdateCampaignInput = {
    type = "structure",
    id = "UpdateCampaignInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        dataExtraDimensions = {
            type = "list",
            member = { type = "string" },
        },
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCampaignOutput = {
    type = "structure",
    id = "UpdateCampaignOutput",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.CanDbcDefinition = {
    type = "structure",
    id = "CanDbcDefinition",
    members = {
        networkInterface = {
            type = "string",
            traits = {
                required = true,
            },
        },
        canDbcFiles = {
            type = "list",
            member = { type = "blob" },
            traits = {
                required = true,
            },
        },
        signalsMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CanInterface = {
    type = "structure",
    id = "CanInterface",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        protocolName = {
            type = "string",
        },
        protocolVersion = {
            type = "string",
        },
    },
}

M.SignalValueType = {
    INTEGER = "INTEGER",
    FLOATING_POINT = "FLOATING_POINT",
}

M.CanSignal = {
    type = "structure",
    id = "CanSignal",
    members = {
        messageId = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        isBigEndian = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        isSigned = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        startBit = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        offset = {
            type = "double",
            traits = {
                required = true,
            },
        },
        factor = {
            type = "double",
            traits = {
                required = true,
            },
        },
        length = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        signalValueType = {
            type = "string",
        },
    },
}

M.LogType = {
    OFF = "OFF",
    ERROR = "ERROR",
}

M.CloudWatchLogDeliveryOptions = {
    type = "structure",
    id = "CloudWatchLogDeliveryOptions",
    members = {
        logType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logGroupName = {
            type = "string",
        },
    },
}

M.DefaultForUnmappedSignalsType = {
    CUSTOM_DECODING = "CUSTOM_DECODING",
}

M.CustomDecodingInterface = {
    type = "structure",
    id = "CustomDecodingInterface",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ObdInterface = {
    type = "structure",
    id = "ObdInterface",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestMessageId = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        obdStandard = {
            type = "string",
        },
        pidRequestIntervalSeconds = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        dtcRequestIntervalSeconds = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        useExtendedIds = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        hasTransmissionEcu = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.NetworkInterfaceType = {
    CAN_INTERFACE = "CAN_INTERFACE",
    OBD_INTERFACE = "OBD_INTERFACE",
    VEHICLE_MIDDLEWARE = "VEHICLE_MIDDLEWARE",
    CUSTOM_DECODING_INTERFACE = "CUSTOM_DECODING_INTERFACE",
}

M.VehicleMiddlewareProtocol = {
    ROS_2 = "ROS_2",
}

M.VehicleMiddleware = {
    type = "structure",
    id = "VehicleMiddleware",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        protocolName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NetworkInterface = {
    type = "structure",
    id = "NetworkInterface",
    members = {
        interfaceId = {
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
        canInterface = M.CanInterface,
        obdInterface = M.ObdInterface,
        vehicleMiddleware = M.VehicleMiddleware,
        customDecodingInterface = M.CustomDecodingInterface,
    },
}

M.CustomDecodingSignal = {
    type = "structure",
    id = "CustomDecodingSignal",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ROS2PrimitiveType = {
    BOOL = "BOOL",
    BYTE = "BYTE",
    CHAR = "CHAR",
    FLOAT32 = "FLOAT32",
    FLOAT64 = "FLOAT64",
    INT8 = "INT8",
    UINT8 = "UINT8",
    INT16 = "INT16",
    UINT16 = "UINT16",
    INT32 = "INT32",
    UINT32 = "UINT32",
    INT64 = "INT64",
    UINT64 = "UINT64",
    STRING = "STRING",
    WSTRING = "WSTRING",
}

M.ROS2PrimitiveMessageDefinition = {
    type = "structure",
    id = "ROS2PrimitiveMessageDefinition",
    members = {
        primitiveType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        offset = {
            type = "double",
        },
        scaling = {
            type = "double",
        },
        upperBound = {
            type = "long",
        },
    },
}

M.PrimitiveMessageDefinition = {
    type = "union",
    id = "PrimitiveMessageDefinition",
    members = {
        ros2PrimitiveMessageDefinition = M.ROS2PrimitiveMessageDefinition,
    },
}

M.StructuredMessageListType = {
    FIXED_CAPACITY = "FIXED_CAPACITY",
    DYNAMIC_UNBOUNDED_CAPACITY = "DYNAMIC_UNBOUNDED_CAPACITY",
    DYNAMIC_BOUNDED_CAPACITY = "DYNAMIC_BOUNDED_CAPACITY",
}

M.ObdSignal = {
    type = "structure",
    id = "ObdSignal",
    members = {
        pidResponseLength = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        serviceMode = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        pid = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        scaling = {
            type = "double",
            traits = {
                required = true,
            },
        },
        offset = {
            type = "double",
            traits = {
                required = true,
            },
        },
        startByte = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        byteLength = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        bitRightShift = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        bitMaskLength = {
            type = "integer",
        },
        isSigned = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        signalValueType = {
            type = "string",
        },
    },
}

M.SignalDecoderType = {
    CAN_SIGNAL = "CAN_SIGNAL",
    OBD_SIGNAL = "OBD_SIGNAL",
    MESSAGE_SIGNAL = "MESSAGE_SIGNAL",
    CUSTOM_DECODING_SIGNAL = "CUSTOM_DECODING_SIGNAL",
}

M.CreateDecoderManifestOutput = {
    type = "structure",
    id = "CreateDecoderManifestOutput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NetworkInterfaceFailureReason = {
    DUPLICATE_INTERFACE = "DUPLICATE_NETWORK_INTERFACE",
    CONFLICTING_NETWORK_INTERFACE = "CONFLICTING_NETWORK_INTERFACE",
    NETWORK_INTERFACE_TO_ADD_ALREADY_EXISTS = "NETWORK_INTERFACE_TO_ADD_ALREADY_EXISTS",
    CAN_NETWORK_INTERFACE_INFO_IS_NULL = "CAN_NETWORK_INTERFACE_INFO_IS_NULL",
    OBD_NETWORK_INTERFACE_INFO_IS_NULL = "OBD_NETWORK_INTERFACE_INFO_IS_NULL",
    NETWORK_INTERFACE_TO_REMOVE_ASSOCIATED_WITH_SIGNALS = "NETWORK_INTERFACE_TO_REMOVE_ASSOCIATED_WITH_SIGNALS",
    VEHICLE_MIDDLEWARE_NETWORK_INTERFACE_INFO_IS_NULL = "VEHICLE_MIDDLEWARE_NETWORK_INTERFACE_INFO_IS_NULL",
    CUSTOM_DECODING_SIGNAL_NETWORK_INTERFACE_INFO_IS_NULL = "CUSTOM_DECODING_SIGNAL_NETWORK_INTERFACE_INFO_IS_NULL",
}

M.InvalidNetworkInterface = {
    type = "structure",
    id = "InvalidNetworkInterface",
    members = {
        interfaceId = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.SignalDecoderFailureReason = {
    DUPLICATE_SIGNAL = "DUPLICATE_SIGNAL",
    CONFLICTING_SIGNAL = "CONFLICTING_SIGNAL",
    SIGNAL_TO_ADD_ALREADY_EXISTS = "SIGNAL_TO_ADD_ALREADY_EXISTS",
    SIGNAL_NOT_ASSOCIATED_WITH_NETWORK_INTERFACE = "SIGNAL_NOT_ASSOCIATED_WITH_NETWORK_INTERFACE",
    NETWORK_INTERFACE_TYPE_INCOMPATIBLE_WITH_SIGNAL_DECODER_TYPE = "NETWORK_INTERFACE_TYPE_INCOMPATIBLE_WITH_SIGNAL_DECODER_TYPE",
    SIGNAL_NOT_IN_MODEL = "SIGNAL_NOT_IN_MODEL",
    CAN_SIGNAL_INFO_IS_NULL = "CAN_SIGNAL_INFO_IS_NULL",
    OBD_SIGNAL_INFO_IS_NULL = "OBD_SIGNAL_INFO_IS_NULL",
    NO_DECODER_INFO_FOR_SIGNAL_IN_MODEL = "NO_DECODER_INFO_FOR_SIGNAL_IN_MODEL",
    MESSAGE_SIGNAL_INFO_IS_NULL = "MESSAGE_SIGNAL_INFO_IS_NULL",
    SIGNAL_DECODER_TYPE_INCOMPATIBLE_WITH_MESSAGE_SIGNAL_TYPE = "SIGNAL_DECODER_TYPE_INCOMPATIBLE_WITH_MESSAGE_SIGNAL_TYPE",
    STRUCT_SIZE_MISMATCH = "STRUCT_SIZE_MISMATCH",
    NO_SIGNAL_IN_CATALOG_FOR_DECODER_SIGNAL = "NO_SIGNAL_IN_CATALOG_FOR_DECODER_SIGNAL",
    SIGNAL_DECODER_INCOMPATIBLE_WITH_SIGNAL_CATALOG = "SIGNAL_DECODER_INCOMPATIBLE_WITH_SIGNAL_CATALOG",
    EMPTY_MESSAGE_SIGNAL = "EMPTY_MESSAGE_SIGNAL",
    CUSTOM_DECODING_SIGNAL_INFO_IS_NULL = "CUSTOM_DECODING_SIGNAL_INFO_IS_NULL",
}

M.InvalidSignalDecoder = {
    type = "structure",
    id = "InvalidSignalDecoder",
    members = {
        name = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        hint = {
            type = "string",
        },
    },
}

M.DecoderManifestValidationException = {
    type = "structure",
    id = "DecoderManifestValidationException",
    error = "client",
    members = {
        invalidSignals = {
            type = "list",
            member = M.InvalidSignalDecoder,
        },
        invalidNetworkInterfaces = {
            type = "list",
            member = M.InvalidNetworkInterface,
        },
        message = {
            type = "string",
        },
    },
}

M.CreateFleetInput = {
    type = "structure",
    id = "CreateFleetInput",
    members = {
        fleetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        signalCatalogArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateFleetOutput = {
    type = "structure",
    id = "CreateFleetOutput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateModelManifestInput = {
    type = "structure",
    id = "CreateModelManifestInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        nodes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        signalCatalogArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateModelManifestOutput = {
    type = "structure",
    id = "CreateModelManifestOutput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidSignal = {
    type = "structure",
    id = "InvalidSignal",
    members = {
        name = {
            type = "string",
        },
        reason = {
            type = "string",
        },
    },
}

M.InvalidSignalsException = {
    type = "structure",
    id = "InvalidSignalsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        invalidSignals = {
            type = "list",
            member = M.InvalidSignal,
        },
    },
}

M.NodeDataEncoding = {
    BINARY = "BINARY",
    TYPED = "TYPED",
}

M.CustomProperty = {
    type = "structure",
    id = "CustomProperty",
    members = {
        fullyQualifiedName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataEncoding = {
            type = "string",
        },
        description = {
            type = "string",
        },
        deprecationMessage = {
            type = "string",
        },
        comment = {
            type = "string",
        },
        structFullyQualifiedName = {
            type = "string",
        },
    },
}

M.Sensor = {
    type = "structure",
    id = "Sensor",
    members = {
        fullyQualifiedName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        unit = {
            type = "string",
        },
        allowedValues = {
            type = "list",
            member = { type = "string" },
        },
        min = {
            type = "double",
        },
        max = {
            type = "double",
        },
        deprecationMessage = {
            type = "string",
        },
        comment = {
            type = "string",
        },
        structFullyQualifiedName = {
            type = "string",
        },
    },
}

M.CustomStruct = {
    type = "structure",
    id = "CustomStruct",
    members = {
        fullyQualifiedName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        deprecationMessage = {
            type = "string",
        },
        comment = {
            type = "string",
        },
    },
}

M.Node = {
    type = "union",
    id = "Node",
    members = {
        branch = M.Branch,
        sensor = M.Sensor,
        actuator = M.Actuator,
        attribute = M.Attribute,
        struct = M.CustomStruct,
        property = M.CustomProperty,
    },
}

M.CreateSignalCatalogInput = {
    type = "structure",
    id = "CreateSignalCatalogInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        nodes = {
            type = "list",
            member = M.Node,
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateSignalCatalogOutput = {
    type = "structure",
    id = "CreateSignalCatalogOutput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidNodeException = {
    type = "structure",
    id = "InvalidNodeException",
    error = "client",
    members = {
        invalidNodes = {
            type = "list",
            member = M.Node,
        },
        reason = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.CreateStateTemplateInput = {
    type = "structure",
    id = "CreateStateTemplateInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        signalCatalogArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stateTemplateProperties = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        dataExtraDimensions = {
            type = "list",
            member = { type = "string" },
        },
        metadataExtraDimensions = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateStateTemplateOutput = {
    type = "structure",
    id = "CreateStateTemplateOutput",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
    },
}

M.CreateVehicleInput = {
    type = "structure",
    id = "CreateVehicleInput",
    members = {
        vehicleName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        modelManifestArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        decoderManifestArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        associationBehavior = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        stateTemplates = {
            type = "list",
            member = M.StateTemplateAssociation,
        },
    },
}

M.CreateVehicleOutput = {
    type = "structure",
    id = "CreateVehicleOutput",
    members = {
        vehicleName = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        thingArn = {
            type = "string",
        },
    },
}

M.DeleteDecoderManifestInput = {
    type = "structure",
    id = "DeleteDecoderManifestInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDecoderManifestOutput = {
    type = "structure",
    id = "DeleteDecoderManifestOutput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDecoderManifestInput = {
    type = "structure",
    id = "GetDecoderManifestInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ManifestStatus = {
    ACTIVE = "ACTIVE",
    DRAFT = "DRAFT",
    INVALID = "INVALID",
    VALIDATING = "VALIDATING",
}

M.GetDecoderManifestOutput = {
    type = "structure",
    id = "GetDecoderManifestOutput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        modelManifestArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModificationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
        },
    },
}

M.NetworkFileDefinition = {
    type = "union",
    id = "NetworkFileDefinition",
    members = {
        canDbc = M.CanDbcDefinition,
    },
}

M.ImportDecoderManifestInput = {
    type = "structure",
    id = "ImportDecoderManifestInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        networkFileDefinitions = {
            type = "list",
            member = M.NetworkFileDefinition,
            traits = {
                required = true,
            },
        },
    },
}

M.ImportDecoderManifestOutput = {
    type = "structure",
    id = "ImportDecoderManifestOutput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDecoderManifestNetworkInterfacesInput = {
    type = "structure",
    id = "ListDecoderManifestNetworkInterfacesInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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

M.ListDecoderManifestNetworkInterfacesOutput = {
    type = "structure",
    id = "ListDecoderManifestNetworkInterfacesOutput",
    members = {
        networkInterfaces = {
            type = "list",
            member = M.NetworkInterface,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDecoderManifestsInput = {
    type = "structure",
    id = "ListDecoderManifestsInput",
    members = {
        modelManifestArn = {
            type = "string",
            traits = {
                http_query = "modelManifestArn",
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
        listResponseScope = {
            type = "string",
            traits = {
                http_query = "listResponseScope",
            },
        },
    },
}

M.DecoderManifestSummary = {
    type = "structure",
    id = "DecoderManifestSummary",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        modelManifestArn = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModificationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
        },
    },
}

M.ListDecoderManifestsOutput = {
    type = "structure",
    id = "ListDecoderManifestsOutput",
    members = {
        summaries = {
            type = "list",
            member = M.DecoderManifestSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDecoderManifestSignalsInput = {
    type = "structure",
    id = "ListDecoderManifestSignalsInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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

M.UpdateDecoderManifestOutput = {
    type = "structure",
    id = "UpdateDecoderManifestOutput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteFleetInput = {
    type = "structure",
    id = "DeleteFleetInput",
    members = {
        fleetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFleetOutput = {
    type = "structure",
    id = "DeleteFleetOutput",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.DeleteModelManifestInput = {
    type = "structure",
    id = "DeleteModelManifestInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteModelManifestOutput = {
    type = "structure",
    id = "DeleteModelManifestOutput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSignalCatalogInput = {
    type = "structure",
    id = "DeleteSignalCatalogInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSignalCatalogOutput = {
    type = "structure",
    id = "DeleteSignalCatalogOutput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteStateTemplateInput = {
    type = "structure",
    id = "DeleteStateTemplateInput",
    members = {
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteStateTemplateOutput = {
    type = "structure",
    id = "DeleteStateTemplateOutput",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
    },
}

M.DeleteVehicleInput = {
    type = "structure",
    id = "DeleteVehicleInput",
    members = {
        vehicleName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteVehicleOutput = {
    type = "structure",
    id = "DeleteVehicleOutput",
    members = {
        vehicleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateVehicleFleetInput = {
    type = "structure",
    id = "DisassociateVehicleFleetInput",
    members = {
        vehicleName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateVehicleFleetOutput = {
    type = "structure",
    id = "DisassociateVehicleFleetOutput",
}

M.EncryptionStatus = {
    PENDING = "PENDING",
    SUCCESS = "SUCCESS",
    FAILURE = "FAILURE",
}

M.EncryptionType = {
    KMS_BASED_ENCRYPTION = "KMS_BASED_ENCRYPTION",
    FLEETWISE_DEFAULT_ENCRYPTION = "FLEETWISE_DEFAULT_ENCRYPTION",
}

M.ListFleetsForVehicleInput = {
    type = "structure",
    id = "ListFleetsForVehicleInput",
    members = {
        vehicleName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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

M.ListFleetsForVehicleOutput = {
    type = "structure",
    id = "ListFleetsForVehicleOutput",
    members = {
        fleets = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetFleetInput = {
    type = "structure",
    id = "GetFleetInput",
    members = {
        fleetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetFleetOutput = {
    type = "structure",
    id = "GetFleetOutput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        signalCatalogArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModificationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListFleetsInput = {
    type = "structure",
    id = "ListFleetsInput",
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
        listResponseScope = {
            type = "string",
            traits = {
                http_query = "listResponseScope",
            },
        },
    },
}

M.FleetSummary = {
    type = "structure",
    id = "FleetSummary",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        signalCatalogArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModificationTime = {
            type = "timestamp",
        },
    },
}

M.ListFleetsOutput = {
    type = "structure",
    id = "ListFleetsOutput",
    members = {
        fleetSummaries = {
            type = "list",
            member = M.FleetSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateFleetInput = {
    type = "structure",
    id = "UpdateFleetInput",
    members = {
        fleetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateFleetOutput = {
    type = "structure",
    id = "UpdateFleetOutput",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.ListVehiclesInFleetInput = {
    type = "structure",
    id = "ListVehiclesInFleetInput",
    members = {
        fleetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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

M.ListVehiclesInFleetOutput = {
    type = "structure",
    id = "ListVehiclesInFleetOutput",
    members = {
        vehicles = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.FormattedVss = {
    type = "union",
    id = "FormattedVss",
    members = {
        vssJson = {
            type = "string",
        },
    },
}

M.GetEncryptionConfigurationInput = {
    type = "structure",
    id = "GetEncryptionConfigurationInput",
}

M.GetEncryptionConfigurationOutput = {
    type = "structure",
    id = "GetEncryptionConfigurationOutput",
    members = {
        kmsKeyId = {
            type = "string",
        },
        encryptionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encryptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastModificationTime = {
            type = "timestamp",
        },
    },
}

M.GetLoggingOptionsInput = {
    type = "structure",
    id = "GetLoggingOptionsInput",
}

M.GetLoggingOptionsOutput = {
    type = "structure",
    id = "GetLoggingOptionsOutput",
    members = {
        cloudWatchLogDelivery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CloudWatchLogDeliveryOptions }),
    },
}

M.GetModelManifestInput = {
    type = "structure",
    id = "GetModelManifestInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetModelManifestOutput = {
    type = "structure",
    id = "GetModelManifestOutput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        signalCatalogArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModificationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRegisterAccountStatusInput = {
    type = "structure",
    id = "GetRegisterAccountStatusInput",
}

M.RegistrationStatus = {
    REGISTRATION_PENDING = "REGISTRATION_PENDING",
    REGISTRATION_SUCCESS = "REGISTRATION_SUCCESS",
    REGISTRATION_FAILURE = "REGISTRATION_FAILURE",
}

M.IamRegistrationResponse = {
    type = "structure",
    id = "IamRegistrationResponse",
    members = {
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        registrationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.TimestreamRegistrationResponse = {
    type = "structure",
    id = "TimestreamRegistrationResponse",
    members = {
        timestreamDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestreamTableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestreamDatabaseArn = {
            type = "string",
        },
        timestreamTableArn = {
            type = "string",
        },
        registrationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.GetRegisterAccountStatusOutput = {
    type = "structure",
    id = "GetRegisterAccountStatusOutput",
    members = {
        customerAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestreamRegistrationResponse = M.TimestreamRegistrationResponse,
        iamRegistrationResponse = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IamRegistrationResponse }),
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModificationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSignalCatalogInput = {
    type = "structure",
    id = "GetSignalCatalogInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.NodeCounts = {
    type = "structure",
    id = "NodeCounts",
    members = {
        totalNodes = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        totalBranches = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        totalSensors = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        totalAttributes = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        totalActuators = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        totalStructs = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        totalProperties = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetSignalCatalogOutput = {
    type = "structure",
    id = "GetSignalCatalogOutput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        nodeCounts = M.NodeCounts,
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModificationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetStateTemplateInput = {
    type = "structure",
    id = "GetStateTemplateInput",
    members = {
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetStateTemplateOutput = {
    type = "structure",
    id = "GetStateTemplateOutput",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        description = {
            type = "string",
        },
        signalCatalogArn = {
            type = "string",
        },
        stateTemplateProperties = {
            type = "list",
            member = { type = "string" },
        },
        dataExtraDimensions = {
            type = "list",
            member = { type = "string" },
        },
        metadataExtraDimensions = {
            type = "list",
            member = { type = "string" },
        },
        creationTime = {
            type = "timestamp",
        },
        lastModificationTime = {
            type = "timestamp",
        },
        id = {
            type = "string",
        },
    },
}

M.GetVehicleInput = {
    type = "structure",
    id = "GetVehicleInput",
    members = {
        vehicleName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetVehicleOutput = {
    type = "structure",
    id = "GetVehicleOutput",
    members = {
        vehicleName = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        modelManifestArn = {
            type = "string",
        },
        decoderManifestArn = {
            type = "string",
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        stateTemplates = {
            type = "list",
            member = M.StateTemplateAssociation,
        },
        creationTime = {
            type = "timestamp",
        },
        lastModificationTime = {
            type = "timestamp",
        },
    },
}

M.GetVehicleStatusInput = {
    type = "structure",
    id = "GetVehicleStatusInput",
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
        vehicleName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.VehicleState = {
    CREATED = "CREATED",
    READY = "READY",
    HEALTHY = "HEALTHY",
    SUSPENDED = "SUSPENDED",
    DELETING = "DELETING",
    READY_FOR_CHECKIN = "READY_FOR_CHECKIN",
}

M.VehicleStatus = {
    type = "structure",
    id = "VehicleStatus",
    members = {
        campaignName = {
            type = "string",
        },
        vehicleName = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.GetVehicleStatusOutput = {
    type = "structure",
    id = "GetVehicleStatusOutput",
    members = {
        campaigns = {
            type = "list",
            member = M.VehicleStatus,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.IamResources = {
    type = "structure",
    id = "IamResources",
    members = {
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportSignalCatalogInput = {
    type = "structure",
    id = "ImportSignalCatalogInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        vss = M.FormattedVss,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ImportSignalCatalogOutput = {
    type = "structure",
    id = "ImportSignalCatalogOutput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
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
                http_query = "resourceArn",
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

M.ListModelManifestNodesInput = {
    type = "structure",
    id = "ListModelManifestNodesInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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

M.ListModelManifestNodesOutput = {
    type = "structure",
    id = "ListModelManifestNodesOutput",
    members = {
        nodes = {
            type = "list",
            member = M.Node,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListModelManifestsInput = {
    type = "structure",
    id = "ListModelManifestsInput",
    members = {
        signalCatalogArn = {
            type = "string",
            traits = {
                http_query = "signalCatalogArn",
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
        listResponseScope = {
            type = "string",
            traits = {
                http_query = "listResponseScope",
            },
        },
    },
}

M.ModelManifestSummary = {
    type = "structure",
    id = "ModelManifestSummary",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        signalCatalogArn = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModificationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListModelManifestsOutput = {
    type = "structure",
    id = "ListModelManifestsOutput",
    members = {
        summaries = {
            type = "list",
            member = M.ModelManifestSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateModelManifestInput = {
    type = "structure",
    id = "UpdateModelManifestInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        nodesToAdd = {
            type = "list",
            member = { type = "string" },
        },
        nodesToRemove = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
    },
}

M.UpdateModelManifestOutput = {
    type = "structure",
    id = "UpdateModelManifestOutput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutEncryptionConfigurationInput = {
    type = "structure",
    id = "PutEncryptionConfigurationInput",
    members = {
        kmsKeyId = {
            type = "string",
        },
        encryptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutEncryptionConfigurationOutput = {
    type = "structure",
    id = "PutEncryptionConfigurationOutput",
    members = {
        kmsKeyId = {
            type = "string",
        },
        encryptionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encryptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutLoggingOptionsInput = {
    type = "structure",
    id = "PutLoggingOptionsInput",
    members = {
        cloudWatchLogDelivery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CloudWatchLogDeliveryOptions }),
    },
}

M.PutLoggingOptionsOutput = {
    type = "structure",
    id = "PutLoggingOptionsOutput",
}

M.TimestreamResources = {
    type = "structure",
    id = "TimestreamResources",
    members = {
        timestreamDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestreamTableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterAccountInput = {
    type = "structure",
    id = "RegisterAccountInput",
    members = {
        timestreamResources = M.TimestreamResources,
        iamResources = M.IamResources,
    },
}

M.RegisterAccountOutput = {
    type = "structure",
    id = "RegisterAccountOutput",
    members = {
        registerAccountStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestreamResources = M.TimestreamResources,
        iamResources = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IamResources }),
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModificationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.SignalNodeType = {
    SENSOR = "SENSOR",
    ACTUATOR = "ACTUATOR",
    ATTRIBUTE = "ATTRIBUTE",
    BRANCH = "BRANCH",
    CUSTOM_STRUCT = "CUSTOM_STRUCT",
    CUSTOM_PROPERTY = "CUSTOM_PROPERTY",
}

M.ListSignalCatalogNodesInput = {
    type = "structure",
    id = "ListSignalCatalogNodesInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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
        signalNodeType = {
            type = "string",
            traits = {
                http_query = "signalNodeType",
            },
        },
    },
}

M.ListSignalCatalogNodesOutput = {
    type = "structure",
    id = "ListSignalCatalogNodesOutput",
    members = {
        nodes = {
            type = "list",
            member = M.Node,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSignalCatalogsInput = {
    type = "structure",
    id = "ListSignalCatalogsInput",
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

M.SignalCatalogSummary = {
    type = "structure",
    id = "SignalCatalogSummary",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastModificationTime = {
            type = "timestamp",
        },
    },
}

M.ListSignalCatalogsOutput = {
    type = "structure",
    id = "ListSignalCatalogsOutput",
    members = {
        summaries = {
            type = "list",
            member = M.SignalCatalogSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateSignalCatalogInput = {
    type = "structure",
    id = "UpdateSignalCatalogInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        nodesToAdd = {
            type = "list",
            member = M.Node,
        },
        nodesToUpdate = {
            type = "list",
            member = M.Node,
        },
        nodesToRemove = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateSignalCatalogOutput = {
    type = "structure",
    id = "UpdateSignalCatalogOutput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListStateTemplatesInput = {
    type = "structure",
    id = "ListStateTemplatesInput",
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
        listResponseScope = {
            type = "string",
            traits = {
                http_query = "listResponseScope",
            },
        },
    },
}

M.StateTemplateSummary = {
    type = "structure",
    id = "StateTemplateSummary",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        signalCatalogArn = {
            type = "string",
        },
        description = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastModificationTime = {
            type = "timestamp",
        },
        id = {
            type = "string",
        },
    },
}

M.ListStateTemplatesOutput = {
    type = "structure",
    id = "ListStateTemplatesOutput",
    members = {
        summaries = {
            type = "list",
            member = M.StateTemplateSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateStateTemplateInput = {
    type = "structure",
    id = "UpdateStateTemplateInput",
    members = {
        identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        stateTemplatePropertiesToAdd = {
            type = "list",
            member = { type = "string" },
        },
        stateTemplatePropertiesToRemove = {
            type = "list",
            member = { type = "string" },
        },
        dataExtraDimensions = {
            type = "list",
            member = { type = "string" },
        },
        metadataExtraDimensions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateStateTemplateOutput = {
    type = "structure",
    id = "UpdateStateTemplateOutput",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        id = {
            type = "string",
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
                http_query = "resourceArn",
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

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.ListVehiclesInput = {
    type = "structure",
    id = "ListVehiclesInput",
    members = {
        modelManifestArn = {
            type = "string",
            traits = {
                http_query = "modelManifestArn",
            },
        },
        attributeNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "attributeNames",
            },
        },
        attributeValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "attributeValues",
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
        listResponseScope = {
            type = "string",
            traits = {
                http_query = "listResponseScope",
            },
        },
    },
}

M.VehicleSummary = {
    type = "structure",
    id = "VehicleSummary",
    members = {
        vehicleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelManifestArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        decoderManifestArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastModificationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListVehiclesOutput = {
    type = "structure",
    id = "ListVehiclesOutput",
    members = {
        vehicleSummaries = {
            type = "list",
            member = M.VehicleSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateVehicleInput = {
    type = "structure",
    id = "UpdateVehicleInput",
    members = {
        vehicleName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        modelManifestArn = {
            type = "string",
        },
        decoderManifestArn = {
            type = "string",
        },
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        attributeUpdateMode = {
            type = "string",
        },
        stateTemplatesToAdd = {
            type = "list",
            member = M.StateTemplateAssociation,
        },
        stateTemplatesToRemove = {
            type = "list",
            member = { type = "string" },
        },
        stateTemplatesToUpdate = {
            type = "list",
            member = M.StateTemplateAssociation,
        },
    },
}

M.UpdateVehicleOutput = {
    type = "structure",
    id = "UpdateVehicleOutput",
    members = {
        vehicleName = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.StructuredMessage = {
    type = "union",
    id = "StructuredMessage",
    members = {
        primitiveMessageDefinition = M.PrimitiveMessageDefinition,
        structuredMessageListDefinition = M.StructuredMessageListDefinition,
        structuredMessageDefinition = {
            type = "list",
            member = M.StructuredMessageFieldNameAndDataTypePair,
        },
    },
}

M.StructuredMessageFieldNameAndDataTypePair = {
    type = "structure",
    id = "StructuredMessageFieldNameAndDataTypePair",
    members = {
        fieldName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StructuredMessage }),
    },
}

M.StructuredMessageListDefinition = {
    type = "structure",
    id = "StructuredMessageListDefinition",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        memberType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StructuredMessage }),
        listType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        capacity = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.MessageSignal = {
    type = "structure",
    id = "MessageSignal",
    members = {
        topicName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        structuredMessage = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StructuredMessage }),
    },
}

M.SignalDecoder = {
    type = "structure",
    id = "SignalDecoder",
    members = {
        fullyQualifiedName = {
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
        interfaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        canSignal = M.CanSignal,
        obdSignal = M.ObdSignal,
        messageSignal = M.MessageSignal,
        customDecodingSignal = M.CustomDecodingSignal,
    },
}

M.CreateDecoderManifestInput = {
    type = "structure",
    id = "CreateDecoderManifestInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        modelManifestArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        signalDecoders = {
            type = "list",
            member = M.SignalDecoder,
        },
        networkInterfaces = {
            type = "list",
            member = M.NetworkInterface,
        },
        defaultForUnmappedSignals = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListDecoderManifestSignalsOutput = {
    type = "structure",
    id = "ListDecoderManifestSignalsOutput",
    members = {
        signalDecoders = {
            type = "list",
            member = M.SignalDecoder,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateDecoderManifestInput = {
    type = "structure",
    id = "UpdateDecoderManifestInput",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        signalDecodersToAdd = {
            type = "list",
            member = M.SignalDecoder,
        },
        signalDecodersToUpdate = {
            type = "list",
            member = M.SignalDecoder,
        },
        signalDecodersToRemove = {
            type = "list",
            member = { type = "string" },
        },
        networkInterfacesToAdd = {
            type = "list",
            member = M.NetworkInterface,
        },
        networkInterfacesToUpdate = {
            type = "list",
            member = M.NetworkInterface,
        },
        networkInterfacesToRemove = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        defaultForUnmappedSignals = {
            type = "string",
        },
    },
}

return M
