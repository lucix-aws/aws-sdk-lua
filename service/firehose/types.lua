local M = {}

M.AmazonOpenSearchServerlessBufferingHints = {
    type = "structure",
    members = {
        IntervalInSeconds = {
            type = "number",
        },
        SizeInMBs = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
    },
}

M.AmazonOpenSearchServerlessRetryOptions = {
    type = "structure",
    members = {
        DurationInSeconds = {
            type = "number",
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
            type = "number",
        },
        IntervalInSeconds = {
            type = "number",
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
        KMSEncryptionConfig = {
            type = "structure",
        },
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
        BufferingHints = {
            type = "structure",
        },
        CompressionFormat = {
            type = "string",
        },
        EncryptionConfiguration = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
    },
}

M.VpcConfiguration = {
    type = "structure",
    members = {
        SubnetIds = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
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
        BufferingHints = {
            type = "structure",
        },
        RetryOptions = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        S3Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        VpcConfiguration = {
            type = "structure",
        },
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
        BufferingHints = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CompressionFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
    },
}

M.VpcConfigurationDescription = {
    type = "structure",
    members = {
        SubnetIds = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
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
        BufferingHints = {
            type = "structure",
        },
        RetryOptions = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        S3DestinationDescription = {
            type = "structure",
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        VpcConfigurationDescription = {
            type = "structure",
        },
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
        BufferingHints = {
            type = "structure",
        },
        CompressionFormat = {
            type = "string",
        },
        EncryptionConfiguration = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
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
        BufferingHints = {
            type = "structure",
        },
        RetryOptions = {
            type = "structure",
        },
        S3Update = {
            type = "structure",
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
    },
}

M.AmazonopensearchserviceBufferingHints = {
    type = "structure",
    members = {
        IntervalInSeconds = {
            type = "number",
        },
        SizeInMBs = {
            type = "number",
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
            type = "number",
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
        BufferingHints = {
            type = "structure",
        },
        RetryOptions = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        S3Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        VpcConfiguration = {
            type = "structure",
        },
        DocumentIdOptions = {
            type = "structure",
        },
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
        BufferingHints = {
            type = "structure",
        },
        RetryOptions = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        S3DestinationDescription = {
            type = "structure",
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        VpcConfigurationDescription = {
            type = "structure",
        },
        DocumentIdOptions = {
            type = "structure",
        },
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
        BufferingHints = {
            type = "structure",
        },
        RetryOptions = {
            type = "structure",
        },
        S3Update = {
            type = "structure",
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        DocumentIdOptions = {
            type = "structure",
        },
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
            member_type = "string",
        },
        Exclude = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DatabaseList = {
    type = "structure",
    members = {
        Include = {
            type = "list",
            member_type = "string",
        },
        Exclude = {
            type = "list",
            member_type = "string",
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
        SecretsManagerConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "string",
        },
        Exclude = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        SSLMode = {
            type = "string",
        },
        Databases = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tables = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Columns = {
            type = "structure",
        },
        SurrogateKeys = {
            type = "list",
            member_type = "string",
        },
        SnapshotWatermarkTable = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DatabaseSourceAuthenticationConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DatabaseSourceVPCConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
            type = "number",
        },
        SizeInMBs = {
            type = "number",
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
            type = "number",
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
        BufferingHints = {
            type = "structure",
        },
        RetryOptions = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        S3Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        VpcConfiguration = {
            type = "structure",
        },
        DocumentIdOptions = {
            type = "structure",
        },
    },
}

M.HiveJsonSerDe = {
    type = "structure",
    members = {
        TimestampFormats = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.Deserializer = {
    type = "structure",
    members = {
        OpenXJsonSerDe = {
            type = "structure",
        },
        HiveJsonSerDe = {
            type = "structure",
        },
    },
}

M.InputFormatConfiguration = {
    type = "structure",
    members = {
        Deserializer = {
            type = "structure",
        },
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
            type = "number",
        },
        BlockSizeBytes = {
            type = "number",
        },
        RowIndexStride = {
            type = "number",
        },
        EnablePadding = {
            type = "boolean",
        },
        PaddingTolerance = {
            type = "number",
        },
        Compression = {
            type = "string",
        },
        BloomFilterColumns = {
            type = "list",
            member_type = "string",
        },
        BloomFilterFalsePositiveProbability = {
            type = "number",
        },
        DictionaryKeyThreshold = {
            type = "number",
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
            type = "number",
        },
        PageSizeBytes = {
            type = "number",
        },
        Compression = {
            type = "string",
        },
        EnableDictionaryCompression = {
            type = "boolean",
        },
        MaxPaddingBytes = {
            type = "number",
        },
        WriterVersion = {
            type = "string",
        },
    },
}

M.Serializer = {
    type = "structure",
    members = {
        ParquetSerDe = {
            type = "structure",
        },
        OrcSerDe = {
            type = "structure",
        },
    },
}

M.OutputFormatConfiguration = {
    type = "structure",
    members = {
        Serializer = {
            type = "structure",
        },
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
        SchemaConfiguration = {
            type = "structure",
        },
        InputFormatConfiguration = {
            type = "structure",
        },
        OutputFormatConfiguration = {
            type = "structure",
        },
        Enabled = {
            type = "boolean",
        },
    },
}

M.RetryOptions = {
    type = "structure",
    members = {
        DurationInSeconds = {
            type = "number",
        },
    },
}

M.DynamicPartitioningConfiguration = {
    type = "structure",
    members = {
        RetryOptions = {
            type = "structure",
        },
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
        BufferingHints = {
            type = "structure",
        },
        CompressionFormat = {
            type = "string",
        },
        EncryptionConfiguration = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        S3BackupConfiguration = {
            type = "structure",
        },
        DataFormatConversionConfiguration = {
            type = "structure",
        },
        DynamicPartitioningConfiguration = {
            type = "structure",
        },
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
            type = "number",
        },
        IntervalInSeconds = {
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.HttpEndpointRetryOptions = {
    type = "structure",
    members = {
        DurationInSeconds = {
            type = "number",
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
        EndpointConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        BufferingHints = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        RequestConfiguration = {
            type = "structure",
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        RoleARN = {
            type = "string",
        },
        RetryOptions = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        S3Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SecretsManagerConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
        },
        PartitionSpec = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        SchemaEvolutionConfiguration = {
            type = "structure",
        },
        TableCreationConfiguration = {
            type = "structure",
        },
        BufferingHints = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        RetryOptions = {
            type = "structure",
        },
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AppendOnly = {
            type = "boolean",
        },
        CatalogConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        S3Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        AuthenticationConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ReadFromTimestamp = {
            type = "timestamp",
        },
    },
}

M.RedshiftRetryOptions = {
    type = "structure",
    members = {
        DurationInSeconds = {
            type = "number",
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
        CopyCommand = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
        },
        Password = {
            type = "string",
        },
        RetryOptions = {
            type = "structure",
        },
        S3Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        S3BackupConfiguration = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        SecretsManagerConfiguration = {
            type = "structure",
        },
    },
}

M.SnowflakeBufferingHints = {
    type = "structure",
    members = {
        SizeInMBs = {
            type = "number",
        },
        IntervalInSeconds = {
            type = "number",
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
            type = "number",
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
        SnowflakeRoleConfiguration = {
            type = "structure",
        },
        DataLoadingOption = {
            type = "string",
        },
        MetaDataColumnName = {
            type = "string",
        },
        ContentColumnName = {
            type = "string",
        },
        SnowflakeVpcConfiguration = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetryOptions = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        S3Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SecretsManagerConfiguration = {
            type = "structure",
        },
        BufferingHints = {
            type = "structure",
        },
    },
}

M.SplunkBufferingHints = {
    type = "structure",
    members = {
        IntervalInSeconds = {
            type = "number",
        },
        SizeInMBs = {
            type = "number",
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
            type = "number",
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
            type = "number",
        },
        RetryOptions = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        S3Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        BufferingHints = {
            type = "structure",
        },
        SecretsManagerConfiguration = {
            type = "structure",
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
        DirectPutSourceConfiguration = {
            type = "structure",
        },
        KinesisStreamSourceConfiguration = {
            type = "structure",
        },
        DeliveryStreamEncryptionConfigurationInput = {
            type = "structure",
        },
        S3DestinationConfiguration = {
            type = "structure",
        },
        ExtendedS3DestinationConfiguration = {
            type = "structure",
        },
        RedshiftDestinationConfiguration = {
            type = "structure",
        },
        ElasticsearchDestinationConfiguration = {
            type = "structure",
        },
        AmazonopensearchserviceDestinationConfiguration = {
            type = "structure",
        },
        SplunkDestinationConfiguration = {
            type = "structure",
        },
        HttpEndpointDestinationConfiguration = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        AmazonOpenSearchServerlessDestinationConfiguration = {
            type = "structure",
        },
        MSKSourceConfiguration = {
            type = "structure",
        },
        SnowflakeDestinationConfiguration = {
            type = "structure",
        },
        IcebergDestinationConfiguration = {
            type = "structure",
        },
        DatabaseSourceConfiguration = {
            type = "structure",
        },
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
        FailureDescription = {
            type = "structure",
        },
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
            type = "number",
        },
        SSLMode = {
            type = "string",
        },
        Databases = {
            type = "structure",
        },
        Tables = {
            type = "structure",
        },
        Columns = {
            type = "structure",
        },
        SurrogateKeys = {
            type = "list",
            member_type = "string",
        },
        SnapshotWatermarkTable = {
            type = "string",
        },
        SnapshotInfo = {
            type = "list",
            member_type = "structure",
        },
        DatabaseSourceAuthenticationConfiguration = {
            type = "structure",
        },
        DatabaseSourceVPCConfiguration = {
            type = "structure",
        },
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
        FailureDescription = {
            type = "structure",
        },
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
        BufferingHints = {
            type = "structure",
        },
        RetryOptions = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        S3DestinationDescription = {
            type = "structure",
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        VpcConfigurationDescription = {
            type = "structure",
        },
        DocumentIdOptions = {
            type = "structure",
        },
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
        BufferingHints = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CompressionFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        S3BackupDescription = {
            type = "structure",
        },
        DataFormatConversionConfiguration = {
            type = "structure",
        },
        DynamicPartitioningConfiguration = {
            type = "structure",
        },
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
        EndpointConfiguration = {
            type = "structure",
        },
        BufferingHints = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        RequestConfiguration = {
            type = "structure",
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        RoleARN = {
            type = "string",
        },
        RetryOptions = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        S3DestinationDescription = {
            type = "structure",
        },
        SecretsManagerConfiguration = {
            type = "structure",
        },
    },
}

M.IcebergDestinationDescription = {
    type = "structure",
    members = {
        DestinationTableConfigurationList = {
            type = "list",
            member_type = "structure",
        },
        SchemaEvolutionConfiguration = {
            type = "structure",
        },
        TableCreationConfiguration = {
            type = "structure",
        },
        BufferingHints = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        RetryOptions = {
            type = "structure",
        },
        RoleARN = {
            type = "string",
        },
        AppendOnly = {
            type = "boolean",
        },
        CatalogConfiguration = {
            type = "structure",
        },
        S3DestinationDescription = {
            type = "structure",
        },
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
        CopyCommand = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Username = {
            type = "string",
        },
        RetryOptions = {
            type = "structure",
        },
        S3DestinationDescription = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        S3BackupDescription = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        SecretsManagerConfiguration = {
            type = "structure",
        },
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
        SnowflakeRoleConfiguration = {
            type = "structure",
        },
        DataLoadingOption = {
            type = "string",
        },
        MetaDataColumnName = {
            type = "string",
        },
        ContentColumnName = {
            type = "string",
        },
        SnowflakeVpcConfiguration = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        RoleARN = {
            type = "string",
        },
        RetryOptions = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        S3DestinationDescription = {
            type = "structure",
        },
        SecretsManagerConfiguration = {
            type = "structure",
        },
        BufferingHints = {
            type = "structure",
        },
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
            type = "number",
        },
        RetryOptions = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        S3DestinationDescription = {
            type = "structure",
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        BufferingHints = {
            type = "structure",
        },
        SecretsManagerConfiguration = {
            type = "structure",
        },
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
        S3DestinationDescription = {
            type = "structure",
        },
        ExtendedS3DestinationDescription = {
            type = "structure",
        },
        RedshiftDestinationDescription = {
            type = "structure",
        },
        ElasticsearchDestinationDescription = {
            type = "structure",
        },
        AmazonopensearchserviceDestinationDescription = {
            type = "structure",
        },
        SplunkDestinationDescription = {
            type = "structure",
        },
        HttpEndpointDestinationDescription = {
            type = "structure",
        },
        SnowflakeDestinationDescription = {
            type = "structure",
        },
        AmazonOpenSearchServerlessDestinationDescription = {
            type = "structure",
        },
        IcebergDestinationDescription = {
            type = "structure",
        },
    },
}

M.DirectPutSourceDescription = {
    type = "structure",
    members = {
        ThroughputHintInMBs = {
            type = "number",
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
        AuthenticationConfiguration = {
            type = "structure",
        },
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
        DirectPutSourceDescription = {
            type = "structure",
        },
        KinesisStreamSourceDescription = {
            type = "structure",
        },
        MSKSourceDescription = {
            type = "structure",
        },
        DatabaseSourceDescription = {
            type = "structure",
        },
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
        FailureDescription = {
            type = "structure",
        },
        DeliveryStreamEncryptionConfiguration = {
            type = "structure",
        },
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
        Source = {
            type = "structure",
        },
        Destinations = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        ExclusiveStartDestinationId = {
            type = "string",
        },
    },
}

M.DescribeDeliveryStreamOutput = {
    type = "structure",
    members = {
        DeliveryStreamDescription = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        BufferingHints = {
            type = "structure",
        },
        RetryOptions = {
            type = "structure",
        },
        S3Update = {
            type = "structure",
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        DocumentIdOptions = {
            type = "structure",
        },
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
        BufferingHints = {
            type = "structure",
        },
        CompressionFormat = {
            type = "string",
        },
        EncryptionConfiguration = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        S3BackupUpdate = {
            type = "structure",
        },
        DataFormatConversionConfiguration = {
            type = "structure",
        },
        DynamicPartitioningConfiguration = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "string",
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
            type = "number",
        },
    },
}

M.ListTagsForDeliveryStreamOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
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
        Record = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Encrypted = {
            type = "boolean",
        },
        RequestResponses = {
            type = "list",
            member_type = "structure",
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
        DeliveryStreamEncryptionConfigurationInput = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
        EndpointConfiguration = {
            type = "structure",
        },
        BufferingHints = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        RequestConfiguration = {
            type = "structure",
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        RoleARN = {
            type = "string",
        },
        RetryOptions = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        S3Update = {
            type = "structure",
        },
        SecretsManagerConfiguration = {
            type = "structure",
        },
    },
}

M.IcebergDestinationUpdate = {
    type = "structure",
    members = {
        DestinationTableConfigurationList = {
            type = "list",
            member_type = "structure",
        },
        SchemaEvolutionConfiguration = {
            type = "structure",
        },
        TableCreationConfiguration = {
            type = "structure",
        },
        BufferingHints = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        RetryOptions = {
            type = "structure",
        },
        RoleARN = {
            type = "string",
        },
        AppendOnly = {
            type = "boolean",
        },
        CatalogConfiguration = {
            type = "structure",
        },
        S3Configuration = {
            type = "structure",
        },
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
        CopyCommand = {
            type = "structure",
        },
        Username = {
            type = "string",
        },
        Password = {
            type = "string",
        },
        RetryOptions = {
            type = "structure",
        },
        S3Update = {
            type = "structure",
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        S3BackupUpdate = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        SecretsManagerConfiguration = {
            type = "structure",
        },
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
        SnowflakeRoleConfiguration = {
            type = "structure",
        },
        DataLoadingOption = {
            type = "string",
        },
        MetaDataColumnName = {
            type = "string",
        },
        ContentColumnName = {
            type = "string",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        RoleARN = {
            type = "string",
        },
        RetryOptions = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        S3Update = {
            type = "structure",
        },
        SecretsManagerConfiguration = {
            type = "structure",
        },
        BufferingHints = {
            type = "structure",
        },
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
            type = "number",
        },
        RetryOptions = {
            type = "structure",
        },
        S3BackupMode = {
            type = "string",
        },
        S3Update = {
            type = "structure",
        },
        ProcessingConfiguration = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "structure",
        },
        BufferingHints = {
            type = "structure",
        },
        SecretsManagerConfiguration = {
            type = "structure",
        },
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
        S3DestinationUpdate = {
            type = "structure",
        },
        ExtendedS3DestinationUpdate = {
            type = "structure",
        },
        RedshiftDestinationUpdate = {
            type = "structure",
        },
        ElasticsearchDestinationUpdate = {
            type = "structure",
        },
        AmazonopensearchserviceDestinationUpdate = {
            type = "structure",
        },
        SplunkDestinationUpdate = {
            type = "structure",
        },
        HttpEndpointDestinationUpdate = {
            type = "structure",
        },
        AmazonOpenSearchServerlessDestinationUpdate = {
            type = "structure",
        },
        SnowflakeDestinationUpdate = {
            type = "structure",
        },
        IcebergDestinationUpdate = {
            type = "structure",
        },
    },
}

M.UpdateDestinationOutput = {
    type = "structure",
}

return M
