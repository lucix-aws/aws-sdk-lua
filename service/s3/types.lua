local M = {}

M.BucketAbacStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.AbacStatus = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.AbortIncompleteMultipartUpload = {
    type = "structure",
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
            },
        },
    },
}

M.RequestCharged = {
    requester = "requester",
}

M.AbortMultipartUploadOutput = {
    type = "structure",
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
    error = "client",
}

M.BucketAccelerateStatus = {
    Enabled = "Enabled",
    Suspended = "Suspended",
}

M.AccelerateConfiguration = {
    type = "structure",
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
    members = {
        Grantee = M.Grantee,
        Permission = {
            type = "string",
        },
    },
}

M.Owner = {
    type = "structure",
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
    error = "client",
}

M.ChecksumType = {
    COMPOSITE = "COMPOSITE",
    FULL_OBJECT = "FULL_OBJECT",
}

M.CompletedPart = {
    type = "structure",
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
    members = {
        Parts = {
            type = "list",
            member = M.CompletedPart,
            traits = {
                xml_name = "Part",
            },
        },
    },
}

M.CompleteMultipartUploadInput = {
    type = "structure",
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
    error = "client",
}

M.BucketAlreadyExists = {
    type = "structure",
    error = "client",
}

M.BucketAlreadyOwnedByYou = {
    type = "structure",
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
    members = {
        RecordExpiration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecordExpiration }),
        EncryptionConfiguration = M.MetadataTableEncryptionConfiguration,
    },
}

M.MetadataConfiguration = {
    type = "structure",
    members = {
        JournalTableConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JournalTableConfiguration }),
        InventoryTableConfiguration = M.InventoryTableConfiguration,
    },
}

M.CreateBucketMetadataConfigurationInput = {
    type = "structure",
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
}

M.S3TablesDestination = {
    type = "structure",
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
    members = {
        S3TablesDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3TablesDestination }),
    },
}

M.CreateBucketMetadataTableConfigurationInput = {
    type = "structure",
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
}

M.CreateMultipartUploadInput = {
    type = "structure",
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
    error = "client",
}

M.DeleteBucketInput = {
    type = "structure",
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
}

M.DeleteBucketAnalyticsConfigurationInput = {
    type = "structure",
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
}

M.DeleteBucketCorsInput = {
    type = "structure",
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
}

M.DeleteBucketEncryptionInput = {
    type = "structure",
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
}

M.DeleteBucketIntelligentTieringConfigurationInput = {
    type = "structure",
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
}

M.DeleteBucketInventoryConfigurationInput = {
    type = "structure",
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
}

M.DeleteBucketLifecycleInput = {
    type = "structure",
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
}

M.DeleteBucketMetadataConfigurationInput = {
    type = "structure",
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
}

M.DeleteBucketMetadataTableConfigurationInput = {
    type = "structure",
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
}

M.DeleteBucketMetricsConfigurationInput = {
    type = "structure",
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
}

M.DeleteBucketOwnershipControlsInput = {
    type = "structure",
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
}

M.DeleteBucketPolicyInput = {
    type = "structure",
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
}

M.DeleteBucketReplicationInput = {
    type = "structure",
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
}

M.DeleteBucketTaggingInput = {
    type = "structure",
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
}

M.DeleteBucketWebsiteInput = {
    type = "structure",
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
}

M.DeleteObjectInput = {
    type = "structure",
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
        },
        Size = {
            type = "long",
        },
    },
}

M.Delete = {
    type = "structure",
    members = {
        Objects = {
            type = "list",
            member = M.ObjectIdentifier,
            traits = {
                required = true,
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
    members = {
        Deleted = {
            type = "list",
            member = M.DeletedObject,
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
                xml_name = "Error",
            },
        },
    },
}

M.DeleteObjectTaggingInput = {
    type = "structure",
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
}

M.GetBucketAbacInput = {
    type = "structure",
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
    members = {
        AbacStatus = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.AbacStatus }),
    },
}

M.GetBucketAccelerateConfigurationInput = {
    type = "structure",
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
    members = {
        Prefix = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                xml_name = "Tag",
            },
        },
    },
}

M.AnalyticsFilter = {
    type = "union",
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
    members = {
        DataExport = M.StorageClassAnalysisDataExport,
    },
}

M.AnalyticsConfiguration = {
    type = "structure",
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
    members = {
        AnalyticsConfiguration = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.AnalyticsConfiguration }),
    },
}

M.GetBucketCorsInput = {
    type = "structure",
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
    members = {
        ID = {
            type = "string",
        },
        AllowedHeaders = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_name = "AllowedHeader",
            },
        },
        AllowedMethods = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
                xml_name = "AllowedMethod",
            },
        },
        AllowedOrigins = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
                xml_name = "AllowedOrigin",
            },
        },
        ExposeHeaders = {
            type = "list",
            member = { type = "string" },
            traits = {
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
    members = {
        CORSRules = {
            type = "list",
            member = M.CORSRule,
            traits = {
                xml_name = "CORSRule",
            },
        },
    },
}

M.GetBucketEncryptionInput = {
    type = "structure",
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
    members = {
        EncryptionType = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ServerSideEncryptionRule = {
    type = "structure",
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
    members = {
        Rules = {
            type = "list",
            member = M.ServerSideEncryptionRule,
            traits = {
                required = true,
                xml_name = "Rule",
            },
        },
    },
}

M.GetBucketEncryptionOutput = {
    type = "structure",
    members = {
        ServerSideEncryptionConfiguration = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ServerSideEncryptionConfiguration }),
    },
}

M.GetBucketIntelligentTieringConfigurationInput = {
    type = "structure",
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
    members = {
        Prefix = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                xml_name = "Tag",
            },
        },
    },
}

M.IntelligentTieringFilter = {
    type = "structure",
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
                xml_name = "Tiering",
            },
        },
    },
}

M.GetBucketIntelligentTieringConfigurationOutput = {
    type = "structure",
    members = {
        IntelligentTieringConfiguration = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.IntelligentTieringConfiguration }),
    },
}

M.GetBucketInventoryConfigurationInput = {
    type = "structure",
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
}

M.InventoryEncryption = {
    type = "structure",
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
    members = {
        S3BucketDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InventoryS3BucketDestination }),
    },
}

M.InventoryFilter = {
    type = "structure",
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
    members = {
        InventoryConfiguration = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.InventoryConfiguration }),
    },
}

M.GetBucketLifecycleConfigurationInput = {
    type = "structure",
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
    members = {
        Date = {
            type = "timestamp",
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
    members = {
        Prefix = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
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
    members = {
        Date = {
            type = "timestamp",
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
                xml_name = "Transition",
            },
        },
        NoncurrentVersionTransitions = {
            type = "list",
            member = M.NoncurrentVersionTransition,
            traits = {
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
    members = {
        Rules = {
            type = "list",
            member = M.LifecycleRule,
            traits = {
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
    members = {
        LocationConstraint = {
            type = "string",
        },
    },
}

M.GetBucketLoggingInput = {
    type = "structure",
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
    members = {
        Grantee = M.Grantee,
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
    members = {
        PartitionDateSource = {
            type = "string",
        },
    },
}

M.SimplePrefix = {
    type = "structure",
}

M.TargetObjectKeyFormat = {
    type = "structure",
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
    members = {
        LoggingEnabled = M.LoggingEnabled,
    },
}

M.GetBucketMetadataConfigurationInput = {
    type = "structure",
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
    members = {
        MetadataConfigurationResult = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MetadataConfigurationResult }),
    },
}

M.GetBucketMetadataConfigurationOutput = {
    type = "structure",
    members = {
        GetBucketMetadataConfigurationResult = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.GetBucketMetadataConfigurationResult }),
    },
}

M.GetBucketMetadataTableConfigurationInput = {
    type = "structure",
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
    members = {
        S3TablesDestinationResult = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3TablesDestinationResult }),
    },
}

M.GetBucketMetadataTableConfigurationResult = {
    type = "structure",
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
    members = {
        GetBucketMetadataTableConfigurationResult = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.GetBucketMetadataTableConfigurationResult }),
    },
}

M.GetBucketMetricsConfigurationInput = {
    type = "structure",
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
    members = {
        Prefix = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
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
    members = {
        MetricsConfiguration = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.MetricsConfiguration }),
    },
}

M.GetBucketNotificationConfigurationInput = {
    type = "structure",
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
    members = {
        FilterRules = {
            type = "list",
            member = M.FilterRule,
            traits = {
                xml_name = "FilterRule",
            },
        },
    },
}

M.NotificationConfigurationFilter = {
    type = "structure",
    members = {
        Key = setmetatable({ traits = {
            xml_name = "S3Key",
        } }, { __index = M.S3KeyFilter }),
    },
}

M.LambdaFunctionConfiguration = {
    type = "structure",
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
                xml_name = "Event",
            },
        },
        Filter = M.NotificationConfigurationFilter,
    },
}

M.QueueConfiguration = {
    type = "structure",
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
                xml_name = "Event",
            },
        },
        Filter = M.NotificationConfigurationFilter,
    },
}

M.TopicConfiguration = {
    type = "structure",
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
                xml_name = "Event",
            },
        },
        Filter = M.NotificationConfigurationFilter,
    },
}

M.GetBucketNotificationConfigurationOutput = {
    type = "structure",
    members = {
        TopicConfigurations = {
            type = "list",
            member = M.TopicConfiguration,
            traits = {
                xml_name = "TopicConfiguration",
            },
        },
        QueueConfigurations = {
            type = "list",
            member = M.QueueConfiguration,
            traits = {
                xml_name = "QueueConfiguration",
            },
        },
        LambdaFunctionConfigurations = {
            type = "list",
            member = M.LambdaFunctionConfiguration,
            traits = {
                xml_name = "CloudFunctionConfiguration",
            },
        },
        EventBridgeConfiguration = M.EventBridgeConfiguration,
    },
}

M.GetBucketOwnershipControlsInput = {
    type = "structure",
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
    members = {
        Rules = {
            type = "list",
            member = M.OwnershipControlsRule,
            traits = {
                required = true,
                xml_name = "Rule",
            },
        },
    },
}

M.GetBucketOwnershipControlsOutput = {
    type = "structure",
    members = {
        OwnershipControls = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.OwnershipControls }),
    },
}

M.GetBucketPolicyInput = {
    type = "structure",
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
    members = {
        PolicyStatus = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.PolicyStatus }),
    },
}

M.GetBucketReplicationInput = {
    type = "structure",
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
    members = {
        Status = {
            type = "string",
        },
    },
}

M.EncryptionConfiguration = {
    type = "structure",
    members = {
        ReplicaKmsKeyID = {
            type = "string",
        },
    },
}

M.ReplicationTimeValue = {
    type = "structure",
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
    members = {
        Prefix = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                xml_name = "Tag",
            },
        },
    },
}

M.ReplicationRuleFilter = {
    type = "structure",
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
                xml_name = "Rule",
            },
        },
    },
}

M.GetBucketReplicationOutput = {
    type = "structure",
    members = {
        ReplicationConfiguration = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ReplicationConfiguration }),
    },
}

M.GetBucketRequestPaymentInput = {
    type = "structure",
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
    members = {
        Payer = {
            type = "string",
        },
    },
}

M.GetBucketTaggingInput = {
    type = "structure",
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
    members = {
        Condition = M.Condition,
        Redirect = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Redirect }),
    },
}

M.GetBucketWebsiteOutput = {
    type = "structure",
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
    error = "client",
}

M.GetObjectAclInput = {
    type = "structure",
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
                xml_name = "Part",
            },
        },
    },
}

M.GetObjectAttributesOutput = {
    type = "structure",
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
    members = {
        Status = {
            type = "string",
        },
    },
}

M.GetObjectLegalHoldOutput = {
    type = "structure",
    members = {
        LegalHold = setmetatable({ traits = {
            http_payload = true,
            xml_name = "LegalHold",
        } }, { __index = M.ObjectLockLegalHold }),
    },
}

M.GetObjectLockConfigurationInput = {
    type = "structure",
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
    members = {
        DefaultRetention = M.DefaultRetention,
    },
}

M.ObjectLockConfiguration = {
    type = "structure",
    members = {
        ObjectLockEnabled = {
            type = "string",
        },
        Rule = M.ObjectLockRule,
    },
}

M.GetObjectLockConfigurationOutput = {
    type = "structure",
    members = {
        ObjectLockConfiguration = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ObjectLockConfiguration }),
    },
}

M.GetObjectRetentionInput = {
    type = "structure",
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
    members = {
        Mode = {
            type = "string",
        },
        RetainUntilDate = {
            type = "timestamp",
        },
    },
}

M.GetObjectRetentionOutput = {
    type = "structure",
    members = {
        Retention = setmetatable({ traits = {
            http_payload = true,
            xml_name = "Retention",
        } }, { __index = M.ObjectLockRetention }),
    },
}

M.GetObjectTaggingInput = {
    type = "structure",
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
    members = {
        PublicAccessBlockConfiguration = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.PublicAccessBlockConfiguration }),
    },
}

M.HeadBucketInput = {
    type = "structure",
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
    error = "client",
}

M.HeadObjectInput = {
    type = "structure",
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
                xml_name = "AnalyticsConfiguration",
            },
        },
    },
}

M.ListBucketIntelligentTieringConfigurationsInput = {
    type = "structure",
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
                xml_name = "IntelligentTieringConfiguration",
            },
        },
    },
}

M.ListBucketInventoryConfigurationsInput = {
    type = "structure",
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
    members = {
        ContinuationToken = {
            type = "string",
        },
        InventoryConfigurationList = {
            type = "list",
            member = M.InventoryConfiguration,
            traits = {
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
                xml_name = "MetricsConfiguration",
            },
        },
    },
}

M.ListBucketsInput = {
    type = "structure",
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
    members = {
        Prefix = {
            type = "string",
        },
    },
}

M.Initiator = {
    type = "structure",
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
                xml_name = "Upload",
            },
        },
        CommonPrefixes = {
            type = "list",
            member = M.CommonPrefix,
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
    members = {
        IsTruncated = {
            type = "boolean",
        },
        Contents = {
            type = "list",
            member = M.Object,
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
    members = {
        ETag = {
            type = "string",
        },
        ChecksumAlgorithm = {
            type = "list",
            member = { type = "string" },
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
                xml_name = "Version",
            },
        },
        DeleteMarkers = {
            type = "list",
            member = M.DeleteMarkerEntry,
            traits = {
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
}

M.PutBucketAccelerateConfigurationInput = {
    type = "structure",
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
}

M.PutBucketAclInput = {
    type = "structure",
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
}

M.PutBucketAnalyticsConfigurationInput = {
    type = "structure",
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
}

M.CORSConfiguration = {
    type = "structure",
    members = {
        CORSRules = {
            type = "list",
            member = M.CORSRule,
            traits = {
                required = true,
                xml_name = "CORSRule",
            },
        },
    },
}

M.PutBucketCorsInput = {
    type = "structure",
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
}

M.PutBucketEncryptionInput = {
    type = "structure",
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
}

M.PutBucketIntelligentTieringConfigurationInput = {
    type = "structure",
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
}

M.PutBucketInventoryConfigurationInput = {
    type = "structure",
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
}

M.BucketLifecycleConfiguration = {
    type = "structure",
    members = {
        Rules = {
            type = "list",
            member = M.LifecycleRule,
            traits = {
                required = true,
                xml_name = "Rule",
            },
        },
    },
}

M.PutBucketLifecycleConfigurationInput = {
    type = "structure",
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
    members = {
        LoggingEnabled = M.LoggingEnabled,
    },
}

M.PutBucketLoggingInput = {
    type = "structure",
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
}

M.PutBucketMetricsConfigurationInput = {
    type = "structure",
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
}

M.NotificationConfiguration = {
    type = "structure",
    members = {
        TopicConfigurations = {
            type = "list",
            member = M.TopicConfiguration,
            traits = {
                xml_name = "TopicConfiguration",
            },
        },
        QueueConfigurations = {
            type = "list",
            member = M.QueueConfiguration,
            traits = {
                xml_name = "QueueConfiguration",
            },
        },
        LambdaFunctionConfigurations = {
            type = "list",
            member = M.LambdaFunctionConfiguration,
            traits = {
                xml_name = "CloudFunctionConfiguration",
            },
        },
        EventBridgeConfiguration = M.EventBridgeConfiguration,
    },
}

M.PutBucketNotificationConfigurationInput = {
    type = "structure",
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
}

M.PutBucketOwnershipControlsInput = {
    type = "structure",
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
}

M.PutBucketPolicyInput = {
    type = "structure",
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
}

M.PutBucketReplicationInput = {
    type = "structure",
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
}

M.RequestPaymentConfiguration = {
    type = "structure",
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
}

M.Tagging = {
    type = "structure",
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
}

M.MFADelete = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.VersioningConfiguration = {
    type = "structure",
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
}

M.WebsiteConfiguration = {
    type = "structure",
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
}

M.EncryptionTypeMismatch = {
    type = "structure",
    error = "client",
}

M.InvalidRequest = {
    type = "structure",
    error = "client",
}

M.InvalidWriteOffset = {
    type = "structure",
    error = "client",
}

M.PutObjectInput = {
    type = "structure",
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
    error = "client",
}

M.PutObjectAclInput = {
    type = "structure",
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
}

M.IdempotencyParameterMismatch = {
    type = "structure",
    error = "client",
}

M.RenameObjectInput = {
    type = "structure",
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
            },
        },
        SourceIfUnmodifiedSince = {
            type = "timestamp",
            traits = {
                http_header = "x-amz-rename-source-if-unmodified-since",
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                http_header = "x-amz-client-token",
            },
        },
    },
}

M.RenameObjectOutput = {
    type = "structure",
}

M.ObjectAlreadyInActiveTierError = {
    type = "structure",
    error = "client",
}

M.Tier = {
    Standard = "Standard",
    Bulk = "Bulk",
    Expedited = "Expedited",
}

M.GlacierJobParameters = {
    type = "structure",
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
    members = {
        Type = {
            type = "string",
        },
    },
}

M.ParquetInput = {
    type = "structure",
}

M.InputSerialization = {
    type = "structure",
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
    members = {
        RecordDelimiter = {
            type = "string",
        },
    },
}

M.OutputSerialization = {
    type = "structure",
    members = {
        CSV = M.CSVOutput,
        JSON = M.JSONOutput,
    },
}

M.SelectParameters = {
    type = "structure",
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
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.ScanRange = {
    type = "structure",
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
}

M.EndEvent = {
    type = "structure",
}

M.Progress = {
    type = "structure",
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
    members = {
        Details = M.Progress,
    },
}

M.RecordsEvent = {
    type = "structure",
    members = {
        Payload = {
            type = "blob",
        },
    },
}

M.Stats = {
    type = "structure",
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
    members = {
        Details = M.Stats,
    },
}

M.SelectObjectContentEventStream = {
    type = "union",
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
    members = {
        Payload = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.SelectObjectContentEventStream }),
    },
}

M.InventoryTableConfigurationUpdates = {
    type = "structure",
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
}

M.JournalTableConfigurationUpdates = {
    type = "structure",
    members = {
        RecordExpiration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecordExpiration }),
    },
}

M.UpdateBucketMetadataJournalTableConfigurationInput = {
    type = "structure",
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
}

M.SSEKMSEncryption = {
    type = "structure",
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
    members = {
        SSEKMS = setmetatable({ traits = {
            xml_name = "SSE-KMS",
        } }, { __index = M.SSEKMSEncryption }),
    },
}

M.UpdateObjectEncryptionInput = {
    type = "structure",
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
}

return M
