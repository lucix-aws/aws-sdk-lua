local M = {}

M.AccessDeniedException = {
    type = "structure",
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
            member_type = "string",
        },
        min = {
            type = "number",
        },
        max = {
            type = "number",
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
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.LimitExceededException = {
    type = "structure",
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
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.Attribute = {
    type = "structure",
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
            member_type = "string",
        },
        min = {
            type = "number",
        },
        max = {
            type = "number",
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
}

M.TimeUnit = {
    MILLISECOND = "MILLISECOND",
    SECOND = "SECOND",
    MINUTE = "MINUTE",
    HOUR = "HOUR",
}

M.TimePeriod = {
    type = "structure",
    members = {
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.PeriodicStateTemplateUpdateStrategy = {
    type = "structure",
    members = {
        stateTemplateUpdateRate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StateTemplateUpdateStrategy = {
    type = "union",
    members = {
        periodic = {
            type = "structure",
        },
        onChange = {
            type = "structure",
        },
    },
}

M.StateTemplateAssociation = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stateTemplateUpdateStrategy = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.Tag = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        associationBehavior = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        stateTemplates = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchCreateVehicleInput = {
    type = "structure",
    members = {
        vehicles = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateVehicleError = {
    type = "structure",
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
    members = {
        vehicles = {
            type = "list",
            member_type = "structure",
        },
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateMode = {
    OVERWRITE = "Overwrite",
    MERGE = "Merge",
}

M.UpdateVehicleRequestItem = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        attributeUpdateMode = {
            type = "string",
        },
        stateTemplatesToAdd = {
            type = "list",
            member_type = "structure",
        },
        stateTemplatesToRemove = {
            type = "list",
            member_type = "string",
        },
        stateTemplatesToUpdate = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchUpdateVehicleInput = {
    type = "structure",
    members = {
        vehicles = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateVehicleError = {
    type = "structure",
    members = {
        vehicleName = {
            type = "string",
        },
        code = {
            type = "number",
        },
        message = {
            type = "string",
        },
    },
}

M.UpdateVehicleResponseItem = {
    type = "structure",
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
    members = {
        vehicles = {
            type = "list",
            member_type = "structure",
        },
        errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Branch = {
    type = "structure",
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
    members = {
        expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        minimumTriggerIntervalMs = {
            type = "number",
        },
        triggerMode = {
            type = "string",
        },
        conditionLanguageVersion = {
            type = "number",
        },
    },
}

M.TimeBasedCollectionScheme = {
    type = "structure",
    members = {
        periodMs = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.CollectionScheme = {
    type = "union",
    members = {
        timeBasedCollectionScheme = {
            type = "structure",
        },
        conditionBasedCollectionScheme = {
            type = "structure",
        },
    },
}

M.Compression = {
    OFF = "OFF",
    SNAPPY = "SNAPPY",
}

M.MqttTopicConfig = {
    type = "structure",
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
    members = {
        s3Config = {
            type = "structure",
        },
        timestreamConfig = {
            type = "structure",
        },
        mqttTopicConfig = {
            type = "structure",
        },
    },
}

M.StorageMaximumSizeUnit = {
    MB = "MB",
    GB = "GB",
    TB = "TB",
}

M.StorageMaximumSize = {
    type = "structure",
    members = {
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "number",
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
    members = {
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.DataPartitionStorageOptions = {
    type = "structure",
    members = {
        maximumSize = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        storageLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        minimumTimeToLive = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DataPartitionUploadOptions = {
    type = "structure",
    members = {
        expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        conditionLanguageVersion = {
            type = "number",
        },
    },
}

M.DataPartition = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        storageOptions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        uploadOptions = {
            type = "structure",
        },
    },
}

M.DiagnosticsMode = {
    OFF = "OFF",
    SEND_ACTIVE_DTCS = "SEND_ACTIVE_DTCS",
}

M.SignalInformation = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxSampleCount = {
            type = "number",
        },
        minimumSamplingIntervalMs = {
            type = "number",
        },
        dataPartitionId = {
            type = "string",
        },
    },
}

M.ConditionBasedSignalFetchConfig = {
    type = "structure",
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
    members = {
        executionFrequencyMs = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.SignalFetchConfig = {
    type = "union",
    members = {
        timeBased = {
            type = "structure",
        },
        conditionBased = {
            type = "structure",
        },
    },
}

M.SignalFetchInformation = {
    type = "structure",
    members = {
        fullyQualifiedName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        signalFetchConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
        conditionLanguageVersion = {
            type = "number",
        },
        actions = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            type = "number",
        },
        signalsToCollect = {
            type = "list",
            member_type = "structure",
        },
        collectionScheme = {
            type = "union",
            traits = {
                required = true,
            },
        },
        dataExtraDimensions = {
            type = "list",
            member_type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        dataDestinationConfigs = {
            type = "list",
            member_type = "union",
        },
        dataPartitions = {
            type = "list",
            member_type = "structure",
        },
        signalsToFetch = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateCampaignOutput = {
    type = "structure",
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
            type = "number",
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
            type = "number",
        },
        signalsToCollect = {
            type = "list",
            member_type = "structure",
        },
        collectionScheme = {
            type = "union",
        },
        dataExtraDimensions = {
            type = "list",
            member_type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastModificationTime = {
            type = "timestamp",
        },
        dataDestinationConfigs = {
            type = "list",
            member_type = "union",
        },
        dataPartitions = {
            type = "list",
            member_type = "structure",
        },
        signalsToFetch = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListResponseScope = {
    METADATA_ONLY = "METADATA_ONLY",
}

M.ListCampaignsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
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
    members = {
        campaignSummaries = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
    members = {
        networkInterface = {
            type = "string",
            traits = {
                required = true,
            },
        },
        canDbcFiles = {
            type = "list",
            member_type = "blob",
            traits = {
                required = true,
            },
        },
        signalsMap = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CanInterface = {
    type = "structure",
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
    members = {
        messageId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        isBigEndian = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        isSigned = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        startBit = {
            type = "number",
            traits = {
                required = true,
            },
        },
        offset = {
            type = "number",
            traits = {
                required = true,
            },
        },
        factor = {
            type = "number",
            traits = {
                required = true,
            },
        },
        length = {
            type = "number",
            traits = {
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
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requestMessageId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        obdStandard = {
            type = "string",
        },
        pidRequestIntervalSeconds = {
            type = "number",
        },
        dtcRequestIntervalSeconds = {
            type = "number",
        },
        useExtendedIds = {
            type = "boolean",
        },
        hasTransmissionEcu = {
            type = "boolean",
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
        canInterface = {
            type = "structure",
        },
        obdInterface = {
            type = "structure",
        },
        vehicleMiddleware = {
            type = "structure",
        },
        customDecodingInterface = {
            type = "structure",
        },
    },
}

M.CustomDecodingSignal = {
    type = "structure",
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
    members = {
        primitiveType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        offset = {
            type = "number",
        },
        scaling = {
            type = "number",
        },
        upperBound = {
            type = "number",
        },
    },
}

M.PrimitiveMessageDefinition = {
    type = "union",
    members = {
        ros2PrimitiveMessageDefinition = {
            type = "structure",
        },
    },
}

M.StructuredMessageListType = {
    FIXED_CAPACITY = "FIXED_CAPACITY",
    DYNAMIC_UNBOUNDED_CAPACITY = "DYNAMIC_UNBOUNDED_CAPACITY",
    DYNAMIC_BOUNDED_CAPACITY = "DYNAMIC_BOUNDED_CAPACITY",
}

M.ObdSignal = {
    type = "structure",
    members = {
        pidResponseLength = {
            type = "number",
            traits = {
                required = true,
            },
        },
        serviceMode = {
            type = "number",
            traits = {
                required = true,
            },
        },
        pid = {
            type = "number",
            traits = {
                required = true,
            },
        },
        scaling = {
            type = "number",
            traits = {
                required = true,
            },
        },
        offset = {
            type = "number",
            traits = {
                required = true,
            },
        },
        startByte = {
            type = "number",
            traits = {
                required = true,
            },
        },
        byteLength = {
            type = "number",
            traits = {
                required = true,
            },
        },
        bitRightShift = {
            type = "number",
        },
        bitMaskLength = {
            type = "number",
        },
        isSigned = {
            type = "boolean",
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
    error = "client",
    members = {
        invalidSignals = {
            type = "list",
            member_type = "structure",
        },
        invalidNetworkInterfaces = {
            type = "list",
            member_type = "structure",
        },
        message = {
            type = "string",
        },
    },
}

M.CreateFleetInput = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.CreateFleetOutput = {
    type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
    },
}

M.CreateModelManifestOutput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
        invalidSignals = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.NodeDataEncoding = {
    BINARY = "BINARY",
    TYPED = "TYPED",
}

M.CustomProperty = {
    type = "structure",
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
            member_type = "string",
        },
        min = {
            type = "number",
        },
        max = {
            type = "number",
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
    members = {
        branch = {
            type = "structure",
        },
        sensor = {
            type = "structure",
        },
        actuator = {
            type = "structure",
        },
        attribute = {
            type = "structure",
        },
        struct = {
            type = "structure",
        },
        property = {
            type = "structure",
        },
    },
}

M.CreateSignalCatalogInput = {
    type = "structure",
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
            member_type = "union",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateSignalCatalogOutput = {
    type = "structure",
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
    error = "client",
    members = {
        invalidNodes = {
            type = "list",
            member_type = "union",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        dataExtraDimensions = {
            type = "list",
            member_type = "string",
        },
        metadataExtraDimensions = {
            type = "list",
            member_type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateStateTemplateOutput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        associationBehavior = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        stateTemplates = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateVehicleOutput = {
    type = "structure",
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
    members = {
        canDbc = {
            type = "structure",
        },
    },
}

M.ImportDecoderManifestInput = {
    type = "structure",
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
            member_type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportDecoderManifestOutput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListDecoderManifestNetworkInterfacesOutput = {
    type = "structure",
    members = {
        networkInterfaces = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDecoderManifestsInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        summaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDecoderManifestSignalsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.UpdateDecoderManifestOutput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListFleetsForVehicleOutput = {
    type = "structure",
    members = {
        fleets = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetFleetInput = {
    type = "structure",
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
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
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
    members = {
        fleetSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateFleetInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListVehiclesInFleetOutput = {
    type = "structure",
    members = {
        vehicles = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.FormattedVss = {
    type = "union",
    members = {
        vssJson = {
            type = "string",
        },
    },
}

M.GetEncryptionConfigurationInput = {
    type = "structure",
}

M.GetEncryptionConfigurationOutput = {
    type = "structure",
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
}

M.GetLoggingOptionsOutput = {
    type = "structure",
    members = {
        cloudWatchLogDelivery = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetModelManifestInput = {
    type = "structure",
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
}

M.RegistrationStatus = {
    REGISTRATION_PENDING = "REGISTRATION_PENDING",
    REGISTRATION_SUCCESS = "REGISTRATION_SUCCESS",
    REGISTRATION_FAILURE = "REGISTRATION_FAILURE",
}

M.IamRegistrationResponse = {
    type = "structure",
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
        timestreamRegistrationResponse = {
            type = "structure",
        },
        iamRegistrationResponse = {
            type = "structure",
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

M.GetSignalCatalogInput = {
    type = "structure",
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
    members = {
        totalNodes = {
            type = "number",
        },
        totalBranches = {
            type = "number",
        },
        totalSensors = {
            type = "number",
        },
        totalAttributes = {
            type = "number",
        },
        totalActuators = {
            type = "number",
        },
        totalStructs = {
            type = "number",
        },
        totalProperties = {
            type = "number",
        },
    },
}

M.GetSignalCatalogOutput = {
    type = "structure",
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
        nodeCounts = {
            type = "structure",
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

M.GetStateTemplateInput = {
    type = "structure",
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
            member_type = "string",
        },
        dataExtraDimensions = {
            type = "list",
            member_type = "string",
        },
        metadataExtraDimensions = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
        stateTemplates = {
            type = "list",
            member_type = "structure",
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
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
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
    members = {
        campaigns = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.IamResources = {
    type = "structure",
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
        vss = {
            type = "union",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ImportSignalCatalogOutput = {
    type = "structure",
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
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListModelManifestNodesInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListModelManifestNodesOutput = {
    type = "structure",
    members = {
        nodes = {
            type = "list",
            member_type = "union",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListModelManifestsInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        summaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateModelManifestInput = {
    type = "structure",
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
            member_type = "string",
        },
        nodesToRemove = {
            type = "list",
            member_type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.UpdateModelManifestOutput = {
    type = "structure",
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
    members = {
        cloudWatchLogDelivery = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutLoggingOptionsOutput = {
    type = "structure",
}

M.TimestreamResources = {
    type = "structure",
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
    members = {
        timestreamResources = {
            type = "structure",
        },
        iamResources = {
            type = "structure",
        },
    },
}

M.RegisterAccountOutput = {
    type = "structure",
    members = {
        registerAccountStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestreamResources = {
            type = "structure",
        },
        iamResources = {
            type = "structure",
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
            type = "number",
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
    members = {
        nodes = {
            type = "list",
            member_type = "union",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSignalCatalogsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.SignalCatalogSummary = {
    type = "structure",
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
    members = {
        summaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateSignalCatalogInput = {
    type = "structure",
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
            member_type = "union",
        },
        nodesToUpdate = {
            type = "list",
            member_type = "union",
        },
        nodesToRemove = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateSignalCatalogOutput = {
    type = "structure",
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
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
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
    members = {
        summaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateStateTemplateInput = {
    type = "structure",
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
            member_type = "string",
        },
        stateTemplatePropertiesToRemove = {
            type = "list",
            member_type = "string",
        },
        dataExtraDimensions = {
            type = "list",
            member_type = "string",
        },
        metadataExtraDimensions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateStateTemplateOutput = {
    type = "structure",
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
            member_type = "structure",
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
        ResourceARN = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.ListVehiclesInput = {
    type = "structure",
    members = {
        modelManifestArn = {
            type = "string",
            traits = {
                http_query = "modelManifestArn",
            },
        },
        attributeNames = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "attributeNames",
            },
        },
        attributeValues = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListVehiclesOutput = {
    type = "structure",
    members = {
        vehicleSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateVehicleInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        attributeUpdateMode = {
            type = "string",
        },
        stateTemplatesToAdd = {
            type = "list",
            member_type = "structure",
        },
        stateTemplatesToRemove = {
            type = "list",
            member_type = "string",
        },
        stateTemplatesToUpdate = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateVehicleOutput = {
    type = "structure",
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
    members = {
        primitiveMessageDefinition = {
            type = "union",
        },
        structuredMessageListDefinition = {
            type = "structure",
        },
        structuredMessageDefinition = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StructuredMessageFieldNameAndDataTypePair = {
    type = "structure",
    members = {
        fieldName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataType = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.StructuredMessageListDefinition = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        memberType = {
            type = "union",
            traits = {
                required = true,
            },
        },
        listType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        capacity = {
            type = "number",
        },
    },
}

M.MessageSignal = {
    type = "structure",
    members = {
        topicName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        structuredMessage = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.SignalDecoder = {
    type = "structure",
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
        canSignal = {
            type = "structure",
        },
        obdSignal = {
            type = "structure",
        },
        messageSignal = {
            type = "structure",
        },
        customDecodingSignal = {
            type = "structure",
        },
    },
}

M.CreateDecoderManifestInput = {
    type = "structure",
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
            member_type = "structure",
        },
        networkInterfaces = {
            type = "list",
            member_type = "structure",
        },
        defaultForUnmappedSignals = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListDecoderManifestSignalsOutput = {
    type = "structure",
    members = {
        signalDecoders = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateDecoderManifestInput = {
    type = "structure",
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
            member_type = "structure",
        },
        signalDecodersToUpdate = {
            type = "list",
            member_type = "structure",
        },
        signalDecodersToRemove = {
            type = "list",
            member_type = "string",
        },
        networkInterfacesToAdd = {
            type = "list",
            member_type = "structure",
        },
        networkInterfacesToUpdate = {
            type = "list",
            member_type = "structure",
        },
        networkInterfacesToRemove = {
            type = "list",
            member_type = "string",
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
