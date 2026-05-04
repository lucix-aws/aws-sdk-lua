local M = {}

M.AmazonOpenSearchServerlessBufferingHints = {
    type = "structure",
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
    members = {
        NoEncryptionConfig = {
            type = "string",
        },
        KMSEncryptionConfig = M.KMSEncryptionConfig,
    },
}

M.S3DestinationConfiguration = {
    type = "structure",
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
    members = {
        SecretsManagerConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SecretsManagerConfiguration }),
    },
}

M.DatabaseSourceVPCConfiguration = {
    type = "structure",
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
    members = {
        TimestampFormats = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OpenXJsonSerDe = {
    type = "structure",
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
    members = {
        OpenXJsonSerDe = M.OpenXJsonSerDe,
        HiveJsonSerDe = M.HiveJsonSerDe,
    },
}

M.InputFormatConfiguration = {
    type = "structure",
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
    members = {
        ParquetSerDe = M.ParquetSerDe,
        OrcSerDe = M.OrcSerDe,
    },
}

M.OutputFormatConfiguration = {
    type = "structure",
    members = {
        Serializer = M.Serializer,
    },
}

M.SchemaConfiguration = {
    type = "structure",
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
    members = {
        DurationInSeconds = {
            type = "integer",
        },
    },
}

M.DynamicPartitioningConfiguration = {
    type = "structure",
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
    members = {
        Identity = {
            type = "list",
            member = M.PartitionField,
        },
    },
}

M.DestinationTableConfiguration = {
    type = "structure",
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
    members = {
        DeliveryStreamARN = {
            type = "string",
        },
    },
}

M.InvalidArgumentException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidKMSResourceException = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
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
}

M.ResourceNotFoundException = {
    type = "structure",
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
    members = {
        ThroughputHintInMBs = {
            type = "integer",
        },
    },
}

M.KinesisStreamSourceDescription = {
    type = "structure",
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
    members = {
        DirectPutSourceDescription = M.DirectPutSourceDescription,
        KinesisStreamSourceDescription = M.KinesisStreamSourceDescription,
        MSKSourceDescription = M.MSKSourceDescription,
        DatabaseSourceDescription = M.DatabaseSourceDescription,
    },
}

M.DeliveryStreamDescription = {
    type = "structure",
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
    members = {
        DeliveryStreamDescription = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DeliveryStreamDescription }),
    },
}

M.ElasticsearchDestinationUpdate = {
    type = "structure",
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
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutRecordBatchInput = {
    type = "structure",
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
}

M.StopDeliveryStreamEncryptionInput = {
    type = "structure",
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
}

M.TagDeliveryStreamInput = {
    type = "structure",
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
}

M.UntagDeliveryStreamInput = {
    type = "structure",
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
}

M.HttpEndpointDestinationUpdate = {
    type = "structure",
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
}

return M
