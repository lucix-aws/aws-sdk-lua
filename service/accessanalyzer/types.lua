local M = {}

M.Access = {
    type = "structure",
    members = {
        actions = {
            type = "list",
            member_type = "string",
        },
        resources = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        neq = {
            type = "list",
            member_type = "string",
        },
        contains = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetArchiveRuleOutput = {
    type = "structure",
    members = {
        archiveRule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
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
            key_type = "string",
            value_type = "structure",
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
            member_type = "string",
        },
        resourceTypes = {
            type = "list",
            member_type = "string",
        },
        resourceArns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.InternalAccessAnalysisRule = {
    type = "structure",
    members = {
        inclusions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InternalAccessConfiguration = {
    type = "structure",
    members = {
        analysisRule = {
            type = "structure",
        },
    },
}

M.AnalysisRuleCriteria = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member_type = "string",
        },
        resourceTags = {
            type = "list",
            member_type = "map",
        },
    },
}

M.AnalysisRule = {
    type = "structure",
    members = {
        exclusions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UnusedAccessConfiguration = {
    type = "structure",
    members = {
        unusedAccessAge = {
            type = "number",
        },
        analysisRule = {
            type = "structure",
        },
    },
}

M.AnalyzerConfiguration = {
    type = "union",
    members = {
        unusedAccess = {
            type = "structure",
        },
        internalAccess = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        clientToken = {
            type = "string",
        },
        configuration = {
            type = "union",
        },
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
            },
        },
        lastResourceAnalyzed = {
            type = "string",
        },
        lastResourceAnalyzedAt = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "structure",
        },
        configuration = {
            type = "union",
        },
    },
}

M.GetAnalyzerOutput = {
    type = "structure",
    members = {
        analyzer = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
            member_type = "structure",
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
        configuration = {
            type = "union",
        },
    },
}

M.UpdateAnalyzerOutput = {
    type = "structure",
    members = {
        configuration = {
            type = "union",
        },
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
        },
        groups = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
        encryptionContextSubset = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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
        constraints = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        grants = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RdsDbClusterSnapshotAttributeValue = {
    type = "union",
    members = {
        accountIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RdsDbClusterSnapshotConfiguration = {
    type = "structure",
    members = {
        attributes = {
            type = "map",
            key_type = "string",
            value_type = "union",
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
            member_type = "string",
        },
    },
}

M.RdsDbSnapshotConfiguration = {
    type = "structure",
    members = {
        attributes = {
            type = "map",
            key_type = "string",
            value_type = "union",
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
        vpcConfiguration = {
            type = "structure",
        },
        internetConfiguration = {
            type = "structure",
        },
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
        publicAccessBlock = {
            type = "structure",
        },
        networkOrigin = {
            type = "union",
        },
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
        grantee = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
        },
        bucketPublicAccessBlock = {
            type = "structure",
        },
        accessPoints = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.S3ExpressDirectoryAccessPointConfiguration = {
    type = "structure",
    members = {
        accessPointPolicy = {
            type = "string",
        },
        networkOrigin = {
            type = "union",
        },
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
            key_type = "string",
            value_type = "structure",
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
        ebsSnapshot = {
            type = "structure",
        },
        ecrRepository = {
            type = "structure",
        },
        iamRole = {
            type = "structure",
        },
        efsFileSystem = {
            type = "structure",
        },
        kmsKey = {
            type = "structure",
        },
        rdsDbClusterSnapshot = {
            type = "structure",
        },
        rdsDbSnapshot = {
            type = "structure",
        },
        secretsManagerSecret = {
            type = "structure",
        },
        s3Bucket = {
            type = "structure",
        },
        snsTopic = {
            type = "structure",
        },
        sqsQueue = {
            type = "structure",
        },
        s3ExpressDirectoryBucket = {
            type = "structure",
        },
        dynamodbStream = {
            type = "structure",
        },
        dynamodbTable = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "union",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
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
            key_type = "string",
            value_type = "union",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
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
        statusReason = {
            type = "structure",
        },
    },
}

M.GetAccessPreviewOutput = {
    type = "structure",
    members = {
        accessPreview = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            },
        },
        analyzedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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
            member_type = "string",
        },
        sharedVia = {
            type = "list",
            member_type = "string",
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
        resource = {
            type = "structure",
        },
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
        detail = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        action = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        analyzedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
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
            member_type = "structure",
        },
        resourceControlPolicyRestriction = {
            type = "string",
        },
    },
}

M.GetFindingOutput = {
    type = "structure",
    members = {
        finding = {
            type = "structure",
        },
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
            type = "number",
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
        unusedPermissionsRecommendedStep = {
            type = "structure",
        },
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
            },
        },
        completedAt = {
            type = "timestamp",
        },
        nextToken = {
            type = "string",
        },
        error = {
            type = "structure",
        },
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommendedSteps = {
            type = "list",
            member_type = "union",
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
            type = "number",
        },
        totalActiveCrossAccount = {
            type = "number",
        },
        totalActiveErrors = {
            type = "number",
        },
    },
}

M.ExternalAccessFindingsStatistics = {
    type = "structure",
    members = {
        resourceTypeStatistics = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        totalActiveFindings = {
            type = "number",
        },
        totalArchivedFindings = {
            type = "number",
        },
        totalResolvedFindings = {
            type = "number",
        },
    },
}

M.InternalAccessResourceTypeDetails = {
    type = "structure",
    members = {
        totalActiveFindings = {
            type = "number",
        },
        totalResolvedFindings = {
            type = "number",
        },
        totalArchivedFindings = {
            type = "number",
        },
    },
}

M.InternalAccessFindingsStatistics = {
    type = "structure",
    members = {
        resourceTypeStatistics = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        totalActiveFindings = {
            type = "number",
        },
        totalArchivedFindings = {
            type = "number",
        },
        totalResolvedFindings = {
            type = "number",
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
            type = "number",
        },
        details = {
            type = "map",
            key_type = "string",
            value_type = "number",
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
            type = "number",
        },
    },
}

M.UnusedAccessFindingsStatistics = {
    type = "structure",
    members = {
        unusedAccessTypeStatistics = {
            type = "list",
            member_type = "structure",
        },
        topAccounts = {
            type = "list",
            member_type = "structure",
        },
        totalActiveFindings = {
            type = "number",
        },
        totalArchivedFindings = {
            type = "number",
        },
        totalResolvedFindings = {
            type = "number",
        },
    },
}

M.FindingsStatistics = {
    type = "union",
    members = {
        externalAccessFindingsStatistics = {
            type = "structure",
        },
        internalAccessFindingsStatistics = {
            type = "structure",
        },
        unusedAccessFindingsStatistics = {
            type = "structure",
        },
    },
}

M.GetFindingsStatisticsOutput = {
    type = "structure",
    members = {
        findingsStatistics = {
            type = "list",
            member_type = "union",
        },
        lastUpdatedAt = {
            type = "timestamp",
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
            type = "number",
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
            member_type = "string",
        },
        condition = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        isPublic = {
            type = "boolean",
        },
        principal = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        sources = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        condition = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        principal = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
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
        },
    },
}

M.UnusedIamUserPasswordDetails = {
    type = "structure",
    members = {
        lastAccessed = {
            type = "timestamp",
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
        },
    },
}

M.UnusedPermissionDetails = {
    type = "structure",
    members = {
        actions = {
            type = "list",
            member_type = "structure",
        },
        serviceNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastAccessed = {
            type = "timestamp",
        },
    },
}

M.FindingDetails = {
    type = "union",
    members = {
        internalAccessDetails = {
            type = "structure",
        },
        externalAccessDetails = {
            type = "structure",
        },
        unusedPermissionDetails = {
            type = "structure",
        },
        unusedIamUserAccessKeyDetails = {
            type = "structure",
        },
        unusedIamRoleDetails = {
            type = "structure",
        },
        unusedIamUserPasswordDetails = {
            type = "structure",
        },
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
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
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
            },
        },
        findingDetails = {
            type = "list",
            member_type = "union",
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
            member_type = "string",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
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
        cloudTrailProperties = {
            type = "structure",
        },
    },
}

M.GeneratedPolicyResult = {
    type = "structure",
    members = {
        properties = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        generatedPolicies = {
            type = "list",
            member_type = "structure",
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
            },
        },
        completedOn = {
            type = "timestamp",
        },
        jobError = {
            type = "structure",
        },
    },
}

M.GetGeneratedPolicyOutput = {
    type = "structure",
    members = {
        jobDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        generatedPolicyResult = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            key_type = "string",
            value_type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
        action = {
            type = "list",
            member_type = "string",
        },
        condition = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "structure",
        },
    },
}

M.ListAccessPreviewsOutput = {
    type = "structure",
    members = {
        accessPreviews = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "structure",
        },
        sort = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
        action = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        analyzedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
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
            member_type = "structure",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        sort = {
            type = "structure",
        },
    },
}

M.FindingSummaryV2 = {
    type = "structure",
    members = {
        analyzedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
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
            member_type = "structure",
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
            type = "number",
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
            },
        },
        completedOn = {
            type = "timestamp",
        },
    },
}

M.ListPolicyGenerationsOutput = {
    type = "structure",
    members = {
        policyGenerations = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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
            member_type = "structure",
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
            },
        },
        endTime = {
            type = "timestamp",
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
        policyGenerationDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        cloudTrailDetails = {
            type = "structure",
        },
        clientToken = {
            type = "string",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
        },
        resourceArn = {
            type = "string",
        },
        clientToken = {
            type = "string",
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
            type = "number",
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
    },
}

M.PathElement = {
    type = "union",
    members = {
        index = {
            type = "number",
        },
        key = {
            type = "string",
        },
        substring = {
            type = "structure",
        },
        value = {
            type = "string",
        },
    },
}

M.Position = {
    type = "structure",
    members = {
        line = {
            type = "number",
            traits = {
                required = true,
            },
        },
        column = {
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
    },
}

M.Span = {
    type = "structure",
    members = {
        start = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        end = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.Location = {
    type = "structure",
    members = {
        path = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        span = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
