local M = {}

M.AcceptanceStateFilterValue = {
    PENDING_RECEIVER_ACCEPTANCE = "PENDING_RECEIVER_ACCEPTANCE",
    ACCEPTED = "ACCEPTED",
}

M.DataGrantAcceptanceState = {
    PENDING_RECEIVER_ACCEPTANCE = "PENDING_RECEIVER_ACCEPTANCE",
    ACCEPTED = "ACCEPTED",
}

M.GrantDistributionScope = {
    AWS_ORGANIZATION = "AWS_ORGANIZATION",
    NONE = "NONE",
}

M.ResourceType = {
    DATA_SET = "DATA_SET",
    REVISION = "REVISION",
    ASSET = "ASSET",
    JOB = "JOB",
    EVENT_ACTION = "EVENT_ACTION",
    DATA_GRANT = "DATA_GRANT",
}

M.ExceptionCause = {
    InsufficientS3BucketPolicy = "InsufficientS3BucketPolicy",
    S3AccessDenied = "S3AccessDenied",
}

M.ServerSideEncryptionTypes = {
    aws_kms = "aws:kms",
    AES256 = "AES256",
}

M.ProtocolType = {
    REST = "REST",
}

M.LFResourceType = {
    TABLE = "TABLE",
    DATABASE = "DATABASE",
}

M.LakeFormationDataPermissionType = {
    LFTagPolicy = "LFTagPolicy",
}

M.LFPermission = {
    DESCRIBE = "DESCRIBE",
    SELECT = "SELECT",
}

M.AssetType = {
    S3_SNAPSHOT = "S3_SNAPSHOT",
    REDSHIFT_DATA_SHARE = "REDSHIFT_DATA_SHARE",
    API_GATEWAY_API = "API_GATEWAY_API",
    S3_DATA_ACCESS = "S3_DATA_ACCESS",
    LAKE_FORMATION_DATA_PERMISSION = "LAKE_FORMATION_DATA_PERMISSION",
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

M.Origin = {
    OWNED = "OWNED",
    ENTITLED = "ENTITLED",
}

M.DatabaseLFTagPolicyPermission = {
    DESCRIBE = "DESCRIBE",
}

M.TableTagPolicyLFPermission = {
    DESCRIBE = "DESCRIBE",
    SELECT = "SELECT",
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

M.State = {
    WAITING = "WAITING",
    IN_PROGRESS = "IN_PROGRESS",
    ERROR = "ERROR",
    COMPLETED = "COMPLETED",
    CANCELLED = "CANCELLED",
    TIMED_OUT = "TIMED_OUT",
}

M.SchemaChangeType = {
    ADD = "ADD",
    REMOVE = "REMOVE",
    MODIFY = "MODIFY",
}

M.NotificationType = {
    DATA_DELAY = "DATA_DELAY",
    DATA_UPDATE = "DATA_UPDATE",
    DEPRECATION = "DEPRECATION",
    SCHEMA_CHANGE = "SCHEMA_CHANGE",
}

return M
