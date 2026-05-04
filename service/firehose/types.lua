local M = {}

M.AmazonOpenSearchServerlessBufferingHints = {
    type = "structure",
    id = "AmazonOpenSearchServerlessBufferingHints",
    members = {
        IntervalInSeconds = {
            type = "integer",
        },
        SizeInMBs = {
            type = "integer",
        },
    },
}

M.CloudWatchLoggingOptions = {
    type = "structure",
    id = "CloudWatchLoggingOptions",
    members = {
        Enabled = {
            type = "boolean",
        },
        LogGroupName = {
            type = "string",
        },
        LogStreamName = {
            type = "string",
        },
    },
}

M.ProcessorParameterName = {
    LAMBDA_ARN = "LambdaArn",
    LAMBDA_NUMBER_OF_RETRIES = "NumberOfRetries",
    METADATA_EXTRACTION_QUERY = "MetadataExtractionQuery",
    JSON_PARSING_ENGINE = "JsonParsingEngine",
    ROLE_ARN = "RoleArn",
    BUFFER_SIZE_IN_MB = "BufferSizeInMBs",
    BUFFER_INTERVAL_IN_SECONDS = "BufferIntervalInSeconds",
    SUB_RECORD_TYPE = "SubRecordType",
    Delimiter = "Delimiter",
    COMPRESSION_FORMAT = "CompressionFormat",
    DATA_MESSAGE_EXTRACTION = "DataMessageExtraction",
}

M.ProcessorParameter = {
    type = "structure",
    id = "ProcessorParameter",
    members = {
        ParameterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParameterValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProcessorType = {
    RecordDeAggregation = "RecordDeAggregation",
    Decompression = "Decompression",
    CloudWatchLogProcessing = "CloudWatchLogProcessing",
    Lambda = "Lambda",
    MetadataExtraction = "MetadataExtraction",
    AppendDelimiterToRecord = "AppendDelimiterToRecord",
}

M.Processor = {
    type = "structure",
    id = "Processor",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "list",
            member = M.ProcessorParameter,
        },
    },
}

M.ProcessingConfiguration = {
    type = "structure",
    id = "ProcessingConfiguration",
    members = {
        Enabled = {
            type = "boolean",
        },
        Processors = {
            type = "list",
            member = M.Processor,
        },
    },
}

M.AmazonOpenSearchServerlessRetryOptions = {
    type = "structure",
    id = "AmazonOpenSearchServerlessRetryOptions",
    members = {
        DurationInSeconds = {
            type = "integer",
        },
    },
}

M.AmazonOpenSearchServerlessS3BackupMode = {
    FailedDocumentsOnly = "FailedDocumentsOnly",
    AllDocuments = "AllDocuments",
}

M.BufferingHints = {
    type = "structure",
    id = "BufferingHints",
    members = {
        SizeInMBs = {
            type = "integer",
        },
        IntervalInSeconds = {
            type = "integer",
        },
    },
}

M.CompressionFormat = {
    UNCOMPRESSED = "UNCOMPRESSED",
    GZIP = "GZIP",
    ZIP = "ZIP",
    SNAPPY = "Snappy",
    HADOOP_SNAPPY = "HADOOP_SNAPPY",
}

M.KMSEncryptionConfig = {
    type = "structure",
    id = "KMSEncryptionConfig",
    members = {
        AWSKMSKeyARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NoEncryptionConfig = {
    NoEncryption = "NoEncryption",
}

M.EncryptionConfiguration = {
    type = "structure",
    id = "EncryptionConfiguration",
    members = {
        NoEncryptionConfig = {
            type = "string",
        },
        KMSEncryptionConfig = M.KMSEncryptionConfig,
    },
}

M.S3DestinationConfiguration = {
    type = "structure",
    id = "S3DestinationConfiguration",
    members = {
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BucketARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Prefix = {
            type = "string",
        },
        ErrorOutputPrefix = {
            type = "string",
        },
        BufferingHints = M.BufferingHints,
        CompressionFormat = {
            type = "string",
        },
        EncryptionConfiguration = M.EncryptionConfiguration,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
    },
}

M.VpcConfiguration = {
    type = "structure",
    id = "VpcConfiguration",
    members = {
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AmazonOpenSearchServerlessDestinationConfiguration = {
    type = "structure",
    id = "AmazonOpenSearchServerlessDestinationConfiguration",
    members = {
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CollectionEndpoint = {
            type = "string",
        },
        IndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BufferingHints = M.AmazonOpenSearchServerlessBufferingHints,
        RetryOptions = M.AmazonOpenSearchServerlessRetryOptions,
        S3BackupMode = {
            type = "string",
        },
        S3Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DestinationConfiguration }),
        ProcessingConfiguration = M.ProcessingConfiguration,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        VpcConfiguration = M.VpcConfiguration,
    },
}

M.S3DestinationDescription = {
    type = "structure",
    id = "S3DestinationDescription",
    members = {
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BucketARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Prefix = {
            type = "string",
        },
        ErrorOutputPrefix = {
            type = "string",
        },
        BufferingHints = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BufferingHints }),
        CompressionFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionConfiguration }),
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
    },
}

M.VpcConfigurationDescription = {
    type = "structure",
    id = "VpcConfigurationDescription",
    members = {
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        VpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AmazonOpenSearchServerlessDestinationDescription = {
    type = "structure",
    id = "AmazonOpenSearchServerlessDestinationDescription",
    members = {
        RoleARN = {
            type = "string",
        },
        CollectionEndpoint = {
            type = "string",
        },
        IndexName = {
            type = "string",
        },
        BufferingHints = M.AmazonOpenSearchServerlessBufferingHints,
        RetryOptions = M.AmazonOpenSearchServerlessRetryOptions,
        S3BackupMode = {
            type = "string",
        },
        S3DestinationDescription = M.S3DestinationDescription,
        ProcessingConfiguration = M.ProcessingConfiguration,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        VpcConfigurationDescription = M.VpcConfigurationDescription,
    },
}

M.S3DestinationUpdate = {
    type = "structure",
    id = "S3DestinationUpdate",
    members = {
        RoleARN = {
            type = "string",
        },
        BucketARN = {
            type = "string",
        },
        Prefix = {
            type = "string",
        },
        ErrorOutputPrefix = {
            type = "string",
        },
        BufferingHints = M.BufferingHints,
        CompressionFormat = {
            type = "string",
        },
        EncryptionConfiguration = M.EncryptionConfiguration,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
    },
}

M.AmazonOpenSearchServerlessDestinationUpdate = {
    type = "structure",
    id = "AmazonOpenSearchServerlessDestinationUpdate",
    members = {
        RoleARN = {
            type = "string",
        },
        CollectionEndpoint = {
            type = "string",
        },
        IndexName = {
            type = "string",
        },
        BufferingHints = M.AmazonOpenSearchServerlessBufferingHints,
        RetryOptions = M.AmazonOpenSearchServerlessRetryOptions,
        S3Update = M.S3DestinationUpdate,
        ProcessingConfiguration = M.ProcessingConfiguration,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
    },
}

M.AmazonopensearchserviceBufferingHints = {
    type = "structure",
    id = "AmazonopensearchserviceBufferingHints",
    members = {
        IntervalInSeconds = {
            type = "integer",
        },
        SizeInMBs = {
            type = "integer",
        },
    },
}

M.DefaultDocumentIdFormat = {
    FIREHOSE_DEFAULT = "FIREHOSE_DEFAULT",
    NO_DOCUMENT_ID = "NO_DOCUMENT_ID",
}

M.DocumentIdOptions = {
    type = "structure",
    id = "DocumentIdOptions",
    members = {
        DefaultDocumentIdFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AmazonopensearchserviceIndexRotationPeriod = {
    NoRotation = "NoRotation",
    OneHour = "OneHour",
    OneDay = "OneDay",
    OneWeek = "OneWeek",
    OneMonth = "OneMonth",
}

M.AmazonopensearchserviceRetryOptions = {
    type = "structure",
    id = "AmazonopensearchserviceRetryOptions",
    members = {
        DurationInSeconds = {
            type = "integer",
        },
    },
}

M.AmazonopensearchserviceS3BackupMode = {
    FailedDocumentsOnly = "FailedDocumentsOnly",
    AllDocuments = "AllDocuments",
}

M.AmazonopensearchserviceDestinationConfiguration = {
    type = "structure",
    id = "AmazonopensearchserviceDestinationConfiguration",
    members = {
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DomainARN = {
            type = "string",
        },
        ClusterEndpoint = {
            type = "string",
        },
        IndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TypeName = {
            type = "string",
        },
        IndexRotationPeriod = {
            type = "string",
        },
        BufferingHints = M.AmazonopensearchserviceBufferingHints,
        RetryOptions = M.AmazonopensearchserviceRetryOptions,
        S3BackupMode = {
            type = "string",
        },
        S3Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DestinationConfiguration }),
        ProcessingConfiguration = M.ProcessingConfiguration,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        VpcConfiguration = M.VpcConfiguration,
        DocumentIdOptions = M.DocumentIdOptions,
    },
}

M.AmazonopensearchserviceDestinationDescription = {
    type = "structure",
    id = "AmazonopensearchserviceDestinationDescription",
    members = {
        RoleARN = {
            type = "string",
        },
        DomainARN = {
            type = "string",
        },
        ClusterEndpoint = {
            type = "string",
        },
        IndexName = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
        IndexRotationPeriod = {
            type = "string",
        },
        BufferingHints = M.AmazonopensearchserviceBufferingHints,
        RetryOptions = M.AmazonopensearchserviceRetryOptions,
        S3BackupMode = {
            type = "string",
        },
        S3DestinationDescription = M.S3DestinationDescription,
        ProcessingConfiguration = M.ProcessingConfiguration,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        VpcConfigurationDescription = M.VpcConfigurationDescription,
        DocumentIdOptions = M.DocumentIdOptions,
    },
}

M.AmazonopensearchserviceDestinationUpdate = {
    type = "structure",
    id = "AmazonopensearchserviceDestinationUpdate",
    members = {
        RoleARN = {
            type = "string",
        },
        DomainARN = {
            type = "string",
        },
        ClusterEndpoint = {
            type = "string",
        },
        IndexName = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
        IndexRotationPeriod = {
            type = "string",
        },
        BufferingHints = M.AmazonopensearchserviceBufferingHints,
        RetryOptions = M.AmazonopensearchserviceRetryOptions,
        S3Update = M.S3DestinationUpdate,
        ProcessingConfiguration = M.ProcessingConfiguration,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        DocumentIdOptions = M.DocumentIdOptions,
    },
}

M.Connectivity = {
    PUBLIC = "PUBLIC",
    PRIVATE = "PRIVATE",
}

M.AuthenticationConfiguration = {
    type = "structure",
    id = "AuthenticationConfiguration",
    members = {
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Connectivity = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CatalogConfiguration = {
    type = "structure",
    id = "CatalogConfiguration",
    members = {
        CatalogARN = {
            type = "string",
        },
        WarehouseLocation = {
            type = "string",
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    id = "ConcurrentModificationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ContentEncoding = {
    NONE = "NONE",
    GZIP = "GZIP",
}

M.CopyCommand = {
    type = "structure",
    id = "CopyCommand",
    members = {
        DataTableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataTableColumns = {
            type = "string",
        },
        CopyOptions = {
            type = "string",
        },
    },
}

M.DatabaseColumnList = {
    type = "structure",
    id = "DatabaseColumnList",
    members = {
        Include = {
            type = "list",
            member = { type = "string" },
        },
        Exclude = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DatabaseList = {
    type = "structure",
    id = "DatabaseList",
    members = {
        Include = {
            type = "list",
            member = { type = "string" },
        },
        Exclude = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SecretsManagerConfiguration = {
    type = "structure",
    id = "SecretsManagerConfiguration",
    members = {
        SecretARN = {
            type = "string",
        },
        RoleARN = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.DatabaseSourceAuthenticationConfiguration = {
    type = "structure",
    id = "DatabaseSourceAuthenticationConfiguration",
    members = {
        SecretsManagerConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SecretsManagerConfiguration }),
    },
}

M.DatabaseSourceVPCConfiguration = {
    type = "structure",
    id = "DatabaseSourceVPCConfiguration",
    members = {
        VpcEndpointServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SSLMode = {
    Disabled = "Disabled",
    Enabled = "Enabled",
}

M.DatabaseTableList = {
    type = "structure",
    id = "DatabaseTableList",
    members = {
        Include = {
            type = "list",
            member = { type = "string" },
        },
        Exclude = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DatabaseType = {
    MySQL = "MySQL",
    PostgreSQL = "PostgreSQL",
}

M.DatabaseSourceConfiguration = {
    type = "structure",
    id = "DatabaseSourceConfiguration",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Endpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Port = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        SSLMode = {
            type = "string",
        },
        Databases = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatabaseList }),
        Tables = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatabaseTableList }),
        Columns = M.DatabaseColumnList,
        SurrogateKeys = {
            type = "list",
            member = { type = "string" },
        },
        SnapshotWatermarkTable = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseSourceAuthenticationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatabaseSourceAuthenticationConfiguration }),
        DatabaseSourceVPCConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatabaseSourceVPCConfiguration }),
    },
}

M.KeyType = {
    AWS_OWNED_CMK = "AWS_OWNED_CMK",
    CUSTOMER_MANAGED_CMK = "CUSTOMER_MANAGED_CMK",
}

M.DeliveryStreamEncryptionConfigurationInput = {
    type = "structure",
    id = "DeliveryStreamEncryptionConfigurationInput",
    members = {
        KeyARN = {
            type = "string",
        },
        KeyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeliveryStreamType = {
    DirectPut = "DirectPut",
    KinesisStreamAsSource = "KinesisStreamAsSource",
    MSKAsSource = "MSKAsSource",
    DatabaseAsSource = "DatabaseAsSource",
}

M.DirectPutSourceConfiguration = {
    type = "structure",
    id = "DirectPutSourceConfiguration",
    members = {
        ThroughputHintInMBs = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ElasticsearchBufferingHints = {
    type = "structure",
    id = "ElasticsearchBufferingHints",
    members = {
        IntervalInSeconds = {
            type = "integer",
        },
        SizeInMBs = {
            type = "integer",
        },
    },
}

M.ElasticsearchIndexRotationPeriod = {
    NoRotation = "NoRotation",
    OneHour = "OneHour",
    OneDay = "OneDay",
    OneWeek = "OneWeek",
    OneMonth = "OneMonth",
}

M.ElasticsearchRetryOptions = {
    type = "structure",
    id = "ElasticsearchRetryOptions",
    members = {
        DurationInSeconds = {
            type = "integer",
        },
    },
}

M.ElasticsearchS3BackupMode = {
    FailedDocumentsOnly = "FailedDocumentsOnly",
    AllDocuments = "AllDocuments",
}

M.ElasticsearchDestinationConfiguration = {
    type = "structure",
    id = "ElasticsearchDestinationConfiguration",
    members = {
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DomainARN = {
            type = "string",
        },
        ClusterEndpoint = {
            type = "string",
        },
        IndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TypeName = {
            type = "string",
        },
        IndexRotationPeriod = {
            type = "string",
        },
        BufferingHints = M.ElasticsearchBufferingHints,
        RetryOptions = M.ElasticsearchRetryOptions,
        S3BackupMode = {
            type = "string",
        },
        S3Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DestinationConfiguration }),
        ProcessingConfiguration = M.ProcessingConfiguration,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        VpcConfiguration = M.VpcConfiguration,
        DocumentIdOptions = M.DocumentIdOptions,
    },
}

M.HiveJsonSerDe = {
    type = "structure",
    id = "HiveJsonSerDe",
    members = {
        TimestampFormats = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OpenXJsonSerDe = {
    type = "structure",
    id = "OpenXJsonSerDe",
    members = {
        ConvertDotsInJsonKeysToUnderscores = {
            type = "boolean",
        },
        CaseInsensitive = {
            type = "boolean",
        },
        ColumnToJsonKeyMappings = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.Deserializer = {
    type = "structure",
    id = "Deserializer",
    members = {
        OpenXJsonSerDe = M.OpenXJsonSerDe,
        HiveJsonSerDe = M.HiveJsonSerDe,
    },
}

M.InputFormatConfiguration = {
    type = "structure",
    id = "InputFormatConfiguration",
    members = {
        Deserializer = M.Deserializer,
    },
}

M.OrcCompression = {
    NONE = "NONE",
    ZLIB = "ZLIB",
    SNAPPY = "SNAPPY",
}

M.OrcFormatVersion = {
    V0_11 = "V0_11",
    V0_12 = "V0_12",
}

M.OrcSerDe = {
    type = "structure",
    id = "OrcSerDe",
    members = {
        StripeSizeBytes = {
            type = "integer",
        },
        BlockSizeBytes = {
            type = "integer",
        },
        RowIndexStride = {
            type = "integer",
        },
        EnablePadding = {
            type = "boolean",
        },
        PaddingTolerance = {
            type = "double",
        },
        Compression = {
            type = "string",
        },
        BloomFilterColumns = {
            type = "list",
            member = { type = "string" },
        },
        BloomFilterFalsePositiveProbability = {
            type = "double",
        },
        DictionaryKeyThreshold = {
            type = "double",
        },
        FormatVersion = {
            type = "string",
        },
    },
}

M.ParquetCompression = {
    UNCOMPRESSED = "UNCOMPRESSED",
    GZIP = "GZIP",
    SNAPPY = "SNAPPY",
}

M.ParquetWriterVersion = {
    V1 = "V1",
    V2 = "V2",
}

M.ParquetSerDe = {
    type = "structure",
    id = "ParquetSerDe",
    members = {
        BlockSizeBytes = {
            type = "integer",
        },
        PageSizeBytes = {
            type = "integer",
        },
        Compression = {
            type = "string",
        },
        EnableDictionaryCompression = {
            type = "boolean",
        },
        MaxPaddingBytes = {
            type = "integer",
        },
        WriterVersion = {
            type = "string",
        },
    },
}

M.Serializer = {
    type = "structure",
    id = "Serializer",
    members = {
        ParquetSerDe = M.ParquetSerDe,
        OrcSerDe = M.OrcSerDe,
    },
}

M.OutputFormatConfiguration = {
    type = "structure",
    id = "OutputFormatConfiguration",
    members = {
        Serializer = M.Serializer,
    },
}

M.SchemaConfiguration = {
    type = "structure",
    id = "SchemaConfiguration",
    members = {
        RoleARN = {
            type = "string",
        },
        CatalogId = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        TableName = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
    },
}

M.DataFormatConversionConfiguration = {
    type = "structure",
    id = "DataFormatConversionConfiguration",
    members = {
        SchemaConfiguration = M.SchemaConfiguration,
        InputFormatConfiguration = M.InputFormatConfiguration,
        OutputFormatConfiguration = M.OutputFormatConfiguration,
        Enabled = {
            type = "boolean",
        },
    },
}

M.RetryOptions = {
    type = "structure",
    id = "RetryOptions",
    members = {
        DurationInSeconds = {
            type = "integer",
        },
    },
}

M.DynamicPartitioningConfiguration = {
    type = "structure",
    id = "DynamicPartitioningConfiguration",
    members = {
        RetryOptions = M.RetryOptions,
        Enabled = {
            type = "boolean",
        },
    },
}

M.S3BackupMode = {
    Disabled = "Disabled",
    Enabled = "Enabled",
}

M.ExtendedS3DestinationConfiguration = {
    type = "structure",
    id = "ExtendedS3DestinationConfiguration",
    members = {
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BucketARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Prefix = {
            type = "string",
        },
        ErrorOutputPrefix = {
            type = "string",
        },
        BufferingHints = M.BufferingHints,
        CompressionFormat = {
            type = "string",
        },
        EncryptionConfiguration = M.EncryptionConfiguration,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        ProcessingConfiguration = M.ProcessingConfiguration,
        S3BackupMode = {
            type = "string",
        },
        S3BackupConfiguration = M.S3DestinationConfiguration,
        DataFormatConversionConfiguration = M.DataFormatConversionConfiguration,
        DynamicPartitioningConfiguration = M.DynamicPartitioningConfiguration,
        FileExtension = {
            type = "string",
        },
        CustomTimeZone = {
            type = "string",
        },
    },
}

M.HttpEndpointBufferingHints = {
    type = "structure",
    id = "HttpEndpointBufferingHints",
    members = {
        SizeInMBs = {
            type = "integer",
        },
        IntervalInSeconds = {
            type = "integer",
        },
    },
}

M.HttpEndpointConfiguration = {
    type = "structure",
    id = "HttpEndpointConfiguration",
    members = {
        Url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        AccessKey = {
            type = "string",
        },
    },
}

M.HttpEndpointCommonAttribute = {
    type = "structure",
    id = "HttpEndpointCommonAttribute",
    members = {
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HttpEndpointRequestConfiguration = {
    type = "structure",
    id = "HttpEndpointRequestConfiguration",
    members = {
        ContentEncoding = {
            type = "string",
        },
        CommonAttributes = {
            type = "list",
            member = M.HttpEndpointCommonAttribute,
        },
    },
}

M.HttpEndpointRetryOptions = {
    type = "structure",
    id = "HttpEndpointRetryOptions",
    members = {
        DurationInSeconds = {
            type = "integer",
        },
    },
}

M.HttpEndpointS3BackupMode = {
    FailedDataOnly = "FailedDataOnly",
    AllData = "AllData",
}

M.HttpEndpointDestinationConfiguration = {
    type = "structure",
    id = "HttpEndpointDestinationConfiguration",
    members = {
        EndpointConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HttpEndpointConfiguration }),
        BufferingHints = M.HttpEndpointBufferingHints,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        RequestConfiguration = M.HttpEndpointRequestConfiguration,
        ProcessingConfiguration = M.ProcessingConfiguration,
        RoleARN = {
            type = "string",
        },
        RetryOptions = M.HttpEndpointRetryOptions,
        S3BackupMode = {
            type = "string",
        },
        S3Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DestinationConfiguration }),
        SecretsManagerConfiguration = M.SecretsManagerConfiguration,
    },
}

M.PartitionField = {
    type = "structure",
    id = "PartitionField",
    members = {
        SourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PartitionSpec = {
    type = "structure",
    id = "PartitionSpec",
    members = {
        Identity = {
            type = "list",
            member = M.PartitionField,
        },
    },
}

M.DestinationTableConfiguration = {
    type = "structure",
    id = "DestinationTableConfiguration",
    members = {
        DestinationTableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UniqueKeys = {
            type = "list",
            member = { type = "string" },
        },
        PartitionSpec = M.PartitionSpec,
        S3ErrorOutputPrefix = {
            type = "string",
        },
    },
}

M.IcebergS3BackupMode = {
    FailedDataOnly = "FailedDataOnly",
    AllData = "AllData",
}

M.SchemaEvolutionConfiguration = {
    type = "structure",
    id = "SchemaEvolutionConfiguration",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.TableCreationConfiguration = {
    type = "structure",
    id = "TableCreationConfiguration",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.IcebergDestinationConfiguration = {
    type = "structure",
    id = "IcebergDestinationConfiguration",
    members = {
        DestinationTableConfigurationList = {
            type = "list",
            member = M.DestinationTableConfiguration,
        },
        SchemaEvolutionConfiguration = M.SchemaEvolutionConfiguration,
        TableCreationConfiguration = M.TableCreationConfiguration,
        BufferingHints = M.BufferingHints,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        ProcessingConfiguration = M.ProcessingConfiguration,
        S3BackupMode = {
            type = "string",
        },
        RetryOptions = M.RetryOptions,
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AppendOnly = {
            type = "boolean",
        },
        CatalogConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CatalogConfiguration }),
        S3Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DestinationConfiguration }),
    },
}

M.KinesisStreamSourceConfiguration = {
    type = "structure",
    id = "KinesisStreamSourceConfiguration",
    members = {
        KinesisStreamARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MSKSourceConfiguration = {
    type = "structure",
    id = "MSKSourceConfiguration",
    members = {
        MSKClusterARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TopicName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AuthenticationConfiguration }),
        ReadFromTimestamp = {
            type = "timestamp",
        },
    },
}

M.RedshiftRetryOptions = {
    type = "structure",
    id = "RedshiftRetryOptions",
    members = {
        DurationInSeconds = {
            type = "integer",
        },
    },
}

M.RedshiftS3BackupMode = {
    Disabled = "Disabled",
    Enabled = "Enabled",
}

M.RedshiftDestinationConfiguration = {
    type = "structure",
    id = "RedshiftDestinationConfiguration",
    members = {
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterJDBCURL = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CopyCommand = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CopyCommand }),
        Username = {
            type = "string",
        },
        Password = {
            type = "string",
        },
        RetryOptions = M.RedshiftRetryOptions,
        S3Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DestinationConfiguration }),
        ProcessingConfiguration = M.ProcessingConfiguration,
        S3BackupMode = {
            type = "string",
        },
        S3BackupConfiguration = M.S3DestinationConfiguration,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        SecretsManagerConfiguration = M.SecretsManagerConfiguration,
    },
}

M.SnowflakeBufferingHints = {
    type = "structure",
    id = "SnowflakeBufferingHints",
    members = {
        SizeInMBs = {
            type = "integer",
        },
        IntervalInSeconds = {
            type = "integer",
        },
    },
}

M.SnowflakeDataLoadingOption = {
    JSON_MAPPING = "JSON_MAPPING",
    VARIANT_CONTENT_MAPPING = "VARIANT_CONTENT_MAPPING",
    VARIANT_CONTENT_AND_METADATA_MAPPING = "VARIANT_CONTENT_AND_METADATA_MAPPING",
}

M.SnowflakeRetryOptions = {
    type = "structure",
    id = "SnowflakeRetryOptions",
    members = {
        DurationInSeconds = {
            type = "integer",
        },
    },
}

M.SnowflakeS3BackupMode = {
    FailedDataOnly = "FailedDataOnly",
    AllData = "AllData",
}

M.SnowflakeRoleConfiguration = {
    type = "structure",
    id = "SnowflakeRoleConfiguration",
    members = {
        Enabled = {
            type = "boolean",
        },
        SnowflakeRole = {
            type = "string",
        },
    },
}

M.SnowflakeVpcConfiguration = {
    type = "structure",
    id = "SnowflakeVpcConfiguration",
    members = {
        PrivateLinkVpceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SnowflakeDestinationConfiguration = {
    type = "structure",
    id = "SnowflakeDestinationConfiguration",
    members = {
        AccountUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrivateKey = {
            type = "string",
        },
        KeyPassphrase = {
            type = "string",
        },
        User = {
            type = "string",
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Schema = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnowflakeRoleConfiguration = M.SnowflakeRoleConfiguration,
        DataLoadingOption = {
            type = "string",
        },
        MetaDataColumnName = {
            type = "string",
        },
        ContentColumnName = {
            type = "string",
        },
        SnowflakeVpcConfiguration = M.SnowflakeVpcConfiguration,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        ProcessingConfiguration = M.ProcessingConfiguration,
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetryOptions = M.SnowflakeRetryOptions,
        S3BackupMode = {
            type = "string",
        },
        S3Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DestinationConfiguration }),
        SecretsManagerConfiguration = M.SecretsManagerConfiguration,
        BufferingHints = M.SnowflakeBufferingHints,
    },
}

M.SplunkBufferingHints = {
    type = "structure",
    id = "SplunkBufferingHints",
    members = {
        IntervalInSeconds = {
            type = "integer",
        },
        SizeInMBs = {
            type = "integer",
        },
    },
}

M.HECEndpointType = {
    Raw = "Raw",
    Event = "Event",
}

M.SplunkRetryOptions = {
    type = "structure",
    id = "SplunkRetryOptions",
    members = {
        DurationInSeconds = {
            type = "integer",
        },
    },
}

M.SplunkS3BackupMode = {
    FailedEventsOnly = "FailedEventsOnly",
    AllEvents = "AllEvents",
}

M.SplunkDestinationConfiguration = {
    type = "structure",
    id = "SplunkDestinationConfiguration",
    members = {
        HECEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HECEndpointType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HECToken = {
            type = "string",
        },
        HECAcknowledgmentTimeoutInSeconds = {
            type = "integer",
        },
        RetryOptions = M.SplunkRetryOptions,
        S3BackupMode = {
            type = "string",
        },
        S3Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DestinationConfiguration }),
        ProcessingConfiguration = M.ProcessingConfiguration,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        BufferingHints = M.SplunkBufferingHints,
        SecretsManagerConfiguration = M.SecretsManagerConfiguration,
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
        },
    },
}

M.CreateDeliveryStreamInput = {
    type = "structure",
    id = "CreateDeliveryStreamInput",
    members = {
        DeliveryStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeliveryStreamType = {
            type = "string",
        },
        DirectPutSourceConfiguration = M.DirectPutSourceConfiguration,
        KinesisStreamSourceConfiguration = M.KinesisStreamSourceConfiguration,
        DeliveryStreamEncryptionConfigurationInput = M.DeliveryStreamEncryptionConfigurationInput,
        S3DestinationConfiguration = M.S3DestinationConfiguration,
        ExtendedS3DestinationConfiguration = M.ExtendedS3DestinationConfiguration,
        RedshiftDestinationConfiguration = M.RedshiftDestinationConfiguration,
        ElasticsearchDestinationConfiguration = M.ElasticsearchDestinationConfiguration,
        AmazonopensearchserviceDestinationConfiguration = M.AmazonopensearchserviceDestinationConfiguration,
        SplunkDestinationConfiguration = M.SplunkDestinationConfiguration,
        HttpEndpointDestinationConfiguration = M.HttpEndpointDestinationConfiguration,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        AmazonOpenSearchServerlessDestinationConfiguration = M.AmazonOpenSearchServerlessDestinationConfiguration,
        MSKSourceConfiguration = M.MSKSourceConfiguration,
        SnowflakeDestinationConfiguration = M.SnowflakeDestinationConfiguration,
        IcebergDestinationConfiguration = M.IcebergDestinationConfiguration,
        DatabaseSourceConfiguration = M.DatabaseSourceConfiguration,
    },
}

M.CreateDeliveryStreamOutput = {
    type = "structure",
    id = "CreateDeliveryStreamOutput",
    members = {
        DeliveryStreamARN = {
            type = "string",
        },
    },
}

M.InvalidArgumentException = {
    type = "structure",
    id = "InvalidArgumentException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidKMSResourceException = {
    type = "structure",
    id = "InvalidKMSResourceException",
    error = "client",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
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
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    id = "ResourceInUseException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeliveryStreamFailureType = {
    VPC_ENDPOINT_SERVICE_NAME_NOT_FOUND = "VPC_ENDPOINT_SERVICE_NAME_NOT_FOUND",
    VPC_INTERFACE_ENDPOINT_SERVICE_ACCESS_DENIED = "VPC_INTERFACE_ENDPOINT_SERVICE_ACCESS_DENIED",
    RETIRE_KMS_GRANT_FAILED = "RETIRE_KMS_GRANT_FAILED",
    CREATE_KMS_GRANT_FAILED = "CREATE_KMS_GRANT_FAILED",
    KMS_ACCESS_DENIED = "KMS_ACCESS_DENIED",
    DISABLED_KMS_KEY = "DISABLED_KMS_KEY",
    INVALID_KMS_KEY = "INVALID_KMS_KEY",
    KMS_KEY_NOT_FOUND = "KMS_KEY_NOT_FOUND",
    KMS_OPT_IN_REQUIRED = "KMS_OPT_IN_REQUIRED",
    CREATE_ENI_FAILED = "CREATE_ENI_FAILED",
    DELETE_ENI_FAILED = "DELETE_ENI_FAILED",
    SUBNET_NOT_FOUND = "SUBNET_NOT_FOUND",
    SECURITY_GROUP_NOT_FOUND = "SECURITY_GROUP_NOT_FOUND",
    ENI_ACCESS_DENIED = "ENI_ACCESS_DENIED",
    SUBNET_ACCESS_DENIED = "SUBNET_ACCESS_DENIED",
    SECURITY_GROUP_ACCESS_DENIED = "SECURITY_GROUP_ACCESS_DENIED",
    UNKNOWN_ERROR = "UNKNOWN_ERROR",
}

M.FailureDescription = {
    type = "structure",
    id = "FailureDescription",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Details = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SnapshotRequestedBy = {
    USER = "USER",
    FIREHOSE = "FIREHOSE",
}

M.SnapshotStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETE = "COMPLETE",
    SUSPENDED = "SUSPENDED",
}

M.DatabaseSnapshotInfo = {
    type = "structure",
    id = "DatabaseSnapshotInfo",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Table = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequestTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        RequestedBy = {
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
        FailureDescription = M.FailureDescription,
    },
}

M.DatabaseSourceDescription = {
    type = "structure",
    id = "DatabaseSourceDescription",
    members = {
        Type = {
            type = "string",
        },
        Endpoint = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        SSLMode = {
            type = "string",
        },
        Databases = M.DatabaseList,
        Tables = M.DatabaseTableList,
        Columns = M.DatabaseColumnList,
        SurrogateKeys = {
            type = "list",
            member = { type = "string" },
        },
        SnapshotWatermarkTable = {
            type = "string",
        },
        SnapshotInfo = {
            type = "list",
            member = M.DatabaseSnapshotInfo,
        },
        DatabaseSourceAuthenticationConfiguration = M.DatabaseSourceAuthenticationConfiguration,
        DatabaseSourceVPCConfiguration = M.DatabaseSourceVPCConfiguration,
    },
}

M.DeleteDeliveryStreamInput = {
    type = "structure",
    id = "DeleteDeliveryStreamInput",
    members = {
        DeliveryStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllowForceDelete = {
            type = "boolean",
        },
    },
}

M.DeleteDeliveryStreamOutput = {
    type = "structure",
    id = "DeleteDeliveryStreamOutput",
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeliveryStreamEncryptionStatus = {
    ENABLED = "ENABLED",
    ENABLING = "ENABLING",
    ENABLING_FAILED = "ENABLING_FAILED",
    DISABLED = "DISABLED",
    DISABLING = "DISABLING",
    DISABLING_FAILED = "DISABLING_FAILED",
}

M.DeliveryStreamEncryptionConfiguration = {
    type = "structure",
    id = "DeliveryStreamEncryptionConfiguration",
    members = {
        KeyARN = {
            type = "string",
        },
        KeyType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        FailureDescription = M.FailureDescription,
    },
}

M.DeliveryStreamStatus = {
    CREATING = "CREATING",
    CREATING_FAILED = "CREATING_FAILED",
    DELETING = "DELETING",
    DELETING_FAILED = "DELETING_FAILED",
    ACTIVE = "ACTIVE",
}

M.ElasticsearchDestinationDescription = {
    type = "structure",
    id = "ElasticsearchDestinationDescription",
    members = {
        RoleARN = {
            type = "string",
        },
        DomainARN = {
            type = "string",
        },
        ClusterEndpoint = {
            type = "string",
        },
        IndexName = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
        IndexRotationPeriod = {
            type = "string",
        },
        BufferingHints = M.ElasticsearchBufferingHints,
        RetryOptions = M.ElasticsearchRetryOptions,
        S3BackupMode = {
            type = "string",
        },
        S3DestinationDescription = M.S3DestinationDescription,
        ProcessingConfiguration = M.ProcessingConfiguration,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        VpcConfigurationDescription = M.VpcConfigurationDescription,
        DocumentIdOptions = M.DocumentIdOptions,
    },
}

M.ExtendedS3DestinationDescription = {
    type = "structure",
    id = "ExtendedS3DestinationDescription",
    members = {
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BucketARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Prefix = {
            type = "string",
        },
        ErrorOutputPrefix = {
            type = "string",
        },
        BufferingHints = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BufferingHints }),
        CompressionFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionConfiguration }),
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        ProcessingConfiguration = M.ProcessingConfiguration,
        S3BackupMode = {
            type = "string",
        },
        S3BackupDescription = M.S3DestinationDescription,
        DataFormatConversionConfiguration = M.DataFormatConversionConfiguration,
        DynamicPartitioningConfiguration = M.DynamicPartitioningConfiguration,
        FileExtension = {
            type = "string",
        },
        CustomTimeZone = {
            type = "string",
        },
    },
}

M.HttpEndpointDescription = {
    type = "structure",
    id = "HttpEndpointDescription",
    members = {
        Url = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.HttpEndpointDestinationDescription = {
    type = "structure",
    id = "HttpEndpointDestinationDescription",
    members = {
        EndpointConfiguration = M.HttpEndpointDescription,
        BufferingHints = M.HttpEndpointBufferingHints,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        RequestConfiguration = M.HttpEndpointRequestConfiguration,
        ProcessingConfiguration = M.ProcessingConfiguration,
        RoleARN = {
            type = "string",
        },
        RetryOptions = M.HttpEndpointRetryOptions,
        S3BackupMode = {
            type = "string",
        },
        S3DestinationDescription = M.S3DestinationDescription,
        SecretsManagerConfiguration = M.SecretsManagerConfiguration,
    },
}

M.IcebergDestinationDescription = {
    type = "structure",
    id = "IcebergDestinationDescription",
    members = {
        DestinationTableConfigurationList = {
            type = "list",
            member = M.DestinationTableConfiguration,
        },
        SchemaEvolutionConfiguration = M.SchemaEvolutionConfiguration,
        TableCreationConfiguration = M.TableCreationConfiguration,
        BufferingHints = M.BufferingHints,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        ProcessingConfiguration = M.ProcessingConfiguration,
        S3BackupMode = {
            type = "string",
        },
        RetryOptions = M.RetryOptions,
        RoleARN = {
            type = "string",
        },
        AppendOnly = {
            type = "boolean",
        },
        CatalogConfiguration = M.CatalogConfiguration,
        S3DestinationDescription = M.S3DestinationDescription,
    },
}

M.RedshiftDestinationDescription = {
    type = "structure",
    id = "RedshiftDestinationDescription",
    members = {
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClusterJDBCURL = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CopyCommand = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CopyCommand }),
        Username = {
            type = "string",
        },
        RetryOptions = M.RedshiftRetryOptions,
        S3DestinationDescription = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DestinationDescription }),
        ProcessingConfiguration = M.ProcessingConfiguration,
        S3BackupMode = {
            type = "string",
        },
        S3BackupDescription = M.S3DestinationDescription,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        SecretsManagerConfiguration = M.SecretsManagerConfiguration,
    },
}

M.SnowflakeDestinationDescription = {
    type = "structure",
    id = "SnowflakeDestinationDescription",
    members = {
        AccountUrl = {
            type = "string",
        },
        User = {
            type = "string",
        },
        Database = {
            type = "string",
        },
        Schema = {
            type = "string",
        },
        Table = {
            type = "string",
        },
        SnowflakeRoleConfiguration = M.SnowflakeRoleConfiguration,
        DataLoadingOption = {
            type = "string",
        },
        MetaDataColumnName = {
            type = "string",
        },
        ContentColumnName = {
            type = "string",
        },
        SnowflakeVpcConfiguration = M.SnowflakeVpcConfiguration,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        ProcessingConfiguration = M.ProcessingConfiguration,
        RoleARN = {
            type = "string",
        },
        RetryOptions = M.SnowflakeRetryOptions,
        S3BackupMode = {
            type = "string",
        },
        S3DestinationDescription = M.S3DestinationDescription,
        SecretsManagerConfiguration = M.SecretsManagerConfiguration,
        BufferingHints = M.SnowflakeBufferingHints,
    },
}

M.SplunkDestinationDescription = {
    type = "structure",
    id = "SplunkDestinationDescription",
    members = {
        HECEndpoint = {
            type = "string",
        },
        HECEndpointType = {
            type = "string",
        },
        HECToken = {
            type = "string",
        },
        HECAcknowledgmentTimeoutInSeconds = {
            type = "integer",
        },
        RetryOptions = M.SplunkRetryOptions,
        S3BackupMode = {
            type = "string",
        },
        S3DestinationDescription = M.S3DestinationDescription,
        ProcessingConfiguration = M.ProcessingConfiguration,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        BufferingHints = M.SplunkBufferingHints,
        SecretsManagerConfiguration = M.SecretsManagerConfiguration,
    },
}

M.DestinationDescription = {
    type = "structure",
    id = "DestinationDescription",
    members = {
        DestinationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3DestinationDescription = M.S3DestinationDescription,
        ExtendedS3DestinationDescription = M.ExtendedS3DestinationDescription,
        RedshiftDestinationDescription = M.RedshiftDestinationDescription,
        ElasticsearchDestinationDescription = M.ElasticsearchDestinationDescription,
        AmazonopensearchserviceDestinationDescription = M.AmazonopensearchserviceDestinationDescription,
        SplunkDestinationDescription = M.SplunkDestinationDescription,
        HttpEndpointDestinationDescription = M.HttpEndpointDestinationDescription,
        SnowflakeDestinationDescription = M.SnowflakeDestinationDescription,
        AmazonOpenSearchServerlessDestinationDescription = M.AmazonOpenSearchServerlessDestinationDescription,
        IcebergDestinationDescription = M.IcebergDestinationDescription,
    },
}

M.DirectPutSourceDescription = {
    type = "structure",
    id = "DirectPutSourceDescription",
    members = {
        ThroughputHintInMBs = {
            type = "integer",
        },
    },
}

M.KinesisStreamSourceDescription = {
    type = "structure",
    id = "KinesisStreamSourceDescription",
    members = {
        KinesisStreamARN = {
            type = "string",
        },
        RoleARN = {
            type = "string",
        },
        DeliveryStartTimestamp = {
            type = "timestamp",
        },
    },
}

M.MSKSourceDescription = {
    type = "structure",
    id = "MSKSourceDescription",
    members = {
        MSKClusterARN = {
            type = "string",
        },
        TopicName = {
            type = "string",
        },
        AuthenticationConfiguration = M.AuthenticationConfiguration,
        DeliveryStartTimestamp = {
            type = "timestamp",
        },
        ReadFromTimestamp = {
            type = "timestamp",
        },
    },
}

M.SourceDescription = {
    type = "structure",
    id = "SourceDescription",
    members = {
        DirectPutSourceDescription = M.DirectPutSourceDescription,
        KinesisStreamSourceDescription = M.KinesisStreamSourceDescription,
        MSKSourceDescription = M.MSKSourceDescription,
        DatabaseSourceDescription = M.DatabaseSourceDescription,
    },
}

M.DeliveryStreamDescription = {
    type = "structure",
    id = "DeliveryStreamDescription",
    members = {
        DeliveryStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeliveryStreamARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeliveryStreamStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureDescription = M.FailureDescription,
        DeliveryStreamEncryptionConfiguration = M.DeliveryStreamEncryptionConfiguration,
        DeliveryStreamType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateTimestamp = {
            type = "timestamp",
        },
        LastUpdateTimestamp = {
            type = "timestamp",
        },
        Source = M.SourceDescription,
        Destinations = {
            type = "list",
            member = M.DestinationDescription,
            traits = {
                required = true,
            },
        },
        HasMoreDestinations = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeDeliveryStreamInput = {
    type = "structure",
    id = "DescribeDeliveryStreamInput",
    members = {
        DeliveryStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "integer",
        },
        ExclusiveStartDestinationId = {
            type = "string",
        },
    },
}

M.DescribeDeliveryStreamOutput = {
    type = "structure",
    id = "DescribeDeliveryStreamOutput",
    members = {
        DeliveryStreamDescription = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DeliveryStreamDescription }),
    },
}

M.ElasticsearchDestinationUpdate = {
    type = "structure",
    id = "ElasticsearchDestinationUpdate",
    members = {
        RoleARN = {
            type = "string",
        },
        DomainARN = {
            type = "string",
        },
        ClusterEndpoint = {
            type = "string",
        },
        IndexName = {
            type = "string",
        },
        TypeName = {
            type = "string",
        },
        IndexRotationPeriod = {
            type = "string",
        },
        BufferingHints = M.ElasticsearchBufferingHints,
        RetryOptions = M.ElasticsearchRetryOptions,
        S3Update = M.S3DestinationUpdate,
        ProcessingConfiguration = M.ProcessingConfiguration,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        DocumentIdOptions = M.DocumentIdOptions,
    },
}

M.ExtendedS3DestinationUpdate = {
    type = "structure",
    id = "ExtendedS3DestinationUpdate",
    members = {
        RoleARN = {
            type = "string",
        },
        BucketARN = {
            type = "string",
        },
        Prefix = {
            type = "string",
        },
        ErrorOutputPrefix = {
            type = "string",
        },
        BufferingHints = M.BufferingHints,
        CompressionFormat = {
            type = "string",
        },
        EncryptionConfiguration = M.EncryptionConfiguration,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        ProcessingConfiguration = M.ProcessingConfiguration,
        S3BackupMode = {
            type = "string",
        },
        S3BackupUpdate = M.S3DestinationUpdate,
        DataFormatConversionConfiguration = M.DataFormatConversionConfiguration,
        DynamicPartitioningConfiguration = M.DynamicPartitioningConfiguration,
        FileExtension = {
            type = "string",
        },
        CustomTimeZone = {
            type = "string",
        },
    },
}

M.ListDeliveryStreamsInput = {
    type = "structure",
    id = "ListDeliveryStreamsInput",
    members = {
        Limit = {
            type = "integer",
        },
        DeliveryStreamType = {
            type = "string",
        },
        ExclusiveStartDeliveryStreamName = {
            type = "string",
        },
    },
}

M.ListDeliveryStreamsOutput = {
    type = "structure",
    id = "ListDeliveryStreamsOutput",
    members = {
        DeliveryStreamNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        HasMoreDeliveryStreams = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForDeliveryStreamInput = {
    type = "structure",
    id = "ListTagsForDeliveryStreamInput",
    members = {
        DeliveryStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExclusiveStartTagKey = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.ListTagsForDeliveryStreamOutput = {
    type = "structure",
    id = "ListTagsForDeliveryStreamOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
        HasMoreTags = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidSourceException = {
    type = "structure",
    id = "InvalidSourceException",
    error = "client",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.Record = {
    type = "structure",
    id = "Record",
    members = {
        Data = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.PutRecordInput = {
    type = "structure",
    id = "PutRecordInput",
    members = {
        DeliveryStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Record = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Record }),
    },
}

M.PutRecordOutput = {
    type = "structure",
    id = "PutRecordOutput",
    members = {
        RecordId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Encrypted = {
            type = "boolean",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    id = "ServiceUnavailableException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutRecordBatchInput = {
    type = "structure",
    id = "PutRecordBatchInput",
    members = {
        DeliveryStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Records = {
            type = "list",
            member = M.Record,
            traits = {
                required = true,
            },
        },
    },
}

M.PutRecordBatchResponseEntry = {
    type = "structure",
    id = "PutRecordBatchResponseEntry",
    members = {
        RecordId = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.PutRecordBatchOutput = {
    type = "structure",
    id = "PutRecordBatchOutput",
    members = {
        FailedPutCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Encrypted = {
            type = "boolean",
        },
        RequestResponses = {
            type = "list",
            member = M.PutRecordBatchResponseEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.StartDeliveryStreamEncryptionInput = {
    type = "structure",
    id = "StartDeliveryStreamEncryptionInput",
    members = {
        DeliveryStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeliveryStreamEncryptionConfigurationInput = M.DeliveryStreamEncryptionConfigurationInput,
    },
}

M.StartDeliveryStreamEncryptionOutput = {
    type = "structure",
    id = "StartDeliveryStreamEncryptionOutput",
}

M.StopDeliveryStreamEncryptionInput = {
    type = "structure",
    id = "StopDeliveryStreamEncryptionInput",
    members = {
        DeliveryStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopDeliveryStreamEncryptionOutput = {
    type = "structure",
    id = "StopDeliveryStreamEncryptionOutput",
}

M.TagDeliveryStreamInput = {
    type = "structure",
    id = "TagDeliveryStreamInput",
    members = {
        DeliveryStreamName = {
            type = "string",
            traits = {
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

M.TagDeliveryStreamOutput = {
    type = "structure",
    id = "TagDeliveryStreamOutput",
}

M.UntagDeliveryStreamInput = {
    type = "structure",
    id = "UntagDeliveryStreamInput",
    members = {
        DeliveryStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagDeliveryStreamOutput = {
    type = "structure",
    id = "UntagDeliveryStreamOutput",
}

M.HttpEndpointDestinationUpdate = {
    type = "structure",
    id = "HttpEndpointDestinationUpdate",
    members = {
        EndpointConfiguration = M.HttpEndpointConfiguration,
        BufferingHints = M.HttpEndpointBufferingHints,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        RequestConfiguration = M.HttpEndpointRequestConfiguration,
        ProcessingConfiguration = M.ProcessingConfiguration,
        RoleARN = {
            type = "string",
        },
        RetryOptions = M.HttpEndpointRetryOptions,
        S3BackupMode = {
            type = "string",
        },
        S3Update = M.S3DestinationUpdate,
        SecretsManagerConfiguration = M.SecretsManagerConfiguration,
    },
}

M.IcebergDestinationUpdate = {
    type = "structure",
    id = "IcebergDestinationUpdate",
    members = {
        DestinationTableConfigurationList = {
            type = "list",
            member = M.DestinationTableConfiguration,
        },
        SchemaEvolutionConfiguration = M.SchemaEvolutionConfiguration,
        TableCreationConfiguration = M.TableCreationConfiguration,
        BufferingHints = M.BufferingHints,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        ProcessingConfiguration = M.ProcessingConfiguration,
        S3BackupMode = {
            type = "string",
        },
        RetryOptions = M.RetryOptions,
        RoleARN = {
            type = "string",
        },
        AppendOnly = {
            type = "boolean",
        },
        CatalogConfiguration = M.CatalogConfiguration,
        S3Configuration = M.S3DestinationConfiguration,
    },
}

M.RedshiftDestinationUpdate = {
    type = "structure",
    id = "RedshiftDestinationUpdate",
    members = {
        RoleARN = {
            type = "string",
        },
        ClusterJDBCURL = {
            type = "string",
        },
        CopyCommand = M.CopyCommand,
        Username = {
            type = "string",
        },
        Password = {
            type = "string",
        },
        RetryOptions = M.RedshiftRetryOptions,
        S3Update = M.S3DestinationUpdate,
        ProcessingConfiguration = M.ProcessingConfiguration,
        S3BackupMode = {
            type = "string",
        },
        S3BackupUpdate = M.S3DestinationUpdate,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        SecretsManagerConfiguration = M.SecretsManagerConfiguration,
    },
}

M.SnowflakeDestinationUpdate = {
    type = "structure",
    id = "SnowflakeDestinationUpdate",
    members = {
        AccountUrl = {
            type = "string",
        },
        PrivateKey = {
            type = "string",
        },
        KeyPassphrase = {
            type = "string",
        },
        User = {
            type = "string",
        },
        Database = {
            type = "string",
        },
        Schema = {
            type = "string",
        },
        Table = {
            type = "string",
        },
        SnowflakeRoleConfiguration = M.SnowflakeRoleConfiguration,
        DataLoadingOption = {
            type = "string",
        },
        MetaDataColumnName = {
            type = "string",
        },
        ContentColumnName = {
            type = "string",
        },
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        ProcessingConfiguration = M.ProcessingConfiguration,
        RoleARN = {
            type = "string",
        },
        RetryOptions = M.SnowflakeRetryOptions,
        S3BackupMode = {
            type = "string",
        },
        S3Update = M.S3DestinationUpdate,
        SecretsManagerConfiguration = M.SecretsManagerConfiguration,
        BufferingHints = M.SnowflakeBufferingHints,
    },
}

M.SplunkDestinationUpdate = {
    type = "structure",
    id = "SplunkDestinationUpdate",
    members = {
        HECEndpoint = {
            type = "string",
        },
        HECEndpointType = {
            type = "string",
        },
        HECToken = {
            type = "string",
        },
        HECAcknowledgmentTimeoutInSeconds = {
            type = "integer",
        },
        RetryOptions = M.SplunkRetryOptions,
        S3BackupMode = {
            type = "string",
        },
        S3Update = M.S3DestinationUpdate,
        ProcessingConfiguration = M.ProcessingConfiguration,
        CloudWatchLoggingOptions = M.CloudWatchLoggingOptions,
        BufferingHints = M.SplunkBufferingHints,
        SecretsManagerConfiguration = M.SecretsManagerConfiguration,
    },
}

M.UpdateDestinationInput = {
    type = "structure",
    id = "UpdateDestinationInput",
    members = {
        DeliveryStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentDeliveryStreamVersionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3DestinationUpdate = M.S3DestinationUpdate,
        ExtendedS3DestinationUpdate = M.ExtendedS3DestinationUpdate,
        RedshiftDestinationUpdate = M.RedshiftDestinationUpdate,
        ElasticsearchDestinationUpdate = M.ElasticsearchDestinationUpdate,
        AmazonopensearchserviceDestinationUpdate = M.AmazonopensearchserviceDestinationUpdate,
        SplunkDestinationUpdate = M.SplunkDestinationUpdate,
        HttpEndpointDestinationUpdate = M.HttpEndpointDestinationUpdate,
        AmazonOpenSearchServerlessDestinationUpdate = M.AmazonOpenSearchServerlessDestinationUpdate,
        SnowflakeDestinationUpdate = M.SnowflakeDestinationUpdate,
        IcebergDestinationUpdate = M.IcebergDestinationUpdate,
    },
}

M.UpdateDestinationOutput = {
    type = "structure",
    id = "UpdateDestinationOutput",
}

return M
