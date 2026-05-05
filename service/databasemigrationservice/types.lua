local M = {}

M.MigrationTypeValue = {
    FULL_LOAD = "full-load",
    CDC = "cdc",
    FULL_LOAD_AND_CDC = "full-load-and-cdc",
}

M.TablePreparationMode = {
    DO_NOTHING = "do-nothing",
    TRUNCATE = "truncate",
    DROP_TABLES_ON_TARGET = "drop-tables-on-target",
}

M.DmsSslModeValue = {
    NONE = "none",
    REQUIRE = "require",
    VERIFY_CA = "verify-ca",
    VERIFY_FULL = "verify-full",
}

M.AuthMechanismValue = {
    DEFAULT = "default",
    MONGODB_CR = "mongodb_cr",
    SCRAM_SHA_1 = "scram_sha_1",
}

M.AuthTypeValue = {
    NO = "no",
    PASSWORD = "password",
}

M.NestingLevelValue = {
    NONE = "none",
    ONE = "one",
}

M.ReplicationEndpointTypeValue = {
    SOURCE = "source",
    TARGET = "target",
}

M.TargetDbType = {
    SPECIFIC_DATABASE = "specific-database",
    MULTIPLE_DATABASES = "multiple-databases",
}

M.MessageFormatValue = {
    JSON = "json",
    JSON_UNFORMATTED = "json-unformatted",
}

M.KafkaSaslMechanism = {
    SCRAM_SHA_512 = "scram-sha-512",
    PLAIN = "plain",
}

M.KafkaSecurityProtocol = {
    PLAINTEXT = "plaintext",
    SSL_AUTHENTICATION = "ssl-authentication",
    SSL_ENCRYPTION = "ssl-encryption",
    SASL_SSL = "sasl-ssl",
}

M.KafkaSslEndpointIdentificationAlgorithm = {
    NONE = "none",
    HTTPS = "https",
}

M.SqlServerAuthenticationMethod = {
    Password = "password",
    Kerberos = "kerberos",
}

M.SafeguardPolicy = {
    RELY_ON_SQL_SERVER_REPLICATION_AGENT = "rely-on-sql-server-replication-agent",
    EXCLUSIVE_AUTOMATIC_TRUNCATION = "exclusive-automatic-truncation",
    SHARED_AUTOMATIC_TRUNCATION = "shared-automatic-truncation",
}

M.TlogAccessMode = {
    BackupOnly = "BackupOnly",
    PreferBackup = "PreferBackup",
    PreferTlog = "PreferTlog",
    TlogOnly = "TlogOnly",
}

M.MySQLAuthenticationMethod = {
    Password = "password",
    IAM = "iam",
}

M.OracleAuthenticationMethod = {
    Password = "password",
    Kerberos = "kerberos",
}

M.CharLengthSemantics = {
    DEFAULT = "default",
    CHAR = "char",
    BYTE = "byte",
}

M.PostgreSQLAuthenticationMethod = {
    Password = "password",
    IAM = "iam",
}

M.DatabaseMode = {
    DEFAULT = "default",
    BABELFISH = "babelfish",
}

M.LongVarcharMappingType = {
    WSTRING = "wstring",
    CLOB = "clob",
    NCLOB = "nclob",
}

M.PluginNameValue = {
    NO_PREFERENCE = "no-preference",
    TEST_DECODING = "test-decoding",
    PGLOGICAL = "pglogical",
}

M.RedisAuthTypeValue = {
    NONE = "none",
    AUTH_ROLE = "auth-role",
    AUTH_TOKEN = "auth-token",
}

M.SslSecurityProtocolValue = {
    PLAINTEXT = "plaintext",
    SSL_ENCRYPTION = "ssl-encryption",
}

M.EncryptionModeValue = {
    SSE_S3 = "sse-s3",
    SSE_KMS = "sse-kms",
}

M.CannedAclForObjectsValue = {
    NONE = "none",
    PRIVATE = "private",
    PUBLIC_READ = "public-read",
    PUBLIC_READ_WRITE = "public-read-write",
    AUTHENTICATED_READ = "authenticated-read",
    AWS_EXEC_READ = "aws-exec-read",
    BUCKET_OWNER_READ = "bucket-owner-read",
    BUCKET_OWNER_FULL_CONTROL = "bucket-owner-full-control",
}

M.CompressionTypeValue = {
    NONE = "none",
    GZIP = "gzip",
}

M.DataFormatValue = {
    CSV = "csv",
    PARQUET = "parquet",
}

M.DatePartitionDelimiterValue = {
    SLASH = "SLASH",
    UNDERSCORE = "UNDERSCORE",
    DASH = "DASH",
    NONE = "NONE",
}

M.DatePartitionSequenceValue = {
    YYYYMMDD = "YYYYMMDD",
    YYYYMMDDHH = "YYYYMMDDHH",
    YYYYMM = "YYYYMM",
    MMYYYYDD = "MMYYYYDD",
    DDMMYYYY = "DDMMYYYY",
}

M.EncodingTypeValue = {
    PLAIN = "plain",
    PLAIN_DICTIONARY = "plain-dictionary",
    RLE_DICTIONARY = "rle-dictionary",
}

M.ParquetVersionValue = {
    PARQUET_1_0 = "parquet-1-0",
    PARQUET_2_0 = "parquet-2-0",
}

M.EndpointSettingTypeValue = {
    STRING = "string",
    BOOLEAN = "boolean",
    INTEGER = "integer",
    ENUM = "enum",
}

M.ReleaseStatusValues = {
    BETA = "beta",
    PROD = "prod",
}

M.SourceType = {
    replication_instance = "replication-instance",
}

M.CollectorStatus = {
    UNREGISTERED = "UNREGISTERED",
    ACTIVE = "ACTIVE",
}

M.VersionStatus = {
    UP_TO_DATE = "UP_TO_DATE",
    OUTDATED = "OUTDATED",
    UNSUPPORTED = "UNSUPPORTED",
}

M.OriginTypeValue = {
    SOURCE = "SOURCE",
    TARGET = "TARGET",
}

M.RefreshSchemasStatusTypeValue = {
    SUCCESSFUL = "successful",
    FAILED = "failed",
    REFRESHING = "refreshing",
}

M.AssessmentReportType = {
    PDF = "pdf",
    CSV = "csv",
}

M.ReloadOptionValue = {
    DATA_RELOAD = "data-reload",
    VALIDATE_ONLY = "validate-only",
}

M.StartReplicationMigrationTypeValue = {
    RELOAD_TARGET = "reload-target",
    RESUME_PROCESSING = "resume-processing",
    START_REPLICATION = "start-replication",
}

M.StartReplicationTaskTypeValue = {
    START_REPLICATION = "start-replication",
    RESUME_PROCESSING = "resume-processing",
    RELOAD_TARGET = "reload-target",
}

return M
