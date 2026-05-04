local M = {}

M.Access = {
    type = "structure",
    members = {
        actions = {
            type = "list",
            member = { type = "string" },
            traits = {
                default = {},
            },
        },
        resources = {
            type = "list",
            member = { type = "string" },
            traits = {
                default = {},
            },
        },
    },
}

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

M.Criterion = {
    type = "structure",
    members = {
        eq = {
            type = "list",
            member = { type = "string" },
        },
        neq = {
            type = "list",
            member = { type = "string" },
        },
        contains = {
            type = "list",
            member = { type = "string" },
        },
        exists = {
            type = "boolean",
        },
    },
}

M.CreateArchiveRuleInput = {
    type = "structure",
    members = {
        analyzerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ruleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filter = {
            type = "map",
            key = { type = "string" },
            value = M.Criterion,
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

M.CreateArchiveRuleOutput = {
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
            type = "integer",
            traits = {
                http_header = "Retry-After",
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

M.ServiceQuotaExceededException = {
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
        retryAfterSeconds = {
            type = "integer",
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
    NOT_SUPPORTED = "notSupported",
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
            traits = {
                required = true,
            },
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.DeleteArchiveRuleInput = {
    type = "structure",
    members = {
        analyzerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ruleName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DeleteArchiveRuleOutput = {
    type = "structure",
}

M.GetArchiveRuleInput = {
    type = "structure",
    members = {
        analyzerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ruleName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ArchiveRuleSummary = {
    type = "structure",
    members = {
        ruleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filter = {
            type = "map",
            key = { type = "string" },
            value = M.Criterion,
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
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetArchiveRuleOutput = {
    type = "structure",
    members = {
        archiveRule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ArchiveRuleSummary }),
    },
}

M.ListArchiveRulesInput = {
    type = "structure",
    members = {
        analyzerName = {
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

M.ListArchiveRulesOutput = {
    type = "structure",
    members = {
        archiveRules = {
            type = "list",
            member = M.ArchiveRuleSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateArchiveRuleInput = {
    type = "structure",
    members = {
        analyzerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ruleName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        filter = {
            type = "map",
            key = { type = "string" },
            value = M.Criterion,
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

M.UpdateArchiveRuleOutput = {
    type = "structure",
}

M.InlineArchiveRule = {
    type = "structure",
    members = {
        ruleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filter = {
            type = "map",
            key = { type = "string" },
            value = M.Criterion,
            traits = {
                required = true,
            },
        },
    },
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

M.InternalAccessAnalysisRuleCriteria = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
        resourceTypes = {
            type = "list",
            member = { type = "string" },
        },
        resourceArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.InternalAccessAnalysisRule = {
    type = "structure",
    members = {
        inclusions = {
            type = "list",
            member = M.InternalAccessAnalysisRuleCriteria,
        },
    },
}

M.InternalAccessConfiguration = {
    type = "structure",
    members = {
        analysisRule = M.InternalAccessAnalysisRule,
    },
}

M.AnalysisRuleCriteria = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
        resourceTags = {
            type = "list",
            member = { type = "map" },
        },
    },
}

M.AnalysisRule = {
    type = "structure",
    members = {
        exclusions = {
            type = "list",
            member = M.AnalysisRuleCriteria,
        },
    },
}

M.UnusedAccessConfiguration = {
    type = "structure",
    members = {
        unusedAccessAge = {
            type = "integer",
        },
        analysisRule = M.AnalysisRule,
    },
}

M.AnalyzerConfiguration = {
    type = "union",
    members = {
        unusedAccess = M.UnusedAccessConfiguration,
        internalAccess = M.InternalAccessConfiguration,
    },
}

M.Type = {
    ACCOUNT = "ACCOUNT",
    ORGANIZATION = "ORGANIZATION",
    ACCOUNT_UNUSED_ACCESS = "ACCOUNT_UNUSED_ACCESS",
    ORGANIZATION_UNUSED_ACCESS = "ORGANIZATION_UNUSED_ACCESS",
    ACCOUNT_INTERNAL_ACCESS = "ACCOUNT_INTERNAL_ACCESS",
    ORGANIZATION_INTERNAL_ACCESS = "ORGANIZATION_INTERNAL_ACCESS",
}

M.CreateAnalyzerInput = {
    type = "structure",
    members = {
        analyzerName = {
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
        archiveRules = {
            type = "list",
            member = M.InlineArchiveRule,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        configuration = M.AnalyzerConfiguration,
    },
}

M.CreateAnalyzerOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
    },
}

M.DeleteAnalyzerInput = {
    type = "structure",
    members = {
        analyzerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DeleteAnalyzerOutput = {
    type = "structure",
}

M.GetAnalyzerInput = {
    type = "structure",
    members = {
        analyzerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
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

M.StatusReason = {
    type = "structure",
    members = {
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AnalyzerSummary = {
    type = "structure",
    members = {
        arn = {
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
        lastResourceAnalyzed = {
            type = "string",
        },
        lastResourceAnalyzedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = M.StatusReason,
        configuration = M.AnalyzerConfiguration,
    },
}

M.GetAnalyzerOutput = {
    type = "structure",
    members = {
        analyzer = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnalyzerSummary }),
    },
}

M.ListAnalyzersInput = {
    type = "structure",
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
        type = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
    },
}

M.ListAnalyzersOutput = {
    type = "structure",
    members = {
        analyzers = {
            type = "list",
            member = M.AnalyzerSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateAnalyzerInput = {
    type = "structure",
    members = {
        analyzerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        configuration = M.AnalyzerConfiguration,
    },
}

M.UpdateAnalyzerOutput = {
    type = "structure",
    members = {
        configuration = M.AnalyzerConfiguration,
    },
}

M.ApplyArchiveRuleInput = {
    type = "structure",
    members = {
        analyzerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ruleName = {
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

M.ApplyArchiveRuleOutput = {
    type = "structure",
}

M.CancelPolicyGenerationInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelPolicyGenerationOutput = {
    type = "structure",
}

M.AccessCheckPolicyType = {
    IDENTITY_POLICY = "IDENTITY_POLICY",
    RESOURCE_POLICY = "RESOURCE_POLICY",
}

M.CheckAccessNotGrantedInput = {
    type = "structure",
    members = {
        policyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
        access = {
            type = "list",
            member = M.Access,
            traits = {
                required = true,
            },
        },
        policyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReasonSummary = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        statementIndex = {
            type = "integer",
        },
        statementId = {
            type = "string",
        },
    },
}

M.CheckAccessNotGrantedResult = {
    PASS = "PASS",
    FAIL = "FAIL",
}

M.CheckAccessNotGrantedOutput = {
    type = "structure",
    members = {
        result = {
            type = "string",
        },
        message = {
            type = "string",
        },
        reasons = {
            type = "list",
            member = M.ReasonSummary,
        },
    },
}

M.InvalidParameterException = {
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

M.UnprocessableEntityException = {
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

M.CheckNoNewAccessInput = {
    type = "structure",
    members = {
        newPolicyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
        existingPolicyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CheckNoNewAccessResult = {
    PASS = "PASS",
    FAIL = "FAIL",
}

M.CheckNoNewAccessOutput = {
    type = "structure",
    members = {
        result = {
            type = "string",
        },
        message = {
            type = "string",
        },
        reasons = {
            type = "list",
            member = M.ReasonSummary,
        },
    },
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

M.CheckNoPublicAccessInput = {
    type = "structure",
    members = {
        policyDocument = {
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

M.CheckNoPublicAccessResult = {
    PASS = "PASS",
    FAIL = "FAIL",
}

M.CheckNoPublicAccessOutput = {
    type = "structure",
    members = {
        result = {
            type = "string",
        },
        message = {
            type = "string",
        },
        reasons = {
            type = "list",
            member = M.ReasonSummary,
        },
    },
}

M.DynamodbStreamConfiguration = {
    type = "structure",
    members = {
        streamPolicy = {
            type = "string",
        },
    },
}

M.DynamodbTableConfiguration = {
    type = "structure",
    members = {
        tablePolicy = {
            type = "string",
        },
    },
}

M.EbsSnapshotConfiguration = {
    type = "structure",
    members = {
        userIds = {
            type = "list",
            member = { type = "string" },
        },
        groups = {
            type = "list",
            member = { type = "string" },
        },
        kmsKeyId = {
            type = "string",
        },
    },
}

M.EcrRepositoryConfiguration = {
    type = "structure",
    members = {
        repositoryPolicy = {
            type = "string",
        },
    },
}

M.EfsFileSystemConfiguration = {
    type = "structure",
    members = {
        fileSystemPolicy = {
            type = "string",
        },
    },
}

M.IamRoleConfiguration = {
    type = "structure",
    members = {
        trustPolicy = {
            type = "string",
        },
    },
}

M.KmsGrantConstraints = {
    type = "structure",
    members = {
        encryptionContextEquals = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        encryptionContextSubset = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
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

M.KmsGrantConfiguration = {
    type = "structure",
    members = {
        operations = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        granteePrincipal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retiringPrincipal = {
            type = "string",
        },
        constraints = M.KmsGrantConstraints,
        issuingAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KmsKeyConfiguration = {
    type = "structure",
    members = {
        keyPolicies = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        grants = {
            type = "list",
            member = M.KmsGrantConfiguration,
        },
    },
}

M.RdsDbClusterSnapshotAttributeValue = {
    type = "union",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RdsDbClusterSnapshotConfiguration = {
    type = "structure",
    members = {
        attributes = {
            type = "map",
            key = { type = "string" },
            value = M.RdsDbClusterSnapshotAttributeValue,
        },
        kmsKeyId = {
            type = "string",
        },
    },
}

M.RdsDbSnapshotAttributeValue = {
    type = "union",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RdsDbSnapshotConfiguration = {
    type = "structure",
    members = {
        attributes = {
            type = "map",
            key = { type = "string" },
            value = M.RdsDbSnapshotAttributeValue,
        },
        kmsKeyId = {
            type = "string",
        },
    },
}

M.InternetConfiguration = {
    type = "structure",
}

M.VpcConfiguration = {
    type = "structure",
    members = {
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NetworkOriginConfiguration = {
    type = "union",
    members = {
        vpcConfiguration = M.VpcConfiguration,
        internetConfiguration = M.InternetConfiguration,
    },
}

M.S3PublicAccessBlockConfiguration = {
    type = "structure",
    members = {
        ignorePublicAcls = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        restrictPublicBuckets = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.S3AccessPointConfiguration = {
    type = "structure",
    members = {
        accessPointPolicy = {
            type = "string",
        },
        publicAccessBlock = M.S3PublicAccessBlockConfiguration,
        networkOrigin = M.NetworkOriginConfiguration,
    },
}

M.AclGrantee = {
    type = "union",
    members = {
        id = {
            type = "string",
        },
        uri = {
            type = "string",
        },
    },
}

M.AclPermission = {
    READ = "READ",
    WRITE = "WRITE",
    READ_ACP = "READ_ACP",
    WRITE_ACP = "WRITE_ACP",
    FULL_CONTROL = "FULL_CONTROL",
}

M.S3BucketAclGrantConfiguration = {
    type = "structure",
    members = {
        permission = {
            type = "string",
            traits = {
                required = true,
            },
        },
        grantee = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AclGrantee }),
    },
}

M.S3BucketConfiguration = {
    type = "structure",
    members = {
        bucketPolicy = {
            type = "string",
        },
        bucketAclGrants = {
            type = "list",
            member = M.S3BucketAclGrantConfiguration,
        },
        bucketPublicAccessBlock = M.S3PublicAccessBlockConfiguration,
        accessPoints = {
            type = "map",
            key = { type = "string" },
            value = M.S3AccessPointConfiguration,
        },
    },
}

M.S3ExpressDirectoryAccessPointConfiguration = {
    type = "structure",
    members = {
        accessPointPolicy = {
            type = "string",
        },
        networkOrigin = M.NetworkOriginConfiguration,
    },
}

M.S3ExpressDirectoryBucketConfiguration = {
    type = "structure",
    members = {
        bucketPolicy = {
            type = "string",
        },
        accessPoints = {
            type = "map",
            key = { type = "string" },
            value = M.S3ExpressDirectoryAccessPointConfiguration,
        },
    },
}

M.SecretsManagerSecretConfiguration = {
    type = "structure",
    members = {
        kmsKeyId = {
            type = "string",
        },
        secretPolicy = {
            type = "string",
        },
    },
}

M.SnsTopicConfiguration = {
    type = "structure",
    members = {
        topicPolicy = {
            type = "string",
        },
    },
}

M.SqsQueueConfiguration = {
    type = "structure",
    members = {
        queuePolicy = {
            type = "string",
        },
    },
}

M.Configuration = {
    type = "union",
    members = {
        ebsSnapshot = M.EbsSnapshotConfiguration,
        ecrRepository = M.EcrRepositoryConfiguration,
        iamRole = M.IamRoleConfiguration,
        efsFileSystem = M.EfsFileSystemConfiguration,
        kmsKey = M.KmsKeyConfiguration,
        rdsDbClusterSnapshot = M.RdsDbClusterSnapshotConfiguration,
        rdsDbSnapshot = M.RdsDbSnapshotConfiguration,
        secretsManagerSecret = M.SecretsManagerSecretConfiguration,
        s3Bucket = M.S3BucketConfiguration,
        snsTopic = M.SnsTopicConfiguration,
        sqsQueue = M.SqsQueueConfiguration,
        s3ExpressDirectoryBucket = M.S3ExpressDirectoryBucketConfiguration,
        dynamodbStream = M.DynamodbStreamConfiguration,
        dynamodbTable = M.DynamodbTableConfiguration,
    },
}

M.CreateAccessPreviewInput = {
    type = "structure",
    members = {
        analyzerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configurations = {
            type = "map",
            key = { type = "string" },
            value = M.Configuration,
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

M.CreateAccessPreviewOutput = {
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

M.GenerateFindingRecommendationInput = {
    type = "structure",
    members = {
        analyzerArn = {
            type = "string",
            traits = {
                http_query = "analyzerArn",
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GenerateFindingRecommendationOutput = {
    type = "structure",
}

M.GetAccessPreviewInput = {
    type = "structure",
    members = {
        accessPreviewId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        analyzerArn = {
            type = "string",
            traits = {
                http_query = "analyzerArn",
                required = true,
            },
        },
    },
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

M.AccessPreviewStatusReason = {
    type = "structure",
    members = {
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AccessPreview = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        analyzerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configurations = {
            type = "map",
            key = { type = "string" },
            value = M.Configuration,
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = M.AccessPreviewStatusReason,
    },
}

M.GetAccessPreviewOutput = {
    type = "structure",
    members = {
        accessPreview = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AccessPreview }),
    },
}

M.GetAnalyzedResourceInput = {
    type = "structure",
    members = {
        analyzerArn = {
            type = "string",
            traits = {
                http_query = "analyzerArn",
                required = true,
            },
        },
        resourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
        },
    },
}

M.FindingStatus = {
    ACTIVE = "ACTIVE",
    ARCHIVED = "ARCHIVED",
    RESOLVED = "RESOLVED",
}

M.AnalyzedResource = {
    type = "structure",
    members = {
        resourceArn = {
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        analyzedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        isPublic = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        actions = {
            type = "list",
            member = { type = "string" },
        },
        sharedVia = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        resourceOwnerAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "string",
        },
    },
}

M.GetAnalyzedResourceOutput = {
    type = "structure",
    members = {
        resource = M.AnalyzedResource,
    },
}

M.GetFindingInput = {
    type = "structure",
    members = {
        analyzerArn = {
            type = "string",
            traits = {
                http_query = "analyzerArn",
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ResourceControlPolicyRestriction = {
    APPLICABLE = "APPLICABLE",
    FAILED_TO_EVALUATE_RCP = "FAILED_TO_EVALUATE_RCP",
    NOT_APPLICABLE = "NOT_APPLICABLE",
    APPLIED = "APPLIED",
}

M.FindingSourceDetail = {
    type = "structure",
    members = {
        accessPointArn = {
            type = "string",
        },
        accessPointAccount = {
            type = "string",
        },
    },
}

M.FindingSourceType = {
    POLICY = "POLICY",
    BUCKET_ACL = "BUCKET_ACL",
    S3_ACCESS_POINT = "S3_ACCESS_POINT",
    S3_ACCESS_POINT_ACCOUNT = "S3_ACCESS_POINT_ACCOUNT",
}

M.FindingSource = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        detail = M.FindingSourceDetail,
    },
}

M.Finding = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principal = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        action = {
            type = "list",
            member = { type = "string" },
        },
        resource = {
            type = "string",
        },
        isPublic = {
            type = "boolean",
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        condition = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        analyzedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceOwnerAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "string",
        },
        sources = {
            type = "list",
            member = M.FindingSource,
        },
        resourceControlPolicyRestriction = {
            type = "string",
        },
    },
}

M.GetFindingOutput = {
    type = "structure",
    members = {
        finding = M.Finding,
    },
}

M.GetFindingRecommendationInput = {
    type = "structure",
    members = {
        analyzerArn = {
            type = "string",
            traits = {
                http_query = "analyzerArn",
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.RecommendationError = {
    type = "structure",
    members = {
        code = {
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

M.RecommendationType = {
    UNUSED_PERMISSION_RECOMMENDATION = "UnusedPermissionRecommendation",
}

M.RecommendedRemediationAction = {
    CREATE_POLICY = "CREATE_POLICY",
    DETACH_POLICY = "DETACH_POLICY",
}

M.UnusedPermissionsRecommendedStep = {
    type = "structure",
    members = {
        policyUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        recommendedAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommendedPolicy = {
            type = "string",
        },
        existingPolicyId = {
            type = "string",
        },
    },
}

M.RecommendedStep = {
    type = "union",
    members = {
        unusedPermissionsRecommendedStep = M.UnusedPermissionsRecommendedStep,
    },
}

M.Status = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
}

M.GetFindingRecommendationOutput = {
    type = "structure",
    members = {
        startedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        completedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        nextToken = {
            type = "string",
        },
        error = M.RecommendationError,
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommendedSteps = {
            type = "list",
            member = M.RecommendedStep,
        },
        recommendationType = {
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
    },
}

M.GetFindingsStatisticsInput = {
    type = "structure",
    members = {
        analyzerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceTypeDetails = {
    type = "structure",
    members = {
        totalActivePublic = {
            type = "integer",
        },
        totalActiveCrossAccount = {
            type = "integer",
        },
        totalActiveErrors = {
            type = "integer",
        },
    },
}

M.ExternalAccessFindingsStatistics = {
    type = "structure",
    members = {
        resourceTypeStatistics = {
            type = "map",
            key = { type = "string" },
            value = M.ResourceTypeDetails,
        },
        totalActiveFindings = {
            type = "integer",
        },
        totalArchivedFindings = {
            type = "integer",
        },
        totalResolvedFindings = {
            type = "integer",
        },
    },
}

M.InternalAccessResourceTypeDetails = {
    type = "structure",
    members = {
        totalActiveFindings = {
            type = "integer",
        },
        totalResolvedFindings = {
            type = "integer",
        },
        totalArchivedFindings = {
            type = "integer",
        },
    },
}

M.InternalAccessFindingsStatistics = {
    type = "structure",
    members = {
        resourceTypeStatistics = {
            type = "map",
            key = { type = "string" },
            value = M.InternalAccessResourceTypeDetails,
        },
        totalActiveFindings = {
            type = "integer",
        },
        totalArchivedFindings = {
            type = "integer",
        },
        totalResolvedFindings = {
            type = "integer",
        },
    },
}

M.FindingAggregationAccountDetails = {
    type = "structure",
    members = {
        account = {
            type = "string",
        },
        numberOfActiveFindings = {
            type = "integer",
        },
        details = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
    },
}

M.UnusedAccessTypeStatistics = {
    type = "structure",
    members = {
        unusedAccessType = {
            type = "string",
        },
        total = {
            type = "integer",
        },
    },
}

M.UnusedAccessFindingsStatistics = {
    type = "structure",
    members = {
        unusedAccessTypeStatistics = {
            type = "list",
            member = M.UnusedAccessTypeStatistics,
        },
        topAccounts = {
            type = "list",
            member = M.FindingAggregationAccountDetails,
        },
        totalActiveFindings = {
            type = "integer",
        },
        totalArchivedFindings = {
            type = "integer",
        },
        totalResolvedFindings = {
            type = "integer",
        },
    },
}

M.FindingsStatistics = {
    type = "union",
    members = {
        externalAccessFindingsStatistics = M.ExternalAccessFindingsStatistics,
        internalAccessFindingsStatistics = M.InternalAccessFindingsStatistics,
        unusedAccessFindingsStatistics = M.UnusedAccessFindingsStatistics,
    },
}

M.GetFindingsStatisticsOutput = {
    type = "structure",
    members = {
        findingsStatistics = {
            type = "list",
            member = M.FindingsStatistics,
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetFindingV2Input = {
    type = "structure",
    members = {
        analyzerArn = {
            type = "string",
            traits = {
                http_query = "analyzerArn",
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ExternalAccessDetails = {
    type = "structure",
    members = {
        action = {
            type = "list",
            member = { type = "string" },
        },
        condition = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        isPublic = {
            type = "boolean",
        },
        principal = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        sources = {
            type = "list",
            member = M.FindingSource,
        },
        resourceControlPolicyRestriction = {
            type = "string",
        },
    },
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

M.InternalAccessDetails = {
    type = "structure",
    members = {
        action = {
            type = "list",
            member = { type = "string" },
        },
        condition = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        principal = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        principalOwnerAccount = {
            type = "string",
        },
        accessType = {
            type = "string",
        },
        principalType = {
            type = "string",
        },
        sources = {
            type = "list",
            member = M.FindingSource,
        },
        resourceControlPolicyRestriction = {
            type = "string",
        },
        serviceControlPolicyRestriction = {
            type = "string",
        },
    },
}

M.UnusedIamRoleDetails = {
    type = "structure",
    members = {
        lastAccessed = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.UnusedIamUserAccessKeyDetails = {
    type = "structure",
    members = {
        accessKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastAccessed = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.UnusedIamUserPasswordDetails = {
    type = "structure",
    members = {
        lastAccessed = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.UnusedAction = {
    type = "structure",
    members = {
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastAccessed = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.UnusedPermissionDetails = {
    type = "structure",
    members = {
        actions = {
            type = "list",
            member = M.UnusedAction,
        },
        serviceNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastAccessed = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.FindingDetails = {
    type = "union",
    members = {
        internalAccessDetails = M.InternalAccessDetails,
        externalAccessDetails = M.ExternalAccessDetails,
        unusedPermissionDetails = M.UnusedPermissionDetails,
        unusedIamUserAccessKeyDetails = M.UnusedIamUserAccessKeyDetails,
        unusedIamRoleDetails = M.UnusedIamRoleDetails,
        unusedIamUserPasswordDetails = M.UnusedIamUserPasswordDetails,
    },
}

M.FindingType = {
    EXTERNAL_ACCESS = "ExternalAccess",
    UNUSED_IAM_ROLE = "UnusedIAMRole",
    UNUSED_IAM_USER_ACCESS_KEY = "UnusedIAMUserAccessKey",
    UNUSED_IAM_USER_PASSWORD = "UnusedIAMUserPassword",
    UNUSED_PERMISSION = "UnusedPermission",
    INTERNAL_ACCESS = "InternalAccess",
}

M.GetFindingV2Output = {
    type = "structure",
    members = {
        analyzedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        error = {
            type = "string",
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        resource = {
            type = "string",
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceOwnerAccount = {
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
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        findingDetails = {
            type = "list",
            member = M.FindingDetails,
            traits = {
                required = true,
            },
        },
        findingType = {
            type = "string",
        },
    },
}

M.GetGeneratedPolicyInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        includeResourcePlaceholders = {
            type = "boolean",
            traits = {
                http_query = "includeResourcePlaceholders",
            },
        },
        includeServiceLevelTemplate = {
            type = "boolean",
            traits = {
                http_query = "includeServiceLevelTemplate",
            },
        },
    },
}

M.GeneratedPolicy = {
    type = "structure",
    members = {
        policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TrailProperties = {
    type = "structure",
    members = {
        cloudTrailArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        regions = {
            type = "list",
            member = { type = "string" },
        },
        allRegions = {
            type = "boolean",
        },
    },
}

M.CloudTrailProperties = {
    type = "structure",
    members = {
        trailProperties = {
            type = "list",
            member = M.TrailProperties,
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.GeneratedPolicyProperties = {
    type = "structure",
    members = {
        isComplete = {
            type = "boolean",
        },
        principalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cloudTrailProperties = M.CloudTrailProperties,
    },
}

M.GeneratedPolicyResult = {
    type = "structure",
    members = {
        properties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GeneratedPolicyProperties }),
        generatedPolicies = {
            type = "list",
            member = M.GeneratedPolicy,
        },
    },
}

M.JobErrorCode = {
    AUTHORIZATION_ERROR = "AUTHORIZATION_ERROR",
    RESOURCE_NOT_FOUND_ERROR = "RESOURCE_NOT_FOUND_ERROR",
    SERVICE_QUOTA_EXCEEDED_ERROR = "SERVICE_QUOTA_EXCEEDED_ERROR",
    SERVICE_ERROR = "SERVICE_ERROR",
}

M.JobError = {
    type = "structure",
    members = {
        code = {
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

M.JobStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    CANCELED = "CANCELED",
}

M.JobDetails = {
    type = "structure",
    members = {
        jobId = {
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
        startedOn = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        completedOn = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        jobError = M.JobError,
    },
}

M.GetGeneratedPolicyOutput = {
    type = "structure",
    members = {
        jobDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobDetails }),
        generatedPolicyResult = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GeneratedPolicyResult }),
    },
}

M.ListAccessPreviewFindingsInput = {
    type = "structure",
    members = {
        accessPreviewId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        analyzerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filter = {
            type = "map",
            key = { type = "string" },
            value = M.Criterion,
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.FindingChangeType = {
    CHANGED = "CHANGED",
    NEW = "NEW",
    UNCHANGED = "UNCHANGED",
}

M.AccessPreviewFinding = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        existingFindingId = {
            type = "string",
        },
        existingFindingStatus = {
            type = "string",
        },
        principal = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        action = {
            type = "list",
            member = { type = "string" },
        },
        condition = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        resource = {
            type = "string",
        },
        isPublic = {
            type = "boolean",
        },
        resourceType = {
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
        changeType = {
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
        resourceOwnerAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "string",
        },
        sources = {
            type = "list",
            member = M.FindingSource,
        },
        resourceControlPolicyRestriction = {
            type = "string",
        },
    },
}

M.ListAccessPreviewFindingsOutput = {
    type = "structure",
    members = {
        findings = {
            type = "list",
            member = M.AccessPreviewFinding,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAccessPreviewsInput = {
    type = "structure",
    members = {
        analyzerArn = {
            type = "string",
            traits = {
                http_query = "analyzerArn",
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

M.AccessPreviewSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        analyzerArn = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = M.AccessPreviewStatusReason,
    },
}

M.ListAccessPreviewsOutput = {
    type = "structure",
    members = {
        accessPreviews = {
            type = "list",
            member = M.AccessPreviewSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAnalyzedResourcesInput = {
    type = "structure",
    members = {
        analyzerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.AnalyzedResourceSummary = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceOwnerAccount = {
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

M.ListAnalyzedResourcesOutput = {
    type = "structure",
    members = {
        analyzedResources = {
            type = "list",
            member = M.AnalyzedResourceSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.OrderBy = {
    ASC = "ASC",
    DESC = "DESC",
}

M.SortCriteria = {
    type = "structure",
    members = {
        attributeName = {
            type = "string",
        },
        orderBy = {
            type = "string",
        },
    },
}

M.ListFindingsInput = {
    type = "structure",
    members = {
        analyzerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filter = {
            type = "map",
            key = { type = "string" },
            value = M.Criterion,
        },
        sort = M.SortCriteria,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.FindingSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principal = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        action = {
            type = "list",
            member = { type = "string" },
        },
        resource = {
            type = "string",
        },
        isPublic = {
            type = "boolean",
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        condition = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        analyzedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceOwnerAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "string",
        },
        sources = {
            type = "list",
            member = M.FindingSource,
        },
        resourceControlPolicyRestriction = {
            type = "string",
        },
    },
}

M.ListFindingsOutput = {
    type = "structure",
    members = {
        findings = {
            type = "list",
            member = M.FindingSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListFindingsV2Input = {
    type = "structure",
    members = {
        analyzerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filter = {
            type = "map",
            key = { type = "string" },
            value = M.Criterion,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        sort = M.SortCriteria,
    },
}

M.FindingSummaryV2 = {
    type = "structure",
    members = {
        analyzedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        error = {
            type = "string",
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resource = {
            type = "string",
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceOwnerAccount = {
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
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        findingType = {
            type = "string",
        },
    },
}

M.ListFindingsV2Output = {
    type = "structure",
    members = {
        findings = {
            type = "list",
            member = M.FindingSummaryV2,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPolicyGenerationsInput = {
    type = "structure",
    members = {
        principalArn = {
            type = "string",
            traits = {
                http_query = "principalArn",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.PolicyGeneration = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principalArn = {
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
        startedOn = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        completedOn = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListPolicyGenerationsOutput = {
    type = "structure",
    members = {
        policyGenerations = {
            type = "list",
            member = M.PolicyGeneration,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
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
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.Trail = {
    type = "structure",
    members = {
        cloudTrailArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        regions = {
            type = "list",
            member = { type = "string" },
        },
        allRegions = {
            type = "boolean",
        },
    },
}

M.CloudTrailDetails = {
    type = "structure",
    members = {
        trails = {
            type = "list",
            member = M.Trail,
            traits = {
                required = true,
            },
        },
        accessRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.PolicyGenerationDetails = {
    type = "structure",
    members = {
        principalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartPolicyGenerationInput = {
    type = "structure",
    members = {
        policyGenerationDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PolicyGenerationDetails }),
        cloudTrailDetails = M.CloudTrailDetails,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartPolicyGenerationOutput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartResourceScanInput = {
    type = "structure",
    members = {
        analyzerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceOwnerAccount = {
            type = "string",
        },
    },
}

M.StartResourceScanOutput = {
    type = "structure",
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
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
}

M.FindingStatusUpdate = {
    ACTIVE = "ACTIVE",
    ARCHIVED = "ARCHIVED",
}

M.UpdateFindingsInput = {
    type = "structure",
    members = {
        analyzerArn = {
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
        ids = {
            type = "list",
            member = { type = "string" },
        },
        resourceArn = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateFindingsOutput = {
    type = "structure",
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

M.ValidatePolicyInput = {
    type = "structure",
    members = {
        locale = {
            type = "string",
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        policyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        validatePolicyResourceType = {
            type = "string",
        },
    },
}

M.ValidatePolicyFindingType = {
    ERROR = "ERROR",
    SECURITY_WARNING = "SECURITY_WARNING",
    SUGGESTION = "SUGGESTION",
    WARNING = "WARNING",
}

M.Substring = {
    type = "structure",
    members = {
        start = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        length = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.PathElement = {
    type = "union",
    members = {
        index = {
            type = "integer",
        },
        key = {
            type = "string",
        },
        substring = M.Substring,
        value = {
            type = "string",
        },
    },
}

M.Position = {
    type = "structure",
    members = {
        line = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        column = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        offset = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.Span = {
    type = "structure",
    members = {
        start = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Position }),
        end = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Position }),
    },
}

M.Location = {
    type = "structure",
    members = {
        path = {
            type = "list",
            member = M.PathElement,
            traits = {
                required = true,
            },
        },
        span = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Span }),
    },
}

M.ValidatePolicyFinding = {
    type = "structure",
    members = {
        findingDetails = {
            type = "string",
            traits = {
                required = true,
            },
        },
        findingType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        issueCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        learnMoreLink = {
            type = "string",
            traits = {
                required = true,
            },
        },
        locations = {
            type = "list",
            member = M.Location,
            traits = {
                required = true,
            },
        },
    },
}

M.ValidatePolicyOutput = {
    type = "structure",
    members = {
        findings = {
            type = "list",
            member = M.ValidatePolicyFinding,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

return M
