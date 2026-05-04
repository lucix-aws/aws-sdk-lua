local M = {}

M.AcceptanceStateFilterValue = {
    PENDING_RECEIVER_ACCEPTANCE = "PENDING_RECEIVER_ACCEPTANCE",
    ACCEPTED = "ACCEPTED",
}

M.AcceptDataGrantInput = {
    type = "structure",
    members = {
        DataGrantArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DataGrantAcceptanceState = {
    PENDING_RECEIVER_ACCEPTANCE = "PENDING_RECEIVER_ACCEPTANCE",
    ACCEPTED = "ACCEPTED",
}

M.GrantDistributionScope = {
    AWS_ORGANIZATION = "AWS_ORGANIZATION",
    NONE = "NONE",
}

M.AcceptDataGrantOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SenderPrincipal = {
            type = "string",
        },
        ReceiverPrincipal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        AcceptanceState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AcceptedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        EndsAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        GrantDistributionScope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceType = {
    DATA_SET = "DATA_SET",
    REVISION = "REVISION",
    ASSET = "ASSET",
    JOB = "JOB",
    EVENT_ACTION = "EVENT_ACTION",
    DATA_GRANT = "DATA_GRANT",
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
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
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExceptionCause = {
    InsufficientS3BucketPolicy = "InsufficientS3BucketPolicy",
    S3AccessDenied = "S3AccessDenied",
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExceptionCause = {
            type = "string",
        },
    },
}

M.ServerSideEncryptionTypes = {
    aws_kms = "aws:kms",
    AES256 = "AES256",
}

M.ExportServerSideEncryption = {
    type = "structure",
    members = {
        KmsKeyArn = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutoExportRevisionDestinationEntry = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyPattern = {
            type = "string",
        },
    },
}

M.AutoExportRevisionToS3RequestDetails = {
    type = "structure",
    members = {
        Encryption = M.ExportServerSideEncryption,
        RevisionDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutoExportRevisionDestinationEntry }),
    },
}

M.Action = {
    type = "structure",
    members = {
        ExportRevisionToS3 = M.AutoExportRevisionToS3RequestDetails,
    },
}

M.ProtocolType = {
    REST = "REST",
}

M.ApiGatewayApiAsset = {
    type = "structure",
    members = {
        ApiDescription = {
            type = "string",
        },
        ApiEndpoint = {
            type = "string",
        },
        ApiId = {
            type = "string",
        },
        ApiKey = {
            type = "string",
        },
        ApiName = {
            type = "string",
        },
        ApiSpecificationDownloadUrl = {
            type = "string",
        },
        ApiSpecificationDownloadUrlExpiresAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ProtocolType = {
            type = "string",
        },
        Stage = {
            type = "string",
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

M.AssetConfiguration = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.AssetDestinationEntry = {
    type = "structure",
    members = {
        AssetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Key = {
            type = "string",
        },
    },
}

M.LFTag = {
    type = "structure",
    members = {
        TagKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DatabaseLFTagPolicy = {
    type = "structure",
    members = {
        Expression = {
            type = "list",
            member = M.LFTag,
            traits = {
                required = true,
            },
        },
    },
}

M.TableLFTagPolicy = {
    type = "structure",
    members = {
        Expression = {
            type = "list",
            member = M.LFTag,
            traits = {
                required = true,
            },
        },
    },
}

M.LFResourceDetails = {
    type = "structure",
    members = {
        Database = M.DatabaseLFTagPolicy,
        Table = M.TableLFTagPolicy,
    },
}

M.LFResourceType = {
    TABLE = "TABLE",
    DATABASE = "DATABASE",
}

M.LFTagPolicyDetails = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LFResourceDetails }),
    },
}

M.LakeFormationDataPermissionDetails = {
    type = "structure",
    members = {
        LFTagPolicy = M.LFTagPolicyDetails,
    },
}

M.LakeFormationDataPermissionType = {
    LFTagPolicy = "LFTagPolicy",
}

M.LFPermission = {
    DESCRIBE = "DESCRIBE",
    SELECT = "SELECT",
}

M.LakeFormationDataPermissionAsset = {
    type = "structure",
    members = {
        LakeFormationDataPermissionDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LakeFormationDataPermissionDetails }),
        LakeFormationDataPermissionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Permissions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.RedshiftDataShareAsset = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KmsKeyToGrant = {
    type = "structure",
    members = {
        KmsKeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3DataAccessAsset = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyPrefixes = {
            type = "list",
            member = { type = "string" },
        },
        Keys = {
            type = "list",
            member = { type = "string" },
        },
        S3AccessPointAlias = {
            type = "string",
        },
        S3AccessPointArn = {
            type = "string",
        },
        KmsKeysToGrant = {
            type = "list",
            member = M.KmsKeyToGrant,
        },
    },
}

M.S3SnapshotAsset = {
    type = "structure",
    members = {
        Size = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.AssetDetails = {
    type = "structure",
    members = {
        S3SnapshotAsset = M.S3SnapshotAsset,
        RedshiftDataShareAsset = M.RedshiftDataShareAsset,
        ApiGatewayApiAsset = M.ApiGatewayApiAsset,
        S3DataAccessAsset = M.S3DataAccessAsset,
        LakeFormationDataPermissionAsset = M.LakeFormationDataPermissionAsset,
    },
}

M.AssetType = {
    S3_SNAPSHOT = "S3_SNAPSHOT",
    REDSHIFT_DATA_SHARE = "REDSHIFT_DATA_SHARE",
    API_GATEWAY_API = "API_GATEWAY_API",
    S3_DATA_ACCESS = "S3_DATA_ACCESS",
    LAKE_FORMATION_DATA_PERMISSION = "LAKE_FORMATION_DATA_PERMISSION",
}

M.AssetEntry = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssetDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssetDetails }),
        AssetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceId = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.AssetSourceEntry = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelJobOutput = {
    type = "structure",
}

M.Code = {
    ACCESS_DENIED_EXCEPTION = "ACCESS_DENIED_EXCEPTION",
    INTERNAL_SERVER_EXCEPTION = "INTERNAL_SERVER_EXCEPTION",
    MALWARE_DETECTED = "MALWARE_DETECTED",
    RESOURCE_NOT_FOUND_EXCEPTION = "RESOURCE_NOT_FOUND_EXCEPTION",
    SERVICE_QUOTA_EXCEEDED_EXCEPTION = "SERVICE_QUOTA_EXCEEDED_EXCEPTION",
    VALIDATION_EXCEPTION = "VALIDATION_EXCEPTION",
    MALWARE_SCAN_ENCRYPTED_FILE = "MALWARE_SCAN_ENCRYPTED_FILE",
}

M.CreateDataGrantInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GrantDistributionScope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReceiverPrincipal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceDataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndsAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateDataGrantOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SenderPrincipal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReceiverPrincipal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        AcceptanceState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AcceptedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        EndsAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        GrantDistributionScope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceDataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.LimitName = {
    Products_per_account = "Products per account",
    Data_sets_per_account = "Data sets per account",
    Data_sets_per_product = "Data sets per product",
    Revisions_per_data_set = "Revisions per data set",
    Assets_per_revision = "Assets per revision",
    Assets_per_import_job_from_Amazon_S3 = "Assets per import job from Amazon S3",
    Asset_per_export_job_from_Amazon_S3 = "Asset per export job from Amazon S3",
    Asset_size_in_GB = "Asset size in GB",
    Concurrent_in_progress_jobs_to_export_assets_to_Amazon_S3 = "Concurrent in progress jobs to export assets to Amazon S3",
    Concurrent_in_progress_jobs_to_export_assets_to_a_signed_URL = "Concurrent in progress jobs to export assets to a signed URL",
    Concurrent_in_progress_jobs_to_import_assets_from_Amazon_S3 = "Concurrent in progress jobs to import assets from Amazon S3",
    Concurrent_in_progress_jobs_to_import_assets_from_a_signed_URL = "Concurrent in progress jobs to import assets from a signed URL",
    Concurrent_in_progress_jobs_to_export_revisions_to_Amazon_S3 = "Concurrent in progress jobs to export revisions to Amazon S3",
    Event_actions_per_account = "Event actions per account",
    Auto_export_event_actions_per_data_set = "Auto export event actions per data set",
    Amazon_Redshift_datashare_assets_per_import_job_from_Redshift = "Amazon Redshift datashare assets per import job from Redshift",
    Concurrent_in_progress_jobs_to_import_assets_from_Amazon_Redshift_datashares = "Concurrent in progress jobs to import assets from Amazon Redshift datashares",
    Revisions_per_Amazon_Redshift_datashare_data_set = "Revisions per Amazon Redshift datashare data set",
    Amazon_Redshift_datashare_assets_per_revision = "Amazon Redshift datashare assets per revision",
    Concurrent_in_progress_jobs_to_import_assets_from_an_API_Gateway_API = "Concurrent in progress jobs to import assets from an API Gateway API",
    Amazon_API_Gateway_API_assets_per_revision = "Amazon API Gateway API assets per revision",
    Revisions_per_Amazon_API_Gateway_API_data_set = "Revisions per Amazon API Gateway API data set",
    Concurrent_in_progress_jobs_to_import_assets_from_an_AWS_Lake_Formation_tag_policy = "Concurrent in progress jobs to import assets from an AWS Lake Formation tag policy",
    AWS_Lake_Formation_data_permission_assets_per_revision = "AWS Lake Formation data permission assets per revision",
    Revisions_per_AWS_Lake_Formation_data_permission_data_set = "Revisions per AWS Lake Formation data permission data set",
    Revisions_per_Amazon_S3_data_access_data_set = "Revisions per Amazon S3 data access data set",
    Amazon_S3_data_access_assets_per_revision = "Amazon S3 data access assets per revision",
    Concurrent_in_progress_jobs_to_create_Amazon_S3_data_access_assets_from_S3_buckets = "Concurrent in progress jobs to create Amazon S3 data access assets from S3 buckets",
    Active_and_pending_data_grants = "Active and pending data grants",
    Pending_data_grants_per_consumer = "Pending data grants per consumer",
}

M.ServiceLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        LimitName = {
            type = "string",
        },
        LimitValue = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDataSetInput = {
    type = "structure",
    members = {
        AssetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.Origin = {
    OWNED = "OWNED",
    ENTITLED = "ENTITLED",
}

M.OriginDetails = {
    type = "structure",
    members = {
        ProductId = {
            type = "string",
        },
        DataGrantId = {
            type = "string",
        },
    },
}

M.CreateDataSetOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        AssetType = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Description = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Origin = {
            type = "string",
        },
        OriginDetails = M.OriginDetails,
        SourceId = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.RevisionPublished = {
    type = "structure",
    members = {
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Event = {
    type = "structure",
    members = {
        RevisionPublished = M.RevisionPublished,
    },
}

M.CreateEventActionInput = {
    type = "structure",
    members = {
        Action = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Action }),
        Event = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Event }),
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateEventActionOutput = {
    type = "structure",
    members = {
        Action = M.Action,
        Arn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Event = M.Event,
        Id = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.S3DataAccessAssetSourceEntry = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyPrefixes = {
            type = "list",
            member = { type = "string" },
        },
        Keys = {
            type = "list",
            member = { type = "string" },
        },
        KmsKeysToGrant = {
            type = "list",
            member = M.KmsKeyToGrant,
        },
    },
}

M.CreateS3DataAccessFromS3BucketRequestDetails = {
    type = "structure",
    members = {
        AssetSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DataAccessAssetSourceEntry }),
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExportAssetsToS3RequestDetails = {
    type = "structure",
    members = {
        AssetDestinations = {
            type = "list",
            member = M.AssetDestinationEntry,
            traits = {
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Encryption = M.ExportServerSideEncryption,
        RevisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExportAssetToSignedUrlRequestDetails = {
    type = "structure",
    members = {
        AssetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RevisionDestinationEntry = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyPattern = {
            type = "string",
        },
        RevisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExportRevisionsToS3RequestDetails = {
    type = "structure",
    members = {
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Encryption = M.ExportServerSideEncryption,
        RevisionDestinations = {
            type = "list",
            member = M.RevisionDestinationEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.ImportAssetFromApiGatewayApiRequestDetails = {
    type = "structure",
    members = {
        ApiDescription = {
            type = "string",
        },
        ApiId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApiKey = {
            type = "string",
        },
        ApiName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApiSpecificationMd5Hash = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProtocolType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Stage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportAssetFromSignedUrlRequestDetails = {
    type = "structure",
    members = {
        AssetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Md5Hash = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DatabaseLFTagPolicyPermission = {
    DESCRIBE = "DESCRIBE",
}

M.DatabaseLFTagPolicyAndPermissions = {
    type = "structure",
    members = {
        Expression = {
            type = "list",
            member = M.LFTag,
            traits = {
                required = true,
            },
        },
        Permissions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TableTagPolicyLFPermission = {
    DESCRIBE = "DESCRIBE",
    SELECT = "SELECT",
}

M.TableLFTagPolicyAndPermissions = {
    type = "structure",
    members = {
        Expression = {
            type = "list",
            member = M.LFTag,
            traits = {
                required = true,
            },
        },
        Permissions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ImportAssetsFromLakeFormationTagPolicyRequestDetails = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = M.DatabaseLFTagPolicyAndPermissions,
        Table = M.TableLFTagPolicyAndPermissions,
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RedshiftDataShareAssetSourceEntry = {
    type = "structure",
    members = {
        DataShareArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportAssetsFromRedshiftDataSharesRequestDetails = {
    type = "structure",
    members = {
        AssetSources = {
            type = "list",
            member = M.RedshiftDataShareAssetSourceEntry,
            traits = {
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportAssetsFromS3RequestDetails = {
    type = "structure",
    members = {
        AssetSources = {
            type = "list",
            member = M.AssetSourceEntry,
            traits = {
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RequestDetails = {
    type = "structure",
    members = {
        ExportAssetToSignedUrl = M.ExportAssetToSignedUrlRequestDetails,
        ExportAssetsToS3 = M.ExportAssetsToS3RequestDetails,
        ExportRevisionsToS3 = M.ExportRevisionsToS3RequestDetails,
        ImportAssetFromSignedUrl = M.ImportAssetFromSignedUrlRequestDetails,
        ImportAssetsFromS3 = M.ImportAssetsFromS3RequestDetails,
        ImportAssetsFromRedshiftDataShares = M.ImportAssetsFromRedshiftDataSharesRequestDetails,
        ImportAssetFromApiGatewayApi = M.ImportAssetFromApiGatewayApiRequestDetails,
        CreateS3DataAccessFromS3Bucket = M.CreateS3DataAccessFromS3BucketRequestDetails,
        ImportAssetsFromLakeFormationTagPolicy = M.ImportAssetsFromLakeFormationTagPolicyRequestDetails,
    },
}

M.Type = {
    IMPORT_ASSETS_FROM_S3 = "IMPORT_ASSETS_FROM_S3",
    IMPORT_ASSET_FROM_SIGNED_URL = "IMPORT_ASSET_FROM_SIGNED_URL",
    EXPORT_ASSETS_TO_S3 = "EXPORT_ASSETS_TO_S3",
    EXPORT_ASSET_TO_SIGNED_URL = "EXPORT_ASSET_TO_SIGNED_URL",
    EXPORT_REVISIONS_TO_S3 = "EXPORT_REVISIONS_TO_S3",
    IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES = "IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES",
    IMPORT_ASSET_FROM_API_GATEWAY_API = "IMPORT_ASSET_FROM_API_GATEWAY_API",
    CREATE_S3_DATA_ACCESS_FROM_S3_BUCKET = "CREATE_S3_DATA_ACCESS_FROM_S3_BUCKET",
    IMPORT_ASSETS_FROM_LAKE_FORMATION_TAG_POLICY = "IMPORT_ASSETS_FROM_LAKE_FORMATION_TAG_POLICY",
}

M.CreateJobInput = {
    type = "structure",
    members = {
        AssetConfiguration = M.AssetConfiguration,
        Details = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RequestDetails }),
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateS3DataAccessFromS3BucketResponseDetails = {
    type = "structure",
    members = {
        AssetSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DataAccessAssetSourceEntry }),
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExportAssetsToS3ResponseDetails = {
    type = "structure",
    members = {
        AssetDestinations = {
            type = "list",
            member = M.AssetDestinationEntry,
            traits = {
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Encryption = M.ExportServerSideEncryption,
        RevisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExportAssetToSignedUrlResponseDetails = {
    type = "structure",
    members = {
        AssetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SignedUrl = {
            type = "string",
        },
        SignedUrlExpiresAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ExportRevisionsToS3ResponseDetails = {
    type = "structure",
    members = {
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Encryption = M.ExportServerSideEncryption,
        RevisionDestinations = {
            type = "list",
            member = M.RevisionDestinationEntry,
            traits = {
                required = true,
            },
        },
        EventActionArn = {
            type = "string",
        },
    },
}

M.ImportAssetFromApiGatewayApiResponseDetails = {
    type = "structure",
    members = {
        ApiDescription = {
            type = "string",
        },
        ApiId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApiKey = {
            type = "string",
        },
        ApiName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApiSpecificationMd5Hash = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApiSpecificationUploadUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApiSpecificationUploadUrlExpiresAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProtocolType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Stage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportAssetFromSignedUrlResponseDetails = {
    type = "structure",
    members = {
        AssetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Md5Hash = {
            type = "string",
        },
        RevisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SignedUrl = {
            type = "string",
        },
        SignedUrlExpiresAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ImportAssetsFromLakeFormationTagPolicyResponseDetails = {
    type = "structure",
    members = {
        CatalogId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = M.DatabaseLFTagPolicyAndPermissions,
        Table = M.TableLFTagPolicyAndPermissions,
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportAssetsFromRedshiftDataSharesResponseDetails = {
    type = "structure",
    members = {
        AssetSources = {
            type = "list",
            member = M.RedshiftDataShareAssetSourceEntry,
            traits = {
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportAssetsFromS3ResponseDetails = {
    type = "structure",
    members = {
        AssetSources = {
            type = "list",
            member = M.AssetSourceEntry,
            traits = {
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResponseDetails = {
    type = "structure",
    members = {
        ExportAssetToSignedUrl = M.ExportAssetToSignedUrlResponseDetails,
        ExportAssetsToS3 = M.ExportAssetsToS3ResponseDetails,
        ExportRevisionsToS3 = M.ExportRevisionsToS3ResponseDetails,
        ImportAssetFromSignedUrl = M.ImportAssetFromSignedUrlResponseDetails,
        ImportAssetsFromS3 = M.ImportAssetsFromS3ResponseDetails,
        ImportAssetsFromRedshiftDataShares = M.ImportAssetsFromRedshiftDataSharesResponseDetails,
        ImportAssetFromApiGatewayApi = M.ImportAssetFromApiGatewayApiResponseDetails,
        CreateS3DataAccessFromS3Bucket = M.CreateS3DataAccessFromS3BucketResponseDetails,
        ImportAssetsFromLakeFormationTagPolicy = M.ImportAssetsFromLakeFormationTagPolicyResponseDetails,
    },
}

M.ImportAssetFromSignedUrlJobErrorDetails = {
    type = "structure",
    members = {
        AssetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Details = {
    type = "structure",
    members = {
        ImportAssetFromSignedUrlJobErrorDetails = M.ImportAssetFromSignedUrlJobErrorDetails,
        ImportAssetsFromS3JobErrorDetails = {
            type = "list",
            member = M.AssetSourceEntry,
        },
    },
}

M.JobErrorLimitName = {
    Assets_per_revision = "Assets per revision",
    Asset_size_in_GB = "Asset size in GB",
    Amazon_Redshift_datashare_assets_per_revision = "Amazon Redshift datashare assets per revision",
    AWS_Lake_Formation_data_permission_assets_per_revision = "AWS Lake Formation data permission assets per revision",
    Amazon_S3_data_access_assets_per_revision = "Amazon S3 data access assets per revision",
}

M.JobErrorResourceTypes = {
    REVISION = "REVISION",
    ASSET = "ASSET",
    DATA_SET = "DATA_SET",
}

M.JobError = {
    type = "structure",
    members = {
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Details = M.Details,
        LimitName = {
            type = "string",
        },
        LimitValue = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.State = {
    WAITING = "WAITING",
    IN_PROGRESS = "IN_PROGRESS",
    ERROR = "ERROR",
    COMPLETED = "COMPLETED",
    CANCELLED = "CANCELLED",
    TIMED_OUT = "TIMED_OUT",
}

M.CreateJobOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        AssetConfiguration = M.AssetConfiguration,
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Details = M.ResponseDetails,
        Errors = {
            type = "list",
            member = M.JobError,
        },
        Id = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateRevisionInput = {
    type = "structure",
    members = {
        Comment = {
            type = "string",
        },
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateRevisionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Comment = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        DataSetId = {
            type = "string",
        },
        Finalized = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Id = {
            type = "string",
        },
        SourceId = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        RevocationComment = {
            type = "string",
        },
        Revoked = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        RevokedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeleteAssetInput = {
    type = "structure",
    members = {
        AssetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAssetOutput = {
    type = "structure",
}

M.DeleteDataGrantInput = {
    type = "structure",
    members = {
        DataGrantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDataGrantOutput = {
    type = "structure",
}

M.DeleteDataSetInput = {
    type = "structure",
    members = {
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDataSetOutput = {
    type = "structure",
}

M.DeleteEventActionInput = {
    type = "structure",
    members = {
        EventActionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEventActionOutput = {
    type = "structure",
}

M.DeleteRevisionInput = {
    type = "structure",
    members = {
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRevisionOutput = {
    type = "structure",
}

M.GetAssetInput = {
    type = "structure",
    members = {
        AssetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAssetOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        AssetDetails = M.AssetDetails,
        AssetType = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        DataSetId = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        RevisionId = {
            type = "string",
        },
        SourceId = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetDataGrantInput = {
    type = "structure",
    members = {
        DataGrantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDataGrantOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SenderPrincipal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReceiverPrincipal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        AcceptanceState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AcceptedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        EndsAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        GrantDistributionScope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceDataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetDataSetInput = {
    type = "structure",
    members = {
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDataSetOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        AssetType = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Description = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Origin = {
            type = "string",
        },
        OriginDetails = M.OriginDetails,
        SourceId = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetEventActionInput = {
    type = "structure",
    members = {
        EventActionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetEventActionOutput = {
    type = "structure",
    members = {
        Action = M.Action,
        Arn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Event = M.Event,
        Id = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetJobOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        AssetConfiguration = M.AssetConfiguration,
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Details = M.ResponseDetails,
        Errors = {
            type = "list",
            member = M.JobError,
        },
        Id = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetReceivedDataGrantInput = {
    type = "structure",
    members = {
        DataGrantArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetReceivedDataGrantOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SenderPrincipal = {
            type = "string",
        },
        ReceiverPrincipal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        AcceptanceState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AcceptedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        EndsAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        GrantDistributionScope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetRevisionInput = {
    type = "structure",
    members = {
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRevisionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Comment = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        DataSetId = {
            type = "string",
        },
        Finalized = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Id = {
            type = "string",
        },
        SourceId = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        RevocationComment = {
            type = "string",
        },
        Revoked = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        RevokedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListDataGrantsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.DataGrantSummaryEntry = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SenderPrincipal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReceiverPrincipal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AcceptanceState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AcceptedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        EndsAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceDataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListDataGrantsOutput = {
    type = "structure",
    members = {
        DataGrantSummaries = {
            type = "list",
            member = M.DataGrantSummaryEntry,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDataSetRevisionsInput = {
    type = "structure",
    members = {
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.RevisionEntry = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Comment = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Finalized = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceId = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        RevocationComment = {
            type = "string",
        },
        Revoked = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        RevokedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListDataSetRevisionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Revisions = {
            type = "list",
            member = M.RevisionEntry,
        },
    },
}

M.ListDataSetsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        Origin = {
            type = "string",
            traits = {
                http_query = "origin",
            },
        },
    },
}

M.DataSetEntry = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Origin = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginDetails = M.OriginDetails,
        SourceId = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListDataSetsOutput = {
    type = "structure",
    members = {
        DataSets = {
            type = "list",
            member = M.DataSetEntry,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEventActionsInput = {
    type = "structure",
    members = {
        EventSourceId = {
            type = "string",
            traits = {
                http_query = "eventSourceId",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.EventActionEntry = {
    type = "structure",
    members = {
        Action = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Action }),
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Event = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Event }),
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListEventActionsOutput = {
    type = "structure",
    members = {
        EventActions = {
            type = "list",
            member = M.EventActionEntry,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListJobsInput = {
    type = "structure",
    members = {
        DataSetId = {
            type = "string",
            traits = {
                http_query = "dataSetId",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                http_query = "revisionId",
            },
        },
    },
}

M.JobEntry = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssetConfiguration = M.AssetConfiguration,
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        Details = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResponseDetails }),
        Errors = {
            type = "list",
            member = M.JobError,
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListJobsOutput = {
    type = "structure",
    members = {
        Jobs = {
            type = "list",
            member = M.JobEntry,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListReceivedDataGrantsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        AcceptanceState = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "acceptanceState",
            },
        },
    },
}

M.ReceivedDataGrantSummariesEntry = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SenderPrincipal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReceiverPrincipal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AcceptanceState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AcceptedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        EndsAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListReceivedDataGrantsOutput = {
    type = "structure",
    members = {
        DataGrantSummaries = {
            type = "list",
            member = M.ReceivedDataGrantSummariesEntry,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRevisionAssetsInput = {
    type = "structure",
    members = {
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListRevisionAssetsOutput = {
    type = "structure",
    members = {
        Assets = {
            type = "list",
            member = M.AssetEntry,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.RevokeRevisionInput = {
    type = "structure",
    members = {
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RevocationComment = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RevokeRevisionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Comment = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        DataSetId = {
            type = "string",
        },
        Finalized = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Id = {
            type = "string",
        },
        SourceId = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        RevocationComment = {
            type = "string",
        },
        Revoked = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        RevokedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.SendApiAssetInput = {
    type = "structure",
    members = {
        Body = {
            type = "string",
            traits = {
                http_payload = true,
            },
        },
        QueryStringParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                http_query_params = true,
            },
        },
        AssetId = {
            type = "string",
            traits = {
                http_header = "x-amzn-dataexchange-asset-id",
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                http_header = "x-amzn-dataexchange-data-set-id",
                required = true,
            },
        },
        RequestHeaders = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                http_prefix_headers = "x-amzn-dataexchange-header-",
            },
        },
        Method = {
            type = "string",
            traits = {
                http_header = "x-amzn-dataexchange-http-method",
            },
        },
        Path = {
            type = "string",
            traits = {
                http_header = "x-amzn-dataexchange-path",
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-dataexchange-revision-id",
                required = true,
            },
        },
    },
}

M.SendApiAssetOutput = {
    type = "structure",
    members = {
        Body = {
            type = "string",
            traits = {
                http_payload = true,
            },
        },
        ResponseHeaders = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                http_prefix_headers = "",
            },
        },
    },
}

M.DataUpdateRequestDetails = {
    type = "structure",
    members = {
        DataUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeprecationRequestDetails = {
    type = "structure",
    members = {
        DeprecationAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.SchemaChangeType = {
    ADD = "ADD",
    REMOVE = "REMOVE",
    MODIFY = "MODIFY",
}

M.SchemaChangeDetails = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
    },
}

M.SchemaChangeRequestDetails = {
    type = "structure",
    members = {
        Changes = {
            type = "list",
            member = M.SchemaChangeDetails,
        },
        SchemaChangeAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.NotificationDetails = {
    type = "structure",
    members = {
        DataUpdate = M.DataUpdateRequestDetails,
        Deprecation = M.DeprecationRequestDetails,
        SchemaChange = M.SchemaChangeRequestDetails,
    },
}

M.LakeFormationTagPolicyDetails = {
    type = "structure",
    members = {
        Database = {
            type = "string",
        },
        Table = {
            type = "string",
        },
    },
}

M.RedshiftDataShareDetails = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Database = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Function = {
            type = "string",
        },
        Table = {
            type = "string",
        },
        Schema = {
            type = "string",
        },
        View = {
            type = "string",
        },
    },
}

M.S3DataAccessDetails = {
    type = "structure",
    members = {
        KeyPrefixes = {
            type = "list",
            member = { type = "string" },
        },
        Keys = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ScopeDetails = {
    type = "structure",
    members = {
        LakeFormationTagPolicies = {
            type = "list",
            member = M.LakeFormationTagPolicyDetails,
        },
        RedshiftDataShares = {
            type = "list",
            member = M.RedshiftDataShareDetails,
        },
        S3DataAccesses = {
            type = "list",
            member = M.S3DataAccessDetails,
        },
    },
}

M.NotificationType = {
    DATA_DELAY = "DATA_DELAY",
    DATA_UPDATE = "DATA_UPDATE",
    DEPRECATION = "DEPRECATION",
    SCHEMA_CHANGE = "SCHEMA_CHANGE",
}

M.SendDataSetNotificationInput = {
    type = "structure",
    members = {
        Scope = M.ScopeDetails,
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Comment = {
            type = "string",
        },
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Details = M.NotificationDetails,
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SendDataSetNotificationOutput = {
    type = "structure",
}

M.StartJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartJobOutput = {
    type = "structure",
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
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

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
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
}

M.UpdateAssetInput = {
    type = "structure",
    members = {
        AssetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateAssetOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        AssetDetails = M.AssetDetails,
        AssetType = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        DataSetId = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        RevisionId = {
            type = "string",
        },
        SourceId = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.UpdateDataSetInput = {
    type = "structure",
    members = {
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.UpdateDataSetOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        AssetType = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Description = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Origin = {
            type = "string",
        },
        OriginDetails = M.OriginDetails,
        SourceId = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.UpdateEventActionInput = {
    type = "structure",
    members = {
        Action = M.Action,
        EventActionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateEventActionOutput = {
    type = "structure",
    members = {
        Action = M.Action,
        Arn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Event = M.Event,
        Id = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.UpdateRevisionInput = {
    type = "structure",
    members = {
        Comment = {
            type = "string",
        },
        DataSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Finalized = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateRevisionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Comment = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        DataSetId = {
            type = "string",
        },
        Finalized = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Id = {
            type = "string",
        },
        SourceId = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        RevocationComment = {
            type = "string",
        },
        Revoked = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        RevokedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

return M
