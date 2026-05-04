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
        },
        EndsAt = {
            type = "timestamp",
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
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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
        Encryption = {
            type = "structure",
        },
        RevisionDestination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.Action = {
    type = "structure",
    members = {
        ExportRevisionToS3 = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.LFResourceDetails = {
    type = "structure",
    members = {
        Database = {
            type = "structure",
        },
        Table = {
            type = "structure",
        },
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
        ResourceDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.LakeFormationDataPermissionDetails = {
    type = "structure",
    members = {
        LFTagPolicy = {
            type = "structure",
        },
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
        LakeFormationDataPermissionDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        LakeFormationDataPermissionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Permissions = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        Keys = {
            type = "list",
            member_type = "string",
        },
        S3AccessPointAlias = {
            type = "string",
        },
        S3AccessPointArn = {
            type = "string",
        },
        KmsKeysToGrant = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.S3SnapshotAsset = {
    type = "structure",
    members = {
        Size = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.AssetDetails = {
    type = "structure",
    members = {
        S3SnapshotAsset = {
            type = "structure",
        },
        RedshiftDataShareAsset = {
            type = "structure",
        },
        ApiGatewayApiAsset = {
            type = "structure",
        },
        S3DataAccessAsset = {
            type = "structure",
        },
        LakeFormationDataPermissionAsset = {
            type = "structure",
        },
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
        AssetDetails = {
            type = "structure",
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
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        },
        EndsAt = {
            type = "timestamp",
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
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
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
        OriginDetails = {
            type = "structure",
        },
        SourceId = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
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
        RevisionPublished = {
            type = "structure",
        },
    },
}

M.CreateEventActionInput = {
    type = "structure",
    members = {
        Action = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Event = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateEventActionOutput = {
    type = "structure",
    members = {
        Action = {
            type = "structure",
        },
        Arn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        Event = {
            type = "structure",
        },
        Id = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
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
            member_type = "string",
        },
        Keys = {
            type = "list",
            member_type = "string",
        },
        KmsKeysToGrant = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateS3DataAccessFromS3BucketRequestDetails = {
    type = "structure",
    members = {
        AssetSource = {
            type = "structure",
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

M.ExportAssetsToS3RequestDetails = {
    type = "structure",
    members = {
        AssetDestinations = {
            type = "list",
            member_type = "structure",
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
        Encryption = {
            type = "structure",
        },
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
        Encryption = {
            type = "structure",
        },
        RevisionDestinations = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Permissions = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Permissions = {
            type = "list",
            member_type = "string",
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
        Database = {
            type = "structure",
        },
        Table = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
        ExportAssetToSignedUrl = {
            type = "structure",
        },
        ExportAssetsToS3 = {
            type = "structure",
        },
        ExportRevisionsToS3 = {
            type = "structure",
        },
        ImportAssetFromSignedUrl = {
            type = "structure",
        },
        ImportAssetsFromS3 = {
            type = "structure",
        },
        ImportAssetsFromRedshiftDataShares = {
            type = "structure",
        },
        ImportAssetFromApiGatewayApi = {
            type = "structure",
        },
        CreateS3DataAccessFromS3Bucket = {
            type = "structure",
        },
        ImportAssetsFromLakeFormationTagPolicy = {
            type = "structure",
        },
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
        AssetConfiguration = {
            type = "structure",
        },
        Details = {
            type = "structure",
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
    },
}

M.CreateS3DataAccessFromS3BucketResponseDetails = {
    type = "structure",
    members = {
        AssetSource = {
            type = "structure",
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

M.ExportAssetsToS3ResponseDetails = {
    type = "structure",
    members = {
        AssetDestinations = {
            type = "list",
            member_type = "structure",
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
        Encryption = {
            type = "structure",
        },
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
        Encryption = {
            type = "structure",
        },
        RevisionDestinations = {
            type = "list",
            member_type = "structure",
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
        Database = {
            type = "structure",
        },
        Table = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
        ExportAssetToSignedUrl = {
            type = "structure",
        },
        ExportAssetsToS3 = {
            type = "structure",
        },
        ExportRevisionsToS3 = {
            type = "structure",
        },
        ImportAssetFromSignedUrl = {
            type = "structure",
        },
        ImportAssetsFromS3 = {
            type = "structure",
        },
        ImportAssetsFromRedshiftDataShares = {
            type = "structure",
        },
        ImportAssetFromApiGatewayApi = {
            type = "structure",
        },
        CreateS3DataAccessFromS3Bucket = {
            type = "structure",
        },
        ImportAssetsFromLakeFormationTagPolicy = {
            type = "structure",
        },
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
        ImportAssetFromSignedUrlJobErrorDetails = {
            type = "structure",
        },
        ImportAssetsFromS3JobErrorDetails = {
            type = "list",
            member_type = "structure",
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
        Details = {
            type = "structure",
        },
        LimitName = {
            type = "string",
        },
        LimitValue = {
            type = "number",
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
        AssetConfiguration = {
            type = "structure",
        },
        CreatedAt = {
            type = "timestamp",
        },
        Details = {
            type = "structure",
        },
        Errors = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
        },
        DataSetId = {
            type = "string",
        },
        Finalized = {
            type = "boolean",
        },
        Id = {
            type = "string",
        },
        SourceId = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        RevocationComment = {
            type = "string",
        },
        Revoked = {
            type = "boolean",
        },
        RevokedAt = {
            type = "timestamp",
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
        AssetDetails = {
            type = "structure",
        },
        AssetType = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
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
            key_type = "string",
            value_type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
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
        },
        EndsAt = {
            type = "timestamp",
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
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        OriginDetails = {
            type = "structure",
        },
        SourceId = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
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
        Action = {
            type = "structure",
        },
        Arn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        Event = {
            type = "structure",
        },
        Id = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
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
        AssetConfiguration = {
            type = "structure",
        },
        CreatedAt = {
            type = "timestamp",
        },
        Details = {
            type = "structure",
        },
        Errors = {
            type = "list",
            member_type = "structure",
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
        },
        EndsAt = {
            type = "timestamp",
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
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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
        },
        DataSetId = {
            type = "string",
        },
        Finalized = {
            type = "boolean",
        },
        Id = {
            type = "string",
        },
        SourceId = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        RevocationComment = {
            type = "string",
        },
        Revoked = {
            type = "boolean",
        },
        RevokedAt = {
            type = "timestamp",
        },
    },
}

M.ListDataGrantsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
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
        },
        EndsAt = {
            type = "timestamp",
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
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDataGrantsOutput = {
    type = "structure",
    members = {
        DataGrantSummaries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
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
            },
        },
        RevocationComment = {
            type = "string",
        },
        Revoked = {
            type = "boolean",
        },
        RevokedAt = {
            type = "timestamp",
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
            member_type = "structure",
        },
    },
}

M.ListDataSetsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
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
        OriginDetails = {
            type = "structure",
        },
        SourceId = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDataSetsOutput = {
    type = "structure",
    members = {
        DataSets = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
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
        Action = {
            type = "structure",
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
            },
        },
        Event = {
            type = "structure",
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
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListEventActionsOutput = {
    type = "structure",
    members = {
        EventActions = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
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
        AssetConfiguration = {
            type = "structure",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Details = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Errors = {
            type = "list",
            member_type = "structure",
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
            },
        },
    },
}

M.ListJobsOutput = {
    type = "structure",
    members = {
        Jobs = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
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
            member_type = "string",
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
        },
        EndsAt = {
            type = "timestamp",
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
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListReceivedDataGrantsOutput = {
    type = "structure",
    members = {
        DataGrantSummaries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
        },
        DataSetId = {
            type = "string",
        },
        Finalized = {
            type = "boolean",
        },
        Id = {
            type = "string",
        },
        SourceId = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        RevocationComment = {
            type = "string",
        },
        Revoked = {
            type = "boolean",
        },
        RevokedAt = {
            type = "timestamp",
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
        },
        SchemaChangeAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.NotificationDetails = {
    type = "structure",
    members = {
        DataUpdate = {
            type = "structure",
        },
        Deprecation = {
            type = "structure",
        },
        SchemaChange = {
            type = "structure",
        },
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
            member_type = "string",
        },
        Keys = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ScopeDetails = {
    type = "structure",
    members = {
        LakeFormationTagPolicies = {
            type = "list",
            member_type = "structure",
        },
        RedshiftDataShares = {
            type = "list",
            member_type = "structure",
        },
        S3DataAccesses = {
            type = "list",
            member_type = "structure",
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
        Scope = {
            type = "structure",
        },
        ClientToken = {
            type = "string",
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
        Details = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
        AssetDetails = {
            type = "structure",
        },
        AssetType = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
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
        OriginDetails = {
            type = "structure",
        },
        SourceId = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
        },
    },
}

M.UpdateEventActionInput = {
    type = "structure",
    members = {
        Action = {
            type = "structure",
        },
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
        Action = {
            type = "structure",
        },
        Arn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        Event = {
            type = "structure",
        },
        Id = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
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
        },
        DataSetId = {
            type = "string",
        },
        Finalized = {
            type = "boolean",
        },
        Id = {
            type = "string",
        },
        SourceId = {
            type = "string",
        },
        UpdatedAt = {
            type = "timestamp",
        },
        RevocationComment = {
            type = "string",
        },
        Revoked = {
            type = "boolean",
        },
        RevokedAt = {
            type = "timestamp",
        },
    },
}

return M
