

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.s3"

local M = {}

M.Metadata = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.DeletedObjects = schema.new({ type = "list", list_member = M.DeletedObject })

M.Errors = schema.new({ type = "list", list_member = M.Error })

M.Grants = schema.new({ type = "list", list_member = M.Grant })

M.CORSRules = schema.new({ type = "list", list_member = M.CORSRule })

M.LifecycleRules = schema.new({ type = "list", list_member = M.LifecycleRule })

M.TopicConfigurationList = schema.new({ type = "list", list_member = M.TopicConfiguration })

M.QueueConfigurationList = schema.new({ type = "list", list_member = M.QueueConfiguration })

M.LambdaFunctionConfigurationList = schema.new({ type = "list", list_member = M.LambdaFunctionConfiguration })

M.TagSet = schema.new({ type = "list", list_member = M.Tag })

M.RoutingRules = schema.new({ type = "list", list_member = M.RoutingRule })

M.ObjectAttributesList = schema.new({ type = "list", list_member = prelude.String })

M.AnalyticsConfigurationList = schema.new({ type = "list", list_member = M.AnalyticsConfiguration })

M.IntelligentTieringConfigurationList = schema.new({ type = "list", list_member = M.IntelligentTieringConfiguration })

M.InventoryConfigurationList = schema.new({ type = "list", list_member = M.InventoryConfiguration })

M.MetricsConfigurationList = schema.new({ type = "list", list_member = M.MetricsConfiguration })

M.Buckets = schema.new({ type = "list", list_member = M.Bucket })

M.MultipartUploadList = schema.new({ type = "list", list_member = M.MultipartUpload })

M.CommonPrefixList = schema.new({ type = "list", list_member = M.CommonPrefix })

M.OptionalObjectAttributesList = schema.new({ type = "list", list_member = prelude.String })

M.ObjectList = schema.new({ type = "list", list_member = M.Object })

M.ObjectVersionList = schema.new({ type = "list", list_member = M.ObjectVersion })

M.DeleteMarkers = schema.new({ type = "list", list_member = M.DeleteMarkerEntry })

M.Parts = schema.new({ type = "list", list_member = M.Part })

M.CompletedPartList = schema.new({ type = "list", list_member = M.CompletedPart })

M.ObjectIdentifierList = schema.new({ type = "list", list_member = M.ObjectIdentifier })

M.ServerSideEncryptionRules = schema.new({ type = "list", list_member = M.ServerSideEncryptionRule })

M.TieringList = schema.new({ type = "list", list_member = M.Tiering })

M.InventoryOptionalFields = schema.new({ type = "list", list_member = prelude.String })

M.TargetGrants = schema.new({ type = "list", list_member = M.TargetGrant })

M.OwnershipControlsRules = schema.new({ type = "list", list_member = M.OwnershipControlsRule })

M.ReplicationRules = schema.new({ type = "list", list_member = M.ReplicationRule })

M.PartsList = schema.new({ type = "list", list_member = M.ObjectPart })

M.AllowedHeaders = schema.new({ type = "list", list_member = prelude.String })

M.AllowedMethods = schema.new({ type = "list", list_member = prelude.String })

M.AllowedOrigins = schema.new({ type = "list", list_member = prelude.String })

M.ExposeHeaders = schema.new({ type = "list", list_member = prelude.String })

M.TransitionList = schema.new({ type = "list", list_member = M.Transition })

M.NoncurrentVersionTransitionList = schema.new({ type = "list", list_member = M.NoncurrentVersionTransition })

M.EventList = schema.new({ type = "list", list_member = prelude.String })

M.ChecksumAlgorithmList = schema.new({ type = "list", list_member = prelude.String })

M.UserMetadata = schema.new({ type = "list", list_member = M.MetadataEntry })

M.EncryptionTypeList = schema.new({ type = "list", list_member = prelude.String })

M.FilterRuleList = schema.new({ type = "list", list_member = M.FilterRule })

M.AbacStatus = schema.new({
   id = id.from(_N, "AbacStatus"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "AbacStatus", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.AbortIncompleteMultipartUpload = schema.new({
   id = id.from(_N, "AbortIncompleteMultipartUpload"),
   type = "structure",
   members = {
      DaysAfterInitiation = schema.new({
         id = id.from(_N, "AbortIncompleteMultipartUpload", "DaysAfterInitiation"),
         type = "integer",
         name = "DaysAfterInitiation",
         target_id = prelude.Integer.id,
      }),
   },
})

M.AbortMultipartUploadInput = schema.new({
   id = id.from(_N, "AbortMultipartUploadRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "AbortMultipartUploadInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Key = schema.new({
         id = id.from(_N, "AbortMultipartUploadInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      UploadId = schema.new({
         id = id.from(_N, "AbortMultipartUploadInput", "UploadId"),
         type = "string",
         name = "UploadId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "uploadId" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "AbortMultipartUploadInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "AbortMultipartUploadInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      IfMatchInitiatedTime = schema.new({
         id = id.from(_N, "AbortMultipartUploadInput", "IfMatchInitiatedTime"),
         type = "timestamp",
         name = "IfMatchInitiatedTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-if-match-initiated-time" },
            [traits.TIMESTAMP_FORMAT] = { format = "http-date" },
         },
         direct_traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-if-match-initiated-time" },
         },
      }),
   },
})

M.AbortMultipartUploadOutput = schema.new({
   id = id.from(_N, "AbortMultipartUploadOutput"),
   type = "structure",
   members = {
      RequestCharged = schema.new({
         id = id.from(_N, "AbortMultipartUploadOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
   },
})

M.NoSuchUpload = schema.new({
   id = id.from(_N, "NoSuchUpload"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
})

M.AccelerateConfiguration = schema.new({
   id = id.from(_N, "AccelerateConfiguration"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "AccelerateConfiguration", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.Grantee = schema.new({
   id = id.from(_N, "Grantee"),
   type = "structure",
   members = {
      DisplayName = schema.new({
         id = id.from(_N, "Grantee", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      EmailAddress = schema.new({
         id = id.from(_N, "Grantee", "EmailAddress"),
         type = "string",
         name = "EmailAddress",
         target_id = prelude.String.id,
      }),
      ID = schema.new({
         id = id.from(_N, "Grantee", "ID"),
         type = "string",
         name = "ID",
         target_id = prelude.String.id,
      }),
      URI = schema.new({
         id = id.from(_N, "Grantee", "URI"),
         type = "string",
         name = "URI",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "Grantee", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.XML_NAME] = { name = "xsi:type" },
            [traits.XML_ATTRIBUTE] = {},
         },
      }),
   },
})

M.Grant = schema.new({
   id = id.from(_N, "Grant"),
   type = "structure",
   members = {
      Grantee = schema.new({
         id = id.from(_N, "Grant", "Grantee"),
         type = "structure",
         name = "Grantee",
         target_id = id.from(_N, "Grantee"),
         target = M.Grantee,
         traits = {
            [traits.XML_NAMESPACE] = { uri = "http://www.w3.org/2001/XMLSchema-instance", prefix = "xsi" },
         },
      }),
      Permission = schema.new({
         id = id.from(_N, "Grant", "Permission"),
         type = "string",
         name = "Permission",
         target_id = prelude.String.id,
      }),
   },
})

M.Owner = schema.new({
   id = id.from(_N, "Owner"),
   type = "structure",
   members = {
      DisplayName = schema.new({
         id = id.from(_N, "Owner", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      ID = schema.new({
         id = id.from(_N, "Owner", "ID"),
         type = "string",
         name = "ID",
         target_id = prelude.String.id,
      }),
   },
})

M.AccessControlPolicy = schema.new({
   id = id.from(_N, "AccessControlPolicy"),
   type = "structure",
   members = {
      Grants = schema.new({
         id = id.from(_N, "AccessControlPolicy", "Grants"),
         type = "list",
         name = "Grants",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.Grant, traits = { [traits.XML_NAME] = { name = "Grant" } } }),
         traits = {
            [traits.XML_NAME] = { name = "AccessControlList" },
         },
      }),
      Owner = schema.new({
         id = id.from(_N, "AccessControlPolicy", "Owner"),
         type = "structure",
         name = "Owner",
         target_id = id.from(_N, "Owner"),
         target = M.Owner,
      }),
   },
})

M.AccessControlTranslation = schema.new({
   id = id.from(_N, "AccessControlTranslation"),
   type = "structure",
   members = {
      Owner = schema.new({
         id = id.from(_N, "AccessControlTranslation", "Owner"),
         type = "string",
         name = "Owner",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AccessDenied = schema.new({
   id = id.from(_N, "AccessDenied"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
})

M.CompletedPart = schema.new({
   id = id.from(_N, "CompletedPart"),
   type = "structure",
   members = {
      ETag = schema.new({
         id = id.from(_N, "CompletedPart", "ETag"),
         type = "string",
         name = "ETag",
         target_id = prelude.String.id,
      }),
      ChecksumCRC32 = schema.new({
         id = id.from(_N, "CompletedPart", "ChecksumCRC32"),
         type = "string",
         name = "ChecksumCRC32",
         target_id = prelude.String.id,
      }),
      ChecksumCRC32C = schema.new({
         id = id.from(_N, "CompletedPart", "ChecksumCRC32C"),
         type = "string",
         name = "ChecksumCRC32C",
         target_id = prelude.String.id,
      }),
      ChecksumCRC64NVME = schema.new({
         id = id.from(_N, "CompletedPart", "ChecksumCRC64NVME"),
         type = "string",
         name = "ChecksumCRC64NVME",
         target_id = prelude.String.id,
      }),
      ChecksumSHA1 = schema.new({
         id = id.from(_N, "CompletedPart", "ChecksumSHA1"),
         type = "string",
         name = "ChecksumSHA1",
         target_id = prelude.String.id,
      }),
      ChecksumSHA256 = schema.new({
         id = id.from(_N, "CompletedPart", "ChecksumSHA256"),
         type = "string",
         name = "ChecksumSHA256",
         target_id = prelude.String.id,
      }),
      ChecksumSHA512 = schema.new({
         id = id.from(_N, "CompletedPart", "ChecksumSHA512"),
         type = "string",
         name = "ChecksumSHA512",
         target_id = prelude.String.id,
      }),
      ChecksumMD5 = schema.new({
         id = id.from(_N, "CompletedPart", "ChecksumMD5"),
         type = "string",
         name = "ChecksumMD5",
         target_id = prelude.String.id,
      }),
      ChecksumXXHASH64 = schema.new({
         id = id.from(_N, "CompletedPart", "ChecksumXXHASH64"),
         type = "string",
         name = "ChecksumXXHASH64",
         target_id = prelude.String.id,
      }),
      ChecksumXXHASH3 = schema.new({
         id = id.from(_N, "CompletedPart", "ChecksumXXHASH3"),
         type = "string",
         name = "ChecksumXXHASH3",
         target_id = prelude.String.id,
      }),
      ChecksumXXHASH128 = schema.new({
         id = id.from(_N, "CompletedPart", "ChecksumXXHASH128"),
         type = "string",
         name = "ChecksumXXHASH128",
         target_id = prelude.String.id,
      }),
      PartNumber = schema.new({
         id = id.from(_N, "CompletedPart", "PartNumber"),
         type = "integer",
         name = "PartNumber",
         target_id = prelude.Integer.id,
      }),
   },
})

M.CompletedMultipartUpload = schema.new({
   id = id.from(_N, "CompletedMultipartUpload"),
   type = "structure",
   members = {
      Parts = schema.new({
         id = id.from(_N, "CompletedMultipartUpload", "Parts"),
         type = "list",
         name = "Parts",
         target_id = prelude.Document.id,
         list_member = M.CompletedPart,
         traits = {
            [traits.XML_NAME] = { name = "Part" },
            [traits.XML_FLATTENED] = {},
         },
      }),
   },
})

M.CompleteMultipartUploadInput = schema.new({
   id = id.from(_N, "CompleteMultipartUploadRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Key = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      MultipartUpload = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "MultipartUpload"),
         type = "structure",
         name = "MultipartUpload",
         target_id = id.from(_N, "CompletedMultipartUpload"),
         target = M.CompletedMultipartUpload,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "CompleteMultipartUpload" },
         },
      }),
      UploadId = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "UploadId"),
         type = "string",
         name = "UploadId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "uploadId" },
         },
      }),
      ChecksumCRC32 = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "ChecksumCRC32"),
         type = "string",
         name = "ChecksumCRC32",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-crc32" },
         },
      }),
      ChecksumCRC32C = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "ChecksumCRC32C"),
         type = "string",
         name = "ChecksumCRC32C",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-crc32c" },
         },
      }),
      ChecksumCRC64NVME = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "ChecksumCRC64NVME"),
         type = "string",
         name = "ChecksumCRC64NVME",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-crc64nvme" },
         },
      }),
      ChecksumSHA1 = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "ChecksumSHA1"),
         type = "string",
         name = "ChecksumSHA1",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-sha1" },
         },
      }),
      ChecksumSHA256 = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "ChecksumSHA256"),
         type = "string",
         name = "ChecksumSHA256",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-sha256" },
         },
      }),
      ChecksumSHA512 = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "ChecksumSHA512"),
         type = "string",
         name = "ChecksumSHA512",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-sha512" },
         },
      }),
      ChecksumMD5 = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "ChecksumMD5"),
         type = "string",
         name = "ChecksumMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-md5" },
         },
      }),
      ChecksumXXHASH64 = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "ChecksumXXHASH64"),
         type = "string",
         name = "ChecksumXXHASH64",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-xxhash64" },
         },
      }),
      ChecksumXXHASH3 = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "ChecksumXXHASH3"),
         type = "string",
         name = "ChecksumXXHASH3",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-xxhash3" },
         },
      }),
      ChecksumXXHASH128 = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "ChecksumXXHASH128"),
         type = "string",
         name = "ChecksumXXHASH128",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-xxhash128" },
         },
      }),
      ChecksumType = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "ChecksumType"),
         type = "string",
         name = "ChecksumType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-type" },
         },
      }),
      MpuObjectSize = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "MpuObjectSize"),
         type = "long",
         name = "MpuObjectSize",
         target_id = prelude.Long.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-mp-object-size" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      IfMatch = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "IfMatch"),
         type = "string",
         name = "IfMatch",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "If-Match" },
         },
      }),
      IfNoneMatch = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "IfNoneMatch"),
         type = "string",
         name = "IfNoneMatch",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "If-None-Match" },
         },
      }),
      SSECustomerAlgorithm = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "SSECustomerAlgorithm"),
         type = "string",
         name = "SSECustomerAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-algorithm" },
         },
      }),
      SSECustomerKey = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "SSECustomerKey"),
         type = "string",
         name = "SSECustomerKey",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key" },
         },
      }),
      SSECustomerKeyMD5 = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "SSECustomerKeyMD5"),
         type = "string",
         name = "SSECustomerKeyMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key-MD5" },
         },
      }),
   },
})

M.CompleteMultipartUploadOutput = schema.new({
   id = id.from(_N, "CompleteMultipartUploadOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "CompleteMultipartUploadResult" },
   },
   members = {
      Location = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "Location"),
         type = "string",
         name = "Location",
         target_id = prelude.String.id,
      }),
      Bucket = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
      }),
      Key = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
      }),
      Expiration = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "Expiration"),
         type = "string",
         name = "Expiration",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expiration" },
         },
      }),
      ETag = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "ETag"),
         type = "string",
         name = "ETag",
         target_id = prelude.String.id,
      }),
      ChecksumCRC32 = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "ChecksumCRC32"),
         type = "string",
         name = "ChecksumCRC32",
         target_id = prelude.String.id,
      }),
      ChecksumCRC32C = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "ChecksumCRC32C"),
         type = "string",
         name = "ChecksumCRC32C",
         target_id = prelude.String.id,
      }),
      ChecksumCRC64NVME = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "ChecksumCRC64NVME"),
         type = "string",
         name = "ChecksumCRC64NVME",
         target_id = prelude.String.id,
      }),
      ChecksumSHA1 = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "ChecksumSHA1"),
         type = "string",
         name = "ChecksumSHA1",
         target_id = prelude.String.id,
      }),
      ChecksumSHA256 = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "ChecksumSHA256"),
         type = "string",
         name = "ChecksumSHA256",
         target_id = prelude.String.id,
      }),
      ChecksumSHA512 = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "ChecksumSHA512"),
         type = "string",
         name = "ChecksumSHA512",
         target_id = prelude.String.id,
      }),
      ChecksumMD5 = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "ChecksumMD5"),
         type = "string",
         name = "ChecksumMD5",
         target_id = prelude.String.id,
      }),
      ChecksumXXHASH64 = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "ChecksumXXHASH64"),
         type = "string",
         name = "ChecksumXXHASH64",
         target_id = prelude.String.id,
      }),
      ChecksumXXHASH3 = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "ChecksumXXHASH3"),
         type = "string",
         name = "ChecksumXXHASH3",
         target_id = prelude.String.id,
      }),
      ChecksumXXHASH128 = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "ChecksumXXHASH128"),
         type = "string",
         name = "ChecksumXXHASH128",
         target_id = prelude.String.id,
      }),
      ChecksumType = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "ChecksumType"),
         type = "string",
         name = "ChecksumType",
         target_id = prelude.String.id,
      }),
      ServerSideEncryption = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "ServerSideEncryption"),
         type = "string",
         name = "ServerSideEncryption",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption" },
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-version-id" },
         },
      }),
      SSEKMSKeyId = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "SSEKMSKeyId"),
         type = "string",
         name = "SSEKMSKeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-aws-kms-key-id" },
         },
      }),
      BucketKeyEnabled = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "BucketKeyEnabled"),
         type = "boolean",
         name = "BucketKeyEnabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-bucket-key-enabled" },
         },
      }),
      RequestCharged = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
   },
})

M.CopyObjectInput = schema.new({
   id = id.from(_N, "CopyObjectRequest"),
   type = "structure",
   members = {
      ACL = schema.new({
         id = id.from(_N, "CopyObjectInput", "ACL"),
         type = "string",
         name = "ACL",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-acl" },
         },
      }),
      Bucket = schema.new({
         id = id.from(_N, "CopyObjectInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      CacheControl = schema.new({
         id = id.from(_N, "CopyObjectInput", "CacheControl"),
         type = "string",
         name = "CacheControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Cache-Control" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "CopyObjectInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-algorithm" },
         },
      }),
      ContentDisposition = schema.new({
         id = id.from(_N, "CopyObjectInput", "ContentDisposition"),
         type = "string",
         name = "ContentDisposition",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Disposition" },
         },
      }),
      ContentEncoding = schema.new({
         id = id.from(_N, "CopyObjectInput", "ContentEncoding"),
         type = "string",
         name = "ContentEncoding",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Encoding" },
         },
      }),
      ContentLanguage = schema.new({
         id = id.from(_N, "CopyObjectInput", "ContentLanguage"),
         type = "string",
         name = "ContentLanguage",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Language" },
         },
      }),
      ContentType = schema.new({
         id = id.from(_N, "CopyObjectInput", "ContentType"),
         type = "string",
         name = "ContentType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Type" },
         },
      }),
      CopySource = schema.new({
         id = id.from(_N, "CopyObjectInput", "CopySource"),
         type = "string",
         name = "CopySource",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "x-amz-copy-source" },
         },
      }),
      CopySourceIfMatch = schema.new({
         id = id.from(_N, "CopyObjectInput", "CopySourceIfMatch"),
         type = "string",
         name = "CopySourceIfMatch",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-copy-source-if-match" },
         },
      }),
      CopySourceIfModifiedSince = schema.new({
         id = id.from(_N, "CopyObjectInput", "CopySourceIfModifiedSince"),
         type = "timestamp",
         name = "CopySourceIfModifiedSince",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-copy-source-if-modified-since" },
         },
      }),
      CopySourceIfNoneMatch = schema.new({
         id = id.from(_N, "CopyObjectInput", "CopySourceIfNoneMatch"),
         type = "string",
         name = "CopySourceIfNoneMatch",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-copy-source-if-none-match" },
         },
      }),
      CopySourceIfUnmodifiedSince = schema.new({
         id = id.from(_N, "CopyObjectInput", "CopySourceIfUnmodifiedSince"),
         type = "timestamp",
         name = "CopySourceIfUnmodifiedSince",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-copy-source-if-unmodified-since" },
         },
      }),
      Expires = schema.new({
         id = id.from(_N, "CopyObjectInput", "Expires"),
         type = "string",
         name = "Expires",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Expires" },
         },
      }),
      GrantFullControl = schema.new({
         id = id.from(_N, "CopyObjectInput", "GrantFullControl"),
         type = "string",
         name = "GrantFullControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-full-control" },
         },
      }),
      GrantRead = schema.new({
         id = id.from(_N, "CopyObjectInput", "GrantRead"),
         type = "string",
         name = "GrantRead",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-read" },
         },
      }),
      GrantReadACP = schema.new({
         id = id.from(_N, "CopyObjectInput", "GrantReadACP"),
         type = "string",
         name = "GrantReadACP",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-read-acp" },
         },
      }),
      GrantWriteACP = schema.new({
         id = id.from(_N, "CopyObjectInput", "GrantWriteACP"),
         type = "string",
         name = "GrantWriteACP",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-write-acp" },
         },
      }),
      IfMatch = schema.new({
         id = id.from(_N, "CopyObjectInput", "IfMatch"),
         type = "string",
         name = "IfMatch",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "If-Match" },
         },
      }),
      IfNoneMatch = schema.new({
         id = id.from(_N, "CopyObjectInput", "IfNoneMatch"),
         type = "string",
         name = "IfNoneMatch",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "If-None-Match" },
         },
      }),
      Key = schema.new({
         id = id.from(_N, "CopyObjectInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Metadata = schema.new({
         id = id.from(_N, "CopyObjectInput", "Metadata"),
         type = "map",
         name = "Metadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.HTTP_PREFIX_HEADERS] = { prefix = "x-amz-meta-" },
         },
      }),
      MetadataDirective = schema.new({
         id = id.from(_N, "CopyObjectInput", "MetadataDirective"),
         type = "string",
         name = "MetadataDirective",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-metadata-directive" },
         },
      }),
      TaggingDirective = schema.new({
         id = id.from(_N, "CopyObjectInput", "TaggingDirective"),
         type = "string",
         name = "TaggingDirective",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-tagging-directive" },
         },
      }),
      ServerSideEncryption = schema.new({
         id = id.from(_N, "CopyObjectInput", "ServerSideEncryption"),
         type = "string",
         name = "ServerSideEncryption",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption" },
         },
      }),
      StorageClass = schema.new({
         id = id.from(_N, "CopyObjectInput", "StorageClass"),
         type = "string",
         name = "StorageClass",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-storage-class" },
         },
      }),
      WebsiteRedirectLocation = schema.new({
         id = id.from(_N, "CopyObjectInput", "WebsiteRedirectLocation"),
         type = "string",
         name = "WebsiteRedirectLocation",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-website-redirect-location" },
         },
      }),
      SSECustomerAlgorithm = schema.new({
         id = id.from(_N, "CopyObjectInput", "SSECustomerAlgorithm"),
         type = "string",
         name = "SSECustomerAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-algorithm" },
         },
      }),
      SSECustomerKey = schema.new({
         id = id.from(_N, "CopyObjectInput", "SSECustomerKey"),
         type = "string",
         name = "SSECustomerKey",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key" },
         },
      }),
      SSECustomerKeyMD5 = schema.new({
         id = id.from(_N, "CopyObjectInput", "SSECustomerKeyMD5"),
         type = "string",
         name = "SSECustomerKeyMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key-MD5" },
         },
      }),
      SSEKMSKeyId = schema.new({
         id = id.from(_N, "CopyObjectInput", "SSEKMSKeyId"),
         type = "string",
         name = "SSEKMSKeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-aws-kms-key-id" },
         },
      }),
      SSEKMSEncryptionContext = schema.new({
         id = id.from(_N, "CopyObjectInput", "SSEKMSEncryptionContext"),
         type = "string",
         name = "SSEKMSEncryptionContext",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-context" },
         },
      }),
      BucketKeyEnabled = schema.new({
         id = id.from(_N, "CopyObjectInput", "BucketKeyEnabled"),
         type = "boolean",
         name = "BucketKeyEnabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-bucket-key-enabled" },
         },
      }),
      CopySourceSSECustomerAlgorithm = schema.new({
         id = id.from(_N, "CopyObjectInput", "CopySourceSSECustomerAlgorithm"),
         type = "string",
         name = "CopySourceSSECustomerAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-copy-source-server-side-encryption-customer-algorithm" },
         },
      }),
      CopySourceSSECustomerKey = schema.new({
         id = id.from(_N, "CopyObjectInput", "CopySourceSSECustomerKey"),
         type = "string",
         name = "CopySourceSSECustomerKey",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-copy-source-server-side-encryption-customer-key" },
         },
      }),
      CopySourceSSECustomerKeyMD5 = schema.new({
         id = id.from(_N, "CopyObjectInput", "CopySourceSSECustomerKeyMD5"),
         type = "string",
         name = "CopySourceSSECustomerKeyMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-copy-source-server-side-encryption-customer-key-MD5" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "CopyObjectInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      Tagging = schema.new({
         id = id.from(_N, "CopyObjectInput", "Tagging"),
         type = "string",
         name = "Tagging",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-tagging" },
         },
      }),
      ObjectLockMode = schema.new({
         id = id.from(_N, "CopyObjectInput", "ObjectLockMode"),
         type = "string",
         name = "ObjectLockMode",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-object-lock-mode" },
         },
      }),
      ObjectLockRetainUntilDate = schema.new({
         id = id.from(_N, "CopyObjectInput", "ObjectLockRetainUntilDate"),
         type = "timestamp",
         name = "ObjectLockRetainUntilDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-object-lock-retain-until-date" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-object-lock-retain-until-date" },
         },
      }),
      ObjectLockLegalHoldStatus = schema.new({
         id = id.from(_N, "CopyObjectInput", "ObjectLockLegalHoldStatus"),
         type = "string",
         name = "ObjectLockLegalHoldStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-object-lock-legal-hold" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "CopyObjectInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      ExpectedSourceBucketOwner = schema.new({
         id = id.from(_N, "CopyObjectInput", "ExpectedSourceBucketOwner"),
         type = "string",
         name = "ExpectedSourceBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-source-expected-bucket-owner" },
         },
      }),
   },
})

M.CopyObjectResult = schema.new({
   id = id.from(_N, "CopyObjectResult"),
   type = "structure",
   members = {
      ETag = schema.new({
         id = id.from(_N, "CopyObjectResult", "ETag"),
         type = "string",
         name = "ETag",
         target_id = prelude.String.id,
      }),
      LastModified = schema.new({
         id = id.from(_N, "CopyObjectResult", "LastModified"),
         type = "timestamp",
         name = "LastModified",
         target_id = prelude.Timestamp.id,
      }),
      ChecksumType = schema.new({
         id = id.from(_N, "CopyObjectResult", "ChecksumType"),
         type = "string",
         name = "ChecksumType",
         target_id = prelude.String.id,
      }),
      ChecksumCRC32 = schema.new({
         id = id.from(_N, "CopyObjectResult", "ChecksumCRC32"),
         type = "string",
         name = "ChecksumCRC32",
         target_id = prelude.String.id,
      }),
      ChecksumCRC32C = schema.new({
         id = id.from(_N, "CopyObjectResult", "ChecksumCRC32C"),
         type = "string",
         name = "ChecksumCRC32C",
         target_id = prelude.String.id,
      }),
      ChecksumCRC64NVME = schema.new({
         id = id.from(_N, "CopyObjectResult", "ChecksumCRC64NVME"),
         type = "string",
         name = "ChecksumCRC64NVME",
         target_id = prelude.String.id,
      }),
      ChecksumSHA1 = schema.new({
         id = id.from(_N, "CopyObjectResult", "ChecksumSHA1"),
         type = "string",
         name = "ChecksumSHA1",
         target_id = prelude.String.id,
      }),
      ChecksumSHA256 = schema.new({
         id = id.from(_N, "CopyObjectResult", "ChecksumSHA256"),
         type = "string",
         name = "ChecksumSHA256",
         target_id = prelude.String.id,
      }),
      ChecksumSHA512 = schema.new({
         id = id.from(_N, "CopyObjectResult", "ChecksumSHA512"),
         type = "string",
         name = "ChecksumSHA512",
         target_id = prelude.String.id,
      }),
      ChecksumMD5 = schema.new({
         id = id.from(_N, "CopyObjectResult", "ChecksumMD5"),
         type = "string",
         name = "ChecksumMD5",
         target_id = prelude.String.id,
      }),
      ChecksumXXHASH64 = schema.new({
         id = id.from(_N, "CopyObjectResult", "ChecksumXXHASH64"),
         type = "string",
         name = "ChecksumXXHASH64",
         target_id = prelude.String.id,
      }),
      ChecksumXXHASH3 = schema.new({
         id = id.from(_N, "CopyObjectResult", "ChecksumXXHASH3"),
         type = "string",
         name = "ChecksumXXHASH3",
         target_id = prelude.String.id,
      }),
      ChecksumXXHASH128 = schema.new({
         id = id.from(_N, "CopyObjectResult", "ChecksumXXHASH128"),
         type = "string",
         name = "ChecksumXXHASH128",
         target_id = prelude.String.id,
      }),
   },
})

M.CopyObjectOutput = schema.new({
   id = id.from(_N, "CopyObjectOutput"),
   type = "structure",
   members = {
      CopyObjectResult = schema.new({
         id = id.from(_N, "CopyObjectOutput", "CopyObjectResult"),
         type = "structure",
         name = "CopyObjectResult",
         target_id = id.from(_N, "CopyObjectResult"),
         target = M.CopyObjectResult,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      Expiration = schema.new({
         id = id.from(_N, "CopyObjectOutput", "Expiration"),
         type = "string",
         name = "Expiration",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expiration" },
         },
      }),
      CopySourceVersionId = schema.new({
         id = id.from(_N, "CopyObjectOutput", "CopySourceVersionId"),
         type = "string",
         name = "CopySourceVersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-copy-source-version-id" },
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "CopyObjectOutput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-version-id" },
         },
      }),
      ServerSideEncryption = schema.new({
         id = id.from(_N, "CopyObjectOutput", "ServerSideEncryption"),
         type = "string",
         name = "ServerSideEncryption",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption" },
         },
      }),
      SSECustomerAlgorithm = schema.new({
         id = id.from(_N, "CopyObjectOutput", "SSECustomerAlgorithm"),
         type = "string",
         name = "SSECustomerAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-algorithm" },
         },
      }),
      SSECustomerKeyMD5 = schema.new({
         id = id.from(_N, "CopyObjectOutput", "SSECustomerKeyMD5"),
         type = "string",
         name = "SSECustomerKeyMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key-MD5" },
         },
      }),
      SSEKMSKeyId = schema.new({
         id = id.from(_N, "CopyObjectOutput", "SSEKMSKeyId"),
         type = "string",
         name = "SSEKMSKeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-aws-kms-key-id" },
         },
      }),
      SSEKMSEncryptionContext = schema.new({
         id = id.from(_N, "CopyObjectOutput", "SSEKMSEncryptionContext"),
         type = "string",
         name = "SSEKMSEncryptionContext",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-context" },
         },
      }),
      BucketKeyEnabled = schema.new({
         id = id.from(_N, "CopyObjectOutput", "BucketKeyEnabled"),
         type = "boolean",
         name = "BucketKeyEnabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-bucket-key-enabled" },
         },
      }),
      RequestCharged = schema.new({
         id = id.from(_N, "CopyObjectOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
   },
})

M.ObjectNotInActiveTierError = schema.new({
   id = id.from(_N, "ObjectNotInActiveTierError"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
})

M.BucketAlreadyExists = schema.new({
   id = id.from(_N, "BucketAlreadyExists"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
})

M.BucketAlreadyOwnedByYou = schema.new({
   id = id.from(_N, "BucketAlreadyOwnedByYou"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
})

M.BucketInfo = schema.new({
   id = id.from(_N, "BucketInfo"),
   type = "structure",
   members = {
      DataRedundancy = schema.new({
         id = id.from(_N, "BucketInfo", "DataRedundancy"),
         type = "string",
         name = "DataRedundancy",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "BucketInfo", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
   },
})

M.LocationInfo = schema.new({
   id = id.from(_N, "LocationInfo"),
   type = "structure",
   members = {
      Type = schema.new({
         id = id.from(_N, "LocationInfo", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "LocationInfo", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
   },
})

M.Tag = schema.new({
   id = id.from(_N, "Tag"),
   type = "structure",
   members = {
      Key = schema.new({
         id = id.from(_N, "Tag", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Value = schema.new({
         id = id.from(_N, "Tag", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateBucketConfiguration = schema.new({
   id = id.from(_N, "CreateBucketConfiguration"),
   type = "structure",
   members = {
      LocationConstraint = schema.new({
         id = id.from(_N, "CreateBucketConfiguration", "LocationConstraint"),
         type = "string",
         name = "LocationConstraint",
         target_id = prelude.String.id,
      }),
      Location = schema.new({
         id = id.from(_N, "CreateBucketConfiguration", "Location"),
         type = "structure",
         name = "Location",
         target_id = id.from(_N, "LocationInfo"),
         target = M.LocationInfo,
      }),
      Bucket = schema.new({
         id = id.from(_N, "CreateBucketConfiguration", "Bucket"),
         type = "structure",
         name = "Bucket",
         target_id = id.from(_N, "BucketInfo"),
         target = M.BucketInfo,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateBucketConfiguration", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
      }),
   },
})

M.CreateBucketInput = schema.new({
   id = id.from(_N, "CreateBucketRequest"),
   type = "structure",
   members = {
      ACL = schema.new({
         id = id.from(_N, "CreateBucketInput", "ACL"),
         type = "string",
         name = "ACL",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-acl" },
         },
      }),
      Bucket = schema.new({
         id = id.from(_N, "CreateBucketInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      CreateBucketConfiguration = schema.new({
         id = id.from(_N, "CreateBucketInput", "CreateBucketConfiguration"),
         type = "structure",
         name = "CreateBucketConfiguration",
         target_id = id.from(_N, "CreateBucketConfiguration"),
         target = M.CreateBucketConfiguration,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "CreateBucketConfiguration" },
         },
      }),
      GrantFullControl = schema.new({
         id = id.from(_N, "CreateBucketInput", "GrantFullControl"),
         type = "string",
         name = "GrantFullControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-full-control" },
         },
      }),
      GrantRead = schema.new({
         id = id.from(_N, "CreateBucketInput", "GrantRead"),
         type = "string",
         name = "GrantRead",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-read" },
         },
      }),
      GrantReadACP = schema.new({
         id = id.from(_N, "CreateBucketInput", "GrantReadACP"),
         type = "string",
         name = "GrantReadACP",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-read-acp" },
         },
      }),
      GrantWrite = schema.new({
         id = id.from(_N, "CreateBucketInput", "GrantWrite"),
         type = "string",
         name = "GrantWrite",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-write" },
         },
      }),
      GrantWriteACP = schema.new({
         id = id.from(_N, "CreateBucketInput", "GrantWriteACP"),
         type = "string",
         name = "GrantWriteACP",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-write-acp" },
         },
      }),
      ObjectLockEnabledForBucket = schema.new({
         id = id.from(_N, "CreateBucketInput", "ObjectLockEnabledForBucket"),
         type = "boolean",
         name = "ObjectLockEnabledForBucket",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-bucket-object-lock-enabled" },
         },
      }),
      ObjectOwnership = schema.new({
         id = id.from(_N, "CreateBucketInput", "ObjectOwnership"),
         type = "string",
         name = "ObjectOwnership",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-object-ownership" },
         },
      }),
      BucketNamespace = schema.new({
         id = id.from(_N, "CreateBucketInput", "BucketNamespace"),
         type = "string",
         name = "BucketNamespace",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-bucket-namespace" },
         },
      }),
   },
})

M.CreateBucketOutput = schema.new({
   id = id.from(_N, "CreateBucketOutput"),
   type = "structure",
   members = {
      Location = schema.new({
         id = id.from(_N, "CreateBucketOutput", "Location"),
         type = "string",
         name = "Location",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Location" },
         },
      }),
      BucketArn = schema.new({
         id = id.from(_N, "CreateBucketOutput", "BucketArn"),
         type = "string",
         name = "BucketArn",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-bucket-arn" },
         },
      }),
   },
})

M.MetadataTableEncryptionConfiguration = schema.new({
   id = id.from(_N, "MetadataTableEncryptionConfiguration"),
   type = "structure",
   members = {
      SseAlgorithm = schema.new({
         id = id.from(_N, "MetadataTableEncryptionConfiguration", "SseAlgorithm"),
         type = "string",
         name = "SseAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      KmsKeyArn = schema.new({
         id = id.from(_N, "MetadataTableEncryptionConfiguration", "KmsKeyArn"),
         type = "string",
         name = "KmsKeyArn",
         target_id = prelude.String.id,
      }),
   },
})

M.InventoryTableConfiguration = schema.new({
   id = id.from(_N, "InventoryTableConfiguration"),
   type = "structure",
   members = {
      ConfigurationState = schema.new({
         id = id.from(_N, "InventoryTableConfiguration", "ConfigurationState"),
         type = "string",
         name = "ConfigurationState",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EncryptionConfiguration = schema.new({
         id = id.from(_N, "InventoryTableConfiguration", "EncryptionConfiguration"),
         type = "structure",
         name = "EncryptionConfiguration",
         target_id = id.from(_N, "MetadataTableEncryptionConfiguration"),
         target = M.MetadataTableEncryptionConfiguration,
      }),
   },
})

M.RecordExpiration = schema.new({
   id = id.from(_N, "RecordExpiration"),
   type = "structure",
   members = {
      Expiration = schema.new({
         id = id.from(_N, "RecordExpiration", "Expiration"),
         type = "string",
         name = "Expiration",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Days = schema.new({
         id = id.from(_N, "RecordExpiration", "Days"),
         type = "integer",
         name = "Days",
         target_id = prelude.Integer.id,
      }),
   },
})

M.JournalTableConfiguration = schema.new({
   id = id.from(_N, "JournalTableConfiguration"),
   type = "structure",
   members = {
      RecordExpiration = schema.new({
         id = id.from(_N, "JournalTableConfiguration", "RecordExpiration"),
         type = "structure",
         name = "RecordExpiration",
         target_id = id.from(_N, "RecordExpiration"),
         target = M.RecordExpiration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EncryptionConfiguration = schema.new({
         id = id.from(_N, "JournalTableConfiguration", "EncryptionConfiguration"),
         type = "structure",
         name = "EncryptionConfiguration",
         target_id = id.from(_N, "MetadataTableEncryptionConfiguration"),
         target = M.MetadataTableEncryptionConfiguration,
      }),
   },
})

M.MetadataConfiguration = schema.new({
   id = id.from(_N, "MetadataConfiguration"),
   type = "structure",
   members = {
      JournalTableConfiguration = schema.new({
         id = id.from(_N, "MetadataConfiguration", "JournalTableConfiguration"),
         type = "structure",
         name = "JournalTableConfiguration",
         target_id = id.from(_N, "JournalTableConfiguration"),
         target = M.JournalTableConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InventoryTableConfiguration = schema.new({
         id = id.from(_N, "MetadataConfiguration", "InventoryTableConfiguration"),
         type = "structure",
         name = "InventoryTableConfiguration",
         target_id = id.from(_N, "InventoryTableConfiguration"),
         target = M.InventoryTableConfiguration,
      }),
   },
})

M.CreateBucketMetadataConfigurationInput = schema.new({
   id = id.from(_N, "CreateBucketMetadataConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "CreateBucketMetadataConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "CreateBucketMetadataConfigurationInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "CreateBucketMetadataConfigurationInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      MetadataConfiguration = schema.new({
         id = id.from(_N, "CreateBucketMetadataConfigurationInput", "MetadataConfiguration"),
         type = "structure",
         name = "MetadataConfiguration",
         target_id = id.from(_N, "MetadataConfiguration"),
         target = M.MetadataConfiguration,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "MetadataConfiguration" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "CreateBucketMetadataConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.CreateBucketMetadataConfigurationOutput = prelude.Unit

M.S3TablesDestination = schema.new({
   id = id.from(_N, "S3TablesDestination"),
   type = "structure",
   members = {
      TableBucketArn = schema.new({
         id = id.from(_N, "S3TablesDestination", "TableBucketArn"),
         type = "string",
         name = "TableBucketArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TableName = schema.new({
         id = id.from(_N, "S3TablesDestination", "TableName"),
         type = "string",
         name = "TableName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.MetadataTableConfiguration = schema.new({
   id = id.from(_N, "MetadataTableConfiguration"),
   type = "structure",
   members = {
      S3TablesDestination = schema.new({
         id = id.from(_N, "MetadataTableConfiguration", "S3TablesDestination"),
         type = "structure",
         name = "S3TablesDestination",
         target_id = id.from(_N, "S3TablesDestination"),
         target = M.S3TablesDestination,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateBucketMetadataTableConfigurationInput = schema.new({
   id = id.from(_N, "CreateBucketMetadataTableConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "CreateBucketMetadataTableConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "CreateBucketMetadataTableConfigurationInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "CreateBucketMetadataTableConfigurationInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      MetadataTableConfiguration = schema.new({
         id = id.from(_N, "CreateBucketMetadataTableConfigurationInput", "MetadataTableConfiguration"),
         type = "structure",
         name = "MetadataTableConfiguration",
         target_id = id.from(_N, "MetadataTableConfiguration"),
         target = M.MetadataTableConfiguration,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "MetadataTableConfiguration" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "CreateBucketMetadataTableConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.CreateBucketMetadataTableConfigurationOutput = prelude.Unit

M.CreateMultipartUploadInput = schema.new({
   id = id.from(_N, "CreateMultipartUploadRequest"),
   type = "structure",
   members = {
      ACL = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "ACL"),
         type = "string",
         name = "ACL",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-acl" },
         },
      }),
      Bucket = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      CacheControl = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "CacheControl"),
         type = "string",
         name = "CacheControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Cache-Control" },
         },
      }),
      ContentDisposition = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "ContentDisposition"),
         type = "string",
         name = "ContentDisposition",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Disposition" },
         },
      }),
      ContentEncoding = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "ContentEncoding"),
         type = "string",
         name = "ContentEncoding",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Encoding" },
         },
      }),
      ContentLanguage = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "ContentLanguage"),
         type = "string",
         name = "ContentLanguage",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Language" },
         },
      }),
      ContentType = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "ContentType"),
         type = "string",
         name = "ContentType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Type" },
         },
      }),
      Expires = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "Expires"),
         type = "string",
         name = "Expires",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Expires" },
         },
      }),
      GrantFullControl = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "GrantFullControl"),
         type = "string",
         name = "GrantFullControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-full-control" },
         },
      }),
      GrantRead = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "GrantRead"),
         type = "string",
         name = "GrantRead",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-read" },
         },
      }),
      GrantReadACP = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "GrantReadACP"),
         type = "string",
         name = "GrantReadACP",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-read-acp" },
         },
      }),
      GrantWriteACP = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "GrantWriteACP"),
         type = "string",
         name = "GrantWriteACP",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-write-acp" },
         },
      }),
      Key = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Metadata = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "Metadata"),
         type = "map",
         name = "Metadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.HTTP_PREFIX_HEADERS] = { prefix = "x-amz-meta-" },
         },
      }),
      ServerSideEncryption = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "ServerSideEncryption"),
         type = "string",
         name = "ServerSideEncryption",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption" },
         },
      }),
      StorageClass = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "StorageClass"),
         type = "string",
         name = "StorageClass",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-storage-class" },
         },
      }),
      WebsiteRedirectLocation = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "WebsiteRedirectLocation"),
         type = "string",
         name = "WebsiteRedirectLocation",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-website-redirect-location" },
         },
      }),
      SSECustomerAlgorithm = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "SSECustomerAlgorithm"),
         type = "string",
         name = "SSECustomerAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-algorithm" },
         },
      }),
      SSECustomerKey = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "SSECustomerKey"),
         type = "string",
         name = "SSECustomerKey",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key" },
         },
      }),
      SSECustomerKeyMD5 = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "SSECustomerKeyMD5"),
         type = "string",
         name = "SSECustomerKeyMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key-MD5" },
         },
      }),
      SSEKMSKeyId = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "SSEKMSKeyId"),
         type = "string",
         name = "SSEKMSKeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-aws-kms-key-id" },
         },
      }),
      SSEKMSEncryptionContext = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "SSEKMSEncryptionContext"),
         type = "string",
         name = "SSEKMSEncryptionContext",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-context" },
         },
      }),
      BucketKeyEnabled = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "BucketKeyEnabled"),
         type = "boolean",
         name = "BucketKeyEnabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-bucket-key-enabled" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      Tagging = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "Tagging"),
         type = "string",
         name = "Tagging",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-tagging" },
         },
      }),
      ObjectLockMode = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "ObjectLockMode"),
         type = "string",
         name = "ObjectLockMode",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-object-lock-mode" },
         },
      }),
      ObjectLockRetainUntilDate = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "ObjectLockRetainUntilDate"),
         type = "timestamp",
         name = "ObjectLockRetainUntilDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-object-lock-retain-until-date" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-object-lock-retain-until-date" },
         },
      }),
      ObjectLockLegalHoldStatus = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "ObjectLockLegalHoldStatus"),
         type = "string",
         name = "ObjectLockLegalHoldStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-object-lock-legal-hold" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-algorithm" },
         },
      }),
      ChecksumType = schema.new({
         id = id.from(_N, "CreateMultipartUploadInput", "ChecksumType"),
         type = "string",
         name = "ChecksumType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-type" },
         },
      }),
   },
})

M.CreateMultipartUploadOutput = schema.new({
   id = id.from(_N, "CreateMultipartUploadOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "InitiateMultipartUploadResult" },
   },
   members = {
      AbortDate = schema.new({
         id = id.from(_N, "CreateMultipartUploadOutput", "AbortDate"),
         type = "timestamp",
         name = "AbortDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-abort-date" },
         },
      }),
      AbortRuleId = schema.new({
         id = id.from(_N, "CreateMultipartUploadOutput", "AbortRuleId"),
         type = "string",
         name = "AbortRuleId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-abort-rule-id" },
         },
      }),
      Bucket = schema.new({
         id = id.from(_N, "CreateMultipartUploadOutput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.XML_NAME] = { name = "Bucket" },
         },
      }),
      Key = schema.new({
         id = id.from(_N, "CreateMultipartUploadOutput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
      }),
      UploadId = schema.new({
         id = id.from(_N, "CreateMultipartUploadOutput", "UploadId"),
         type = "string",
         name = "UploadId",
         target_id = prelude.String.id,
      }),
      ServerSideEncryption = schema.new({
         id = id.from(_N, "CreateMultipartUploadOutput", "ServerSideEncryption"),
         type = "string",
         name = "ServerSideEncryption",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption" },
         },
      }),
      SSECustomerAlgorithm = schema.new({
         id = id.from(_N, "CreateMultipartUploadOutput", "SSECustomerAlgorithm"),
         type = "string",
         name = "SSECustomerAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-algorithm" },
         },
      }),
      SSECustomerKeyMD5 = schema.new({
         id = id.from(_N, "CreateMultipartUploadOutput", "SSECustomerKeyMD5"),
         type = "string",
         name = "SSECustomerKeyMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key-MD5" },
         },
      }),
      SSEKMSKeyId = schema.new({
         id = id.from(_N, "CreateMultipartUploadOutput", "SSEKMSKeyId"),
         type = "string",
         name = "SSEKMSKeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-aws-kms-key-id" },
         },
      }),
      SSEKMSEncryptionContext = schema.new({
         id = id.from(_N, "CreateMultipartUploadOutput", "SSEKMSEncryptionContext"),
         type = "string",
         name = "SSEKMSEncryptionContext",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-context" },
         },
      }),
      BucketKeyEnabled = schema.new({
         id = id.from(_N, "CreateMultipartUploadOutput", "BucketKeyEnabled"),
         type = "boolean",
         name = "BucketKeyEnabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-bucket-key-enabled" },
         },
      }),
      RequestCharged = schema.new({
         id = id.from(_N, "CreateMultipartUploadOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "CreateMultipartUploadOutput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-algorithm" },
         },
      }),
      ChecksumType = schema.new({
         id = id.from(_N, "CreateMultipartUploadOutput", "ChecksumType"),
         type = "string",
         name = "ChecksumType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-type" },
         },
      }),
   },
})

M.CreateSessionInput = schema.new({
   id = id.from(_N, "CreateSessionRequest"),
   type = "structure",
   members = {
      SessionMode = schema.new({
         id = id.from(_N, "CreateSessionInput", "SessionMode"),
         type = "string",
         name = "SessionMode",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-create-session-mode" },
         },
      }),
      Bucket = schema.new({
         id = id.from(_N, "CreateSessionInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ServerSideEncryption = schema.new({
         id = id.from(_N, "CreateSessionInput", "ServerSideEncryption"),
         type = "string",
         name = "ServerSideEncryption",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption" },
         },
      }),
      SSEKMSKeyId = schema.new({
         id = id.from(_N, "CreateSessionInput", "SSEKMSKeyId"),
         type = "string",
         name = "SSEKMSKeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-aws-kms-key-id" },
         },
      }),
      SSEKMSEncryptionContext = schema.new({
         id = id.from(_N, "CreateSessionInput", "SSEKMSEncryptionContext"),
         type = "string",
         name = "SSEKMSEncryptionContext",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-context" },
         },
      }),
      BucketKeyEnabled = schema.new({
         id = id.from(_N, "CreateSessionInput", "BucketKeyEnabled"),
         type = "boolean",
         name = "BucketKeyEnabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-bucket-key-enabled" },
         },
      }),
   },
})

M.SessionCredentials = schema.new({
   id = id.from(_N, "SessionCredentials"),
   type = "structure",
   members = {
      AccessKeyId = schema.new({
         id = id.from(_N, "SessionCredentials", "AccessKeyId"),
         type = "string",
         name = "AccessKeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.XML_NAME] = { name = "AccessKeyId" },
         },
      }),
      SecretAccessKey = schema.new({
         id = id.from(_N, "SessionCredentials", "SecretAccessKey"),
         type = "string",
         name = "SecretAccessKey",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.XML_NAME] = { name = "SecretAccessKey" },
         },
      }),
      SessionToken = schema.new({
         id = id.from(_N, "SessionCredentials", "SessionToken"),
         type = "string",
         name = "SessionToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.XML_NAME] = { name = "SessionToken" },
         },
      }),
      Expiration = schema.new({
         id = id.from(_N, "SessionCredentials", "Expiration"),
         type = "timestamp",
         name = "Expiration",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.XML_NAME] = { name = "Expiration" },
         },
      }),
   },
})

M.CreateSessionOutput = schema.new({
   id = id.from(_N, "CreateSessionOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "CreateSessionResult" },
   },
   members = {
      ServerSideEncryption = schema.new({
         id = id.from(_N, "CreateSessionOutput", "ServerSideEncryption"),
         type = "string",
         name = "ServerSideEncryption",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption" },
         },
      }),
      SSEKMSKeyId = schema.new({
         id = id.from(_N, "CreateSessionOutput", "SSEKMSKeyId"),
         type = "string",
         name = "SSEKMSKeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-aws-kms-key-id" },
         },
      }),
      SSEKMSEncryptionContext = schema.new({
         id = id.from(_N, "CreateSessionOutput", "SSEKMSEncryptionContext"),
         type = "string",
         name = "SSEKMSEncryptionContext",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-context" },
         },
      }),
      BucketKeyEnabled = schema.new({
         id = id.from(_N, "CreateSessionOutput", "BucketKeyEnabled"),
         type = "boolean",
         name = "BucketKeyEnabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-bucket-key-enabled" },
         },
      }),
      Credentials = schema.new({
         id = id.from(_N, "CreateSessionOutput", "Credentials"),
         type = "structure",
         name = "Credentials",
         target_id = id.from(_N, "SessionCredentials"),
         target = M.SessionCredentials,
         traits = {
            [traits.REQUIRED] = {},
            [traits.XML_NAME] = { name = "Credentials" },
         },
      }),
   },
})

M.NoSuchBucket = schema.new({
   id = id.from(_N, "NoSuchBucket"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
})

M.DeleteBucketInput = schema.new({
   id = id.from(_N, "DeleteBucketRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "DeleteBucketInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "DeleteBucketInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.DeleteBucketOutput = prelude.Unit

M.DeleteBucketAnalyticsConfigurationInput = schema.new({
   id = id.from(_N, "DeleteBucketAnalyticsConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "DeleteBucketAnalyticsConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "DeleteBucketAnalyticsConfigurationInput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "id" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "DeleteBucketAnalyticsConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.DeleteBucketAnalyticsConfigurationOutput = prelude.Unit

M.DeleteBucketCorsInput = schema.new({
   id = id.from(_N, "DeleteBucketCorsRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "DeleteBucketCorsInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "DeleteBucketCorsInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.DeleteBucketCorsOutput = prelude.Unit

M.DeleteBucketEncryptionInput = schema.new({
   id = id.from(_N, "DeleteBucketEncryptionRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "DeleteBucketEncryptionInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "DeleteBucketEncryptionInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.DeleteBucketEncryptionOutput = prelude.Unit

M.DeleteBucketIntelligentTieringConfigurationInput = schema.new({
   id = id.from(_N, "DeleteBucketIntelligentTieringConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "DeleteBucketIntelligentTieringConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "DeleteBucketIntelligentTieringConfigurationInput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "id" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "DeleteBucketIntelligentTieringConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.DeleteBucketIntelligentTieringConfigurationOutput = prelude.Unit

M.DeleteBucketInventoryConfigurationInput = schema.new({
   id = id.from(_N, "DeleteBucketInventoryConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "DeleteBucketInventoryConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "DeleteBucketInventoryConfigurationInput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "id" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "DeleteBucketInventoryConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.DeleteBucketInventoryConfigurationOutput = prelude.Unit

M.DeleteBucketLifecycleInput = schema.new({
   id = id.from(_N, "DeleteBucketLifecycleRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "DeleteBucketLifecycleInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "DeleteBucketLifecycleInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.DeleteBucketLifecycleOutput = prelude.Unit

M.DeleteBucketMetadataConfigurationInput = schema.new({
   id = id.from(_N, "DeleteBucketMetadataConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "DeleteBucketMetadataConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "DeleteBucketMetadataConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.DeleteBucketMetadataConfigurationOutput = prelude.Unit

M.DeleteBucketMetadataTableConfigurationInput = schema.new({
   id = id.from(_N, "DeleteBucketMetadataTableConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "DeleteBucketMetadataTableConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "DeleteBucketMetadataTableConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.DeleteBucketMetadataTableConfigurationOutput = prelude.Unit

M.DeleteBucketMetricsConfigurationInput = schema.new({
   id = id.from(_N, "DeleteBucketMetricsConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "DeleteBucketMetricsConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "DeleteBucketMetricsConfigurationInput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "id" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "DeleteBucketMetricsConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.DeleteBucketMetricsConfigurationOutput = prelude.Unit

M.DeleteBucketOwnershipControlsInput = schema.new({
   id = id.from(_N, "DeleteBucketOwnershipControlsRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "DeleteBucketOwnershipControlsInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "DeleteBucketOwnershipControlsInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.DeleteBucketOwnershipControlsOutput = prelude.Unit

M.DeleteBucketPolicyInput = schema.new({
   id = id.from(_N, "DeleteBucketPolicyRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "DeleteBucketPolicyInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "DeleteBucketPolicyInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.DeleteBucketPolicyOutput = prelude.Unit

M.DeleteBucketReplicationInput = schema.new({
   id = id.from(_N, "DeleteBucketReplicationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "DeleteBucketReplicationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "DeleteBucketReplicationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.DeleteBucketReplicationOutput = prelude.Unit

M.DeleteBucketTaggingInput = schema.new({
   id = id.from(_N, "DeleteBucketTaggingRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "DeleteBucketTaggingInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "DeleteBucketTaggingInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.DeleteBucketTaggingOutput = prelude.Unit

M.DeleteBucketWebsiteInput = schema.new({
   id = id.from(_N, "DeleteBucketWebsiteRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "DeleteBucketWebsiteInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "DeleteBucketWebsiteInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.DeleteBucketWebsiteOutput = prelude.Unit

M.DeleteObjectInput = schema.new({
   id = id.from(_N, "DeleteObjectRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "DeleteObjectInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Key = schema.new({
         id = id.from(_N, "DeleteObjectInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      MFA = schema.new({
         id = id.from(_N, "DeleteObjectInput", "MFA"),
         type = "string",
         name = "MFA",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-mfa" },
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "DeleteObjectInput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "versionId" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "DeleteObjectInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      BypassGovernanceRetention = schema.new({
         id = id.from(_N, "DeleteObjectInput", "BypassGovernanceRetention"),
         type = "boolean",
         name = "BypassGovernanceRetention",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-bypass-governance-retention" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "DeleteObjectInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      IfMatch = schema.new({
         id = id.from(_N, "DeleteObjectInput", "IfMatch"),
         type = "string",
         name = "IfMatch",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "If-Match" },
         },
      }),
      IfMatchLastModifiedTime = schema.new({
         id = id.from(_N, "DeleteObjectInput", "IfMatchLastModifiedTime"),
         type = "timestamp",
         name = "IfMatchLastModifiedTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-if-match-last-modified-time" },
            [traits.TIMESTAMP_FORMAT] = { format = "http-date" },
         },
         direct_traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-if-match-last-modified-time" },
         },
      }),
      IfMatchSize = schema.new({
         id = id.from(_N, "DeleteObjectInput", "IfMatchSize"),
         type = "long",
         name = "IfMatchSize",
         target_id = prelude.Long.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-if-match-size" },
         },
      }),
   },
})

M.DeleteObjectOutput = schema.new({
   id = id.from(_N, "DeleteObjectOutput"),
   type = "structure",
   members = {
      DeleteMarker = schema.new({
         id = id.from(_N, "DeleteObjectOutput", "DeleteMarker"),
         type = "boolean",
         name = "DeleteMarker",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-delete-marker" },
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "DeleteObjectOutput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-version-id" },
         },
      }),
      RequestCharged = schema.new({
         id = id.from(_N, "DeleteObjectOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
   },
})

M.ObjectIdentifier = schema.new({
   id = id.from(_N, "ObjectIdentifier"),
   type = "structure",
   members = {
      Key = schema.new({
         id = id.from(_N, "ObjectIdentifier", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "ObjectIdentifier", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
      }),
      ETag = schema.new({
         id = id.from(_N, "ObjectIdentifier", "ETag"),
         type = "string",
         name = "ETag",
         target_id = prelude.String.id,
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "ObjectIdentifier", "LastModifiedTime"),
         type = "timestamp",
         name = "LastModifiedTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "http-date" },
         },
      }),
      Size = schema.new({
         id = id.from(_N, "ObjectIdentifier", "Size"),
         type = "long",
         name = "Size",
         target_id = prelude.Long.id,
      }),
   },
})

M.Delete = schema.new({
   id = id.from(_N, "Delete"),
   type = "structure",
   members = {
      Objects = schema.new({
         id = id.from(_N, "Delete", "Objects"),
         type = "list",
         name = "Objects",
         target_id = prelude.Document.id,
         list_member = M.ObjectIdentifier,
         traits = {
            [traits.REQUIRED] = {},
            [traits.XML_NAME] = { name = "Object" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      Quiet = schema.new({
         id = id.from(_N, "Delete", "Quiet"),
         type = "boolean",
         name = "Quiet",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.DeleteObjectsInput = schema.new({
   id = id.from(_N, "DeleteObjectsRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "DeleteObjectsInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Delete = schema.new({
         id = id.from(_N, "DeleteObjectsInput", "Delete"),
         type = "structure",
         name = "Delete",
         target_id = id.from(_N, "Delete"),
         target = M.Delete,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "Delete" },
         },
      }),
      MFA = schema.new({
         id = id.from(_N, "DeleteObjectsInput", "MFA"),
         type = "string",
         name = "MFA",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-mfa" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "DeleteObjectsInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      BypassGovernanceRetention = schema.new({
         id = id.from(_N, "DeleteObjectsInput", "BypassGovernanceRetention"),
         type = "boolean",
         name = "BypassGovernanceRetention",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-bypass-governance-retention" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "DeleteObjectsInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "DeleteObjectsInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
   },
})

M.DeletedObject = schema.new({
   id = id.from(_N, "DeletedObject"),
   type = "structure",
   members = {
      Key = schema.new({
         id = id.from(_N, "DeletedObject", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
      }),
      VersionId = schema.new({
         id = id.from(_N, "DeletedObject", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
      }),
      DeleteMarker = schema.new({
         id = id.from(_N, "DeletedObject", "DeleteMarker"),
         type = "boolean",
         name = "DeleteMarker",
         target_id = prelude.Boolean.id,
      }),
      DeleteMarkerVersionId = schema.new({
         id = id.from(_N, "DeletedObject", "DeleteMarkerVersionId"),
         type = "string",
         name = "DeleteMarkerVersionId",
         target_id = prelude.String.id,
      }),
   },
})

M.Error = schema.new({
   id = id.from(_N, "Error"),
   type = "structure",
   members = {
      Key = schema.new({
         id = id.from(_N, "Error", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
      }),
      VersionId = schema.new({
         id = id.from(_N, "Error", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
      }),
      Code = schema.new({
         id = id.from(_N, "Error", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "Error", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteObjectsOutput = schema.new({
   id = id.from(_N, "DeleteObjectsOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "DeleteResult" },
   },
   members = {
      Deleted = schema.new({
         id = id.from(_N, "DeleteObjectsOutput", "Deleted"),
         type = "list",
         name = "Deleted",
         target_id = prelude.Document.id,
         list_member = M.DeletedObject,
         traits = {
            [traits.XML_FLATTENED] = {},
         },
      }),
      RequestCharged = schema.new({
         id = id.from(_N, "DeleteObjectsOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
      Errors = schema.new({
         id = id.from(_N, "DeleteObjectsOutput", "Errors"),
         type = "list",
         name = "Errors",
         target_id = prelude.Document.id,
         list_member = M.Error,
         traits = {
            [traits.XML_NAME] = { name = "Error" },
            [traits.XML_FLATTENED] = {},
         },
      }),
   },
})

M.DeleteObjectTaggingInput = schema.new({
   id = id.from(_N, "DeleteObjectTaggingRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "DeleteObjectTaggingInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Key = schema.new({
         id = id.from(_N, "DeleteObjectTaggingInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "DeleteObjectTaggingInput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "versionId" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "DeleteObjectTaggingInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.DeleteObjectTaggingOutput = schema.new({
   id = id.from(_N, "DeleteObjectTaggingOutput"),
   type = "structure",
   members = {
      VersionId = schema.new({
         id = id.from(_N, "DeleteObjectTaggingOutput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-version-id" },
         },
      }),
   },
})

M.DeletePublicAccessBlockInput = schema.new({
   id = id.from(_N, "DeletePublicAccessBlockRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "DeletePublicAccessBlockInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "DeletePublicAccessBlockInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.DeletePublicAccessBlockOutput = prelude.Unit

M.GetBucketAbacInput = schema.new({
   id = id.from(_N, "GetBucketAbacRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetBucketAbacInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetBucketAbacInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.GetBucketAbacOutput = schema.new({
   id = id.from(_N, "GetBucketAbacOutput"),
   type = "structure",
   members = {
      AbacStatus = schema.new({
         id = id.from(_N, "GetBucketAbacOutput", "AbacStatus"),
         type = "structure",
         name = "AbacStatus",
         target_id = id.from(_N, "AbacStatus"),
         target = M.AbacStatus,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetBucketAccelerateConfigurationInput = schema.new({
   id = id.from(_N, "GetBucketAccelerateConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetBucketAccelerateConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetBucketAccelerateConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "GetBucketAccelerateConfigurationInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
   },
})

M.GetBucketAccelerateConfigurationOutput = schema.new({
   id = id.from(_N, "GetBucketAccelerateConfigurationOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "AccelerateConfiguration" },
   },
   members = {
      Status = schema.new({
         id = id.from(_N, "GetBucketAccelerateConfigurationOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      RequestCharged = schema.new({
         id = id.from(_N, "GetBucketAccelerateConfigurationOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
   },
})

M.GetBucketAclInput = schema.new({
   id = id.from(_N, "GetBucketAclRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetBucketAclInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetBucketAclInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.GetBucketAclOutput = schema.new({
   id = id.from(_N, "GetBucketAclOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "AccessControlPolicy" },
   },
   members = {
      Owner = schema.new({
         id = id.from(_N, "GetBucketAclOutput", "Owner"),
         type = "structure",
         name = "Owner",
         target_id = id.from(_N, "Owner"),
         target = M.Owner,
      }),
      Grants = schema.new({
         id = id.from(_N, "GetBucketAclOutput", "Grants"),
         type = "list",
         name = "Grants",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.Grant, traits = { [traits.XML_NAME] = { name = "Grant" } } }),
         traits = {
            [traits.XML_NAME] = { name = "AccessControlList" },
         },
      }),
   },
})

M.GetBucketAnalyticsConfigurationInput = schema.new({
   id = id.from(_N, "GetBucketAnalyticsConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetBucketAnalyticsConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "GetBucketAnalyticsConfigurationInput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "id" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetBucketAnalyticsConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.AnalyticsAndOperator = schema.new({
   id = id.from(_N, "AnalyticsAndOperator"),
   type = "structure",
   members = {
      Prefix = schema.new({
         id = id.from(_N, "AnalyticsAndOperator", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "AnalyticsAndOperator", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
         traits = {
            [traits.XML_NAME] = { name = "Tag" },
            [traits.XML_FLATTENED] = {},
         },
      }),
   },
})

M.AnalyticsFilter = schema.new({
   id = id.from(_N, "AnalyticsFilter"),
   type = "union",
   members = {
      Prefix = schema.new({
         id = id.from(_N, "AnalyticsFilter", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
      Tag = schema.new({
         id = id.from(_N, "AnalyticsFilter", "Tag"),
         type = "structure",
         name = "Tag",
         target_id = id.from(_N, "Tag"),
         target = M.Tag,
      }),
      And = schema.new({
         id = id.from(_N, "AnalyticsFilter", "And"),
         type = "structure",
         name = "And",
         target_id = id.from(_N, "AnalyticsAndOperator"),
         target = M.AnalyticsAndOperator,
      }),
   },
})

M.AnalyticsS3BucketDestination = schema.new({
   id = id.from(_N, "AnalyticsS3BucketDestination"),
   type = "structure",
   members = {
      Format = schema.new({
         id = id.from(_N, "AnalyticsS3BucketDestination", "Format"),
         type = "string",
         name = "Format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BucketAccountId = schema.new({
         id = id.from(_N, "AnalyticsS3BucketDestination", "BucketAccountId"),
         type = "string",
         name = "BucketAccountId",
         target_id = prelude.String.id,
      }),
      Bucket = schema.new({
         id = id.from(_N, "AnalyticsS3BucketDestination", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Prefix = schema.new({
         id = id.from(_N, "AnalyticsS3BucketDestination", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
   },
})

M.AnalyticsExportDestination = schema.new({
   id = id.from(_N, "AnalyticsExportDestination"),
   type = "structure",
   members = {
      S3BucketDestination = schema.new({
         id = id.from(_N, "AnalyticsExportDestination", "S3BucketDestination"),
         type = "structure",
         name = "S3BucketDestination",
         target_id = id.from(_N, "AnalyticsS3BucketDestination"),
         target = M.AnalyticsS3BucketDestination,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StorageClassAnalysisDataExport = schema.new({
   id = id.from(_N, "StorageClassAnalysisDataExport"),
   type = "structure",
   members = {
      OutputSchemaVersion = schema.new({
         id = id.from(_N, "StorageClassAnalysisDataExport", "OutputSchemaVersion"),
         type = "string",
         name = "OutputSchemaVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Destination = schema.new({
         id = id.from(_N, "StorageClassAnalysisDataExport", "Destination"),
         type = "structure",
         name = "Destination",
         target_id = id.from(_N, "AnalyticsExportDestination"),
         target = M.AnalyticsExportDestination,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StorageClassAnalysis = schema.new({
   id = id.from(_N, "StorageClassAnalysis"),
   type = "structure",
   members = {
      DataExport = schema.new({
         id = id.from(_N, "StorageClassAnalysis", "DataExport"),
         type = "structure",
         name = "DataExport",
         target_id = id.from(_N, "StorageClassAnalysisDataExport"),
         target = M.StorageClassAnalysisDataExport,
      }),
   },
})

M.AnalyticsConfiguration = schema.new({
   id = id.from(_N, "AnalyticsConfiguration"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "AnalyticsConfiguration", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Filter = schema.new({
         id = id.from(_N, "AnalyticsConfiguration", "Filter"),
         type = "union",
         name = "Filter",
         target_id = id.from(_N, "AnalyticsFilter"),
         target = M.AnalyticsFilter,
      }),
      StorageClassAnalysis = schema.new({
         id = id.from(_N, "AnalyticsConfiguration", "StorageClassAnalysis"),
         type = "structure",
         name = "StorageClassAnalysis",
         target_id = id.from(_N, "StorageClassAnalysis"),
         target = M.StorageClassAnalysis,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetBucketAnalyticsConfigurationOutput = schema.new({
   id = id.from(_N, "GetBucketAnalyticsConfigurationOutput"),
   type = "structure",
   members = {
      AnalyticsConfiguration = schema.new({
         id = id.from(_N, "GetBucketAnalyticsConfigurationOutput", "AnalyticsConfiguration"),
         type = "structure",
         name = "AnalyticsConfiguration",
         target_id = id.from(_N, "AnalyticsConfiguration"),
         target = M.AnalyticsConfiguration,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetBucketCorsInput = schema.new({
   id = id.from(_N, "GetBucketCorsRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetBucketCorsInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetBucketCorsInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.CORSRule = schema.new({
   id = id.from(_N, "CORSRule"),
   type = "structure",
   members = {
      ID = schema.new({
         id = id.from(_N, "CORSRule", "ID"),
         type = "string",
         name = "ID",
         target_id = prelude.String.id,
      }),
      AllowedHeaders = schema.new({
         id = id.from(_N, "CORSRule", "AllowedHeaders"),
         type = "list",
         name = "AllowedHeaders",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.XML_NAME] = { name = "AllowedHeader" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      AllowedMethods = schema.new({
         id = id.from(_N, "CORSRule", "AllowedMethods"),
         type = "list",
         name = "AllowedMethods",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
            [traits.XML_NAME] = { name = "AllowedMethod" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      AllowedOrigins = schema.new({
         id = id.from(_N, "CORSRule", "AllowedOrigins"),
         type = "list",
         name = "AllowedOrigins",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
            [traits.XML_NAME] = { name = "AllowedOrigin" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      ExposeHeaders = schema.new({
         id = id.from(_N, "CORSRule", "ExposeHeaders"),
         type = "list",
         name = "ExposeHeaders",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.XML_NAME] = { name = "ExposeHeader" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      MaxAgeSeconds = schema.new({
         id = id.from(_N, "CORSRule", "MaxAgeSeconds"),
         type = "integer",
         name = "MaxAgeSeconds",
         target_id = prelude.Integer.id,
      }),
   },
})

M.GetBucketCorsOutput = schema.new({
   id = id.from(_N, "GetBucketCorsOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "CORSConfiguration" },
   },
   members = {
      CORSRules = schema.new({
         id = id.from(_N, "GetBucketCorsOutput", "CORSRules"),
         type = "list",
         name = "CORSRules",
         target_id = prelude.Document.id,
         list_member = M.CORSRule,
         traits = {
            [traits.XML_NAME] = { name = "CORSRule" },
            [traits.XML_FLATTENED] = {},
         },
      }),
   },
})

M.GetBucketEncryptionInput = schema.new({
   id = id.from(_N, "GetBucketEncryptionRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetBucketEncryptionInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetBucketEncryptionInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.ServerSideEncryptionByDefault = schema.new({
   id = id.from(_N, "ServerSideEncryptionByDefault"),
   type = "structure",
   members = {
      SSEAlgorithm = schema.new({
         id = id.from(_N, "ServerSideEncryptionByDefault", "SSEAlgorithm"),
         type = "string",
         name = "SSEAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      KMSMasterKeyID = schema.new({
         id = id.from(_N, "ServerSideEncryptionByDefault", "KMSMasterKeyID"),
         type = "string",
         name = "KMSMasterKeyID",
         target_id = prelude.String.id,
      }),
   },
})

M.BlockedEncryptionTypes = schema.new({
   id = id.from(_N, "BlockedEncryptionTypes"),
   type = "structure",
   members = {
      EncryptionType = schema.new({
         id = id.from(_N, "BlockedEncryptionTypes", "EncryptionType"),
         type = "list",
         name = "EncryptionType",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "EncryptionType" } } }),
         traits = {
            [traits.XML_FLATTENED] = {},
         },
      }),
   },
})

M.ServerSideEncryptionRule = schema.new({
   id = id.from(_N, "ServerSideEncryptionRule"),
   type = "structure",
   members = {
      ApplyServerSideEncryptionByDefault = schema.new({
         id = id.from(_N, "ServerSideEncryptionRule", "ApplyServerSideEncryptionByDefault"),
         type = "structure",
         name = "ApplyServerSideEncryptionByDefault",
         target_id = id.from(_N, "ServerSideEncryptionByDefault"),
         target = M.ServerSideEncryptionByDefault,
      }),
      BucketKeyEnabled = schema.new({
         id = id.from(_N, "ServerSideEncryptionRule", "BucketKeyEnabled"),
         type = "boolean",
         name = "BucketKeyEnabled",
         target_id = prelude.Boolean.id,
      }),
      BlockedEncryptionTypes = schema.new({
         id = id.from(_N, "ServerSideEncryptionRule", "BlockedEncryptionTypes"),
         type = "structure",
         name = "BlockedEncryptionTypes",
         target_id = id.from(_N, "BlockedEncryptionTypes"),
         target = M.BlockedEncryptionTypes,
      }),
   },
})

M.ServerSideEncryptionConfiguration = schema.new({
   id = id.from(_N, "ServerSideEncryptionConfiguration"),
   type = "structure",
   members = {
      Rules = schema.new({
         id = id.from(_N, "ServerSideEncryptionConfiguration", "Rules"),
         type = "list",
         name = "Rules",
         target_id = prelude.Document.id,
         list_member = M.ServerSideEncryptionRule,
         traits = {
            [traits.REQUIRED] = {},
            [traits.XML_NAME] = { name = "Rule" },
            [traits.XML_FLATTENED] = {},
         },
      }),
   },
})

M.GetBucketEncryptionOutput = schema.new({
   id = id.from(_N, "GetBucketEncryptionOutput"),
   type = "structure",
   members = {
      ServerSideEncryptionConfiguration = schema.new({
         id = id.from(_N, "GetBucketEncryptionOutput", "ServerSideEncryptionConfiguration"),
         type = "structure",
         name = "ServerSideEncryptionConfiguration",
         target_id = id.from(_N, "ServerSideEncryptionConfiguration"),
         target = M.ServerSideEncryptionConfiguration,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetBucketIntelligentTieringConfigurationInput = schema.new({
   id = id.from(_N, "GetBucketIntelligentTieringConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetBucketIntelligentTieringConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "GetBucketIntelligentTieringConfigurationInput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "id" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetBucketIntelligentTieringConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.IntelligentTieringAndOperator = schema.new({
   id = id.from(_N, "IntelligentTieringAndOperator"),
   type = "structure",
   members = {
      Prefix = schema.new({
         id = id.from(_N, "IntelligentTieringAndOperator", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "IntelligentTieringAndOperator", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
         traits = {
            [traits.XML_NAME] = { name = "Tag" },
            [traits.XML_FLATTENED] = {},
         },
      }),
   },
})

M.IntelligentTieringFilter = schema.new({
   id = id.from(_N, "IntelligentTieringFilter"),
   type = "structure",
   members = {
      Prefix = schema.new({
         id = id.from(_N, "IntelligentTieringFilter", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
      Tag = schema.new({
         id = id.from(_N, "IntelligentTieringFilter", "Tag"),
         type = "structure",
         name = "Tag",
         target_id = id.from(_N, "Tag"),
         target = M.Tag,
      }),
      And = schema.new({
         id = id.from(_N, "IntelligentTieringFilter", "And"),
         type = "structure",
         name = "And",
         target_id = id.from(_N, "IntelligentTieringAndOperator"),
         target = M.IntelligentTieringAndOperator,
      }),
   },
})

M.Tiering = schema.new({
   id = id.from(_N, "Tiering"),
   type = "structure",
   members = {
      Days = schema.new({
         id = id.from(_N, "Tiering", "Days"),
         type = "integer",
         name = "Days",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AccessTier = schema.new({
         id = id.from(_N, "Tiering", "AccessTier"),
         type = "string",
         name = "AccessTier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IntelligentTieringConfiguration = schema.new({
   id = id.from(_N, "IntelligentTieringConfiguration"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "IntelligentTieringConfiguration", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Filter = schema.new({
         id = id.from(_N, "IntelligentTieringConfiguration", "Filter"),
         type = "structure",
         name = "Filter",
         target_id = id.from(_N, "IntelligentTieringFilter"),
         target = M.IntelligentTieringFilter,
      }),
      Status = schema.new({
         id = id.from(_N, "IntelligentTieringConfiguration", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Tierings = schema.new({
         id = id.from(_N, "IntelligentTieringConfiguration", "Tierings"),
         type = "list",
         name = "Tierings",
         target_id = prelude.Document.id,
         list_member = M.Tiering,
         traits = {
            [traits.REQUIRED] = {},
            [traits.XML_NAME] = { name = "Tiering" },
            [traits.XML_FLATTENED] = {},
         },
      }),
   },
})

M.GetBucketIntelligentTieringConfigurationOutput = schema.new({
   id = id.from(_N, "GetBucketIntelligentTieringConfigurationOutput"),
   type = "structure",
   members = {
      IntelligentTieringConfiguration = schema.new({
         id = id.from(_N, "GetBucketIntelligentTieringConfigurationOutput", "IntelligentTieringConfiguration"),
         type = "structure",
         name = "IntelligentTieringConfiguration",
         target_id = id.from(_N, "IntelligentTieringConfiguration"),
         target = M.IntelligentTieringConfiguration,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetBucketInventoryConfigurationInput = schema.new({
   id = id.from(_N, "GetBucketInventoryConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetBucketInventoryConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "GetBucketInventoryConfigurationInput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "id" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetBucketInventoryConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.SSEKMS = schema.new({
   id = id.from(_N, "SSEKMS"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "SSE-KMS" },
   },
   members = {
      KeyId = schema.new({
         id = id.from(_N, "SSEKMS", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SSES3 = schema.new({
   id = id.from(_N, "SSES3"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "SSE-S3" },
   },
})

M.InventoryEncryption = schema.new({
   id = id.from(_N, "InventoryEncryption"),
   type = "structure",
   members = {
      SSES3 = schema.new({
         id = id.from(_N, "InventoryEncryption", "SSES3"),
         type = "structure",
         name = "SSES3",
         target_id = id.from(_N, "SSES3"),
         target = M.SSES3,
         traits = {
            [traits.XML_NAME] = { name = "SSE-S3" },
         },
      }),
      SSEKMS = schema.new({
         id = id.from(_N, "InventoryEncryption", "SSEKMS"),
         type = "structure",
         name = "SSEKMS",
         target_id = id.from(_N, "SSEKMS"),
         target = M.SSEKMS,
         traits = {
            [traits.XML_NAME] = { name = "SSE-KMS" },
         },
      }),
   },
})

M.InventoryS3BucketDestination = schema.new({
   id = id.from(_N, "InventoryS3BucketDestination"),
   type = "structure",
   members = {
      AccountId = schema.new({
         id = id.from(_N, "InventoryS3BucketDestination", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      Bucket = schema.new({
         id = id.from(_N, "InventoryS3BucketDestination", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Format = schema.new({
         id = id.from(_N, "InventoryS3BucketDestination", "Format"),
         type = "string",
         name = "Format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Prefix = schema.new({
         id = id.from(_N, "InventoryS3BucketDestination", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
      Encryption = schema.new({
         id = id.from(_N, "InventoryS3BucketDestination", "Encryption"),
         type = "structure",
         name = "Encryption",
         target_id = id.from(_N, "InventoryEncryption"),
         target = M.InventoryEncryption,
      }),
   },
})

M.InventoryDestination = schema.new({
   id = id.from(_N, "InventoryDestination"),
   type = "structure",
   members = {
      S3BucketDestination = schema.new({
         id = id.from(_N, "InventoryDestination", "S3BucketDestination"),
         type = "structure",
         name = "S3BucketDestination",
         target_id = id.from(_N, "InventoryS3BucketDestination"),
         target = M.InventoryS3BucketDestination,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.InventoryFilter = schema.new({
   id = id.from(_N, "InventoryFilter"),
   type = "structure",
   members = {
      Prefix = schema.new({
         id = id.from(_N, "InventoryFilter", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.InventorySchedule = schema.new({
   id = id.from(_N, "InventorySchedule"),
   type = "structure",
   members = {
      Frequency = schema.new({
         id = id.from(_N, "InventorySchedule", "Frequency"),
         type = "string",
         name = "Frequency",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.InventoryConfiguration = schema.new({
   id = id.from(_N, "InventoryConfiguration"),
   type = "structure",
   members = {
      Destination = schema.new({
         id = id.from(_N, "InventoryConfiguration", "Destination"),
         type = "structure",
         name = "Destination",
         target_id = id.from(_N, "InventoryDestination"),
         target = M.InventoryDestination,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IsEnabled = schema.new({
         id = id.from(_N, "InventoryConfiguration", "IsEnabled"),
         type = "boolean",
         name = "IsEnabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Filter = schema.new({
         id = id.from(_N, "InventoryConfiguration", "Filter"),
         type = "structure",
         name = "Filter",
         target_id = id.from(_N, "InventoryFilter"),
         target = M.InventoryFilter,
      }),
      Id = schema.new({
         id = id.from(_N, "InventoryConfiguration", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IncludedObjectVersions = schema.new({
         id = id.from(_N, "InventoryConfiguration", "IncludedObjectVersions"),
         type = "string",
         name = "IncludedObjectVersions",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      OptionalFields = schema.new({
         id = id.from(_N, "InventoryConfiguration", "OptionalFields"),
         type = "list",
         name = "OptionalFields",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Field" } } }),
      }),
      Schedule = schema.new({
         id = id.from(_N, "InventoryConfiguration", "Schedule"),
         type = "structure",
         name = "Schedule",
         target_id = id.from(_N, "InventorySchedule"),
         target = M.InventorySchedule,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetBucketInventoryConfigurationOutput = schema.new({
   id = id.from(_N, "GetBucketInventoryConfigurationOutput"),
   type = "structure",
   members = {
      InventoryConfiguration = schema.new({
         id = id.from(_N, "GetBucketInventoryConfigurationOutput", "InventoryConfiguration"),
         type = "structure",
         name = "InventoryConfiguration",
         target_id = id.from(_N, "InventoryConfiguration"),
         target = M.InventoryConfiguration,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetBucketLifecycleConfigurationInput = schema.new({
   id = id.from(_N, "GetBucketLifecycleConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetBucketLifecycleConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetBucketLifecycleConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.LifecycleExpiration = schema.new({
   id = id.from(_N, "LifecycleExpiration"),
   type = "structure",
   members = {
      Date = schema.new({
         id = id.from(_N, "LifecycleExpiration", "Date"),
         type = "timestamp",
         name = "Date",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      Days = schema.new({
         id = id.from(_N, "LifecycleExpiration", "Days"),
         type = "integer",
         name = "Days",
         target_id = prelude.Integer.id,
      }),
      ExpiredObjectDeleteMarker = schema.new({
         id = id.from(_N, "LifecycleExpiration", "ExpiredObjectDeleteMarker"),
         type = "boolean",
         name = "ExpiredObjectDeleteMarker",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.LifecycleRuleAndOperator = schema.new({
   id = id.from(_N, "LifecycleRuleAndOperator"),
   type = "structure",
   members = {
      Prefix = schema.new({
         id = id.from(_N, "LifecycleRuleAndOperator", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "LifecycleRuleAndOperator", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
         traits = {
            [traits.XML_NAME] = { name = "Tag" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      ObjectSizeGreaterThan = schema.new({
         id = id.from(_N, "LifecycleRuleAndOperator", "ObjectSizeGreaterThan"),
         type = "long",
         name = "ObjectSizeGreaterThan",
         target_id = prelude.Long.id,
      }),
      ObjectSizeLessThan = schema.new({
         id = id.from(_N, "LifecycleRuleAndOperator", "ObjectSizeLessThan"),
         type = "long",
         name = "ObjectSizeLessThan",
         target_id = prelude.Long.id,
      }),
   },
})

M.LifecycleRuleFilter = schema.new({
   id = id.from(_N, "LifecycleRuleFilter"),
   type = "structure",
   members = {
      Prefix = schema.new({
         id = id.from(_N, "LifecycleRuleFilter", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
      Tag = schema.new({
         id = id.from(_N, "LifecycleRuleFilter", "Tag"),
         type = "structure",
         name = "Tag",
         target_id = id.from(_N, "Tag"),
         target = M.Tag,
      }),
      ObjectSizeGreaterThan = schema.new({
         id = id.from(_N, "LifecycleRuleFilter", "ObjectSizeGreaterThan"),
         type = "long",
         name = "ObjectSizeGreaterThan",
         target_id = prelude.Long.id,
      }),
      ObjectSizeLessThan = schema.new({
         id = id.from(_N, "LifecycleRuleFilter", "ObjectSizeLessThan"),
         type = "long",
         name = "ObjectSizeLessThan",
         target_id = prelude.Long.id,
      }),
      And = schema.new({
         id = id.from(_N, "LifecycleRuleFilter", "And"),
         type = "structure",
         name = "And",
         target_id = id.from(_N, "LifecycleRuleAndOperator"),
         target = M.LifecycleRuleAndOperator,
      }),
   },
})

M.NoncurrentVersionExpiration = schema.new({
   id = id.from(_N, "NoncurrentVersionExpiration"),
   type = "structure",
   members = {
      NoncurrentDays = schema.new({
         id = id.from(_N, "NoncurrentVersionExpiration", "NoncurrentDays"),
         type = "integer",
         name = "NoncurrentDays",
         target_id = prelude.Integer.id,
      }),
      NewerNoncurrentVersions = schema.new({
         id = id.from(_N, "NoncurrentVersionExpiration", "NewerNoncurrentVersions"),
         type = "integer",
         name = "NewerNoncurrentVersions",
         target_id = prelude.Integer.id,
      }),
   },
})

M.NoncurrentVersionTransition = schema.new({
   id = id.from(_N, "NoncurrentVersionTransition"),
   type = "structure",
   members = {
      NoncurrentDays = schema.new({
         id = id.from(_N, "NoncurrentVersionTransition", "NoncurrentDays"),
         type = "integer",
         name = "NoncurrentDays",
         target_id = prelude.Integer.id,
      }),
      StorageClass = schema.new({
         id = id.from(_N, "NoncurrentVersionTransition", "StorageClass"),
         type = "string",
         name = "StorageClass",
         target_id = prelude.String.id,
      }),
      NewerNoncurrentVersions = schema.new({
         id = id.from(_N, "NoncurrentVersionTransition", "NewerNoncurrentVersions"),
         type = "integer",
         name = "NewerNoncurrentVersions",
         target_id = prelude.Integer.id,
      }),
   },
})

M.Transition = schema.new({
   id = id.from(_N, "Transition"),
   type = "structure",
   members = {
      Date = schema.new({
         id = id.from(_N, "Transition", "Date"),
         type = "timestamp",
         name = "Date",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      Days = schema.new({
         id = id.from(_N, "Transition", "Days"),
         type = "integer",
         name = "Days",
         target_id = prelude.Integer.id,
      }),
      StorageClass = schema.new({
         id = id.from(_N, "Transition", "StorageClass"),
         type = "string",
         name = "StorageClass",
         target_id = prelude.String.id,
      }),
   },
})

M.LifecycleRule = schema.new({
   id = id.from(_N, "LifecycleRule"),
   type = "structure",
   members = {
      Expiration = schema.new({
         id = id.from(_N, "LifecycleRule", "Expiration"),
         type = "structure",
         name = "Expiration",
         target_id = id.from(_N, "LifecycleExpiration"),
         target = M.LifecycleExpiration,
      }),
      ID = schema.new({
         id = id.from(_N, "LifecycleRule", "ID"),
         type = "string",
         name = "ID",
         target_id = prelude.String.id,
      }),
      Prefix = schema.new({
         id = id.from(_N, "LifecycleRule", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
      Filter = schema.new({
         id = id.from(_N, "LifecycleRule", "Filter"),
         type = "structure",
         name = "Filter",
         target_id = id.from(_N, "LifecycleRuleFilter"),
         target = M.LifecycleRuleFilter,
      }),
      Status = schema.new({
         id = id.from(_N, "LifecycleRule", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Transitions = schema.new({
         id = id.from(_N, "LifecycleRule", "Transitions"),
         type = "list",
         name = "Transitions",
         target_id = prelude.Document.id,
         list_member = M.Transition,
         traits = {
            [traits.XML_NAME] = { name = "Transition" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      NoncurrentVersionTransitions = schema.new({
         id = id.from(_N, "LifecycleRule", "NoncurrentVersionTransitions"),
         type = "list",
         name = "NoncurrentVersionTransitions",
         target_id = prelude.Document.id,
         list_member = M.NoncurrentVersionTransition,
         traits = {
            [traits.XML_NAME] = { name = "NoncurrentVersionTransition" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      NoncurrentVersionExpiration = schema.new({
         id = id.from(_N, "LifecycleRule", "NoncurrentVersionExpiration"),
         type = "structure",
         name = "NoncurrentVersionExpiration",
         target_id = id.from(_N, "NoncurrentVersionExpiration"),
         target = M.NoncurrentVersionExpiration,
      }),
      AbortIncompleteMultipartUpload = schema.new({
         id = id.from(_N, "LifecycleRule", "AbortIncompleteMultipartUpload"),
         type = "structure",
         name = "AbortIncompleteMultipartUpload",
         target_id = id.from(_N, "AbortIncompleteMultipartUpload"),
         target = M.AbortIncompleteMultipartUpload,
      }),
   },
})

M.GetBucketLifecycleConfigurationOutput = schema.new({
   id = id.from(_N, "GetBucketLifecycleConfigurationOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "LifecycleConfiguration" },
   },
   members = {
      Rules = schema.new({
         id = id.from(_N, "GetBucketLifecycleConfigurationOutput", "Rules"),
         type = "list",
         name = "Rules",
         target_id = prelude.Document.id,
         list_member = M.LifecycleRule,
         traits = {
            [traits.XML_NAME] = { name = "Rule" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      TransitionDefaultMinimumObjectSize = schema.new({
         id = id.from(_N, "GetBucketLifecycleConfigurationOutput", "TransitionDefaultMinimumObjectSize"),
         type = "string",
         name = "TransitionDefaultMinimumObjectSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-transition-default-minimum-object-size" },
         },
      }),
   },
})

M.GetBucketLocationInput = schema.new({
   id = id.from(_N, "GetBucketLocationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetBucketLocationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetBucketLocationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.GetBucketLocationOutput = schema.new({
   id = id.from(_N, "GetBucketLocationOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "LocationConstraint" },
   },
   members = {
      LocationConstraint = schema.new({
         id = id.from(_N, "GetBucketLocationOutput", "LocationConstraint"),
         type = "string",
         name = "LocationConstraint",
         target_id = prelude.String.id,
      }),
   },
})

M.GetBucketLoggingInput = schema.new({
   id = id.from(_N, "GetBucketLoggingRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetBucketLoggingInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetBucketLoggingInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.TargetGrant = schema.new({
   id = id.from(_N, "TargetGrant"),
   type = "structure",
   members = {
      Grantee = schema.new({
         id = id.from(_N, "TargetGrant", "Grantee"),
         type = "structure",
         name = "Grantee",
         target_id = id.from(_N, "Grantee"),
         target = M.Grantee,
         traits = {
            [traits.XML_NAMESPACE] = { uri = "http://www.w3.org/2001/XMLSchema-instance", prefix = "xsi" },
         },
      }),
      Permission = schema.new({
         id = id.from(_N, "TargetGrant", "Permission"),
         type = "string",
         name = "Permission",
         target_id = prelude.String.id,
      }),
   },
})

M.PartitionedPrefix = schema.new({
   id = id.from(_N, "PartitionedPrefix"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "PartitionedPrefix" },
   },
   members = {
      PartitionDateSource = schema.new({
         id = id.from(_N, "PartitionedPrefix", "PartitionDateSource"),
         type = "string",
         name = "PartitionDateSource",
         target_id = prelude.String.id,
      }),
   },
})

M.SimplePrefix = schema.new({
   id = id.from(_N, "SimplePrefix"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "SimplePrefix" },
   },
})

M.TargetObjectKeyFormat = schema.new({
   id = id.from(_N, "TargetObjectKeyFormat"),
   type = "structure",
   members = {
      SimplePrefix = schema.new({
         id = id.from(_N, "TargetObjectKeyFormat", "SimplePrefix"),
         type = "structure",
         name = "SimplePrefix",
         target_id = id.from(_N, "SimplePrefix"),
         target = M.SimplePrefix,
         traits = {
            [traits.XML_NAME] = { name = "SimplePrefix" },
         },
      }),
      PartitionedPrefix = schema.new({
         id = id.from(_N, "TargetObjectKeyFormat", "PartitionedPrefix"),
         type = "structure",
         name = "PartitionedPrefix",
         target_id = id.from(_N, "PartitionedPrefix"),
         target = M.PartitionedPrefix,
         traits = {
            [traits.XML_NAME] = { name = "PartitionedPrefix" },
         },
      }),
   },
})

M.LoggingEnabled = schema.new({
   id = id.from(_N, "LoggingEnabled"),
   type = "structure",
   members = {
      TargetBucket = schema.new({
         id = id.from(_N, "LoggingEnabled", "TargetBucket"),
         type = "string",
         name = "TargetBucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TargetGrants = schema.new({
         id = id.from(_N, "LoggingEnabled", "TargetGrants"),
         type = "list",
         name = "TargetGrants",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.TargetGrant, traits = { [traits.XML_NAME] = { name = "Grant" } } }),
      }),
      TargetPrefix = schema.new({
         id = id.from(_N, "LoggingEnabled", "TargetPrefix"),
         type = "string",
         name = "TargetPrefix",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TargetObjectKeyFormat = schema.new({
         id = id.from(_N, "LoggingEnabled", "TargetObjectKeyFormat"),
         type = "structure",
         name = "TargetObjectKeyFormat",
         target_id = id.from(_N, "TargetObjectKeyFormat"),
         target = M.TargetObjectKeyFormat,
      }),
   },
})

M.GetBucketLoggingOutput = schema.new({
   id = id.from(_N, "GetBucketLoggingOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "BucketLoggingStatus" },
   },
   members = {
      LoggingEnabled = schema.new({
         id = id.from(_N, "GetBucketLoggingOutput", "LoggingEnabled"),
         type = "structure",
         name = "LoggingEnabled",
         target_id = id.from(_N, "LoggingEnabled"),
         target = M.LoggingEnabled,
      }),
   },
})

M.GetBucketMetadataConfigurationInput = schema.new({
   id = id.from(_N, "GetBucketMetadataConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetBucketMetadataConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetBucketMetadataConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.DestinationResult = schema.new({
   id = id.from(_N, "DestinationResult"),
   type = "structure",
   members = {
      TableBucketType = schema.new({
         id = id.from(_N, "DestinationResult", "TableBucketType"),
         type = "string",
         name = "TableBucketType",
         target_id = prelude.String.id,
      }),
      TableBucketArn = schema.new({
         id = id.from(_N, "DestinationResult", "TableBucketArn"),
         type = "string",
         name = "TableBucketArn",
         target_id = prelude.String.id,
      }),
      TableNamespace = schema.new({
         id = id.from(_N, "DestinationResult", "TableNamespace"),
         type = "string",
         name = "TableNamespace",
         target_id = prelude.String.id,
      }),
   },
})

M.ErrorDetails = schema.new({
   id = id.from(_N, "ErrorDetails"),
   type = "structure",
   members = {
      ErrorCode = schema.new({
         id = id.from(_N, "ErrorDetails", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
      }),
      ErrorMessage = schema.new({
         id = id.from(_N, "ErrorDetails", "ErrorMessage"),
         type = "string",
         name = "ErrorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.InventoryTableConfigurationResult = schema.new({
   id = id.from(_N, "InventoryTableConfigurationResult"),
   type = "structure",
   members = {
      ConfigurationState = schema.new({
         id = id.from(_N, "InventoryTableConfigurationResult", "ConfigurationState"),
         type = "string",
         name = "ConfigurationState",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TableStatus = schema.new({
         id = id.from(_N, "InventoryTableConfigurationResult", "TableStatus"),
         type = "string",
         name = "TableStatus",
         target_id = prelude.String.id,
      }),
      Error = schema.new({
         id = id.from(_N, "InventoryTableConfigurationResult", "Error"),
         type = "structure",
         name = "Error",
         target_id = id.from(_N, "ErrorDetails"),
         target = M.ErrorDetails,
      }),
      TableName = schema.new({
         id = id.from(_N, "InventoryTableConfigurationResult", "TableName"),
         type = "string",
         name = "TableName",
         target_id = prelude.String.id,
      }),
      TableArn = schema.new({
         id = id.from(_N, "InventoryTableConfigurationResult", "TableArn"),
         type = "string",
         name = "TableArn",
         target_id = prelude.String.id,
      }),
   },
})

M.JournalTableConfigurationResult = schema.new({
   id = id.from(_N, "JournalTableConfigurationResult"),
   type = "structure",
   members = {
      TableStatus = schema.new({
         id = id.from(_N, "JournalTableConfigurationResult", "TableStatus"),
         type = "string",
         name = "TableStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Error = schema.new({
         id = id.from(_N, "JournalTableConfigurationResult", "Error"),
         type = "structure",
         name = "Error",
         target_id = id.from(_N, "ErrorDetails"),
         target = M.ErrorDetails,
      }),
      TableName = schema.new({
         id = id.from(_N, "JournalTableConfigurationResult", "TableName"),
         type = "string",
         name = "TableName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TableArn = schema.new({
         id = id.from(_N, "JournalTableConfigurationResult", "TableArn"),
         type = "string",
         name = "TableArn",
         target_id = prelude.String.id,
      }),
      RecordExpiration = schema.new({
         id = id.from(_N, "JournalTableConfigurationResult", "RecordExpiration"),
         type = "structure",
         name = "RecordExpiration",
         target_id = id.from(_N, "RecordExpiration"),
         target = M.RecordExpiration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.MetadataConfigurationResult = schema.new({
   id = id.from(_N, "MetadataConfigurationResult"),
   type = "structure",
   members = {
      DestinationResult = schema.new({
         id = id.from(_N, "MetadataConfigurationResult", "DestinationResult"),
         type = "structure",
         name = "DestinationResult",
         target_id = id.from(_N, "DestinationResult"),
         target = M.DestinationResult,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JournalTableConfigurationResult = schema.new({
         id = id.from(_N, "MetadataConfigurationResult", "JournalTableConfigurationResult"),
         type = "structure",
         name = "JournalTableConfigurationResult",
         target_id = id.from(_N, "JournalTableConfigurationResult"),
         target = M.JournalTableConfigurationResult,
      }),
      InventoryTableConfigurationResult = schema.new({
         id = id.from(_N, "MetadataConfigurationResult", "InventoryTableConfigurationResult"),
         type = "structure",
         name = "InventoryTableConfigurationResult",
         target_id = id.from(_N, "InventoryTableConfigurationResult"),
         target = M.InventoryTableConfigurationResult,
      }),
   },
})

M.GetBucketMetadataConfigurationResult = schema.new({
   id = id.from(_N, "GetBucketMetadataConfigurationResult"),
   type = "structure",
   members = {
      MetadataConfigurationResult = schema.new({
         id = id.from(_N, "GetBucketMetadataConfigurationResult", "MetadataConfigurationResult"),
         type = "structure",
         name = "MetadataConfigurationResult",
         target_id = id.from(_N, "MetadataConfigurationResult"),
         target = M.MetadataConfigurationResult,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetBucketMetadataConfigurationOutput = schema.new({
   id = id.from(_N, "GetBucketMetadataConfigurationOutput"),
   type = "structure",
   members = {
      GetBucketMetadataConfigurationResult = schema.new({
         id = id.from(_N, "GetBucketMetadataConfigurationOutput", "GetBucketMetadataConfigurationResult"),
         type = "structure",
         name = "GetBucketMetadataConfigurationResult",
         target_id = id.from(_N, "GetBucketMetadataConfigurationResult"),
         target = M.GetBucketMetadataConfigurationResult,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetBucketMetadataTableConfigurationInput = schema.new({
   id = id.from(_N, "GetBucketMetadataTableConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetBucketMetadataTableConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetBucketMetadataTableConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.S3TablesDestinationResult = schema.new({
   id = id.from(_N, "S3TablesDestinationResult"),
   type = "structure",
   members = {
      TableBucketArn = schema.new({
         id = id.from(_N, "S3TablesDestinationResult", "TableBucketArn"),
         type = "string",
         name = "TableBucketArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TableName = schema.new({
         id = id.from(_N, "S3TablesDestinationResult", "TableName"),
         type = "string",
         name = "TableName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TableArn = schema.new({
         id = id.from(_N, "S3TablesDestinationResult", "TableArn"),
         type = "string",
         name = "TableArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TableNamespace = schema.new({
         id = id.from(_N, "S3TablesDestinationResult", "TableNamespace"),
         type = "string",
         name = "TableNamespace",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.MetadataTableConfigurationResult = schema.new({
   id = id.from(_N, "MetadataTableConfigurationResult"),
   type = "structure",
   members = {
      S3TablesDestinationResult = schema.new({
         id = id.from(_N, "MetadataTableConfigurationResult", "S3TablesDestinationResult"),
         type = "structure",
         name = "S3TablesDestinationResult",
         target_id = id.from(_N, "S3TablesDestinationResult"),
         target = M.S3TablesDestinationResult,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetBucketMetadataTableConfigurationResult = schema.new({
   id = id.from(_N, "GetBucketMetadataTableConfigurationResult"),
   type = "structure",
   members = {
      MetadataTableConfigurationResult = schema.new({
         id = id.from(_N, "GetBucketMetadataTableConfigurationResult", "MetadataTableConfigurationResult"),
         type = "structure",
         name = "MetadataTableConfigurationResult",
         target_id = id.from(_N, "MetadataTableConfigurationResult"),
         target = M.MetadataTableConfigurationResult,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "GetBucketMetadataTableConfigurationResult", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Error = schema.new({
         id = id.from(_N, "GetBucketMetadataTableConfigurationResult", "Error"),
         type = "structure",
         name = "Error",
         target_id = id.from(_N, "ErrorDetails"),
         target = M.ErrorDetails,
      }),
   },
})

M.GetBucketMetadataTableConfigurationOutput = schema.new({
   id = id.from(_N, "GetBucketMetadataTableConfigurationOutput"),
   type = "structure",
   members = {
      GetBucketMetadataTableConfigurationResult = schema.new({
         id = id.from(_N, "GetBucketMetadataTableConfigurationOutput", "GetBucketMetadataTableConfigurationResult"),
         type = "structure",
         name = "GetBucketMetadataTableConfigurationResult",
         target_id = id.from(_N, "GetBucketMetadataTableConfigurationResult"),
         target = M.GetBucketMetadataTableConfigurationResult,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetBucketMetricsConfigurationInput = schema.new({
   id = id.from(_N, "GetBucketMetricsConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetBucketMetricsConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "GetBucketMetricsConfigurationInput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "id" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetBucketMetricsConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.MetricsAndOperator = schema.new({
   id = id.from(_N, "MetricsAndOperator"),
   type = "structure",
   members = {
      Prefix = schema.new({
         id = id.from(_N, "MetricsAndOperator", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "MetricsAndOperator", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
         traits = {
            [traits.XML_NAME] = { name = "Tag" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      AccessPointArn = schema.new({
         id = id.from(_N, "MetricsAndOperator", "AccessPointArn"),
         type = "string",
         name = "AccessPointArn",
         target_id = prelude.String.id,
      }),
   },
})

M.MetricsFilter = schema.new({
   id = id.from(_N, "MetricsFilter"),
   type = "union",
   members = {
      Prefix = schema.new({
         id = id.from(_N, "MetricsFilter", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
      Tag = schema.new({
         id = id.from(_N, "MetricsFilter", "Tag"),
         type = "structure",
         name = "Tag",
         target_id = id.from(_N, "Tag"),
         target = M.Tag,
      }),
      AccessPointArn = schema.new({
         id = id.from(_N, "MetricsFilter", "AccessPointArn"),
         type = "string",
         name = "AccessPointArn",
         target_id = prelude.String.id,
      }),
      And = schema.new({
         id = id.from(_N, "MetricsFilter", "And"),
         type = "structure",
         name = "And",
         target_id = id.from(_N, "MetricsAndOperator"),
         target = M.MetricsAndOperator,
      }),
   },
})

M.MetricsConfiguration = schema.new({
   id = id.from(_N, "MetricsConfiguration"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "MetricsConfiguration", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Filter = schema.new({
         id = id.from(_N, "MetricsConfiguration", "Filter"),
         type = "union",
         name = "Filter",
         target_id = id.from(_N, "MetricsFilter"),
         target = M.MetricsFilter,
      }),
   },
})

M.GetBucketMetricsConfigurationOutput = schema.new({
   id = id.from(_N, "GetBucketMetricsConfigurationOutput"),
   type = "structure",
   members = {
      MetricsConfiguration = schema.new({
         id = id.from(_N, "GetBucketMetricsConfigurationOutput", "MetricsConfiguration"),
         type = "structure",
         name = "MetricsConfiguration",
         target_id = id.from(_N, "MetricsConfiguration"),
         target = M.MetricsConfiguration,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetBucketNotificationConfigurationInput = schema.new({
   id = id.from(_N, "GetBucketNotificationConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetBucketNotificationConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetBucketNotificationConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.EventBridgeConfiguration = schema.new({
   id = id.from(_N, "EventBridgeConfiguration"),
   type = "structure",
})

M.FilterRule = schema.new({
   id = id.from(_N, "FilterRule"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "FilterRule", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Value = schema.new({
         id = id.from(_N, "FilterRule", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
      }),
   },
})

M.S3KeyFilter = schema.new({
   id = id.from(_N, "S3KeyFilter"),
   type = "structure",
   members = {
      FilterRules = schema.new({
         id = id.from(_N, "S3KeyFilter", "FilterRules"),
         type = "list",
         name = "FilterRules",
         target_id = prelude.Document.id,
         list_member = M.FilterRule,
         traits = {
            [traits.XML_NAME] = { name = "FilterRule" },
            [traits.XML_FLATTENED] = {},
         },
      }),
   },
})

M.NotificationConfigurationFilter = schema.new({
   id = id.from(_N, "NotificationConfigurationFilter"),
   type = "structure",
   members = {
      Key = schema.new({
         id = id.from(_N, "NotificationConfigurationFilter", "Key"),
         type = "structure",
         name = "Key",
         target_id = id.from(_N, "S3KeyFilter"),
         target = M.S3KeyFilter,
         traits = {
            [traits.XML_NAME] = { name = "S3Key" },
         },
      }),
   },
})

M.LambdaFunctionConfiguration = schema.new({
   id = id.from(_N, "LambdaFunctionConfiguration"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "LambdaFunctionConfiguration", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      LambdaFunctionArn = schema.new({
         id = id.from(_N, "LambdaFunctionConfiguration", "LambdaFunctionArn"),
         type = "string",
         name = "LambdaFunctionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.XML_NAME] = { name = "CloudFunction" },
         },
      }),
      Events = schema.new({
         id = id.from(_N, "LambdaFunctionConfiguration", "Events"),
         type = "list",
         name = "Events",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
            [traits.XML_NAME] = { name = "Event" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      Filter = schema.new({
         id = id.from(_N, "LambdaFunctionConfiguration", "Filter"),
         type = "structure",
         name = "Filter",
         target_id = id.from(_N, "NotificationConfigurationFilter"),
         target = M.NotificationConfigurationFilter,
      }),
   },
})

M.QueueConfiguration = schema.new({
   id = id.from(_N, "QueueConfiguration"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "QueueConfiguration", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      QueueArn = schema.new({
         id = id.from(_N, "QueueConfiguration", "QueueArn"),
         type = "string",
         name = "QueueArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.XML_NAME] = { name = "Queue" },
         },
      }),
      Events = schema.new({
         id = id.from(_N, "QueueConfiguration", "Events"),
         type = "list",
         name = "Events",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
            [traits.XML_NAME] = { name = "Event" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      Filter = schema.new({
         id = id.from(_N, "QueueConfiguration", "Filter"),
         type = "structure",
         name = "Filter",
         target_id = id.from(_N, "NotificationConfigurationFilter"),
         target = M.NotificationConfigurationFilter,
      }),
   },
})

M.TopicConfiguration = schema.new({
   id = id.from(_N, "TopicConfiguration"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "TopicConfiguration", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      TopicArn = schema.new({
         id = id.from(_N, "TopicConfiguration", "TopicArn"),
         type = "string",
         name = "TopicArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.XML_NAME] = { name = "Topic" },
         },
      }),
      Events = schema.new({
         id = id.from(_N, "TopicConfiguration", "Events"),
         type = "list",
         name = "Events",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
            [traits.XML_NAME] = { name = "Event" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      Filter = schema.new({
         id = id.from(_N, "TopicConfiguration", "Filter"),
         type = "structure",
         name = "Filter",
         target_id = id.from(_N, "NotificationConfigurationFilter"),
         target = M.NotificationConfigurationFilter,
      }),
   },
})

M.GetBucketNotificationConfigurationOutput = schema.new({
   id = id.from(_N, "NotificationConfiguration"),
   type = "structure",
   members = {
      TopicConfigurations = schema.new({
         id = id.from(_N, "GetBucketNotificationConfigurationOutput", "TopicConfigurations"),
         type = "list",
         name = "TopicConfigurations",
         target_id = prelude.Document.id,
         list_member = M.TopicConfiguration,
         traits = {
            [traits.XML_NAME] = { name = "TopicConfiguration" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      QueueConfigurations = schema.new({
         id = id.from(_N, "GetBucketNotificationConfigurationOutput", "QueueConfigurations"),
         type = "list",
         name = "QueueConfigurations",
         target_id = prelude.Document.id,
         list_member = M.QueueConfiguration,
         traits = {
            [traits.XML_NAME] = { name = "QueueConfiguration" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      LambdaFunctionConfigurations = schema.new({
         id = id.from(_N, "GetBucketNotificationConfigurationOutput", "LambdaFunctionConfigurations"),
         type = "list",
         name = "LambdaFunctionConfigurations",
         target_id = prelude.Document.id,
         list_member = M.LambdaFunctionConfiguration,
         traits = {
            [traits.XML_NAME] = { name = "CloudFunctionConfiguration" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      EventBridgeConfiguration = schema.new({
         id = id.from(_N, "GetBucketNotificationConfigurationOutput", "EventBridgeConfiguration"),
         type = "structure",
         name = "EventBridgeConfiguration",
         target_id = id.from(_N, "EventBridgeConfiguration"),
         target = M.EventBridgeConfiguration,
      }),
   },
})

M.GetBucketOwnershipControlsInput = schema.new({
   id = id.from(_N, "GetBucketOwnershipControlsRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetBucketOwnershipControlsInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetBucketOwnershipControlsInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.OwnershipControlsRule = schema.new({
   id = id.from(_N, "OwnershipControlsRule"),
   type = "structure",
   members = {
      ObjectOwnership = schema.new({
         id = id.from(_N, "OwnershipControlsRule", "ObjectOwnership"),
         type = "string",
         name = "ObjectOwnership",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.OwnershipControls = schema.new({
   id = id.from(_N, "OwnershipControls"),
   type = "structure",
   members = {
      Rules = schema.new({
         id = id.from(_N, "OwnershipControls", "Rules"),
         type = "list",
         name = "Rules",
         target_id = prelude.Document.id,
         list_member = M.OwnershipControlsRule,
         traits = {
            [traits.REQUIRED] = {},
            [traits.XML_NAME] = { name = "Rule" },
            [traits.XML_FLATTENED] = {},
         },
      }),
   },
})

M.GetBucketOwnershipControlsOutput = schema.new({
   id = id.from(_N, "GetBucketOwnershipControlsOutput"),
   type = "structure",
   members = {
      OwnershipControls = schema.new({
         id = id.from(_N, "GetBucketOwnershipControlsOutput", "OwnershipControls"),
         type = "structure",
         name = "OwnershipControls",
         target_id = id.from(_N, "OwnershipControls"),
         target = M.OwnershipControls,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetBucketPolicyInput = schema.new({
   id = id.from(_N, "GetBucketPolicyRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetBucketPolicyInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetBucketPolicyInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.GetBucketPolicyOutput = schema.new({
   id = id.from(_N, "GetBucketPolicyOutput"),
   type = "structure",
   members = {
      Policy = schema.new({
         id = id.from(_N, "GetBucketPolicyOutput", "Policy"),
         type = "string",
         name = "Policy",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetBucketPolicyStatusInput = schema.new({
   id = id.from(_N, "GetBucketPolicyStatusRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetBucketPolicyStatusInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetBucketPolicyStatusInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.PolicyStatus = schema.new({
   id = id.from(_N, "PolicyStatus"),
   type = "structure",
   members = {
      IsPublic = schema.new({
         id = id.from(_N, "PolicyStatus", "IsPublic"),
         type = "boolean",
         name = "IsPublic",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.XML_NAME] = { name = "IsPublic" },
         },
      }),
   },
})

M.GetBucketPolicyStatusOutput = schema.new({
   id = id.from(_N, "GetBucketPolicyStatusOutput"),
   type = "structure",
   members = {
      PolicyStatus = schema.new({
         id = id.from(_N, "GetBucketPolicyStatusOutput", "PolicyStatus"),
         type = "structure",
         name = "PolicyStatus",
         target_id = id.from(_N, "PolicyStatus"),
         target = M.PolicyStatus,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetBucketReplicationInput = schema.new({
   id = id.from(_N, "GetBucketReplicationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetBucketReplicationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetBucketReplicationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.DeleteMarkerReplication = schema.new({
   id = id.from(_N, "DeleteMarkerReplication"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "DeleteMarkerReplication", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.EncryptionConfiguration = schema.new({
   id = id.from(_N, "EncryptionConfiguration"),
   type = "structure",
   members = {
      ReplicaKmsKeyID = schema.new({
         id = id.from(_N, "EncryptionConfiguration", "ReplicaKmsKeyID"),
         type = "string",
         name = "ReplicaKmsKeyID",
         target_id = prelude.String.id,
      }),
   },
})

M.ReplicationTimeValue = schema.new({
   id = id.from(_N, "ReplicationTimeValue"),
   type = "structure",
   members = {
      Minutes = schema.new({
         id = id.from(_N, "ReplicationTimeValue", "Minutes"),
         type = "integer",
         name = "Minutes",
         target_id = prelude.Integer.id,
      }),
   },
})

M.Metrics = schema.new({
   id = id.from(_N, "Metrics"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "Metrics", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EventThreshold = schema.new({
         id = id.from(_N, "Metrics", "EventThreshold"),
         type = "structure",
         name = "EventThreshold",
         target_id = id.from(_N, "ReplicationTimeValue"),
         target = M.ReplicationTimeValue,
      }),
   },
})

M.ReplicationTime = schema.new({
   id = id.from(_N, "ReplicationTime"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "ReplicationTime", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Time = schema.new({
         id = id.from(_N, "ReplicationTime", "Time"),
         type = "structure",
         name = "Time",
         target_id = id.from(_N, "ReplicationTimeValue"),
         target = M.ReplicationTimeValue,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Destination = schema.new({
   id = id.from(_N, "Destination"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "Destination", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Account = schema.new({
         id = id.from(_N, "Destination", "Account"),
         type = "string",
         name = "Account",
         target_id = prelude.String.id,
      }),
      StorageClass = schema.new({
         id = id.from(_N, "Destination", "StorageClass"),
         type = "string",
         name = "StorageClass",
         target_id = prelude.String.id,
      }),
      AccessControlTranslation = schema.new({
         id = id.from(_N, "Destination", "AccessControlTranslation"),
         type = "structure",
         name = "AccessControlTranslation",
         target_id = id.from(_N, "AccessControlTranslation"),
         target = M.AccessControlTranslation,
      }),
      EncryptionConfiguration = schema.new({
         id = id.from(_N, "Destination", "EncryptionConfiguration"),
         type = "structure",
         name = "EncryptionConfiguration",
         target_id = id.from(_N, "EncryptionConfiguration"),
         target = M.EncryptionConfiguration,
      }),
      ReplicationTime = schema.new({
         id = id.from(_N, "Destination", "ReplicationTime"),
         type = "structure",
         name = "ReplicationTime",
         target_id = id.from(_N, "ReplicationTime"),
         target = M.ReplicationTime,
      }),
      Metrics = schema.new({
         id = id.from(_N, "Destination", "Metrics"),
         type = "structure",
         name = "Metrics",
         target_id = id.from(_N, "Metrics"),
         target = M.Metrics,
      }),
   },
})

M.ExistingObjectReplication = schema.new({
   id = id.from(_N, "ExistingObjectReplication"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "ExistingObjectReplication", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ReplicationRuleAndOperator = schema.new({
   id = id.from(_N, "ReplicationRuleAndOperator"),
   type = "structure",
   members = {
      Prefix = schema.new({
         id = id.from(_N, "ReplicationRuleAndOperator", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "ReplicationRuleAndOperator", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
         traits = {
            [traits.XML_NAME] = { name = "Tag" },
            [traits.XML_FLATTENED] = {},
         },
      }),
   },
})

M.ReplicationRuleFilter = schema.new({
   id = id.from(_N, "ReplicationRuleFilter"),
   type = "structure",
   members = {
      Prefix = schema.new({
         id = id.from(_N, "ReplicationRuleFilter", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
      Tag = schema.new({
         id = id.from(_N, "ReplicationRuleFilter", "Tag"),
         type = "structure",
         name = "Tag",
         target_id = id.from(_N, "Tag"),
         target = M.Tag,
      }),
      And = schema.new({
         id = id.from(_N, "ReplicationRuleFilter", "And"),
         type = "structure",
         name = "And",
         target_id = id.from(_N, "ReplicationRuleAndOperator"),
         target = M.ReplicationRuleAndOperator,
      }),
   },
})

M.ReplicaModifications = schema.new({
   id = id.from(_N, "ReplicaModifications"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "ReplicaModifications", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SseKmsEncryptedObjects = schema.new({
   id = id.from(_N, "SseKmsEncryptedObjects"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "SseKmsEncryptedObjects", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SourceSelectionCriteria = schema.new({
   id = id.from(_N, "SourceSelectionCriteria"),
   type = "structure",
   members = {
      SseKmsEncryptedObjects = schema.new({
         id = id.from(_N, "SourceSelectionCriteria", "SseKmsEncryptedObjects"),
         type = "structure",
         name = "SseKmsEncryptedObjects",
         target_id = id.from(_N, "SseKmsEncryptedObjects"),
         target = M.SseKmsEncryptedObjects,
      }),
      ReplicaModifications = schema.new({
         id = id.from(_N, "SourceSelectionCriteria", "ReplicaModifications"),
         type = "structure",
         name = "ReplicaModifications",
         target_id = id.from(_N, "ReplicaModifications"),
         target = M.ReplicaModifications,
      }),
   },
})

M.ReplicationRule = schema.new({
   id = id.from(_N, "ReplicationRule"),
   type = "structure",
   members = {
      ID = schema.new({
         id = id.from(_N, "ReplicationRule", "ID"),
         type = "string",
         name = "ID",
         target_id = prelude.String.id,
      }),
      Priority = schema.new({
         id = id.from(_N, "ReplicationRule", "Priority"),
         type = "integer",
         name = "Priority",
         target_id = prelude.Integer.id,
      }),
      Prefix = schema.new({
         id = id.from(_N, "ReplicationRule", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
      Filter = schema.new({
         id = id.from(_N, "ReplicationRule", "Filter"),
         type = "structure",
         name = "Filter",
         target_id = id.from(_N, "ReplicationRuleFilter"),
         target = M.ReplicationRuleFilter,
      }),
      Status = schema.new({
         id = id.from(_N, "ReplicationRule", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SourceSelectionCriteria = schema.new({
         id = id.from(_N, "ReplicationRule", "SourceSelectionCriteria"),
         type = "structure",
         name = "SourceSelectionCriteria",
         target_id = id.from(_N, "SourceSelectionCriteria"),
         target = M.SourceSelectionCriteria,
      }),
      ExistingObjectReplication = schema.new({
         id = id.from(_N, "ReplicationRule", "ExistingObjectReplication"),
         type = "structure",
         name = "ExistingObjectReplication",
         target_id = id.from(_N, "ExistingObjectReplication"),
         target = M.ExistingObjectReplication,
      }),
      Destination = schema.new({
         id = id.from(_N, "ReplicationRule", "Destination"),
         type = "structure",
         name = "Destination",
         target_id = id.from(_N, "Destination"),
         target = M.Destination,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DeleteMarkerReplication = schema.new({
         id = id.from(_N, "ReplicationRule", "DeleteMarkerReplication"),
         type = "structure",
         name = "DeleteMarkerReplication",
         target_id = id.from(_N, "DeleteMarkerReplication"),
         target = M.DeleteMarkerReplication,
      }),
   },
})

M.ReplicationConfiguration = schema.new({
   id = id.from(_N, "ReplicationConfiguration"),
   type = "structure",
   members = {
      Role = schema.new({
         id = id.from(_N, "ReplicationConfiguration", "Role"),
         type = "string",
         name = "Role",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Rules = schema.new({
         id = id.from(_N, "ReplicationConfiguration", "Rules"),
         type = "list",
         name = "Rules",
         target_id = prelude.Document.id,
         list_member = M.ReplicationRule,
         traits = {
            [traits.REQUIRED] = {},
            [traits.XML_NAME] = { name = "Rule" },
            [traits.XML_FLATTENED] = {},
         },
      }),
   },
})

M.GetBucketReplicationOutput = schema.new({
   id = id.from(_N, "GetBucketReplicationOutput"),
   type = "structure",
   members = {
      ReplicationConfiguration = schema.new({
         id = id.from(_N, "GetBucketReplicationOutput", "ReplicationConfiguration"),
         type = "structure",
         name = "ReplicationConfiguration",
         target_id = id.from(_N, "ReplicationConfiguration"),
         target = M.ReplicationConfiguration,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetBucketRequestPaymentInput = schema.new({
   id = id.from(_N, "GetBucketRequestPaymentRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetBucketRequestPaymentInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetBucketRequestPaymentInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.GetBucketRequestPaymentOutput = schema.new({
   id = id.from(_N, "GetBucketRequestPaymentOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "RequestPaymentConfiguration" },
   },
   members = {
      Payer = schema.new({
         id = id.from(_N, "GetBucketRequestPaymentOutput", "Payer"),
         type = "string",
         name = "Payer",
         target_id = prelude.String.id,
      }),
   },
})

M.GetBucketTaggingInput = schema.new({
   id = id.from(_N, "GetBucketTaggingRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetBucketTaggingInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetBucketTaggingInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.GetBucketTaggingOutput = schema.new({
   id = id.from(_N, "GetBucketTaggingOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "Tagging" },
   },
   members = {
      TagSet = schema.new({
         id = id.from(_N, "GetBucketTaggingOutput", "TagSet"),
         type = "list",
         name = "TagSet",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetBucketVersioningInput = schema.new({
   id = id.from(_N, "GetBucketVersioningRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetBucketVersioningInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetBucketVersioningInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.GetBucketVersioningOutput = schema.new({
   id = id.from(_N, "GetBucketVersioningOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "VersioningConfiguration" },
   },
   members = {
      Status = schema.new({
         id = id.from(_N, "GetBucketVersioningOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      MFADelete = schema.new({
         id = id.from(_N, "GetBucketVersioningOutput", "MFADelete"),
         type = "string",
         name = "MFADelete",
         target_id = prelude.String.id,
         traits = {
            [traits.XML_NAME] = { name = "MfaDelete" },
         },
      }),
   },
})

M.GetBucketWebsiteInput = schema.new({
   id = id.from(_N, "GetBucketWebsiteRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetBucketWebsiteInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetBucketWebsiteInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.ErrorDocument = schema.new({
   id = id.from(_N, "ErrorDocument"),
   type = "structure",
   members = {
      Key = schema.new({
         id = id.from(_N, "ErrorDocument", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IndexDocument = schema.new({
   id = id.from(_N, "IndexDocument"),
   type = "structure",
   members = {
      Suffix = schema.new({
         id = id.from(_N, "IndexDocument", "Suffix"),
         type = "string",
         name = "Suffix",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RedirectAllRequestsTo = schema.new({
   id = id.from(_N, "RedirectAllRequestsTo"),
   type = "structure",
   members = {
      HostName = schema.new({
         id = id.from(_N, "RedirectAllRequestsTo", "HostName"),
         type = "string",
         name = "HostName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Protocol = schema.new({
         id = id.from(_N, "RedirectAllRequestsTo", "Protocol"),
         type = "string",
         name = "Protocol",
         target_id = prelude.String.id,
      }),
   },
})

M.Condition = schema.new({
   id = id.from(_N, "Condition"),
   type = "structure",
   members = {
      HttpErrorCodeReturnedEquals = schema.new({
         id = id.from(_N, "Condition", "HttpErrorCodeReturnedEquals"),
         type = "string",
         name = "HttpErrorCodeReturnedEquals",
         target_id = prelude.String.id,
      }),
      KeyPrefixEquals = schema.new({
         id = id.from(_N, "Condition", "KeyPrefixEquals"),
         type = "string",
         name = "KeyPrefixEquals",
         target_id = prelude.String.id,
      }),
   },
})

M.Redirect = schema.new({
   id = id.from(_N, "Redirect"),
   type = "structure",
   members = {
      HostName = schema.new({
         id = id.from(_N, "Redirect", "HostName"),
         type = "string",
         name = "HostName",
         target_id = prelude.String.id,
      }),
      HttpRedirectCode = schema.new({
         id = id.from(_N, "Redirect", "HttpRedirectCode"),
         type = "string",
         name = "HttpRedirectCode",
         target_id = prelude.String.id,
      }),
      Protocol = schema.new({
         id = id.from(_N, "Redirect", "Protocol"),
         type = "string",
         name = "Protocol",
         target_id = prelude.String.id,
      }),
      ReplaceKeyPrefixWith = schema.new({
         id = id.from(_N, "Redirect", "ReplaceKeyPrefixWith"),
         type = "string",
         name = "ReplaceKeyPrefixWith",
         target_id = prelude.String.id,
      }),
      ReplaceKeyWith = schema.new({
         id = id.from(_N, "Redirect", "ReplaceKeyWith"),
         type = "string",
         name = "ReplaceKeyWith",
         target_id = prelude.String.id,
      }),
   },
})

M.RoutingRule = schema.new({
   id = id.from(_N, "RoutingRule"),
   type = "structure",
   members = {
      Condition = schema.new({
         id = id.from(_N, "RoutingRule", "Condition"),
         type = "structure",
         name = "Condition",
         target_id = id.from(_N, "Condition"),
         target = M.Condition,
      }),
      Redirect = schema.new({
         id = id.from(_N, "RoutingRule", "Redirect"),
         type = "structure",
         name = "Redirect",
         target_id = id.from(_N, "Redirect"),
         target = M.Redirect,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetBucketWebsiteOutput = schema.new({
   id = id.from(_N, "GetBucketWebsiteOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "WebsiteConfiguration" },
   },
   members = {
      RedirectAllRequestsTo = schema.new({
         id = id.from(_N, "GetBucketWebsiteOutput", "RedirectAllRequestsTo"),
         type = "structure",
         name = "RedirectAllRequestsTo",
         target_id = id.from(_N, "RedirectAllRequestsTo"),
         target = M.RedirectAllRequestsTo,
      }),
      IndexDocument = schema.new({
         id = id.from(_N, "GetBucketWebsiteOutput", "IndexDocument"),
         type = "structure",
         name = "IndexDocument",
         target_id = id.from(_N, "IndexDocument"),
         target = M.IndexDocument,
      }),
      ErrorDocument = schema.new({
         id = id.from(_N, "GetBucketWebsiteOutput", "ErrorDocument"),
         type = "structure",
         name = "ErrorDocument",
         target_id = id.from(_N, "ErrorDocument"),
         target = M.ErrorDocument,
      }),
      RoutingRules = schema.new({
         id = id.from(_N, "GetBucketWebsiteOutput", "RoutingRules"),
         type = "list",
         name = "RoutingRules",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.RoutingRule, traits = { [traits.XML_NAME] = { name = "RoutingRule" } } }),
      }),
   },
})

M.GetObjectInput = schema.new({
   id = id.from(_N, "GetObjectRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetObjectInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      IfMatch = schema.new({
         id = id.from(_N, "GetObjectInput", "IfMatch"),
         type = "string",
         name = "IfMatch",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "If-Match" },
         },
      }),
      IfModifiedSince = schema.new({
         id = id.from(_N, "GetObjectInput", "IfModifiedSince"),
         type = "timestamp",
         name = "IfModifiedSince",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "If-Modified-Since" },
         },
      }),
      IfNoneMatch = schema.new({
         id = id.from(_N, "GetObjectInput", "IfNoneMatch"),
         type = "string",
         name = "IfNoneMatch",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "If-None-Match" },
         },
      }),
      IfUnmodifiedSince = schema.new({
         id = id.from(_N, "GetObjectInput", "IfUnmodifiedSince"),
         type = "timestamp",
         name = "IfUnmodifiedSince",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "If-Unmodified-Since" },
         },
      }),
      Key = schema.new({
         id = id.from(_N, "GetObjectInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Range = schema.new({
         id = id.from(_N, "GetObjectInput", "Range"),
         type = "string",
         name = "Range",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Range" },
         },
      }),
      ResponseCacheControl = schema.new({
         id = id.from(_N, "GetObjectInput", "ResponseCacheControl"),
         type = "string",
         name = "ResponseCacheControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "response-cache-control" },
         },
      }),
      ResponseContentDisposition = schema.new({
         id = id.from(_N, "GetObjectInput", "ResponseContentDisposition"),
         type = "string",
         name = "ResponseContentDisposition",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "response-content-disposition" },
         },
      }),
      ResponseContentEncoding = schema.new({
         id = id.from(_N, "GetObjectInput", "ResponseContentEncoding"),
         type = "string",
         name = "ResponseContentEncoding",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "response-content-encoding" },
         },
      }),
      ResponseContentLanguage = schema.new({
         id = id.from(_N, "GetObjectInput", "ResponseContentLanguage"),
         type = "string",
         name = "ResponseContentLanguage",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "response-content-language" },
         },
      }),
      ResponseContentType = schema.new({
         id = id.from(_N, "GetObjectInput", "ResponseContentType"),
         type = "string",
         name = "ResponseContentType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "response-content-type" },
         },
      }),
      ResponseExpires = schema.new({
         id = id.from(_N, "GetObjectInput", "ResponseExpires"),
         type = "timestamp",
         name = "ResponseExpires",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "response-expires" },
            [traits.TIMESTAMP_FORMAT] = { format = "http-date" },
         },
         direct_traits = {
            [traits.HTTP_QUERY] = { name = "response-expires" },
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "GetObjectInput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "versionId" },
         },
      }),
      SSECustomerAlgorithm = schema.new({
         id = id.from(_N, "GetObjectInput", "SSECustomerAlgorithm"),
         type = "string",
         name = "SSECustomerAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-algorithm" },
         },
      }),
      SSECustomerKey = schema.new({
         id = id.from(_N, "GetObjectInput", "SSECustomerKey"),
         type = "string",
         name = "SSECustomerKey",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key" },
         },
      }),
      SSECustomerKeyMD5 = schema.new({
         id = id.from(_N, "GetObjectInput", "SSECustomerKeyMD5"),
         type = "string",
         name = "SSECustomerKeyMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key-MD5" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "GetObjectInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      PartNumber = schema.new({
         id = id.from(_N, "GetObjectInput", "PartNumber"),
         type = "integer",
         name = "PartNumber",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "partNumber" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetObjectInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      ChecksumMode = schema.new({
         id = id.from(_N, "GetObjectInput", "ChecksumMode"),
         type = "string",
         name = "ChecksumMode",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-mode" },
         },
      }),
   },
})

M.GetObjectOutput = schema.new({
   id = id.from(_N, "GetObjectOutput"),
   type = "structure",
   members = {
      Body = schema.new({
         id = id.from(_N, "GetObjectOutput", "Body"),
         type = "blob",
         name = "Body",
         target_id = prelude.Blob.id,
         traits = {
            [traits.DEFAULT] = { value = "" },
            [traits.HTTP_PAYLOAD] = {},
            [traits.STREAMING] = {},
         },
         direct_traits = {
            [traits.DEFAULT] = { value = "" },
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      DeleteMarker = schema.new({
         id = id.from(_N, "GetObjectOutput", "DeleteMarker"),
         type = "boolean",
         name = "DeleteMarker",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-delete-marker" },
         },
      }),
      AcceptRanges = schema.new({
         id = id.from(_N, "GetObjectOutput", "AcceptRanges"),
         type = "string",
         name = "AcceptRanges",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "accept-ranges" },
         },
      }),
      Expiration = schema.new({
         id = id.from(_N, "GetObjectOutput", "Expiration"),
         type = "string",
         name = "Expiration",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expiration" },
         },
      }),
      Restore = schema.new({
         id = id.from(_N, "GetObjectOutput", "Restore"),
         type = "string",
         name = "Restore",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-restore" },
         },
      }),
      LastModified = schema.new({
         id = id.from(_N, "GetObjectOutput", "LastModified"),
         type = "timestamp",
         name = "LastModified",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Last-Modified" },
         },
      }),
      ContentLength = schema.new({
         id = id.from(_N, "GetObjectOutput", "ContentLength"),
         type = "long",
         name = "ContentLength",
         target_id = prelude.Long.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Length" },
         },
      }),
      ETag = schema.new({
         id = id.from(_N, "GetObjectOutput", "ETag"),
         type = "string",
         name = "ETag",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "ETag" },
         },
      }),
      ChecksumCRC32 = schema.new({
         id = id.from(_N, "GetObjectOutput", "ChecksumCRC32"),
         type = "string",
         name = "ChecksumCRC32",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-crc32" },
         },
      }),
      ChecksumCRC32C = schema.new({
         id = id.from(_N, "GetObjectOutput", "ChecksumCRC32C"),
         type = "string",
         name = "ChecksumCRC32C",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-crc32c" },
         },
      }),
      ChecksumCRC64NVME = schema.new({
         id = id.from(_N, "GetObjectOutput", "ChecksumCRC64NVME"),
         type = "string",
         name = "ChecksumCRC64NVME",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-crc64nvme" },
         },
      }),
      ChecksumSHA1 = schema.new({
         id = id.from(_N, "GetObjectOutput", "ChecksumSHA1"),
         type = "string",
         name = "ChecksumSHA1",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-sha1" },
         },
      }),
      ChecksumSHA256 = schema.new({
         id = id.from(_N, "GetObjectOutput", "ChecksumSHA256"),
         type = "string",
         name = "ChecksumSHA256",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-sha256" },
         },
      }),
      ChecksumSHA512 = schema.new({
         id = id.from(_N, "GetObjectOutput", "ChecksumSHA512"),
         type = "string",
         name = "ChecksumSHA512",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-sha512" },
         },
      }),
      ChecksumMD5 = schema.new({
         id = id.from(_N, "GetObjectOutput", "ChecksumMD5"),
         type = "string",
         name = "ChecksumMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-md5" },
         },
      }),
      ChecksumXXHASH64 = schema.new({
         id = id.from(_N, "GetObjectOutput", "ChecksumXXHASH64"),
         type = "string",
         name = "ChecksumXXHASH64",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-xxhash64" },
         },
      }),
      ChecksumXXHASH3 = schema.new({
         id = id.from(_N, "GetObjectOutput", "ChecksumXXHASH3"),
         type = "string",
         name = "ChecksumXXHASH3",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-xxhash3" },
         },
      }),
      ChecksumXXHASH128 = schema.new({
         id = id.from(_N, "GetObjectOutput", "ChecksumXXHASH128"),
         type = "string",
         name = "ChecksumXXHASH128",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-xxhash128" },
         },
      }),
      ChecksumType = schema.new({
         id = id.from(_N, "GetObjectOutput", "ChecksumType"),
         type = "string",
         name = "ChecksumType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-type" },
         },
      }),
      MissingMeta = schema.new({
         id = id.from(_N, "GetObjectOutput", "MissingMeta"),
         type = "integer",
         name = "MissingMeta",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-missing-meta" },
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "GetObjectOutput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-version-id" },
         },
      }),
      CacheControl = schema.new({
         id = id.from(_N, "GetObjectOutput", "CacheControl"),
         type = "string",
         name = "CacheControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Cache-Control" },
         },
      }),
      ContentDisposition = schema.new({
         id = id.from(_N, "GetObjectOutput", "ContentDisposition"),
         type = "string",
         name = "ContentDisposition",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Disposition" },
         },
      }),
      ContentEncoding = schema.new({
         id = id.from(_N, "GetObjectOutput", "ContentEncoding"),
         type = "string",
         name = "ContentEncoding",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Encoding" },
         },
      }),
      ContentLanguage = schema.new({
         id = id.from(_N, "GetObjectOutput", "ContentLanguage"),
         type = "string",
         name = "ContentLanguage",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Language" },
         },
      }),
      ContentRange = schema.new({
         id = id.from(_N, "GetObjectOutput", "ContentRange"),
         type = "string",
         name = "ContentRange",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Range" },
         },
      }),
      ContentType = schema.new({
         id = id.from(_N, "GetObjectOutput", "ContentType"),
         type = "string",
         name = "ContentType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Type" },
         },
      }),
      Expires = schema.new({
         id = id.from(_N, "GetObjectOutput", "Expires"),
         type = "string",
         name = "Expires",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Expires" },
         },
      }),
      WebsiteRedirectLocation = schema.new({
         id = id.from(_N, "GetObjectOutput", "WebsiteRedirectLocation"),
         type = "string",
         name = "WebsiteRedirectLocation",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-website-redirect-location" },
         },
      }),
      ServerSideEncryption = schema.new({
         id = id.from(_N, "GetObjectOutput", "ServerSideEncryption"),
         type = "string",
         name = "ServerSideEncryption",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption" },
         },
      }),
      Metadata = schema.new({
         id = id.from(_N, "GetObjectOutput", "Metadata"),
         type = "map",
         name = "Metadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.HTTP_PREFIX_HEADERS] = { prefix = "x-amz-meta-" },
         },
      }),
      SSECustomerAlgorithm = schema.new({
         id = id.from(_N, "GetObjectOutput", "SSECustomerAlgorithm"),
         type = "string",
         name = "SSECustomerAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-algorithm" },
         },
      }),
      SSECustomerKeyMD5 = schema.new({
         id = id.from(_N, "GetObjectOutput", "SSECustomerKeyMD5"),
         type = "string",
         name = "SSECustomerKeyMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key-MD5" },
         },
      }),
      SSEKMSKeyId = schema.new({
         id = id.from(_N, "GetObjectOutput", "SSEKMSKeyId"),
         type = "string",
         name = "SSEKMSKeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-aws-kms-key-id" },
         },
      }),
      BucketKeyEnabled = schema.new({
         id = id.from(_N, "GetObjectOutput", "BucketKeyEnabled"),
         type = "boolean",
         name = "BucketKeyEnabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-bucket-key-enabled" },
         },
      }),
      StorageClass = schema.new({
         id = id.from(_N, "GetObjectOutput", "StorageClass"),
         type = "string",
         name = "StorageClass",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-storage-class" },
         },
      }),
      RequestCharged = schema.new({
         id = id.from(_N, "GetObjectOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
      ReplicationStatus = schema.new({
         id = id.from(_N, "GetObjectOutput", "ReplicationStatus"),
         type = "string",
         name = "ReplicationStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-replication-status" },
         },
      }),
      PartsCount = schema.new({
         id = id.from(_N, "GetObjectOutput", "PartsCount"),
         type = "integer",
         name = "PartsCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-mp-parts-count" },
         },
      }),
      TagCount = schema.new({
         id = id.from(_N, "GetObjectOutput", "TagCount"),
         type = "integer",
         name = "TagCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-tagging-count" },
         },
      }),
      ObjectLockMode = schema.new({
         id = id.from(_N, "GetObjectOutput", "ObjectLockMode"),
         type = "string",
         name = "ObjectLockMode",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-object-lock-mode" },
         },
      }),
      ObjectLockRetainUntilDate = schema.new({
         id = id.from(_N, "GetObjectOutput", "ObjectLockRetainUntilDate"),
         type = "timestamp",
         name = "ObjectLockRetainUntilDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-object-lock-retain-until-date" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-object-lock-retain-until-date" },
         },
      }),
      ObjectLockLegalHoldStatus = schema.new({
         id = id.from(_N, "GetObjectOutput", "ObjectLockLegalHoldStatus"),
         type = "string",
         name = "ObjectLockLegalHoldStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-object-lock-legal-hold" },
         },
      }),
   },
})

M.InvalidObjectState = schema.new({
   id = id.from(_N, "InvalidObjectState"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      StorageClass = schema.new({
         id = id.from(_N, "InvalidObjectState", "StorageClass"),
         type = "string",
         name = "StorageClass",
         target_id = prelude.String.id,
      }),
      AccessTier = schema.new({
         id = id.from(_N, "InvalidObjectState", "AccessTier"),
         type = "string",
         name = "AccessTier",
         target_id = prelude.String.id,
      }),
   },
})

M.NoSuchKey = schema.new({
   id = id.from(_N, "NoSuchKey"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
})

M.GetObjectAclInput = schema.new({
   id = id.from(_N, "GetObjectAclRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetObjectAclInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Key = schema.new({
         id = id.from(_N, "GetObjectAclInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "GetObjectAclInput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "versionId" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "GetObjectAclInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetObjectAclInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.GetObjectAclOutput = schema.new({
   id = id.from(_N, "GetObjectAclOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "AccessControlPolicy" },
   },
   members = {
      Owner = schema.new({
         id = id.from(_N, "GetObjectAclOutput", "Owner"),
         type = "structure",
         name = "Owner",
         target_id = id.from(_N, "Owner"),
         target = M.Owner,
      }),
      Grants = schema.new({
         id = id.from(_N, "GetObjectAclOutput", "Grants"),
         type = "list",
         name = "Grants",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.Grant, traits = { [traits.XML_NAME] = { name = "Grant" } } }),
         traits = {
            [traits.XML_NAME] = { name = "AccessControlList" },
         },
      }),
      RequestCharged = schema.new({
         id = id.from(_N, "GetObjectAclOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
   },
})

M.GetObjectAttributesInput = schema.new({
   id = id.from(_N, "GetObjectAttributesRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetObjectAttributesInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Key = schema.new({
         id = id.from(_N, "GetObjectAttributesInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "GetObjectAttributesInput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "versionId" },
         },
      }),
      MaxParts = schema.new({
         id = id.from(_N, "GetObjectAttributesInput", "MaxParts"),
         type = "integer",
         name = "MaxParts",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-max-parts" },
         },
      }),
      PartNumberMarker = schema.new({
         id = id.from(_N, "GetObjectAttributesInput", "PartNumberMarker"),
         type = "string",
         name = "PartNumberMarker",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-part-number-marker" },
         },
      }),
      SSECustomerAlgorithm = schema.new({
         id = id.from(_N, "GetObjectAttributesInput", "SSECustomerAlgorithm"),
         type = "string",
         name = "SSECustomerAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-algorithm" },
         },
      }),
      SSECustomerKey = schema.new({
         id = id.from(_N, "GetObjectAttributesInput", "SSECustomerKey"),
         type = "string",
         name = "SSECustomerKey",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key" },
         },
      }),
      SSECustomerKeyMD5 = schema.new({
         id = id.from(_N, "GetObjectAttributesInput", "SSECustomerKeyMD5"),
         type = "string",
         name = "SSECustomerKeyMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key-MD5" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "GetObjectAttributesInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetObjectAttributesInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      ObjectAttributes = schema.new({
         id = id.from(_N, "GetObjectAttributesInput", "ObjectAttributes"),
         type = "list",
         name = "ObjectAttributes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "x-amz-object-attributes" },
         },
      }),
   },
})

M.Checksum = schema.new({
   id = id.from(_N, "Checksum"),
   type = "structure",
   members = {
      ChecksumCRC32 = schema.new({
         id = id.from(_N, "Checksum", "ChecksumCRC32"),
         type = "string",
         name = "ChecksumCRC32",
         target_id = prelude.String.id,
      }),
      ChecksumCRC32C = schema.new({
         id = id.from(_N, "Checksum", "ChecksumCRC32C"),
         type = "string",
         name = "ChecksumCRC32C",
         target_id = prelude.String.id,
      }),
      ChecksumCRC64NVME = schema.new({
         id = id.from(_N, "Checksum", "ChecksumCRC64NVME"),
         type = "string",
         name = "ChecksumCRC64NVME",
         target_id = prelude.String.id,
      }),
      ChecksumSHA1 = schema.new({
         id = id.from(_N, "Checksum", "ChecksumSHA1"),
         type = "string",
         name = "ChecksumSHA1",
         target_id = prelude.String.id,
      }),
      ChecksumSHA256 = schema.new({
         id = id.from(_N, "Checksum", "ChecksumSHA256"),
         type = "string",
         name = "ChecksumSHA256",
         target_id = prelude.String.id,
      }),
      ChecksumSHA512 = schema.new({
         id = id.from(_N, "Checksum", "ChecksumSHA512"),
         type = "string",
         name = "ChecksumSHA512",
         target_id = prelude.String.id,
      }),
      ChecksumMD5 = schema.new({
         id = id.from(_N, "Checksum", "ChecksumMD5"),
         type = "string",
         name = "ChecksumMD5",
         target_id = prelude.String.id,
      }),
      ChecksumXXHASH64 = schema.new({
         id = id.from(_N, "Checksum", "ChecksumXXHASH64"),
         type = "string",
         name = "ChecksumXXHASH64",
         target_id = prelude.String.id,
      }),
      ChecksumXXHASH3 = schema.new({
         id = id.from(_N, "Checksum", "ChecksumXXHASH3"),
         type = "string",
         name = "ChecksumXXHASH3",
         target_id = prelude.String.id,
      }),
      ChecksumXXHASH128 = schema.new({
         id = id.from(_N, "Checksum", "ChecksumXXHASH128"),
         type = "string",
         name = "ChecksumXXHASH128",
         target_id = prelude.String.id,
      }),
      ChecksumType = schema.new({
         id = id.from(_N, "Checksum", "ChecksumType"),
         type = "string",
         name = "ChecksumType",
         target_id = prelude.String.id,
      }),
   },
})

M.ObjectPart = schema.new({
   id = id.from(_N, "ObjectPart"),
   type = "structure",
   members = {
      PartNumber = schema.new({
         id = id.from(_N, "ObjectPart", "PartNumber"),
         type = "integer",
         name = "PartNumber",
         target_id = prelude.Integer.id,
      }),
      Size = schema.new({
         id = id.from(_N, "ObjectPart", "Size"),
         type = "long",
         name = "Size",
         target_id = prelude.Long.id,
      }),
      ChecksumCRC32 = schema.new({
         id = id.from(_N, "ObjectPart", "ChecksumCRC32"),
         type = "string",
         name = "ChecksumCRC32",
         target_id = prelude.String.id,
      }),
      ChecksumCRC32C = schema.new({
         id = id.from(_N, "ObjectPart", "ChecksumCRC32C"),
         type = "string",
         name = "ChecksumCRC32C",
         target_id = prelude.String.id,
      }),
      ChecksumCRC64NVME = schema.new({
         id = id.from(_N, "ObjectPart", "ChecksumCRC64NVME"),
         type = "string",
         name = "ChecksumCRC64NVME",
         target_id = prelude.String.id,
      }),
      ChecksumSHA1 = schema.new({
         id = id.from(_N, "ObjectPart", "ChecksumSHA1"),
         type = "string",
         name = "ChecksumSHA1",
         target_id = prelude.String.id,
      }),
      ChecksumSHA256 = schema.new({
         id = id.from(_N, "ObjectPart", "ChecksumSHA256"),
         type = "string",
         name = "ChecksumSHA256",
         target_id = prelude.String.id,
      }),
      ChecksumSHA512 = schema.new({
         id = id.from(_N, "ObjectPart", "ChecksumSHA512"),
         type = "string",
         name = "ChecksumSHA512",
         target_id = prelude.String.id,
      }),
      ChecksumMD5 = schema.new({
         id = id.from(_N, "ObjectPart", "ChecksumMD5"),
         type = "string",
         name = "ChecksumMD5",
         target_id = prelude.String.id,
      }),
      ChecksumXXHASH64 = schema.new({
         id = id.from(_N, "ObjectPart", "ChecksumXXHASH64"),
         type = "string",
         name = "ChecksumXXHASH64",
         target_id = prelude.String.id,
      }),
      ChecksumXXHASH3 = schema.new({
         id = id.from(_N, "ObjectPart", "ChecksumXXHASH3"),
         type = "string",
         name = "ChecksumXXHASH3",
         target_id = prelude.String.id,
      }),
      ChecksumXXHASH128 = schema.new({
         id = id.from(_N, "ObjectPart", "ChecksumXXHASH128"),
         type = "string",
         name = "ChecksumXXHASH128",
         target_id = prelude.String.id,
      }),
   },
})

M.GetObjectAttributesParts = schema.new({
   id = id.from(_N, "GetObjectAttributesParts"),
   type = "structure",
   members = {
      TotalPartsCount = schema.new({
         id = id.from(_N, "GetObjectAttributesParts", "TotalPartsCount"),
         type = "integer",
         name = "TotalPartsCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.XML_NAME] = { name = "PartsCount" },
         },
      }),
      PartNumberMarker = schema.new({
         id = id.from(_N, "GetObjectAttributesParts", "PartNumberMarker"),
         type = "string",
         name = "PartNumberMarker",
         target_id = prelude.String.id,
      }),
      NextPartNumberMarker = schema.new({
         id = id.from(_N, "GetObjectAttributesParts", "NextPartNumberMarker"),
         type = "string",
         name = "NextPartNumberMarker",
         target_id = prelude.String.id,
      }),
      MaxParts = schema.new({
         id = id.from(_N, "GetObjectAttributesParts", "MaxParts"),
         type = "integer",
         name = "MaxParts",
         target_id = prelude.Integer.id,
      }),
      IsTruncated = schema.new({
         id = id.from(_N, "GetObjectAttributesParts", "IsTruncated"),
         type = "boolean",
         name = "IsTruncated",
         target_id = prelude.Boolean.id,
      }),
      Parts = schema.new({
         id = id.from(_N, "GetObjectAttributesParts", "Parts"),
         type = "list",
         name = "Parts",
         target_id = prelude.Document.id,
         list_member = M.ObjectPart,
         traits = {
            [traits.XML_NAME] = { name = "Part" },
            [traits.XML_FLATTENED] = {},
         },
      }),
   },
})

M.GetObjectAttributesOutput = schema.new({
   id = id.from(_N, "GetObjectAttributesOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "GetObjectAttributesResponse" },
   },
   members = {
      DeleteMarker = schema.new({
         id = id.from(_N, "GetObjectAttributesOutput", "DeleteMarker"),
         type = "boolean",
         name = "DeleteMarker",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-delete-marker" },
         },
      }),
      LastModified = schema.new({
         id = id.from(_N, "GetObjectAttributesOutput", "LastModified"),
         type = "timestamp",
         name = "LastModified",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Last-Modified" },
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "GetObjectAttributesOutput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-version-id" },
         },
      }),
      RequestCharged = schema.new({
         id = id.from(_N, "GetObjectAttributesOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
      ETag = schema.new({
         id = id.from(_N, "GetObjectAttributesOutput", "ETag"),
         type = "string",
         name = "ETag",
         target_id = prelude.String.id,
      }),
      Checksum = schema.new({
         id = id.from(_N, "GetObjectAttributesOutput", "Checksum"),
         type = "structure",
         name = "Checksum",
         target_id = id.from(_N, "Checksum"),
         target = M.Checksum,
      }),
      ObjectParts = schema.new({
         id = id.from(_N, "GetObjectAttributesOutput", "ObjectParts"),
         type = "structure",
         name = "ObjectParts",
         target_id = id.from(_N, "GetObjectAttributesParts"),
         target = M.GetObjectAttributesParts,
      }),
      StorageClass = schema.new({
         id = id.from(_N, "GetObjectAttributesOutput", "StorageClass"),
         type = "string",
         name = "StorageClass",
         target_id = prelude.String.id,
      }),
      ObjectSize = schema.new({
         id = id.from(_N, "GetObjectAttributesOutput", "ObjectSize"),
         type = "long",
         name = "ObjectSize",
         target_id = prelude.Long.id,
      }),
   },
})

M.GetObjectLegalHoldInput = schema.new({
   id = id.from(_N, "GetObjectLegalHoldRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetObjectLegalHoldInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Key = schema.new({
         id = id.from(_N, "GetObjectLegalHoldInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "GetObjectLegalHoldInput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "versionId" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "GetObjectLegalHoldInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetObjectLegalHoldInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.ObjectLockLegalHold = schema.new({
   id = id.from(_N, "ObjectLockLegalHold"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "ObjectLockLegalHold", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.GetObjectLegalHoldOutput = schema.new({
   id = id.from(_N, "GetObjectLegalHoldOutput"),
   type = "structure",
   members = {
      LegalHold = schema.new({
         id = id.from(_N, "GetObjectLegalHoldOutput", "LegalHold"),
         type = "structure",
         name = "LegalHold",
         target_id = id.from(_N, "ObjectLockLegalHold"),
         target = M.ObjectLockLegalHold,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "LegalHold" },
         },
      }),
   },
})

M.GetObjectLockConfigurationInput = schema.new({
   id = id.from(_N, "GetObjectLockConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetObjectLockConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetObjectLockConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.DefaultRetention = schema.new({
   id = id.from(_N, "DefaultRetention"),
   type = "structure",
   members = {
      Mode = schema.new({
         id = id.from(_N, "DefaultRetention", "Mode"),
         type = "string",
         name = "Mode",
         target_id = prelude.String.id,
      }),
      Days = schema.new({
         id = id.from(_N, "DefaultRetention", "Days"),
         type = "integer",
         name = "Days",
         target_id = prelude.Integer.id,
      }),
      Years = schema.new({
         id = id.from(_N, "DefaultRetention", "Years"),
         type = "integer",
         name = "Years",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ObjectLockRule = schema.new({
   id = id.from(_N, "ObjectLockRule"),
   type = "structure",
   members = {
      DefaultRetention = schema.new({
         id = id.from(_N, "ObjectLockRule", "DefaultRetention"),
         type = "structure",
         name = "DefaultRetention",
         target_id = id.from(_N, "DefaultRetention"),
         target = M.DefaultRetention,
      }),
   },
})

M.ObjectLockConfiguration = schema.new({
   id = id.from(_N, "ObjectLockConfiguration"),
   type = "structure",
   members = {
      ObjectLockEnabled = schema.new({
         id = id.from(_N, "ObjectLockConfiguration", "ObjectLockEnabled"),
         type = "string",
         name = "ObjectLockEnabled",
         target_id = prelude.String.id,
      }),
      Rule = schema.new({
         id = id.from(_N, "ObjectLockConfiguration", "Rule"),
         type = "structure",
         name = "Rule",
         target_id = id.from(_N, "ObjectLockRule"),
         target = M.ObjectLockRule,
      }),
   },
})

M.GetObjectLockConfigurationOutput = schema.new({
   id = id.from(_N, "GetObjectLockConfigurationOutput"),
   type = "structure",
   members = {
      ObjectLockConfiguration = schema.new({
         id = id.from(_N, "GetObjectLockConfigurationOutput", "ObjectLockConfiguration"),
         type = "structure",
         name = "ObjectLockConfiguration",
         target_id = id.from(_N, "ObjectLockConfiguration"),
         target = M.ObjectLockConfiguration,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetObjectRetentionInput = schema.new({
   id = id.from(_N, "GetObjectRetentionRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetObjectRetentionInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Key = schema.new({
         id = id.from(_N, "GetObjectRetentionInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "GetObjectRetentionInput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "versionId" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "GetObjectRetentionInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetObjectRetentionInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.ObjectLockRetention = schema.new({
   id = id.from(_N, "ObjectLockRetention"),
   type = "structure",
   members = {
      Mode = schema.new({
         id = id.from(_N, "ObjectLockRetention", "Mode"),
         type = "string",
         name = "Mode",
         target_id = prelude.String.id,
      }),
      RetainUntilDate = schema.new({
         id = id.from(_N, "ObjectLockRetention", "RetainUntilDate"),
         type = "timestamp",
         name = "RetainUntilDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
   },
})

M.GetObjectRetentionOutput = schema.new({
   id = id.from(_N, "GetObjectRetentionOutput"),
   type = "structure",
   members = {
      Retention = schema.new({
         id = id.from(_N, "GetObjectRetentionOutput", "Retention"),
         type = "structure",
         name = "Retention",
         target_id = id.from(_N, "ObjectLockRetention"),
         target = M.ObjectLockRetention,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "Retention" },
         },
      }),
   },
})

M.GetObjectTaggingInput = schema.new({
   id = id.from(_N, "GetObjectTaggingRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetObjectTaggingInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Key = schema.new({
         id = id.from(_N, "GetObjectTaggingInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "GetObjectTaggingInput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "versionId" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetObjectTaggingInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "GetObjectTaggingInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
   },
})

M.GetObjectTaggingOutput = schema.new({
   id = id.from(_N, "GetObjectTaggingOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "Tagging" },
   },
   members = {
      VersionId = schema.new({
         id = id.from(_N, "GetObjectTaggingOutput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-version-id" },
         },
      }),
      TagSet = schema.new({
         id = id.from(_N, "GetObjectTaggingOutput", "TagSet"),
         type = "list",
         name = "TagSet",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetObjectTorrentInput = schema.new({
   id = id.from(_N, "GetObjectTorrentRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetObjectTorrentInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Key = schema.new({
         id = id.from(_N, "GetObjectTorrentInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "GetObjectTorrentInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetObjectTorrentInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.GetObjectTorrentOutput = schema.new({
   id = id.from(_N, "GetObjectTorrentOutput"),
   type = "structure",
   members = {
      Body = schema.new({
         id = id.from(_N, "GetObjectTorrentOutput", "Body"),
         type = "blob",
         name = "Body",
         target_id = prelude.Blob.id,
         traits = {
            [traits.DEFAULT] = { value = "" },
            [traits.HTTP_PAYLOAD] = {},
            [traits.STREAMING] = {},
         },
         direct_traits = {
            [traits.DEFAULT] = { value = "" },
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      RequestCharged = schema.new({
         id = id.from(_N, "GetObjectTorrentOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
   },
})

M.GetPublicAccessBlockInput = schema.new({
   id = id.from(_N, "GetPublicAccessBlockRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "GetPublicAccessBlockInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "GetPublicAccessBlockInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.PublicAccessBlockConfiguration = schema.new({
   id = id.from(_N, "PublicAccessBlockConfiguration"),
   type = "structure",
   members = {
      BlockPublicAcls = schema.new({
         id = id.from(_N, "PublicAccessBlockConfiguration", "BlockPublicAcls"),
         type = "boolean",
         name = "BlockPublicAcls",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.XML_NAME] = { name = "BlockPublicAcls" },
         },
      }),
      IgnorePublicAcls = schema.new({
         id = id.from(_N, "PublicAccessBlockConfiguration", "IgnorePublicAcls"),
         type = "boolean",
         name = "IgnorePublicAcls",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.XML_NAME] = { name = "IgnorePublicAcls" },
         },
      }),
      BlockPublicPolicy = schema.new({
         id = id.from(_N, "PublicAccessBlockConfiguration", "BlockPublicPolicy"),
         type = "boolean",
         name = "BlockPublicPolicy",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.XML_NAME] = { name = "BlockPublicPolicy" },
         },
      }),
      RestrictPublicBuckets = schema.new({
         id = id.from(_N, "PublicAccessBlockConfiguration", "RestrictPublicBuckets"),
         type = "boolean",
         name = "RestrictPublicBuckets",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.XML_NAME] = { name = "RestrictPublicBuckets" },
         },
      }),
   },
})

M.GetPublicAccessBlockOutput = schema.new({
   id = id.from(_N, "GetPublicAccessBlockOutput"),
   type = "structure",
   members = {
      PublicAccessBlockConfiguration = schema.new({
         id = id.from(_N, "GetPublicAccessBlockOutput", "PublicAccessBlockConfiguration"),
         type = "structure",
         name = "PublicAccessBlockConfiguration",
         target_id = id.from(_N, "PublicAccessBlockConfiguration"),
         target = M.PublicAccessBlockConfiguration,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.HeadBucketInput = schema.new({
   id = id.from(_N, "HeadBucketRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "HeadBucketInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "HeadBucketInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.HeadBucketOutput = schema.new({
   id = id.from(_N, "HeadBucketOutput"),
   type = "structure",
   members = {
      BucketArn = schema.new({
         id = id.from(_N, "HeadBucketOutput", "BucketArn"),
         type = "string",
         name = "BucketArn",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-bucket-arn" },
         },
      }),
      BucketLocationType = schema.new({
         id = id.from(_N, "HeadBucketOutput", "BucketLocationType"),
         type = "string",
         name = "BucketLocationType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-bucket-location-type" },
         },
      }),
      BucketLocationName = schema.new({
         id = id.from(_N, "HeadBucketOutput", "BucketLocationName"),
         type = "string",
         name = "BucketLocationName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-bucket-location-name" },
         },
      }),
      BucketRegion = schema.new({
         id = id.from(_N, "HeadBucketOutput", "BucketRegion"),
         type = "string",
         name = "BucketRegion",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-bucket-region" },
         },
      }),
      AccessPointAlias = schema.new({
         id = id.from(_N, "HeadBucketOutput", "AccessPointAlias"),
         type = "boolean",
         name = "AccessPointAlias",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-access-point-alias" },
         },
      }),
   },
})

M.NotFound = schema.new({
   id = id.from(_N, "NotFound"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
})

M.HeadObjectInput = schema.new({
   id = id.from(_N, "HeadObjectRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "HeadObjectInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      IfMatch = schema.new({
         id = id.from(_N, "HeadObjectInput", "IfMatch"),
         type = "string",
         name = "IfMatch",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "If-Match" },
         },
      }),
      IfModifiedSince = schema.new({
         id = id.from(_N, "HeadObjectInput", "IfModifiedSince"),
         type = "timestamp",
         name = "IfModifiedSince",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "If-Modified-Since" },
         },
      }),
      IfNoneMatch = schema.new({
         id = id.from(_N, "HeadObjectInput", "IfNoneMatch"),
         type = "string",
         name = "IfNoneMatch",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "If-None-Match" },
         },
      }),
      IfUnmodifiedSince = schema.new({
         id = id.from(_N, "HeadObjectInput", "IfUnmodifiedSince"),
         type = "timestamp",
         name = "IfUnmodifiedSince",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "If-Unmodified-Since" },
         },
      }),
      Key = schema.new({
         id = id.from(_N, "HeadObjectInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Range = schema.new({
         id = id.from(_N, "HeadObjectInput", "Range"),
         type = "string",
         name = "Range",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Range" },
         },
      }),
      ResponseCacheControl = schema.new({
         id = id.from(_N, "HeadObjectInput", "ResponseCacheControl"),
         type = "string",
         name = "ResponseCacheControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "response-cache-control" },
         },
      }),
      ResponseContentDisposition = schema.new({
         id = id.from(_N, "HeadObjectInput", "ResponseContentDisposition"),
         type = "string",
         name = "ResponseContentDisposition",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "response-content-disposition" },
         },
      }),
      ResponseContentEncoding = schema.new({
         id = id.from(_N, "HeadObjectInput", "ResponseContentEncoding"),
         type = "string",
         name = "ResponseContentEncoding",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "response-content-encoding" },
         },
      }),
      ResponseContentLanguage = schema.new({
         id = id.from(_N, "HeadObjectInput", "ResponseContentLanguage"),
         type = "string",
         name = "ResponseContentLanguage",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "response-content-language" },
         },
      }),
      ResponseContentType = schema.new({
         id = id.from(_N, "HeadObjectInput", "ResponseContentType"),
         type = "string",
         name = "ResponseContentType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "response-content-type" },
         },
      }),
      ResponseExpires = schema.new({
         id = id.from(_N, "HeadObjectInput", "ResponseExpires"),
         type = "timestamp",
         name = "ResponseExpires",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "response-expires" },
            [traits.TIMESTAMP_FORMAT] = { format = "http-date" },
         },
         direct_traits = {
            [traits.HTTP_QUERY] = { name = "response-expires" },
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "HeadObjectInput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "versionId" },
         },
      }),
      SSECustomerAlgorithm = schema.new({
         id = id.from(_N, "HeadObjectInput", "SSECustomerAlgorithm"),
         type = "string",
         name = "SSECustomerAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-algorithm" },
         },
      }),
      SSECustomerKey = schema.new({
         id = id.from(_N, "HeadObjectInput", "SSECustomerKey"),
         type = "string",
         name = "SSECustomerKey",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key" },
         },
      }),
      SSECustomerKeyMD5 = schema.new({
         id = id.from(_N, "HeadObjectInput", "SSECustomerKeyMD5"),
         type = "string",
         name = "SSECustomerKeyMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key-MD5" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "HeadObjectInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      PartNumber = schema.new({
         id = id.from(_N, "HeadObjectInput", "PartNumber"),
         type = "integer",
         name = "PartNumber",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "partNumber" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "HeadObjectInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      ChecksumMode = schema.new({
         id = id.from(_N, "HeadObjectInput", "ChecksumMode"),
         type = "string",
         name = "ChecksumMode",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-mode" },
         },
      }),
   },
})

M.HeadObjectOutput = schema.new({
   id = id.from(_N, "HeadObjectOutput"),
   type = "structure",
   members = {
      DeleteMarker = schema.new({
         id = id.from(_N, "HeadObjectOutput", "DeleteMarker"),
         type = "boolean",
         name = "DeleteMarker",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-delete-marker" },
         },
      }),
      AcceptRanges = schema.new({
         id = id.from(_N, "HeadObjectOutput", "AcceptRanges"),
         type = "string",
         name = "AcceptRanges",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "accept-ranges" },
         },
      }),
      Expiration = schema.new({
         id = id.from(_N, "HeadObjectOutput", "Expiration"),
         type = "string",
         name = "Expiration",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expiration" },
         },
      }),
      Restore = schema.new({
         id = id.from(_N, "HeadObjectOutput", "Restore"),
         type = "string",
         name = "Restore",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-restore" },
         },
      }),
      ArchiveStatus = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ArchiveStatus"),
         type = "string",
         name = "ArchiveStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-archive-status" },
         },
      }),
      LastModified = schema.new({
         id = id.from(_N, "HeadObjectOutput", "LastModified"),
         type = "timestamp",
         name = "LastModified",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Last-Modified" },
         },
      }),
      ContentLength = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ContentLength"),
         type = "long",
         name = "ContentLength",
         target_id = prelude.Long.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Length" },
         },
      }),
      ChecksumCRC32 = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ChecksumCRC32"),
         type = "string",
         name = "ChecksumCRC32",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-crc32" },
         },
      }),
      ChecksumCRC32C = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ChecksumCRC32C"),
         type = "string",
         name = "ChecksumCRC32C",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-crc32c" },
         },
      }),
      ChecksumCRC64NVME = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ChecksumCRC64NVME"),
         type = "string",
         name = "ChecksumCRC64NVME",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-crc64nvme" },
         },
      }),
      ChecksumSHA1 = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ChecksumSHA1"),
         type = "string",
         name = "ChecksumSHA1",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-sha1" },
         },
      }),
      ChecksumSHA256 = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ChecksumSHA256"),
         type = "string",
         name = "ChecksumSHA256",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-sha256" },
         },
      }),
      ChecksumSHA512 = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ChecksumSHA512"),
         type = "string",
         name = "ChecksumSHA512",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-sha512" },
         },
      }),
      ChecksumMD5 = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ChecksumMD5"),
         type = "string",
         name = "ChecksumMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-md5" },
         },
      }),
      ChecksumXXHASH64 = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ChecksumXXHASH64"),
         type = "string",
         name = "ChecksumXXHASH64",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-xxhash64" },
         },
      }),
      ChecksumXXHASH3 = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ChecksumXXHASH3"),
         type = "string",
         name = "ChecksumXXHASH3",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-xxhash3" },
         },
      }),
      ChecksumXXHASH128 = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ChecksumXXHASH128"),
         type = "string",
         name = "ChecksumXXHASH128",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-xxhash128" },
         },
      }),
      ChecksumType = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ChecksumType"),
         type = "string",
         name = "ChecksumType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-type" },
         },
      }),
      ETag = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ETag"),
         type = "string",
         name = "ETag",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "ETag" },
         },
      }),
      MissingMeta = schema.new({
         id = id.from(_N, "HeadObjectOutput", "MissingMeta"),
         type = "integer",
         name = "MissingMeta",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-missing-meta" },
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "HeadObjectOutput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-version-id" },
         },
      }),
      CacheControl = schema.new({
         id = id.from(_N, "HeadObjectOutput", "CacheControl"),
         type = "string",
         name = "CacheControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Cache-Control" },
         },
      }),
      ContentDisposition = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ContentDisposition"),
         type = "string",
         name = "ContentDisposition",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Disposition" },
         },
      }),
      ContentEncoding = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ContentEncoding"),
         type = "string",
         name = "ContentEncoding",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Encoding" },
         },
      }),
      ContentLanguage = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ContentLanguage"),
         type = "string",
         name = "ContentLanguage",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Language" },
         },
      }),
      ContentType = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ContentType"),
         type = "string",
         name = "ContentType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Type" },
         },
      }),
      ContentRange = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ContentRange"),
         type = "string",
         name = "ContentRange",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Range" },
         },
      }),
      Expires = schema.new({
         id = id.from(_N, "HeadObjectOutput", "Expires"),
         type = "string",
         name = "Expires",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Expires" },
         },
      }),
      WebsiteRedirectLocation = schema.new({
         id = id.from(_N, "HeadObjectOutput", "WebsiteRedirectLocation"),
         type = "string",
         name = "WebsiteRedirectLocation",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-website-redirect-location" },
         },
      }),
      ServerSideEncryption = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ServerSideEncryption"),
         type = "string",
         name = "ServerSideEncryption",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption" },
         },
      }),
      Metadata = schema.new({
         id = id.from(_N, "HeadObjectOutput", "Metadata"),
         type = "map",
         name = "Metadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.HTTP_PREFIX_HEADERS] = { prefix = "x-amz-meta-" },
         },
      }),
      SSECustomerAlgorithm = schema.new({
         id = id.from(_N, "HeadObjectOutput", "SSECustomerAlgorithm"),
         type = "string",
         name = "SSECustomerAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-algorithm" },
         },
      }),
      SSECustomerKeyMD5 = schema.new({
         id = id.from(_N, "HeadObjectOutput", "SSECustomerKeyMD5"),
         type = "string",
         name = "SSECustomerKeyMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key-MD5" },
         },
      }),
      SSEKMSKeyId = schema.new({
         id = id.from(_N, "HeadObjectOutput", "SSEKMSKeyId"),
         type = "string",
         name = "SSEKMSKeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-aws-kms-key-id" },
         },
      }),
      BucketKeyEnabled = schema.new({
         id = id.from(_N, "HeadObjectOutput", "BucketKeyEnabled"),
         type = "boolean",
         name = "BucketKeyEnabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-bucket-key-enabled" },
         },
      }),
      StorageClass = schema.new({
         id = id.from(_N, "HeadObjectOutput", "StorageClass"),
         type = "string",
         name = "StorageClass",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-storage-class" },
         },
      }),
      RequestCharged = schema.new({
         id = id.from(_N, "HeadObjectOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
      ReplicationStatus = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ReplicationStatus"),
         type = "string",
         name = "ReplicationStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-replication-status" },
         },
      }),
      PartsCount = schema.new({
         id = id.from(_N, "HeadObjectOutput", "PartsCount"),
         type = "integer",
         name = "PartsCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-mp-parts-count" },
         },
      }),
      TagCount = schema.new({
         id = id.from(_N, "HeadObjectOutput", "TagCount"),
         type = "integer",
         name = "TagCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-tagging-count" },
         },
      }),
      ObjectLockMode = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ObjectLockMode"),
         type = "string",
         name = "ObjectLockMode",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-object-lock-mode" },
         },
      }),
      ObjectLockRetainUntilDate = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ObjectLockRetainUntilDate"),
         type = "timestamp",
         name = "ObjectLockRetainUntilDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-object-lock-retain-until-date" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-object-lock-retain-until-date" },
         },
      }),
      ObjectLockLegalHoldStatus = schema.new({
         id = id.from(_N, "HeadObjectOutput", "ObjectLockLegalHoldStatus"),
         type = "string",
         name = "ObjectLockLegalHoldStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-object-lock-legal-hold" },
         },
      }),
   },
})

M.ListBucketAnalyticsConfigurationsInput = schema.new({
   id = id.from(_N, "ListBucketAnalyticsConfigurationsRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "ListBucketAnalyticsConfigurationsInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ContinuationToken = schema.new({
         id = id.from(_N, "ListBucketAnalyticsConfigurationsInput", "ContinuationToken"),
         type = "string",
         name = "ContinuationToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "continuation-token" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "ListBucketAnalyticsConfigurationsInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.ListBucketAnalyticsConfigurationsOutput = schema.new({
   id = id.from(_N, "ListBucketAnalyticsConfigurationsOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "ListBucketAnalyticsConfigurationResult" },
   },
   members = {
      IsTruncated = schema.new({
         id = id.from(_N, "ListBucketAnalyticsConfigurationsOutput", "IsTruncated"),
         type = "boolean",
         name = "IsTruncated",
         target_id = prelude.Boolean.id,
      }),
      ContinuationToken = schema.new({
         id = id.from(_N, "ListBucketAnalyticsConfigurationsOutput", "ContinuationToken"),
         type = "string",
         name = "ContinuationToken",
         target_id = prelude.String.id,
      }),
      NextContinuationToken = schema.new({
         id = id.from(_N, "ListBucketAnalyticsConfigurationsOutput", "NextContinuationToken"),
         type = "string",
         name = "NextContinuationToken",
         target_id = prelude.String.id,
      }),
      AnalyticsConfigurationList = schema.new({
         id = id.from(_N, "ListBucketAnalyticsConfigurationsOutput", "AnalyticsConfigurationList"),
         type = "list",
         name = "AnalyticsConfigurationList",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsConfiguration,
         traits = {
            [traits.XML_NAME] = { name = "AnalyticsConfiguration" },
            [traits.XML_FLATTENED] = {},
         },
      }),
   },
})

M.ListBucketIntelligentTieringConfigurationsInput = schema.new({
   id = id.from(_N, "ListBucketIntelligentTieringConfigurationsRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "ListBucketIntelligentTieringConfigurationsInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ContinuationToken = schema.new({
         id = id.from(_N, "ListBucketIntelligentTieringConfigurationsInput", "ContinuationToken"),
         type = "string",
         name = "ContinuationToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "continuation-token" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "ListBucketIntelligentTieringConfigurationsInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.ListBucketIntelligentTieringConfigurationsOutput = schema.new({
   id = id.from(_N, "ListBucketIntelligentTieringConfigurationsOutput"),
   type = "structure",
   members = {
      IsTruncated = schema.new({
         id = id.from(_N, "ListBucketIntelligentTieringConfigurationsOutput", "IsTruncated"),
         type = "boolean",
         name = "IsTruncated",
         target_id = prelude.Boolean.id,
      }),
      ContinuationToken = schema.new({
         id = id.from(_N, "ListBucketIntelligentTieringConfigurationsOutput", "ContinuationToken"),
         type = "string",
         name = "ContinuationToken",
         target_id = prelude.String.id,
      }),
      NextContinuationToken = schema.new({
         id = id.from(_N, "ListBucketIntelligentTieringConfigurationsOutput", "NextContinuationToken"),
         type = "string",
         name = "NextContinuationToken",
         target_id = prelude.String.id,
      }),
      IntelligentTieringConfigurationList = schema.new({
         id = id.from(_N, "ListBucketIntelligentTieringConfigurationsOutput", "IntelligentTieringConfigurationList"),
         type = "list",
         name = "IntelligentTieringConfigurationList",
         target_id = prelude.Document.id,
         list_member = M.IntelligentTieringConfiguration,
         traits = {
            [traits.XML_NAME] = { name = "IntelligentTieringConfiguration" },
            [traits.XML_FLATTENED] = {},
         },
      }),
   },
})

M.ListBucketInventoryConfigurationsInput = schema.new({
   id = id.from(_N, "ListBucketInventoryConfigurationsRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "ListBucketInventoryConfigurationsInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ContinuationToken = schema.new({
         id = id.from(_N, "ListBucketInventoryConfigurationsInput", "ContinuationToken"),
         type = "string",
         name = "ContinuationToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "continuation-token" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "ListBucketInventoryConfigurationsInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.ListBucketInventoryConfigurationsOutput = schema.new({
   id = id.from(_N, "ListBucketInventoryConfigurationsOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "ListInventoryConfigurationsResult" },
   },
   members = {
      ContinuationToken = schema.new({
         id = id.from(_N, "ListBucketInventoryConfigurationsOutput", "ContinuationToken"),
         type = "string",
         name = "ContinuationToken",
         target_id = prelude.String.id,
      }),
      InventoryConfigurationList = schema.new({
         id = id.from(_N, "ListBucketInventoryConfigurationsOutput", "InventoryConfigurationList"),
         type = "list",
         name = "InventoryConfigurationList",
         target_id = prelude.Document.id,
         list_member = M.InventoryConfiguration,
         traits = {
            [traits.XML_NAME] = { name = "InventoryConfiguration" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      IsTruncated = schema.new({
         id = id.from(_N, "ListBucketInventoryConfigurationsOutput", "IsTruncated"),
         type = "boolean",
         name = "IsTruncated",
         target_id = prelude.Boolean.id,
      }),
      NextContinuationToken = schema.new({
         id = id.from(_N, "ListBucketInventoryConfigurationsOutput", "NextContinuationToken"),
         type = "string",
         name = "NextContinuationToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBucketMetricsConfigurationsInput = schema.new({
   id = id.from(_N, "ListBucketMetricsConfigurationsRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "ListBucketMetricsConfigurationsInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ContinuationToken = schema.new({
         id = id.from(_N, "ListBucketMetricsConfigurationsInput", "ContinuationToken"),
         type = "string",
         name = "ContinuationToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "continuation-token" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "ListBucketMetricsConfigurationsInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.ListBucketMetricsConfigurationsOutput = schema.new({
   id = id.from(_N, "ListBucketMetricsConfigurationsOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "ListMetricsConfigurationsResult" },
   },
   members = {
      IsTruncated = schema.new({
         id = id.from(_N, "ListBucketMetricsConfigurationsOutput", "IsTruncated"),
         type = "boolean",
         name = "IsTruncated",
         target_id = prelude.Boolean.id,
      }),
      ContinuationToken = schema.new({
         id = id.from(_N, "ListBucketMetricsConfigurationsOutput", "ContinuationToken"),
         type = "string",
         name = "ContinuationToken",
         target_id = prelude.String.id,
      }),
      NextContinuationToken = schema.new({
         id = id.from(_N, "ListBucketMetricsConfigurationsOutput", "NextContinuationToken"),
         type = "string",
         name = "NextContinuationToken",
         target_id = prelude.String.id,
      }),
      MetricsConfigurationList = schema.new({
         id = id.from(_N, "ListBucketMetricsConfigurationsOutput", "MetricsConfigurationList"),
         type = "list",
         name = "MetricsConfigurationList",
         target_id = prelude.Document.id,
         list_member = M.MetricsConfiguration,
         traits = {
            [traits.XML_NAME] = { name = "MetricsConfiguration" },
            [traits.XML_FLATTENED] = {},
         },
      }),
   },
})

M.ListBucketsInput = schema.new({
   id = id.from(_N, "ListBucketsRequest"),
   type = "structure",
   members = {
      MaxBuckets = schema.new({
         id = id.from(_N, "ListBucketsInput", "MaxBuckets"),
         type = "integer",
         name = "MaxBuckets",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-buckets" },
         },
      }),
      ContinuationToken = schema.new({
         id = id.from(_N, "ListBucketsInput", "ContinuationToken"),
         type = "string",
         name = "ContinuationToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "continuation-token" },
         },
      }),
      Prefix = schema.new({
         id = id.from(_N, "ListBucketsInput", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "prefix" },
         },
      }),
      BucketRegion = schema.new({
         id = id.from(_N, "ListBucketsInput", "BucketRegion"),
         type = "string",
         name = "BucketRegion",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "bucket-region" },
         },
      }),
   },
})

M.Bucket = schema.new({
   id = id.from(_N, "Bucket"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "Bucket", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "Bucket", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      BucketRegion = schema.new({
         id = id.from(_N, "Bucket", "BucketRegion"),
         type = "string",
         name = "BucketRegion",
         target_id = prelude.String.id,
      }),
      BucketArn = schema.new({
         id = id.from(_N, "Bucket", "BucketArn"),
         type = "string",
         name = "BucketArn",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBucketsOutput = schema.new({
   id = id.from(_N, "ListBucketsOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "ListAllMyBucketsResult" },
   },
   members = {
      Buckets = schema.new({
         id = id.from(_N, "ListBucketsOutput", "Buckets"),
         type = "list",
         name = "Buckets",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.Bucket, traits = { [traits.XML_NAME] = { name = "Bucket" } } }),
      }),
      Owner = schema.new({
         id = id.from(_N, "ListBucketsOutput", "Owner"),
         type = "structure",
         name = "Owner",
         target_id = id.from(_N, "Owner"),
         target = M.Owner,
      }),
      ContinuationToken = schema.new({
         id = id.from(_N, "ListBucketsOutput", "ContinuationToken"),
         type = "string",
         name = "ContinuationToken",
         target_id = prelude.String.id,
      }),
      Prefix = schema.new({
         id = id.from(_N, "ListBucketsOutput", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDirectoryBucketsInput = schema.new({
   id = id.from(_N, "ListDirectoryBucketsRequest"),
   type = "structure",
   members = {
      ContinuationToken = schema.new({
         id = id.from(_N, "ListDirectoryBucketsInput", "ContinuationToken"),
         type = "string",
         name = "ContinuationToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "continuation-token" },
         },
      }),
      MaxDirectoryBuckets = schema.new({
         id = id.from(_N, "ListDirectoryBucketsInput", "MaxDirectoryBuckets"),
         type = "integer",
         name = "MaxDirectoryBuckets",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-directory-buckets" },
         },
      }),
   },
})

M.ListDirectoryBucketsOutput = schema.new({
   id = id.from(_N, "ListDirectoryBucketsOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "ListAllMyDirectoryBucketsResult" },
   },
   members = {
      Buckets = schema.new({
         id = id.from(_N, "ListDirectoryBucketsOutput", "Buckets"),
         type = "list",
         name = "Buckets",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.Bucket, traits = { [traits.XML_NAME] = { name = "Bucket" } } }),
      }),
      ContinuationToken = schema.new({
         id = id.from(_N, "ListDirectoryBucketsOutput", "ContinuationToken"),
         type = "string",
         name = "ContinuationToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListMultipartUploadsInput = schema.new({
   id = id.from(_N, "ListMultipartUploadsRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "ListMultipartUploadsInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Delimiter = schema.new({
         id = id.from(_N, "ListMultipartUploadsInput", "Delimiter"),
         type = "string",
         name = "Delimiter",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "delimiter" },
         },
      }),
      EncodingType = schema.new({
         id = id.from(_N, "ListMultipartUploadsInput", "EncodingType"),
         type = "string",
         name = "EncodingType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "encoding-type" },
         },
      }),
      KeyMarker = schema.new({
         id = id.from(_N, "ListMultipartUploadsInput", "KeyMarker"),
         type = "string",
         name = "KeyMarker",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "key-marker" },
         },
      }),
      MaxUploads = schema.new({
         id = id.from(_N, "ListMultipartUploadsInput", "MaxUploads"),
         type = "integer",
         name = "MaxUploads",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-uploads" },
         },
      }),
      Prefix = schema.new({
         id = id.from(_N, "ListMultipartUploadsInput", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "prefix" },
         },
      }),
      UploadIdMarker = schema.new({
         id = id.from(_N, "ListMultipartUploadsInput", "UploadIdMarker"),
         type = "string",
         name = "UploadIdMarker",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "upload-id-marker" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "ListMultipartUploadsInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "ListMultipartUploadsInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
   },
})

M.CommonPrefix = schema.new({
   id = id.from(_N, "CommonPrefix"),
   type = "structure",
   members = {
      Prefix = schema.new({
         id = id.from(_N, "CommonPrefix", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
   },
})

M.Initiator = schema.new({
   id = id.from(_N, "Initiator"),
   type = "structure",
   members = {
      ID = schema.new({
         id = id.from(_N, "Initiator", "ID"),
         type = "string",
         name = "ID",
         target_id = prelude.String.id,
      }),
      DisplayName = schema.new({
         id = id.from(_N, "Initiator", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
   },
})

M.MultipartUpload = schema.new({
   id = id.from(_N, "MultipartUpload"),
   type = "structure",
   members = {
      UploadId = schema.new({
         id = id.from(_N, "MultipartUpload", "UploadId"),
         type = "string",
         name = "UploadId",
         target_id = prelude.String.id,
      }),
      Key = schema.new({
         id = id.from(_N, "MultipartUpload", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
      }),
      Initiated = schema.new({
         id = id.from(_N, "MultipartUpload", "Initiated"),
         type = "timestamp",
         name = "Initiated",
         target_id = prelude.Timestamp.id,
      }),
      StorageClass = schema.new({
         id = id.from(_N, "MultipartUpload", "StorageClass"),
         type = "string",
         name = "StorageClass",
         target_id = prelude.String.id,
      }),
      Owner = schema.new({
         id = id.from(_N, "MultipartUpload", "Owner"),
         type = "structure",
         name = "Owner",
         target_id = id.from(_N, "Owner"),
         target = M.Owner,
      }),
      Initiator = schema.new({
         id = id.from(_N, "MultipartUpload", "Initiator"),
         type = "structure",
         name = "Initiator",
         target_id = id.from(_N, "Initiator"),
         target = M.Initiator,
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "MultipartUpload", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
      }),
      ChecksumType = schema.new({
         id = id.from(_N, "MultipartUpload", "ChecksumType"),
         type = "string",
         name = "ChecksumType",
         target_id = prelude.String.id,
      }),
   },
})

M.ListMultipartUploadsOutput = schema.new({
   id = id.from(_N, "ListMultipartUploadsOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "ListMultipartUploadsResult" },
   },
   members = {
      Bucket = schema.new({
         id = id.from(_N, "ListMultipartUploadsOutput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
      }),
      KeyMarker = schema.new({
         id = id.from(_N, "ListMultipartUploadsOutput", "KeyMarker"),
         type = "string",
         name = "KeyMarker",
         target_id = prelude.String.id,
      }),
      UploadIdMarker = schema.new({
         id = id.from(_N, "ListMultipartUploadsOutput", "UploadIdMarker"),
         type = "string",
         name = "UploadIdMarker",
         target_id = prelude.String.id,
      }),
      NextKeyMarker = schema.new({
         id = id.from(_N, "ListMultipartUploadsOutput", "NextKeyMarker"),
         type = "string",
         name = "NextKeyMarker",
         target_id = prelude.String.id,
      }),
      Prefix = schema.new({
         id = id.from(_N, "ListMultipartUploadsOutput", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
      Delimiter = schema.new({
         id = id.from(_N, "ListMultipartUploadsOutput", "Delimiter"),
         type = "string",
         name = "Delimiter",
         target_id = prelude.String.id,
      }),
      NextUploadIdMarker = schema.new({
         id = id.from(_N, "ListMultipartUploadsOutput", "NextUploadIdMarker"),
         type = "string",
         name = "NextUploadIdMarker",
         target_id = prelude.String.id,
      }),
      MaxUploads = schema.new({
         id = id.from(_N, "ListMultipartUploadsOutput", "MaxUploads"),
         type = "integer",
         name = "MaxUploads",
         target_id = prelude.Integer.id,
      }),
      IsTruncated = schema.new({
         id = id.from(_N, "ListMultipartUploadsOutput", "IsTruncated"),
         type = "boolean",
         name = "IsTruncated",
         target_id = prelude.Boolean.id,
      }),
      Uploads = schema.new({
         id = id.from(_N, "ListMultipartUploadsOutput", "Uploads"),
         type = "list",
         name = "Uploads",
         target_id = prelude.Document.id,
         list_member = M.MultipartUpload,
         traits = {
            [traits.XML_NAME] = { name = "Upload" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      CommonPrefixes = schema.new({
         id = id.from(_N, "ListMultipartUploadsOutput", "CommonPrefixes"),
         type = "list",
         name = "CommonPrefixes",
         target_id = prelude.Document.id,
         list_member = M.CommonPrefix,
         traits = {
            [traits.XML_FLATTENED] = {},
         },
      }),
      EncodingType = schema.new({
         id = id.from(_N, "ListMultipartUploadsOutput", "EncodingType"),
         type = "string",
         name = "EncodingType",
         target_id = prelude.String.id,
      }),
      RequestCharged = schema.new({
         id = id.from(_N, "ListMultipartUploadsOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
   },
})

M.ListObjectsInput = schema.new({
   id = id.from(_N, "ListObjectsRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "ListObjectsInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Delimiter = schema.new({
         id = id.from(_N, "ListObjectsInput", "Delimiter"),
         type = "string",
         name = "Delimiter",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "delimiter" },
         },
      }),
      EncodingType = schema.new({
         id = id.from(_N, "ListObjectsInput", "EncodingType"),
         type = "string",
         name = "EncodingType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "encoding-type" },
         },
      }),
      Marker = schema.new({
         id = id.from(_N, "ListObjectsInput", "Marker"),
         type = "string",
         name = "Marker",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "marker" },
         },
      }),
      MaxKeys = schema.new({
         id = id.from(_N, "ListObjectsInput", "MaxKeys"),
         type = "integer",
         name = "MaxKeys",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-keys" },
         },
      }),
      Prefix = schema.new({
         id = id.from(_N, "ListObjectsInput", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "prefix" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "ListObjectsInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "ListObjectsInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      OptionalObjectAttributes = schema.new({
         id = id.from(_N, "ListObjectsInput", "OptionalObjectAttributes"),
         type = "list",
         name = "OptionalObjectAttributes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-optional-object-attributes" },
         },
      }),
   },
})

M.RestoreStatus = schema.new({
   id = id.from(_N, "RestoreStatus"),
   type = "structure",
   members = {
      IsRestoreInProgress = schema.new({
         id = id.from(_N, "RestoreStatus", "IsRestoreInProgress"),
         type = "boolean",
         name = "IsRestoreInProgress",
         target_id = prelude.Boolean.id,
      }),
      RestoreExpiryDate = schema.new({
         id = id.from(_N, "RestoreStatus", "RestoreExpiryDate"),
         type = "timestamp",
         name = "RestoreExpiryDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.Object = schema.new({
   id = id.from(_N, "Object"),
   type = "structure",
   members = {
      Key = schema.new({
         id = id.from(_N, "Object", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
      }),
      LastModified = schema.new({
         id = id.from(_N, "Object", "LastModified"),
         type = "timestamp",
         name = "LastModified",
         target_id = prelude.Timestamp.id,
      }),
      ETag = schema.new({
         id = id.from(_N, "Object", "ETag"),
         type = "string",
         name = "ETag",
         target_id = prelude.String.id,
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "Object", "ChecksumAlgorithm"),
         type = "list",
         name = "ChecksumAlgorithm",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.XML_FLATTENED] = {},
         },
      }),
      ChecksumType = schema.new({
         id = id.from(_N, "Object", "ChecksumType"),
         type = "string",
         name = "ChecksumType",
         target_id = prelude.String.id,
      }),
      Size = schema.new({
         id = id.from(_N, "Object", "Size"),
         type = "long",
         name = "Size",
         target_id = prelude.Long.id,
      }),
      StorageClass = schema.new({
         id = id.from(_N, "Object", "StorageClass"),
         type = "string",
         name = "StorageClass",
         target_id = prelude.String.id,
      }),
      Owner = schema.new({
         id = id.from(_N, "Object", "Owner"),
         type = "structure",
         name = "Owner",
         target_id = id.from(_N, "Owner"),
         target = M.Owner,
      }),
      RestoreStatus = schema.new({
         id = id.from(_N, "Object", "RestoreStatus"),
         type = "structure",
         name = "RestoreStatus",
         target_id = id.from(_N, "RestoreStatus"),
         target = M.RestoreStatus,
      }),
   },
})

M.ListObjectsOutput = schema.new({
   id = id.from(_N, "ListObjectsOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "ListBucketResult" },
   },
   members = {
      IsTruncated = schema.new({
         id = id.from(_N, "ListObjectsOutput", "IsTruncated"),
         type = "boolean",
         name = "IsTruncated",
         target_id = prelude.Boolean.id,
      }),
      Marker = schema.new({
         id = id.from(_N, "ListObjectsOutput", "Marker"),
         type = "string",
         name = "Marker",
         target_id = prelude.String.id,
      }),
      NextMarker = schema.new({
         id = id.from(_N, "ListObjectsOutput", "NextMarker"),
         type = "string",
         name = "NextMarker",
         target_id = prelude.String.id,
      }),
      Contents = schema.new({
         id = id.from(_N, "ListObjectsOutput", "Contents"),
         type = "list",
         name = "Contents",
         target_id = prelude.Document.id,
         list_member = M.Object,
         traits = {
            [traits.XML_FLATTENED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "ListObjectsOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Prefix = schema.new({
         id = id.from(_N, "ListObjectsOutput", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
      Delimiter = schema.new({
         id = id.from(_N, "ListObjectsOutput", "Delimiter"),
         type = "string",
         name = "Delimiter",
         target_id = prelude.String.id,
      }),
      MaxKeys = schema.new({
         id = id.from(_N, "ListObjectsOutput", "MaxKeys"),
         type = "integer",
         name = "MaxKeys",
         target_id = prelude.Integer.id,
      }),
      CommonPrefixes = schema.new({
         id = id.from(_N, "ListObjectsOutput", "CommonPrefixes"),
         type = "list",
         name = "CommonPrefixes",
         target_id = prelude.Document.id,
         list_member = M.CommonPrefix,
         traits = {
            [traits.XML_FLATTENED] = {},
         },
      }),
      EncodingType = schema.new({
         id = id.from(_N, "ListObjectsOutput", "EncodingType"),
         type = "string",
         name = "EncodingType",
         target_id = prelude.String.id,
      }),
      RequestCharged = schema.new({
         id = id.from(_N, "ListObjectsOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
   },
})

M.ListObjectsV2Input = schema.new({
   id = id.from(_N, "ListObjectsV2Request"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "ListObjectsV2Input", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Delimiter = schema.new({
         id = id.from(_N, "ListObjectsV2Input", "Delimiter"),
         type = "string",
         name = "Delimiter",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "delimiter" },
         },
      }),
      EncodingType = schema.new({
         id = id.from(_N, "ListObjectsV2Input", "EncodingType"),
         type = "string",
         name = "EncodingType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "encoding-type" },
         },
      }),
      MaxKeys = schema.new({
         id = id.from(_N, "ListObjectsV2Input", "MaxKeys"),
         type = "integer",
         name = "MaxKeys",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-keys" },
         },
      }),
      Prefix = schema.new({
         id = id.from(_N, "ListObjectsV2Input", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "prefix" },
         },
      }),
      ContinuationToken = schema.new({
         id = id.from(_N, "ListObjectsV2Input", "ContinuationToken"),
         type = "string",
         name = "ContinuationToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "continuation-token" },
         },
      }),
      FetchOwner = schema.new({
         id = id.from(_N, "ListObjectsV2Input", "FetchOwner"),
         type = "boolean",
         name = "FetchOwner",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "fetch-owner" },
         },
      }),
      StartAfter = schema.new({
         id = id.from(_N, "ListObjectsV2Input", "StartAfter"),
         type = "string",
         name = "StartAfter",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "start-after" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "ListObjectsV2Input", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "ListObjectsV2Input", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      OptionalObjectAttributes = schema.new({
         id = id.from(_N, "ListObjectsV2Input", "OptionalObjectAttributes"),
         type = "list",
         name = "OptionalObjectAttributes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-optional-object-attributes" },
         },
      }),
   },
})

M.ListObjectsV2Output = schema.new({
   id = id.from(_N, "ListObjectsV2Output"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "ListBucketResult" },
   },
   members = {
      IsTruncated = schema.new({
         id = id.from(_N, "ListObjectsV2Output", "IsTruncated"),
         type = "boolean",
         name = "IsTruncated",
         target_id = prelude.Boolean.id,
      }),
      Contents = schema.new({
         id = id.from(_N, "ListObjectsV2Output", "Contents"),
         type = "list",
         name = "Contents",
         target_id = prelude.Document.id,
         list_member = M.Object,
         traits = {
            [traits.XML_FLATTENED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "ListObjectsV2Output", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Prefix = schema.new({
         id = id.from(_N, "ListObjectsV2Output", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
      Delimiter = schema.new({
         id = id.from(_N, "ListObjectsV2Output", "Delimiter"),
         type = "string",
         name = "Delimiter",
         target_id = prelude.String.id,
      }),
      MaxKeys = schema.new({
         id = id.from(_N, "ListObjectsV2Output", "MaxKeys"),
         type = "integer",
         name = "MaxKeys",
         target_id = prelude.Integer.id,
      }),
      CommonPrefixes = schema.new({
         id = id.from(_N, "ListObjectsV2Output", "CommonPrefixes"),
         type = "list",
         name = "CommonPrefixes",
         target_id = prelude.Document.id,
         list_member = M.CommonPrefix,
         traits = {
            [traits.XML_FLATTENED] = {},
         },
      }),
      EncodingType = schema.new({
         id = id.from(_N, "ListObjectsV2Output", "EncodingType"),
         type = "string",
         name = "EncodingType",
         target_id = prelude.String.id,
      }),
      KeyCount = schema.new({
         id = id.from(_N, "ListObjectsV2Output", "KeyCount"),
         type = "integer",
         name = "KeyCount",
         target_id = prelude.Integer.id,
      }),
      ContinuationToken = schema.new({
         id = id.from(_N, "ListObjectsV2Output", "ContinuationToken"),
         type = "string",
         name = "ContinuationToken",
         target_id = prelude.String.id,
      }),
      NextContinuationToken = schema.new({
         id = id.from(_N, "ListObjectsV2Output", "NextContinuationToken"),
         type = "string",
         name = "NextContinuationToken",
         target_id = prelude.String.id,
      }),
      StartAfter = schema.new({
         id = id.from(_N, "ListObjectsV2Output", "StartAfter"),
         type = "string",
         name = "StartAfter",
         target_id = prelude.String.id,
      }),
      RequestCharged = schema.new({
         id = id.from(_N, "ListObjectsV2Output", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
   },
})

M.ListObjectVersionsInput = schema.new({
   id = id.from(_N, "ListObjectVersionsRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "ListObjectVersionsInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Delimiter = schema.new({
         id = id.from(_N, "ListObjectVersionsInput", "Delimiter"),
         type = "string",
         name = "Delimiter",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "delimiter" },
         },
      }),
      EncodingType = schema.new({
         id = id.from(_N, "ListObjectVersionsInput", "EncodingType"),
         type = "string",
         name = "EncodingType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "encoding-type" },
         },
      }),
      KeyMarker = schema.new({
         id = id.from(_N, "ListObjectVersionsInput", "KeyMarker"),
         type = "string",
         name = "KeyMarker",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "key-marker" },
         },
      }),
      MaxKeys = schema.new({
         id = id.from(_N, "ListObjectVersionsInput", "MaxKeys"),
         type = "integer",
         name = "MaxKeys",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-keys" },
         },
      }),
      Prefix = schema.new({
         id = id.from(_N, "ListObjectVersionsInput", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "prefix" },
         },
      }),
      VersionIdMarker = schema.new({
         id = id.from(_N, "ListObjectVersionsInput", "VersionIdMarker"),
         type = "string",
         name = "VersionIdMarker",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "version-id-marker" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "ListObjectVersionsInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "ListObjectVersionsInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      OptionalObjectAttributes = schema.new({
         id = id.from(_N, "ListObjectVersionsInput", "OptionalObjectAttributes"),
         type = "list",
         name = "OptionalObjectAttributes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-optional-object-attributes" },
         },
      }),
   },
})

M.DeleteMarkerEntry = schema.new({
   id = id.from(_N, "DeleteMarkerEntry"),
   type = "structure",
   members = {
      Owner = schema.new({
         id = id.from(_N, "DeleteMarkerEntry", "Owner"),
         type = "structure",
         name = "Owner",
         target_id = id.from(_N, "Owner"),
         target = M.Owner,
      }),
      Key = schema.new({
         id = id.from(_N, "DeleteMarkerEntry", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
      }),
      VersionId = schema.new({
         id = id.from(_N, "DeleteMarkerEntry", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
      }),
      IsLatest = schema.new({
         id = id.from(_N, "DeleteMarkerEntry", "IsLatest"),
         type = "boolean",
         name = "IsLatest",
         target_id = prelude.Boolean.id,
      }),
      LastModified = schema.new({
         id = id.from(_N, "DeleteMarkerEntry", "LastModified"),
         type = "timestamp",
         name = "LastModified",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ObjectVersion = schema.new({
   id = id.from(_N, "ObjectVersion"),
   type = "structure",
   members = {
      ETag = schema.new({
         id = id.from(_N, "ObjectVersion", "ETag"),
         type = "string",
         name = "ETag",
         target_id = prelude.String.id,
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "ObjectVersion", "ChecksumAlgorithm"),
         type = "list",
         name = "ChecksumAlgorithm",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.XML_FLATTENED] = {},
         },
      }),
      ChecksumType = schema.new({
         id = id.from(_N, "ObjectVersion", "ChecksumType"),
         type = "string",
         name = "ChecksumType",
         target_id = prelude.String.id,
      }),
      Size = schema.new({
         id = id.from(_N, "ObjectVersion", "Size"),
         type = "long",
         name = "Size",
         target_id = prelude.Long.id,
      }),
      StorageClass = schema.new({
         id = id.from(_N, "ObjectVersion", "StorageClass"),
         type = "string",
         name = "StorageClass",
         target_id = prelude.String.id,
      }),
      Key = schema.new({
         id = id.from(_N, "ObjectVersion", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
      }),
      VersionId = schema.new({
         id = id.from(_N, "ObjectVersion", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
      }),
      IsLatest = schema.new({
         id = id.from(_N, "ObjectVersion", "IsLatest"),
         type = "boolean",
         name = "IsLatest",
         target_id = prelude.Boolean.id,
      }),
      LastModified = schema.new({
         id = id.from(_N, "ObjectVersion", "LastModified"),
         type = "timestamp",
         name = "LastModified",
         target_id = prelude.Timestamp.id,
      }),
      Owner = schema.new({
         id = id.from(_N, "ObjectVersion", "Owner"),
         type = "structure",
         name = "Owner",
         target_id = id.from(_N, "Owner"),
         target = M.Owner,
      }),
      RestoreStatus = schema.new({
         id = id.from(_N, "ObjectVersion", "RestoreStatus"),
         type = "structure",
         name = "RestoreStatus",
         target_id = id.from(_N, "RestoreStatus"),
         target = M.RestoreStatus,
      }),
   },
})

M.ListObjectVersionsOutput = schema.new({
   id = id.from(_N, "ListObjectVersionsOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "ListVersionsResult" },
   },
   members = {
      IsTruncated = schema.new({
         id = id.from(_N, "ListObjectVersionsOutput", "IsTruncated"),
         type = "boolean",
         name = "IsTruncated",
         target_id = prelude.Boolean.id,
      }),
      KeyMarker = schema.new({
         id = id.from(_N, "ListObjectVersionsOutput", "KeyMarker"),
         type = "string",
         name = "KeyMarker",
         target_id = prelude.String.id,
      }),
      VersionIdMarker = schema.new({
         id = id.from(_N, "ListObjectVersionsOutput", "VersionIdMarker"),
         type = "string",
         name = "VersionIdMarker",
         target_id = prelude.String.id,
      }),
      NextKeyMarker = schema.new({
         id = id.from(_N, "ListObjectVersionsOutput", "NextKeyMarker"),
         type = "string",
         name = "NextKeyMarker",
         target_id = prelude.String.id,
      }),
      NextVersionIdMarker = schema.new({
         id = id.from(_N, "ListObjectVersionsOutput", "NextVersionIdMarker"),
         type = "string",
         name = "NextVersionIdMarker",
         target_id = prelude.String.id,
      }),
      Versions = schema.new({
         id = id.from(_N, "ListObjectVersionsOutput", "Versions"),
         type = "list",
         name = "Versions",
         target_id = prelude.Document.id,
         list_member = M.ObjectVersion,
         traits = {
            [traits.XML_NAME] = { name = "Version" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      DeleteMarkers = schema.new({
         id = id.from(_N, "ListObjectVersionsOutput", "DeleteMarkers"),
         type = "list",
         name = "DeleteMarkers",
         target_id = prelude.Document.id,
         list_member = M.DeleteMarkerEntry,
         traits = {
            [traits.XML_NAME] = { name = "DeleteMarker" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "ListObjectVersionsOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Prefix = schema.new({
         id = id.from(_N, "ListObjectVersionsOutput", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
      Delimiter = schema.new({
         id = id.from(_N, "ListObjectVersionsOutput", "Delimiter"),
         type = "string",
         name = "Delimiter",
         target_id = prelude.String.id,
      }),
      MaxKeys = schema.new({
         id = id.from(_N, "ListObjectVersionsOutput", "MaxKeys"),
         type = "integer",
         name = "MaxKeys",
         target_id = prelude.Integer.id,
      }),
      CommonPrefixes = schema.new({
         id = id.from(_N, "ListObjectVersionsOutput", "CommonPrefixes"),
         type = "list",
         name = "CommonPrefixes",
         target_id = prelude.Document.id,
         list_member = M.CommonPrefix,
         traits = {
            [traits.XML_FLATTENED] = {},
         },
      }),
      EncodingType = schema.new({
         id = id.from(_N, "ListObjectVersionsOutput", "EncodingType"),
         type = "string",
         name = "EncodingType",
         target_id = prelude.String.id,
      }),
      RequestCharged = schema.new({
         id = id.from(_N, "ListObjectVersionsOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
   },
})

M.ListPartsInput = schema.new({
   id = id.from(_N, "ListPartsRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "ListPartsInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Key = schema.new({
         id = id.from(_N, "ListPartsInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      MaxParts = schema.new({
         id = id.from(_N, "ListPartsInput", "MaxParts"),
         type = "integer",
         name = "MaxParts",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-parts" },
         },
      }),
      PartNumberMarker = schema.new({
         id = id.from(_N, "ListPartsInput", "PartNumberMarker"),
         type = "string",
         name = "PartNumberMarker",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "part-number-marker" },
         },
      }),
      UploadId = schema.new({
         id = id.from(_N, "ListPartsInput", "UploadId"),
         type = "string",
         name = "UploadId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "uploadId" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "ListPartsInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "ListPartsInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      SSECustomerAlgorithm = schema.new({
         id = id.from(_N, "ListPartsInput", "SSECustomerAlgorithm"),
         type = "string",
         name = "SSECustomerAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-algorithm" },
         },
      }),
      SSECustomerKey = schema.new({
         id = id.from(_N, "ListPartsInput", "SSECustomerKey"),
         type = "string",
         name = "SSECustomerKey",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key" },
         },
      }),
      SSECustomerKeyMD5 = schema.new({
         id = id.from(_N, "ListPartsInput", "SSECustomerKeyMD5"),
         type = "string",
         name = "SSECustomerKeyMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key-MD5" },
         },
      }),
   },
})

M.Part = schema.new({
   id = id.from(_N, "Part"),
   type = "structure",
   members = {
      PartNumber = schema.new({
         id = id.from(_N, "Part", "PartNumber"),
         type = "integer",
         name = "PartNumber",
         target_id = prelude.Integer.id,
      }),
      LastModified = schema.new({
         id = id.from(_N, "Part", "LastModified"),
         type = "timestamp",
         name = "LastModified",
         target_id = prelude.Timestamp.id,
      }),
      ETag = schema.new({
         id = id.from(_N, "Part", "ETag"),
         type = "string",
         name = "ETag",
         target_id = prelude.String.id,
      }),
      Size = schema.new({
         id = id.from(_N, "Part", "Size"),
         type = "long",
         name = "Size",
         target_id = prelude.Long.id,
      }),
      ChecksumCRC32 = schema.new({
         id = id.from(_N, "Part", "ChecksumCRC32"),
         type = "string",
         name = "ChecksumCRC32",
         target_id = prelude.String.id,
      }),
      ChecksumCRC32C = schema.new({
         id = id.from(_N, "Part", "ChecksumCRC32C"),
         type = "string",
         name = "ChecksumCRC32C",
         target_id = prelude.String.id,
      }),
      ChecksumCRC64NVME = schema.new({
         id = id.from(_N, "Part", "ChecksumCRC64NVME"),
         type = "string",
         name = "ChecksumCRC64NVME",
         target_id = prelude.String.id,
      }),
      ChecksumSHA1 = schema.new({
         id = id.from(_N, "Part", "ChecksumSHA1"),
         type = "string",
         name = "ChecksumSHA1",
         target_id = prelude.String.id,
      }),
      ChecksumSHA256 = schema.new({
         id = id.from(_N, "Part", "ChecksumSHA256"),
         type = "string",
         name = "ChecksumSHA256",
         target_id = prelude.String.id,
      }),
      ChecksumSHA512 = schema.new({
         id = id.from(_N, "Part", "ChecksumSHA512"),
         type = "string",
         name = "ChecksumSHA512",
         target_id = prelude.String.id,
      }),
      ChecksumMD5 = schema.new({
         id = id.from(_N, "Part", "ChecksumMD5"),
         type = "string",
         name = "ChecksumMD5",
         target_id = prelude.String.id,
      }),
      ChecksumXXHASH64 = schema.new({
         id = id.from(_N, "Part", "ChecksumXXHASH64"),
         type = "string",
         name = "ChecksumXXHASH64",
         target_id = prelude.String.id,
      }),
      ChecksumXXHASH3 = schema.new({
         id = id.from(_N, "Part", "ChecksumXXHASH3"),
         type = "string",
         name = "ChecksumXXHASH3",
         target_id = prelude.String.id,
      }),
      ChecksumXXHASH128 = schema.new({
         id = id.from(_N, "Part", "ChecksumXXHASH128"),
         type = "string",
         name = "ChecksumXXHASH128",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPartsOutput = schema.new({
   id = id.from(_N, "ListPartsOutput"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "ListPartsResult" },
   },
   members = {
      AbortDate = schema.new({
         id = id.from(_N, "ListPartsOutput", "AbortDate"),
         type = "timestamp",
         name = "AbortDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-abort-date" },
         },
      }),
      AbortRuleId = schema.new({
         id = id.from(_N, "ListPartsOutput", "AbortRuleId"),
         type = "string",
         name = "AbortRuleId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-abort-rule-id" },
         },
      }),
      Bucket = schema.new({
         id = id.from(_N, "ListPartsOutput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
      }),
      Key = schema.new({
         id = id.from(_N, "ListPartsOutput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
      }),
      UploadId = schema.new({
         id = id.from(_N, "ListPartsOutput", "UploadId"),
         type = "string",
         name = "UploadId",
         target_id = prelude.String.id,
      }),
      PartNumberMarker = schema.new({
         id = id.from(_N, "ListPartsOutput", "PartNumberMarker"),
         type = "string",
         name = "PartNumberMarker",
         target_id = prelude.String.id,
      }),
      NextPartNumberMarker = schema.new({
         id = id.from(_N, "ListPartsOutput", "NextPartNumberMarker"),
         type = "string",
         name = "NextPartNumberMarker",
         target_id = prelude.String.id,
      }),
      MaxParts = schema.new({
         id = id.from(_N, "ListPartsOutput", "MaxParts"),
         type = "integer",
         name = "MaxParts",
         target_id = prelude.Integer.id,
      }),
      IsTruncated = schema.new({
         id = id.from(_N, "ListPartsOutput", "IsTruncated"),
         type = "boolean",
         name = "IsTruncated",
         target_id = prelude.Boolean.id,
      }),
      Parts = schema.new({
         id = id.from(_N, "ListPartsOutput", "Parts"),
         type = "list",
         name = "Parts",
         target_id = prelude.Document.id,
         list_member = M.Part,
         traits = {
            [traits.XML_NAME] = { name = "Part" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      Initiator = schema.new({
         id = id.from(_N, "ListPartsOutput", "Initiator"),
         type = "structure",
         name = "Initiator",
         target_id = id.from(_N, "Initiator"),
         target = M.Initiator,
      }),
      Owner = schema.new({
         id = id.from(_N, "ListPartsOutput", "Owner"),
         type = "structure",
         name = "Owner",
         target_id = id.from(_N, "Owner"),
         target = M.Owner,
      }),
      StorageClass = schema.new({
         id = id.from(_N, "ListPartsOutput", "StorageClass"),
         type = "string",
         name = "StorageClass",
         target_id = prelude.String.id,
      }),
      RequestCharged = schema.new({
         id = id.from(_N, "ListPartsOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "ListPartsOutput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
      }),
      ChecksumType = schema.new({
         id = id.from(_N, "ListPartsOutput", "ChecksumType"),
         type = "string",
         name = "ChecksumType",
         target_id = prelude.String.id,
      }),
   },
})

M.PutBucketAbacInput = schema.new({
   id = id.from(_N, "PutBucketAbacRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "PutBucketAbacInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "PutBucketAbacInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "PutBucketAbacInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutBucketAbacInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      AbacStatus = schema.new({
         id = id.from(_N, "PutBucketAbacInput", "AbacStatus"),
         type = "structure",
         name = "AbacStatus",
         target_id = id.from(_N, "AbacStatus"),
         target = M.AbacStatus,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "AbacStatus" },
         },
      }),
   },
})

M.PutBucketAbacOutput = prelude.Unit

M.PutBucketAccelerateConfigurationInput = schema.new({
   id = id.from(_N, "PutBucketAccelerateConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "PutBucketAccelerateConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      AccelerateConfiguration = schema.new({
         id = id.from(_N, "PutBucketAccelerateConfigurationInput", "AccelerateConfiguration"),
         type = "structure",
         name = "AccelerateConfiguration",
         target_id = id.from(_N, "AccelerateConfiguration"),
         target = M.AccelerateConfiguration,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "AccelerateConfiguration" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutBucketAccelerateConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "PutBucketAccelerateConfigurationInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
   },
})

M.PutBucketAccelerateConfigurationOutput = prelude.Unit

M.PutBucketAclInput = schema.new({
   id = id.from(_N, "PutBucketAclRequest"),
   type = "structure",
   members = {
      ACL = schema.new({
         id = id.from(_N, "PutBucketAclInput", "ACL"),
         type = "string",
         name = "ACL",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-acl" },
         },
      }),
      AccessControlPolicy = schema.new({
         id = id.from(_N, "PutBucketAclInput", "AccessControlPolicy"),
         type = "structure",
         name = "AccessControlPolicy",
         target_id = id.from(_N, "AccessControlPolicy"),
         target = M.AccessControlPolicy,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "AccessControlPolicy" },
         },
      }),
      Bucket = schema.new({
         id = id.from(_N, "PutBucketAclInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "PutBucketAclInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "PutBucketAclInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      GrantFullControl = schema.new({
         id = id.from(_N, "PutBucketAclInput", "GrantFullControl"),
         type = "string",
         name = "GrantFullControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-full-control" },
         },
      }),
      GrantRead = schema.new({
         id = id.from(_N, "PutBucketAclInput", "GrantRead"),
         type = "string",
         name = "GrantRead",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-read" },
         },
      }),
      GrantReadACP = schema.new({
         id = id.from(_N, "PutBucketAclInput", "GrantReadACP"),
         type = "string",
         name = "GrantReadACP",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-read-acp" },
         },
      }),
      GrantWrite = schema.new({
         id = id.from(_N, "PutBucketAclInput", "GrantWrite"),
         type = "string",
         name = "GrantWrite",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-write" },
         },
      }),
      GrantWriteACP = schema.new({
         id = id.from(_N, "PutBucketAclInput", "GrantWriteACP"),
         type = "string",
         name = "GrantWriteACP",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-write-acp" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutBucketAclInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.PutBucketAclOutput = prelude.Unit

M.PutBucketAnalyticsConfigurationInput = schema.new({
   id = id.from(_N, "PutBucketAnalyticsConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "PutBucketAnalyticsConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "PutBucketAnalyticsConfigurationInput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "id" },
         },
      }),
      AnalyticsConfiguration = schema.new({
         id = id.from(_N, "PutBucketAnalyticsConfigurationInput", "AnalyticsConfiguration"),
         type = "structure",
         name = "AnalyticsConfiguration",
         target_id = id.from(_N, "AnalyticsConfiguration"),
         target = M.AnalyticsConfiguration,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "AnalyticsConfiguration" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutBucketAnalyticsConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.PutBucketAnalyticsConfigurationOutput = prelude.Unit

M.CORSConfiguration = schema.new({
   id = id.from(_N, "CORSConfiguration"),
   type = "structure",
   members = {
      CORSRules = schema.new({
         id = id.from(_N, "CORSConfiguration", "CORSRules"),
         type = "list",
         name = "CORSRules",
         target_id = prelude.Document.id,
         list_member = M.CORSRule,
         traits = {
            [traits.REQUIRED] = {},
            [traits.XML_NAME] = { name = "CORSRule" },
            [traits.XML_FLATTENED] = {},
         },
      }),
   },
})

M.PutBucketCorsInput = schema.new({
   id = id.from(_N, "PutBucketCorsRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "PutBucketCorsInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      CORSConfiguration = schema.new({
         id = id.from(_N, "PutBucketCorsInput", "CORSConfiguration"),
         type = "structure",
         name = "CORSConfiguration",
         target_id = id.from(_N, "CORSConfiguration"),
         target = M.CORSConfiguration,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "CORSConfiguration" },
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "PutBucketCorsInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "PutBucketCorsInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutBucketCorsInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.PutBucketCorsOutput = prelude.Unit

M.PutBucketEncryptionInput = schema.new({
   id = id.from(_N, "PutBucketEncryptionRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "PutBucketEncryptionInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "PutBucketEncryptionInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "PutBucketEncryptionInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      ServerSideEncryptionConfiguration = schema.new({
         id = id.from(_N, "PutBucketEncryptionInput", "ServerSideEncryptionConfiguration"),
         type = "structure",
         name = "ServerSideEncryptionConfiguration",
         target_id = id.from(_N, "ServerSideEncryptionConfiguration"),
         target = M.ServerSideEncryptionConfiguration,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "ServerSideEncryptionConfiguration" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutBucketEncryptionInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.PutBucketEncryptionOutput = prelude.Unit

M.PutBucketIntelligentTieringConfigurationInput = schema.new({
   id = id.from(_N, "PutBucketIntelligentTieringConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "PutBucketIntelligentTieringConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "PutBucketIntelligentTieringConfigurationInput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "id" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutBucketIntelligentTieringConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      IntelligentTieringConfiguration = schema.new({
         id = id.from(_N, "PutBucketIntelligentTieringConfigurationInput", "IntelligentTieringConfiguration"),
         type = "structure",
         name = "IntelligentTieringConfiguration",
         target_id = id.from(_N, "IntelligentTieringConfiguration"),
         target = M.IntelligentTieringConfiguration,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "IntelligentTieringConfiguration" },
         },
      }),
   },
})

M.PutBucketIntelligentTieringConfigurationOutput = prelude.Unit

M.PutBucketInventoryConfigurationInput = schema.new({
   id = id.from(_N, "PutBucketInventoryConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "PutBucketInventoryConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "PutBucketInventoryConfigurationInput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "id" },
         },
      }),
      InventoryConfiguration = schema.new({
         id = id.from(_N, "PutBucketInventoryConfigurationInput", "InventoryConfiguration"),
         type = "structure",
         name = "InventoryConfiguration",
         target_id = id.from(_N, "InventoryConfiguration"),
         target = M.InventoryConfiguration,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "InventoryConfiguration" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutBucketInventoryConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.PutBucketInventoryConfigurationOutput = prelude.Unit

M.BucketLifecycleConfiguration = schema.new({
   id = id.from(_N, "BucketLifecycleConfiguration"),
   type = "structure",
   members = {
      Rules = schema.new({
         id = id.from(_N, "BucketLifecycleConfiguration", "Rules"),
         type = "list",
         name = "Rules",
         target_id = prelude.Document.id,
         list_member = M.LifecycleRule,
         traits = {
            [traits.REQUIRED] = {},
            [traits.XML_NAME] = { name = "Rule" },
            [traits.XML_FLATTENED] = {},
         },
      }),
   },
})

M.PutBucketLifecycleConfigurationInput = schema.new({
   id = id.from(_N, "PutBucketLifecycleConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "PutBucketLifecycleConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "PutBucketLifecycleConfigurationInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      LifecycleConfiguration = schema.new({
         id = id.from(_N, "PutBucketLifecycleConfigurationInput", "LifecycleConfiguration"),
         type = "structure",
         name = "LifecycleConfiguration",
         target_id = id.from(_N, "BucketLifecycleConfiguration"),
         target = M.BucketLifecycleConfiguration,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "LifecycleConfiguration" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutBucketLifecycleConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      TransitionDefaultMinimumObjectSize = schema.new({
         id = id.from(_N, "PutBucketLifecycleConfigurationInput", "TransitionDefaultMinimumObjectSize"),
         type = "string",
         name = "TransitionDefaultMinimumObjectSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-transition-default-minimum-object-size" },
         },
      }),
   },
})

M.PutBucketLifecycleConfigurationOutput = schema.new({
   id = id.from(_N, "PutBucketLifecycleConfigurationOutput"),
   type = "structure",
   members = {
      TransitionDefaultMinimumObjectSize = schema.new({
         id = id.from(_N, "PutBucketLifecycleConfigurationOutput", "TransitionDefaultMinimumObjectSize"),
         type = "string",
         name = "TransitionDefaultMinimumObjectSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-transition-default-minimum-object-size" },
         },
      }),
   },
})

M.BucketLoggingStatus = schema.new({
   id = id.from(_N, "BucketLoggingStatus"),
   type = "structure",
   members = {
      LoggingEnabled = schema.new({
         id = id.from(_N, "BucketLoggingStatus", "LoggingEnabled"),
         type = "structure",
         name = "LoggingEnabled",
         target_id = id.from(_N, "LoggingEnabled"),
         target = M.LoggingEnabled,
      }),
   },
})

M.PutBucketLoggingInput = schema.new({
   id = id.from(_N, "PutBucketLoggingRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "PutBucketLoggingInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      BucketLoggingStatus = schema.new({
         id = id.from(_N, "PutBucketLoggingInput", "BucketLoggingStatus"),
         type = "structure",
         name = "BucketLoggingStatus",
         target_id = id.from(_N, "BucketLoggingStatus"),
         target = M.BucketLoggingStatus,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "BucketLoggingStatus" },
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "PutBucketLoggingInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "PutBucketLoggingInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutBucketLoggingInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.PutBucketLoggingOutput = prelude.Unit

M.PutBucketMetricsConfigurationInput = schema.new({
   id = id.from(_N, "PutBucketMetricsConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "PutBucketMetricsConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "PutBucketMetricsConfigurationInput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "id" },
         },
      }),
      MetricsConfiguration = schema.new({
         id = id.from(_N, "PutBucketMetricsConfigurationInput", "MetricsConfiguration"),
         type = "structure",
         name = "MetricsConfiguration",
         target_id = id.from(_N, "MetricsConfiguration"),
         target = M.MetricsConfiguration,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "MetricsConfiguration" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutBucketMetricsConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.PutBucketMetricsConfigurationOutput = prelude.Unit

M.NotificationConfiguration = schema.new({
   id = id.from(_N, "NotificationConfiguration"),
   type = "structure",
   members = {
      TopicConfigurations = schema.new({
         id = id.from(_N, "NotificationConfiguration", "TopicConfigurations"),
         type = "list",
         name = "TopicConfigurations",
         target_id = prelude.Document.id,
         list_member = M.TopicConfiguration,
         traits = {
            [traits.XML_NAME] = { name = "TopicConfiguration" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      QueueConfigurations = schema.new({
         id = id.from(_N, "NotificationConfiguration", "QueueConfigurations"),
         type = "list",
         name = "QueueConfigurations",
         target_id = prelude.Document.id,
         list_member = M.QueueConfiguration,
         traits = {
            [traits.XML_NAME] = { name = "QueueConfiguration" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      LambdaFunctionConfigurations = schema.new({
         id = id.from(_N, "NotificationConfiguration", "LambdaFunctionConfigurations"),
         type = "list",
         name = "LambdaFunctionConfigurations",
         target_id = prelude.Document.id,
         list_member = M.LambdaFunctionConfiguration,
         traits = {
            [traits.XML_NAME] = { name = "CloudFunctionConfiguration" },
            [traits.XML_FLATTENED] = {},
         },
      }),
      EventBridgeConfiguration = schema.new({
         id = id.from(_N, "NotificationConfiguration", "EventBridgeConfiguration"),
         type = "structure",
         name = "EventBridgeConfiguration",
         target_id = id.from(_N, "EventBridgeConfiguration"),
         target = M.EventBridgeConfiguration,
      }),
   },
})

M.PutBucketNotificationConfigurationInput = schema.new({
   id = id.from(_N, "PutBucketNotificationConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "PutBucketNotificationConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      NotificationConfiguration = schema.new({
         id = id.from(_N, "PutBucketNotificationConfigurationInput", "NotificationConfiguration"),
         type = "structure",
         name = "NotificationConfiguration",
         target_id = id.from(_N, "NotificationConfiguration"),
         target = M.NotificationConfiguration,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "NotificationConfiguration" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutBucketNotificationConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      SkipDestinationValidation = schema.new({
         id = id.from(_N, "PutBucketNotificationConfigurationInput", "SkipDestinationValidation"),
         type = "boolean",
         name = "SkipDestinationValidation",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-skip-destination-validation" },
         },
      }),
   },
})

M.PutBucketNotificationConfigurationOutput = prelude.Unit

M.PutBucketOwnershipControlsInput = schema.new({
   id = id.from(_N, "PutBucketOwnershipControlsRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "PutBucketOwnershipControlsInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "PutBucketOwnershipControlsInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutBucketOwnershipControlsInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      OwnershipControls = schema.new({
         id = id.from(_N, "PutBucketOwnershipControlsInput", "OwnershipControls"),
         type = "structure",
         name = "OwnershipControls",
         target_id = id.from(_N, "OwnershipControls"),
         target = M.OwnershipControls,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "OwnershipControls" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "PutBucketOwnershipControlsInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
   },
})

M.PutBucketOwnershipControlsOutput = prelude.Unit

M.PutBucketPolicyInput = schema.new({
   id = id.from(_N, "PutBucketPolicyRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "PutBucketPolicyInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "PutBucketPolicyInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "PutBucketPolicyInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      ConfirmRemoveSelfBucketAccess = schema.new({
         id = id.from(_N, "PutBucketPolicyInput", "ConfirmRemoveSelfBucketAccess"),
         type = "boolean",
         name = "ConfirmRemoveSelfBucketAccess",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-confirm-remove-self-bucket-access" },
         },
      }),
      Policy = schema.new({
         id = id.from(_N, "PutBucketPolicyInput", "Policy"),
         type = "string",
         name = "Policy",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutBucketPolicyInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.PutBucketPolicyOutput = prelude.Unit

M.PutBucketReplicationInput = schema.new({
   id = id.from(_N, "PutBucketReplicationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "PutBucketReplicationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "PutBucketReplicationInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "PutBucketReplicationInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      ReplicationConfiguration = schema.new({
         id = id.from(_N, "PutBucketReplicationInput", "ReplicationConfiguration"),
         type = "structure",
         name = "ReplicationConfiguration",
         target_id = id.from(_N, "ReplicationConfiguration"),
         target = M.ReplicationConfiguration,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "ReplicationConfiguration" },
         },
      }),
      Token = schema.new({
         id = id.from(_N, "PutBucketReplicationInput", "Token"),
         type = "string",
         name = "Token",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-bucket-object-lock-token" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutBucketReplicationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.PutBucketReplicationOutput = prelude.Unit

M.RequestPaymentConfiguration = schema.new({
   id = id.from(_N, "RequestPaymentConfiguration"),
   type = "structure",
   members = {
      Payer = schema.new({
         id = id.from(_N, "RequestPaymentConfiguration", "Payer"),
         type = "string",
         name = "Payer",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutBucketRequestPaymentInput = schema.new({
   id = id.from(_N, "PutBucketRequestPaymentRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "PutBucketRequestPaymentInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "PutBucketRequestPaymentInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "PutBucketRequestPaymentInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      RequestPaymentConfiguration = schema.new({
         id = id.from(_N, "PutBucketRequestPaymentInput", "RequestPaymentConfiguration"),
         type = "structure",
         name = "RequestPaymentConfiguration",
         target_id = id.from(_N, "RequestPaymentConfiguration"),
         target = M.RequestPaymentConfiguration,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "RequestPaymentConfiguration" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutBucketRequestPaymentInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.PutBucketRequestPaymentOutput = prelude.Unit

M.Tagging = schema.new({
   id = id.from(_N, "Tagging"),
   type = "structure",
   members = {
      TagSet = schema.new({
         id = id.from(_N, "Tagging", "TagSet"),
         type = "list",
         name = "TagSet",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutBucketTaggingInput = schema.new({
   id = id.from(_N, "PutBucketTaggingRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "PutBucketTaggingInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "PutBucketTaggingInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "PutBucketTaggingInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      Tagging = schema.new({
         id = id.from(_N, "PutBucketTaggingInput", "Tagging"),
         type = "structure",
         name = "Tagging",
         target_id = id.from(_N, "Tagging"),
         target = M.Tagging,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "Tagging" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutBucketTaggingInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.PutBucketTaggingOutput = prelude.Unit

M.VersioningConfiguration = schema.new({
   id = id.from(_N, "VersioningConfiguration"),
   type = "structure",
   members = {
      MFADelete = schema.new({
         id = id.from(_N, "VersioningConfiguration", "MFADelete"),
         type = "string",
         name = "MFADelete",
         target_id = prelude.String.id,
         traits = {
            [traits.XML_NAME] = { name = "MfaDelete" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "VersioningConfiguration", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.PutBucketVersioningInput = schema.new({
   id = id.from(_N, "PutBucketVersioningRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "PutBucketVersioningInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "PutBucketVersioningInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "PutBucketVersioningInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      MFA = schema.new({
         id = id.from(_N, "PutBucketVersioningInput", "MFA"),
         type = "string",
         name = "MFA",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-mfa" },
         },
      }),
      VersioningConfiguration = schema.new({
         id = id.from(_N, "PutBucketVersioningInput", "VersioningConfiguration"),
         type = "structure",
         name = "VersioningConfiguration",
         target_id = id.from(_N, "VersioningConfiguration"),
         target = M.VersioningConfiguration,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "VersioningConfiguration" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutBucketVersioningInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.PutBucketVersioningOutput = prelude.Unit

M.WebsiteConfiguration = schema.new({
   id = id.from(_N, "WebsiteConfiguration"),
   type = "structure",
   members = {
      ErrorDocument = schema.new({
         id = id.from(_N, "WebsiteConfiguration", "ErrorDocument"),
         type = "structure",
         name = "ErrorDocument",
         target_id = id.from(_N, "ErrorDocument"),
         target = M.ErrorDocument,
      }),
      IndexDocument = schema.new({
         id = id.from(_N, "WebsiteConfiguration", "IndexDocument"),
         type = "structure",
         name = "IndexDocument",
         target_id = id.from(_N, "IndexDocument"),
         target = M.IndexDocument,
      }),
      RedirectAllRequestsTo = schema.new({
         id = id.from(_N, "WebsiteConfiguration", "RedirectAllRequestsTo"),
         type = "structure",
         name = "RedirectAllRequestsTo",
         target_id = id.from(_N, "RedirectAllRequestsTo"),
         target = M.RedirectAllRequestsTo,
      }),
      RoutingRules = schema.new({
         id = id.from(_N, "WebsiteConfiguration", "RoutingRules"),
         type = "list",
         name = "RoutingRules",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.RoutingRule, traits = { [traits.XML_NAME] = { name = "RoutingRule" } } }),
      }),
   },
})

M.PutBucketWebsiteInput = schema.new({
   id = id.from(_N, "PutBucketWebsiteRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "PutBucketWebsiteInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "PutBucketWebsiteInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "PutBucketWebsiteInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      WebsiteConfiguration = schema.new({
         id = id.from(_N, "PutBucketWebsiteInput", "WebsiteConfiguration"),
         type = "structure",
         name = "WebsiteConfiguration",
         target_id = id.from(_N, "WebsiteConfiguration"),
         target = M.WebsiteConfiguration,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "WebsiteConfiguration" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutBucketWebsiteInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.PutBucketWebsiteOutput = prelude.Unit

M.EncryptionTypeMismatch = schema.new({
   id = id.from(_N, "EncryptionTypeMismatch"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
})

M.InvalidRequest = schema.new({
   id = id.from(_N, "InvalidRequest"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
})

M.InvalidWriteOffset = schema.new({
   id = id.from(_N, "InvalidWriteOffset"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
})

M.PutObjectInput = schema.new({
   id = id.from(_N, "PutObjectRequest"),
   type = "structure",
   members = {
      ACL = schema.new({
         id = id.from(_N, "PutObjectInput", "ACL"),
         type = "string",
         name = "ACL",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-acl" },
         },
      }),
      Body = schema.new({
         id = id.from(_N, "PutObjectInput", "Body"),
         type = "blob",
         name = "Body",
         target_id = prelude.Blob.id,
         traits = {
            [traits.DEFAULT] = { value = "" },
            [traits.HTTP_PAYLOAD] = {},
            [traits.STREAMING] = {},
         },
         direct_traits = {
            [traits.DEFAULT] = { value = "" },
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      Bucket = schema.new({
         id = id.from(_N, "PutObjectInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      CacheControl = schema.new({
         id = id.from(_N, "PutObjectInput", "CacheControl"),
         type = "string",
         name = "CacheControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Cache-Control" },
         },
      }),
      ContentDisposition = schema.new({
         id = id.from(_N, "PutObjectInput", "ContentDisposition"),
         type = "string",
         name = "ContentDisposition",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Disposition" },
         },
      }),
      ContentEncoding = schema.new({
         id = id.from(_N, "PutObjectInput", "ContentEncoding"),
         type = "string",
         name = "ContentEncoding",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Encoding" },
         },
      }),
      ContentLanguage = schema.new({
         id = id.from(_N, "PutObjectInput", "ContentLanguage"),
         type = "string",
         name = "ContentLanguage",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Language" },
         },
      }),
      ContentLength = schema.new({
         id = id.from(_N, "PutObjectInput", "ContentLength"),
         type = "long",
         name = "ContentLength",
         target_id = prelude.Long.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Length" },
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "PutObjectInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ContentType = schema.new({
         id = id.from(_N, "PutObjectInput", "ContentType"),
         type = "string",
         name = "ContentType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Type" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "PutObjectInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      ChecksumCRC32 = schema.new({
         id = id.from(_N, "PutObjectInput", "ChecksumCRC32"),
         type = "string",
         name = "ChecksumCRC32",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-crc32" },
         },
      }),
      ChecksumCRC32C = schema.new({
         id = id.from(_N, "PutObjectInput", "ChecksumCRC32C"),
         type = "string",
         name = "ChecksumCRC32C",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-crc32c" },
         },
      }),
      ChecksumCRC64NVME = schema.new({
         id = id.from(_N, "PutObjectInput", "ChecksumCRC64NVME"),
         type = "string",
         name = "ChecksumCRC64NVME",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-crc64nvme" },
         },
      }),
      ChecksumSHA1 = schema.new({
         id = id.from(_N, "PutObjectInput", "ChecksumSHA1"),
         type = "string",
         name = "ChecksumSHA1",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-sha1" },
         },
      }),
      ChecksumSHA256 = schema.new({
         id = id.from(_N, "PutObjectInput", "ChecksumSHA256"),
         type = "string",
         name = "ChecksumSHA256",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-sha256" },
         },
      }),
      ChecksumSHA512 = schema.new({
         id = id.from(_N, "PutObjectInput", "ChecksumSHA512"),
         type = "string",
         name = "ChecksumSHA512",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-sha512" },
         },
      }),
      ChecksumMD5 = schema.new({
         id = id.from(_N, "PutObjectInput", "ChecksumMD5"),
         type = "string",
         name = "ChecksumMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-md5" },
         },
      }),
      ChecksumXXHASH64 = schema.new({
         id = id.from(_N, "PutObjectInput", "ChecksumXXHASH64"),
         type = "string",
         name = "ChecksumXXHASH64",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-xxhash64" },
         },
      }),
      ChecksumXXHASH3 = schema.new({
         id = id.from(_N, "PutObjectInput", "ChecksumXXHASH3"),
         type = "string",
         name = "ChecksumXXHASH3",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-xxhash3" },
         },
      }),
      ChecksumXXHASH128 = schema.new({
         id = id.from(_N, "PutObjectInput", "ChecksumXXHASH128"),
         type = "string",
         name = "ChecksumXXHASH128",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-xxhash128" },
         },
      }),
      Expires = schema.new({
         id = id.from(_N, "PutObjectInput", "Expires"),
         type = "string",
         name = "Expires",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Expires" },
         },
      }),
      IfMatch = schema.new({
         id = id.from(_N, "PutObjectInput", "IfMatch"),
         type = "string",
         name = "IfMatch",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "If-Match" },
         },
      }),
      IfNoneMatch = schema.new({
         id = id.from(_N, "PutObjectInput", "IfNoneMatch"),
         type = "string",
         name = "IfNoneMatch",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "If-None-Match" },
         },
      }),
      GrantFullControl = schema.new({
         id = id.from(_N, "PutObjectInput", "GrantFullControl"),
         type = "string",
         name = "GrantFullControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-full-control" },
         },
      }),
      GrantRead = schema.new({
         id = id.from(_N, "PutObjectInput", "GrantRead"),
         type = "string",
         name = "GrantRead",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-read" },
         },
      }),
      GrantReadACP = schema.new({
         id = id.from(_N, "PutObjectInput", "GrantReadACP"),
         type = "string",
         name = "GrantReadACP",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-read-acp" },
         },
      }),
      GrantWriteACP = schema.new({
         id = id.from(_N, "PutObjectInput", "GrantWriteACP"),
         type = "string",
         name = "GrantWriteACP",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-write-acp" },
         },
      }),
      Key = schema.new({
         id = id.from(_N, "PutObjectInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      WriteOffsetBytes = schema.new({
         id = id.from(_N, "PutObjectInput", "WriteOffsetBytes"),
         type = "long",
         name = "WriteOffsetBytes",
         target_id = prelude.Long.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-write-offset-bytes" },
         },
      }),
      Metadata = schema.new({
         id = id.from(_N, "PutObjectInput", "Metadata"),
         type = "map",
         name = "Metadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.HTTP_PREFIX_HEADERS] = { prefix = "x-amz-meta-" },
         },
      }),
      ServerSideEncryption = schema.new({
         id = id.from(_N, "PutObjectInput", "ServerSideEncryption"),
         type = "string",
         name = "ServerSideEncryption",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption" },
         },
      }),
      StorageClass = schema.new({
         id = id.from(_N, "PutObjectInput", "StorageClass"),
         type = "string",
         name = "StorageClass",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-storage-class" },
         },
      }),
      WebsiteRedirectLocation = schema.new({
         id = id.from(_N, "PutObjectInput", "WebsiteRedirectLocation"),
         type = "string",
         name = "WebsiteRedirectLocation",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-website-redirect-location" },
         },
      }),
      SSECustomerAlgorithm = schema.new({
         id = id.from(_N, "PutObjectInput", "SSECustomerAlgorithm"),
         type = "string",
         name = "SSECustomerAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-algorithm" },
         },
      }),
      SSECustomerKey = schema.new({
         id = id.from(_N, "PutObjectInput", "SSECustomerKey"),
         type = "string",
         name = "SSECustomerKey",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key" },
         },
      }),
      SSECustomerKeyMD5 = schema.new({
         id = id.from(_N, "PutObjectInput", "SSECustomerKeyMD5"),
         type = "string",
         name = "SSECustomerKeyMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key-MD5" },
         },
      }),
      SSEKMSKeyId = schema.new({
         id = id.from(_N, "PutObjectInput", "SSEKMSKeyId"),
         type = "string",
         name = "SSEKMSKeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-aws-kms-key-id" },
         },
      }),
      SSEKMSEncryptionContext = schema.new({
         id = id.from(_N, "PutObjectInput", "SSEKMSEncryptionContext"),
         type = "string",
         name = "SSEKMSEncryptionContext",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-context" },
         },
      }),
      BucketKeyEnabled = schema.new({
         id = id.from(_N, "PutObjectInput", "BucketKeyEnabled"),
         type = "boolean",
         name = "BucketKeyEnabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-bucket-key-enabled" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "PutObjectInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      Tagging = schema.new({
         id = id.from(_N, "PutObjectInput", "Tagging"),
         type = "string",
         name = "Tagging",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-tagging" },
         },
      }),
      ObjectLockMode = schema.new({
         id = id.from(_N, "PutObjectInput", "ObjectLockMode"),
         type = "string",
         name = "ObjectLockMode",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-object-lock-mode" },
         },
      }),
      ObjectLockRetainUntilDate = schema.new({
         id = id.from(_N, "PutObjectInput", "ObjectLockRetainUntilDate"),
         type = "timestamp",
         name = "ObjectLockRetainUntilDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-object-lock-retain-until-date" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-object-lock-retain-until-date" },
         },
      }),
      ObjectLockLegalHoldStatus = schema.new({
         id = id.from(_N, "PutObjectInput", "ObjectLockLegalHoldStatus"),
         type = "string",
         name = "ObjectLockLegalHoldStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-object-lock-legal-hold" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutObjectInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.PutObjectOutput = schema.new({
   id = id.from(_N, "PutObjectOutput"),
   type = "structure",
   members = {
      Expiration = schema.new({
         id = id.from(_N, "PutObjectOutput", "Expiration"),
         type = "string",
         name = "Expiration",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expiration" },
         },
      }),
      ETag = schema.new({
         id = id.from(_N, "PutObjectOutput", "ETag"),
         type = "string",
         name = "ETag",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "ETag" },
         },
      }),
      ChecksumCRC32 = schema.new({
         id = id.from(_N, "PutObjectOutput", "ChecksumCRC32"),
         type = "string",
         name = "ChecksumCRC32",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-crc32" },
         },
      }),
      ChecksumCRC32C = schema.new({
         id = id.from(_N, "PutObjectOutput", "ChecksumCRC32C"),
         type = "string",
         name = "ChecksumCRC32C",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-crc32c" },
         },
      }),
      ChecksumCRC64NVME = schema.new({
         id = id.from(_N, "PutObjectOutput", "ChecksumCRC64NVME"),
         type = "string",
         name = "ChecksumCRC64NVME",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-crc64nvme" },
         },
      }),
      ChecksumSHA1 = schema.new({
         id = id.from(_N, "PutObjectOutput", "ChecksumSHA1"),
         type = "string",
         name = "ChecksumSHA1",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-sha1" },
         },
      }),
      ChecksumSHA256 = schema.new({
         id = id.from(_N, "PutObjectOutput", "ChecksumSHA256"),
         type = "string",
         name = "ChecksumSHA256",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-sha256" },
         },
      }),
      ChecksumSHA512 = schema.new({
         id = id.from(_N, "PutObjectOutput", "ChecksumSHA512"),
         type = "string",
         name = "ChecksumSHA512",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-sha512" },
         },
      }),
      ChecksumMD5 = schema.new({
         id = id.from(_N, "PutObjectOutput", "ChecksumMD5"),
         type = "string",
         name = "ChecksumMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-md5" },
         },
      }),
      ChecksumXXHASH64 = schema.new({
         id = id.from(_N, "PutObjectOutput", "ChecksumXXHASH64"),
         type = "string",
         name = "ChecksumXXHASH64",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-xxhash64" },
         },
      }),
      ChecksumXXHASH3 = schema.new({
         id = id.from(_N, "PutObjectOutput", "ChecksumXXHASH3"),
         type = "string",
         name = "ChecksumXXHASH3",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-xxhash3" },
         },
      }),
      ChecksumXXHASH128 = schema.new({
         id = id.from(_N, "PutObjectOutput", "ChecksumXXHASH128"),
         type = "string",
         name = "ChecksumXXHASH128",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-xxhash128" },
         },
      }),
      ChecksumType = schema.new({
         id = id.from(_N, "PutObjectOutput", "ChecksumType"),
         type = "string",
         name = "ChecksumType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-type" },
         },
      }),
      ServerSideEncryption = schema.new({
         id = id.from(_N, "PutObjectOutput", "ServerSideEncryption"),
         type = "string",
         name = "ServerSideEncryption",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption" },
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "PutObjectOutput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-version-id" },
         },
      }),
      SSECustomerAlgorithm = schema.new({
         id = id.from(_N, "PutObjectOutput", "SSECustomerAlgorithm"),
         type = "string",
         name = "SSECustomerAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-algorithm" },
         },
      }),
      SSECustomerKeyMD5 = schema.new({
         id = id.from(_N, "PutObjectOutput", "SSECustomerKeyMD5"),
         type = "string",
         name = "SSECustomerKeyMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key-MD5" },
         },
      }),
      SSEKMSKeyId = schema.new({
         id = id.from(_N, "PutObjectOutput", "SSEKMSKeyId"),
         type = "string",
         name = "SSEKMSKeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-aws-kms-key-id" },
         },
      }),
      SSEKMSEncryptionContext = schema.new({
         id = id.from(_N, "PutObjectOutput", "SSEKMSEncryptionContext"),
         type = "string",
         name = "SSEKMSEncryptionContext",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-context" },
         },
      }),
      BucketKeyEnabled = schema.new({
         id = id.from(_N, "PutObjectOutput", "BucketKeyEnabled"),
         type = "boolean",
         name = "BucketKeyEnabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-bucket-key-enabled" },
         },
      }),
      Size = schema.new({
         id = id.from(_N, "PutObjectOutput", "Size"),
         type = "long",
         name = "Size",
         target_id = prelude.Long.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-object-size" },
         },
      }),
      RequestCharged = schema.new({
         id = id.from(_N, "PutObjectOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
   },
})

M.TooManyParts = schema.new({
   id = id.from(_N, "TooManyParts"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
})

M.PutObjectAclInput = schema.new({
   id = id.from(_N, "PutObjectAclRequest"),
   type = "structure",
   members = {
      ACL = schema.new({
         id = id.from(_N, "PutObjectAclInput", "ACL"),
         type = "string",
         name = "ACL",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-acl" },
         },
      }),
      AccessControlPolicy = schema.new({
         id = id.from(_N, "PutObjectAclInput", "AccessControlPolicy"),
         type = "structure",
         name = "AccessControlPolicy",
         target_id = id.from(_N, "AccessControlPolicy"),
         target = M.AccessControlPolicy,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "AccessControlPolicy" },
         },
      }),
      Bucket = schema.new({
         id = id.from(_N, "PutObjectAclInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "PutObjectAclInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "PutObjectAclInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      GrantFullControl = schema.new({
         id = id.from(_N, "PutObjectAclInput", "GrantFullControl"),
         type = "string",
         name = "GrantFullControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-full-control" },
         },
      }),
      GrantRead = schema.new({
         id = id.from(_N, "PutObjectAclInput", "GrantRead"),
         type = "string",
         name = "GrantRead",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-read" },
         },
      }),
      GrantReadACP = schema.new({
         id = id.from(_N, "PutObjectAclInput", "GrantReadACP"),
         type = "string",
         name = "GrantReadACP",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-read-acp" },
         },
      }),
      GrantWrite = schema.new({
         id = id.from(_N, "PutObjectAclInput", "GrantWrite"),
         type = "string",
         name = "GrantWrite",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-write" },
         },
      }),
      GrantWriteACP = schema.new({
         id = id.from(_N, "PutObjectAclInput", "GrantWriteACP"),
         type = "string",
         name = "GrantWriteACP",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-grant-write-acp" },
         },
      }),
      Key = schema.new({
         id = id.from(_N, "PutObjectAclInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "PutObjectAclInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "PutObjectAclInput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "versionId" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutObjectAclInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.PutObjectAclOutput = schema.new({
   id = id.from(_N, "PutObjectAclOutput"),
   type = "structure",
   members = {
      RequestCharged = schema.new({
         id = id.from(_N, "PutObjectAclOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
   },
})

M.PutObjectLegalHoldInput = schema.new({
   id = id.from(_N, "PutObjectLegalHoldRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "PutObjectLegalHoldInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Key = schema.new({
         id = id.from(_N, "PutObjectLegalHoldInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      LegalHold = schema.new({
         id = id.from(_N, "PutObjectLegalHoldInput", "LegalHold"),
         type = "structure",
         name = "LegalHold",
         target_id = id.from(_N, "ObjectLockLegalHold"),
         target = M.ObjectLockLegalHold,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "LegalHold" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "PutObjectLegalHoldInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "PutObjectLegalHoldInput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "versionId" },
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "PutObjectLegalHoldInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "PutObjectLegalHoldInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutObjectLegalHoldInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.PutObjectLegalHoldOutput = schema.new({
   id = id.from(_N, "PutObjectLegalHoldOutput"),
   type = "structure",
   members = {
      RequestCharged = schema.new({
         id = id.from(_N, "PutObjectLegalHoldOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
   },
})

M.PutObjectLockConfigurationInput = schema.new({
   id = id.from(_N, "PutObjectLockConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "PutObjectLockConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ObjectLockConfiguration = schema.new({
         id = id.from(_N, "PutObjectLockConfigurationInput", "ObjectLockConfiguration"),
         type = "structure",
         name = "ObjectLockConfiguration",
         target_id = id.from(_N, "ObjectLockConfiguration"),
         target = M.ObjectLockConfiguration,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "ObjectLockConfiguration" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "PutObjectLockConfigurationInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      Token = schema.new({
         id = id.from(_N, "PutObjectLockConfigurationInput", "Token"),
         type = "string",
         name = "Token",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-bucket-object-lock-token" },
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "PutObjectLockConfigurationInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "PutObjectLockConfigurationInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutObjectLockConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.PutObjectLockConfigurationOutput = schema.new({
   id = id.from(_N, "PutObjectLockConfigurationOutput"),
   type = "structure",
   members = {
      RequestCharged = schema.new({
         id = id.from(_N, "PutObjectLockConfigurationOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
   },
})

M.PutObjectRetentionInput = schema.new({
   id = id.from(_N, "PutObjectRetentionRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "PutObjectRetentionInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Key = schema.new({
         id = id.from(_N, "PutObjectRetentionInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Retention = schema.new({
         id = id.from(_N, "PutObjectRetentionInput", "Retention"),
         type = "structure",
         name = "Retention",
         target_id = id.from(_N, "ObjectLockRetention"),
         target = M.ObjectLockRetention,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "Retention" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "PutObjectRetentionInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "PutObjectRetentionInput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "versionId" },
         },
      }),
      BypassGovernanceRetention = schema.new({
         id = id.from(_N, "PutObjectRetentionInput", "BypassGovernanceRetention"),
         type = "boolean",
         name = "BypassGovernanceRetention",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-bypass-governance-retention" },
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "PutObjectRetentionInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "PutObjectRetentionInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutObjectRetentionInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.PutObjectRetentionOutput = schema.new({
   id = id.from(_N, "PutObjectRetentionOutput"),
   type = "structure",
   members = {
      RequestCharged = schema.new({
         id = id.from(_N, "PutObjectRetentionOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
   },
})

M.PutObjectTaggingInput = schema.new({
   id = id.from(_N, "PutObjectTaggingRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "PutObjectTaggingInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Key = schema.new({
         id = id.from(_N, "PutObjectTaggingInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "PutObjectTaggingInput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "versionId" },
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "PutObjectTaggingInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "PutObjectTaggingInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      Tagging = schema.new({
         id = id.from(_N, "PutObjectTaggingInput", "Tagging"),
         type = "structure",
         name = "Tagging",
         target_id = id.from(_N, "Tagging"),
         target = M.Tagging,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "Tagging" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutObjectTaggingInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "PutObjectTaggingInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
   },
})

M.PutObjectTaggingOutput = schema.new({
   id = id.from(_N, "PutObjectTaggingOutput"),
   type = "structure",
   members = {
      VersionId = schema.new({
         id = id.from(_N, "PutObjectTaggingOutput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-version-id" },
         },
      }),
   },
})

M.PutPublicAccessBlockInput = schema.new({
   id = id.from(_N, "PutPublicAccessBlockRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "PutPublicAccessBlockInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "PutPublicAccessBlockInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "PutPublicAccessBlockInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      PublicAccessBlockConfiguration = schema.new({
         id = id.from(_N, "PutPublicAccessBlockInput", "PublicAccessBlockConfiguration"),
         type = "structure",
         name = "PublicAccessBlockConfiguration",
         target_id = id.from(_N, "PublicAccessBlockConfiguration"),
         target = M.PublicAccessBlockConfiguration,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "PublicAccessBlockConfiguration" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "PutPublicAccessBlockInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.PutPublicAccessBlockOutput = prelude.Unit

M.IdempotencyParameterMismatch = schema.new({
   id = id.from(_N, "IdempotencyParameterMismatch"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
})

M.RenameObjectInput = schema.new({
   id = id.from(_N, "RenameObjectRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "RenameObjectInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Key = schema.new({
         id = id.from(_N, "RenameObjectInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      RenameSource = schema.new({
         id = id.from(_N, "RenameObjectInput", "RenameSource"),
         type = "string",
         name = "RenameSource",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "x-amz-rename-source" },
         },
      }),
      DestinationIfMatch = schema.new({
         id = id.from(_N, "RenameObjectInput", "DestinationIfMatch"),
         type = "string",
         name = "DestinationIfMatch",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "If-Match" },
         },
      }),
      DestinationIfNoneMatch = schema.new({
         id = id.from(_N, "RenameObjectInput", "DestinationIfNoneMatch"),
         type = "string",
         name = "DestinationIfNoneMatch",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "If-None-Match" },
         },
      }),
      DestinationIfModifiedSince = schema.new({
         id = id.from(_N, "RenameObjectInput", "DestinationIfModifiedSince"),
         type = "timestamp",
         name = "DestinationIfModifiedSince",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "If-Modified-Since" },
         },
      }),
      DestinationIfUnmodifiedSince = schema.new({
         id = id.from(_N, "RenameObjectInput", "DestinationIfUnmodifiedSince"),
         type = "timestamp",
         name = "DestinationIfUnmodifiedSince",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "If-Unmodified-Since" },
         },
      }),
      SourceIfMatch = schema.new({
         id = id.from(_N, "RenameObjectInput", "SourceIfMatch"),
         type = "string",
         name = "SourceIfMatch",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-rename-source-if-match" },
         },
      }),
      SourceIfNoneMatch = schema.new({
         id = id.from(_N, "RenameObjectInput", "SourceIfNoneMatch"),
         type = "string",
         name = "SourceIfNoneMatch",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-rename-source-if-none-match" },
         },
      }),
      SourceIfModifiedSince = schema.new({
         id = id.from(_N, "RenameObjectInput", "SourceIfModifiedSince"),
         type = "timestamp",
         name = "SourceIfModifiedSince",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-rename-source-if-modified-since" },
            [traits.TIMESTAMP_FORMAT] = { format = "http-date" },
         },
         direct_traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-rename-source-if-modified-since" },
         },
      }),
      SourceIfUnmodifiedSince = schema.new({
         id = id.from(_N, "RenameObjectInput", "SourceIfUnmodifiedSince"),
         type = "timestamp",
         name = "SourceIfUnmodifiedSince",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-rename-source-if-unmodified-since" },
            [traits.TIMESTAMP_FORMAT] = { format = "http-date" },
         },
         direct_traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-rename-source-if-unmodified-since" },
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "RenameObjectInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-client-token" },
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.RenameObjectOutput = schema.new({
   id = id.from(_N, "RenameObjectOutput"),
   type = "structure",
})

M.ObjectAlreadyInActiveTierError = schema.new({
   id = id.from(_N, "ObjectAlreadyInActiveTierError"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
})

M.GlacierJobParameters = schema.new({
   id = id.from(_N, "GlacierJobParameters"),
   type = "structure",
   members = {
      Tier = schema.new({
         id = id.from(_N, "GlacierJobParameters", "Tier"),
         type = "string",
         name = "Tier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Encryption = schema.new({
   id = id.from(_N, "Encryption"),
   type = "structure",
   members = {
      EncryptionType = schema.new({
         id = id.from(_N, "Encryption", "EncryptionType"),
         type = "string",
         name = "EncryptionType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      KMSKeyId = schema.new({
         id = id.from(_N, "Encryption", "KMSKeyId"),
         type = "string",
         name = "KMSKeyId",
         target_id = prelude.String.id,
      }),
      KMSContext = schema.new({
         id = id.from(_N, "Encryption", "KMSContext"),
         type = "string",
         name = "KMSContext",
         target_id = prelude.String.id,
      }),
   },
})

M.MetadataEntry = schema.new({
   id = id.from(_N, "MetadataEntry"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "MetadataEntry", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Value = schema.new({
         id = id.from(_N, "MetadataEntry", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
      }),
   },
})

M.S3Location = schema.new({
   id = id.from(_N, "S3Location"),
   type = "structure",
   members = {
      BucketName = schema.new({
         id = id.from(_N, "S3Location", "BucketName"),
         type = "string",
         name = "BucketName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Prefix = schema.new({
         id = id.from(_N, "S3Location", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Encryption = schema.new({
         id = id.from(_N, "S3Location", "Encryption"),
         type = "structure",
         name = "Encryption",
         target_id = id.from(_N, "Encryption"),
         target = M.Encryption,
      }),
      CannedACL = schema.new({
         id = id.from(_N, "S3Location", "CannedACL"),
         type = "string",
         name = "CannedACL",
         target_id = prelude.String.id,
      }),
      AccessControlList = schema.new({
         id = id.from(_N, "S3Location", "AccessControlList"),
         type = "list",
         name = "AccessControlList",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.Grant, traits = { [traits.XML_NAME] = { name = "Grant" } } }),
      }),
      Tagging = schema.new({
         id = id.from(_N, "S3Location", "Tagging"),
         type = "structure",
         name = "Tagging",
         target_id = id.from(_N, "Tagging"),
         target = M.Tagging,
      }),
      UserMetadata = schema.new({
         id = id.from(_N, "S3Location", "UserMetadata"),
         type = "list",
         name = "UserMetadata",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.MetadataEntry, traits = { [traits.XML_NAME] = { name = "MetadataEntry" } } }),
      }),
      StorageClass = schema.new({
         id = id.from(_N, "S3Location", "StorageClass"),
         type = "string",
         name = "StorageClass",
         target_id = prelude.String.id,
      }),
   },
})

M.OutputLocation = schema.new({
   id = id.from(_N, "OutputLocation"),
   type = "structure",
   members = {
      S3 = schema.new({
         id = id.from(_N, "OutputLocation", "S3"),
         type = "structure",
         name = "S3",
         target_id = id.from(_N, "S3Location"),
         target = M.S3Location,
      }),
   },
})

M.CSVInput = schema.new({
   id = id.from(_N, "CSVInput"),
   type = "structure",
   members = {
      FileHeaderInfo = schema.new({
         id = id.from(_N, "CSVInput", "FileHeaderInfo"),
         type = "string",
         name = "FileHeaderInfo",
         target_id = prelude.String.id,
      }),
      Comments = schema.new({
         id = id.from(_N, "CSVInput", "Comments"),
         type = "string",
         name = "Comments",
         target_id = prelude.String.id,
      }),
      QuoteEscapeCharacter = schema.new({
         id = id.from(_N, "CSVInput", "QuoteEscapeCharacter"),
         type = "string",
         name = "QuoteEscapeCharacter",
         target_id = prelude.String.id,
      }),
      RecordDelimiter = schema.new({
         id = id.from(_N, "CSVInput", "RecordDelimiter"),
         type = "string",
         name = "RecordDelimiter",
         target_id = prelude.String.id,
      }),
      FieldDelimiter = schema.new({
         id = id.from(_N, "CSVInput", "FieldDelimiter"),
         type = "string",
         name = "FieldDelimiter",
         target_id = prelude.String.id,
      }),
      QuoteCharacter = schema.new({
         id = id.from(_N, "CSVInput", "QuoteCharacter"),
         type = "string",
         name = "QuoteCharacter",
         target_id = prelude.String.id,
      }),
      AllowQuotedRecordDelimiter = schema.new({
         id = id.from(_N, "CSVInput", "AllowQuotedRecordDelimiter"),
         type = "boolean",
         name = "AllowQuotedRecordDelimiter",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.JSONInput = schema.new({
   id = id.from(_N, "JSONInput"),
   type = "structure",
   members = {
      Type = schema.new({
         id = id.from(_N, "JSONInput", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
   },
})

M.ParquetInput = schema.new({
   id = id.from(_N, "ParquetInput"),
   type = "structure",
})

M.InputSerialization = schema.new({
   id = id.from(_N, "InputSerialization"),
   type = "structure",
   members = {
      CSV = schema.new({
         id = id.from(_N, "InputSerialization", "CSV"),
         type = "structure",
         name = "CSV",
         target_id = id.from(_N, "CSVInput"),
         target = M.CSVInput,
      }),
      CompressionType = schema.new({
         id = id.from(_N, "InputSerialization", "CompressionType"),
         type = "string",
         name = "CompressionType",
         target_id = prelude.String.id,
      }),
      JSON = schema.new({
         id = id.from(_N, "InputSerialization", "JSON"),
         type = "structure",
         name = "JSON",
         target_id = id.from(_N, "JSONInput"),
         target = M.JSONInput,
      }),
      Parquet = schema.new({
         id = id.from(_N, "InputSerialization", "Parquet"),
         type = "structure",
         name = "Parquet",
         target_id = id.from(_N, "ParquetInput"),
         target = M.ParquetInput,
      }),
   },
})

M.CSVOutput = schema.new({
   id = id.from(_N, "CSVOutput"),
   type = "structure",
   members = {
      QuoteFields = schema.new({
         id = id.from(_N, "CSVOutput", "QuoteFields"),
         type = "string",
         name = "QuoteFields",
         target_id = prelude.String.id,
      }),
      QuoteEscapeCharacter = schema.new({
         id = id.from(_N, "CSVOutput", "QuoteEscapeCharacter"),
         type = "string",
         name = "QuoteEscapeCharacter",
         target_id = prelude.String.id,
      }),
      RecordDelimiter = schema.new({
         id = id.from(_N, "CSVOutput", "RecordDelimiter"),
         type = "string",
         name = "RecordDelimiter",
         target_id = prelude.String.id,
      }),
      FieldDelimiter = schema.new({
         id = id.from(_N, "CSVOutput", "FieldDelimiter"),
         type = "string",
         name = "FieldDelimiter",
         target_id = prelude.String.id,
      }),
      QuoteCharacter = schema.new({
         id = id.from(_N, "CSVOutput", "QuoteCharacter"),
         type = "string",
         name = "QuoteCharacter",
         target_id = prelude.String.id,
      }),
   },
})

M.JSONOutput = schema.new({
   id = id.from(_N, "JSONOutput"),
   type = "structure",
   members = {
      RecordDelimiter = schema.new({
         id = id.from(_N, "JSONOutput", "RecordDelimiter"),
         type = "string",
         name = "RecordDelimiter",
         target_id = prelude.String.id,
      }),
   },
})

M.OutputSerialization = schema.new({
   id = id.from(_N, "OutputSerialization"),
   type = "structure",
   members = {
      CSV = schema.new({
         id = id.from(_N, "OutputSerialization", "CSV"),
         type = "structure",
         name = "CSV",
         target_id = id.from(_N, "CSVOutput"),
         target = M.CSVOutput,
      }),
      JSON = schema.new({
         id = id.from(_N, "OutputSerialization", "JSON"),
         type = "structure",
         name = "JSON",
         target_id = id.from(_N, "JSONOutput"),
         target = M.JSONOutput,
      }),
   },
})

M.SelectParameters = schema.new({
   id = id.from(_N, "SelectParameters"),
   type = "structure",
   members = {
      InputSerialization = schema.new({
         id = id.from(_N, "SelectParameters", "InputSerialization"),
         type = "structure",
         name = "InputSerialization",
         target_id = id.from(_N, "InputSerialization"),
         target = M.InputSerialization,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ExpressionType = schema.new({
         id = id.from(_N, "SelectParameters", "ExpressionType"),
         type = "string",
         name = "ExpressionType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Expression = schema.new({
         id = id.from(_N, "SelectParameters", "Expression"),
         type = "string",
         name = "Expression",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      OutputSerialization = schema.new({
         id = id.from(_N, "SelectParameters", "OutputSerialization"),
         type = "structure",
         name = "OutputSerialization",
         target_id = id.from(_N, "OutputSerialization"),
         target = M.OutputSerialization,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RestoreRequest = schema.new({
   id = id.from(_N, "RestoreRequest"),
   type = "structure",
   members = {
      Days = schema.new({
         id = id.from(_N, "RestoreRequest", "Days"),
         type = "integer",
         name = "Days",
         target_id = prelude.Integer.id,
      }),
      GlacierJobParameters = schema.new({
         id = id.from(_N, "RestoreRequest", "GlacierJobParameters"),
         type = "structure",
         name = "GlacierJobParameters",
         target_id = id.from(_N, "GlacierJobParameters"),
         target = M.GlacierJobParameters,
      }),
      Type = schema.new({
         id = id.from(_N, "RestoreRequest", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      Tier = schema.new({
         id = id.from(_N, "RestoreRequest", "Tier"),
         type = "string",
         name = "Tier",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "RestoreRequest", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      SelectParameters = schema.new({
         id = id.from(_N, "RestoreRequest", "SelectParameters"),
         type = "structure",
         name = "SelectParameters",
         target_id = id.from(_N, "SelectParameters"),
         target = M.SelectParameters,
      }),
      OutputLocation = schema.new({
         id = id.from(_N, "RestoreRequest", "OutputLocation"),
         type = "structure",
         name = "OutputLocation",
         target_id = id.from(_N, "OutputLocation"),
         target = M.OutputLocation,
      }),
   },
})

M.RestoreObjectInput = schema.new({
   id = id.from(_N, "RestoreObjectRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "RestoreObjectInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Key = schema.new({
         id = id.from(_N, "RestoreObjectInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "RestoreObjectInput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "versionId" },
         },
      }),
      RestoreRequest = schema.new({
         id = id.from(_N, "RestoreObjectInput", "RestoreRequest"),
         type = "structure",
         name = "RestoreRequest",
         target_id = id.from(_N, "RestoreRequest"),
         target = M.RestoreRequest,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "RestoreRequest" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "RestoreObjectInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "RestoreObjectInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "RestoreObjectInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.RestoreObjectOutput = schema.new({
   id = id.from(_N, "RestoreObjectOutput"),
   type = "structure",
   members = {
      RequestCharged = schema.new({
         id = id.from(_N, "RestoreObjectOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
      RestoreOutputPath = schema.new({
         id = id.from(_N, "RestoreObjectOutput", "RestoreOutputPath"),
         type = "string",
         name = "RestoreOutputPath",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-restore-output-path" },
         },
      }),
   },
})

M.RequestProgress = schema.new({
   id = id.from(_N, "RequestProgress"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "RequestProgress", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ScanRange = schema.new({
   id = id.from(_N, "ScanRange"),
   type = "structure",
   members = {
      Start = schema.new({
         id = id.from(_N, "ScanRange", "Start"),
         type = "long",
         name = "Start",
         target_id = prelude.Long.id,
      }),
      End = schema.new({
         id = id.from(_N, "ScanRange", "End"),
         type = "long",
         name = "End",
         target_id = prelude.Long.id,
      }),
   },
})

M.SelectObjectContentInput = schema.new({
   id = id.from(_N, "SelectObjectContentRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "SelectObjectContentInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Key = schema.new({
         id = id.from(_N, "SelectObjectContentInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SSECustomerAlgorithm = schema.new({
         id = id.from(_N, "SelectObjectContentInput", "SSECustomerAlgorithm"),
         type = "string",
         name = "SSECustomerAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-algorithm" },
         },
      }),
      SSECustomerKey = schema.new({
         id = id.from(_N, "SelectObjectContentInput", "SSECustomerKey"),
         type = "string",
         name = "SSECustomerKey",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key" },
         },
      }),
      SSECustomerKeyMD5 = schema.new({
         id = id.from(_N, "SelectObjectContentInput", "SSECustomerKeyMD5"),
         type = "string",
         name = "SSECustomerKeyMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key-MD5" },
         },
      }),
      Expression = schema.new({
         id = id.from(_N, "SelectObjectContentInput", "Expression"),
         type = "string",
         name = "Expression",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ExpressionType = schema.new({
         id = id.from(_N, "SelectObjectContentInput", "ExpressionType"),
         type = "string",
         name = "ExpressionType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RequestProgress = schema.new({
         id = id.from(_N, "SelectObjectContentInput", "RequestProgress"),
         type = "structure",
         name = "RequestProgress",
         target_id = id.from(_N, "RequestProgress"),
         target = M.RequestProgress,
      }),
      InputSerialization = schema.new({
         id = id.from(_N, "SelectObjectContentInput", "InputSerialization"),
         type = "structure",
         name = "InputSerialization",
         target_id = id.from(_N, "InputSerialization"),
         target = M.InputSerialization,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      OutputSerialization = schema.new({
         id = id.from(_N, "SelectObjectContentInput", "OutputSerialization"),
         type = "structure",
         name = "OutputSerialization",
         target_id = id.from(_N, "OutputSerialization"),
         target = M.OutputSerialization,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ScanRange = schema.new({
         id = id.from(_N, "SelectObjectContentInput", "ScanRange"),
         type = "structure",
         name = "ScanRange",
         target_id = id.from(_N, "ScanRange"),
         target = M.ScanRange,
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "SelectObjectContentInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.ContinuationEvent = schema.new({
   id = id.from(_N, "ContinuationEvent"),
   type = "structure",
})

M.EndEvent = schema.new({
   id = id.from(_N, "EndEvent"),
   type = "structure",
})

M.Progress = schema.new({
   id = id.from(_N, "Progress"),
   type = "structure",
   members = {
      BytesScanned = schema.new({
         id = id.from(_N, "Progress", "BytesScanned"),
         type = "long",
         name = "BytesScanned",
         target_id = prelude.Long.id,
      }),
      BytesProcessed = schema.new({
         id = id.from(_N, "Progress", "BytesProcessed"),
         type = "long",
         name = "BytesProcessed",
         target_id = prelude.Long.id,
      }),
      BytesReturned = schema.new({
         id = id.from(_N, "Progress", "BytesReturned"),
         type = "long",
         name = "BytesReturned",
         target_id = prelude.Long.id,
      }),
   },
})

M.ProgressEvent = schema.new({
   id = id.from(_N, "ProgressEvent"),
   type = "structure",
   members = {
      Details = schema.new({
         id = id.from(_N, "ProgressEvent", "Details"),
         type = "structure",
         name = "Details",
         target_id = id.from(_N, "Progress"),
         target = M.Progress,
         traits = {
            [traits.EVENT_PAYLOAD] = {},
         },
      }),
   },
})

M.RecordsEvent = schema.new({
   id = id.from(_N, "RecordsEvent"),
   type = "structure",
   members = {
      Payload = schema.new({
         id = id.from(_N, "RecordsEvent", "Payload"),
         type = "blob",
         name = "Payload",
         target_id = prelude.Blob.id,
         traits = {
            [traits.EVENT_PAYLOAD] = {},
         },
      }),
   },
})

M.Stats = schema.new({
   id = id.from(_N, "Stats"),
   type = "structure",
   members = {
      BytesScanned = schema.new({
         id = id.from(_N, "Stats", "BytesScanned"),
         type = "long",
         name = "BytesScanned",
         target_id = prelude.Long.id,
      }),
      BytesProcessed = schema.new({
         id = id.from(_N, "Stats", "BytesProcessed"),
         type = "long",
         name = "BytesProcessed",
         target_id = prelude.Long.id,
      }),
      BytesReturned = schema.new({
         id = id.from(_N, "Stats", "BytesReturned"),
         type = "long",
         name = "BytesReturned",
         target_id = prelude.Long.id,
      }),
   },
})

M.StatsEvent = schema.new({
   id = id.from(_N, "StatsEvent"),
   type = "structure",
   members = {
      Details = schema.new({
         id = id.from(_N, "StatsEvent", "Details"),
         type = "structure",
         name = "Details",
         target_id = id.from(_N, "Stats"),
         target = M.Stats,
         traits = {
            [traits.EVENT_PAYLOAD] = {},
         },
      }),
   },
})

M.SelectObjectContentEventStream = schema.new({
   id = id.from(_N, "SelectObjectContentEventStream"),
   type = "union",
   members = {
      Records = schema.new({
         id = id.from(_N, "SelectObjectContentEventStream", "Records"),
         type = "structure",
         name = "Records",
         target_id = id.from(_N, "RecordsEvent"),
         target = M.RecordsEvent,
      }),
      Stats = schema.new({
         id = id.from(_N, "SelectObjectContentEventStream", "Stats"),
         type = "structure",
         name = "Stats",
         target_id = id.from(_N, "StatsEvent"),
         target = M.StatsEvent,
      }),
      Progress = schema.new({
         id = id.from(_N, "SelectObjectContentEventStream", "Progress"),
         type = "structure",
         name = "Progress",
         target_id = id.from(_N, "ProgressEvent"),
         target = M.ProgressEvent,
      }),
      Cont = schema.new({
         id = id.from(_N, "SelectObjectContentEventStream", "Cont"),
         type = "structure",
         name = "Cont",
         target_id = id.from(_N, "ContinuationEvent"),
         target = M.ContinuationEvent,
      }),
      End = schema.new({
         id = id.from(_N, "SelectObjectContentEventStream", "End"),
         type = "structure",
         name = "End",
         target_id = id.from(_N, "EndEvent"),
         target = M.EndEvent,
      }),
   },
})

M.SelectObjectContentOutput = schema.new({
   id = id.from(_N, "SelectObjectContentOutput"),
   type = "structure",
   members = {
      Payload = schema.new({
         id = id.from(_N, "SelectObjectContentOutput", "Payload"),
         type = "union",
         name = "Payload",
         target_id = id.from(_N, "SelectObjectContentEventStream"),
         target = M.SelectObjectContentEventStream,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
            [traits.STREAMING] = {},
         },
         direct_traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.InventoryTableConfigurationUpdates = schema.new({
   id = id.from(_N, "InventoryTableConfigurationUpdates"),
   type = "structure",
   members = {
      ConfigurationState = schema.new({
         id = id.from(_N, "InventoryTableConfigurationUpdates", "ConfigurationState"),
         type = "string",
         name = "ConfigurationState",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EncryptionConfiguration = schema.new({
         id = id.from(_N, "InventoryTableConfigurationUpdates", "EncryptionConfiguration"),
         type = "structure",
         name = "EncryptionConfiguration",
         target_id = id.from(_N, "MetadataTableEncryptionConfiguration"),
         target = M.MetadataTableEncryptionConfiguration,
      }),
   },
})

M.UpdateBucketMetadataInventoryTableConfigurationInput = schema.new({
   id = id.from(_N, "UpdateBucketMetadataInventoryTableConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "UpdateBucketMetadataInventoryTableConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "UpdateBucketMetadataInventoryTableConfigurationInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "UpdateBucketMetadataInventoryTableConfigurationInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      InventoryTableConfiguration = schema.new({
         id = id.from(_N, "UpdateBucketMetadataInventoryTableConfigurationInput", "InventoryTableConfiguration"),
         type = "structure",
         name = "InventoryTableConfiguration",
         target_id = id.from(_N, "InventoryTableConfigurationUpdates"),
         target = M.InventoryTableConfigurationUpdates,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "InventoryTableConfiguration" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "UpdateBucketMetadataInventoryTableConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.UpdateBucketMetadataInventoryTableConfigurationOutput = prelude.Unit

M.JournalTableConfigurationUpdates = schema.new({
   id = id.from(_N, "JournalTableConfigurationUpdates"),
   type = "structure",
   members = {
      RecordExpiration = schema.new({
         id = id.from(_N, "JournalTableConfigurationUpdates", "RecordExpiration"),
         type = "structure",
         name = "RecordExpiration",
         target_id = id.from(_N, "RecordExpiration"),
         target = M.RecordExpiration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateBucketMetadataJournalTableConfigurationInput = schema.new({
   id = id.from(_N, "UpdateBucketMetadataJournalTableConfigurationRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "UpdateBucketMetadataJournalTableConfigurationInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "UpdateBucketMetadataJournalTableConfigurationInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "UpdateBucketMetadataJournalTableConfigurationInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      JournalTableConfiguration = schema.new({
         id = id.from(_N, "UpdateBucketMetadataJournalTableConfigurationInput", "JournalTableConfiguration"),
         type = "structure",
         name = "JournalTableConfiguration",
         target_id = id.from(_N, "JournalTableConfigurationUpdates"),
         target = M.JournalTableConfigurationUpdates,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.XML_NAME] = { name = "JournalTableConfiguration" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "UpdateBucketMetadataJournalTableConfigurationInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.UpdateBucketMetadataJournalTableConfigurationOutput = prelude.Unit

M.SSEKMSEncryption = schema.new({
   id = id.from(_N, "SSEKMSEncryption"),
   type = "structure",
   traits = {
      [traits.XML_NAME] = { name = "SSE-KMS" },
   },
   members = {
      KMSKeyArn = schema.new({
         id = id.from(_N, "SSEKMSEncryption", "KMSKeyArn"),
         type = "string",
         name = "KMSKeyArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BucketKeyEnabled = schema.new({
         id = id.from(_N, "SSEKMSEncryption", "BucketKeyEnabled"),
         type = "boolean",
         name = "BucketKeyEnabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ObjectEncryption = schema.new({
   id = id.from(_N, "ObjectEncryption"),
   type = "union",
   members = {
      SSEKMS = schema.new({
         id = id.from(_N, "ObjectEncryption", "SSEKMS"),
         type = "structure",
         name = "SSEKMS",
         target_id = id.from(_N, "SSEKMSEncryption"),
         target = M.SSEKMSEncryption,
         traits = {
            [traits.XML_NAME] = { name = "SSE-KMS" },
         },
      }),
   },
})

M.UpdateObjectEncryptionInput = schema.new({
   id = id.from(_N, "UpdateObjectEncryptionRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "UpdateObjectEncryptionInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Key = schema.new({
         id = id.from(_N, "UpdateObjectEncryptionInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "UpdateObjectEncryptionInput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "versionId" },
         },
      }),
      ObjectEncryption = schema.new({
         id = id.from(_N, "UpdateObjectEncryptionInput", "ObjectEncryption"),
         type = "union",
         name = "ObjectEncryption",
         target_id = id.from(_N, "ObjectEncryption"),
         target = M.ObjectEncryption,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "UpdateObjectEncryptionInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "UpdateObjectEncryptionInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "UpdateObjectEncryptionInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "UpdateObjectEncryptionInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
   },
})

M.UpdateObjectEncryptionOutput = schema.new({
   id = id.from(_N, "UpdateObjectEncryptionResponse"),
   type = "structure",
   members = {
      RequestCharged = schema.new({
         id = id.from(_N, "UpdateObjectEncryptionOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
   },
})

M.UploadPartInput = schema.new({
   id = id.from(_N, "UploadPartRequest"),
   type = "structure",
   members = {
      Body = schema.new({
         id = id.from(_N, "UploadPartInput", "Body"),
         type = "blob",
         name = "Body",
         target_id = prelude.Blob.id,
         traits = {
            [traits.DEFAULT] = { value = "" },
            [traits.HTTP_PAYLOAD] = {},
            [traits.STREAMING] = {},
         },
         direct_traits = {
            [traits.DEFAULT] = { value = "" },
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      Bucket = schema.new({
         id = id.from(_N, "UploadPartInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ContentLength = schema.new({
         id = id.from(_N, "UploadPartInput", "ContentLength"),
         type = "long",
         name = "ContentLength",
         target_id = prelude.Long.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Length" },
         },
      }),
      ContentMD5 = schema.new({
         id = id.from(_N, "UploadPartInput", "ContentMD5"),
         type = "string",
         name = "ContentMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-MD5" },
         },
      }),
      ChecksumAlgorithm = schema.new({
         id = id.from(_N, "UploadPartInput", "ChecksumAlgorithm"),
         type = "string",
         name = "ChecksumAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sdk-checksum-algorithm" },
         },
      }),
      ChecksumCRC32 = schema.new({
         id = id.from(_N, "UploadPartInput", "ChecksumCRC32"),
         type = "string",
         name = "ChecksumCRC32",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-crc32" },
         },
      }),
      ChecksumCRC32C = schema.new({
         id = id.from(_N, "UploadPartInput", "ChecksumCRC32C"),
         type = "string",
         name = "ChecksumCRC32C",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-crc32c" },
         },
      }),
      ChecksumCRC64NVME = schema.new({
         id = id.from(_N, "UploadPartInput", "ChecksumCRC64NVME"),
         type = "string",
         name = "ChecksumCRC64NVME",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-crc64nvme" },
         },
      }),
      ChecksumSHA1 = schema.new({
         id = id.from(_N, "UploadPartInput", "ChecksumSHA1"),
         type = "string",
         name = "ChecksumSHA1",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-sha1" },
         },
      }),
      ChecksumSHA256 = schema.new({
         id = id.from(_N, "UploadPartInput", "ChecksumSHA256"),
         type = "string",
         name = "ChecksumSHA256",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-sha256" },
         },
      }),
      ChecksumSHA512 = schema.new({
         id = id.from(_N, "UploadPartInput", "ChecksumSHA512"),
         type = "string",
         name = "ChecksumSHA512",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-sha512" },
         },
      }),
      ChecksumMD5 = schema.new({
         id = id.from(_N, "UploadPartInput", "ChecksumMD5"),
         type = "string",
         name = "ChecksumMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-md5" },
         },
      }),
      ChecksumXXHASH64 = schema.new({
         id = id.from(_N, "UploadPartInput", "ChecksumXXHASH64"),
         type = "string",
         name = "ChecksumXXHASH64",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-xxhash64" },
         },
      }),
      ChecksumXXHASH3 = schema.new({
         id = id.from(_N, "UploadPartInput", "ChecksumXXHASH3"),
         type = "string",
         name = "ChecksumXXHASH3",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-xxhash3" },
         },
      }),
      ChecksumXXHASH128 = schema.new({
         id = id.from(_N, "UploadPartInput", "ChecksumXXHASH128"),
         type = "string",
         name = "ChecksumXXHASH128",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-xxhash128" },
         },
      }),
      Key = schema.new({
         id = id.from(_N, "UploadPartInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      PartNumber = schema.new({
         id = id.from(_N, "UploadPartInput", "PartNumber"),
         type = "integer",
         name = "PartNumber",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "partNumber" },
         },
      }),
      UploadId = schema.new({
         id = id.from(_N, "UploadPartInput", "UploadId"),
         type = "string",
         name = "UploadId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "uploadId" },
         },
      }),
      SSECustomerAlgorithm = schema.new({
         id = id.from(_N, "UploadPartInput", "SSECustomerAlgorithm"),
         type = "string",
         name = "SSECustomerAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-algorithm" },
         },
      }),
      SSECustomerKey = schema.new({
         id = id.from(_N, "UploadPartInput", "SSECustomerKey"),
         type = "string",
         name = "SSECustomerKey",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key" },
         },
      }),
      SSECustomerKeyMD5 = schema.new({
         id = id.from(_N, "UploadPartInput", "SSECustomerKeyMD5"),
         type = "string",
         name = "SSECustomerKeyMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key-MD5" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "UploadPartInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "UploadPartInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
   },
})

M.UploadPartOutput = schema.new({
   id = id.from(_N, "UploadPartOutput"),
   type = "structure",
   members = {
      ServerSideEncryption = schema.new({
         id = id.from(_N, "UploadPartOutput", "ServerSideEncryption"),
         type = "string",
         name = "ServerSideEncryption",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption" },
         },
      }),
      ETag = schema.new({
         id = id.from(_N, "UploadPartOutput", "ETag"),
         type = "string",
         name = "ETag",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "ETag" },
         },
      }),
      ChecksumCRC32 = schema.new({
         id = id.from(_N, "UploadPartOutput", "ChecksumCRC32"),
         type = "string",
         name = "ChecksumCRC32",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-crc32" },
         },
      }),
      ChecksumCRC32C = schema.new({
         id = id.from(_N, "UploadPartOutput", "ChecksumCRC32C"),
         type = "string",
         name = "ChecksumCRC32C",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-crc32c" },
         },
      }),
      ChecksumCRC64NVME = schema.new({
         id = id.from(_N, "UploadPartOutput", "ChecksumCRC64NVME"),
         type = "string",
         name = "ChecksumCRC64NVME",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-crc64nvme" },
         },
      }),
      ChecksumSHA1 = schema.new({
         id = id.from(_N, "UploadPartOutput", "ChecksumSHA1"),
         type = "string",
         name = "ChecksumSHA1",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-sha1" },
         },
      }),
      ChecksumSHA256 = schema.new({
         id = id.from(_N, "UploadPartOutput", "ChecksumSHA256"),
         type = "string",
         name = "ChecksumSHA256",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-sha256" },
         },
      }),
      ChecksumSHA512 = schema.new({
         id = id.from(_N, "UploadPartOutput", "ChecksumSHA512"),
         type = "string",
         name = "ChecksumSHA512",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-sha512" },
         },
      }),
      ChecksumMD5 = schema.new({
         id = id.from(_N, "UploadPartOutput", "ChecksumMD5"),
         type = "string",
         name = "ChecksumMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-md5" },
         },
      }),
      ChecksumXXHASH64 = schema.new({
         id = id.from(_N, "UploadPartOutput", "ChecksumXXHASH64"),
         type = "string",
         name = "ChecksumXXHASH64",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-xxhash64" },
         },
      }),
      ChecksumXXHASH3 = schema.new({
         id = id.from(_N, "UploadPartOutput", "ChecksumXXHASH3"),
         type = "string",
         name = "ChecksumXXHASH3",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-xxhash3" },
         },
      }),
      ChecksumXXHASH128 = schema.new({
         id = id.from(_N, "UploadPartOutput", "ChecksumXXHASH128"),
         type = "string",
         name = "ChecksumXXHASH128",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-checksum-xxhash128" },
         },
      }),
      SSECustomerAlgorithm = schema.new({
         id = id.from(_N, "UploadPartOutput", "SSECustomerAlgorithm"),
         type = "string",
         name = "SSECustomerAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-algorithm" },
         },
      }),
      SSECustomerKeyMD5 = schema.new({
         id = id.from(_N, "UploadPartOutput", "SSECustomerKeyMD5"),
         type = "string",
         name = "SSECustomerKeyMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key-MD5" },
         },
      }),
      SSEKMSKeyId = schema.new({
         id = id.from(_N, "UploadPartOutput", "SSEKMSKeyId"),
         type = "string",
         name = "SSEKMSKeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-aws-kms-key-id" },
         },
      }),
      BucketKeyEnabled = schema.new({
         id = id.from(_N, "UploadPartOutput", "BucketKeyEnabled"),
         type = "boolean",
         name = "BucketKeyEnabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-bucket-key-enabled" },
         },
      }),
      RequestCharged = schema.new({
         id = id.from(_N, "UploadPartOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
   },
})

M.UploadPartCopyInput = schema.new({
   id = id.from(_N, "UploadPartCopyRequest"),
   type = "structure",
   members = {
      Bucket = schema.new({
         id = id.from(_N, "UploadPartCopyInput", "Bucket"),
         type = "string",
         name = "Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      CopySource = schema.new({
         id = id.from(_N, "UploadPartCopyInput", "CopySource"),
         type = "string",
         name = "CopySource",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "x-amz-copy-source" },
         },
      }),
      CopySourceIfMatch = schema.new({
         id = id.from(_N, "UploadPartCopyInput", "CopySourceIfMatch"),
         type = "string",
         name = "CopySourceIfMatch",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-copy-source-if-match" },
         },
      }),
      CopySourceIfModifiedSince = schema.new({
         id = id.from(_N, "UploadPartCopyInput", "CopySourceIfModifiedSince"),
         type = "timestamp",
         name = "CopySourceIfModifiedSince",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-copy-source-if-modified-since" },
         },
      }),
      CopySourceIfNoneMatch = schema.new({
         id = id.from(_N, "UploadPartCopyInput", "CopySourceIfNoneMatch"),
         type = "string",
         name = "CopySourceIfNoneMatch",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-copy-source-if-none-match" },
         },
      }),
      CopySourceIfUnmodifiedSince = schema.new({
         id = id.from(_N, "UploadPartCopyInput", "CopySourceIfUnmodifiedSince"),
         type = "timestamp",
         name = "CopySourceIfUnmodifiedSince",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-copy-source-if-unmodified-since" },
         },
      }),
      CopySourceRange = schema.new({
         id = id.from(_N, "UploadPartCopyInput", "CopySourceRange"),
         type = "string",
         name = "CopySourceRange",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-copy-source-range" },
         },
      }),
      Key = schema.new({
         id = id.from(_N, "UploadPartCopyInput", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      PartNumber = schema.new({
         id = id.from(_N, "UploadPartCopyInput", "PartNumber"),
         type = "integer",
         name = "PartNumber",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "partNumber" },
         },
      }),
      UploadId = schema.new({
         id = id.from(_N, "UploadPartCopyInput", "UploadId"),
         type = "string",
         name = "UploadId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "uploadId" },
         },
      }),
      SSECustomerAlgorithm = schema.new({
         id = id.from(_N, "UploadPartCopyInput", "SSECustomerAlgorithm"),
         type = "string",
         name = "SSECustomerAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-algorithm" },
         },
      }),
      SSECustomerKey = schema.new({
         id = id.from(_N, "UploadPartCopyInput", "SSECustomerKey"),
         type = "string",
         name = "SSECustomerKey",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key" },
         },
      }),
      SSECustomerKeyMD5 = schema.new({
         id = id.from(_N, "UploadPartCopyInput", "SSECustomerKeyMD5"),
         type = "string",
         name = "SSECustomerKeyMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key-MD5" },
         },
      }),
      CopySourceSSECustomerAlgorithm = schema.new({
         id = id.from(_N, "UploadPartCopyInput", "CopySourceSSECustomerAlgorithm"),
         type = "string",
         name = "CopySourceSSECustomerAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-copy-source-server-side-encryption-customer-algorithm" },
         },
      }),
      CopySourceSSECustomerKey = schema.new({
         id = id.from(_N, "UploadPartCopyInput", "CopySourceSSECustomerKey"),
         type = "string",
         name = "CopySourceSSECustomerKey",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-copy-source-server-side-encryption-customer-key" },
         },
      }),
      CopySourceSSECustomerKeyMD5 = schema.new({
         id = id.from(_N, "UploadPartCopyInput", "CopySourceSSECustomerKeyMD5"),
         type = "string",
         name = "CopySourceSSECustomerKeyMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-copy-source-server-side-encryption-customer-key-MD5" },
         },
      }),
      RequestPayer = schema.new({
         id = id.from(_N, "UploadPartCopyInput", "RequestPayer"),
         type = "string",
         name = "RequestPayer",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-payer" },
         },
      }),
      ExpectedBucketOwner = schema.new({
         id = id.from(_N, "UploadPartCopyInput", "ExpectedBucketOwner"),
         type = "string",
         name = "ExpectedBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-expected-bucket-owner" },
         },
      }),
      ExpectedSourceBucketOwner = schema.new({
         id = id.from(_N, "UploadPartCopyInput", "ExpectedSourceBucketOwner"),
         type = "string",
         name = "ExpectedSourceBucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-source-expected-bucket-owner" },
         },
      }),
   },
})

M.CopyPartResult = schema.new({
   id = id.from(_N, "CopyPartResult"),
   type = "structure",
   members = {
      ETag = schema.new({
         id = id.from(_N, "CopyPartResult", "ETag"),
         type = "string",
         name = "ETag",
         target_id = prelude.String.id,
      }),
      LastModified = schema.new({
         id = id.from(_N, "CopyPartResult", "LastModified"),
         type = "timestamp",
         name = "LastModified",
         target_id = prelude.Timestamp.id,
      }),
      ChecksumCRC32 = schema.new({
         id = id.from(_N, "CopyPartResult", "ChecksumCRC32"),
         type = "string",
         name = "ChecksumCRC32",
         target_id = prelude.String.id,
      }),
      ChecksumCRC32C = schema.new({
         id = id.from(_N, "CopyPartResult", "ChecksumCRC32C"),
         type = "string",
         name = "ChecksumCRC32C",
         target_id = prelude.String.id,
      }),
      ChecksumCRC64NVME = schema.new({
         id = id.from(_N, "CopyPartResult", "ChecksumCRC64NVME"),
         type = "string",
         name = "ChecksumCRC64NVME",
         target_id = prelude.String.id,
      }),
      ChecksumSHA1 = schema.new({
         id = id.from(_N, "CopyPartResult", "ChecksumSHA1"),
         type = "string",
         name = "ChecksumSHA1",
         target_id = prelude.String.id,
      }),
      ChecksumSHA256 = schema.new({
         id = id.from(_N, "CopyPartResult", "ChecksumSHA256"),
         type = "string",
         name = "ChecksumSHA256",
         target_id = prelude.String.id,
      }),
      ChecksumSHA512 = schema.new({
         id = id.from(_N, "CopyPartResult", "ChecksumSHA512"),
         type = "string",
         name = "ChecksumSHA512",
         target_id = prelude.String.id,
      }),
      ChecksumMD5 = schema.new({
         id = id.from(_N, "CopyPartResult", "ChecksumMD5"),
         type = "string",
         name = "ChecksumMD5",
         target_id = prelude.String.id,
      }),
      ChecksumXXHASH64 = schema.new({
         id = id.from(_N, "CopyPartResult", "ChecksumXXHASH64"),
         type = "string",
         name = "ChecksumXXHASH64",
         target_id = prelude.String.id,
      }),
      ChecksumXXHASH3 = schema.new({
         id = id.from(_N, "CopyPartResult", "ChecksumXXHASH3"),
         type = "string",
         name = "ChecksumXXHASH3",
         target_id = prelude.String.id,
      }),
      ChecksumXXHASH128 = schema.new({
         id = id.from(_N, "CopyPartResult", "ChecksumXXHASH128"),
         type = "string",
         name = "ChecksumXXHASH128",
         target_id = prelude.String.id,
      }),
   },
})

M.UploadPartCopyOutput = schema.new({
   id = id.from(_N, "UploadPartCopyOutput"),
   type = "structure",
   members = {
      CopySourceVersionId = schema.new({
         id = id.from(_N, "UploadPartCopyOutput", "CopySourceVersionId"),
         type = "string",
         name = "CopySourceVersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-copy-source-version-id" },
         },
      }),
      CopyPartResult = schema.new({
         id = id.from(_N, "UploadPartCopyOutput", "CopyPartResult"),
         type = "structure",
         name = "CopyPartResult",
         target_id = id.from(_N, "CopyPartResult"),
         target = M.CopyPartResult,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      ServerSideEncryption = schema.new({
         id = id.from(_N, "UploadPartCopyOutput", "ServerSideEncryption"),
         type = "string",
         name = "ServerSideEncryption",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption" },
         },
      }),
      SSECustomerAlgorithm = schema.new({
         id = id.from(_N, "UploadPartCopyOutput", "SSECustomerAlgorithm"),
         type = "string",
         name = "SSECustomerAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-algorithm" },
         },
      }),
      SSECustomerKeyMD5 = schema.new({
         id = id.from(_N, "UploadPartCopyOutput", "SSECustomerKeyMD5"),
         type = "string",
         name = "SSECustomerKeyMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-customer-key-MD5" },
         },
      }),
      SSEKMSKeyId = schema.new({
         id = id.from(_N, "UploadPartCopyOutput", "SSEKMSKeyId"),
         type = "string",
         name = "SSEKMSKeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-aws-kms-key-id" },
         },
      }),
      BucketKeyEnabled = schema.new({
         id = id.from(_N, "UploadPartCopyOutput", "BucketKeyEnabled"),
         type = "boolean",
         name = "BucketKeyEnabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-server-side-encryption-bucket-key-enabled" },
         },
      }),
      RequestCharged = schema.new({
         id = id.from(_N, "UploadPartCopyOutput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-request-charged" },
         },
      }),
   },
})

M.WriteGetObjectResponseInput = schema.new({
   id = id.from(_N, "WriteGetObjectResponseRequest"),
   type = "structure",
   members = {
      RequestRoute = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "RequestRoute"),
         type = "string",
         name = "RequestRoute",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "x-amz-request-route" },
         },
      }),
      RequestToken = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "RequestToken"),
         type = "string",
         name = "RequestToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "x-amz-request-token" },
         },
      }),
      Body = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "Body"),
         type = "blob",
         name = "Body",
         target_id = prelude.Blob.id,
         traits = {
            [traits.DEFAULT] = { value = "" },
            [traits.HTTP_PAYLOAD] = {},
            [traits.STREAMING] = {},
         },
         direct_traits = {
            [traits.DEFAULT] = { value = "" },
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      StatusCode = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "StatusCode"),
         type = "integer",
         name = "StatusCode",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-status" },
         },
      }),
      ErrorCode = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-error-code" },
         },
      }),
      ErrorMessage = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ErrorMessage"),
         type = "string",
         name = "ErrorMessage",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-error-message" },
         },
      }),
      AcceptRanges = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "AcceptRanges"),
         type = "string",
         name = "AcceptRanges",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-accept-ranges" },
         },
      }),
      CacheControl = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "CacheControl"),
         type = "string",
         name = "CacheControl",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-Cache-Control" },
         },
      }),
      ContentDisposition = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ContentDisposition"),
         type = "string",
         name = "ContentDisposition",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-Content-Disposition" },
         },
      }),
      ContentEncoding = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ContentEncoding"),
         type = "string",
         name = "ContentEncoding",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-Content-Encoding" },
         },
      }),
      ContentLanguage = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ContentLanguage"),
         type = "string",
         name = "ContentLanguage",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-Content-Language" },
         },
      }),
      ContentLength = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ContentLength"),
         type = "long",
         name = "ContentLength",
         target_id = prelude.Long.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Length" },
         },
      }),
      ContentRange = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ContentRange"),
         type = "string",
         name = "ContentRange",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-Content-Range" },
         },
      }),
      ContentType = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ContentType"),
         type = "string",
         name = "ContentType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-Content-Type" },
         },
      }),
      ChecksumCRC32 = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ChecksumCRC32"),
         type = "string",
         name = "ChecksumCRC32",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-checksum-crc32" },
         },
      }),
      ChecksumCRC32C = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ChecksumCRC32C"),
         type = "string",
         name = "ChecksumCRC32C",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-checksum-crc32c" },
         },
      }),
      ChecksumCRC64NVME = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ChecksumCRC64NVME"),
         type = "string",
         name = "ChecksumCRC64NVME",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-checksum-crc64nvme" },
         },
      }),
      ChecksumSHA1 = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ChecksumSHA1"),
         type = "string",
         name = "ChecksumSHA1",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-checksum-sha1" },
         },
      }),
      ChecksumSHA256 = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ChecksumSHA256"),
         type = "string",
         name = "ChecksumSHA256",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-checksum-sha256" },
         },
      }),
      ChecksumSHA512 = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ChecksumSHA512"),
         type = "string",
         name = "ChecksumSHA512",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-checksum-sha512" },
         },
      }),
      ChecksumMD5 = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ChecksumMD5"),
         type = "string",
         name = "ChecksumMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-checksum-md5" },
         },
      }),
      ChecksumXXHASH64 = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ChecksumXXHASH64"),
         type = "string",
         name = "ChecksumXXHASH64",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-checksum-xxhash64" },
         },
      }),
      ChecksumXXHASH3 = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ChecksumXXHASH3"),
         type = "string",
         name = "ChecksumXXHASH3",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-checksum-xxhash3" },
         },
      }),
      ChecksumXXHASH128 = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ChecksumXXHASH128"),
         type = "string",
         name = "ChecksumXXHASH128",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-checksum-xxhash128" },
         },
      }),
      DeleteMarker = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "DeleteMarker"),
         type = "boolean",
         name = "DeleteMarker",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-delete-marker" },
         },
      }),
      ETag = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ETag"),
         type = "string",
         name = "ETag",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-ETag" },
         },
      }),
      Expires = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "Expires"),
         type = "string",
         name = "Expires",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-Expires" },
         },
      }),
      Expiration = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "Expiration"),
         type = "string",
         name = "Expiration",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-expiration" },
         },
      }),
      LastModified = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "LastModified"),
         type = "timestamp",
         name = "LastModified",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-Last-Modified" },
         },
      }),
      MissingMeta = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "MissingMeta"),
         type = "integer",
         name = "MissingMeta",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-missing-meta" },
         },
      }),
      Metadata = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "Metadata"),
         type = "map",
         name = "Metadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.HTTP_PREFIX_HEADERS] = { prefix = "x-amz-meta-" },
         },
      }),
      ObjectLockMode = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ObjectLockMode"),
         type = "string",
         name = "ObjectLockMode",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-object-lock-mode" },
         },
      }),
      ObjectLockLegalHoldStatus = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ObjectLockLegalHoldStatus"),
         type = "string",
         name = "ObjectLockLegalHoldStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-object-lock-legal-hold" },
         },
      }),
      ObjectLockRetainUntilDate = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ObjectLockRetainUntilDate"),
         type = "timestamp",
         name = "ObjectLockRetainUntilDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-object-lock-retain-until-date" },
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-object-lock-retain-until-date" },
         },
      }),
      PartsCount = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "PartsCount"),
         type = "integer",
         name = "PartsCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-mp-parts-count" },
         },
      }),
      ReplicationStatus = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ReplicationStatus"),
         type = "string",
         name = "ReplicationStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-replication-status" },
         },
      }),
      RequestCharged = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "RequestCharged"),
         type = "string",
         name = "RequestCharged",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-request-charged" },
         },
      }),
      Restore = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "Restore"),
         type = "string",
         name = "Restore",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-restore" },
         },
      }),
      ServerSideEncryption = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "ServerSideEncryption"),
         type = "string",
         name = "ServerSideEncryption",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-server-side-encryption" },
         },
      }),
      SSECustomerAlgorithm = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "SSECustomerAlgorithm"),
         type = "string",
         name = "SSECustomerAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-server-side-encryption-customer-algorithm" },
         },
      }),
      SSEKMSKeyId = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "SSEKMSKeyId"),
         type = "string",
         name = "SSEKMSKeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-server-side-encryption-aws-kms-key-id" },
         },
      }),
      SSECustomerKeyMD5 = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "SSECustomerKeyMD5"),
         type = "string",
         name = "SSECustomerKeyMD5",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-server-side-encryption-customer-key-MD5" },
         },
      }),
      StorageClass = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "StorageClass"),
         type = "string",
         name = "StorageClass",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-storage-class" },
         },
      }),
      TagCount = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "TagCount"),
         type = "integer",
         name = "TagCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-tagging-count" },
         },
      }),
      VersionId = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "VersionId"),
         type = "string",
         name = "VersionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-version-id" },
         },
      }),
      BucketKeyEnabled = schema.new({
         id = id.from(_N, "WriteGetObjectResponseInput", "BucketKeyEnabled"),
         type = "boolean",
         name = "BucketKeyEnabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-fwd-header-x-amz-server-side-encryption-bucket-key-enabled" },
         },
      }),
   },
})

M.WriteGetObjectResponseOutput = prelude.Unit


for _, s in pairs(M) do
   if type(s) == "table" and (s.type == "structure" or s.type == "union") then
      local members = rawget(s, "_members")
      if members then
         for _, ms in pairs(members) do
            if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
               rawset(ms, "_target", M[ms.target_id.name])
            end
         end
      end
   end
end

M.Service = schema.service({
   id = id.from("com.amazonaws.s3", "AmazonS3"),
   version = "2006-03-01",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AbortMultipartUpload = schema.operation({
   id = id.from("com.amazonaws.s3", "AbortMultipartUpload"),
   input = M.AbortMultipartUploadInput,
   output = M.AbortMultipartUploadOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/{Key+}?x-id=AbortMultipartUpload" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
         Key = "Key",
      },
   },
})

M.CompleteMultipartUpload = schema.operation({
   id = id.from("com.amazonaws.s3", "CompleteMultipartUpload"),
   input = M.CompleteMultipartUploadInput,
   output = M.CompleteMultipartUploadOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/{Key+}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
         Key = "Key",
      },
   },
})

M.CopyObject = schema.operation({
   id = id.from("com.amazonaws.s3", "CopyObject"),
   input = M.CopyObjectInput,
   output = M.CopyObjectOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/{Key+}?x-id=CopyObject" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
         CopySource = "CopySource",
         Key = "Key",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         DisableS3ExpressSessionAuth = { value = true },
      },
   },
})

M.CreateBucket = schema.operation({
   id = id.from("com.amazonaws.s3", "CreateBucket"),
   input = M.CreateBucketInput,
   output = M.CreateBucketOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
         DisableAccessPoints = { value = true },
      },
   },
})

M.CreateBucketMetadataConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "CreateBucketMetadataConfiguration"),
   input = M.CreateBucketMetadataConfigurationInput,
   output = M.CreateBucketMetadataConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/?metadataConfiguration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.CreateBucketMetadataTableConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "CreateBucketMetadataTableConfiguration"),
   input = M.CreateBucketMetadataTableConfigurationInput,
   output = M.CreateBucketMetadataTableConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/?metadataTable" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.CreateMultipartUpload = schema.operation({
   id = id.from("com.amazonaws.s3", "CreateMultipartUpload"),
   input = M.CreateMultipartUploadInput,
   output = M.CreateMultipartUploadOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/{Key+}?uploads" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
         Key = "Key",
      },
   },
})

M.CreateSession = schema.operation({
   id = id.from("com.amazonaws.s3", "CreateSession"),
   input = M.CreateSessionInput,
   output = M.CreateSessionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?session" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         DisableS3ExpressSessionAuth = { value = true },
      },
   },
})

M.DeleteBucket = schema.operation({
   id = id.from("com.amazonaws.s3", "DeleteBucket"),
   input = M.DeleteBucketInput,
   output = M.DeleteBucketOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.DeleteBucketAnalyticsConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "DeleteBucketAnalyticsConfiguration"),
   input = M.DeleteBucketAnalyticsConfigurationInput,
   output = M.DeleteBucketAnalyticsConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/?analytics" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.DeleteBucketCors = schema.operation({
   id = id.from("com.amazonaws.s3", "DeleteBucketCors"),
   input = M.DeleteBucketCorsInput,
   output = M.DeleteBucketCorsOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/?cors" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.DeleteBucketEncryption = schema.operation({
   id = id.from("com.amazonaws.s3", "DeleteBucketEncryption"),
   input = M.DeleteBucketEncryptionInput,
   output = M.DeleteBucketEncryptionOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/?encryption" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.DeleteBucketIntelligentTieringConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "DeleteBucketIntelligentTieringConfiguration"),
   input = M.DeleteBucketIntelligentTieringConfigurationInput,
   output = M.DeleteBucketIntelligentTieringConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/?intelligent-tiering" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.DeleteBucketInventoryConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "DeleteBucketInventoryConfiguration"),
   input = M.DeleteBucketInventoryConfigurationInput,
   output = M.DeleteBucketInventoryConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/?inventory" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.DeleteBucketLifecycle = schema.operation({
   id = id.from("com.amazonaws.s3", "DeleteBucketLifecycle"),
   input = M.DeleteBucketLifecycleInput,
   output = M.DeleteBucketLifecycleOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/?lifecycle" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.DeleteBucketMetadataConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "DeleteBucketMetadataConfiguration"),
   input = M.DeleteBucketMetadataConfigurationInput,
   output = M.DeleteBucketMetadataConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/?metadataConfiguration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.DeleteBucketMetadataTableConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "DeleteBucketMetadataTableConfiguration"),
   input = M.DeleteBucketMetadataTableConfigurationInput,
   output = M.DeleteBucketMetadataTableConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/?metadataTable" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.DeleteBucketMetricsConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "DeleteBucketMetricsConfiguration"),
   input = M.DeleteBucketMetricsConfigurationInput,
   output = M.DeleteBucketMetricsConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/?metrics" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.DeleteBucketOwnershipControls = schema.operation({
   id = id.from("com.amazonaws.s3", "DeleteBucketOwnershipControls"),
   input = M.DeleteBucketOwnershipControlsInput,
   output = M.DeleteBucketOwnershipControlsOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/?ownershipControls" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.DeleteBucketPolicy = schema.operation({
   id = id.from("com.amazonaws.s3", "DeleteBucketPolicy"),
   input = M.DeleteBucketPolicyInput,
   output = M.DeleteBucketPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/?policy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.DeleteBucketReplication = schema.operation({
   id = id.from("com.amazonaws.s3", "DeleteBucketReplication"),
   input = M.DeleteBucketReplicationInput,
   output = M.DeleteBucketReplicationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/?replication" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.DeleteBucketTagging = schema.operation({
   id = id.from("com.amazonaws.s3", "DeleteBucketTagging"),
   input = M.DeleteBucketTaggingInput,
   output = M.DeleteBucketTaggingOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/?tagging" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.DeleteBucketWebsite = schema.operation({
   id = id.from("com.amazonaws.s3", "DeleteBucketWebsite"),
   input = M.DeleteBucketWebsiteInput,
   output = M.DeleteBucketWebsiteOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/?website" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.DeleteObject = schema.operation({
   id = id.from("com.amazonaws.s3", "DeleteObject"),
   input = M.DeleteObjectInput,
   output = M.DeleteObjectOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/{Key+}?x-id=DeleteObject" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
         Key = "Key",
      },
   },
})

M.DeleteObjects = schema.operation({
   id = id.from("com.amazonaws.s3", "DeleteObjects"),
   input = M.DeleteObjectsInput,
   output = M.DeleteObjectsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/?delete" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
   },
})

M.DeleteObjectTagging = schema.operation({
   id = id.from("com.amazonaws.s3", "DeleteObjectTagging"),
   input = M.DeleteObjectTaggingInput,
   output = M.DeleteObjectTaggingOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/{Key+}?tagging" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
   },
})

M.DeletePublicAccessBlock = schema.operation({
   id = id.from("com.amazonaws.s3", "DeletePublicAccessBlock"),
   input = M.DeletePublicAccessBlockInput,
   output = M.DeletePublicAccessBlockOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/?publicAccessBlock" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.GetBucketAbac = schema.operation({
   id = id.from("com.amazonaws.s3", "GetBucketAbac"),
   input = M.GetBucketAbacInput,
   output = M.GetBucketAbacOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?abac" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
   },
})

M.GetBucketAccelerateConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "GetBucketAccelerateConfiguration"),
   input = M.GetBucketAccelerateConfigurationInput,
   output = M.GetBucketAccelerateConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?accelerate" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.GetBucketAcl = schema.operation({
   id = id.from("com.amazonaws.s3", "GetBucketAcl"),
   input = M.GetBucketAclInput,
   output = M.GetBucketAclOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?acl" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.GetBucketAnalyticsConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "GetBucketAnalyticsConfiguration"),
   input = M.GetBucketAnalyticsConfigurationInput,
   output = M.GetBucketAnalyticsConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?analytics&x-id=GetBucketAnalyticsConfiguration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.GetBucketCors = schema.operation({
   id = id.from("com.amazonaws.s3", "GetBucketCors"),
   input = M.GetBucketCorsInput,
   output = M.GetBucketCorsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?cors" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.GetBucketEncryption = schema.operation({
   id = id.from("com.amazonaws.s3", "GetBucketEncryption"),
   input = M.GetBucketEncryptionInput,
   output = M.GetBucketEncryptionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?encryption" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.GetBucketIntelligentTieringConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "GetBucketIntelligentTieringConfiguration"),
   input = M.GetBucketIntelligentTieringConfigurationInput,
   output = M.GetBucketIntelligentTieringConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?intelligent-tiering&x-id=GetBucketIntelligentTieringConfiguration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.GetBucketInventoryConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "GetBucketInventoryConfiguration"),
   input = M.GetBucketInventoryConfigurationInput,
   output = M.GetBucketInventoryConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?inventory&x-id=GetBucketInventoryConfiguration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.GetBucketLifecycleConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "GetBucketLifecycleConfiguration"),
   input = M.GetBucketLifecycleConfigurationInput,
   output = M.GetBucketLifecycleConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?lifecycle" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.GetBucketLocation = schema.operation({
   id = id.from("com.amazonaws.s3", "GetBucketLocation"),
   input = M.GetBucketLocationInput,
   output = M.GetBucketLocationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?location" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.GetBucketLogging = schema.operation({
   id = id.from("com.amazonaws.s3", "GetBucketLogging"),
   input = M.GetBucketLoggingInput,
   output = M.GetBucketLoggingOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?logging" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.GetBucketMetadataConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "GetBucketMetadataConfiguration"),
   input = M.GetBucketMetadataConfigurationInput,
   output = M.GetBucketMetadataConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?metadataConfiguration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.GetBucketMetadataTableConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "GetBucketMetadataTableConfiguration"),
   input = M.GetBucketMetadataTableConfigurationInput,
   output = M.GetBucketMetadataTableConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?metadataTable" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.GetBucketMetricsConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "GetBucketMetricsConfiguration"),
   input = M.GetBucketMetricsConfigurationInput,
   output = M.GetBucketMetricsConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?metrics&x-id=GetBucketMetricsConfiguration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.GetBucketNotificationConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "GetBucketNotificationConfiguration"),
   input = M.GetBucketNotificationConfigurationInput,
   output = M.GetBucketNotificationConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?notification" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.GetBucketOwnershipControls = schema.operation({
   id = id.from("com.amazonaws.s3", "GetBucketOwnershipControls"),
   input = M.GetBucketOwnershipControlsInput,
   output = M.GetBucketOwnershipControlsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?ownershipControls" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.GetBucketPolicy = schema.operation({
   id = id.from("com.amazonaws.s3", "GetBucketPolicy"),
   input = M.GetBucketPolicyInput,
   output = M.GetBucketPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?policy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.GetBucketPolicyStatus = schema.operation({
   id = id.from("com.amazonaws.s3", "GetBucketPolicyStatus"),
   input = M.GetBucketPolicyStatusInput,
   output = M.GetBucketPolicyStatusOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?policyStatus" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.GetBucketReplication = schema.operation({
   id = id.from("com.amazonaws.s3", "GetBucketReplication"),
   input = M.GetBucketReplicationInput,
   output = M.GetBucketReplicationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?replication" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.GetBucketRequestPayment = schema.operation({
   id = id.from("com.amazonaws.s3", "GetBucketRequestPayment"),
   input = M.GetBucketRequestPaymentInput,
   output = M.GetBucketRequestPaymentOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?requestPayment" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.GetBucketTagging = schema.operation({
   id = id.from("com.amazonaws.s3", "GetBucketTagging"),
   input = M.GetBucketTaggingInput,
   output = M.GetBucketTaggingOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?tagging" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.GetBucketVersioning = schema.operation({
   id = id.from("com.amazonaws.s3", "GetBucketVersioning"),
   input = M.GetBucketVersioningInput,
   output = M.GetBucketVersioningOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?versioning" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.GetBucketWebsite = schema.operation({
   id = id.from("com.amazonaws.s3", "GetBucketWebsite"),
   input = M.GetBucketWebsiteInput,
   output = M.GetBucketWebsiteOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?website" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.GetObject = schema.operation({
   id = id.from("com.amazonaws.s3", "GetObject"),
   input = M.GetObjectInput,
   output = M.GetObjectOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/{Key+}?x-id=GetObject" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
         Key = "Key",
      },
   },
})

M.GetObjectAcl = schema.operation({
   id = id.from("com.amazonaws.s3", "GetObjectAcl"),
   input = M.GetObjectAclInput,
   output = M.GetObjectAclOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/{Key+}?acl" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
         Key = "Key",
      },
   },
})

M.GetObjectAttributes = schema.operation({
   id = id.from("com.amazonaws.s3", "GetObjectAttributes"),
   input = M.GetObjectAttributesInput,
   output = M.GetObjectAttributesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/{Key+}?attributes" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
   },
})

M.GetObjectLegalHold = schema.operation({
   id = id.from("com.amazonaws.s3", "GetObjectLegalHold"),
   input = M.GetObjectLegalHoldInput,
   output = M.GetObjectLegalHoldOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/{Key+}?legal-hold" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
   },
})

M.GetObjectLockConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "GetObjectLockConfiguration"),
   input = M.GetObjectLockConfigurationInput,
   output = M.GetObjectLockConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?object-lock" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
   },
})

M.GetObjectRetention = schema.operation({
   id = id.from("com.amazonaws.s3", "GetObjectRetention"),
   input = M.GetObjectRetentionInput,
   output = M.GetObjectRetentionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/{Key+}?retention" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
   },
})

M.GetObjectTagging = schema.operation({
   id = id.from("com.amazonaws.s3", "GetObjectTagging"),
   input = M.GetObjectTaggingInput,
   output = M.GetObjectTaggingOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/{Key+}?tagging" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
   },
})

M.GetObjectTorrent = schema.operation({
   id = id.from("com.amazonaws.s3", "GetObjectTorrent"),
   input = M.GetObjectTorrentInput,
   output = M.GetObjectTorrentOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/{Key+}?torrent" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
   },
})

M.GetPublicAccessBlock = schema.operation({
   id = id.from("com.amazonaws.s3", "GetPublicAccessBlock"),
   input = M.GetPublicAccessBlockInput,
   output = M.GetPublicAccessBlockOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?publicAccessBlock" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.HeadBucket = schema.operation({
   id = id.from("com.amazonaws.s3", "HeadBucket"),
   input = M.HeadBucketInput,
   output = M.HeadBucketOutput,
   traits = {
      [traits.HTTP] = { method = "HEAD", path = "/" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
   },
})

M.HeadObject = schema.operation({
   id = id.from("com.amazonaws.s3", "HeadObject"),
   input = M.HeadObjectInput,
   output = M.HeadObjectOutput,
   traits = {
      [traits.HTTP] = { method = "HEAD", path = "/{Key+}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
         Key = "Key",
      },
   },
})

M.ListBucketAnalyticsConfigurations = schema.operation({
   id = id.from("com.amazonaws.s3", "ListBucketAnalyticsConfigurations"),
   input = M.ListBucketAnalyticsConfigurationsInput,
   output = M.ListBucketAnalyticsConfigurationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?analytics&x-id=ListBucketAnalyticsConfigurations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.ListBucketIntelligentTieringConfigurations = schema.operation({
   id = id.from("com.amazonaws.s3", "ListBucketIntelligentTieringConfigurations"),
   input = M.ListBucketIntelligentTieringConfigurationsInput,
   output = M.ListBucketIntelligentTieringConfigurationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?intelligent-tiering&x-id=ListBucketIntelligentTieringConfigurations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.ListBucketInventoryConfigurations = schema.operation({
   id = id.from("com.amazonaws.s3", "ListBucketInventoryConfigurations"),
   input = M.ListBucketInventoryConfigurationsInput,
   output = M.ListBucketInventoryConfigurationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?inventory&x-id=ListBucketInventoryConfigurations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.ListBucketMetricsConfigurations = schema.operation({
   id = id.from("com.amazonaws.s3", "ListBucketMetricsConfigurations"),
   input = M.ListBucketMetricsConfigurationsInput,
   output = M.ListBucketMetricsConfigurationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?metrics&x-id=ListBucketMetricsConfigurations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.ListBuckets = schema.operation({
   id = id.from("com.amazonaws.s3", "ListBuckets"),
   input = M.ListBucketsInput,
   output = M.ListBucketsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?x-id=ListBuckets" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDirectoryBuckets = schema.operation({
   id = id.from("com.amazonaws.s3", "ListDirectoryBuckets"),
   input = M.ListDirectoryBucketsInput,
   output = M.ListDirectoryBucketsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?x-id=ListDirectoryBuckets" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.ListMultipartUploads = schema.operation({
   id = id.from("com.amazonaws.s3", "ListMultipartUploads"),
   input = M.ListMultipartUploadsInput,
   output = M.ListMultipartUploadsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?uploads" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
         Prefix = "Prefix",
      },
   },
})

M.ListObjects = schema.operation({
   id = id.from("com.amazonaws.s3", "ListObjects"),
   input = M.ListObjectsInput,
   output = M.ListObjectsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
         Prefix = "Prefix",
      },
   },
})

M.ListObjectsV2 = schema.operation({
   id = id.from("com.amazonaws.s3", "ListObjectsV2"),
   input = M.ListObjectsV2Input,
   output = M.ListObjectsV2Output,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?list-type=2" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
         Prefix = "Prefix",
      },
   },
})

M.ListObjectVersions = schema.operation({
   id = id.from("com.amazonaws.s3", "ListObjectVersions"),
   input = M.ListObjectVersionsInput,
   output = M.ListObjectVersionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/?versions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
         Prefix = "Prefix",
      },
   },
})

M.ListParts = schema.operation({
   id = id.from("com.amazonaws.s3", "ListParts"),
   input = M.ListPartsInput,
   output = M.ListPartsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/{Key+}?x-id=ListParts" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
         Key = "Key",
      },
   },
})

M.PutBucketAbac = schema.operation({
   id = id.from("com.amazonaws.s3", "PutBucketAbac"),
   input = M.PutBucketAbacInput,
   output = M.PutBucketAbacOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/?abac" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
   },
})

M.PutBucketAccelerateConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "PutBucketAccelerateConfiguration"),
   input = M.PutBucketAccelerateConfigurationInput,
   output = M.PutBucketAccelerateConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/?accelerate" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.PutBucketAcl = schema.operation({
   id = id.from("com.amazonaws.s3", "PutBucketAcl"),
   input = M.PutBucketAclInput,
   output = M.PutBucketAclOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/?acl" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.PutBucketAnalyticsConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "PutBucketAnalyticsConfiguration"),
   input = M.PutBucketAnalyticsConfigurationInput,
   output = M.PutBucketAnalyticsConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/?analytics" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.PutBucketCors = schema.operation({
   id = id.from("com.amazonaws.s3", "PutBucketCors"),
   input = M.PutBucketCorsInput,
   output = M.PutBucketCorsOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/?cors" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.PutBucketEncryption = schema.operation({
   id = id.from("com.amazonaws.s3", "PutBucketEncryption"),
   input = M.PutBucketEncryptionInput,
   output = M.PutBucketEncryptionOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/?encryption" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.PutBucketIntelligentTieringConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "PutBucketIntelligentTieringConfiguration"),
   input = M.PutBucketIntelligentTieringConfigurationInput,
   output = M.PutBucketIntelligentTieringConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/?intelligent-tiering" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.PutBucketInventoryConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "PutBucketInventoryConfiguration"),
   input = M.PutBucketInventoryConfigurationInput,
   output = M.PutBucketInventoryConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/?inventory" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.PutBucketLifecycleConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "PutBucketLifecycleConfiguration"),
   input = M.PutBucketLifecycleConfigurationInput,
   output = M.PutBucketLifecycleConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/?lifecycle" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.PutBucketLogging = schema.operation({
   id = id.from("com.amazonaws.s3", "PutBucketLogging"),
   input = M.PutBucketLoggingInput,
   output = M.PutBucketLoggingOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/?logging" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.PutBucketMetricsConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "PutBucketMetricsConfiguration"),
   input = M.PutBucketMetricsConfigurationInput,
   output = M.PutBucketMetricsConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/?metrics" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.PutBucketNotificationConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "PutBucketNotificationConfiguration"),
   input = M.PutBucketNotificationConfigurationInput,
   output = M.PutBucketNotificationConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/?notification" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.PutBucketOwnershipControls = schema.operation({
   id = id.from("com.amazonaws.s3", "PutBucketOwnershipControls"),
   input = M.PutBucketOwnershipControlsInput,
   output = M.PutBucketOwnershipControlsOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/?ownershipControls" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.PutBucketPolicy = schema.operation({
   id = id.from("com.amazonaws.s3", "PutBucketPolicy"),
   input = M.PutBucketPolicyInput,
   output = M.PutBucketPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/?policy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.PutBucketReplication = schema.operation({
   id = id.from("com.amazonaws.s3", "PutBucketReplication"),
   input = M.PutBucketReplicationInput,
   output = M.PutBucketReplicationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/?replication" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.PutBucketRequestPayment = schema.operation({
   id = id.from("com.amazonaws.s3", "PutBucketRequestPayment"),
   input = M.PutBucketRequestPaymentInput,
   output = M.PutBucketRequestPaymentOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/?requestPayment" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.PutBucketTagging = schema.operation({
   id = id.from("com.amazonaws.s3", "PutBucketTagging"),
   input = M.PutBucketTaggingInput,
   output = M.PutBucketTaggingOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/?tagging" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.PutBucketVersioning = schema.operation({
   id = id.from("com.amazonaws.s3", "PutBucketVersioning"),
   input = M.PutBucketVersioningInput,
   output = M.PutBucketVersioningOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/?versioning" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.PutBucketWebsite = schema.operation({
   id = id.from("com.amazonaws.s3", "PutBucketWebsite"),
   input = M.PutBucketWebsiteInput,
   output = M.PutBucketWebsiteOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/?website" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.PutObject = schema.operation({
   id = id.from("com.amazonaws.s3", "PutObject"),
   input = M.PutObjectInput,
   output = M.PutObjectOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/{Key+}?x-id=PutObject" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
         Key = "Key",
      },
   },
})

M.PutObjectAcl = schema.operation({
   id = id.from("com.amazonaws.s3", "PutObjectAcl"),
   input = M.PutObjectAclInput,
   output = M.PutObjectAclOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/{Key+}?acl" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
         Key = "Key",
      },
   },
})

M.PutObjectLegalHold = schema.operation({
   id = id.from("com.amazonaws.s3", "PutObjectLegalHold"),
   input = M.PutObjectLegalHoldInput,
   output = M.PutObjectLegalHoldOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/{Key+}?legal-hold" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
   },
})

M.PutObjectLockConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "PutObjectLockConfiguration"),
   input = M.PutObjectLockConfigurationInput,
   output = M.PutObjectLockConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/?object-lock" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
   },
})

M.PutObjectRetention = schema.operation({
   id = id.from("com.amazonaws.s3", "PutObjectRetention"),
   input = M.PutObjectRetentionInput,
   output = M.PutObjectRetentionOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/{Key+}?retention" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
   },
})

M.PutObjectTagging = schema.operation({
   id = id.from("com.amazonaws.s3", "PutObjectTagging"),
   input = M.PutObjectTaggingInput,
   output = M.PutObjectTaggingOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/{Key+}?tagging" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
   },
})

M.PutPublicAccessBlock = schema.operation({
   id = id.from("com.amazonaws.s3", "PutPublicAccessBlock"),
   input = M.PutPublicAccessBlockInput,
   output = M.PutPublicAccessBlockOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/?publicAccessBlock" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.RenameObject = schema.operation({
   id = id.from("com.amazonaws.s3", "RenameObject"),
   input = M.RenameObjectInput,
   output = M.RenameObjectOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/{Key+}?renameObject" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
         Key = "Key",
      },
   },
})

M.RestoreObject = schema.operation({
   id = id.from("com.amazonaws.s3", "RestoreObject"),
   input = M.RestoreObjectInput,
   output = M.RestoreObjectOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/{Key+}?restore" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
   },
})

M.SelectObjectContent = schema.operation({
   id = id.from("com.amazonaws.s3", "SelectObjectContent"),
   input = M.SelectObjectContentInput,
   output = M.SelectObjectContentOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/{Key+}?select&select-type=2" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.EVENT_STREAM] = M.SelectObjectContentEventStream,
   },
})

M.UpdateBucketMetadataInventoryTableConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "UpdateBucketMetadataInventoryTableConfiguration"),
   input = M.UpdateBucketMetadataInventoryTableConfigurationInput,
   output = M.UpdateBucketMetadataInventoryTableConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/?metadataInventoryTable" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.UpdateBucketMetadataJournalTableConfiguration = schema.operation({
   id = id.from("com.amazonaws.s3", "UpdateBucketMetadataJournalTableConfiguration"),
   input = M.UpdateBucketMetadataJournalTableConfigurationInput,
   output = M.UpdateBucketMetadataJournalTableConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/?metadataJournalTable" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseS3ExpressControlEndpoint = { value = true },
      },
   },
})

M.UpdateObjectEncryption = schema.operation({
   id = id.from("com.amazonaws.s3", "UpdateObjectEncryption"),
   input = M.UpdateObjectEncryptionInput,
   output = M.UpdateObjectEncryptionOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/{Key+}?encryption" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
   },
})

M.UploadPart = schema.operation({
   id = id.from("com.amazonaws.s3", "UploadPart"),
   input = M.UploadPartInput,
   output = M.UploadPartOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/{Key+}?x-id=UploadPart" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
         Key = "Key",
      },
   },
})

M.UploadPartCopy = schema.operation({
   id = id.from("com.amazonaws.s3", "UploadPartCopy"),
   input = M.UploadPartCopyInput,
   output = M.UploadPartCopyOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/{Key+}?x-id=UploadPartCopy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.CONTEXT_PARAMS] = {
         Bucket = "Bucket",
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         DisableS3ExpressSessionAuth = { value = true },
      },
   },
})

M.WriteGetObjectResponse = schema.operation({
   id = id.from("com.amazonaws.s3", "WriteGetObjectResponse"),
   input = M.WriteGetObjectResponseInput,
   output = M.WriteGetObjectResponseOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/WriteGetObjectResponse" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.STATIC_CONTEXT_PARAMS] = {
         UseObjectLambdaEndpoint = { value = true },
      },
   },
})

return M
