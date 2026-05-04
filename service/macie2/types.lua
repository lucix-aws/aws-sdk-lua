local M = {}

M.AdminStatus = {
    ENABLED = "ENABLED",
    DISABLING_IN_PROGRESS = "DISABLING_IN_PROGRESS",
}

M.AdminAccount = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.AllowListSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                timestamp_format = "date-time",
            },
        },
        description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                json_name = "updatedAt",
                timestamp_format = "date-time",
            },
        },
    },
}

M.AutomatedDiscoveryAccountStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AutomatedDiscoveryAccount = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.AutomatedDiscoveryAccountUpdate = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.AutomatedDiscoveryAccountUpdateErrorCode = {
    ACCOUNT_PAUSED = "ACCOUNT_PAUSED",
    ACCOUNT_NOT_FOUND = "ACCOUNT_NOT_FOUND",
}

M.AutomatedDiscoveryAccountUpdateError = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        errorCode = {
            type = "string",
            traits = {
                json_name = "errorCode",
            },
        },
    },
}

M.BatchGetCustomDataIdentifierSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                timestamp_format = "date-time",
            },
        },
        deleted = {
            type = "boolean",
            traits = {
                json_name = "deleted",
            },
        },
        description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
    },
}

M.AllowsUnencryptedObjectUploads = {
    TRUE = "TRUE",
    FALSE = "FALSE",
    UNKNOWN = "UNKNOWN",
}

M.AutomatedDiscoveryMonitoringStatus = {
    MONITORED = "MONITORED",
    NOT_MONITORED = "NOT_MONITORED",
}

M.BucketMetadataErrorCode = {
    ACCESS_DENIED = "ACCESS_DENIED",
    BUCKET_COUNT_EXCEEDS_QUOTA = "BUCKET_COUNT_EXCEEDS_QUOTA",
}

M.IsDefinedInJob = {
    TRUE = "TRUE",
    FALSE = "FALSE",
    UNKNOWN = "UNKNOWN",
}

M.IsMonitoredByJob = {
    TRUE = "TRUE",
    FALSE = "FALSE",
    UNKNOWN = "UNKNOWN",
}

M.JobDetails = {
    type = "structure",
    members = {
        isDefinedInJob = {
            type = "string",
            traits = {
                json_name = "isDefinedInJob",
            },
        },
        isMonitoredByJob = {
            type = "string",
            traits = {
                json_name = "isMonitoredByJob",
            },
        },
        lastJobId = {
            type = "string",
            traits = {
                json_name = "lastJobId",
            },
        },
        lastJobRunTime = {
            type = "timestamp",
            traits = {
                json_name = "lastJobRunTime",
                timestamp_format = "date-time",
            },
        },
    },
}

M.ObjectCountByEncryptionType = {
    type = "structure",
    members = {
        customerManaged = {
            type = "long",
            traits = {
                json_name = "customerManaged",
            },
        },
        kmsManaged = {
            type = "long",
            traits = {
                json_name = "kmsManaged",
            },
        },
        s3Managed = {
            type = "long",
            traits = {
                json_name = "s3Managed",
            },
        },
        unencrypted = {
            type = "long",
            traits = {
                json_name = "unencrypted",
            },
        },
        unknown = {
            type = "long",
            traits = {
                json_name = "unknown",
            },
        },
    },
}

M.EffectivePermission = {
    PUBLIC = "PUBLIC",
    NOT_PUBLIC = "NOT_PUBLIC",
    UNKNOWN = "UNKNOWN",
}

M.BlockPublicAccess = {
    type = "structure",
    members = {
        blockPublicAcls = {
            type = "boolean",
            traits = {
                json_name = "blockPublicAcls",
            },
        },
        blockPublicPolicy = {
            type = "boolean",
            traits = {
                json_name = "blockPublicPolicy",
            },
        },
        ignorePublicAcls = {
            type = "boolean",
            traits = {
                json_name = "ignorePublicAcls",
            },
        },
        restrictPublicBuckets = {
            type = "boolean",
            traits = {
                json_name = "restrictPublicBuckets",
            },
        },
    },
}

M.AccountLevelPermissions = {
    type = "structure",
    members = {
        blockPublicAccess = setmetatable({ traits = {
            json_name = "blockPublicAccess",
        } }, { __index = M.BlockPublicAccess }),
    },
}

M.AccessControlList = {
    type = "structure",
    members = {
        allowsPublicReadAccess = {
            type = "boolean",
            traits = {
                json_name = "allowsPublicReadAccess",
            },
        },
        allowsPublicWriteAccess = {
            type = "boolean",
            traits = {
                json_name = "allowsPublicWriteAccess",
            },
        },
    },
}

M.BucketPolicy = {
    type = "structure",
    members = {
        allowsPublicReadAccess = {
            type = "boolean",
            traits = {
                json_name = "allowsPublicReadAccess",
            },
        },
        allowsPublicWriteAccess = {
            type = "boolean",
            traits = {
                json_name = "allowsPublicWriteAccess",
            },
        },
    },
}

M.BucketLevelPermissions = {
    type = "structure",
    members = {
        accessControlList = setmetatable({ traits = {
            json_name = "accessControlList",
        } }, { __index = M.AccessControlList }),
        blockPublicAccess = setmetatable({ traits = {
            json_name = "blockPublicAccess",
        } }, { __index = M.BlockPublicAccess }),
        bucketPolicy = setmetatable({ traits = {
            json_name = "bucketPolicy",
        } }, { __index = M.BucketPolicy }),
    },
}

M.BucketPermissionConfiguration = {
    type = "structure",
    members = {
        accountLevelPermissions = setmetatable({ traits = {
            json_name = "accountLevelPermissions",
        } }, { __index = M.AccountLevelPermissions }),
        bucketLevelPermissions = setmetatable({ traits = {
            json_name = "bucketLevelPermissions",
        } }, { __index = M.BucketLevelPermissions }),
    },
}

M.BucketPublicAccess = {
    type = "structure",
    members = {
        effectivePermission = {
            type = "string",
            traits = {
                json_name = "effectivePermission",
            },
        },
        permissionConfiguration = setmetatable({ traits = {
            json_name = "permissionConfiguration",
        } }, { __index = M.BucketPermissionConfiguration }),
    },
}

M.ReplicationDetails = {
    type = "structure",
    members = {
        replicated = {
            type = "boolean",
            traits = {
                json_name = "replicated",
            },
        },
        replicatedExternally = {
            type = "boolean",
            traits = {
                json_name = "replicatedExternally",
            },
        },
        replicationAccounts = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "replicationAccounts",
            },
        },
    },
}

M.Type = {
    NONE = "NONE",
    AES256 = "AES256",
    aws_kms = "aws:kms",
    aws_kms_dsse = "aws:kms:dsse",
}

M.BucketServerSideEncryption = {
    type = "structure",
    members = {
        kmsMasterKeyId = {
            type = "string",
            traits = {
                json_name = "kmsMasterKeyId",
            },
        },
        type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
}

M.SharedAccess = {
    EXTERNAL = "EXTERNAL",
    INTERNAL = "INTERNAL",
    NOT_SHARED = "NOT_SHARED",
    UNKNOWN = "UNKNOWN",
}

M.KeyValuePair = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                json_name = "key",
            },
        },
        value = {
            type = "string",
            traits = {
                json_name = "value",
            },
        },
    },
}

M.ObjectLevelStatistics = {
    type = "structure",
    members = {
        fileType = {
            type = "long",
            traits = {
                json_name = "fileType",
            },
        },
        storageClass = {
            type = "long",
            traits = {
                json_name = "storageClass",
            },
        },
        total = {
            type = "long",
            traits = {
                json_name = "total",
            },
        },
    },
}

M.BucketMetadata = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        allowsUnencryptedObjectUploads = {
            type = "string",
            traits = {
                json_name = "allowsUnencryptedObjectUploads",
            },
        },
        automatedDiscoveryMonitoringStatus = {
            type = "string",
            traits = {
                json_name = "automatedDiscoveryMonitoringStatus",
            },
        },
        bucketArn = {
            type = "string",
            traits = {
                json_name = "bucketArn",
            },
        },
        bucketCreatedAt = {
            type = "timestamp",
            traits = {
                json_name = "bucketCreatedAt",
                timestamp_format = "date-time",
            },
        },
        bucketName = {
            type = "string",
            traits = {
                json_name = "bucketName",
            },
        },
        classifiableObjectCount = {
            type = "long",
            traits = {
                json_name = "classifiableObjectCount",
            },
        },
        classifiableSizeInBytes = {
            type = "long",
            traits = {
                json_name = "classifiableSizeInBytes",
            },
        },
        errorCode = {
            type = "string",
            traits = {
                json_name = "errorCode",
            },
        },
        errorMessage = {
            type = "string",
            traits = {
                json_name = "errorMessage",
            },
        },
        jobDetails = setmetatable({ traits = {
            json_name = "jobDetails",
        } }, { __index = M.JobDetails }),
        lastAutomatedDiscoveryTime = {
            type = "timestamp",
            traits = {
                json_name = "lastAutomatedDiscoveryTime",
                timestamp_format = "date-time",
            },
        },
        lastUpdated = {
            type = "timestamp",
            traits = {
                json_name = "lastUpdated",
                timestamp_format = "date-time",
            },
        },
        objectCount = {
            type = "long",
            traits = {
                json_name = "objectCount",
            },
        },
        objectCountByEncryptionType = setmetatable({ traits = {
            json_name = "objectCountByEncryptionType",
        } }, { __index = M.ObjectCountByEncryptionType }),
        publicAccess = setmetatable({ traits = {
            json_name = "publicAccess",
        } }, { __index = M.BucketPublicAccess }),
        region = {
            type = "string",
            traits = {
                json_name = "region",
            },
        },
        replicationDetails = setmetatable({ traits = {
            json_name = "replicationDetails",
        } }, { __index = M.ReplicationDetails }),
        sensitivityScore = {
            type = "integer",
            traits = {
                json_name = "sensitivityScore",
            },
        },
        serverSideEncryption = setmetatable({ traits = {
            json_name = "serverSideEncryption",
        } }, { __index = M.BucketServerSideEncryption }),
        sharedAccess = {
            type = "string",
            traits = {
                json_name = "sharedAccess",
            },
        },
        sizeInBytes = {
            type = "long",
            traits = {
                json_name = "sizeInBytes",
            },
        },
        sizeInBytesCompressed = {
            type = "long",
            traits = {
                json_name = "sizeInBytesCompressed",
            },
        },
        tags = {
            type = "list",
            member = M.KeyValuePair,
            traits = {
                json_name = "tags",
            },
        },
        unclassifiableObjectCount = setmetatable({ traits = {
            json_name = "unclassifiableObjectCount",
        } }, { __index = M.ObjectLevelStatistics }),
        unclassifiableObjectSizeInBytes = setmetatable({ traits = {
            json_name = "unclassifiableObjectSizeInBytes",
        } }, { __index = M.ObjectLevelStatistics }),
        versioning = {
            type = "boolean",
            traits = {
                json_name = "versioning",
            },
        },
    },
}

M.ClassificationScopeSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
    },
}

M.JobComparator = {
    EQ = "EQ",
    GT = "GT",
    GTE = "GTE",
    LT = "LT",
    LTE = "LTE",
    NE = "NE",
    CONTAINS = "CONTAINS",
    STARTS_WITH = "STARTS_WITH",
}

M.SimpleCriterionKeyForJob = {
    ACCOUNT_ID = "ACCOUNT_ID",
    S3_BUCKET_NAME = "S3_BUCKET_NAME",
    S3_BUCKET_EFFECTIVE_PERMISSION = "S3_BUCKET_EFFECTIVE_PERMISSION",
    S3_BUCKET_SHARED_ACCESS = "S3_BUCKET_SHARED_ACCESS",
}

M.SimpleCriterionForJob = {
    type = "structure",
    members = {
        comparator = {
            type = "string",
            traits = {
                json_name = "comparator",
            },
        },
        key = {
            type = "string",
            traits = {
                json_name = "key",
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "values",
            },
        },
    },
}

M.TagCriterionPairForJob = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                json_name = "key",
            },
        },
        value = {
            type = "string",
            traits = {
                json_name = "value",
            },
        },
    },
}

M.TagCriterionForJob = {
    type = "structure",
    members = {
        comparator = {
            type = "string",
            traits = {
                json_name = "comparator",
            },
        },
        tagValues = {
            type = "list",
            member = M.TagCriterionPairForJob,
            traits = {
                json_name = "tagValues",
            },
        },
    },
}

M.CriteriaForJob = {
    type = "structure",
    members = {
        simpleCriterion = setmetatable({ traits = {
            json_name = "simpleCriterion",
        } }, { __index = M.SimpleCriterionForJob }),
        tagCriterion = setmetatable({ traits = {
            json_name = "tagCriterion",
        } }, { __index = M.TagCriterionForJob }),
    },
}

M.CustomDataIdentifierSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                timestamp_format = "date-time",
            },
        },
        description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
    },
}

M.DetectedDataDetails = {
    type = "structure",
    members = {
        value = {
            type = "string",
            traits = {
                json_name = "value",
                required = true,
            },
        },
    },
}

M.DataIdentifierType = {
    CUSTOM = "CUSTOM",
    MANAGED = "MANAGED",
}

M.Detection = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        count = {
            type = "long",
            traits = {
                json_name = "count",
            },
        },
        id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        suppressed = {
            type = "boolean",
            traits = {
                json_name = "suppressed",
            },
        },
        type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
}

M.FindingCategory = {
    CLASSIFICATION = "CLASSIFICATION",
    POLICY = "POLICY",
}

M.OriginType = {
    SENSITIVE_DATA_DISCOVERY_JOB = "SENSITIVE_DATA_DISCOVERY_JOB",
    AUTOMATED_SENSITIVE_DATA_DISCOVERY = "AUTOMATED_SENSITIVE_DATA_DISCOVERY",
}

M.Cell = {
    type = "structure",
    members = {
        cellReference = {
            type = "string",
            traits = {
                json_name = "cellReference",
            },
        },
        column = {
            type = "long",
            traits = {
                json_name = "column",
            },
        },
        columnName = {
            type = "string",
            traits = {
                json_name = "columnName",
            },
        },
        row = {
            type = "long",
            traits = {
                json_name = "row",
            },
        },
    },
}

M.Range = {
    type = "structure",
    members = {
        end = {
            type = "long",
            traits = {
                json_name = "end",
            },
        },
        start = {
            type = "long",
            traits = {
                json_name = "start",
            },
        },
        startColumn = {
            type = "long",
            traits = {
                json_name = "startColumn",
            },
        },
    },
}

M.Page = {
    type = "structure",
    members = {
        lineRange = setmetatable({ traits = {
            json_name = "lineRange",
        } }, { __index = M.Range }),
        offsetRange = setmetatable({ traits = {
            json_name = "offsetRange",
        } }, { __index = M.Range }),
        pageNumber = {
            type = "long",
            traits = {
                json_name = "pageNumber",
            },
        },
    },
}

M.Record = {
    type = "structure",
    members = {
        jsonPath = {
            type = "string",
            traits = {
                json_name = "jsonPath",
            },
        },
        recordIndex = {
            type = "long",
            traits = {
                json_name = "recordIndex",
            },
        },
    },
}

M.Occurrences = {
    type = "structure",
    members = {
        cells = {
            type = "list",
            member = M.Cell,
            traits = {
                json_name = "cells",
            },
        },
        lineRanges = {
            type = "list",
            member = M.Range,
            traits = {
                json_name = "lineRanges",
            },
        },
        offsetRanges = {
            type = "list",
            member = M.Range,
            traits = {
                json_name = "offsetRanges",
            },
        },
        pages = {
            type = "list",
            member = M.Page,
            traits = {
                json_name = "pages",
            },
        },
        records = {
            type = "list",
            member = M.Record,
            traits = {
                json_name = "records",
            },
        },
    },
}

M.CustomDetection = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        count = {
            type = "long",
            traits = {
                json_name = "count",
            },
        },
        name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        occurrences = setmetatable({ traits = {
            json_name = "occurrences",
        } }, { __index = M.Occurrences }),
    },
}

M.CustomDataIdentifiers = {
    type = "structure",
    members = {
        detections = {
            type = "list",
            member = M.CustomDetection,
            traits = {
                json_name = "detections",
            },
        },
        totalCount = {
            type = "long",
            traits = {
                json_name = "totalCount",
            },
        },
    },
}

M.SensitiveDataItemCategory = {
    FINANCIAL_INFORMATION = "FINANCIAL_INFORMATION",
    PERSONAL_INFORMATION = "PERSONAL_INFORMATION",
    CREDENTIALS = "CREDENTIALS",
    CUSTOM_IDENTIFIER = "CUSTOM_IDENTIFIER",
}

M.DefaultDetection = {
    type = "structure",
    members = {
        count = {
            type = "long",
            traits = {
                json_name = "count",
            },
        },
        occurrences = setmetatable({ traits = {
            json_name = "occurrences",
        } }, { __index = M.Occurrences }),
        type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
}

M.SensitiveDataItem = {
    type = "structure",
    members = {
        category = {
            type = "string",
            traits = {
                json_name = "category",
            },
        },
        detections = {
            type = "list",
            member = M.DefaultDetection,
            traits = {
                json_name = "detections",
            },
        },
        totalCount = {
            type = "long",
            traits = {
                json_name = "totalCount",
            },
        },
    },
}

M.ClassificationResultStatus = {
    type = "structure",
    members = {
        code = {
            type = "string",
            traits = {
                json_name = "code",
            },
        },
        reason = {
            type = "string",
            traits = {
                json_name = "reason",
            },
        },
    },
}

M.ClassificationResult = {
    type = "structure",
    members = {
        additionalOccurrences = {
            type = "boolean",
            traits = {
                json_name = "additionalOccurrences",
            },
        },
        customDataIdentifiers = setmetatable({ traits = {
            json_name = "customDataIdentifiers",
        } }, { __index = M.CustomDataIdentifiers }),
        mimeType = {
            type = "string",
            traits = {
                json_name = "mimeType",
            },
        },
        sensitiveData = {
            type = "list",
            member = M.SensitiveDataItem,
            traits = {
                json_name = "sensitiveData",
            },
        },
        sizeClassified = {
            type = "long",
            traits = {
                json_name = "sizeClassified",
            },
        },
        status = setmetatable({ traits = {
            json_name = "status",
        } }, { __index = M.ClassificationResultStatus }),
    },
}

M.ClassificationDetails = {
    type = "structure",
    members = {
        detailedResultsLocation = {
            type = "string",
            traits = {
                json_name = "detailedResultsLocation",
            },
        },
        jobArn = {
            type = "string",
            traits = {
                json_name = "jobArn",
            },
        },
        jobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        originType = {
            type = "string",
            traits = {
                json_name = "originType",
            },
        },
        result = setmetatable({ traits = {
            json_name = "result",
        } }, { __index = M.ClassificationResult }),
    },
}

M.FindingActionType = {
    AWS_API_CALL = "AWS_API_CALL",
}

M.ApiCallDetails = {
    type = "structure",
    members = {
        api = {
            type = "string",
            traits = {
                json_name = "api",
            },
        },
        apiServiceName = {
            type = "string",
            traits = {
                json_name = "apiServiceName",
            },
        },
        firstSeen = {
            type = "timestamp",
            traits = {
                json_name = "firstSeen",
                timestamp_format = "date-time",
            },
        },
        lastSeen = {
            type = "timestamp",
            traits = {
                json_name = "lastSeen",
                timestamp_format = "date-time",
            },
        },
    },
}

M.FindingAction = {
    type = "structure",
    members = {
        actionType = {
            type = "string",
            traits = {
                json_name = "actionType",
            },
        },
        apiCallDetails = setmetatable({ traits = {
            json_name = "apiCallDetails",
        } }, { __index = M.ApiCallDetails }),
    },
}

M.DomainDetails = {
    type = "structure",
    members = {
        domainName = {
            type = "string",
            traits = {
                json_name = "domainName",
            },
        },
    },
}

M.IpCity = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
    },
}

M.IpCountry = {
    type = "structure",
    members = {
        code = {
            type = "string",
            traits = {
                json_name = "code",
            },
        },
        name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
    },
}

M.IpGeoLocation = {
    type = "structure",
    members = {
        lat = {
            type = "double",
            traits = {
                json_name = "lat",
            },
        },
        lon = {
            type = "double",
            traits = {
                json_name = "lon",
            },
        },
    },
}

M.IpOwner = {
    type = "structure",
    members = {
        asn = {
            type = "string",
            traits = {
                json_name = "asn",
            },
        },
        asnOrg = {
            type = "string",
            traits = {
                json_name = "asnOrg",
            },
        },
        isp = {
            type = "string",
            traits = {
                json_name = "isp",
            },
        },
        org = {
            type = "string",
            traits = {
                json_name = "org",
            },
        },
    },
}

M.IpAddressDetails = {
    type = "structure",
    members = {
        ipAddressV4 = {
            type = "string",
            traits = {
                json_name = "ipAddressV4",
            },
        },
        ipCity = setmetatable({ traits = {
            json_name = "ipCity",
        } }, { __index = M.IpCity }),
        ipCountry = setmetatable({ traits = {
            json_name = "ipCountry",
        } }, { __index = M.IpCountry }),
        ipGeoLocation = setmetatable({ traits = {
            json_name = "ipGeoLocation",
        } }, { __index = M.IpGeoLocation }),
        ipOwner = setmetatable({ traits = {
            json_name = "ipOwner",
        } }, { __index = M.IpOwner }),
    },
}

M.SessionContextAttributes = {
    type = "structure",
    members = {
        creationDate = {
            type = "timestamp",
            traits = {
                json_name = "creationDate",
                timestamp_format = "date-time",
            },
        },
        mfaAuthenticated = {
            type = "boolean",
            traits = {
                json_name = "mfaAuthenticated",
            },
        },
    },
}

M.SessionIssuer = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        principalId = {
            type = "string",
            traits = {
                json_name = "principalId",
            },
        },
        type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
        userName = {
            type = "string",
            traits = {
                json_name = "userName",
            },
        },
    },
}

M.SessionContext = {
    type = "structure",
    members = {
        attributes = setmetatable({ traits = {
            json_name = "attributes",
        } }, { __index = M.SessionContextAttributes }),
        sessionIssuer = setmetatable({ traits = {
            json_name = "sessionIssuer",
        } }, { __index = M.SessionIssuer }),
    },
}

M.AssumedRole = {
    type = "structure",
    members = {
        accessKeyId = {
            type = "string",
            traits = {
                json_name = "accessKeyId",
            },
        },
        accountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        principalId = {
            type = "string",
            traits = {
                json_name = "principalId",
            },
        },
        sessionContext = setmetatable({ traits = {
            json_name = "sessionContext",
        } }, { __index = M.SessionContext }),
    },
}

M.AwsAccount = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        principalId = {
            type = "string",
            traits = {
                json_name = "principalId",
            },
        },
    },
}

M.AwsService = {
    type = "structure",
    members = {
        invokedBy = {
            type = "string",
            traits = {
                json_name = "invokedBy",
            },
        },
    },
}

M.FederatedUser = {
    type = "structure",
    members = {
        accessKeyId = {
            type = "string",
            traits = {
                json_name = "accessKeyId",
            },
        },
        accountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        principalId = {
            type = "string",
            traits = {
                json_name = "principalId",
            },
        },
        sessionContext = setmetatable({ traits = {
            json_name = "sessionContext",
        } }, { __index = M.SessionContext }),
    },
}

M.IamUser = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        principalId = {
            type = "string",
            traits = {
                json_name = "principalId",
            },
        },
        userName = {
            type = "string",
            traits = {
                json_name = "userName",
            },
        },
    },
}

M.UserIdentityRoot = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        principalId = {
            type = "string",
            traits = {
                json_name = "principalId",
            },
        },
    },
}

M.UserIdentityType = {
    AssumedRole = "AssumedRole",
    IAMUser = "IAMUser",
    FederatedUser = "FederatedUser",
    Root = "Root",
    AWSAccount = "AWSAccount",
    AWSService = "AWSService",
}

M.UserIdentity = {
    type = "structure",
    members = {
        assumedRole = setmetatable({ traits = {
            json_name = "assumedRole",
        } }, { __index = M.AssumedRole }),
        awsAccount = setmetatable({ traits = {
            json_name = "awsAccount",
        } }, { __index = M.AwsAccount }),
        awsService = setmetatable({ traits = {
            json_name = "awsService",
        } }, { __index = M.AwsService }),
        federatedUser = setmetatable({ traits = {
            json_name = "federatedUser",
        } }, { __index = M.FederatedUser }),
        iamUser = setmetatable({ traits = {
            json_name = "iamUser",
        } }, { __index = M.IamUser }),
        root = setmetatable({ traits = {
            json_name = "root",
        } }, { __index = M.UserIdentityRoot }),
        type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
}

M.FindingActor = {
    type = "structure",
    members = {
        domainDetails = setmetatable({ traits = {
            json_name = "domainDetails",
        } }, { __index = M.DomainDetails }),
        ipAddressDetails = setmetatable({ traits = {
            json_name = "ipAddressDetails",
        } }, { __index = M.IpAddressDetails }),
        userIdentity = setmetatable({ traits = {
            json_name = "userIdentity",
        } }, { __index = M.UserIdentity }),
    },
}

M.PolicyDetails = {
    type = "structure",
    members = {
        action = setmetatable({ traits = {
            json_name = "action",
        } }, { __index = M.FindingAction }),
        actor = setmetatable({ traits = {
            json_name = "actor",
        } }, { __index = M.FindingActor }),
    },
}

M.EncryptionType = {
    NONE = "NONE",
    AES256 = "AES256",
    aws_kms = "aws:kms",
    UNKNOWN = "UNKNOWN",
    aws_kms_dsse = "aws:kms:dsse",
}

M.ServerSideEncryption = {
    type = "structure",
    members = {
        encryptionType = {
            type = "string",
            traits = {
                json_name = "encryptionType",
            },
        },
        kmsMasterKeyId = {
            type = "string",
            traits = {
                json_name = "kmsMasterKeyId",
            },
        },
    },
}

M.S3BucketOwner = {
    type = "structure",
    members = {
        displayName = {
            type = "string",
            traits = {
                json_name = "displayName",
            },
        },
        id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
    },
}

M.S3Bucket = {
    type = "structure",
    members = {
        allowsUnencryptedObjectUploads = {
            type = "string",
            traits = {
                json_name = "allowsUnencryptedObjectUploads",
            },
        },
        arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                timestamp_format = "date-time",
            },
        },
        defaultServerSideEncryption = setmetatable({ traits = {
            json_name = "defaultServerSideEncryption",
        } }, { __index = M.ServerSideEncryption }),
        name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        owner = setmetatable({ traits = {
            json_name = "owner",
        } }, { __index = M.S3BucketOwner }),
        publicAccess = setmetatable({ traits = {
            json_name = "publicAccess",
        } }, { __index = M.BucketPublicAccess }),
        tags = {
            type = "list",
            member = M.KeyValuePair,
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.StorageClass = {
    STANDARD = "STANDARD",
    REDUCED_REDUNDANCY = "REDUCED_REDUNDANCY",
    STANDARD_IA = "STANDARD_IA",
    INTELLIGENT_TIERING = "INTELLIGENT_TIERING",
    DEEP_ARCHIVE = "DEEP_ARCHIVE",
    ONEZONE_IA = "ONEZONE_IA",
    GLACIER = "GLACIER",
    GLACIER_IR = "GLACIER_IR",
    OUTPOSTS = "OUTPOSTS",
}

M.S3Object = {
    type = "structure",
    members = {
        bucketArn = {
            type = "string",
            traits = {
                json_name = "bucketArn",
            },
        },
        eTag = {
            type = "string",
            traits = {
                json_name = "eTag",
            },
        },
        extension = {
            type = "string",
            traits = {
                json_name = "extension",
            },
        },
        key = {
            type = "string",
            traits = {
                json_name = "key",
            },
        },
        lastModified = {
            type = "timestamp",
            traits = {
                json_name = "lastModified",
                timestamp_format = "date-time",
            },
        },
        path = {
            type = "string",
            traits = {
                json_name = "path",
            },
        },
        publicAccess = {
            type = "boolean",
            traits = {
                json_name = "publicAccess",
            },
        },
        serverSideEncryption = setmetatable({ traits = {
            json_name = "serverSideEncryption",
        } }, { __index = M.ServerSideEncryption }),
        size = {
            type = "long",
            traits = {
                json_name = "size",
            },
        },
        storageClass = {
            type = "string",
            traits = {
                json_name = "storageClass",
            },
        },
        tags = {
            type = "list",
            member = M.KeyValuePair,
            traits = {
                json_name = "tags",
            },
        },
        versionId = {
            type = "string",
            traits = {
                json_name = "versionId",
            },
        },
    },
}

M.ResourcesAffected = {
    type = "structure",
    members = {
        s3Bucket = setmetatable({ traits = {
            json_name = "s3Bucket",
        } }, { __index = M.S3Bucket }),
        s3Object = setmetatable({ traits = {
            json_name = "s3Object",
        } }, { __index = M.S3Object }),
    },
}

M.SeverityDescription = {
    Low = "Low",
    Medium = "Medium",
    High = "High",
}

M.Severity = {
    type = "structure",
    members = {
        description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        score = {
            type = "long",
            traits = {
                json_name = "score",
            },
        },
    },
}

M.FindingType = {
    SensitiveData_S3Object_Multiple = "SensitiveData:S3Object/Multiple",
    SensitiveData_S3Object_Financial = "SensitiveData:S3Object/Financial",
    SensitiveData_S3Object_Personal = "SensitiveData:S3Object/Personal",
    SensitiveData_S3Object_Credentials = "SensitiveData:S3Object/Credentials",
    SensitiveData_S3Object_CustomIdentifier = "SensitiveData:S3Object/CustomIdentifier",
    Policy_IAMUser_S3BucketPublic = "Policy:IAMUser/S3BucketPublic",
    Policy_IAMUser_S3BucketSharedExternally = "Policy:IAMUser/S3BucketSharedExternally",
    Policy_IAMUser_S3BucketReplicatedExternally = "Policy:IAMUser/S3BucketReplicatedExternally",
    Policy_IAMUser_S3BucketEncryptionDisabled = "Policy:IAMUser/S3BucketEncryptionDisabled",
    Policy_IAMUser_S3BlockPublicAccessDisabled = "Policy:IAMUser/S3BlockPublicAccessDisabled",
    Policy_IAMUser_S3BucketSharedWithCloudFront = "Policy:IAMUser/S3BucketSharedWithCloudFront",
}

M.Finding = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        archived = {
            type = "boolean",
            traits = {
                json_name = "archived",
            },
        },
        category = {
            type = "string",
            traits = {
                json_name = "category",
            },
        },
        classificationDetails = setmetatable({ traits = {
            json_name = "classificationDetails",
        } }, { __index = M.ClassificationDetails }),
        count = {
            type = "long",
            traits = {
                json_name = "count",
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                timestamp_format = "date-time",
            },
        },
        description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        partition = {
            type = "string",
            traits = {
                json_name = "partition",
            },
        },
        policyDetails = setmetatable({ traits = {
            json_name = "policyDetails",
        } }, { __index = M.PolicyDetails }),
        region = {
            type = "string",
            traits = {
                json_name = "region",
            },
        },
        resourcesAffected = setmetatable({ traits = {
            json_name = "resourcesAffected",
        } }, { __index = M.ResourcesAffected }),
        sample = {
            type = "boolean",
            traits = {
                json_name = "sample",
            },
        },
        schemaVersion = {
            type = "string",
            traits = {
                json_name = "schemaVersion",
            },
        },
        severity = setmetatable({ traits = {
            json_name = "severity",
        } }, { __index = M.Severity }),
        title = {
            type = "string",
            traits = {
                json_name = "title",
            },
        },
        type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                json_name = "updatedAt",
                timestamp_format = "date-time",
            },
        },
    },
}

M.FindingsFilterAction = {
    ARCHIVE = "ARCHIVE",
    NOOP = "NOOP",
}

M.FindingsFilterListItem = {
    type = "structure",
    members = {
        action = {
            type = "string",
            traits = {
                json_name = "action",
            },
        },
        arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.GroupCount = {
    type = "structure",
    members = {
        count = {
            type = "long",
            traits = {
                json_name = "count",
            },
        },
        groupKey = {
            type = "string",
            traits = {
                json_name = "groupKey",
            },
        },
    },
}

M.RelationshipStatus = {
    Enabled = "Enabled",
    Paused = "Paused",
    Invited = "Invited",
    Created = "Created",
    Removed = "Removed",
    Resigned = "Resigned",
    EmailVerificationInProgress = "EmailVerificationInProgress",
    EmailVerificationFailed = "EmailVerificationFailed",
    RegionDisabled = "RegionDisabled",
    AccountSuspended = "AccountSuspended",
}

M.Invitation = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        invitationId = {
            type = "string",
            traits = {
                json_name = "invitationId",
            },
        },
        invitedAt = {
            type = "timestamp",
            traits = {
                json_name = "invitedAt",
                timestamp_format = "date-time",
            },
        },
        relationshipStatus = {
            type = "string",
            traits = {
                json_name = "relationshipStatus",
            },
        },
    },
}

M.ScopeFilterKey = {
    OBJECT_EXTENSION = "OBJECT_EXTENSION",
    OBJECT_LAST_MODIFIED_DATE = "OBJECT_LAST_MODIFIED_DATE",
    OBJECT_SIZE = "OBJECT_SIZE",
    OBJECT_KEY = "OBJECT_KEY",
}

M.SimpleScopeTerm = {
    type = "structure",
    members = {
        comparator = {
            type = "string",
            traits = {
                json_name = "comparator",
            },
        },
        key = {
            type = "string",
            traits = {
                json_name = "key",
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "values",
            },
        },
    },
}

M.TagValuePair = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                json_name = "key",
            },
        },
        value = {
            type = "string",
            traits = {
                json_name = "value",
            },
        },
    },
}

M.TagTarget = {
    S3_OBJECT = "S3_OBJECT",
}

M.TagScopeTerm = {
    type = "structure",
    members = {
        comparator = {
            type = "string",
            traits = {
                json_name = "comparator",
            },
        },
        key = {
            type = "string",
            traits = {
                json_name = "key",
            },
        },
        tagValues = {
            type = "list",
            member = M.TagValuePair,
            traits = {
                json_name = "tagValues",
            },
        },
        target = {
            type = "string",
            traits = {
                json_name = "target",
            },
        },
    },
}

M.JobScopeTerm = {
    type = "structure",
    members = {
        simpleScopeTerm = setmetatable({ traits = {
            json_name = "simpleScopeTerm",
        } }, { __index = M.SimpleScopeTerm }),
        tagScopeTerm = setmetatable({ traits = {
            json_name = "tagScopeTerm",
        } }, { __index = M.TagScopeTerm }),
    },
}

M.CriteriaBlockForJob = {
    type = "structure",
    members = {
        and = {
            type = "list",
            member = M.CriteriaForJob,
            traits = {
                json_name = "and",
            },
        },
    },
}

M.S3BucketCriteriaForJob = {
    type = "structure",
    members = {
        excludes = setmetatable({ traits = {
            json_name = "excludes",
        } }, { __index = M.CriteriaBlockForJob }),
        includes = setmetatable({ traits = {
            json_name = "includes",
        } }, { __index = M.CriteriaBlockForJob }),
    },
}

M.S3BucketDefinitionForJob = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                json_name = "accountId",
                required = true,
            },
        },
        buckets = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "buckets",
                required = true,
            },
        },
    },
}

M.JobStatus = {
    RUNNING = "RUNNING",
    PAUSED = "PAUSED",
    CANCELLED = "CANCELLED",
    COMPLETE = "COMPLETE",
    IDLE = "IDLE",
    USER_PAUSED = "USER_PAUSED",
}

M.JobType = {
    ONE_TIME = "ONE_TIME",
    SCHEDULED = "SCHEDULED",
}

M.LastRunErrorStatusCode = {
    NONE = "NONE",
    ERROR = "ERROR",
}

M.LastRunErrorStatus = {
    type = "structure",
    members = {
        code = {
            type = "string",
            traits = {
                json_name = "code",
            },
        },
    },
}

M.UserPausedDetails = {
    type = "structure",
    members = {
        jobExpiresAt = {
            type = "timestamp",
            traits = {
                json_name = "jobExpiresAt",
                timestamp_format = "date-time",
            },
        },
        jobImminentExpirationHealthEventArn = {
            type = "string",
            traits = {
                json_name = "jobImminentExpirationHealthEventArn",
            },
        },
        jobPausedAt = {
            type = "timestamp",
            traits = {
                json_name = "jobPausedAt",
                timestamp_format = "date-time",
            },
        },
    },
}

M.JobSummary = {
    type = "structure",
    members = {
        bucketCriteria = setmetatable({ traits = {
            json_name = "bucketCriteria",
        } }, { __index = M.S3BucketCriteriaForJob }),
        bucketDefinitions = {
            type = "list",
            member = M.S3BucketDefinitionForJob,
            traits = {
                json_name = "bucketDefinitions",
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                timestamp_format = "date-time",
            },
        },
        jobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        jobStatus = {
            type = "string",
            traits = {
                json_name = "jobStatus",
            },
        },
        jobType = {
            type = "string",
            traits = {
                json_name = "jobType",
            },
        },
        lastRunErrorStatus = setmetatable({ traits = {
            json_name = "lastRunErrorStatus",
        } }, { __index = M.LastRunErrorStatus }),
        name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        userPausedDetails = setmetatable({ traits = {
            json_name = "userPausedDetails",
        } }, { __index = M.UserPausedDetails }),
    },
}

M.ListJobsFilterKey = {
    jobType = "jobType",
    jobStatus = "jobStatus",
    createdAt = "createdAt",
    name = "name",
}

M.ListJobsFilterTerm = {
    type = "structure",
    members = {
        comparator = {
            type = "string",
            traits = {
                json_name = "comparator",
            },
        },
        key = {
            type = "string",
            traits = {
                json_name = "key",
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "values",
            },
        },
    },
}

M.ManagedDataIdentifierSummary = {
    type = "structure",
    members = {
        category = {
            type = "string",
            traits = {
                json_name = "category",
            },
        },
        id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
    },
}

M.MatchingBucket = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        automatedDiscoveryMonitoringStatus = {
            type = "string",
            traits = {
                json_name = "automatedDiscoveryMonitoringStatus",
            },
        },
        bucketName = {
            type = "string",
            traits = {
                json_name = "bucketName",
            },
        },
        classifiableObjectCount = {
            type = "long",
            traits = {
                json_name = "classifiableObjectCount",
            },
        },
        classifiableSizeInBytes = {
            type = "long",
            traits = {
                json_name = "classifiableSizeInBytes",
            },
        },
        errorCode = {
            type = "string",
            traits = {
                json_name = "errorCode",
            },
        },
        errorMessage = {
            type = "string",
            traits = {
                json_name = "errorMessage",
            },
        },
        jobDetails = setmetatable({ traits = {
            json_name = "jobDetails",
        } }, { __index = M.JobDetails }),
        lastAutomatedDiscoveryTime = {
            type = "timestamp",
            traits = {
                json_name = "lastAutomatedDiscoveryTime",
                timestamp_format = "date-time",
            },
        },
        objectCount = {
            type = "long",
            traits = {
                json_name = "objectCount",
            },
        },
        objectCountByEncryptionType = setmetatable({ traits = {
            json_name = "objectCountByEncryptionType",
        } }, { __index = M.ObjectCountByEncryptionType }),
        sensitivityScore = {
            type = "integer",
            traits = {
                json_name = "sensitivityScore",
            },
        },
        sizeInBytes = {
            type = "long",
            traits = {
                json_name = "sizeInBytes",
            },
        },
        sizeInBytesCompressed = {
            type = "long",
            traits = {
                json_name = "sizeInBytesCompressed",
            },
        },
        unclassifiableObjectCount = setmetatable({ traits = {
            json_name = "unclassifiableObjectCount",
        } }, { __index = M.ObjectLevelStatistics }),
        unclassifiableObjectSizeInBytes = setmetatable({ traits = {
            json_name = "unclassifiableObjectSizeInBytes",
        } }, { __index = M.ObjectLevelStatistics }),
    },
}

M.MatchingResource = {
    type = "structure",
    members = {
        matchingBucket = setmetatable({ traits = {
            json_name = "matchingBucket",
        } }, { __index = M.MatchingBucket }),
    },
}

M.Member = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        administratorAccountId = {
            type = "string",
            traits = {
                json_name = "administratorAccountId",
            },
        },
        arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        email = {
            type = "string",
            traits = {
                json_name = "email",
            },
        },
        invitedAt = {
            type = "timestamp",
            traits = {
                json_name = "invitedAt",
                timestamp_format = "date-time",
            },
        },
        masterAccountId = {
            type = "string",
            traits = {
                json_name = "masterAccountId",
            },
        },
        relationshipStatus = {
            type = "string",
            traits = {
                json_name = "relationshipStatus",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                json_name = "updatedAt",
                timestamp_format = "date-time",
            },
        },
    },
}

M.ResourceProfileArtifact = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                json_name = "arn",
                required = true,
            },
        },
        classificationResultStatus = {
            type = "string",
            traits = {
                json_name = "classificationResultStatus",
                required = true,
            },
        },
        sensitive = {
            type = "boolean",
            traits = {
                json_name = "sensitive",
            },
        },
    },
}

M.SearchResourcesComparator = {
    EQ = "EQ",
    NE = "NE",
}

M.SearchResourcesSimpleCriterionKey = {
    ACCOUNT_ID = "ACCOUNT_ID",
    S3_BUCKET_NAME = "S3_BUCKET_NAME",
    S3_BUCKET_EFFECTIVE_PERMISSION = "S3_BUCKET_EFFECTIVE_PERMISSION",
    S3_BUCKET_SHARED_ACCESS = "S3_BUCKET_SHARED_ACCESS",
    AUTOMATED_DISCOVERY_MONITORING_STATUS = "AUTOMATED_DISCOVERY_MONITORING_STATUS",
}

M.SearchResourcesSimpleCriterion = {
    type = "structure",
    members = {
        comparator = {
            type = "string",
            traits = {
                json_name = "comparator",
            },
        },
        key = {
            type = "string",
            traits = {
                json_name = "key",
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "values",
            },
        },
    },
}

M.SearchResourcesTagCriterionPair = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                json_name = "key",
            },
        },
        value = {
            type = "string",
            traits = {
                json_name = "value",
            },
        },
    },
}

M.SearchResourcesTagCriterion = {
    type = "structure",
    members = {
        comparator = {
            type = "string",
            traits = {
                json_name = "comparator",
            },
        },
        tagValues = {
            type = "list",
            member = M.SearchResourcesTagCriterionPair,
            traits = {
                json_name = "tagValues",
            },
        },
    },
}

M.SearchResourcesCriteria = {
    type = "structure",
    members = {
        simpleCriterion = setmetatable({ traits = {
            json_name = "simpleCriterion",
        } }, { __index = M.SearchResourcesSimpleCriterion }),
        tagCriterion = setmetatable({ traits = {
            json_name = "tagCriterion",
        } }, { __index = M.SearchResourcesTagCriterion }),
    },
}

M.SensitivityInspectionTemplatesEntry = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
    },
}

M.SuppressDataIdentifier = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
}

M.UnavailabilityReasonCode = {
    OBJECT_EXCEEDS_SIZE_QUOTA = "OBJECT_EXCEEDS_SIZE_QUOTA",
    UNSUPPORTED_OBJECT_TYPE = "UNSUPPORTED_OBJECT_TYPE",
    UNSUPPORTED_FINDING_TYPE = "UNSUPPORTED_FINDING_TYPE",
    INVALID_CLASSIFICATION_RESULT = "INVALID_CLASSIFICATION_RESULT",
    OBJECT_UNAVAILABLE = "OBJECT_UNAVAILABLE",
    ACCOUNT_NOT_IN_ORGANIZATION = "ACCOUNT_NOT_IN_ORGANIZATION",
    MISSING_GET_MEMBER_PERMISSION = "MISSING_GET_MEMBER_PERMISSION",
    ROLE_TOO_PERMISSIVE = "ROLE_TOO_PERMISSIVE",
    MEMBER_ROLE_TOO_PERMISSIVE = "MEMBER_ROLE_TOO_PERMISSIVE",
    INVALID_RESULT_SIGNATURE = "INVALID_RESULT_SIGNATURE",
    RESULT_NOT_SIGNED = "RESULT_NOT_SIGNED",
}

M.ErrorCode = {
    ClientError = "ClientError",
    InternalError = "InternalError",
}

M.UnprocessedAccount = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        errorCode = {
            type = "string",
            traits = {
                json_name = "errorCode",
            },
        },
        errorMessage = {
            type = "string",
            traits = {
                json_name = "errorMessage",
            },
        },
    },
}

M.Currency = {
    USD = "USD",
}

M.Unit = {
    TERABYTES = "TERABYTES",
}

M.ServiceLimit = {
    type = "structure",
    members = {
        isServiceLimited = {
            type = "boolean",
            traits = {
                json_name = "isServiceLimited",
            },
        },
        unit = {
            type = "string",
            traits = {
                json_name = "unit",
            },
        },
        value = {
            type = "long",
            traits = {
                json_name = "value",
            },
        },
    },
}

M.UsageType = {
    DATA_INVENTORY_EVALUATION = "DATA_INVENTORY_EVALUATION",
    SENSITIVE_DATA_DISCOVERY = "SENSITIVE_DATA_DISCOVERY",
    AUTOMATED_SENSITIVE_DATA_DISCOVERY = "AUTOMATED_SENSITIVE_DATA_DISCOVERY",
    AUTOMATED_OBJECT_MONITORING = "AUTOMATED_OBJECT_MONITORING",
}

M.UsageByAccount = {
    type = "structure",
    members = {
        currency = {
            type = "string",
            traits = {
                json_name = "currency",
            },
        },
        estimatedCost = {
            type = "string",
            traits = {
                json_name = "estimatedCost",
            },
        },
        serviceLimit = setmetatable({ traits = {
            json_name = "serviceLimit",
        } }, { __index = M.ServiceLimit }),
        type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
}

M.UsageRecord = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        automatedDiscoveryFreeTrialStartDate = {
            type = "timestamp",
            traits = {
                json_name = "automatedDiscoveryFreeTrialStartDate",
                timestamp_format = "date-time",
            },
        },
        freeTrialStartDate = {
            type = "timestamp",
            traits = {
                json_name = "freeTrialStartDate",
                timestamp_format = "date-time",
            },
        },
        usage = {
            type = "list",
            member = M.UsageByAccount,
            traits = {
                json_name = "usage",
            },
        },
    },
}

M.UsageStatisticsFilterComparator = {
    GT = "GT",
    GTE = "GTE",
    LT = "LT",
    LTE = "LTE",
    EQ = "EQ",
    NE = "NE",
    CONTAINS = "CONTAINS",
}

M.UsageStatisticsFilterKey = {
    accountId = "accountId",
    serviceLimit = "serviceLimit",
    freeTrialStartDate = "freeTrialStartDate",
    total = "total",
}

M.UsageStatisticsFilter = {
    type = "structure",
    members = {
        comparator = {
            type = "string",
            traits = {
                json_name = "comparator",
            },
        },
        key = {
            type = "string",
            traits = {
                json_name = "key",
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "values",
            },
        },
    },
}

M.UsageTotal = {
    type = "structure",
    members = {
        currency = {
            type = "string",
            traits = {
                json_name = "currency",
            },
        },
        estimatedCost = {
            type = "string",
            traits = {
                json_name = "estimatedCost",
            },
        },
        type = {
            type = "string",
            traits = {
                json_name = "type",
            },
        },
    },
}

M.AcceptInvitationInput = {
    type = "structure",
    members = {
        administratorAccountId = {
            type = "string",
            traits = {
                json_name = "administratorAccountId",
            },
        },
        invitationId = {
            type = "string",
            traits = {
                json_name = "invitationId",
                required = true,
            },
        },
        masterAccount = {
            type = "string",
            traits = {
                json_name = "masterAccount",
            },
        },
    },
}

M.AcceptInvitationOutput = {
    type = "structure",
}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                json_name = "message",
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
                json_name = "message",
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                json_name = "message",
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
                json_name = "message",
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
                json_name = "message",
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
                json_name = "message",
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.AccountDetail = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                json_name = "accountId",
                required = true,
            },
        },
        email = {
            type = "string",
            traits = {
                json_name = "email",
                required = true,
            },
        },
    },
}

M.S3WordsList = {
    type = "structure",
    members = {
        bucketName = {
            type = "string",
            traits = {
                json_name = "bucketName",
                required = true,
            },
        },
        objectKey = {
            type = "string",
            traits = {
                json_name = "objectKey",
                required = true,
            },
        },
    },
}

M.AllowListCriteria = {
    type = "structure",
    members = {
        regex = {
            type = "string",
            traits = {
                json_name = "regex",
            },
        },
        s3WordsList = setmetatable({ traits = {
            json_name = "s3WordsList",
        } }, { __index = M.S3WordsList }),
    },
}

M.AllowListStatusCode = {
    OK = "OK",
    S3_OBJECT_NOT_FOUND = "S3_OBJECT_NOT_FOUND",
    S3_USER_ACCESS_DENIED = "S3_USER_ACCESS_DENIED",
    S3_OBJECT_ACCESS_DENIED = "S3_OBJECT_ACCESS_DENIED",
    S3_THROTTLED = "S3_THROTTLED",
    S3_OBJECT_OVERSIZE = "S3_OBJECT_OVERSIZE",
    S3_OBJECT_EMPTY = "S3_OBJECT_EMPTY",
    UNKNOWN_ERROR = "UNKNOWN_ERROR",
}

M.AllowListStatus = {
    type = "structure",
    members = {
        code = {
            type = "string",
            traits = {
                json_name = "code",
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
    },
}

M.AutoEnableMode = {
    ALL = "ALL",
    NEW = "NEW",
    NONE = "NONE",
}

M.AutomatedDiscoveryStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AvailabilityCode = {
    AVAILABLE = "AVAILABLE",
    UNAVAILABLE = "UNAVAILABLE",
}

M.BatchGetCustomDataIdentifiersInput = {
    type = "structure",
    members = {
        ids = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "ids",
            },
        },
    },
}

M.BatchGetCustomDataIdentifiersOutput = {
    type = "structure",
    members = {
        customDataIdentifiers = {
            type = "list",
            member = M.BatchGetCustomDataIdentifierSummary,
            traits = {
                json_name = "customDataIdentifiers",
            },
        },
        notFoundIdentifierIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "notFoundIdentifierIds",
            },
        },
    },
}

M.BatchUpdateAutomatedDiscoveryAccountsInput = {
    type = "structure",
    members = {
        accounts = {
            type = "list",
            member = M.AutomatedDiscoveryAccountUpdate,
            traits = {
                json_name = "accounts",
            },
        },
    },
}

M.BatchUpdateAutomatedDiscoveryAccountsOutput = {
    type = "structure",
    members = {
        errors = {
            type = "list",
            member = M.AutomatedDiscoveryAccountUpdateError,
            traits = {
                json_name = "errors",
            },
        },
    },
}

M.BucketCountByEffectivePermission = {
    type = "structure",
    members = {
        publiclyAccessible = {
            type = "long",
            traits = {
                json_name = "publiclyAccessible",
            },
        },
        publiclyReadable = {
            type = "long",
            traits = {
                json_name = "publiclyReadable",
            },
        },
        publiclyWritable = {
            type = "long",
            traits = {
                json_name = "publiclyWritable",
            },
        },
        unknown = {
            type = "long",
            traits = {
                json_name = "unknown",
            },
        },
    },
}

M.BucketCountByEncryptionType = {
    type = "structure",
    members = {
        kmsManaged = {
            type = "long",
            traits = {
                json_name = "kmsManaged",
            },
        },
        s3Managed = {
            type = "long",
            traits = {
                json_name = "s3Managed",
            },
        },
        unencrypted = {
            type = "long",
            traits = {
                json_name = "unencrypted",
            },
        },
        unknown = {
            type = "long",
            traits = {
                json_name = "unknown",
            },
        },
    },
}

M.BucketCountBySharedAccessType = {
    type = "structure",
    members = {
        external = {
            type = "long",
            traits = {
                json_name = "external",
            },
        },
        internal = {
            type = "long",
            traits = {
                json_name = "internal",
            },
        },
        notShared = {
            type = "long",
            traits = {
                json_name = "notShared",
            },
        },
        unknown = {
            type = "long",
            traits = {
                json_name = "unknown",
            },
        },
    },
}

M.BucketCountPolicyAllowsUnencryptedObjectUploads = {
    type = "structure",
    members = {
        allowsUnencryptedObjectUploads = {
            type = "long",
            traits = {
                json_name = "allowsUnencryptedObjectUploads",
            },
        },
        deniesUnencryptedObjectUploads = {
            type = "long",
            traits = {
                json_name = "deniesUnencryptedObjectUploads",
            },
        },
        unknown = {
            type = "long",
            traits = {
                json_name = "unknown",
            },
        },
    },
}

M.BucketCriteriaAdditionalProperties = {
    type = "structure",
    members = {
        eq = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "eq",
            },
        },
        gt = {
            type = "long",
            traits = {
                json_name = "gt",
            },
        },
        gte = {
            type = "long",
            traits = {
                json_name = "gte",
            },
        },
        lt = {
            type = "long",
            traits = {
                json_name = "lt",
            },
        },
        lte = {
            type = "long",
            traits = {
                json_name = "lte",
            },
        },
        neq = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "neq",
            },
        },
        prefix = {
            type = "string",
            traits = {
                json_name = "prefix",
            },
        },
    },
}

M.OrderBy = {
    ASC = "ASC",
    DESC = "DESC",
}

M.BucketSortCriteria = {
    type = "structure",
    members = {
        attributeName = {
            type = "string",
            traits = {
                json_name = "attributeName",
            },
        },
        orderBy = {
            type = "string",
            traits = {
                json_name = "orderBy",
            },
        },
    },
}

M.SensitivityAggregations = {
    type = "structure",
    members = {
        classifiableSizeInBytes = {
            type = "long",
            traits = {
                json_name = "classifiableSizeInBytes",
            },
        },
        publiclyAccessibleCount = {
            type = "long",
            traits = {
                json_name = "publiclyAccessibleCount",
            },
        },
        totalCount = {
            type = "long",
            traits = {
                json_name = "totalCount",
            },
        },
        totalSizeInBytes = {
            type = "long",
            traits = {
                json_name = "totalSizeInBytes",
            },
        },
    },
}

M.BucketStatisticsBySensitivity = {
    type = "structure",
    members = {
        classificationError = setmetatable({ traits = {
            json_name = "classificationError",
        } }, { __index = M.SensitivityAggregations }),
        notClassified = setmetatable({ traits = {
            json_name = "notClassified",
        } }, { __index = M.SensitivityAggregations }),
        notSensitive = setmetatable({ traits = {
            json_name = "notSensitive",
        } }, { __index = M.SensitivityAggregations }),
        sensitive = setmetatable({ traits = {
            json_name = "sensitive",
        } }, { __index = M.SensitivityAggregations }),
    },
}

M.S3Destination = {
    type = "structure",
    members = {
        bucketName = {
            type = "string",
            traits = {
                json_name = "bucketName",
                required = true,
            },
        },
        expectedBucketOwner = {
            type = "string",
            traits = {
                json_name = "expectedBucketOwner",
            },
        },
        keyPrefix = {
            type = "string",
            traits = {
                json_name = "keyPrefix",
            },
        },
        kmsKeyArn = {
            type = "string",
            traits = {
                json_name = "kmsKeyArn",
                required = true,
            },
        },
    },
}

M.ClassificationExportConfiguration = {
    type = "structure",
    members = {
        s3Destination = setmetatable({ traits = {
            json_name = "s3Destination",
        } }, { __index = M.S3Destination }),
    },
}

M.ClassificationScopeUpdateOperation = {
    ADD = "ADD",
    REPLACE = "REPLACE",
    REMOVE = "REMOVE",
}

M.CreateAllowListInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                json_name = "clientToken",
                required = true,
            },
        },
        criteria = setmetatable({ traits = {
            json_name = "criteria",
            required = true,
        } }, { __index = M.AllowListCriteria }),
        description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateAllowListOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
    },
}

M.ManagedDataIdentifierSelector = {
    ALL = "ALL",
    EXCLUDE = "EXCLUDE",
    INCLUDE = "INCLUDE",
    NONE = "NONE",
    RECOMMENDED = "RECOMMENDED",
}

M.JobScopingBlock = {
    type = "structure",
    members = {
        and = {
            type = "list",
            member = M.JobScopeTerm,
            traits = {
                json_name = "and",
            },
        },
    },
}

M.Scoping = {
    type = "structure",
    members = {
        excludes = setmetatable({ traits = {
            json_name = "excludes",
        } }, { __index = M.JobScopingBlock }),
        includes = setmetatable({ traits = {
            json_name = "includes",
        } }, { __index = M.JobScopingBlock }),
    },
}

M.S3JobDefinition = {
    type = "structure",
    members = {
        bucketCriteria = setmetatable({ traits = {
            json_name = "bucketCriteria",
        } }, { __index = M.S3BucketCriteriaForJob }),
        bucketDefinitions = {
            type = "list",
            member = M.S3BucketDefinitionForJob,
            traits = {
                json_name = "bucketDefinitions",
            },
        },
        scoping = setmetatable({ traits = {
            json_name = "scoping",
        } }, { __index = M.Scoping }),
    },
}

M.DailySchedule = {
    type = "structure",
}

M.MonthlySchedule = {
    type = "structure",
    members = {
        dayOfMonth = {
            type = "integer",
            traits = {
                json_name = "dayOfMonth",
            },
        },
    },
}

M.DayOfWeek = {
    SUNDAY = "SUNDAY",
    MONDAY = "MONDAY",
    TUESDAY = "TUESDAY",
    WEDNESDAY = "WEDNESDAY",
    THURSDAY = "THURSDAY",
    FRIDAY = "FRIDAY",
    SATURDAY = "SATURDAY",
}

M.WeeklySchedule = {
    type = "structure",
    members = {
        dayOfWeek = {
            type = "string",
            traits = {
                json_name = "dayOfWeek",
            },
        },
    },
}

M.JobScheduleFrequency = {
    type = "structure",
    members = {
        dailySchedule = setmetatable({ traits = {
            json_name = "dailySchedule",
        } }, { __index = M.DailySchedule }),
        monthlySchedule = setmetatable({ traits = {
            json_name = "monthlySchedule",
        } }, { __index = M.MonthlySchedule }),
        weeklySchedule = setmetatable({ traits = {
            json_name = "weeklySchedule",
        } }, { __index = M.WeeklySchedule }),
    },
}

M.CreateClassificationJobInput = {
    type = "structure",
    members = {
        allowListIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "allowListIds",
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                json_name = "clientToken",
                required = true,
            },
        },
        customDataIdentifierIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "customDataIdentifierIds",
            },
        },
        description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        initialRun = {
            type = "boolean",
            traits = {
                json_name = "initialRun",
            },
        },
        jobType = {
            type = "string",
            traits = {
                json_name = "jobType",
                required = true,
            },
        },
        managedDataIdentifierIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "managedDataIdentifierIds",
            },
        },
        managedDataIdentifierSelector = {
            type = "string",
            traits = {
                json_name = "managedDataIdentifierSelector",
            },
        },
        name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        s3JobDefinition = setmetatable({ traits = {
            json_name = "s3JobDefinition",
            required = true,
        } }, { __index = M.S3JobDefinition }),
        samplingPercentage = {
            type = "integer",
            traits = {
                json_name = "samplingPercentage",
            },
        },
        scheduleFrequency = setmetatable({ traits = {
            json_name = "scheduleFrequency",
        } }, { __index = M.JobScheduleFrequency }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateClassificationJobOutput = {
    type = "structure",
    members = {
        jobArn = {
            type = "string",
            traits = {
                json_name = "jobArn",
            },
        },
        jobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
    },
}

M.DataIdentifierSeverity = {
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
}

M.SeverityLevel = {
    type = "structure",
    members = {
        occurrencesThreshold = {
            type = "long",
            traits = {
                json_name = "occurrencesThreshold",
                required = true,
            },
        },
        severity = {
            type = "string",
            traits = {
                json_name = "severity",
                required = true,
            },
        },
    },
}

M.CreateCustomDataIdentifierInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                json_name = "clientToken",
            },
        },
        description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        ignoreWords = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "ignoreWords",
            },
        },
        keywords = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "keywords",
            },
        },
        maximumMatchDistance = {
            type = "integer",
            traits = {
                json_name = "maximumMatchDistance",
            },
        },
        name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        regex = {
            type = "string",
            traits = {
                json_name = "regex",
                required = true,
            },
        },
        severityLevels = {
            type = "list",
            member = M.SeverityLevel,
            traits = {
                json_name = "severityLevels",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateCustomDataIdentifierOutput = {
    type = "structure",
    members = {
        customDataIdentifierId = {
            type = "string",
            traits = {
                json_name = "customDataIdentifierId",
            },
        },
    },
}

M.CriterionAdditionalProperties = {
    type = "structure",
    members = {
        eq = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "eq",
            },
        },
        eqExactMatch = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "eqExactMatch",
            },
        },
        gt = {
            type = "long",
            traits = {
                json_name = "gt",
            },
        },
        gte = {
            type = "long",
            traits = {
                json_name = "gte",
            },
        },
        lt = {
            type = "long",
            traits = {
                json_name = "lt",
            },
        },
        lte = {
            type = "long",
            traits = {
                json_name = "lte",
            },
        },
        neq = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "neq",
            },
        },
    },
}

M.FindingCriteria = {
    type = "structure",
    members = {
        criterion = {
            type = "map",
            key = { type = "string" },
            value = M.CriterionAdditionalProperties,
            traits = {
                json_name = "criterion",
            },
        },
    },
}

M.CreateFindingsFilterInput = {
    type = "structure",
    members = {
        action = {
            type = "string",
            traits = {
                json_name = "action",
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                json_name = "clientToken",
            },
        },
        description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        findingCriteria = setmetatable({ traits = {
            json_name = "findingCriteria",
            required = true,
        } }, { __index = M.FindingCriteria }),
        name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
        position = {
            type = "integer",
            traits = {
                json_name = "position",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateFindingsFilterOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
    },
}

M.CreateInvitationsInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
        disableEmailNotification = {
            type = "boolean",
            traits = {
                json_name = "disableEmailNotification",
            },
        },
        message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.CreateInvitationsOutput = {
    type = "structure",
    members = {
        unprocessedAccounts = {
            type = "list",
            member = M.UnprocessedAccount,
            traits = {
                json_name = "unprocessedAccounts",
            },
        },
    },
}

M.CreateMemberInput = {
    type = "structure",
    members = {
        account = setmetatable({ traits = {
            json_name = "account",
            required = true,
        } }, { __index = M.AccountDetail }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateMemberOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
    },
}

M.CreateSampleFindingsInput = {
    type = "structure",
    members = {
        findingTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "findingTypes",
            },
        },
    },
}

M.CreateSampleFindingsOutput = {
    type = "structure",
}

M.DeclineInvitationsInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
    },
}

M.DeclineInvitationsOutput = {
    type = "structure",
    members = {
        unprocessedAccounts = {
            type = "list",
            member = M.UnprocessedAccount,
            traits = {
                json_name = "unprocessedAccounts",
            },
        },
    },
}

M.DeleteAllowListInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ignoreJobChecks = {
            type = "string",
            traits = {
                http_query = "ignoreJobChecks",
            },
        },
    },
}

M.DeleteAllowListOutput = {
    type = "structure",
}

M.DeleteCustomDataIdentifierInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCustomDataIdentifierOutput = {
    type = "structure",
}

M.DeleteFindingsFilterInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFindingsFilterOutput = {
    type = "structure",
}

M.DeleteInvitationsInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "accountIds",
                required = true,
            },
        },
    },
}

M.DeleteInvitationsOutput = {
    type = "structure",
    members = {
        unprocessedAccounts = {
            type = "list",
            member = M.UnprocessedAccount,
            traits = {
                json_name = "unprocessedAccounts",
            },
        },
    },
}

M.DeleteMemberInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMemberOutput = {
    type = "structure",
}

M.DescribeBucketsInput = {
    type = "structure",
    members = {
        criteria = {
            type = "map",
            key = { type = "string" },
            value = M.BucketCriteriaAdditionalProperties,
            traits = {
                json_name = "criteria",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                json_name = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        sortCriteria = setmetatable({ traits = {
            json_name = "sortCriteria",
        } }, { __index = M.BucketSortCriteria }),
    },
}

M.DescribeBucketsOutput = {
    type = "structure",
    members = {
        buckets = {
            type = "list",
            member = M.BucketMetadata,
            traits = {
                json_name = "buckets",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.DescribeClassificationJobInput = {
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

M.Statistics = {
    type = "structure",
    members = {
        approximateNumberOfObjectsToProcess = {
            type = "double",
            traits = {
                json_name = "approximateNumberOfObjectsToProcess",
            },
        },
        numberOfRuns = {
            type = "double",
            traits = {
                json_name = "numberOfRuns",
            },
        },
    },
}

M.DescribeClassificationJobOutput = {
    type = "structure",
    members = {
        allowListIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "allowListIds",
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                json_name = "clientToken",
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                timestamp_format = "date-time",
            },
        },
        customDataIdentifierIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "customDataIdentifierIds",
            },
        },
        description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        initialRun = {
            type = "boolean",
            traits = {
                json_name = "initialRun",
            },
        },
        jobArn = {
            type = "string",
            traits = {
                json_name = "jobArn",
            },
        },
        jobId = {
            type = "string",
            traits = {
                json_name = "jobId",
            },
        },
        jobStatus = {
            type = "string",
            traits = {
                json_name = "jobStatus",
            },
        },
        jobType = {
            type = "string",
            traits = {
                json_name = "jobType",
            },
        },
        lastRunErrorStatus = setmetatable({ traits = {
            json_name = "lastRunErrorStatus",
        } }, { __index = M.LastRunErrorStatus }),
        lastRunTime = {
            type = "timestamp",
            traits = {
                json_name = "lastRunTime",
                timestamp_format = "date-time",
            },
        },
        managedDataIdentifierIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "managedDataIdentifierIds",
            },
        },
        managedDataIdentifierSelector = {
            type = "string",
            traits = {
                json_name = "managedDataIdentifierSelector",
            },
        },
        name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        s3JobDefinition = setmetatable({ traits = {
            json_name = "s3JobDefinition",
        } }, { __index = M.S3JobDefinition }),
        samplingPercentage = {
            type = "integer",
            traits = {
                json_name = "samplingPercentage",
            },
        },
        scheduleFrequency = setmetatable({ traits = {
            json_name = "scheduleFrequency",
        } }, { __index = M.JobScheduleFrequency }),
        statistics = setmetatable({ traits = {
            json_name = "statistics",
        } }, { __index = M.Statistics }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        userPausedDetails = setmetatable({ traits = {
            json_name = "userPausedDetails",
        } }, { __index = M.UserPausedDetails }),
    },
}

M.DescribeOrganizationConfigurationInput = {
    type = "structure",
}

M.DescribeOrganizationConfigurationOutput = {
    type = "structure",
    members = {
        autoEnable = {
            type = "boolean",
            traits = {
                json_name = "autoEnable",
            },
        },
        maxAccountLimitReached = {
            type = "boolean",
            traits = {
                json_name = "maxAccountLimitReached",
            },
        },
    },
}

M.DisableMacieInput = {
    type = "structure",
}

M.DisableMacieOutput = {
    type = "structure",
}

M.DisableOrganizationAdminAccountInput = {
    type = "structure",
    members = {
        adminAccountId = {
            type = "string",
            traits = {
                http_query = "adminAccountId",
                required = true,
            },
        },
    },
}

M.DisableOrganizationAdminAccountOutput = {
    type = "structure",
}

M.DisassociateFromAdministratorAccountInput = {
    type = "structure",
}

M.DisassociateFromAdministratorAccountOutput = {
    type = "structure",
}

M.DisassociateFromMasterAccountInput = {
    type = "structure",
}

M.DisassociateFromMasterAccountOutput = {
    type = "structure",
}

M.DisassociateMemberInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateMemberOutput = {
    type = "structure",
}

M.FindingPublishingFrequency = {
    FIFTEEN_MINUTES = "FIFTEEN_MINUTES",
    ONE_HOUR = "ONE_HOUR",
    SIX_HOURS = "SIX_HOURS",
}

M.MacieStatus = {
    PAUSED = "PAUSED",
    ENABLED = "ENABLED",
}

M.EnableMacieInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                json_name = "clientToken",
            },
        },
        findingPublishingFrequency = {
            type = "string",
            traits = {
                json_name = "findingPublishingFrequency",
            },
        },
        status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.EnableMacieOutput = {
    type = "structure",
}

M.EnableOrganizationAdminAccountInput = {
    type = "structure",
    members = {
        adminAccountId = {
            type = "string",
            traits = {
                json_name = "adminAccountId",
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                json_name = "clientToken",
            },
        },
    },
}

M.EnableOrganizationAdminAccountOutput = {
    type = "structure",
}

M.FindingStatisticsSortAttributeName = {
    groupKey = "groupKey",
    count = "count",
}

M.FindingStatisticsSortCriteria = {
    type = "structure",
    members = {
        attributeName = {
            type = "string",
            traits = {
                json_name = "attributeName",
            },
        },
        orderBy = {
            type = "string",
            traits = {
                json_name = "orderBy",
            },
        },
    },
}

M.GetAdministratorAccountInput = {
    type = "structure",
}

M.GetAdministratorAccountOutput = {
    type = "structure",
    members = {
        administrator = setmetatable({ traits = {
            json_name = "administrator",
        } }, { __index = M.Invitation }),
    },
}

M.GetAllowListInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAllowListOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                timestamp_format = "date-time",
            },
        },
        criteria = setmetatable({ traits = {
            json_name = "criteria",
        } }, { __index = M.AllowListCriteria }),
        description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        status = setmetatable({ traits = {
            json_name = "status",
        } }, { __index = M.AllowListStatus }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                json_name = "updatedAt",
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetAutomatedDiscoveryConfigurationInput = {
    type = "structure",
}

M.GetAutomatedDiscoveryConfigurationOutput = {
    type = "structure",
    members = {
        autoEnableOrganizationMembers = {
            type = "string",
            traits = {
                json_name = "autoEnableOrganizationMembers",
            },
        },
        classificationScopeId = {
            type = "string",
            traits = {
                json_name = "classificationScopeId",
            },
        },
        disabledAt = {
            type = "timestamp",
            traits = {
                json_name = "disabledAt",
                timestamp_format = "date-time",
            },
        },
        firstEnabledAt = {
            type = "timestamp",
            traits = {
                json_name = "firstEnabledAt",
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                json_name = "lastUpdatedAt",
                timestamp_format = "date-time",
            },
        },
        sensitivityInspectionTemplateId = {
            type = "string",
            traits = {
                json_name = "sensitivityInspectionTemplateId",
            },
        },
        status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.GetBucketStatisticsInput = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
    },
}

M.GetBucketStatisticsOutput = {
    type = "structure",
    members = {
        bucketCount = {
            type = "long",
            traits = {
                json_name = "bucketCount",
            },
        },
        bucketCountByEffectivePermission = setmetatable({ traits = {
            json_name = "bucketCountByEffectivePermission",
        } }, { __index = M.BucketCountByEffectivePermission }),
        bucketCountByEncryptionType = setmetatable({ traits = {
            json_name = "bucketCountByEncryptionType",
        } }, { __index = M.BucketCountByEncryptionType }),
        bucketCountByObjectEncryptionRequirement = setmetatable({ traits = {
            json_name = "bucketCountByObjectEncryptionRequirement",
        } }, { __index = M.BucketCountPolicyAllowsUnencryptedObjectUploads }),
        bucketCountBySharedAccessType = setmetatable({ traits = {
            json_name = "bucketCountBySharedAccessType",
        } }, { __index = M.BucketCountBySharedAccessType }),
        bucketStatisticsBySensitivity = setmetatable({ traits = {
            json_name = "bucketStatisticsBySensitivity",
        } }, { __index = M.BucketStatisticsBySensitivity }),
        classifiableObjectCount = {
            type = "long",
            traits = {
                json_name = "classifiableObjectCount",
            },
        },
        classifiableSizeInBytes = {
            type = "long",
            traits = {
                json_name = "classifiableSizeInBytes",
            },
        },
        lastUpdated = {
            type = "timestamp",
            traits = {
                json_name = "lastUpdated",
                timestamp_format = "date-time",
            },
        },
        objectCount = {
            type = "long",
            traits = {
                json_name = "objectCount",
            },
        },
        sizeInBytes = {
            type = "long",
            traits = {
                json_name = "sizeInBytes",
            },
        },
        sizeInBytesCompressed = {
            type = "long",
            traits = {
                json_name = "sizeInBytesCompressed",
            },
        },
        unclassifiableObjectCount = setmetatable({ traits = {
            json_name = "unclassifiableObjectCount",
        } }, { __index = M.ObjectLevelStatistics }),
        unclassifiableObjectSizeInBytes = setmetatable({ traits = {
            json_name = "unclassifiableObjectSizeInBytes",
        } }, { __index = M.ObjectLevelStatistics }),
    },
}

M.GetClassificationExportConfigurationInput = {
    type = "structure",
}

M.GetClassificationExportConfigurationOutput = {
    type = "structure",
    members = {
        configuration = setmetatable({ traits = {
            json_name = "configuration",
        } }, { __index = M.ClassificationExportConfiguration }),
    },
}

M.GetClassificationScopeInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.S3ClassificationScopeExclusion = {
    type = "structure",
    members = {
        bucketNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "bucketNames",
                required = true,
            },
        },
    },
}

M.S3ClassificationScope = {
    type = "structure",
    members = {
        excludes = setmetatable({ traits = {
            json_name = "excludes",
            required = true,
        } }, { __index = M.S3ClassificationScopeExclusion }),
    },
}

M.GetClassificationScopeOutput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        s3 = setmetatable({ traits = {
            json_name = "s3",
        } }, { __index = M.S3ClassificationScope }),
    },
}

M.GetCustomDataIdentifierInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCustomDataIdentifierOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                timestamp_format = "date-time",
            },
        },
        deleted = {
            type = "boolean",
            traits = {
                json_name = "deleted",
            },
        },
        description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        ignoreWords = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "ignoreWords",
            },
        },
        keywords = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "keywords",
            },
        },
        maximumMatchDistance = {
            type = "integer",
            traits = {
                json_name = "maximumMatchDistance",
            },
        },
        name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        regex = {
            type = "string",
            traits = {
                json_name = "regex",
            },
        },
        severityLevels = {
            type = "list",
            member = M.SeverityLevel,
            traits = {
                json_name = "severityLevels",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.SortCriteria = {
    type = "structure",
    members = {
        attributeName = {
            type = "string",
            traits = {
                json_name = "attributeName",
            },
        },
        orderBy = {
            type = "string",
            traits = {
                json_name = "orderBy",
            },
        },
    },
}

M.GetFindingsInput = {
    type = "structure",
    members = {
        findingIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "findingIds",
                required = true,
            },
        },
        sortCriteria = setmetatable({ traits = {
            json_name = "sortCriteria",
        } }, { __index = M.SortCriteria }),
    },
}

M.GetFindingsOutput = {
    type = "structure",
    members = {
        findings = {
            type = "list",
            member = M.Finding,
            traits = {
                json_name = "findings",
            },
        },
    },
}

M.GetFindingsFilterInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetFindingsFilterOutput = {
    type = "structure",
    members = {
        action = {
            type = "string",
            traits = {
                json_name = "action",
            },
        },
        arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        findingCriteria = setmetatable({ traits = {
            json_name = "findingCriteria",
        } }, { __index = M.FindingCriteria }),
        id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
        name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        position = {
            type = "integer",
            traits = {
                json_name = "position",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.GetFindingsPublicationConfigurationInput = {
    type = "structure",
}

M.SecurityHubConfiguration = {
    type = "structure",
    members = {
        publishClassificationFindings = {
            type = "boolean",
            traits = {
                json_name = "publishClassificationFindings",
                required = true,
            },
        },
        publishPolicyFindings = {
            type = "boolean",
            traits = {
                json_name = "publishPolicyFindings",
                required = true,
            },
        },
    },
}

M.GetFindingsPublicationConfigurationOutput = {
    type = "structure",
    members = {
        securityHubConfiguration = setmetatable({ traits = {
            json_name = "securityHubConfiguration",
        } }, { __index = M.SecurityHubConfiguration }),
    },
}

M.GroupBy = {
    resourcesAffected_s3Bucket_name = "resourcesAffected.s3Bucket.name",
    type = "type",
    classificationDetails_jobId = "classificationDetails.jobId",
    severity_description = "severity.description",
}

M.GetFindingStatisticsInput = {
    type = "structure",
    members = {
        findingCriteria = setmetatable({ traits = {
            json_name = "findingCriteria",
        } }, { __index = M.FindingCriteria }),
        groupBy = {
            type = "string",
            traits = {
                json_name = "groupBy",
                required = true,
            },
        },
        size = {
            type = "integer",
            traits = {
                json_name = "size",
            },
        },
        sortCriteria = setmetatable({ traits = {
            json_name = "sortCriteria",
        } }, { __index = M.FindingStatisticsSortCriteria }),
    },
}

M.GetFindingStatisticsOutput = {
    type = "structure",
    members = {
        countsByGroup = {
            type = "list",
            member = M.GroupCount,
            traits = {
                json_name = "countsByGroup",
            },
        },
    },
}

M.GetInvitationsCountInput = {
    type = "structure",
}

M.GetInvitationsCountOutput = {
    type = "structure",
    members = {
        invitationsCount = {
            type = "long",
            traits = {
                json_name = "invitationsCount",
            },
        },
    },
}

M.GetMacieSessionInput = {
    type = "structure",
}

M.GetMacieSessionOutput = {
    type = "structure",
    members = {
        createdAt = {
            type = "timestamp",
            traits = {
                json_name = "createdAt",
                timestamp_format = "date-time",
            },
        },
        findingPublishingFrequency = {
            type = "string",
            traits = {
                json_name = "findingPublishingFrequency",
            },
        },
        serviceRole = {
            type = "string",
            traits = {
                json_name = "serviceRole",
            },
        },
        status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                json_name = "updatedAt",
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetMasterAccountInput = {
    type = "structure",
}

M.GetMasterAccountOutput = {
    type = "structure",
    members = {
        master = setmetatable({ traits = {
            json_name = "master",
        } }, { __index = M.Invitation }),
    },
}

M.GetMemberInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetMemberOutput = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                json_name = "accountId",
            },
        },
        administratorAccountId = {
            type = "string",
            traits = {
                json_name = "administratorAccountId",
            },
        },
        arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        email = {
            type = "string",
            traits = {
                json_name = "email",
            },
        },
        invitedAt = {
            type = "timestamp",
            traits = {
                json_name = "invitedAt",
                timestamp_format = "date-time",
            },
        },
        masterAccountId = {
            type = "string",
            traits = {
                json_name = "masterAccountId",
            },
        },
        relationshipStatus = {
            type = "string",
            traits = {
                json_name = "relationshipStatus",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                json_name = "updatedAt",
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetResourceProfileInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
        },
    },
}

M.ResourceStatistics = {
    type = "structure",
    members = {
        totalBytesClassified = {
            type = "long",
            traits = {
                json_name = "totalBytesClassified",
            },
        },
        totalDetections = {
            type = "long",
            traits = {
                json_name = "totalDetections",
            },
        },
        totalDetectionsSuppressed = {
            type = "long",
            traits = {
                json_name = "totalDetectionsSuppressed",
            },
        },
        totalItemsClassified = {
            type = "long",
            traits = {
                json_name = "totalItemsClassified",
            },
        },
        totalItemsSensitive = {
            type = "long",
            traits = {
                json_name = "totalItemsSensitive",
            },
        },
        totalItemsSkipped = {
            type = "long",
            traits = {
                json_name = "totalItemsSkipped",
            },
        },
        totalItemsSkippedInvalidEncryption = {
            type = "long",
            traits = {
                json_name = "totalItemsSkippedInvalidEncryption",
            },
        },
        totalItemsSkippedInvalidKms = {
            type = "long",
            traits = {
                json_name = "totalItemsSkippedInvalidKms",
            },
        },
        totalItemsSkippedPermissionDenied = {
            type = "long",
            traits = {
                json_name = "totalItemsSkippedPermissionDenied",
            },
        },
    },
}

M.GetResourceProfileOutput = {
    type = "structure",
    members = {
        profileUpdatedAt = {
            type = "timestamp",
            traits = {
                json_name = "profileUpdatedAt",
                timestamp_format = "date-time",
            },
        },
        sensitivityScore = {
            type = "integer",
            traits = {
                json_name = "sensitivityScore",
            },
        },
        sensitivityScoreOverridden = {
            type = "boolean",
            traits = {
                json_name = "sensitivityScoreOverridden",
            },
        },
        statistics = setmetatable({ traits = {
            json_name = "statistics",
        } }, { __index = M.ResourceStatistics }),
    },
}

M.GetRevealConfigurationInput = {
    type = "structure",
}

M.RevealStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.RevealConfiguration = {
    type = "structure",
    members = {
        kmsKeyId = {
            type = "string",
            traits = {
                json_name = "kmsKeyId",
            },
        },
        status = {
            type = "string",
            traits = {
                json_name = "status",
                required = true,
            },
        },
    },
}

M.RetrievalMode = {
    CALLER_CREDENTIALS = "CALLER_CREDENTIALS",
    ASSUME_ROLE = "ASSUME_ROLE",
}

M.RetrievalConfiguration = {
    type = "structure",
    members = {
        externalId = {
            type = "string",
            traits = {
                json_name = "externalId",
            },
        },
        retrievalMode = {
            type = "string",
            traits = {
                json_name = "retrievalMode",
                required = true,
            },
        },
        roleName = {
            type = "string",
            traits = {
                json_name = "roleName",
            },
        },
    },
}

M.GetRevealConfigurationOutput = {
    type = "structure",
    members = {
        configuration = setmetatable({ traits = {
            json_name = "configuration",
        } }, { __index = M.RevealConfiguration }),
        retrievalConfiguration = setmetatable({ traits = {
            json_name = "retrievalConfiguration",
        } }, { __index = M.RetrievalConfiguration }),
    },
}

M.GetSensitiveDataOccurrencesInput = {
    type = "structure",
    members = {
        findingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RevealRequestStatus = {
    SUCCESS = "SUCCESS",
    PROCESSING = "PROCESSING",
    ERROR = "ERROR",
}

M.GetSensitiveDataOccurrencesOutput = {
    type = "structure",
    members = {
        error = {
            type = "string",
            traits = {
                json_name = "error",
            },
        },
        sensitiveDataOccurrences = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
            traits = {
                json_name = "sensitiveDataOccurrences",
            },
        },
        status = {
            type = "string",
            traits = {
                json_name = "status",
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
                json_name = "message",
                required = true,
            },
        },
    },
}

M.GetSensitiveDataOccurrencesAvailabilityInput = {
    type = "structure",
    members = {
        findingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSensitiveDataOccurrencesAvailabilityOutput = {
    type = "structure",
    members = {
        code = {
            type = "string",
            traits = {
                json_name = "code",
            },
        },
        reasons = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "reasons",
            },
        },
    },
}

M.GetSensitivityInspectionTemplateInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SensitivityInspectionTemplateExcludes = {
    type = "structure",
    members = {
        managedDataIdentifierIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "managedDataIdentifierIds",
            },
        },
    },
}

M.SensitivityInspectionTemplateIncludes = {
    type = "structure",
    members = {
        allowListIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "allowListIds",
            },
        },
        customDataIdentifierIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "customDataIdentifierIds",
            },
        },
        managedDataIdentifierIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "managedDataIdentifierIds",
            },
        },
    },
}

M.GetSensitivityInspectionTemplateOutput = {
    type = "structure",
    members = {
        description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        excludes = setmetatable({ traits = {
            json_name = "excludes",
        } }, { __index = M.SensitivityInspectionTemplateExcludes }),
        includes = setmetatable({ traits = {
            json_name = "includes",
        } }, { __index = M.SensitivityInspectionTemplateIncludes }),
        name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        sensitivityInspectionTemplateId = {
            type = "string",
            traits = {
                json_name = "sensitivityInspectionTemplateId",
            },
        },
    },
}

M.UsageStatisticsSortKey = {
    accountId = "accountId",
    total = "total",
    serviceLimitValue = "serviceLimitValue",
    freeTrialStartDate = "freeTrialStartDate",
}

M.UsageStatisticsSortBy = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                json_name = "key",
            },
        },
        orderBy = {
            type = "string",
            traits = {
                json_name = "orderBy",
            },
        },
    },
}

M.TimeRange = {
    MONTH_TO_DATE = "MONTH_TO_DATE",
    PAST_30_DAYS = "PAST_30_DAYS",
}

M.GetUsageStatisticsInput = {
    type = "structure",
    members = {
        filterBy = {
            type = "list",
            member = M.UsageStatisticsFilter,
            traits = {
                json_name = "filterBy",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                json_name = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        sortBy = setmetatable({ traits = {
            json_name = "sortBy",
        } }, { __index = M.UsageStatisticsSortBy }),
        timeRange = {
            type = "string",
            traits = {
                json_name = "timeRange",
            },
        },
    },
}

M.GetUsageStatisticsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        records = {
            type = "list",
            member = M.UsageRecord,
            traits = {
                json_name = "records",
            },
        },
        timeRange = {
            type = "string",
            traits = {
                json_name = "timeRange",
            },
        },
    },
}

M.GetUsageTotalsInput = {
    type = "structure",
    members = {
        timeRange = {
            type = "string",
            traits = {
                http_query = "timeRange",
            },
        },
    },
}

M.GetUsageTotalsOutput = {
    type = "structure",
    members = {
        timeRange = {
            type = "string",
            traits = {
                json_name = "timeRange",
            },
        },
        usageTotals = {
            type = "list",
            member = M.UsageTotal,
            traits = {
                json_name = "usageTotals",
            },
        },
    },
}

M.ListAllowListsInput = {
    type = "structure",
    members = {
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

M.ListAllowListsOutput = {
    type = "structure",
    members = {
        allowLists = {
            type = "list",
            member = M.AllowListSummary,
            traits = {
                json_name = "allowLists",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListAutomatedDiscoveryAccountsInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "accountIds",
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

M.ListAutomatedDiscoveryAccountsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.AutomatedDiscoveryAccount,
            traits = {
                json_name = "items",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListJobsFilterCriteria = {
    type = "structure",
    members = {
        excludes = {
            type = "list",
            member = M.ListJobsFilterTerm,
            traits = {
                json_name = "excludes",
            },
        },
        includes = {
            type = "list",
            member = M.ListJobsFilterTerm,
            traits = {
                json_name = "includes",
            },
        },
    },
}

M.ListJobsSortAttributeName = {
    createdAt = "createdAt",
    jobStatus = "jobStatus",
    name = "name",
    jobType = "jobType",
}

M.ListJobsSortCriteria = {
    type = "structure",
    members = {
        attributeName = {
            type = "string",
            traits = {
                json_name = "attributeName",
            },
        },
        orderBy = {
            type = "string",
            traits = {
                json_name = "orderBy",
            },
        },
    },
}

M.ListClassificationJobsInput = {
    type = "structure",
    members = {
        filterCriteria = setmetatable({ traits = {
            json_name = "filterCriteria",
        } }, { __index = M.ListJobsFilterCriteria }),
        maxResults = {
            type = "integer",
            traits = {
                json_name = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        sortCriteria = setmetatable({ traits = {
            json_name = "sortCriteria",
        } }, { __index = M.ListJobsSortCriteria }),
    },
}

M.ListClassificationJobsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.JobSummary,
            traits = {
                json_name = "items",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListClassificationScopesInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_query = "name",
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

M.ListClassificationScopesOutput = {
    type = "structure",
    members = {
        classificationScopes = {
            type = "list",
            member = M.ClassificationScopeSummary,
            traits = {
                json_name = "classificationScopes",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListCustomDataIdentifiersInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                json_name = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListCustomDataIdentifiersOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.CustomDataIdentifierSummary,
            traits = {
                json_name = "items",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListFindingsInput = {
    type = "structure",
    members = {
        findingCriteria = setmetatable({ traits = {
            json_name = "findingCriteria",
        } }, { __index = M.FindingCriteria }),
        maxResults = {
            type = "integer",
            traits = {
                json_name = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        sortCriteria = setmetatable({ traits = {
            json_name = "sortCriteria",
        } }, { __index = M.SortCriteria }),
    },
}

M.ListFindingsOutput = {
    type = "structure",
    members = {
        findingIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "findingIds",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListFindingsFiltersInput = {
    type = "structure",
    members = {
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

M.ListFindingsFiltersOutput = {
    type = "structure",
    members = {
        findingsFilterListItems = {
            type = "list",
            member = M.FindingsFilterListItem,
            traits = {
                json_name = "findingsFilterListItems",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListInvitationsInput = {
    type = "structure",
    members = {
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

M.ListInvitationsOutput = {
    type = "structure",
    members = {
        invitations = {
            type = "list",
            member = M.Invitation,
            traits = {
                json_name = "invitations",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListManagedDataIdentifiersInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListManagedDataIdentifiersOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member = M.ManagedDataIdentifierSummary,
            traits = {
                json_name = "items",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListMembersInput = {
    type = "structure",
    members = {
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
        onlyAssociated = {
            type = "string",
            traits = {
                http_query = "onlyAssociated",
            },
        },
    },
}

M.ListMembersOutput = {
    type = "structure",
    members = {
        members = {
            type = "list",
            member = M.Member,
            traits = {
                json_name = "members",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListOrganizationAdminAccountsInput = {
    type = "structure",
    members = {
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

M.ListOrganizationAdminAccountsOutput = {
    type = "structure",
    members = {
        adminAccounts = {
            type = "list",
            member = M.AdminAccount,
            traits = {
                json_name = "adminAccounts",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListResourceProfileArtifactsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
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

M.ListResourceProfileArtifactsOutput = {
    type = "structure",
    members = {
        artifacts = {
            type = "list",
            member = M.ResourceProfileArtifact,
            traits = {
                json_name = "artifacts",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListResourceProfileDetectionsInput = {
    type = "structure",
    members = {
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
        resourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
        },
    },
}

M.ListResourceProfileDetectionsOutput = {
    type = "structure",
    members = {
        detections = {
            type = "list",
            member = M.Detection,
            traits = {
                json_name = "detections",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
}

M.ListSensitivityInspectionTemplatesInput = {
    type = "structure",
    members = {
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

M.ListSensitivityInspectionTemplatesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        sensitivityInspectionTemplates = {
            type = "list",
            member = M.SensitivityInspectionTemplatesEntry,
            traits = {
                json_name = "sensitivityInspectionTemplates",
            },
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
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.PutClassificationExportConfigurationInput = {
    type = "structure",
    members = {
        configuration = setmetatable({ traits = {
            json_name = "configuration",
            required = true,
        } }, { __index = M.ClassificationExportConfiguration }),
    },
}

M.PutClassificationExportConfigurationOutput = {
    type = "structure",
    members = {
        configuration = setmetatable({ traits = {
            json_name = "configuration",
        } }, { __index = M.ClassificationExportConfiguration }),
    },
}

M.PutFindingsPublicationConfigurationInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                json_name = "clientToken",
            },
        },
        securityHubConfiguration = setmetatable({ traits = {
            json_name = "securityHubConfiguration",
        } }, { __index = M.SecurityHubConfiguration }),
    },
}

M.PutFindingsPublicationConfigurationOutput = {
    type = "structure",
}

M.SearchResourcesCriteriaBlock = {
    type = "structure",
    members = {
        and = {
            type = "list",
            member = M.SearchResourcesCriteria,
            traits = {
                json_name = "and",
            },
        },
    },
}

M.SearchResourcesBucketCriteria = {
    type = "structure",
    members = {
        excludes = setmetatable({ traits = {
            json_name = "excludes",
        } }, { __index = M.SearchResourcesCriteriaBlock }),
        includes = setmetatable({ traits = {
            json_name = "includes",
        } }, { __index = M.SearchResourcesCriteriaBlock }),
    },
}

M.SearchResourcesSortAttributeName = {
    ACCOUNT_ID = "ACCOUNT_ID",
    RESOURCE_NAME = "RESOURCE_NAME",
    S3_CLASSIFIABLE_OBJECT_COUNT = "S3_CLASSIFIABLE_OBJECT_COUNT",
    S3_CLASSIFIABLE_SIZE_IN_BYTES = "S3_CLASSIFIABLE_SIZE_IN_BYTES",
}

M.SearchResourcesSortCriteria = {
    type = "structure",
    members = {
        attributeName = {
            type = "string",
            traits = {
                json_name = "attributeName",
            },
        },
        orderBy = {
            type = "string",
            traits = {
                json_name = "orderBy",
            },
        },
    },
}

M.SearchResourcesInput = {
    type = "structure",
    members = {
        bucketCriteria = setmetatable({ traits = {
            json_name = "bucketCriteria",
        } }, { __index = M.SearchResourcesBucketCriteria }),
        maxResults = {
            type = "integer",
            traits = {
                json_name = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
        sortCriteria = setmetatable({ traits = {
            json_name = "sortCriteria",
        } }, { __index = M.SearchResourcesSortCriteria }),
    },
}

M.SearchResourcesOutput = {
    type = "structure",
    members = {
        matchingResources = {
            type = "list",
            member = M.MatchingResource,
            traits = {
                json_name = "matchingResources",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                json_name = "nextToken",
            },
        },
    },
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
                json_name = "tags",
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.TestCustomDataIdentifierInput = {
    type = "structure",
    members = {
        ignoreWords = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "ignoreWords",
            },
        },
        keywords = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "keywords",
            },
        },
        maximumMatchDistance = {
            type = "integer",
            traits = {
                json_name = "maximumMatchDistance",
            },
        },
        regex = {
            type = "string",
            traits = {
                json_name = "regex",
                required = true,
            },
        },
        sampleText = {
            type = "string",
            traits = {
                json_name = "sampleText",
                required = true,
            },
        },
    },
}

M.TestCustomDataIdentifierOutput = {
    type = "structure",
    members = {
        matchCount = {
            type = "integer",
            traits = {
                json_name = "matchCount",
            },
        },
    },
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

M.UpdateAllowListInput = {
    type = "structure",
    members = {
        criteria = setmetatable({ traits = {
            json_name = "criteria",
            required = true,
        } }, { __index = M.AllowListCriteria }),
        description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                json_name = "name",
                required = true,
            },
        },
    },
}

M.UpdateAllowListOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
    },
}

M.UpdateAutomatedDiscoveryConfigurationInput = {
    type = "structure",
    members = {
        autoEnableOrganizationMembers = {
            type = "string",
            traits = {
                json_name = "autoEnableOrganizationMembers",
            },
        },
        status = {
            type = "string",
            traits = {
                json_name = "status",
                required = true,
            },
        },
    },
}

M.UpdateAutomatedDiscoveryConfigurationOutput = {
    type = "structure",
}

M.UpdateClassificationJobInput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobStatus = {
            type = "string",
            traits = {
                json_name = "jobStatus",
                required = true,
            },
        },
    },
}

M.UpdateClassificationJobOutput = {
    type = "structure",
}

M.S3ClassificationScopeExclusionUpdate = {
    type = "structure",
    members = {
        bucketNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                json_name = "bucketNames",
                required = true,
            },
        },
        operation = {
            type = "string",
            traits = {
                json_name = "operation",
                required = true,
            },
        },
    },
}

M.S3ClassificationScopeUpdate = {
    type = "structure",
    members = {
        excludes = setmetatable({ traits = {
            json_name = "excludes",
            required = true,
        } }, { __index = M.S3ClassificationScopeExclusionUpdate }),
    },
}

M.UpdateClassificationScopeInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        s3 = setmetatable({ traits = {
            json_name = "s3",
        } }, { __index = M.S3ClassificationScopeUpdate }),
    },
}

M.UpdateClassificationScopeOutput = {
    type = "structure",
}

M.UpdateFindingsFilterInput = {
    type = "structure",
    members = {
        action = {
            type = "string",
            traits = {
                json_name = "action",
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                json_name = "clientToken",
            },
        },
        description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        findingCriteria = setmetatable({ traits = {
            json_name = "findingCriteria",
        } }, { __index = M.FindingCriteria }),
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                json_name = "name",
            },
        },
        position = {
            type = "integer",
            traits = {
                json_name = "position",
            },
        },
    },
}

M.UpdateFindingsFilterOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                json_name = "arn",
            },
        },
        id = {
            type = "string",
            traits = {
                json_name = "id",
            },
        },
    },
}

M.UpdateMacieSessionInput = {
    type = "structure",
    members = {
        findingPublishingFrequency = {
            type = "string",
            traits = {
                json_name = "findingPublishingFrequency",
            },
        },
        status = {
            type = "string",
            traits = {
                json_name = "status",
            },
        },
    },
}

M.UpdateMacieSessionOutput = {
    type = "structure",
}

M.UpdateMemberSessionInput = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                json_name = "status",
                required = true,
            },
        },
    },
}

M.UpdateMemberSessionOutput = {
    type = "structure",
}

M.UpdateOrganizationConfigurationInput = {
    type = "structure",
    members = {
        autoEnable = {
            type = "boolean",
            traits = {
                json_name = "autoEnable",
                required = true,
            },
        },
    },
}

M.UpdateOrganizationConfigurationOutput = {
    type = "structure",
}

M.UpdateResourceProfileInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
        },
        sensitivityScoreOverride = {
            type = "integer",
            traits = {
                json_name = "sensitivityScoreOverride",
            },
        },
    },
}

M.UpdateResourceProfileOutput = {
    type = "structure",
}

M.UpdateResourceProfileDetectionsInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_query = "resourceArn",
                required = true,
            },
        },
        suppressDataIdentifiers = {
            type = "list",
            member = M.SuppressDataIdentifier,
            traits = {
                json_name = "suppressDataIdentifiers",
            },
        },
    },
}

M.UpdateResourceProfileDetectionsOutput = {
    type = "structure",
}

M.UpdateRetrievalConfiguration = {
    type = "structure",
    members = {
        retrievalMode = {
            type = "string",
            traits = {
                json_name = "retrievalMode",
                required = true,
            },
        },
        roleName = {
            type = "string",
            traits = {
                json_name = "roleName",
            },
        },
    },
}

M.UpdateRevealConfigurationInput = {
    type = "structure",
    members = {
        configuration = setmetatable({ traits = {
            json_name = "configuration",
            required = true,
        } }, { __index = M.RevealConfiguration }),
        retrievalConfiguration = setmetatable({ traits = {
            json_name = "retrievalConfiguration",
        } }, { __index = M.UpdateRetrievalConfiguration }),
    },
}

M.UpdateRevealConfigurationOutput = {
    type = "structure",
    members = {
        configuration = setmetatable({ traits = {
            json_name = "configuration",
        } }, { __index = M.RevealConfiguration }),
        retrievalConfiguration = setmetatable({ traits = {
            json_name = "retrievalConfiguration",
        } }, { __index = M.RetrievalConfiguration }),
    },
}

M.UpdateSensitivityInspectionTemplateInput = {
    type = "structure",
    members = {
        description = {
            type = "string",
            traits = {
                json_name = "description",
            },
        },
        excludes = setmetatable({ traits = {
            json_name = "excludes",
        } }, { __index = M.SensitivityInspectionTemplateExcludes }),
        id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        includes = setmetatable({ traits = {
            json_name = "includes",
        } }, { __index = M.SensitivityInspectionTemplateIncludes }),
    },
}

M.UpdateSensitivityInspectionTemplateOutput = {
    type = "structure",
}

return M
