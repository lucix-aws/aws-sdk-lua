local M = {}

M.BucketAbacStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.AbacStatus = {
    type = "structure",
    id = "AbacStatus",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.AbortIncompleteMultipartUpload = {
    type = "structure",
    id = "AbortIncompleteMultipartUpload",
    members = {
        DaysAfterInitiation = {
            type = "integer",
        },
    },
}

M.RequestPayer = {
    requester = "requester",
}

M.AbortMultipartUploadInput = {
    type = "structure",
    id = "AbortMultipartUploadInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UploadId = {
            type = "string",
            traits = {
                http_query = "uploadId",
                required = true,
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        IfMatchInitiatedTime = {
            type = "timestamp",
            traits = {
                http_header = "x-amz-if-match-initiated-time",
                timestamp_format = "http-date",
            },
        },
    },
}

M.RequestCharged = {
    requester = "requester",
}

M.AbortMultipartUploadOutput = {
    type = "structure",
    id = "AbortMultipartUploadOutput",
    members = {
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
    },
}

M.NoSuchUpload = {
    type = "structure",
    id = "NoSuchUpload",
    error = "client",
}

M.BucketAccelerateStatus = {
    Enabled = "Enabled",
    Suspended = "Suspended",
}

M.AccelerateConfiguration = {
    type = "structure",
    id = "AccelerateConfiguration",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.Type = {
    CanonicalUser = "CanonicalUser",
    AmazonCustomerByEmail = "AmazonCustomerByEmail",
    Group = "Group",
}

M.Grantee = {
    type = "structure",
    id = "Grantee",
    members = {
        DisplayName = {
            type = "string",
        },
        EmailAddress = {
            type = "string",
        },
        ID = {
            type = "string",
        },
        URI = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
                xml_name = "xsi:type",
            },
        },
    },
}

M.Permission = {
    FULL_CONTROL = "FULL_CONTROL",
    WRITE = "WRITE",
    WRITE_ACP = "WRITE_ACP",
    READ = "READ",
    READ_ACP = "READ_ACP",
}

M.Grant = {
    type = "structure",
    id = "Grant",
    members = {
        Grantee = setmetatable({ traits = {
            xml_namespace = { uri = "http://www.w3.org/2001/XMLSchema-instance", prefix = "xsi" },
        } }, { __index = M.Grantee }),
        Permission = {
            type = "string",
        },
    },
}

M.Owner = {
    type = "structure",
    id = "Owner",
    members = {
        DisplayName = {
            type = "string",
        },
        ID = {
            type = "string",
        },
    },
}

M.AccessControlPolicy = {
    type = "structure",
    id = "AccessControlPolicy",
    members = {
        Grants = {
            type = "list",
            member = M.Grant,
            traits = {
                xml_name = "AccessControlList",
            },
        },
        Owner = M.Owner,
    },
}

M.OwnerOverride = {
    Destination = "Destination",
}

M.AccessControlTranslation = {
    type = "structure",
    id = "AccessControlTranslation",
    members = {
        Owner = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AccessDenied = {
    type = "structure",
    id = "AccessDenied",
    error = "client",
}

M.ChecksumType = {
    COMPOSITE = "COMPOSITE",
    FULL_OBJECT = "FULL_OBJECT",
}

M.CompletedPart = {
    type = "structure",
    id = "CompletedPart",
    members = {
        ETag = {
            type = "string",
        },
        ChecksumCRC32 = {
            type = "string",
        },
        ChecksumCRC32C = {
            type = "string",
        },
        ChecksumCRC64NVME = {
            type = "string",
        },
        ChecksumSHA1 = {
            type = "string",
        },
        ChecksumSHA256 = {
            type = "string",
        },
        ChecksumSHA512 = {
            type = "string",
        },
        ChecksumMD5 = {
            type = "string",
        },
        ChecksumXXHASH64 = {
            type = "string",
        },
        ChecksumXXHASH3 = {
            type = "string",
        },
        ChecksumXXHASH128 = {
            type = "string",
        },
        PartNumber = {
            type = "integer",
        },
    },
}

M.CompletedMultipartUpload = {
    type = "structure",
    id = "CompletedMultipartUpload",
    members = {
        Parts = {
            type = "list",
            member = M.CompletedPart,
            traits = {
                xml_flattened = true,
                xml_name = "Part",
            },
        },
    },
}

M.CompleteMultipartUploadInput = {
    type = "structure",
    id = "CompleteMultipartUploadInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MultipartUpload = setmetatable({ traits = {
            http_payload = true,
            xml_name = "CompleteMultipartUpload",
        } }, { __index = M.CompletedMultipartUpload }),
        UploadId = {
            type = "string",
            traits = {
                http_query = "uploadId",
                required = true,
            },
        },
        ChecksumCRC32 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-crc32",
            },
        },
        ChecksumCRC32C = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-crc32c",
            },
        },
        ChecksumCRC64NVME = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-crc64nvme",
            },
        },
        ChecksumSHA1 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-sha1",
            },
        },
        ChecksumSHA256 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-sha256",
            },
        },
        ChecksumSHA512 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-sha512",
            },
        },
        ChecksumMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-md5",
            },
        },
        ChecksumXXHASH64 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-xxhash64",
            },
        },
        ChecksumXXHASH3 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-xxhash3",
            },
        },
        ChecksumXXHASH128 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-xxhash128",
            },
        },
        ChecksumType = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-type",
            },
        },
        MpuObjectSize = {
            type = "long",
            traits = {
                http_header = "x-amz-mp-object-size",
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
        IfNoneMatch = {
            type = "string",
            traits = {
                http_header = "If-None-Match",
            },
        },
        SSECustomerAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-algorithm",
            },
        },
        SSECustomerKey = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key",
            },
        },
        SSECustomerKeyMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key-MD5",
            },
        },
    },
}

M.ServerSideEncryption = {
    AES256 = "AES256",
    aws_fsx = "aws:fsx",
    aws_kms = "aws:kms",
    aws_kms_dsse = "aws:kms:dsse",
}

M.CompleteMultipartUploadOutput = {
    type = "structure",
    id = "CompleteMultipartUploadOutput",
    traits = {
        xml_name = "CompleteMultipartUploadResult",
    },
    members = {
        Location = {
            type = "string",
        },
        Bucket = {
            type = "string",
        },
        Key = {
            type = "string",
        },
        Expiration = {
            type = "string",
            traits = {
                http_header = "x-amz-expiration",
            },
        },
        ETag = {
            type = "string",
        },
        ChecksumCRC32 = {
            type = "string",
        },
        ChecksumCRC32C = {
            type = "string",
        },
        ChecksumCRC64NVME = {
            type = "string",
        },
        ChecksumSHA1 = {
            type = "string",
        },
        ChecksumSHA256 = {
            type = "string",
        },
        ChecksumSHA512 = {
            type = "string",
        },
        ChecksumMD5 = {
            type = "string",
        },
        ChecksumXXHASH64 = {
            type = "string",
        },
        ChecksumXXHASH3 = {
            type = "string",
        },
        ChecksumXXHASH128 = {
            type = "string",
        },
        ChecksumType = {
            type = "string",
        },
        ServerSideEncryption = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption",
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_header = "x-amz-version-id",
            },
        },
        SSEKMSKeyId = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-aws-kms-key-id",
            },
        },
        BucketKeyEnabled = {
            type = "boolean",
            traits = {
                http_header = "x-amz-server-side-encryption-bucket-key-enabled",
            },
        },
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
    },
}

M.ObjectCannedACL = {
    private = "private",
    public_read = "public-read",
    public_read_write = "public-read-write",
    authenticated_read = "authenticated-read",
    aws_exec_read = "aws-exec-read",
    bucket_owner_read = "bucket-owner-read",
    bucket_owner_full_control = "bucket-owner-full-control",
}

M.ChecksumAlgorithm = {
    CRC32 = "CRC32",
    CRC32C = "CRC32C",
    SHA1 = "SHA1",
    SHA256 = "SHA256",
    CRC64NVME = "CRC64NVME",
    SHA512 = "SHA512",
    MD5 = "MD5",
    XXHASH64 = "XXHASH64",
    XXHASH3 = "XXHASH3",
    XXHASH128 = "XXHASH128",
}

M.MetadataDirective = {
    COPY = "COPY",
    REPLACE = "REPLACE",
}

M.ObjectLockLegalHoldStatus = {
    ON = "ON",
    OFF = "OFF",
}

M.ObjectLockMode = {
    GOVERNANCE = "GOVERNANCE",
    COMPLIANCE = "COMPLIANCE",
}

M.StorageClass = {
    STANDARD = "STANDARD",
    REDUCED_REDUNDANCY = "REDUCED_REDUNDANCY",
    STANDARD_IA = "STANDARD_IA",
    ONEZONE_IA = "ONEZONE_IA",
    INTELLIGENT_TIERING = "INTELLIGENT_TIERING",
    GLACIER = "GLACIER",
    DEEP_ARCHIVE = "DEEP_ARCHIVE",
    OUTPOSTS = "OUTPOSTS",
    GLACIER_IR = "GLACIER_IR",
    SNOW = "SNOW",
    EXPRESS_ONEZONE = "EXPRESS_ONEZONE",
    FSX_OPENZFS = "FSX_OPENZFS",
    FSX_ONTAP = "FSX_ONTAP",
}

M.TaggingDirective = {
    COPY = "COPY",
    REPLACE = "REPLACE",
}

M.CopyObjectInput = {
    type = "structure",
    id = "CopyObjectInput",
    members = {
        ACL = {
            type = "string",
            traits = {
                http_header = "x-amz-acl",
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-algorithm",
            },
        },
        ContentDisposition = {
            type = "string",
            traits = {
                http_header = "Content-Disposition",
            },
        },
        ContentEncoding = {
            type = "string",
            traits = {
                http_header = "Content-Encoding",
            },
        },
        ContentLanguage = {
            type = "string",
            traits = {
                http_header = "Content-Language",
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        CopySource = {
            type = "string",
            traits = {
                http_header = "x-amz-copy-source",
                required = true,
            },
        },
        CopySourceIfMatch = {
            type = "string",
            traits = {
                http_header = "x-amz-copy-source-if-match",
            },
        },
        CopySourceIfModifiedSince = {
            type = "timestamp",
            traits = {
                http_header = "x-amz-copy-source-if-modified-since",
            },
        },
        CopySourceIfNoneMatch = {
            type = "string",
            traits = {
                http_header = "x-amz-copy-source-if-none-match",
            },
        },
        CopySourceIfUnmodifiedSince = {
            type = "timestamp",
            traits = {
                http_header = "x-amz-copy-source-if-unmodified-since",
            },
        },
        Expires = {
            type = "string",
            traits = {
                http_header = "Expires",
            },
        },
        GrantFullControl = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-full-control",
            },
        },
        GrantRead = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-read",
            },
        },
        GrantReadACP = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-read-acp",
            },
        },
        GrantWriteACP = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-write-acp",
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
        IfNoneMatch = {
            type = "string",
            traits = {
                http_header = "If-None-Match",
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                http_prefix_headers = "x-amz-meta-",
            },
        },
        MetadataDirective = {
            type = "string",
            traits = {
                http_header = "x-amz-metadata-directive",
            },
        },
        TaggingDirective = {
            type = "string",
            traits = {
                http_header = "x-amz-tagging-directive",
            },
        },
        ServerSideEncryption = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption",
            },
        },
        StorageClass = {
            type = "string",
            traits = {
                http_header = "x-amz-storage-class",
            },
        },
        WebsiteRedirectLocation = {
            type = "string",
            traits = {
                http_header = "x-amz-website-redirect-location",
            },
        },
        SSECustomerAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-algorithm",
            },
        },
        SSECustomerKey = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key",
            },
        },
        SSECustomerKeyMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key-MD5",
            },
        },
        SSEKMSKeyId = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-aws-kms-key-id",
            },
        },
        SSEKMSEncryptionContext = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-context",
            },
        },
        BucketKeyEnabled = {
            type = "boolean",
            traits = {
                http_header = "x-amz-server-side-encryption-bucket-key-enabled",
            },
        },
        CopySourceSSECustomerAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-copy-source-server-side-encryption-customer-algorithm",
            },
        },
        CopySourceSSECustomerKey = {
            type = "string",
            traits = {
                http_header = "x-amz-copy-source-server-side-encryption-customer-key",
            },
        },
        CopySourceSSECustomerKeyMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-copy-source-server-side-encryption-customer-key-MD5",
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        Tagging = {
            type = "string",
            traits = {
                http_header = "x-amz-tagging",
            },
        },
        ObjectLockMode = {
            type = "string",
            traits = {
                http_header = "x-amz-object-lock-mode",
            },
        },
        ObjectLockRetainUntilDate = {
            type = "timestamp",
            traits = {
                http_header = "x-amz-object-lock-retain-until-date",
                timestamp_format = "date-time",
            },
        },
        ObjectLockLegalHoldStatus = {
            type = "string",
            traits = {
                http_header = "x-amz-object-lock-legal-hold",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        ExpectedSourceBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-source-expected-bucket-owner",
            },
        },
    },
}

M.CopyObjectResult = {
    type = "structure",
    id = "CopyObjectResult",
    members = {
        ETag = {
            type = "string",
        },
        LastModified = {
            type = "timestamp",
        },
        ChecksumType = {
            type = "string",
        },
        ChecksumCRC32 = {
            type = "string",
        },
        ChecksumCRC32C = {
            type = "string",
        },
        ChecksumCRC64NVME = {
            type = "string",
        },
        ChecksumSHA1 = {
            type = "string",
        },
        ChecksumSHA256 = {
            type = "string",
        },
        ChecksumSHA512 = {
            type = "string",
        },
        ChecksumMD5 = {
            type = "string",
        },
        ChecksumXXHASH64 = {
            type = "string",
        },
        ChecksumXXHASH3 = {
            type = "string",
        },
        ChecksumXXHASH128 = {
            type = "string",
        },
    },
}

M.CopyObjectOutput = {
    type = "structure",
    id = "CopyObjectOutput",
    members = {
        CopyObjectResult = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.CopyObjectResult }),
        Expiration = {
            type = "string",
            traits = {
                http_header = "x-amz-expiration",
            },
        },
        CopySourceVersionId = {
            type = "string",
            traits = {
                http_header = "x-amz-copy-source-version-id",
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_header = "x-amz-version-id",
            },
        },
        ServerSideEncryption = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption",
            },
        },
        SSECustomerAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-algorithm",
            },
        },
        SSECustomerKeyMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key-MD5",
            },
        },
        SSEKMSKeyId = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-aws-kms-key-id",
            },
        },
        SSEKMSEncryptionContext = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-context",
            },
        },
        BucketKeyEnabled = {
            type = "boolean",
            traits = {
                http_header = "x-amz-server-side-encryption-bucket-key-enabled",
            },
        },
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
    },
}

M.ObjectNotInActiveTierError = {
    type = "structure",
    id = "ObjectNotInActiveTierError",
    error = "client",
}

M.BucketAlreadyExists = {
    type = "structure",
    id = "BucketAlreadyExists",
    error = "client",
}

M.BucketAlreadyOwnedByYou = {
    type = "structure",
    id = "BucketAlreadyOwnedByYou",
    error = "client",
}

M.BucketCannedACL = {
    private = "private",
    public_read = "public-read",
    public_read_write = "public-read-write",
    authenticated_read = "authenticated-read",
}

M.BucketNamespace = {
    ACCOUNT_REGIONAL = "account-regional",
    GLOBAL = "global",
}

M.DataRedundancy = {
    SingleAvailabilityZone = "SingleAvailabilityZone",
    SingleLocalZone = "SingleLocalZone",
}

M.BucketType = {
    Directory = "Directory",
}

M.BucketInfo = {
    type = "structure",
    id = "BucketInfo",
    members = {
        DataRedundancy = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.LocationType = {
    AvailabilityZone = "AvailabilityZone",
    LocalZone = "LocalZone",
}

M.LocationInfo = {
    type = "structure",
    id = "LocationInfo",
    members = {
        Type = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.BucketLocationConstraint = {
    af_south_1 = "af-south-1",
    ap_east_1 = "ap-east-1",
    ap_east_2 = "ap-east-2",
    ap_northeast_1 = "ap-northeast-1",
    ap_northeast_2 = "ap-northeast-2",
    ap_northeast_3 = "ap-northeast-3",
    ap_south_1 = "ap-south-1",
    ap_south_2 = "ap-south-2",
    ap_southeast_1 = "ap-southeast-1",
    ap_southeast_2 = "ap-southeast-2",
    ap_southeast_3 = "ap-southeast-3",
    ap_southeast_4 = "ap-southeast-4",
    ap_southeast_5 = "ap-southeast-5",
    ap_southeast_6 = "ap-southeast-6",
    ap_southeast_7 = "ap-southeast-7",
    ca_central_1 = "ca-central-1",
    ca_west_1 = "ca-west-1",
    cn_north_1 = "cn-north-1",
    cn_northwest_1 = "cn-northwest-1",
    EU = "EU",
    eu_central_1 = "eu-central-1",
    eu_central_2 = "eu-central-2",
    eu_north_1 = "eu-north-1",
    eu_south_1 = "eu-south-1",
    eu_south_2 = "eu-south-2",
    eu_west_1 = "eu-west-1",
    eu_west_2 = "eu-west-2",
    eu_west_3 = "eu-west-3",
    il_central_1 = "il-central-1",
    me_central_1 = "me-central-1",
    me_south_1 = "me-south-1",
    mx_central_1 = "mx-central-1",
    sa_east_1 = "sa-east-1",
    us_east_2 = "us-east-2",
    us_gov_east_1 = "us-gov-east-1",
    us_gov_west_1 = "us-gov-west-1",
    us_west_1 = "us-west-1",
    us_west_2 = "us-west-2",
}

M.Tag = {
    type = "structure",
    id = "Tag",
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

M.CreateBucketConfiguration = {
    type = "structure",
    id = "CreateBucketConfiguration",
    members = {
        LocationConstraint = {
            type = "string",
        },
        Location = M.LocationInfo,
        Bucket = M.BucketInfo,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ObjectOwnership = {
    BucketOwnerPreferred = "BucketOwnerPreferred",
    ObjectWriter = "ObjectWriter",
    BucketOwnerEnforced = "BucketOwnerEnforced",
}

M.CreateBucketInput = {
    type = "structure",
    id = "CreateBucketInput",
    members = {
        ACL = {
            type = "string",
            traits = {
                http_header = "x-amz-acl",
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CreateBucketConfiguration = setmetatable({ traits = {
            http_payload = true,
            xml_name = "CreateBucketConfiguration",
        } }, { __index = M.CreateBucketConfiguration }),
        GrantFullControl = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-full-control",
            },
        },
        GrantRead = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-read",
            },
        },
        GrantReadACP = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-read-acp",
            },
        },
        GrantWrite = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-write",
            },
        },
        GrantWriteACP = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-write-acp",
            },
        },
        ObjectLockEnabledForBucket = {
            type = "boolean",
            traits = {
                http_header = "x-amz-bucket-object-lock-enabled",
            },
        },
        ObjectOwnership = {
            type = "string",
            traits = {
                http_header = "x-amz-object-ownership",
            },
        },
        BucketNamespace = {
            type = "string",
            traits = {
                http_header = "x-amz-bucket-namespace",
            },
        },
    },
}

M.CreateBucketOutput = {
    type = "structure",
    id = "CreateBucketOutput",
    members = {
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        BucketArn = {
            type = "string",
            traits = {
                http_header = "x-amz-bucket-arn",
            },
        },
    },
}

M.InventoryConfigurationState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.TableSseAlgorithm = {
    aws_kms = "aws:kms",
    AES256 = "AES256",
}

M.MetadataTableEncryptionConfiguration = {
    type = "structure",
    id = "MetadataTableEncryptionConfiguration",
    members = {
        SseAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyArn = {
            type = "string",
        },
    },
}

M.InventoryTableConfiguration = {
    type = "structure",
    id = "InventoryTableConfiguration",
    members = {
        ConfigurationState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionConfiguration = M.MetadataTableEncryptionConfiguration,
    },
}

M.ExpirationState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.RecordExpiration = {
    type = "structure",
    id = "RecordExpiration",
    members = {
        Expiration = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Days = {
            type = "integer",
        },
    },
}

M.JournalTableConfiguration = {
    type = "structure",
    id = "JournalTableConfiguration",
    members = {
        RecordExpiration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecordExpiration }),
        EncryptionConfiguration = M.MetadataTableEncryptionConfiguration,
    },
}

M.MetadataConfiguration = {
    type = "structure",
    id = "MetadataConfiguration",
    members = {
        JournalTableConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JournalTableConfiguration }),
        InventoryTableConfiguration = M.InventoryTableConfiguration,
    },
}

M.CreateBucketMetadataConfigurationInput = {
    type = "structure",
    id = "CreateBucketMetadataConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        MetadataConfiguration = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "MetadataConfiguration",
        } }, { __index = M.MetadataConfiguration }),
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.CreateBucketMetadataConfigurationOutput = {
    type = "structure",
    id = "CreateBucketMetadataConfigurationOutput",
}

M.S3TablesDestination = {
    type = "structure",
    id = "S3TablesDestination",
    members = {
        TableBucketArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetadataTableConfiguration = {
    type = "structure",
    id = "MetadataTableConfiguration",
    members = {
        S3TablesDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3TablesDestination }),
    },
}

M.CreateBucketMetadataTableConfigurationInput = {
    type = "structure",
    id = "CreateBucketMetadataTableConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        MetadataTableConfiguration = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "MetadataTableConfiguration",
        } }, { __index = M.MetadataTableConfiguration }),
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.CreateBucketMetadataTableConfigurationOutput = {
    type = "structure",
    id = "CreateBucketMetadataTableConfigurationOutput",
}

M.CreateMultipartUploadInput = {
    type = "structure",
    id = "CreateMultipartUploadInput",
    members = {
        ACL = {
            type = "string",
            traits = {
                http_header = "x-amz-acl",
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
        ContentDisposition = {
            type = "string",
            traits = {
                http_header = "Content-Disposition",
            },
        },
        ContentEncoding = {
            type = "string",
            traits = {
                http_header = "Content-Encoding",
            },
        },
        ContentLanguage = {
            type = "string",
            traits = {
                http_header = "Content-Language",
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        Expires = {
            type = "string",
            traits = {
                http_header = "Expires",
            },
        },
        GrantFullControl = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-full-control",
            },
        },
        GrantRead = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-read",
            },
        },
        GrantReadACP = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-read-acp",
            },
        },
        GrantWriteACP = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-write-acp",
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                http_prefix_headers = "x-amz-meta-",
            },
        },
        ServerSideEncryption = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption",
            },
        },
        StorageClass = {
            type = "string",
            traits = {
                http_header = "x-amz-storage-class",
            },
        },
        WebsiteRedirectLocation = {
            type = "string",
            traits = {
                http_header = "x-amz-website-redirect-location",
            },
        },
        SSECustomerAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-algorithm",
            },
        },
        SSECustomerKey = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key",
            },
        },
        SSECustomerKeyMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key-MD5",
            },
        },
        SSEKMSKeyId = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-aws-kms-key-id",
            },
        },
        SSEKMSEncryptionContext = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-context",
            },
        },
        BucketKeyEnabled = {
            type = "boolean",
            traits = {
                http_header = "x-amz-server-side-encryption-bucket-key-enabled",
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        Tagging = {
            type = "string",
            traits = {
                http_header = "x-amz-tagging",
            },
        },
        ObjectLockMode = {
            type = "string",
            traits = {
                http_header = "x-amz-object-lock-mode",
            },
        },
        ObjectLockRetainUntilDate = {
            type = "timestamp",
            traits = {
                http_header = "x-amz-object-lock-retain-until-date",
                timestamp_format = "date-time",
            },
        },
        ObjectLockLegalHoldStatus = {
            type = "string",
            traits = {
                http_header = "x-amz-object-lock-legal-hold",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-algorithm",
            },
        },
        ChecksumType = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-type",
            },
        },
    },
}

M.CreateMultipartUploadOutput = {
    type = "structure",
    id = "CreateMultipartUploadOutput",
    traits = {
        xml_name = "InitiateMultipartUploadResult",
    },
    members = {
        AbortDate = {
            type = "timestamp",
            traits = {
                http_header = "x-amz-abort-date",
            },
        },
        AbortRuleId = {
            type = "string",
            traits = {
                http_header = "x-amz-abort-rule-id",
            },
        },
        Bucket = {
            type = "string",
            traits = {
                xml_name = "Bucket",
            },
        },
        Key = {
            type = "string",
        },
        UploadId = {
            type = "string",
        },
        ServerSideEncryption = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption",
            },
        },
        SSECustomerAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-algorithm",
            },
        },
        SSECustomerKeyMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key-MD5",
            },
        },
        SSEKMSKeyId = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-aws-kms-key-id",
            },
        },
        SSEKMSEncryptionContext = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-context",
            },
        },
        BucketKeyEnabled = {
            type = "boolean",
            traits = {
                http_header = "x-amz-server-side-encryption-bucket-key-enabled",
            },
        },
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-algorithm",
            },
        },
        ChecksumType = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-type",
            },
        },
    },
}

M.SessionMode = {
    ReadOnly = "ReadOnly",
    ReadWrite = "ReadWrite",
}

M.CreateSessionInput = {
    type = "structure",
    id = "CreateSessionInput",
    members = {
        SessionMode = {
            type = "string",
            traits = {
                http_header = "x-amz-create-session-mode",
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ServerSideEncryption = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption",
            },
        },
        SSEKMSKeyId = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-aws-kms-key-id",
            },
        },
        SSEKMSEncryptionContext = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-context",
            },
        },
        BucketKeyEnabled = {
            type = "boolean",
            traits = {
                http_header = "x-amz-server-side-encryption-bucket-key-enabled",
            },
        },
    },
}

M.SessionCredentials = {
    type = "structure",
    id = "SessionCredentials",
    members = {
        AccessKeyId = {
            type = "string",
            traits = {
                required = true,
                xml_name = "AccessKeyId",
            },
        },
        SecretAccessKey = {
            type = "string",
            traits = {
                required = true,
                xml_name = "SecretAccessKey",
            },
        },
        SessionToken = {
            type = "string",
            traits = {
                required = true,
                xml_name = "SessionToken",
            },
        },
        Expiration = {
            type = "timestamp",
            traits = {
                required = true,
                xml_name = "Expiration",
            },
        },
    },
}

M.CreateSessionOutput = {
    type = "structure",
    id = "CreateSessionOutput",
    traits = {
        xml_name = "CreateSessionResult",
    },
    members = {
        ServerSideEncryption = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption",
            },
        },
        SSEKMSKeyId = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-aws-kms-key-id",
            },
        },
        SSEKMSEncryptionContext = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-context",
            },
        },
        BucketKeyEnabled = {
            type = "boolean",
            traits = {
                http_header = "x-amz-server-side-encryption-bucket-key-enabled",
            },
        },
        Credentials = setmetatable({ traits = {
            required = true,
            xml_name = "Credentials",
        } }, { __index = M.SessionCredentials }),
    },
}

M.NoSuchBucket = {
    type = "structure",
    id = "NoSuchBucket",
    error = "client",
}

M.DeleteBucketInput = {
    type = "structure",
    id = "DeleteBucketInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.DeleteBucketOutput = {
    type = "structure",
    id = "DeleteBucketOutput",
}

M.DeleteBucketAnalyticsConfigurationInput = {
    type = "structure",
    id = "DeleteBucketAnalyticsConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.DeleteBucketAnalyticsConfigurationOutput = {
    type = "structure",
    id = "DeleteBucketAnalyticsConfigurationOutput",
}

M.DeleteBucketCorsInput = {
    type = "structure",
    id = "DeleteBucketCorsInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.DeleteBucketCorsOutput = {
    type = "structure",
    id = "DeleteBucketCorsOutput",
}

M.DeleteBucketEncryptionInput = {
    type = "structure",
    id = "DeleteBucketEncryptionInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.DeleteBucketEncryptionOutput = {
    type = "structure",
    id = "DeleteBucketEncryptionOutput",
}

M.DeleteBucketIntelligentTieringConfigurationInput = {
    type = "structure",
    id = "DeleteBucketIntelligentTieringConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.DeleteBucketIntelligentTieringConfigurationOutput = {
    type = "structure",
    id = "DeleteBucketIntelligentTieringConfigurationOutput",
}

M.DeleteBucketInventoryConfigurationInput = {
    type = "structure",
    id = "DeleteBucketInventoryConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.DeleteBucketInventoryConfigurationOutput = {
    type = "structure",
    id = "DeleteBucketInventoryConfigurationOutput",
}

M.DeleteBucketLifecycleInput = {
    type = "structure",
    id = "DeleteBucketLifecycleInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.DeleteBucketLifecycleOutput = {
    type = "structure",
    id = "DeleteBucketLifecycleOutput",
}

M.DeleteBucketMetadataConfigurationInput = {
    type = "structure",
    id = "DeleteBucketMetadataConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.DeleteBucketMetadataConfigurationOutput = {
    type = "structure",
    id = "DeleteBucketMetadataConfigurationOutput",
}

M.DeleteBucketMetadataTableConfigurationInput = {
    type = "structure",
    id = "DeleteBucketMetadataTableConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.DeleteBucketMetadataTableConfigurationOutput = {
    type = "structure",
    id = "DeleteBucketMetadataTableConfigurationOutput",
}

M.DeleteBucketMetricsConfigurationInput = {
    type = "structure",
    id = "DeleteBucketMetricsConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.DeleteBucketMetricsConfigurationOutput = {
    type = "structure",
    id = "DeleteBucketMetricsConfigurationOutput",
}

M.DeleteBucketOwnershipControlsInput = {
    type = "structure",
    id = "DeleteBucketOwnershipControlsInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.DeleteBucketOwnershipControlsOutput = {
    type = "structure",
    id = "DeleteBucketOwnershipControlsOutput",
}

M.DeleteBucketPolicyInput = {
    type = "structure",
    id = "DeleteBucketPolicyInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.DeleteBucketPolicyOutput = {
    type = "structure",
    id = "DeleteBucketPolicyOutput",
}

M.DeleteBucketReplicationInput = {
    type = "structure",
    id = "DeleteBucketReplicationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.DeleteBucketReplicationOutput = {
    type = "structure",
    id = "DeleteBucketReplicationOutput",
}

M.DeleteBucketTaggingInput = {
    type = "structure",
    id = "DeleteBucketTaggingInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.DeleteBucketTaggingOutput = {
    type = "structure",
    id = "DeleteBucketTaggingOutput",
}

M.DeleteBucketWebsiteInput = {
    type = "structure",
    id = "DeleteBucketWebsiteInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.DeleteBucketWebsiteOutput = {
    type = "structure",
    id = "DeleteBucketWebsiteOutput",
}

M.DeleteObjectInput = {
    type = "structure",
    id = "DeleteObjectInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MFA = {
            type = "string",
            traits = {
                http_header = "x-amz-mfa",
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_query = "versionId",
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        BypassGovernanceRetention = {
            type = "boolean",
            traits = {
                http_header = "x-amz-bypass-governance-retention",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
        IfMatchLastModifiedTime = {
            type = "timestamp",
            traits = {
                http_header = "x-amz-if-match-last-modified-time",
                timestamp_format = "http-date",
            },
        },
        IfMatchSize = {
            type = "long",
            traits = {
                http_header = "x-amz-if-match-size",
            },
        },
    },
}

M.DeleteObjectOutput = {
    type = "structure",
    id = "DeleteObjectOutput",
    members = {
        DeleteMarker = {
            type = "boolean",
            traits = {
                http_header = "x-amz-delete-marker",
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_header = "x-amz-version-id",
            },
        },
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
    },
}

M.ObjectIdentifier = {
    type = "structure",
    id = "ObjectIdentifier",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionId = {
            type = "string",
        },
        ETag = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "http-date",
            },
        },
        Size = {
            type = "long",
        },
    },
}

M.Delete = {
    type = "structure",
    id = "Delete",
    members = {
        Objects = {
            type = "list",
            member = M.ObjectIdentifier,
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "Object",
            },
        },
        Quiet = {
            type = "boolean",
        },
    },
}

M.DeleteObjectsInput = {
    type = "structure",
    id = "DeleteObjectsInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Delete = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "Delete",
        } }, { __index = M.Delete }),
        MFA = {
            type = "string",
            traits = {
                http_header = "x-amz-mfa",
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        BypassGovernanceRetention = {
            type = "boolean",
            traits = {
                http_header = "x-amz-bypass-governance-retention",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
    },
}

M.DeletedObject = {
    type = "structure",
    id = "DeletedObject",
    members = {
        Key = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
        DeleteMarker = {
            type = "boolean",
        },
        DeleteMarkerVersionId = {
            type = "string",
        },
    },
}

M.Error = {
    type = "structure",
    id = "Error",
    members = {
        Key = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.DeleteObjectsOutput = {
    type = "structure",
    id = "DeleteObjectsOutput",
    traits = {
        xml_name = "DeleteResult",
    },
    members = {
        Deleted = {
            type = "list",
            member = M.DeletedObject,
            traits = {
                xml_flattened = true,
            },
        },
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
        Errors = {
            type = "list",
            member = M.Error,
            traits = {
                xml_flattened = true,
                xml_name = "Error",
            },
        },
    },
}

M.DeleteObjectTaggingInput = {
    type = "structure",
    id = "DeleteObjectTaggingInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_query = "versionId",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.DeleteObjectTaggingOutput = {
    type = "structure",
    id = "DeleteObjectTaggingOutput",
    members = {
        VersionId = {
            type = "string",
            traits = {
                http_header = "x-amz-version-id",
            },
        },
    },
}

M.DeletePublicAccessBlockInput = {
    type = "structure",
    id = "DeletePublicAccessBlockInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.DeletePublicAccessBlockOutput = {
    type = "structure",
    id = "DeletePublicAccessBlockOutput",
}

M.GetBucketAbacInput = {
    type = "structure",
    id = "GetBucketAbacInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.GetBucketAbacOutput = {
    type = "structure",
    id = "GetBucketAbacOutput",
    members = {
        AbacStatus = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.AbacStatus }),
    },
}

M.GetBucketAccelerateConfigurationInput = {
    type = "structure",
    id = "GetBucketAccelerateConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
    },
}

M.GetBucketAccelerateConfigurationOutput = {
    type = "structure",
    id = "GetBucketAccelerateConfigurationOutput",
    traits = {
        xml_name = "AccelerateConfiguration",
    },
    members = {
        Status = {
            type = "string",
        },
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
    },
}

M.GetBucketAclInput = {
    type = "structure",
    id = "GetBucketAclInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.GetBucketAclOutput = {
    type = "structure",
    id = "GetBucketAclOutput",
    traits = {
        xml_name = "AccessControlPolicy",
    },
    members = {
        Owner = M.Owner,
        Grants = {
            type = "list",
            member = M.Grant,
            traits = {
                xml_name = "AccessControlList",
            },
        },
    },
}

M.GetBucketAnalyticsConfigurationInput = {
    type = "structure",
    id = "GetBucketAnalyticsConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.AnalyticsAndOperator = {
    type = "structure",
    id = "AnalyticsAndOperator",
    members = {
        Prefix = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                xml_flattened = true,
                xml_name = "Tag",
            },
        },
    },
}

M.AnalyticsFilter = {
    type = "union",
    id = "AnalyticsFilter",
    members = {
        Prefix = {
            type = "string",
        },
        Tag = M.Tag,
        And = M.AnalyticsAndOperator,
    },
}

M.AnalyticsS3ExportFileFormat = {
    CSV = "CSV",
}

M.AnalyticsS3BucketDestination = {
    type = "structure",
    id = "AnalyticsS3BucketDestination",
    members = {
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BucketAccountId = {
            type = "string",
        },
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Prefix = {
            type = "string",
        },
    },
}

M.AnalyticsExportDestination = {
    type = "structure",
    id = "AnalyticsExportDestination",
    members = {
        S3BucketDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnalyticsS3BucketDestination }),
    },
}

M.StorageClassAnalysisSchemaVersion = {
    V_1 = "V_1",
}

M.StorageClassAnalysisDataExport = {
    type = "structure",
    id = "StorageClassAnalysisDataExport",
    members = {
        OutputSchemaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AnalyticsExportDestination }),
    },
}

M.StorageClassAnalysis = {
    type = "structure",
    id = "StorageClassAnalysis",
    members = {
        DataExport = M.StorageClassAnalysisDataExport,
    },
}

M.AnalyticsConfiguration = {
    type = "structure",
    id = "AnalyticsConfiguration",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filter = M.AnalyticsFilter,
        StorageClassAnalysis = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StorageClassAnalysis }),
    },
}

M.GetBucketAnalyticsConfigurationOutput = {
    type = "structure",
    id = "GetBucketAnalyticsConfigurationOutput",
    members = {
        AnalyticsConfiguration = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.AnalyticsConfiguration }),
    },
}

M.GetBucketCorsInput = {
    type = "structure",
    id = "GetBucketCorsInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.CORSRule = {
    type = "structure",
    id = "CORSRule",
    members = {
        ID = {
            type = "string",
        },
        AllowedHeaders = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_flattened = true,
                xml_name = "AllowedHeader",
            },
        },
        AllowedMethods = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "AllowedMethod",
            },
        },
        AllowedOrigins = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "AllowedOrigin",
            },
        },
        ExposeHeaders = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_flattened = true,
                xml_name = "ExposeHeader",
            },
        },
        MaxAgeSeconds = {
            type = "integer",
        },
    },
}

M.GetBucketCorsOutput = {
    type = "structure",
    id = "GetBucketCorsOutput",
    traits = {
        xml_name = "CORSConfiguration",
    },
    members = {
        CORSRules = {
            type = "list",
            member = M.CORSRule,
            traits = {
                xml_flattened = true,
                xml_name = "CORSRule",
            },
        },
    },
}

M.GetBucketEncryptionInput = {
    type = "structure",
    id = "GetBucketEncryptionInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.ServerSideEncryptionByDefault = {
    type = "structure",
    id = "ServerSideEncryptionByDefault",
    members = {
        SSEAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KMSMasterKeyID = {
            type = "string",
        },
    },
}

M.EncryptionType = {
    NONE = "NONE",
    SSE_C = "SSE-C",
}

M.BlockedEncryptionTypes = {
    type = "structure",
    id = "BlockedEncryptionTypes",
    members = {
        EncryptionType = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_flattened = true,
            },
        },
    },
}

M.ServerSideEncryptionRule = {
    type = "structure",
    id = "ServerSideEncryptionRule",
    members = {
        ApplyServerSideEncryptionByDefault = M.ServerSideEncryptionByDefault,
        BucketKeyEnabled = {
            type = "boolean",
        },
        BlockedEncryptionTypes = M.BlockedEncryptionTypes,
    },
}

M.ServerSideEncryptionConfiguration = {
    type = "structure",
    id = "ServerSideEncryptionConfiguration",
    members = {
        Rules = {
            type = "list",
            member = M.ServerSideEncryptionRule,
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "Rule",
            },
        },
    },
}

M.GetBucketEncryptionOutput = {
    type = "structure",
    id = "GetBucketEncryptionOutput",
    members = {
        ServerSideEncryptionConfiguration = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ServerSideEncryptionConfiguration }),
    },
}

M.GetBucketIntelligentTieringConfigurationInput = {
    type = "structure",
    id = "GetBucketIntelligentTieringConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.IntelligentTieringAndOperator = {
    type = "structure",
    id = "IntelligentTieringAndOperator",
    members = {
        Prefix = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                xml_flattened = true,
                xml_name = "Tag",
            },
        },
    },
}

M.IntelligentTieringFilter = {
    type = "structure",
    id = "IntelligentTieringFilter",
    members = {
        Prefix = {
            type = "string",
        },
        Tag = M.Tag,
        And = M.IntelligentTieringAndOperator,
    },
}

M.IntelligentTieringStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.IntelligentTieringAccessTier = {
    ARCHIVE_ACCESS = "ARCHIVE_ACCESS",
    DEEP_ARCHIVE_ACCESS = "DEEP_ARCHIVE_ACCESS",
}

M.Tiering = {
    type = "structure",
    id = "Tiering",
    members = {
        Days = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        AccessTier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IntelligentTieringConfiguration = {
    type = "structure",
    id = "IntelligentTieringConfiguration",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filter = M.IntelligentTieringFilter,
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tierings = {
            type = "list",
            member = M.Tiering,
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "Tiering",
            },
        },
    },
}

M.GetBucketIntelligentTieringConfigurationOutput = {
    type = "structure",
    id = "GetBucketIntelligentTieringConfigurationOutput",
    members = {
        IntelligentTieringConfiguration = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.IntelligentTieringConfiguration }),
    },
}

M.GetBucketInventoryConfigurationInput = {
    type = "structure",
    id = "GetBucketInventoryConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.SSEKMS = {
    type = "structure",
    id = "SSEKMS",
    traits = {
        xml_name = "SSE-KMS",
    },
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SSES3 = {
    type = "structure",
    id = "SSES3",
    traits = {
        xml_name = "SSE-S3",
    },
}

M.InventoryEncryption = {
    type = "structure",
    id = "InventoryEncryption",
    members = {
        SSES3 = setmetatable({ traits = {
            xml_name = "SSE-S3",
        } }, { __index = M.SSES3 }),
        SSEKMS = setmetatable({ traits = {
            xml_name = "SSE-KMS",
        } }, { __index = M.SSEKMS }),
    },
}

M.InventoryFormat = {
    CSV = "CSV",
    ORC = "ORC",
    Parquet = "Parquet",
}

M.InventoryS3BucketDestination = {
    type = "structure",
    id = "InventoryS3BucketDestination",
    members = {
        AccountId = {
            type = "string",
        },
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Prefix = {
            type = "string",
        },
        Encryption = M.InventoryEncryption,
    },
}

M.InventoryDestination = {
    type = "structure",
    id = "InventoryDestination",
    members = {
        S3BucketDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InventoryS3BucketDestination }),
    },
}

M.InventoryFilter = {
    type = "structure",
    id = "InventoryFilter",
    members = {
        Prefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InventoryIncludedObjectVersions = {
    All = "All",
    Current = "Current",
}

M.InventoryOptionalField = {
    Size = "Size",
    LastModifiedDate = "LastModifiedDate",
    StorageClass = "StorageClass",
    ETag = "ETag",
    IsMultipartUploaded = "IsMultipartUploaded",
    ReplicationStatus = "ReplicationStatus",
    EncryptionStatus = "EncryptionStatus",
    ObjectLockRetainUntilDate = "ObjectLockRetainUntilDate",
    ObjectLockMode = "ObjectLockMode",
    ObjectLockLegalHoldStatus = "ObjectLockLegalHoldStatus",
    IntelligentTieringAccessTier = "IntelligentTieringAccessTier",
    BucketKeyStatus = "BucketKeyStatus",
    ChecksumAlgorithm = "ChecksumAlgorithm",
    ObjectAccessControlList = "ObjectAccessControlList",
    ObjectOwner = "ObjectOwner",
    LifecycleExpirationDate = "LifecycleExpirationDate",
}

M.InventoryFrequency = {
    Daily = "Daily",
    Weekly = "Weekly",
}

M.InventorySchedule = {
    type = "structure",
    id = "InventorySchedule",
    members = {
        Frequency = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InventoryConfiguration = {
    type = "structure",
    id = "InventoryConfiguration",
    members = {
        Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InventoryDestination }),
        IsEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Filter = M.InventoryFilter,
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncludedObjectVersions = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OptionalFields = {
            type = "list",
            member = { type = "string" },
        },
        Schedule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InventorySchedule }),
    },
}

M.GetBucketInventoryConfigurationOutput = {
    type = "structure",
    id = "GetBucketInventoryConfigurationOutput",
    members = {
        InventoryConfiguration = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.InventoryConfiguration }),
    },
}

M.GetBucketLifecycleConfigurationInput = {
    type = "structure",
    id = "GetBucketLifecycleConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.LifecycleExpiration = {
    type = "structure",
    id = "LifecycleExpiration",
    members = {
        Date = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Days = {
            type = "integer",
        },
        ExpiredObjectDeleteMarker = {
            type = "boolean",
        },
    },
}

M.LifecycleRuleAndOperator = {
    type = "structure",
    id = "LifecycleRuleAndOperator",
    members = {
        Prefix = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                xml_flattened = true,
                xml_name = "Tag",
            },
        },
        ObjectSizeGreaterThan = {
            type = "long",
        },
        ObjectSizeLessThan = {
            type = "long",
        },
    },
}

M.LifecycleRuleFilter = {
    type = "structure",
    id = "LifecycleRuleFilter",
    members = {
        Prefix = {
            type = "string",
        },
        Tag = M.Tag,
        ObjectSizeGreaterThan = {
            type = "long",
        },
        ObjectSizeLessThan = {
            type = "long",
        },
        And = M.LifecycleRuleAndOperator,
    },
}

M.NoncurrentVersionExpiration = {
    type = "structure",
    id = "NoncurrentVersionExpiration",
    members = {
        NoncurrentDays = {
            type = "integer",
        },
        NewerNoncurrentVersions = {
            type = "integer",
        },
    },
}

M.TransitionStorageClass = {
    GLACIER = "GLACIER",
    STANDARD_IA = "STANDARD_IA",
    ONEZONE_IA = "ONEZONE_IA",
    INTELLIGENT_TIERING = "INTELLIGENT_TIERING",
    DEEP_ARCHIVE = "DEEP_ARCHIVE",
    GLACIER_IR = "GLACIER_IR",
}

M.NoncurrentVersionTransition = {
    type = "structure",
    id = "NoncurrentVersionTransition",
    members = {
        NoncurrentDays = {
            type = "integer",
        },
        StorageClass = {
            type = "string",
        },
        NewerNoncurrentVersions = {
            type = "integer",
        },
    },
}

M.ExpirationStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.Transition = {
    type = "structure",
    id = "Transition",
    members = {
        Date = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Days = {
            type = "integer",
        },
        StorageClass = {
            type = "string",
        },
    },
}

M.LifecycleRule = {
    type = "structure",
    id = "LifecycleRule",
    members = {
        Expiration = M.LifecycleExpiration,
        ID = {
            type = "string",
        },
        Prefix = {
            type = "string",
        },
        Filter = M.LifecycleRuleFilter,
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Transitions = {
            type = "list",
            member = M.Transition,
            traits = {
                xml_flattened = true,
                xml_name = "Transition",
            },
        },
        NoncurrentVersionTransitions = {
            type = "list",
            member = M.NoncurrentVersionTransition,
            traits = {
                xml_flattened = true,
                xml_name = "NoncurrentVersionTransition",
            },
        },
        NoncurrentVersionExpiration = M.NoncurrentVersionExpiration,
        AbortIncompleteMultipartUpload = M.AbortIncompleteMultipartUpload,
    },
}

M.TransitionDefaultMinimumObjectSize = {
    varies_by_storage_class = "varies_by_storage_class",
    all_storage_classes_128K = "all_storage_classes_128K",
}

M.GetBucketLifecycleConfigurationOutput = {
    type = "structure",
    id = "GetBucketLifecycleConfigurationOutput",
    traits = {
        xml_name = "LifecycleConfiguration",
    },
    members = {
        Rules = {
            type = "list",
            member = M.LifecycleRule,
            traits = {
                xml_flattened = true,
                xml_name = "Rule",
            },
        },
        TransitionDefaultMinimumObjectSize = {
            type = "string",
            traits = {
                http_header = "x-amz-transition-default-minimum-object-size",
            },
        },
    },
}

M.GetBucketLocationInput = {
    type = "structure",
    id = "GetBucketLocationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.GetBucketLocationOutput = {
    type = "structure",
    id = "GetBucketLocationOutput",
    traits = {
        xml_name = "LocationConstraint",
    },
    members = {
        LocationConstraint = {
            type = "string",
        },
    },
}

M.GetBucketLoggingInput = {
    type = "structure",
    id = "GetBucketLoggingInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.BucketLogsPermission = {
    FULL_CONTROL = "FULL_CONTROL",
    READ = "READ",
    WRITE = "WRITE",
}

M.TargetGrant = {
    type = "structure",
    id = "TargetGrant",
    members = {
        Grantee = setmetatable({ traits = {
            xml_namespace = { uri = "http://www.w3.org/2001/XMLSchema-instance", prefix = "xsi" },
        } }, { __index = M.Grantee }),
        Permission = {
            type = "string",
        },
    },
}

M.PartitionDateSource = {
    EventTime = "EventTime",
    DeliveryTime = "DeliveryTime",
}

M.PartitionedPrefix = {
    type = "structure",
    id = "PartitionedPrefix",
    traits = {
        xml_name = "PartitionedPrefix",
    },
    members = {
        PartitionDateSource = {
            type = "string",
        },
    },
}

M.SimplePrefix = {
    type = "structure",
    id = "SimplePrefix",
    traits = {
        xml_name = "SimplePrefix",
    },
}

M.TargetObjectKeyFormat = {
    type = "structure",
    id = "TargetObjectKeyFormat",
    members = {
        SimplePrefix = setmetatable({ traits = {
            xml_name = "SimplePrefix",
        } }, { __index = M.SimplePrefix }),
        PartitionedPrefix = setmetatable({ traits = {
            xml_name = "PartitionedPrefix",
        } }, { __index = M.PartitionedPrefix }),
    },
}

M.LoggingEnabled = {
    type = "structure",
    id = "LoggingEnabled",
    members = {
        TargetBucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetGrants = {
            type = "list",
            member = M.TargetGrant,
        },
        TargetPrefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetObjectKeyFormat = M.TargetObjectKeyFormat,
    },
}

M.GetBucketLoggingOutput = {
    type = "structure",
    id = "GetBucketLoggingOutput",
    traits = {
        xml_name = "BucketLoggingStatus",
    },
    members = {
        LoggingEnabled = M.LoggingEnabled,
    },
}

M.GetBucketMetadataConfigurationInput = {
    type = "structure",
    id = "GetBucketMetadataConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.S3TablesBucketType = {
    aws = "aws",
    customer = "customer",
}

M.DestinationResult = {
    type = "structure",
    id = "DestinationResult",
    members = {
        TableBucketType = {
            type = "string",
        },
        TableBucketArn = {
            type = "string",
        },
        TableNamespace = {
            type = "string",
        },
    },
}

M.ErrorDetails = {
    type = "structure",
    id = "ErrorDetails",
    members = {
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.InventoryTableConfigurationResult = {
    type = "structure",
    id = "InventoryTableConfigurationResult",
    members = {
        ConfigurationState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableStatus = {
            type = "string",
        },
        Error = M.ErrorDetails,
        TableName = {
            type = "string",
        },
        TableArn = {
            type = "string",
        },
    },
}

M.JournalTableConfigurationResult = {
    type = "structure",
    id = "JournalTableConfigurationResult",
    members = {
        TableStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Error = M.ErrorDetails,
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableArn = {
            type = "string",
        },
        RecordExpiration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecordExpiration }),
    },
}

M.MetadataConfigurationResult = {
    type = "structure",
    id = "MetadataConfigurationResult",
    members = {
        DestinationResult = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DestinationResult }),
        JournalTableConfigurationResult = M.JournalTableConfigurationResult,
        InventoryTableConfigurationResult = M.InventoryTableConfigurationResult,
    },
}

M.GetBucketMetadataConfigurationResult = {
    type = "structure",
    id = "GetBucketMetadataConfigurationResult",
    members = {
        MetadataConfigurationResult = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MetadataConfigurationResult }),
    },
}

M.GetBucketMetadataConfigurationOutput = {
    type = "structure",
    id = "GetBucketMetadataConfigurationOutput",
    members = {
        GetBucketMetadataConfigurationResult = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.GetBucketMetadataConfigurationResult }),
    },
}

M.GetBucketMetadataTableConfigurationInput = {
    type = "structure",
    id = "GetBucketMetadataTableConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.S3TablesDestinationResult = {
    type = "structure",
    id = "S3TablesDestinationResult",
    members = {
        TableBucketArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetadataTableConfigurationResult = {
    type = "structure",
    id = "MetadataTableConfigurationResult",
    members = {
        S3TablesDestinationResult = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3TablesDestinationResult }),
    },
}

M.GetBucketMetadataTableConfigurationResult = {
    type = "structure",
    id = "GetBucketMetadataTableConfigurationResult",
    members = {
        MetadataTableConfigurationResult = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MetadataTableConfigurationResult }),
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Error = M.ErrorDetails,
    },
}

M.GetBucketMetadataTableConfigurationOutput = {
    type = "structure",
    id = "GetBucketMetadataTableConfigurationOutput",
    members = {
        GetBucketMetadataTableConfigurationResult = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.GetBucketMetadataTableConfigurationResult }),
    },
}

M.GetBucketMetricsConfigurationInput = {
    type = "structure",
    id = "GetBucketMetricsConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.MetricsAndOperator = {
    type = "structure",
    id = "MetricsAndOperator",
    members = {
        Prefix = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                xml_flattened = true,
                xml_name = "Tag",
            },
        },
        AccessPointArn = {
            type = "string",
        },
    },
}

M.MetricsFilter = {
    type = "union",
    id = "MetricsFilter",
    members = {
        Prefix = {
            type = "string",
        },
        Tag = M.Tag,
        AccessPointArn = {
            type = "string",
        },
        And = M.MetricsAndOperator,
    },
}

M.MetricsConfiguration = {
    type = "structure",
    id = "MetricsConfiguration",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filter = M.MetricsFilter,
    },
}

M.GetBucketMetricsConfigurationOutput = {
    type = "structure",
    id = "GetBucketMetricsConfigurationOutput",
    members = {
        MetricsConfiguration = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.MetricsConfiguration }),
    },
}

M.GetBucketNotificationConfigurationInput = {
    type = "structure",
    id = "GetBucketNotificationConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.EventBridgeConfiguration = {
    type = "structure",
    id = "EventBridgeConfiguration",
}

M.Event = {
    s3_ReducedRedundancyLostObject = "s3:ReducedRedundancyLostObject",
    s3_ObjectCreated_ = "s3:ObjectCreated:*",
    s3_ObjectCreated_Put = "s3:ObjectCreated:Put",
    s3_ObjectCreated_Post = "s3:ObjectCreated:Post",
    s3_ObjectCreated_Copy = "s3:ObjectCreated:Copy",
    s3_ObjectCreated_CompleteMultipartUpload = "s3:ObjectCreated:CompleteMultipartUpload",
    s3_ObjectRemoved_ = "s3:ObjectRemoved:*",
    s3_ObjectRemoved_Delete = "s3:ObjectRemoved:Delete",
    s3_ObjectRemoved_DeleteMarkerCreated = "s3:ObjectRemoved:DeleteMarkerCreated",
    s3_ObjectRestore_ = "s3:ObjectRestore:*",
    s3_ObjectRestore_Post = "s3:ObjectRestore:Post",
    s3_ObjectRestore_Completed = "s3:ObjectRestore:Completed",
    s3_Replication_ = "s3:Replication:*",
    s3_Replication_OperationFailedReplication = "s3:Replication:OperationFailedReplication",
    s3_Replication_OperationNotTracked = "s3:Replication:OperationNotTracked",
    s3_Replication_OperationMissedThreshold = "s3:Replication:OperationMissedThreshold",
    s3_Replication_OperationReplicatedAfterThreshold = "s3:Replication:OperationReplicatedAfterThreshold",
    s3_ObjectRestore_Delete = "s3:ObjectRestore:Delete",
    s3_LifecycleTransition = "s3:LifecycleTransition",
    s3_IntelligentTiering = "s3:IntelligentTiering",
    s3_ObjectAcl_Put = "s3:ObjectAcl:Put",
    s3_LifecycleExpiration_ = "s3:LifecycleExpiration:*",
    s3_LifecycleExpiration_Delete = "s3:LifecycleExpiration:Delete",
    s3_LifecycleExpiration_DeleteMarkerCreated = "s3:LifecycleExpiration:DeleteMarkerCreated",
    s3_ObjectTagging_ = "s3:ObjectTagging:*",
    s3_ObjectTagging_Put = "s3:ObjectTagging:Put",
    s3_ObjectTagging_Delete = "s3:ObjectTagging:Delete",
}

M.FilterRuleName = {
    prefix = "prefix",
    suffix = "suffix",
}

M.FilterRule = {
    type = "structure",
    id = "FilterRule",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.S3KeyFilter = {
    type = "structure",
    id = "S3KeyFilter",
    members = {
        FilterRules = {
            type = "list",
            member = M.FilterRule,
            traits = {
                xml_flattened = true,
                xml_name = "FilterRule",
            },
        },
    },
}

M.NotificationConfigurationFilter = {
    type = "structure",
    id = "NotificationConfigurationFilter",
    members = {
        Key = setmetatable({ traits = {
            xml_name = "S3Key",
        } }, { __index = M.S3KeyFilter }),
    },
}

M.LambdaFunctionConfiguration = {
    type = "structure",
    id = "LambdaFunctionConfiguration",
    members = {
        Id = {
            type = "string",
        },
        LambdaFunctionArn = {
            type = "string",
            traits = {
                required = true,
                xml_name = "CloudFunction",
            },
        },
        Events = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "Event",
            },
        },
        Filter = M.NotificationConfigurationFilter,
    },
}

M.QueueConfiguration = {
    type = "structure",
    id = "QueueConfiguration",
    members = {
        Id = {
            type = "string",
        },
        QueueArn = {
            type = "string",
            traits = {
                required = true,
                xml_name = "Queue",
            },
        },
        Events = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "Event",
            },
        },
        Filter = M.NotificationConfigurationFilter,
    },
}

M.TopicConfiguration = {
    type = "structure",
    id = "TopicConfiguration",
    members = {
        Id = {
            type = "string",
        },
        TopicArn = {
            type = "string",
            traits = {
                required = true,
                xml_name = "Topic",
            },
        },
        Events = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "Event",
            },
        },
        Filter = M.NotificationConfigurationFilter,
    },
}

M.GetBucketNotificationConfigurationOutput = {
    type = "structure",
    id = "GetBucketNotificationConfigurationOutput",
    members = {
        TopicConfigurations = {
            type = "list",
            member = M.TopicConfiguration,
            traits = {
                xml_flattened = true,
                xml_name = "TopicConfiguration",
            },
        },
        QueueConfigurations = {
            type = "list",
            member = M.QueueConfiguration,
            traits = {
                xml_flattened = true,
                xml_name = "QueueConfiguration",
            },
        },
        LambdaFunctionConfigurations = {
            type = "list",
            member = M.LambdaFunctionConfiguration,
            traits = {
                xml_flattened = true,
                xml_name = "CloudFunctionConfiguration",
            },
        },
        EventBridgeConfiguration = M.EventBridgeConfiguration,
    },
}

M.GetBucketOwnershipControlsInput = {
    type = "structure",
    id = "GetBucketOwnershipControlsInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.OwnershipControlsRule = {
    type = "structure",
    id = "OwnershipControlsRule",
    members = {
        ObjectOwnership = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OwnershipControls = {
    type = "structure",
    id = "OwnershipControls",
    members = {
        Rules = {
            type = "list",
            member = M.OwnershipControlsRule,
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "Rule",
            },
        },
    },
}

M.GetBucketOwnershipControlsOutput = {
    type = "structure",
    id = "GetBucketOwnershipControlsOutput",
    members = {
        OwnershipControls = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.OwnershipControls }),
    },
}

M.GetBucketPolicyInput = {
    type = "structure",
    id = "GetBucketPolicyInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.GetBucketPolicyOutput = {
    type = "structure",
    id = "GetBucketPolicyOutput",
    members = {
        Policy = {
            type = "string",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.GetBucketPolicyStatusInput = {
    type = "structure",
    id = "GetBucketPolicyStatusInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.PolicyStatus = {
    type = "structure",
    id = "PolicyStatus",
    members = {
        IsPublic = {
            type = "boolean",
            traits = {
                xml_name = "IsPublic",
            },
        },
    },
}

M.GetBucketPolicyStatusOutput = {
    type = "structure",
    id = "GetBucketPolicyStatusOutput",
    members = {
        PolicyStatus = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.PolicyStatus }),
    },
}

M.GetBucketReplicationInput = {
    type = "structure",
    id = "GetBucketReplicationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.DeleteMarkerReplicationStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.DeleteMarkerReplication = {
    type = "structure",
    id = "DeleteMarkerReplication",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.EncryptionConfiguration = {
    type = "structure",
    id = "EncryptionConfiguration",
    members = {
        ReplicaKmsKeyID = {
            type = "string",
        },
    },
}

M.ReplicationTimeValue = {
    type = "structure",
    id = "ReplicationTimeValue",
    members = {
        Minutes = {
            type = "integer",
        },
    },
}

M.MetricsStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.Metrics = {
    type = "structure",
    id = "Metrics",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventThreshold = M.ReplicationTimeValue,
    },
}

M.ReplicationTimeStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.ReplicationTime = {
    type = "structure",
    id = "ReplicationTime",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Time = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReplicationTimeValue }),
    },
}

M.Destination = {
    type = "structure",
    id = "Destination",
    members = {
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Account = {
            type = "string",
        },
        StorageClass = {
            type = "string",
        },
        AccessControlTranslation = M.AccessControlTranslation,
        EncryptionConfiguration = M.EncryptionConfiguration,
        ReplicationTime = M.ReplicationTime,
        Metrics = M.Metrics,
    },
}

M.ExistingObjectReplicationStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.ExistingObjectReplication = {
    type = "structure",
    id = "ExistingObjectReplication",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReplicationRuleAndOperator = {
    type = "structure",
    id = "ReplicationRuleAndOperator",
    members = {
        Prefix = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                xml_flattened = true,
                xml_name = "Tag",
            },
        },
    },
}

M.ReplicationRuleFilter = {
    type = "structure",
    id = "ReplicationRuleFilter",
    members = {
        Prefix = {
            type = "string",
        },
        Tag = M.Tag,
        And = M.ReplicationRuleAndOperator,
    },
}

M.ReplicaModificationsStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.ReplicaModifications = {
    type = "structure",
    id = "ReplicaModifications",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SseKmsEncryptedObjectsStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.SseKmsEncryptedObjects = {
    type = "structure",
    id = "SseKmsEncryptedObjects",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SourceSelectionCriteria = {
    type = "structure",
    id = "SourceSelectionCriteria",
    members = {
        SseKmsEncryptedObjects = M.SseKmsEncryptedObjects,
        ReplicaModifications = M.ReplicaModifications,
    },
}

M.ReplicationRuleStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.ReplicationRule = {
    type = "structure",
    id = "ReplicationRule",
    members = {
        ID = {
            type = "string",
        },
        Priority = {
            type = "integer",
        },
        Prefix = {
            type = "string",
        },
        Filter = M.ReplicationRuleFilter,
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceSelectionCriteria = M.SourceSelectionCriteria,
        ExistingObjectReplication = M.ExistingObjectReplication,
        Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Destination }),
        DeleteMarkerReplication = M.DeleteMarkerReplication,
    },
}

M.ReplicationConfiguration = {
    type = "structure",
    id = "ReplicationConfiguration",
    members = {
        Role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rules = {
            type = "list",
            member = M.ReplicationRule,
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "Rule",
            },
        },
    },
}

M.GetBucketReplicationOutput = {
    type = "structure",
    id = "GetBucketReplicationOutput",
    members = {
        ReplicationConfiguration = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ReplicationConfiguration }),
    },
}

M.GetBucketRequestPaymentInput = {
    type = "structure",
    id = "GetBucketRequestPaymentInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.Payer = {
    Requester = "Requester",
    BucketOwner = "BucketOwner",
}

M.GetBucketRequestPaymentOutput = {
    type = "structure",
    id = "GetBucketRequestPaymentOutput",
    traits = {
        xml_name = "RequestPaymentConfiguration",
    },
    members = {
        Payer = {
            type = "string",
        },
    },
}

M.GetBucketTaggingInput = {
    type = "structure",
    id = "GetBucketTaggingInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.GetBucketTaggingOutput = {
    type = "structure",
    id = "GetBucketTaggingOutput",
    traits = {
        xml_name = "Tagging",
    },
    members = {
        TagSet = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.GetBucketVersioningInput = {
    type = "structure",
    id = "GetBucketVersioningInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.MFADeleteStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.BucketVersioningStatus = {
    Enabled = "Enabled",
    Suspended = "Suspended",
}

M.GetBucketVersioningOutput = {
    type = "structure",
    id = "GetBucketVersioningOutput",
    traits = {
        xml_name = "VersioningConfiguration",
    },
    members = {
        Status = {
            type = "string",
        },
        MFADelete = {
            type = "string",
            traits = {
                xml_name = "MfaDelete",
            },
        },
    },
}

M.GetBucketWebsiteInput = {
    type = "structure",
    id = "GetBucketWebsiteInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.ErrorDocument = {
    type = "structure",
    id = "ErrorDocument",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IndexDocument = {
    type = "structure",
    id = "IndexDocument",
    members = {
        Suffix = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Protocol = {
    http = "http",
    https = "https",
}

M.RedirectAllRequestsTo = {
    type = "structure",
    id = "RedirectAllRequestsTo",
    members = {
        HostName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Protocol = {
            type = "string",
        },
    },
}

M.Condition = {
    type = "structure",
    id = "Condition",
    members = {
        HttpErrorCodeReturnedEquals = {
            type = "string",
        },
        KeyPrefixEquals = {
            type = "string",
        },
    },
}

M.Redirect = {
    type = "structure",
    id = "Redirect",
    members = {
        HostName = {
            type = "string",
        },
        HttpRedirectCode = {
            type = "string",
        },
        Protocol = {
            type = "string",
        },
        ReplaceKeyPrefixWith = {
            type = "string",
        },
        ReplaceKeyWith = {
            type = "string",
        },
    },
}

M.RoutingRule = {
    type = "structure",
    id = "RoutingRule",
    members = {
        Condition = M.Condition,
        Redirect = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Redirect }),
    },
}

M.GetBucketWebsiteOutput = {
    type = "structure",
    id = "GetBucketWebsiteOutput",
    traits = {
        xml_name = "WebsiteConfiguration",
    },
    members = {
        RedirectAllRequestsTo = M.RedirectAllRequestsTo,
        IndexDocument = M.IndexDocument,
        ErrorDocument = M.ErrorDocument,
        RoutingRules = {
            type = "list",
            member = M.RoutingRule,
        },
    },
}

M.ChecksumMode = {
    ENABLED = "ENABLED",
}

M.GetObjectInput = {
    type = "structure",
    id = "GetObjectInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
        IfModifiedSince = {
            type = "timestamp",
            traits = {
                http_header = "If-Modified-Since",
            },
        },
        IfNoneMatch = {
            type = "string",
            traits = {
                http_header = "If-None-Match",
            },
        },
        IfUnmodifiedSince = {
            type = "timestamp",
            traits = {
                http_header = "If-Unmodified-Since",
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Range = {
            type = "string",
            traits = {
                http_header = "Range",
            },
        },
        ResponseCacheControl = {
            type = "string",
            traits = {
                http_query = "response-cache-control",
            },
        },
        ResponseContentDisposition = {
            type = "string",
            traits = {
                http_query = "response-content-disposition",
            },
        },
        ResponseContentEncoding = {
            type = "string",
            traits = {
                http_query = "response-content-encoding",
            },
        },
        ResponseContentLanguage = {
            type = "string",
            traits = {
                http_query = "response-content-language",
            },
        },
        ResponseContentType = {
            type = "string",
            traits = {
                http_query = "response-content-type",
            },
        },
        ResponseExpires = {
            type = "timestamp",
            traits = {
                http_query = "response-expires",
                timestamp_format = "http-date",
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_query = "versionId",
            },
        },
        SSECustomerAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-algorithm",
            },
        },
        SSECustomerKey = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key",
            },
        },
        SSECustomerKeyMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key-MD5",
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        PartNumber = {
            type = "integer",
            traits = {
                http_query = "partNumber",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        ChecksumMode = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-mode",
            },
        },
    },
}

M.ReplicationStatus = {
    COMPLETE = "COMPLETE",
    PENDING = "PENDING",
    FAILED = "FAILED",
    REPLICA = "REPLICA",
    COMPLETED = "COMPLETED",
}

M.GetObjectOutput = {
    type = "structure",
    id = "GetObjectOutput",
    members = {
        Body = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
        DeleteMarker = {
            type = "boolean",
            traits = {
                http_header = "x-amz-delete-marker",
            },
        },
        AcceptRanges = {
            type = "string",
            traits = {
                http_header = "accept-ranges",
            },
        },
        Expiration = {
            type = "string",
            traits = {
                http_header = "x-amz-expiration",
            },
        },
        Restore = {
            type = "string",
            traits = {
                http_header = "x-amz-restore",
            },
        },
        LastModified = {
            type = "timestamp",
            traits = {
                http_header = "Last-Modified",
            },
        },
        ContentLength = {
            type = "long",
            traits = {
                http_header = "Content-Length",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
        ChecksumCRC32 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-crc32",
            },
        },
        ChecksumCRC32C = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-crc32c",
            },
        },
        ChecksumCRC64NVME = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-crc64nvme",
            },
        },
        ChecksumSHA1 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-sha1",
            },
        },
        ChecksumSHA256 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-sha256",
            },
        },
        ChecksumSHA512 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-sha512",
            },
        },
        ChecksumMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-md5",
            },
        },
        ChecksumXXHASH64 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-xxhash64",
            },
        },
        ChecksumXXHASH3 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-xxhash3",
            },
        },
        ChecksumXXHASH128 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-xxhash128",
            },
        },
        ChecksumType = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-type",
            },
        },
        MissingMeta = {
            type = "integer",
            traits = {
                http_header = "x-amz-missing-meta",
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_header = "x-amz-version-id",
            },
        },
        CacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
        ContentDisposition = {
            type = "string",
            traits = {
                http_header = "Content-Disposition",
            },
        },
        ContentEncoding = {
            type = "string",
            traits = {
                http_header = "Content-Encoding",
            },
        },
        ContentLanguage = {
            type = "string",
            traits = {
                http_header = "Content-Language",
            },
        },
        ContentRange = {
            type = "string",
            traits = {
                http_header = "Content-Range",
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        Expires = {
            type = "string",
            traits = {
                http_header = "Expires",
            },
        },
        WebsiteRedirectLocation = {
            type = "string",
            traits = {
                http_header = "x-amz-website-redirect-location",
            },
        },
        ServerSideEncryption = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption",
            },
        },
        Metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                http_prefix_headers = "x-amz-meta-",
            },
        },
        SSECustomerAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-algorithm",
            },
        },
        SSECustomerKeyMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key-MD5",
            },
        },
        SSEKMSKeyId = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-aws-kms-key-id",
            },
        },
        BucketKeyEnabled = {
            type = "boolean",
            traits = {
                http_header = "x-amz-server-side-encryption-bucket-key-enabled",
            },
        },
        StorageClass = {
            type = "string",
            traits = {
                http_header = "x-amz-storage-class",
            },
        },
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
        ReplicationStatus = {
            type = "string",
            traits = {
                http_header = "x-amz-replication-status",
            },
        },
        PartsCount = {
            type = "integer",
            traits = {
                http_header = "x-amz-mp-parts-count",
            },
        },
        TagCount = {
            type = "integer",
            traits = {
                http_header = "x-amz-tagging-count",
            },
        },
        ObjectLockMode = {
            type = "string",
            traits = {
                http_header = "x-amz-object-lock-mode",
            },
        },
        ObjectLockRetainUntilDate = {
            type = "timestamp",
            traits = {
                http_header = "x-amz-object-lock-retain-until-date",
                timestamp_format = "date-time",
            },
        },
        ObjectLockLegalHoldStatus = {
            type = "string",
            traits = {
                http_header = "x-amz-object-lock-legal-hold",
            },
        },
    },
}

M.InvalidObjectState = {
    type = "structure",
    id = "InvalidObjectState",
    error = "client",
    members = {
        StorageClass = {
            type = "string",
        },
        AccessTier = {
            type = "string",
        },
    },
}

M.NoSuchKey = {
    type = "structure",
    id = "NoSuchKey",
    error = "client",
}

M.GetObjectAclInput = {
    type = "structure",
    id = "GetObjectAclInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_query = "versionId",
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.GetObjectAclOutput = {
    type = "structure",
    id = "GetObjectAclOutput",
    traits = {
        xml_name = "AccessControlPolicy",
    },
    members = {
        Owner = M.Owner,
        Grants = {
            type = "list",
            member = M.Grant,
            traits = {
                xml_name = "AccessControlList",
            },
        },
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
    },
}

M.ObjectAttributes = {
    ETAG = "ETag",
    CHECKSUM = "Checksum",
    OBJECT_PARTS = "ObjectParts",
    STORAGE_CLASS = "StorageClass",
    OBJECT_SIZE = "ObjectSize",
}

M.GetObjectAttributesInput = {
    type = "structure",
    id = "GetObjectAttributesInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_query = "versionId",
            },
        },
        MaxParts = {
            type = "integer",
            traits = {
                http_header = "x-amz-max-parts",
            },
        },
        PartNumberMarker = {
            type = "string",
            traits = {
                http_header = "x-amz-part-number-marker",
            },
        },
        SSECustomerAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-algorithm",
            },
        },
        SSECustomerKey = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key",
            },
        },
        SSECustomerKeyMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key-MD5",
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        ObjectAttributes = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_header = "x-amz-object-attributes",
                required = true,
            },
        },
    },
}

M.Checksum = {
    type = "structure",
    id = "Checksum",
    members = {
        ChecksumCRC32 = {
            type = "string",
        },
        ChecksumCRC32C = {
            type = "string",
        },
        ChecksumCRC64NVME = {
            type = "string",
        },
        ChecksumSHA1 = {
            type = "string",
        },
        ChecksumSHA256 = {
            type = "string",
        },
        ChecksumSHA512 = {
            type = "string",
        },
        ChecksumMD5 = {
            type = "string",
        },
        ChecksumXXHASH64 = {
            type = "string",
        },
        ChecksumXXHASH3 = {
            type = "string",
        },
        ChecksumXXHASH128 = {
            type = "string",
        },
        ChecksumType = {
            type = "string",
        },
    },
}

M.ObjectPart = {
    type = "structure",
    id = "ObjectPart",
    members = {
        PartNumber = {
            type = "integer",
        },
        Size = {
            type = "long",
        },
        ChecksumCRC32 = {
            type = "string",
        },
        ChecksumCRC32C = {
            type = "string",
        },
        ChecksumCRC64NVME = {
            type = "string",
        },
        ChecksumSHA1 = {
            type = "string",
        },
        ChecksumSHA256 = {
            type = "string",
        },
        ChecksumSHA512 = {
            type = "string",
        },
        ChecksumMD5 = {
            type = "string",
        },
        ChecksumXXHASH64 = {
            type = "string",
        },
        ChecksumXXHASH3 = {
            type = "string",
        },
        ChecksumXXHASH128 = {
            type = "string",
        },
    },
}

M.GetObjectAttributesParts = {
    type = "structure",
    id = "GetObjectAttributesParts",
    members = {
        TotalPartsCount = {
            type = "integer",
            traits = {
                xml_name = "PartsCount",
            },
        },
        PartNumberMarker = {
            type = "string",
        },
        NextPartNumberMarker = {
            type = "string",
        },
        MaxParts = {
            type = "integer",
        },
        IsTruncated = {
            type = "boolean",
        },
        Parts = {
            type = "list",
            member = M.ObjectPart,
            traits = {
                xml_flattened = true,
                xml_name = "Part",
            },
        },
    },
}

M.GetObjectAttributesOutput = {
    type = "structure",
    id = "GetObjectAttributesOutput",
    traits = {
        xml_name = "GetObjectAttributesResponse",
    },
    members = {
        DeleteMarker = {
            type = "boolean",
            traits = {
                http_header = "x-amz-delete-marker",
            },
        },
        LastModified = {
            type = "timestamp",
            traits = {
                http_header = "Last-Modified",
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_header = "x-amz-version-id",
            },
        },
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
        ETag = {
            type = "string",
        },
        Checksum = M.Checksum,
        ObjectParts = M.GetObjectAttributesParts,
        StorageClass = {
            type = "string",
        },
        ObjectSize = {
            type = "long",
        },
    },
}

M.GetObjectLegalHoldInput = {
    type = "structure",
    id = "GetObjectLegalHoldInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_query = "versionId",
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.ObjectLockLegalHold = {
    type = "structure",
    id = "ObjectLockLegalHold",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.GetObjectLegalHoldOutput = {
    type = "structure",
    id = "GetObjectLegalHoldOutput",
    members = {
        LegalHold = setmetatable({ traits = {
            http_payload = true,
            xml_name = "LegalHold",
        } }, { __index = M.ObjectLockLegalHold }),
    },
}

M.GetObjectLockConfigurationInput = {
    type = "structure",
    id = "GetObjectLockConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.ObjectLockEnabled = {
    Enabled = "Enabled",
}

M.ObjectLockRetentionMode = {
    GOVERNANCE = "GOVERNANCE",
    COMPLIANCE = "COMPLIANCE",
}

M.DefaultRetention = {
    type = "structure",
    id = "DefaultRetention",
    members = {
        Mode = {
            type = "string",
        },
        Days = {
            type = "integer",
        },
        Years = {
            type = "integer",
        },
    },
}

M.ObjectLockRule = {
    type = "structure",
    id = "ObjectLockRule",
    members = {
        DefaultRetention = M.DefaultRetention,
    },
}

M.ObjectLockConfiguration = {
    type = "structure",
    id = "ObjectLockConfiguration",
    members = {
        ObjectLockEnabled = {
            type = "string",
        },
        Rule = M.ObjectLockRule,
    },
}

M.GetObjectLockConfigurationOutput = {
    type = "structure",
    id = "GetObjectLockConfigurationOutput",
    members = {
        ObjectLockConfiguration = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ObjectLockConfiguration }),
    },
}

M.GetObjectRetentionInput = {
    type = "structure",
    id = "GetObjectRetentionInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_query = "versionId",
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.ObjectLockRetention = {
    type = "structure",
    id = "ObjectLockRetention",
    members = {
        Mode = {
            type = "string",
        },
        RetainUntilDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetObjectRetentionOutput = {
    type = "structure",
    id = "GetObjectRetentionOutput",
    members = {
        Retention = setmetatable({ traits = {
            http_payload = true,
            xml_name = "Retention",
        } }, { __index = M.ObjectLockRetention }),
    },
}

M.GetObjectTaggingInput = {
    type = "structure",
    id = "GetObjectTaggingInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_query = "versionId",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
    },
}

M.GetObjectTaggingOutput = {
    type = "structure",
    id = "GetObjectTaggingOutput",
    traits = {
        xml_name = "Tagging",
    },
    members = {
        VersionId = {
            type = "string",
            traits = {
                http_header = "x-amz-version-id",
            },
        },
        TagSet = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.GetObjectTorrentInput = {
    type = "structure",
    id = "GetObjectTorrentInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.GetObjectTorrentOutput = {
    type = "structure",
    id = "GetObjectTorrentOutput",
    members = {
        Body = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
    },
}

M.GetPublicAccessBlockInput = {
    type = "structure",
    id = "GetPublicAccessBlockInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.PublicAccessBlockConfiguration = {
    type = "structure",
    id = "PublicAccessBlockConfiguration",
    members = {
        BlockPublicAcls = {
            type = "boolean",
            traits = {
                xml_name = "BlockPublicAcls",
            },
        },
        IgnorePublicAcls = {
            type = "boolean",
            traits = {
                xml_name = "IgnorePublicAcls",
            },
        },
        BlockPublicPolicy = {
            type = "boolean",
            traits = {
                xml_name = "BlockPublicPolicy",
            },
        },
        RestrictPublicBuckets = {
            type = "boolean",
            traits = {
                xml_name = "RestrictPublicBuckets",
            },
        },
    },
}

M.GetPublicAccessBlockOutput = {
    type = "structure",
    id = "GetPublicAccessBlockOutput",
    members = {
        PublicAccessBlockConfiguration = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.PublicAccessBlockConfiguration }),
    },
}

M.HeadBucketInput = {
    type = "structure",
    id = "HeadBucketInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.HeadBucketOutput = {
    type = "structure",
    id = "HeadBucketOutput",
    members = {
        BucketArn = {
            type = "string",
            traits = {
                http_header = "x-amz-bucket-arn",
            },
        },
        BucketLocationType = {
            type = "string",
            traits = {
                http_header = "x-amz-bucket-location-type",
            },
        },
        BucketLocationName = {
            type = "string",
            traits = {
                http_header = "x-amz-bucket-location-name",
            },
        },
        BucketRegion = {
            type = "string",
            traits = {
                http_header = "x-amz-bucket-region",
            },
        },
        AccessPointAlias = {
            type = "boolean",
            traits = {
                http_header = "x-amz-access-point-alias",
            },
        },
    },
}

M.NotFound = {
    type = "structure",
    id = "NotFound",
    error = "client",
}

M.HeadObjectInput = {
    type = "structure",
    id = "HeadObjectInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
        IfModifiedSince = {
            type = "timestamp",
            traits = {
                http_header = "If-Modified-Since",
            },
        },
        IfNoneMatch = {
            type = "string",
            traits = {
                http_header = "If-None-Match",
            },
        },
        IfUnmodifiedSince = {
            type = "timestamp",
            traits = {
                http_header = "If-Unmodified-Since",
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Range = {
            type = "string",
            traits = {
                http_header = "Range",
            },
        },
        ResponseCacheControl = {
            type = "string",
            traits = {
                http_query = "response-cache-control",
            },
        },
        ResponseContentDisposition = {
            type = "string",
            traits = {
                http_query = "response-content-disposition",
            },
        },
        ResponseContentEncoding = {
            type = "string",
            traits = {
                http_query = "response-content-encoding",
            },
        },
        ResponseContentLanguage = {
            type = "string",
            traits = {
                http_query = "response-content-language",
            },
        },
        ResponseContentType = {
            type = "string",
            traits = {
                http_query = "response-content-type",
            },
        },
        ResponseExpires = {
            type = "timestamp",
            traits = {
                http_query = "response-expires",
                timestamp_format = "http-date",
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_query = "versionId",
            },
        },
        SSECustomerAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-algorithm",
            },
        },
        SSECustomerKey = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key",
            },
        },
        SSECustomerKeyMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key-MD5",
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        PartNumber = {
            type = "integer",
            traits = {
                http_query = "partNumber",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        ChecksumMode = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-mode",
            },
        },
    },
}

M.ArchiveStatus = {
    ARCHIVE_ACCESS = "ARCHIVE_ACCESS",
    DEEP_ARCHIVE_ACCESS = "DEEP_ARCHIVE_ACCESS",
}

M.HeadObjectOutput = {
    type = "structure",
    id = "HeadObjectOutput",
    members = {
        DeleteMarker = {
            type = "boolean",
            traits = {
                http_header = "x-amz-delete-marker",
            },
        },
        AcceptRanges = {
            type = "string",
            traits = {
                http_header = "accept-ranges",
            },
        },
        Expiration = {
            type = "string",
            traits = {
                http_header = "x-amz-expiration",
            },
        },
        Restore = {
            type = "string",
            traits = {
                http_header = "x-amz-restore",
            },
        },
        ArchiveStatus = {
            type = "string",
            traits = {
                http_header = "x-amz-archive-status",
            },
        },
        LastModified = {
            type = "timestamp",
            traits = {
                http_header = "Last-Modified",
            },
        },
        ContentLength = {
            type = "long",
            traits = {
                http_header = "Content-Length",
            },
        },
        ChecksumCRC32 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-crc32",
            },
        },
        ChecksumCRC32C = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-crc32c",
            },
        },
        ChecksumCRC64NVME = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-crc64nvme",
            },
        },
        ChecksumSHA1 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-sha1",
            },
        },
        ChecksumSHA256 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-sha256",
            },
        },
        ChecksumSHA512 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-sha512",
            },
        },
        ChecksumMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-md5",
            },
        },
        ChecksumXXHASH64 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-xxhash64",
            },
        },
        ChecksumXXHASH3 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-xxhash3",
            },
        },
        ChecksumXXHASH128 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-xxhash128",
            },
        },
        ChecksumType = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-type",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
        MissingMeta = {
            type = "integer",
            traits = {
                http_header = "x-amz-missing-meta",
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_header = "x-amz-version-id",
            },
        },
        CacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
        ContentDisposition = {
            type = "string",
            traits = {
                http_header = "Content-Disposition",
            },
        },
        ContentEncoding = {
            type = "string",
            traits = {
                http_header = "Content-Encoding",
            },
        },
        ContentLanguage = {
            type = "string",
            traits = {
                http_header = "Content-Language",
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        ContentRange = {
            type = "string",
            traits = {
                http_header = "Content-Range",
            },
        },
        Expires = {
            type = "string",
            traits = {
                http_header = "Expires",
            },
        },
        WebsiteRedirectLocation = {
            type = "string",
            traits = {
                http_header = "x-amz-website-redirect-location",
            },
        },
        ServerSideEncryption = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption",
            },
        },
        Metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                http_prefix_headers = "x-amz-meta-",
            },
        },
        SSECustomerAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-algorithm",
            },
        },
        SSECustomerKeyMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key-MD5",
            },
        },
        SSEKMSKeyId = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-aws-kms-key-id",
            },
        },
        BucketKeyEnabled = {
            type = "boolean",
            traits = {
                http_header = "x-amz-server-side-encryption-bucket-key-enabled",
            },
        },
        StorageClass = {
            type = "string",
            traits = {
                http_header = "x-amz-storage-class",
            },
        },
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
        ReplicationStatus = {
            type = "string",
            traits = {
                http_header = "x-amz-replication-status",
            },
        },
        PartsCount = {
            type = "integer",
            traits = {
                http_header = "x-amz-mp-parts-count",
            },
        },
        TagCount = {
            type = "integer",
            traits = {
                http_header = "x-amz-tagging-count",
            },
        },
        ObjectLockMode = {
            type = "string",
            traits = {
                http_header = "x-amz-object-lock-mode",
            },
        },
        ObjectLockRetainUntilDate = {
            type = "timestamp",
            traits = {
                http_header = "x-amz-object-lock-retain-until-date",
                timestamp_format = "date-time",
            },
        },
        ObjectLockLegalHoldStatus = {
            type = "string",
            traits = {
                http_header = "x-amz-object-lock-legal-hold",
            },
        },
    },
}

M.ListBucketAnalyticsConfigurationsInput = {
    type = "structure",
    id = "ListBucketAnalyticsConfigurationsInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContinuationToken = {
            type = "string",
            traits = {
                http_query = "continuation-token",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.ListBucketAnalyticsConfigurationsOutput = {
    type = "structure",
    id = "ListBucketAnalyticsConfigurationsOutput",
    traits = {
        xml_name = "ListBucketAnalyticsConfigurationResult",
    },
    members = {
        IsTruncated = {
            type = "boolean",
        },
        ContinuationToken = {
            type = "string",
        },
        NextContinuationToken = {
            type = "string",
        },
        AnalyticsConfigurationList = {
            type = "list",
            member = M.AnalyticsConfiguration,
            traits = {
                xml_flattened = true,
                xml_name = "AnalyticsConfiguration",
            },
        },
    },
}

M.ListBucketIntelligentTieringConfigurationsInput = {
    type = "structure",
    id = "ListBucketIntelligentTieringConfigurationsInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContinuationToken = {
            type = "string",
            traits = {
                http_query = "continuation-token",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.ListBucketIntelligentTieringConfigurationsOutput = {
    type = "structure",
    id = "ListBucketIntelligentTieringConfigurationsOutput",
    members = {
        IsTruncated = {
            type = "boolean",
        },
        ContinuationToken = {
            type = "string",
        },
        NextContinuationToken = {
            type = "string",
        },
        IntelligentTieringConfigurationList = {
            type = "list",
            member = M.IntelligentTieringConfiguration,
            traits = {
                xml_flattened = true,
                xml_name = "IntelligentTieringConfiguration",
            },
        },
    },
}

M.ListBucketInventoryConfigurationsInput = {
    type = "structure",
    id = "ListBucketInventoryConfigurationsInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContinuationToken = {
            type = "string",
            traits = {
                http_query = "continuation-token",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.ListBucketInventoryConfigurationsOutput = {
    type = "structure",
    id = "ListBucketInventoryConfigurationsOutput",
    traits = {
        xml_name = "ListInventoryConfigurationsResult",
    },
    members = {
        ContinuationToken = {
            type = "string",
        },
        InventoryConfigurationList = {
            type = "list",
            member = M.InventoryConfiguration,
            traits = {
                xml_flattened = true,
                xml_name = "InventoryConfiguration",
            },
        },
        IsTruncated = {
            type = "boolean",
        },
        NextContinuationToken = {
            type = "string",
        },
    },
}

M.ListBucketMetricsConfigurationsInput = {
    type = "structure",
    id = "ListBucketMetricsConfigurationsInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContinuationToken = {
            type = "string",
            traits = {
                http_query = "continuation-token",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.ListBucketMetricsConfigurationsOutput = {
    type = "structure",
    id = "ListBucketMetricsConfigurationsOutput",
    traits = {
        xml_name = "ListMetricsConfigurationsResult",
    },
    members = {
        IsTruncated = {
            type = "boolean",
        },
        ContinuationToken = {
            type = "string",
        },
        NextContinuationToken = {
            type = "string",
        },
        MetricsConfigurationList = {
            type = "list",
            member = M.MetricsConfiguration,
            traits = {
                xml_flattened = true,
                xml_name = "MetricsConfiguration",
            },
        },
    },
}

M.ListBucketsInput = {
    type = "structure",
    id = "ListBucketsInput",
    members = {
        MaxBuckets = {
            type = "integer",
            traits = {
                http_query = "max-buckets",
            },
        },
        ContinuationToken = {
            type = "string",
            traits = {
                http_query = "continuation-token",
            },
        },
        Prefix = {
            type = "string",
            traits = {
                http_query = "prefix",
            },
        },
        BucketRegion = {
            type = "string",
            traits = {
                http_query = "bucket-region",
            },
        },
    },
}

M.Bucket = {
    type = "structure",
    id = "Bucket",
    members = {
        Name = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        BucketRegion = {
            type = "string",
        },
        BucketArn = {
            type = "string",
        },
    },
}

M.ListBucketsOutput = {
    type = "structure",
    id = "ListBucketsOutput",
    traits = {
        xml_name = "ListAllMyBucketsResult",
    },
    members = {
        Buckets = {
            type = "list",
            member = M.Bucket,
        },
        Owner = M.Owner,
        ContinuationToken = {
            type = "string",
        },
        Prefix = {
            type = "string",
        },
    },
}

M.ListDirectoryBucketsInput = {
    type = "structure",
    id = "ListDirectoryBucketsInput",
    members = {
        ContinuationToken = {
            type = "string",
            traits = {
                http_query = "continuation-token",
            },
        },
        MaxDirectoryBuckets = {
            type = "integer",
            traits = {
                http_query = "max-directory-buckets",
            },
        },
    },
}

M.ListDirectoryBucketsOutput = {
    type = "structure",
    id = "ListDirectoryBucketsOutput",
    traits = {
        xml_name = "ListAllMyDirectoryBucketsResult",
    },
    members = {
        Buckets = {
            type = "list",
            member = M.Bucket,
        },
        ContinuationToken = {
            type = "string",
        },
    },
}

M.EncodingType = {
    url = "url",
}

M.ListMultipartUploadsInput = {
    type = "structure",
    id = "ListMultipartUploadsInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Delimiter = {
            type = "string",
            traits = {
                http_query = "delimiter",
            },
        },
        EncodingType = {
            type = "string",
            traits = {
                http_query = "encoding-type",
            },
        },
        KeyMarker = {
            type = "string",
            traits = {
                http_query = "key-marker",
            },
        },
        MaxUploads = {
            type = "integer",
            traits = {
                http_query = "max-uploads",
            },
        },
        Prefix = {
            type = "string",
            traits = {
                http_query = "prefix",
            },
        },
        UploadIdMarker = {
            type = "string",
            traits = {
                http_query = "upload-id-marker",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
    },
}

M.CommonPrefix = {
    type = "structure",
    id = "CommonPrefix",
    members = {
        Prefix = {
            type = "string",
        },
    },
}

M.Initiator = {
    type = "structure",
    id = "Initiator",
    members = {
        ID = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
    },
}

M.MultipartUpload = {
    type = "structure",
    id = "MultipartUpload",
    members = {
        UploadId = {
            type = "string",
        },
        Key = {
            type = "string",
        },
        Initiated = {
            type = "timestamp",
        },
        StorageClass = {
            type = "string",
        },
        Owner = M.Owner,
        Initiator = M.Initiator,
        ChecksumAlgorithm = {
            type = "string",
        },
        ChecksumType = {
            type = "string",
        },
    },
}

M.ListMultipartUploadsOutput = {
    type = "structure",
    id = "ListMultipartUploadsOutput",
    traits = {
        xml_name = "ListMultipartUploadsResult",
    },
    members = {
        Bucket = {
            type = "string",
        },
        KeyMarker = {
            type = "string",
        },
        UploadIdMarker = {
            type = "string",
        },
        NextKeyMarker = {
            type = "string",
        },
        Prefix = {
            type = "string",
        },
        Delimiter = {
            type = "string",
        },
        NextUploadIdMarker = {
            type = "string",
        },
        MaxUploads = {
            type = "integer",
        },
        IsTruncated = {
            type = "boolean",
        },
        Uploads = {
            type = "list",
            member = M.MultipartUpload,
            traits = {
                xml_flattened = true,
                xml_name = "Upload",
            },
        },
        CommonPrefixes = {
            type = "list",
            member = M.CommonPrefix,
            traits = {
                xml_flattened = true,
            },
        },
        EncodingType = {
            type = "string",
        },
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
    },
}

M.OptionalObjectAttributes = {
    RESTORE_STATUS = "RestoreStatus",
}

M.ListObjectsInput = {
    type = "structure",
    id = "ListObjectsInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Delimiter = {
            type = "string",
            traits = {
                http_query = "delimiter",
            },
        },
        EncodingType = {
            type = "string",
            traits = {
                http_query = "encoding-type",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "marker",
            },
        },
        MaxKeys = {
            type = "integer",
            traits = {
                http_query = "max-keys",
            },
        },
        Prefix = {
            type = "string",
            traits = {
                http_query = "prefix",
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        OptionalObjectAttributes = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_header = "x-amz-optional-object-attributes",
            },
        },
    },
}

M.RestoreStatus = {
    type = "structure",
    id = "RestoreStatus",
    members = {
        IsRestoreInProgress = {
            type = "boolean",
        },
        RestoreExpiryDate = {
            type = "timestamp",
        },
    },
}

M.ObjectStorageClass = {
    STANDARD = "STANDARD",
    REDUCED_REDUNDANCY = "REDUCED_REDUNDANCY",
    GLACIER = "GLACIER",
    STANDARD_IA = "STANDARD_IA",
    ONEZONE_IA = "ONEZONE_IA",
    INTELLIGENT_TIERING = "INTELLIGENT_TIERING",
    DEEP_ARCHIVE = "DEEP_ARCHIVE",
    OUTPOSTS = "OUTPOSTS",
    GLACIER_IR = "GLACIER_IR",
    SNOW = "SNOW",
    EXPRESS_ONEZONE = "EXPRESS_ONEZONE",
    FSX_OPENZFS = "FSX_OPENZFS",
    FSX_ONTAP = "FSX_ONTAP",
}

M.Object = {
    type = "structure",
    id = "Object",
    members = {
        Key = {
            type = "string",
        },
        LastModified = {
            type = "timestamp",
        },
        ETag = {
            type = "string",
        },
        ChecksumAlgorithm = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_flattened = true,
            },
        },
        ChecksumType = {
            type = "string",
        },
        Size = {
            type = "long",
        },
        StorageClass = {
            type = "string",
        },
        Owner = M.Owner,
        RestoreStatus = M.RestoreStatus,
    },
}

M.ListObjectsOutput = {
    type = "structure",
    id = "ListObjectsOutput",
    traits = {
        xml_name = "ListBucketResult",
    },
    members = {
        IsTruncated = {
            type = "boolean",
        },
        Marker = {
            type = "string",
        },
        NextMarker = {
            type = "string",
        },
        Contents = {
            type = "list",
            member = M.Object,
            traits = {
                xml_flattened = true,
            },
        },
        Name = {
            type = "string",
        },
        Prefix = {
            type = "string",
        },
        Delimiter = {
            type = "string",
        },
        MaxKeys = {
            type = "integer",
        },
        CommonPrefixes = {
            type = "list",
            member = M.CommonPrefix,
            traits = {
                xml_flattened = true,
            },
        },
        EncodingType = {
            type = "string",
        },
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
    },
}

M.ListObjectsV2Input = {
    type = "structure",
    id = "ListObjectsV2Input",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Delimiter = {
            type = "string",
            traits = {
                http_query = "delimiter",
            },
        },
        EncodingType = {
            type = "string",
            traits = {
                http_query = "encoding-type",
            },
        },
        MaxKeys = {
            type = "integer",
            traits = {
                http_query = "max-keys",
            },
        },
        Prefix = {
            type = "string",
            traits = {
                http_query = "prefix",
            },
        },
        ContinuationToken = {
            type = "string",
            traits = {
                http_query = "continuation-token",
            },
        },
        FetchOwner = {
            type = "boolean",
            traits = {
                http_query = "fetch-owner",
            },
        },
        StartAfter = {
            type = "string",
            traits = {
                http_query = "start-after",
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        OptionalObjectAttributes = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_header = "x-amz-optional-object-attributes",
            },
        },
    },
}

M.ListObjectsV2Output = {
    type = "structure",
    id = "ListObjectsV2Output",
    traits = {
        xml_name = "ListBucketResult",
    },
    members = {
        IsTruncated = {
            type = "boolean",
        },
        Contents = {
            type = "list",
            member = M.Object,
            traits = {
                xml_flattened = true,
            },
        },
        Name = {
            type = "string",
        },
        Prefix = {
            type = "string",
        },
        Delimiter = {
            type = "string",
        },
        MaxKeys = {
            type = "integer",
        },
        CommonPrefixes = {
            type = "list",
            member = M.CommonPrefix,
            traits = {
                xml_flattened = true,
            },
        },
        EncodingType = {
            type = "string",
        },
        KeyCount = {
            type = "integer",
        },
        ContinuationToken = {
            type = "string",
        },
        NextContinuationToken = {
            type = "string",
        },
        StartAfter = {
            type = "string",
        },
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
    },
}

M.ListObjectVersionsInput = {
    type = "structure",
    id = "ListObjectVersionsInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Delimiter = {
            type = "string",
            traits = {
                http_query = "delimiter",
            },
        },
        EncodingType = {
            type = "string",
            traits = {
                http_query = "encoding-type",
            },
        },
        KeyMarker = {
            type = "string",
            traits = {
                http_query = "key-marker",
            },
        },
        MaxKeys = {
            type = "integer",
            traits = {
                http_query = "max-keys",
            },
        },
        Prefix = {
            type = "string",
            traits = {
                http_query = "prefix",
            },
        },
        VersionIdMarker = {
            type = "string",
            traits = {
                http_query = "version-id-marker",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        OptionalObjectAttributes = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_header = "x-amz-optional-object-attributes",
            },
        },
    },
}

M.DeleteMarkerEntry = {
    type = "structure",
    id = "DeleteMarkerEntry",
    members = {
        Owner = M.Owner,
        Key = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
        IsLatest = {
            type = "boolean",
        },
        LastModified = {
            type = "timestamp",
        },
    },
}

M.ObjectVersionStorageClass = {
    STANDARD = "STANDARD",
}

M.ObjectVersion = {
    type = "structure",
    id = "ObjectVersion",
    members = {
        ETag = {
            type = "string",
        },
        ChecksumAlgorithm = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_flattened = true,
            },
        },
        ChecksumType = {
            type = "string",
        },
        Size = {
            type = "long",
        },
        StorageClass = {
            type = "string",
        },
        Key = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
        IsLatest = {
            type = "boolean",
        },
        LastModified = {
            type = "timestamp",
        },
        Owner = M.Owner,
        RestoreStatus = M.RestoreStatus,
    },
}

M.ListObjectVersionsOutput = {
    type = "structure",
    id = "ListObjectVersionsOutput",
    traits = {
        xml_name = "ListVersionsResult",
    },
    members = {
        IsTruncated = {
            type = "boolean",
        },
        KeyMarker = {
            type = "string",
        },
        VersionIdMarker = {
            type = "string",
        },
        NextKeyMarker = {
            type = "string",
        },
        NextVersionIdMarker = {
            type = "string",
        },
        Versions = {
            type = "list",
            member = M.ObjectVersion,
            traits = {
                xml_flattened = true,
                xml_name = "Version",
            },
        },
        DeleteMarkers = {
            type = "list",
            member = M.DeleteMarkerEntry,
            traits = {
                xml_flattened = true,
                xml_name = "DeleteMarker",
            },
        },
        Name = {
            type = "string",
        },
        Prefix = {
            type = "string",
        },
        Delimiter = {
            type = "string",
        },
        MaxKeys = {
            type = "integer",
        },
        CommonPrefixes = {
            type = "list",
            member = M.CommonPrefix,
            traits = {
                xml_flattened = true,
            },
        },
        EncodingType = {
            type = "string",
        },
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
    },
}

M.ListPartsInput = {
    type = "structure",
    id = "ListPartsInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxParts = {
            type = "integer",
            traits = {
                http_query = "max-parts",
            },
        },
        PartNumberMarker = {
            type = "string",
            traits = {
                http_query = "part-number-marker",
            },
        },
        UploadId = {
            type = "string",
            traits = {
                http_query = "uploadId",
                required = true,
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        SSECustomerAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-algorithm",
            },
        },
        SSECustomerKey = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key",
            },
        },
        SSECustomerKeyMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key-MD5",
            },
        },
    },
}

M.Part = {
    type = "structure",
    id = "Part",
    members = {
        PartNumber = {
            type = "integer",
        },
        LastModified = {
            type = "timestamp",
        },
        ETag = {
            type = "string",
        },
        Size = {
            type = "long",
        },
        ChecksumCRC32 = {
            type = "string",
        },
        ChecksumCRC32C = {
            type = "string",
        },
        ChecksumCRC64NVME = {
            type = "string",
        },
        ChecksumSHA1 = {
            type = "string",
        },
        ChecksumSHA256 = {
            type = "string",
        },
        ChecksumSHA512 = {
            type = "string",
        },
        ChecksumMD5 = {
            type = "string",
        },
        ChecksumXXHASH64 = {
            type = "string",
        },
        ChecksumXXHASH3 = {
            type = "string",
        },
        ChecksumXXHASH128 = {
            type = "string",
        },
    },
}

M.ListPartsOutput = {
    type = "structure",
    id = "ListPartsOutput",
    traits = {
        xml_name = "ListPartsResult",
    },
    members = {
        AbortDate = {
            type = "timestamp",
            traits = {
                http_header = "x-amz-abort-date",
            },
        },
        AbortRuleId = {
            type = "string",
            traits = {
                http_header = "x-amz-abort-rule-id",
            },
        },
        Bucket = {
            type = "string",
        },
        Key = {
            type = "string",
        },
        UploadId = {
            type = "string",
        },
        PartNumberMarker = {
            type = "string",
        },
        NextPartNumberMarker = {
            type = "string",
        },
        MaxParts = {
            type = "integer",
        },
        IsTruncated = {
            type = "boolean",
        },
        Parts = {
            type = "list",
            member = M.Part,
            traits = {
                xml_flattened = true,
                xml_name = "Part",
            },
        },
        Initiator = M.Initiator,
        Owner = M.Owner,
        StorageClass = {
            type = "string",
        },
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
        },
        ChecksumType = {
            type = "string",
        },
    },
}

M.PutBucketAbacInput = {
    type = "structure",
    id = "PutBucketAbacInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        AbacStatus = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "AbacStatus",
        } }, { __index = M.AbacStatus }),
    },
}

M.PutBucketAbacOutput = {
    type = "structure",
    id = "PutBucketAbacOutput",
}

M.PutBucketAccelerateConfigurationInput = {
    type = "structure",
    id = "PutBucketAccelerateConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccelerateConfiguration = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "AccelerateConfiguration",
        } }, { __index = M.AccelerateConfiguration }),
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
    },
}

M.PutBucketAccelerateConfigurationOutput = {
    type = "structure",
    id = "PutBucketAccelerateConfigurationOutput",
}

M.PutBucketAclInput = {
    type = "structure",
    id = "PutBucketAclInput",
    members = {
        ACL = {
            type = "string",
            traits = {
                http_header = "x-amz-acl",
            },
        },
        AccessControlPolicy = setmetatable({ traits = {
            http_payload = true,
            xml_name = "AccessControlPolicy",
        } }, { __index = M.AccessControlPolicy }),
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        GrantFullControl = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-full-control",
            },
        },
        GrantRead = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-read",
            },
        },
        GrantReadACP = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-read-acp",
            },
        },
        GrantWrite = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-write",
            },
        },
        GrantWriteACP = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-write-acp",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.PutBucketAclOutput = {
    type = "structure",
    id = "PutBucketAclOutput",
}

M.PutBucketAnalyticsConfigurationInput = {
    type = "structure",
    id = "PutBucketAnalyticsConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
        AnalyticsConfiguration = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "AnalyticsConfiguration",
        } }, { __index = M.AnalyticsConfiguration }),
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.PutBucketAnalyticsConfigurationOutput = {
    type = "structure",
    id = "PutBucketAnalyticsConfigurationOutput",
}

M.CORSConfiguration = {
    type = "structure",
    id = "CORSConfiguration",
    members = {
        CORSRules = {
            type = "list",
            member = M.CORSRule,
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "CORSRule",
            },
        },
    },
}

M.PutBucketCorsInput = {
    type = "structure",
    id = "PutBucketCorsInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CORSConfiguration = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "CORSConfiguration",
        } }, { __index = M.CORSConfiguration }),
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.PutBucketCorsOutput = {
    type = "structure",
    id = "PutBucketCorsOutput",
}

M.PutBucketEncryptionInput = {
    type = "structure",
    id = "PutBucketEncryptionInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        ServerSideEncryptionConfiguration = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "ServerSideEncryptionConfiguration",
        } }, { __index = M.ServerSideEncryptionConfiguration }),
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.PutBucketEncryptionOutput = {
    type = "structure",
    id = "PutBucketEncryptionOutput",
}

M.PutBucketIntelligentTieringConfigurationInput = {
    type = "structure",
    id = "PutBucketIntelligentTieringConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        IntelligentTieringConfiguration = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "IntelligentTieringConfiguration",
        } }, { __index = M.IntelligentTieringConfiguration }),
    },
}

M.PutBucketIntelligentTieringConfigurationOutput = {
    type = "structure",
    id = "PutBucketIntelligentTieringConfigurationOutput",
}

M.PutBucketInventoryConfigurationInput = {
    type = "structure",
    id = "PutBucketInventoryConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
        InventoryConfiguration = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "InventoryConfiguration",
        } }, { __index = M.InventoryConfiguration }),
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.PutBucketInventoryConfigurationOutput = {
    type = "structure",
    id = "PutBucketInventoryConfigurationOutput",
}

M.BucketLifecycleConfiguration = {
    type = "structure",
    id = "BucketLifecycleConfiguration",
    members = {
        Rules = {
            type = "list",
            member = M.LifecycleRule,
            traits = {
                required = true,
                xml_flattened = true,
                xml_name = "Rule",
            },
        },
    },
}

M.PutBucketLifecycleConfigurationInput = {
    type = "structure",
    id = "PutBucketLifecycleConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        LifecycleConfiguration = setmetatable({ traits = {
            http_payload = true,
            xml_name = "LifecycleConfiguration",
        } }, { __index = M.BucketLifecycleConfiguration }),
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        TransitionDefaultMinimumObjectSize = {
            type = "string",
            traits = {
                http_header = "x-amz-transition-default-minimum-object-size",
            },
        },
    },
}

M.PutBucketLifecycleConfigurationOutput = {
    type = "structure",
    id = "PutBucketLifecycleConfigurationOutput",
    members = {
        TransitionDefaultMinimumObjectSize = {
            type = "string",
            traits = {
                http_header = "x-amz-transition-default-minimum-object-size",
            },
        },
    },
}

M.BucketLoggingStatus = {
    type = "structure",
    id = "BucketLoggingStatus",
    members = {
        LoggingEnabled = M.LoggingEnabled,
    },
}

M.PutBucketLoggingInput = {
    type = "structure",
    id = "PutBucketLoggingInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BucketLoggingStatus = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "BucketLoggingStatus",
        } }, { __index = M.BucketLoggingStatus }),
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.PutBucketLoggingOutput = {
    type = "structure",
    id = "PutBucketLoggingOutput",
}

M.PutBucketMetricsConfigurationInput = {
    type = "structure",
    id = "PutBucketMetricsConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                http_query = "id",
                required = true,
            },
        },
        MetricsConfiguration = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "MetricsConfiguration",
        } }, { __index = M.MetricsConfiguration }),
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.PutBucketMetricsConfigurationOutput = {
    type = "structure",
    id = "PutBucketMetricsConfigurationOutput",
}

M.NotificationConfiguration = {
    type = "structure",
    id = "NotificationConfiguration",
    members = {
        TopicConfigurations = {
            type = "list",
            member = M.TopicConfiguration,
            traits = {
                xml_flattened = true,
                xml_name = "TopicConfiguration",
            },
        },
        QueueConfigurations = {
            type = "list",
            member = M.QueueConfiguration,
            traits = {
                xml_flattened = true,
                xml_name = "QueueConfiguration",
            },
        },
        LambdaFunctionConfigurations = {
            type = "list",
            member = M.LambdaFunctionConfiguration,
            traits = {
                xml_flattened = true,
                xml_name = "CloudFunctionConfiguration",
            },
        },
        EventBridgeConfiguration = M.EventBridgeConfiguration,
    },
}

M.PutBucketNotificationConfigurationInput = {
    type = "structure",
    id = "PutBucketNotificationConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NotificationConfiguration = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "NotificationConfiguration",
        } }, { __index = M.NotificationConfiguration }),
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        SkipDestinationValidation = {
            type = "boolean",
            traits = {
                http_header = "x-amz-skip-destination-validation",
            },
        },
    },
}

M.PutBucketNotificationConfigurationOutput = {
    type = "structure",
    id = "PutBucketNotificationConfigurationOutput",
}

M.PutBucketOwnershipControlsInput = {
    type = "structure",
    id = "PutBucketOwnershipControlsInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        OwnershipControls = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "OwnershipControls",
        } }, { __index = M.OwnershipControls }),
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
    },
}

M.PutBucketOwnershipControlsOutput = {
    type = "structure",
    id = "PutBucketOwnershipControlsOutput",
}

M.PutBucketPolicyInput = {
    type = "structure",
    id = "PutBucketPolicyInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        ConfirmRemoveSelfBucketAccess = {
            type = "boolean",
            traits = {
                http_header = "x-amz-confirm-remove-self-bucket-access",
            },
        },
        Policy = {
            type = "string",
            traits = {
                http_payload = true,
                required = true,
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.PutBucketPolicyOutput = {
    type = "structure",
    id = "PutBucketPolicyOutput",
}

M.PutBucketReplicationInput = {
    type = "structure",
    id = "PutBucketReplicationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        ReplicationConfiguration = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "ReplicationConfiguration",
        } }, { __index = M.ReplicationConfiguration }),
        Token = {
            type = "string",
            traits = {
                http_header = "x-amz-bucket-object-lock-token",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.PutBucketReplicationOutput = {
    type = "structure",
    id = "PutBucketReplicationOutput",
}

M.RequestPaymentConfiguration = {
    type = "structure",
    id = "RequestPaymentConfiguration",
    members = {
        Payer = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutBucketRequestPaymentInput = {
    type = "structure",
    id = "PutBucketRequestPaymentInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        RequestPaymentConfiguration = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "RequestPaymentConfiguration",
        } }, { __index = M.RequestPaymentConfiguration }),
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.PutBucketRequestPaymentOutput = {
    type = "structure",
    id = "PutBucketRequestPaymentOutput",
}

M.Tagging = {
    type = "structure",
    id = "Tagging",
    members = {
        TagSet = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.PutBucketTaggingInput = {
    type = "structure",
    id = "PutBucketTaggingInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        Tagging = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "Tagging",
        } }, { __index = M.Tagging }),
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.PutBucketTaggingOutput = {
    type = "structure",
    id = "PutBucketTaggingOutput",
}

M.MFADelete = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.VersioningConfiguration = {
    type = "structure",
    id = "VersioningConfiguration",
    members = {
        MFADelete = {
            type = "string",
            traits = {
                xml_name = "MfaDelete",
            },
        },
        Status = {
            type = "string",
        },
    },
}

M.PutBucketVersioningInput = {
    type = "structure",
    id = "PutBucketVersioningInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        MFA = {
            type = "string",
            traits = {
                http_header = "x-amz-mfa",
            },
        },
        VersioningConfiguration = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "VersioningConfiguration",
        } }, { __index = M.VersioningConfiguration }),
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.PutBucketVersioningOutput = {
    type = "structure",
    id = "PutBucketVersioningOutput",
}

M.WebsiteConfiguration = {
    type = "structure",
    id = "WebsiteConfiguration",
    members = {
        ErrorDocument = M.ErrorDocument,
        IndexDocument = M.IndexDocument,
        RedirectAllRequestsTo = M.RedirectAllRequestsTo,
        RoutingRules = {
            type = "list",
            member = M.RoutingRule,
        },
    },
}

M.PutBucketWebsiteInput = {
    type = "structure",
    id = "PutBucketWebsiteInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        WebsiteConfiguration = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "WebsiteConfiguration",
        } }, { __index = M.WebsiteConfiguration }),
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.PutBucketWebsiteOutput = {
    type = "structure",
    id = "PutBucketWebsiteOutput",
}

M.EncryptionTypeMismatch = {
    type = "structure",
    id = "EncryptionTypeMismatch",
    error = "client",
}

M.InvalidRequest = {
    type = "structure",
    id = "InvalidRequest",
    error = "client",
}

M.InvalidWriteOffset = {
    type = "structure",
    id = "InvalidWriteOffset",
    error = "client",
}

M.PutObjectInput = {
    type = "structure",
    id = "PutObjectInput",
    members = {
        ACL = {
            type = "string",
            traits = {
                http_header = "x-amz-acl",
            },
        },
        Body = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CacheControl = {
            type = "string",
            traits = {
                http_header = "Cache-Control",
            },
        },
        ContentDisposition = {
            type = "string",
            traits = {
                http_header = "Content-Disposition",
            },
        },
        ContentEncoding = {
            type = "string",
            traits = {
                http_header = "Content-Encoding",
            },
        },
        ContentLanguage = {
            type = "string",
            traits = {
                http_header = "Content-Language",
            },
        },
        ContentLength = {
            type = "long",
            traits = {
                http_header = "Content-Length",
            },
        },
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        ChecksumCRC32 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-crc32",
            },
        },
        ChecksumCRC32C = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-crc32c",
            },
        },
        ChecksumCRC64NVME = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-crc64nvme",
            },
        },
        ChecksumSHA1 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-sha1",
            },
        },
        ChecksumSHA256 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-sha256",
            },
        },
        ChecksumSHA512 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-sha512",
            },
        },
        ChecksumMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-md5",
            },
        },
        ChecksumXXHASH64 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-xxhash64",
            },
        },
        ChecksumXXHASH3 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-xxhash3",
            },
        },
        ChecksumXXHASH128 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-xxhash128",
            },
        },
        Expires = {
            type = "string",
            traits = {
                http_header = "Expires",
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
        IfNoneMatch = {
            type = "string",
            traits = {
                http_header = "If-None-Match",
            },
        },
        GrantFullControl = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-full-control",
            },
        },
        GrantRead = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-read",
            },
        },
        GrantReadACP = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-read-acp",
            },
        },
        GrantWriteACP = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-write-acp",
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WriteOffsetBytes = {
            type = "long",
            traits = {
                http_header = "x-amz-write-offset-bytes",
            },
        },
        Metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                http_prefix_headers = "x-amz-meta-",
            },
        },
        ServerSideEncryption = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption",
            },
        },
        StorageClass = {
            type = "string",
            traits = {
                http_header = "x-amz-storage-class",
            },
        },
        WebsiteRedirectLocation = {
            type = "string",
            traits = {
                http_header = "x-amz-website-redirect-location",
            },
        },
        SSECustomerAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-algorithm",
            },
        },
        SSECustomerKey = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key",
            },
        },
        SSECustomerKeyMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key-MD5",
            },
        },
        SSEKMSKeyId = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-aws-kms-key-id",
            },
        },
        SSEKMSEncryptionContext = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-context",
            },
        },
        BucketKeyEnabled = {
            type = "boolean",
            traits = {
                http_header = "x-amz-server-side-encryption-bucket-key-enabled",
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        Tagging = {
            type = "string",
            traits = {
                http_header = "x-amz-tagging",
            },
        },
        ObjectLockMode = {
            type = "string",
            traits = {
                http_header = "x-amz-object-lock-mode",
            },
        },
        ObjectLockRetainUntilDate = {
            type = "timestamp",
            traits = {
                http_header = "x-amz-object-lock-retain-until-date",
                timestamp_format = "date-time",
            },
        },
        ObjectLockLegalHoldStatus = {
            type = "string",
            traits = {
                http_header = "x-amz-object-lock-legal-hold",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.PutObjectOutput = {
    type = "structure",
    id = "PutObjectOutput",
    members = {
        Expiration = {
            type = "string",
            traits = {
                http_header = "x-amz-expiration",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
        ChecksumCRC32 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-crc32",
            },
        },
        ChecksumCRC32C = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-crc32c",
            },
        },
        ChecksumCRC64NVME = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-crc64nvme",
            },
        },
        ChecksumSHA1 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-sha1",
            },
        },
        ChecksumSHA256 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-sha256",
            },
        },
        ChecksumSHA512 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-sha512",
            },
        },
        ChecksumMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-md5",
            },
        },
        ChecksumXXHASH64 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-xxhash64",
            },
        },
        ChecksumXXHASH3 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-xxhash3",
            },
        },
        ChecksumXXHASH128 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-xxhash128",
            },
        },
        ChecksumType = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-type",
            },
        },
        ServerSideEncryption = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption",
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_header = "x-amz-version-id",
            },
        },
        SSECustomerAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-algorithm",
            },
        },
        SSECustomerKeyMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key-MD5",
            },
        },
        SSEKMSKeyId = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-aws-kms-key-id",
            },
        },
        SSEKMSEncryptionContext = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-context",
            },
        },
        BucketKeyEnabled = {
            type = "boolean",
            traits = {
                http_header = "x-amz-server-side-encryption-bucket-key-enabled",
            },
        },
        Size = {
            type = "long",
            traits = {
                http_header = "x-amz-object-size",
            },
        },
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
    },
}

M.TooManyParts = {
    type = "structure",
    id = "TooManyParts",
    error = "client",
}

M.PutObjectAclInput = {
    type = "structure",
    id = "PutObjectAclInput",
    members = {
        ACL = {
            type = "string",
            traits = {
                http_header = "x-amz-acl",
            },
        },
        AccessControlPolicy = setmetatable({ traits = {
            http_payload = true,
            xml_name = "AccessControlPolicy",
        } }, { __index = M.AccessControlPolicy }),
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        GrantFullControl = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-full-control",
            },
        },
        GrantRead = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-read",
            },
        },
        GrantReadACP = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-read-acp",
            },
        },
        GrantWrite = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-write",
            },
        },
        GrantWriteACP = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-write-acp",
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_query = "versionId",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.PutObjectAclOutput = {
    type = "structure",
    id = "PutObjectAclOutput",
    members = {
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
    },
}

M.PutObjectLegalHoldInput = {
    type = "structure",
    id = "PutObjectLegalHoldInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LegalHold = setmetatable({ traits = {
            http_payload = true,
            xml_name = "LegalHold",
        } }, { __index = M.ObjectLockLegalHold }),
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_query = "versionId",
            },
        },
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.PutObjectLegalHoldOutput = {
    type = "structure",
    id = "PutObjectLegalHoldOutput",
    members = {
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
    },
}

M.PutObjectLockConfigurationInput = {
    type = "structure",
    id = "PutObjectLockConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ObjectLockConfiguration = setmetatable({ traits = {
            http_payload = true,
            xml_name = "ObjectLockConfiguration",
        } }, { __index = M.ObjectLockConfiguration }),
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        Token = {
            type = "string",
            traits = {
                http_header = "x-amz-bucket-object-lock-token",
            },
        },
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.PutObjectLockConfigurationOutput = {
    type = "structure",
    id = "PutObjectLockConfigurationOutput",
    members = {
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
    },
}

M.PutObjectRetentionInput = {
    type = "structure",
    id = "PutObjectRetentionInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Retention = setmetatable({ traits = {
            http_payload = true,
            xml_name = "Retention",
        } }, { __index = M.ObjectLockRetention }),
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_query = "versionId",
            },
        },
        BypassGovernanceRetention = {
            type = "boolean",
            traits = {
                http_header = "x-amz-bypass-governance-retention",
            },
        },
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.PutObjectRetentionOutput = {
    type = "structure",
    id = "PutObjectRetentionOutput",
    members = {
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
    },
}

M.PutObjectTaggingInput = {
    type = "structure",
    id = "PutObjectTaggingInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_query = "versionId",
            },
        },
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        Tagging = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "Tagging",
        } }, { __index = M.Tagging }),
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
    },
}

M.PutObjectTaggingOutput = {
    type = "structure",
    id = "PutObjectTaggingOutput",
    members = {
        VersionId = {
            type = "string",
            traits = {
                http_header = "x-amz-version-id",
            },
        },
    },
}

M.PutPublicAccessBlockInput = {
    type = "structure",
    id = "PutPublicAccessBlockInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        PublicAccessBlockConfiguration = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "PublicAccessBlockConfiguration",
        } }, { __index = M.PublicAccessBlockConfiguration }),
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.PutPublicAccessBlockOutput = {
    type = "structure",
    id = "PutPublicAccessBlockOutput",
}

M.IdempotencyParameterMismatch = {
    type = "structure",
    id = "IdempotencyParameterMismatch",
    error = "client",
}

M.RenameObjectInput = {
    type = "structure",
    id = "RenameObjectInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RenameSource = {
            type = "string",
            traits = {
                http_header = "x-amz-rename-source",
                required = true,
            },
        },
        DestinationIfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
        DestinationIfNoneMatch = {
            type = "string",
            traits = {
                http_header = "If-None-Match",
            },
        },
        DestinationIfModifiedSince = {
            type = "timestamp",
            traits = {
                http_header = "If-Modified-Since",
            },
        },
        DestinationIfUnmodifiedSince = {
            type = "timestamp",
            traits = {
                http_header = "If-Unmodified-Since",
            },
        },
        SourceIfMatch = {
            type = "string",
            traits = {
                http_header = "x-amz-rename-source-if-match",
            },
        },
        SourceIfNoneMatch = {
            type = "string",
            traits = {
                http_header = "x-amz-rename-source-if-none-match",
            },
        },
        SourceIfModifiedSince = {
            type = "timestamp",
            traits = {
                http_header = "x-amz-rename-source-if-modified-since",
                timestamp_format = "http-date",
            },
        },
        SourceIfUnmodifiedSince = {
            type = "timestamp",
            traits = {
                http_header = "x-amz-rename-source-if-unmodified-since",
                timestamp_format = "http-date",
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                http_header = "x-amz-client-token",
                idempotency_token = true,
            },
        },
    },
}

M.RenameObjectOutput = {
    type = "structure",
    id = "RenameObjectOutput",
}

M.ObjectAlreadyInActiveTierError = {
    type = "structure",
    id = "ObjectAlreadyInActiveTierError",
    error = "client",
}

M.Tier = {
    Standard = "Standard",
    Bulk = "Bulk",
    Expedited = "Expedited",
}

M.GlacierJobParameters = {
    type = "structure",
    id = "GlacierJobParameters",
    members = {
        Tier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Encryption = {
    type = "structure",
    id = "Encryption",
    members = {
        EncryptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KMSKeyId = {
            type = "string",
        },
        KMSContext = {
            type = "string",
        },
    },
}

M.MetadataEntry = {
    type = "structure",
    id = "MetadataEntry",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.S3Location = {
    type = "structure",
    id = "S3Location",
    members = {
        BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Prefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Encryption = M.Encryption,
        CannedACL = {
            type = "string",
        },
        AccessControlList = {
            type = "list",
            member = M.Grant,
        },
        Tagging = M.Tagging,
        UserMetadata = {
            type = "list",
            member = M.MetadataEntry,
        },
        StorageClass = {
            type = "string",
        },
    },
}

M.OutputLocation = {
    type = "structure",
    id = "OutputLocation",
    members = {
        S3 = M.S3Location,
    },
}

M.ExpressionType = {
    SQL = "SQL",
}

M.CompressionType = {
    NONE = "NONE",
    GZIP = "GZIP",
    BZIP2 = "BZIP2",
}

M.FileHeaderInfo = {
    USE = "USE",
    IGNORE = "IGNORE",
    NONE = "NONE",
}

M.CSVInput = {
    type = "structure",
    id = "CSVInput",
    members = {
        FileHeaderInfo = {
            type = "string",
        },
        Comments = {
            type = "string",
        },
        QuoteEscapeCharacter = {
            type = "string",
        },
        RecordDelimiter = {
            type = "string",
        },
        FieldDelimiter = {
            type = "string",
        },
        QuoteCharacter = {
            type = "string",
        },
        AllowQuotedRecordDelimiter = {
            type = "boolean",
        },
    },
}

M.JSONType = {
    DOCUMENT = "DOCUMENT",
    LINES = "LINES",
}

M.JSONInput = {
    type = "structure",
    id = "JSONInput",
    members = {
        Type = {
            type = "string",
        },
    },
}

M.ParquetInput = {
    type = "structure",
    id = "ParquetInput",
}

M.InputSerialization = {
    type = "structure",
    id = "InputSerialization",
    members = {
        CSV = M.CSVInput,
        CompressionType = {
            type = "string",
        },
        JSON = M.JSONInput,
        Parquet = M.ParquetInput,
    },
}

M.QuoteFields = {
    ALWAYS = "ALWAYS",
    ASNEEDED = "ASNEEDED",
}

M.CSVOutput = {
    type = "structure",
    id = "CSVOutput",
    members = {
        QuoteFields = {
            type = "string",
        },
        QuoteEscapeCharacter = {
            type = "string",
        },
        RecordDelimiter = {
            type = "string",
        },
        FieldDelimiter = {
            type = "string",
        },
        QuoteCharacter = {
            type = "string",
        },
    },
}

M.JSONOutput = {
    type = "structure",
    id = "JSONOutput",
    members = {
        RecordDelimiter = {
            type = "string",
        },
    },
}

M.OutputSerialization = {
    type = "structure",
    id = "OutputSerialization",
    members = {
        CSV = M.CSVOutput,
        JSON = M.JSONOutput,
    },
}

M.SelectParameters = {
    type = "structure",
    id = "SelectParameters",
    members = {
        InputSerialization = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputSerialization }),
        ExpressionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputSerialization = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputSerialization }),
    },
}

M.RestoreRequestType = {
    SELECT = "SELECT",
}

M.RestoreRequest = {
    type = "structure",
    id = "RestoreRequest",
    members = {
        Days = {
            type = "integer",
        },
        GlacierJobParameters = M.GlacierJobParameters,
        Type = {
            type = "string",
        },
        Tier = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        SelectParameters = M.SelectParameters,
        OutputLocation = M.OutputLocation,
    },
}

M.RestoreObjectInput = {
    type = "structure",
    id = "RestoreObjectInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_query = "versionId",
            },
        },
        RestoreRequest = setmetatable({ traits = {
            http_payload = true,
            xml_name = "RestoreRequest",
        } }, { __index = M.RestoreRequest }),
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.RestoreObjectOutput = {
    type = "structure",
    id = "RestoreObjectOutput",
    members = {
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
        RestoreOutputPath = {
            type = "string",
            traits = {
                http_header = "x-amz-restore-output-path",
            },
        },
    },
}

M.RequestProgress = {
    type = "structure",
    id = "RequestProgress",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.ScanRange = {
    type = "structure",
    id = "ScanRange",
    members = {
        Start = {
            type = "long",
        },
        End = {
            type = "long",
        },
    },
}

M.SelectObjectContentInput = {
    type = "structure",
    id = "SelectObjectContentInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SSECustomerAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-algorithm",
            },
        },
        SSECustomerKey = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key",
            },
        },
        SSECustomerKeyMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key-MD5",
            },
        },
        Expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExpressionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequestProgress = M.RequestProgress,
        InputSerialization = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputSerialization }),
        OutputSerialization = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputSerialization }),
        ScanRange = M.ScanRange,
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.ContinuationEvent = {
    type = "structure",
    id = "ContinuationEvent",
}

M.EndEvent = {
    type = "structure",
    id = "EndEvent",
}

M.Progress = {
    type = "structure",
    id = "Progress",
    members = {
        BytesScanned = {
            type = "long",
        },
        BytesProcessed = {
            type = "long",
        },
        BytesReturned = {
            type = "long",
        },
    },
}

M.ProgressEvent = {
    type = "structure",
    id = "ProgressEvent",
    members = {
        Details = setmetatable({ traits = {
            event_payload = true,
        } }, { __index = M.Progress }),
    },
}

M.RecordsEvent = {
    type = "structure",
    id = "RecordsEvent",
    members = {
        Payload = {
            type = "blob",
            traits = {
                event_payload = true,
            },
        },
    },
}

M.Stats = {
    type = "structure",
    id = "Stats",
    members = {
        BytesScanned = {
            type = "long",
        },
        BytesProcessed = {
            type = "long",
        },
        BytesReturned = {
            type = "long",
        },
    },
}

M.StatsEvent = {
    type = "structure",
    id = "StatsEvent",
    members = {
        Details = setmetatable({ traits = {
            event_payload = true,
        } }, { __index = M.Stats }),
    },
}

M.SelectObjectContentEventStream = {
    type = "union",
    id = "SelectObjectContentEventStream",
    members = {
        Records = M.RecordsEvent,
        Stats = M.StatsEvent,
        Progress = M.ProgressEvent,
        Cont = M.ContinuationEvent,
        End = M.EndEvent,
    },
}

M.SelectObjectContentOutput = {
    type = "structure",
    id = "SelectObjectContentOutput",
    members = {
        Payload = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.SelectObjectContentEventStream }),
    },
}

M.InventoryTableConfigurationUpdates = {
    type = "structure",
    id = "InventoryTableConfigurationUpdates",
    members = {
        ConfigurationState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionConfiguration = M.MetadataTableEncryptionConfiguration,
    },
}

M.UpdateBucketMetadataInventoryTableConfigurationInput = {
    type = "structure",
    id = "UpdateBucketMetadataInventoryTableConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        InventoryTableConfiguration = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "InventoryTableConfiguration",
        } }, { __index = M.InventoryTableConfigurationUpdates }),
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.UpdateBucketMetadataInventoryTableConfigurationOutput = {
    type = "structure",
    id = "UpdateBucketMetadataInventoryTableConfigurationOutput",
}

M.JournalTableConfigurationUpdates = {
    type = "structure",
    id = "JournalTableConfigurationUpdates",
    members = {
        RecordExpiration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecordExpiration }),
    },
}

M.UpdateBucketMetadataJournalTableConfigurationInput = {
    type = "structure",
    id = "UpdateBucketMetadataJournalTableConfigurationInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        JournalTableConfiguration = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "JournalTableConfiguration",
        } }, { __index = M.JournalTableConfigurationUpdates }),
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.UpdateBucketMetadataJournalTableConfigurationOutput = {
    type = "structure",
    id = "UpdateBucketMetadataJournalTableConfigurationOutput",
}

M.SSEKMSEncryption = {
    type = "structure",
    id = "SSEKMSEncryption",
    traits = {
        xml_name = "SSE-KMS",
    },
    members = {
        KMSKeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BucketKeyEnabled = {
            type = "boolean",
        },
    },
}

M.ObjectEncryption = {
    type = "union",
    id = "ObjectEncryption",
    members = {
        SSEKMS = setmetatable({ traits = {
            xml_name = "SSE-KMS",
        } }, { __index = M.SSEKMSEncryption }),
    },
}

M.UpdateObjectEncryptionInput = {
    type = "structure",
    id = "UpdateObjectEncryptionInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_query = "versionId",
            },
        },
        ObjectEncryption = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ObjectEncryption }),
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
    },
}

M.UpdateObjectEncryptionOutput = {
    type = "structure",
    id = "UpdateObjectEncryptionOutput",
    members = {
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
    },
}

M.UploadPartInput = {
    type = "structure",
    id = "UploadPartInput",
    members = {
        Body = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ContentLength = {
            type = "long",
            traits = {
                http_header = "Content-Length",
            },
        },
        ContentMD5 = {
            type = "string",
            traits = {
                http_header = "Content-MD5",
            },
        },
        ChecksumAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-sdk-checksum-algorithm",
            },
        },
        ChecksumCRC32 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-crc32",
            },
        },
        ChecksumCRC32C = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-crc32c",
            },
        },
        ChecksumCRC64NVME = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-crc64nvme",
            },
        },
        ChecksumSHA1 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-sha1",
            },
        },
        ChecksumSHA256 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-sha256",
            },
        },
        ChecksumSHA512 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-sha512",
            },
        },
        ChecksumMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-md5",
            },
        },
        ChecksumXXHASH64 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-xxhash64",
            },
        },
        ChecksumXXHASH3 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-xxhash3",
            },
        },
        ChecksumXXHASH128 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-xxhash128",
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PartNumber = {
            type = "integer",
            traits = {
                http_query = "partNumber",
                required = true,
            },
        },
        UploadId = {
            type = "string",
            traits = {
                http_query = "uploadId",
                required = true,
            },
        },
        SSECustomerAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-algorithm",
            },
        },
        SSECustomerKey = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key",
            },
        },
        SSECustomerKeyMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key-MD5",
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
    },
}

M.UploadPartOutput = {
    type = "structure",
    id = "UploadPartOutput",
    members = {
        ServerSideEncryption = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
        ChecksumCRC32 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-crc32",
            },
        },
        ChecksumCRC32C = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-crc32c",
            },
        },
        ChecksumCRC64NVME = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-crc64nvme",
            },
        },
        ChecksumSHA1 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-sha1",
            },
        },
        ChecksumSHA256 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-sha256",
            },
        },
        ChecksumSHA512 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-sha512",
            },
        },
        ChecksumMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-md5",
            },
        },
        ChecksumXXHASH64 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-xxhash64",
            },
        },
        ChecksumXXHASH3 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-xxhash3",
            },
        },
        ChecksumXXHASH128 = {
            type = "string",
            traits = {
                http_header = "x-amz-checksum-xxhash128",
            },
        },
        SSECustomerAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-algorithm",
            },
        },
        SSECustomerKeyMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key-MD5",
            },
        },
        SSEKMSKeyId = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-aws-kms-key-id",
            },
        },
        BucketKeyEnabled = {
            type = "boolean",
            traits = {
                http_header = "x-amz-server-side-encryption-bucket-key-enabled",
            },
        },
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
    },
}

M.UploadPartCopyInput = {
    type = "structure",
    id = "UploadPartCopyInput",
    members = {
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CopySource = {
            type = "string",
            traits = {
                http_header = "x-amz-copy-source",
                required = true,
            },
        },
        CopySourceIfMatch = {
            type = "string",
            traits = {
                http_header = "x-amz-copy-source-if-match",
            },
        },
        CopySourceIfModifiedSince = {
            type = "timestamp",
            traits = {
                http_header = "x-amz-copy-source-if-modified-since",
            },
        },
        CopySourceIfNoneMatch = {
            type = "string",
            traits = {
                http_header = "x-amz-copy-source-if-none-match",
            },
        },
        CopySourceIfUnmodifiedSince = {
            type = "timestamp",
            traits = {
                http_header = "x-amz-copy-source-if-unmodified-since",
            },
        },
        CopySourceRange = {
            type = "string",
            traits = {
                http_header = "x-amz-copy-source-range",
            },
        },
        Key = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PartNumber = {
            type = "integer",
            traits = {
                http_query = "partNumber",
                required = true,
            },
        },
        UploadId = {
            type = "string",
            traits = {
                http_query = "uploadId",
                required = true,
            },
        },
        SSECustomerAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-algorithm",
            },
        },
        SSECustomerKey = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key",
            },
        },
        SSECustomerKeyMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key-MD5",
            },
        },
        CopySourceSSECustomerAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-copy-source-server-side-encryption-customer-algorithm",
            },
        },
        CopySourceSSECustomerKey = {
            type = "string",
            traits = {
                http_header = "x-amz-copy-source-server-side-encryption-customer-key",
            },
        },
        CopySourceSSECustomerKeyMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-copy-source-server-side-encryption-customer-key-MD5",
            },
        },
        RequestPayer = {
            type = "string",
            traits = {
                http_header = "x-amz-request-payer",
            },
        },
        ExpectedBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-expected-bucket-owner",
            },
        },
        ExpectedSourceBucketOwner = {
            type = "string",
            traits = {
                http_header = "x-amz-source-expected-bucket-owner",
            },
        },
    },
}

M.CopyPartResult = {
    type = "structure",
    id = "CopyPartResult",
    members = {
        ETag = {
            type = "string",
        },
        LastModified = {
            type = "timestamp",
        },
        ChecksumCRC32 = {
            type = "string",
        },
        ChecksumCRC32C = {
            type = "string",
        },
        ChecksumCRC64NVME = {
            type = "string",
        },
        ChecksumSHA1 = {
            type = "string",
        },
        ChecksumSHA256 = {
            type = "string",
        },
        ChecksumSHA512 = {
            type = "string",
        },
        ChecksumMD5 = {
            type = "string",
        },
        ChecksumXXHASH64 = {
            type = "string",
        },
        ChecksumXXHASH3 = {
            type = "string",
        },
        ChecksumXXHASH128 = {
            type = "string",
        },
    },
}

M.UploadPartCopyOutput = {
    type = "structure",
    id = "UploadPartCopyOutput",
    members = {
        CopySourceVersionId = {
            type = "string",
            traits = {
                http_header = "x-amz-copy-source-version-id",
            },
        },
        CopyPartResult = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.CopyPartResult }),
        ServerSideEncryption = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption",
            },
        },
        SSECustomerAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-algorithm",
            },
        },
        SSECustomerKeyMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-customer-key-MD5",
            },
        },
        SSEKMSKeyId = {
            type = "string",
            traits = {
                http_header = "x-amz-server-side-encryption-aws-kms-key-id",
            },
        },
        BucketKeyEnabled = {
            type = "boolean",
            traits = {
                http_header = "x-amz-server-side-encryption-bucket-key-enabled",
            },
        },
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-request-charged",
            },
        },
    },
}

M.WriteGetObjectResponseInput = {
    type = "structure",
    id = "WriteGetObjectResponseInput",
    members = {
        RequestRoute = {
            type = "string",
            traits = {
                http_header = "x-amz-request-route",
                required = true,
            },
        },
        RequestToken = {
            type = "string",
            traits = {
                http_header = "x-amz-request-token",
                required = true,
            },
        },
        Body = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
        StatusCode = {
            type = "integer",
            traits = {
                http_header = "x-amz-fwd-status",
            },
        },
        ErrorCode = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-error-code",
            },
        },
        ErrorMessage = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-error-message",
            },
        },
        AcceptRanges = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-accept-ranges",
            },
        },
        CacheControl = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-Cache-Control",
            },
        },
        ContentDisposition = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-Content-Disposition",
            },
        },
        ContentEncoding = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-Content-Encoding",
            },
        },
        ContentLanguage = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-Content-Language",
            },
        },
        ContentLength = {
            type = "long",
            traits = {
                http_header = "Content-Length",
            },
        },
        ContentRange = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-Content-Range",
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-Content-Type",
            },
        },
        ChecksumCRC32 = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-checksum-crc32",
            },
        },
        ChecksumCRC32C = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-checksum-crc32c",
            },
        },
        ChecksumCRC64NVME = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-checksum-crc64nvme",
            },
        },
        ChecksumSHA1 = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-checksum-sha1",
            },
        },
        ChecksumSHA256 = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-checksum-sha256",
            },
        },
        ChecksumSHA512 = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-checksum-sha512",
            },
        },
        ChecksumMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-checksum-md5",
            },
        },
        ChecksumXXHASH64 = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-checksum-xxhash64",
            },
        },
        ChecksumXXHASH3 = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-checksum-xxhash3",
            },
        },
        ChecksumXXHASH128 = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-checksum-xxhash128",
            },
        },
        DeleteMarker = {
            type = "boolean",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-delete-marker",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-ETag",
            },
        },
        Expires = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-Expires",
            },
        },
        Expiration = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-expiration",
            },
        },
        LastModified = {
            type = "timestamp",
            traits = {
                http_header = "x-amz-fwd-header-Last-Modified",
            },
        },
        MissingMeta = {
            type = "integer",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-missing-meta",
            },
        },
        Metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                http_prefix_headers = "x-amz-meta-",
            },
        },
        ObjectLockMode = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-object-lock-mode",
            },
        },
        ObjectLockLegalHoldStatus = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-object-lock-legal-hold",
            },
        },
        ObjectLockRetainUntilDate = {
            type = "timestamp",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-object-lock-retain-until-date",
                timestamp_format = "date-time",
            },
        },
        PartsCount = {
            type = "integer",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-mp-parts-count",
            },
        },
        ReplicationStatus = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-replication-status",
            },
        },
        RequestCharged = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-request-charged",
            },
        },
        Restore = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-restore",
            },
        },
        ServerSideEncryption = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-server-side-encryption",
            },
        },
        SSECustomerAlgorithm = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-server-side-encryption-customer-algorithm",
            },
        },
        SSEKMSKeyId = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-server-side-encryption-aws-kms-key-id",
            },
        },
        SSECustomerKeyMD5 = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-server-side-encryption-customer-key-MD5",
            },
        },
        StorageClass = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-storage-class",
            },
        },
        TagCount = {
            type = "integer",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-tagging-count",
            },
        },
        VersionId = {
            type = "string",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-version-id",
            },
        },
        BucketKeyEnabled = {
            type = "boolean",
            traits = {
                http_header = "x-amz-fwd-header-x-amz-server-side-encryption-bucket-key-enabled",
            },
        },
    },
}

M.WriteGetObjectResponseOutput = {
    type = "structure",
    id = "WriteGetObjectResponseOutput",
}

return M
