local M = {}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
    NOT_SUPPORTED = "notSupported",
}

M.ResourceType = {
    AWS_S3_BUCKET = "AWS::S3::Bucket",
    AWS_IAM_ROLE = "AWS::IAM::Role",
    AWS_SQS_QUEUE = "AWS::SQS::Queue",
    AWS_LAMBDA_FUNCTION = "AWS::Lambda::Function",
    AWS_LAMBDA_LAYERVERSION = "AWS::Lambda::LayerVersion",
    AWS_KMS_KEY = "AWS::KMS::Key",
    AWS_SECRETSMANAGER_SECRET = "AWS::SecretsManager::Secret",
    AWS_EFS_FILESYSTEM = "AWS::EFS::FileSystem",
    AWS_EC2_SNAPSHOT = "AWS::EC2::Snapshot",
    AWS_ECR_REPOSITORY = "AWS::ECR::Repository",
    AWS_RDS_DBSNAPSHOT = "AWS::RDS::DBSnapshot",
    AWS_RDS_DBCLUSTERSNAPSHOT = "AWS::RDS::DBClusterSnapshot",
    AWS_SNS_TOPIC = "AWS::SNS::Topic",
    AWS_S3EXPRESS_DIRECTORYBUCKET = "AWS::S3Express::DirectoryBucket",
    AWS_DYNAMODB_TABLE = "AWS::DynamoDB::Table",
    AWS_DYNAMODB_STREAM = "AWS::DynamoDB::Stream",
    AWS_IAM_USER = "AWS::IAM::User",
}

M.Type = {
    ACCOUNT = "ACCOUNT",
    ORGANIZATION = "ORGANIZATION",
    ACCOUNT_UNUSED_ACCESS = "ACCOUNT_UNUSED_ACCESS",
    ORGANIZATION_UNUSED_ACCESS = "ORGANIZATION_UNUSED_ACCESS",
    ACCOUNT_INTERNAL_ACCESS = "ACCOUNT_INTERNAL_ACCESS",
    ORGANIZATION_INTERNAL_ACCESS = "ORGANIZATION_INTERNAL_ACCESS",
}

M.AnalyzerStatus = {
    ACTIVE = "ACTIVE",
    CREATING = "CREATING",
    DISABLED = "DISABLED",
    FAILED = "FAILED",
}

M.ReasonCode = {
    AWS_SERVICE_ACCESS_DISABLED = "AWS_SERVICE_ACCESS_DISABLED",
    DELEGATED_ADMINISTRATOR_DEREGISTERED = "DELEGATED_ADMINISTRATOR_DEREGISTERED",
    ORGANIZATION_DELETED = "ORGANIZATION_DELETED",
    SERVICE_LINKED_ROLE_CREATION_FAILED = "SERVICE_LINKED_ROLE_CREATION_FAILED",
}

M.AccessCheckPolicyType = {
    IDENTITY_POLICY = "IDENTITY_POLICY",
    RESOURCE_POLICY = "RESOURCE_POLICY",
}

M.CheckAccessNotGrantedResult = {
    PASS = "PASS",
    FAIL = "FAIL",
}

M.CheckNoNewAccessResult = {
    PASS = "PASS",
    FAIL = "FAIL",
}

M.AccessCheckResourceType = {
    DYNAMODB_TABLE = "AWS::DynamoDB::Table",
    DYNAMODB_STREAM = "AWS::DynamoDB::Stream",
    EFS_FILESYSTEM = "AWS::EFS::FileSystem",
    OPENSEARCHSERVICE_DOMAIN = "AWS::OpenSearchService::Domain",
    KINESIS_DATA_STREAM = "AWS::Kinesis::Stream",
    KINESIS_STREAM_CONSUMER = "AWS::Kinesis::StreamConsumer",
    KMS_KEY = "AWS::KMS::Key",
    LAMBDA_FUNCTION = "AWS::Lambda::Function",
    S3_BUCKET = "AWS::S3::Bucket",
    S3_ACCESS_POINT = "AWS::S3::AccessPoint",
    S3EXPRESS_DIRECTORYBUCKET = "AWS::S3Express::DirectoryBucket",
    S3_GLACIER = "AWS::S3::Glacier",
    S3_OUTPOSTS_BUCKET = "AWS::S3Outposts::Bucket",
    S3_OUTPOSTS_ACCESS_POINT = "AWS::S3Outposts::AccessPoint",
    SECRETSMANAGER_SECRET = "AWS::SecretsManager::Secret",
    SNS_TOPIC = "AWS::SNS::Topic",
    SQS_QUEUE = "AWS::SQS::Queue",
    ROLE_TRUST = "AWS::IAM::AssumeRolePolicyDocument",
    S3_TABLE_BUCKET = "AWS::S3Tables::TableBucket",
    API_GATEWAY_REST_API = "AWS::ApiGateway::RestApi",
    CODE_ARTIFACT_DOMAIN = "AWS::CodeArtifact::Domain",
    BACKUP_VAULT = "AWS::Backup::BackupVault",
    CLOUDTRAIL_DASHBOARD = "AWS::CloudTrail::Dashboard",
    CLOUDTRAIL_EVENT_DATA_STORE = "AWS::CloudTrail::EventDataStore",
    S3_TABLE = "AWS::S3Tables::Table",
    S3_EXPRESS_ACCESS_POINT = "AWS::S3Express::AccessPoint",
}

M.CheckNoPublicAccessResult = {
    PASS = "PASS",
    FAIL = "FAIL",
}

M.KmsGrantOperation = {
    CREATE_GRANT = "CreateGrant",
    DECRYPT = "Decrypt",
    DESCRIBE_KEY = "DescribeKey",
    ENCRYPT = "Encrypt",
    GENERATE_DATA_KEY = "GenerateDataKey",
    GENERATE_DATA_KEY_PAIR = "GenerateDataKeyPair",
    GENERATE_DATA_KEY_PAIR_WITHOUT_PLAINTEXT = "GenerateDataKeyPairWithoutPlaintext",
    GENERATE_DATA_KEY_WITHOUT_PLAINTEXT = "GenerateDataKeyWithoutPlaintext",
    GET_PUBLIC_KEY = "GetPublicKey",
    REENCRYPT_FROM = "ReEncryptFrom",
    REENCRYPT_TO = "ReEncryptTo",
    RETIRE_GRANT = "RetireGrant",
    SIGN = "Sign",
    VERIFY = "Verify",
}

M.AclPermission = {
    READ = "READ",
    WRITE = "WRITE",
    READ_ACP = "READ_ACP",
    WRITE_ACP = "WRITE_ACP",
    FULL_CONTROL = "FULL_CONTROL",
}

M.AccessPreviewStatus = {
    COMPLETED = "COMPLETED",
    CREATING = "CREATING",
    FAILED = "FAILED",
}

M.AccessPreviewStatusReasonCode = {
    INTERNAL_ERROR = "INTERNAL_ERROR",
    INVALID_CONFIGURATION = "INVALID_CONFIGURATION",
}

M.FindingStatus = {
    ACTIVE = "ACTIVE",
    ARCHIVED = "ARCHIVED",
    RESOLVED = "RESOLVED",
}

M.ResourceControlPolicyRestriction = {
    APPLICABLE = "APPLICABLE",
    FAILED_TO_EVALUATE_RCP = "FAILED_TO_EVALUATE_RCP",
    NOT_APPLICABLE = "NOT_APPLICABLE",
    APPLIED = "APPLIED",
}

M.FindingSourceType = {
    POLICY = "POLICY",
    BUCKET_ACL = "BUCKET_ACL",
    S3_ACCESS_POINT = "S3_ACCESS_POINT",
    S3_ACCESS_POINT_ACCOUNT = "S3_ACCESS_POINT_ACCOUNT",
}

M.RecommendationType = {
    UNUSED_PERMISSION_RECOMMENDATION = "UnusedPermissionRecommendation",
}

M.RecommendedRemediationAction = {
    CREATE_POLICY = "CREATE_POLICY",
    DETACH_POLICY = "DETACH_POLICY",
}

M.Status = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
}

M.InternalAccessType = {
    INTRA_ACCOUNT = "INTRA_ACCOUNT",
    INTRA_ORG = "INTRA_ORG",
}

M.PrincipalType = {
    IAM_ROLE = "IAM_ROLE",
    IAM_USER = "IAM_USER",
}

M.ServiceControlPolicyRestriction = {
    APPLICABLE = "APPLICABLE",
    FAILED_TO_EVALUATE_SCP = "FAILED_TO_EVALUATE_SCP",
    NOT_APPLICABLE = "NOT_APPLICABLE",
    APPLIED = "APPLIED",
}

M.FindingType = {
    EXTERNAL_ACCESS = "ExternalAccess",
    UNUSED_IAM_ROLE = "UnusedIAMRole",
    UNUSED_IAM_USER_ACCESS_KEY = "UnusedIAMUserAccessKey",
    UNUSED_IAM_USER_PASSWORD = "UnusedIAMUserPassword",
    UNUSED_PERMISSION = "UnusedPermission",
    INTERNAL_ACCESS = "InternalAccess",
}

M.JobErrorCode = {
    AUTHORIZATION_ERROR = "AUTHORIZATION_ERROR",
    RESOURCE_NOT_FOUND_ERROR = "RESOURCE_NOT_FOUND_ERROR",
    SERVICE_QUOTA_EXCEEDED_ERROR = "SERVICE_QUOTA_EXCEEDED_ERROR",
    SERVICE_ERROR = "SERVICE_ERROR",
}

M.JobStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    CANCELED = "CANCELED",
}

M.FindingChangeType = {
    CHANGED = "CHANGED",
    NEW = "NEW",
    UNCHANGED = "UNCHANGED",
}

M.OrderBy = {
    ASC = "ASC",
    DESC = "DESC",
}

M.FindingStatusUpdate = {
    ACTIVE = "ACTIVE",
    ARCHIVED = "ARCHIVED",
}

M.Locale = {
    DE = "DE",
    EN = "EN",
    ES = "ES",
    FR = "FR",
    IT = "IT",
    JA = "JA",
    KO = "KO",
    PT_BR = "PT_BR",
    ZH_CN = "ZH_CN",
    ZH_TW = "ZH_TW",
}

M.PolicyType = {
    IDENTITY_POLICY = "IDENTITY_POLICY",
    RESOURCE_POLICY = "RESOURCE_POLICY",
    SERVICE_CONTROL_POLICY = "SERVICE_CONTROL_POLICY",
    RESOURCE_CONTROL_POLICY = "RESOURCE_CONTROL_POLICY",
}

M.ValidatePolicyResourceType = {
    S3_BUCKET = "AWS::S3::Bucket",
    S3_ACCESS_POINT = "AWS::S3::AccessPoint",
    S3_MULTI_REGION_ACCESS_POINT = "AWS::S3::MultiRegionAccessPoint",
    S3_OBJECT_LAMBDA_ACCESS_POINT = "AWS::S3ObjectLambda::AccessPoint",
    ROLE_TRUST = "AWS::IAM::AssumeRolePolicyDocument",
    DYNAMODB_TABLE = "AWS::DynamoDB::Table",
}

M.ValidatePolicyFindingType = {
    ERROR = "ERROR",
    SECURITY_WARNING = "SECURITY_WARNING",
    SUGGESTION = "SUGGESTION",
    WARNING = "WARNING",
}

return M
