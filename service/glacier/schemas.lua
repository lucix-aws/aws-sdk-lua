

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.glacier"

local M = {}

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.JobList = schema.new({ type = "list", list_member = M.GlacierJobDescription })

M.UploadsList = schema.new({ type = "list", list_member = M.UploadListElement })

M.PartList = schema.new({ type = "list", list_member = M.PartListElement })

M.ProvisionedCapacityList = schema.new({ type = "list", list_member = M.ProvisionedCapacityDescription })

M.VaultList = schema.new({ type = "list", list_member = M.DescribeVaultOutput })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.DataRetrievalRulesList = schema.new({ type = "list", list_member = M.DataRetrievalRule })

M.NotificationEventList = schema.new({ type = "list", list_member = prelude.String })

M.AccessControlPolicyList = schema.new({ type = "list", list_member = M.Grant })

M.hashmap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.AbortMultipartUploadInput = schema.new({
   id = id.from(_N, "AbortMultipartUploadInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "AbortMultipartUploadInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "AbortMultipartUploadInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      uploadId = schema.new({
         id = id.from(_N, "AbortMultipartUploadInput", "uploadId"),
         type = "string",
         name = "uploadId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.AbortMultipartUploadOutput = prelude.Unit

M.InvalidParameterValueException = schema.new({
   id = id.from(_N, "InvalidParameterValueException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      type = schema.new({
         id = id.from(_N, "InvalidParameterValueException", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "InvalidParameterValueException", "code"),
         type = "string",
         name = "code",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "InvalidParameterValueException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.MissingParameterValueException = schema.new({
   id = id.from(_N, "MissingParameterValueException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      type = schema.new({
         id = id.from(_N, "MissingParameterValueException", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "MissingParameterValueException", "code"),
         type = "string",
         name = "code",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "MissingParameterValueException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.NoLongerSupportedException = schema.new({
   id = id.from(_N, "NoLongerSupportedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      type = schema.new({
         id = id.from(_N, "NoLongerSupportedException", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "NoLongerSupportedException", "code"),
         type = "string",
         name = "code",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "NoLongerSupportedException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ResourceNotFoundException = schema.new({
   id = id.from(_N, "ResourceNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      type = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "code"),
         type = "string",
         name = "code",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ServiceUnavailableException = schema.new({
   id = id.from(_N, "ServiceUnavailableException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      type = schema.new({
         id = id.from(_N, "ServiceUnavailableException", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "ServiceUnavailableException", "code"),
         type = "string",
         name = "code",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "ServiceUnavailableException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.AbortVaultLockInput = schema.new({
   id = id.from(_N, "AbortVaultLockInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "AbortVaultLockInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "AbortVaultLockInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.AbortVaultLockOutput = prelude.Unit

M.Grantee = schema.new({
   id = id.from(_N, "Grantee"),
   type = "structure",
   members = {
      Type = schema.new({
         id = id.from(_N, "Grantee", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DisplayName = schema.new({
         id = id.from(_N, "Grantee", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      URI = schema.new({
         id = id.from(_N, "Grantee", "URI"),
         type = "string",
         name = "URI",
         target_id = prelude.String.id,
      }),
      ID = schema.new({
         id = id.from(_N, "Grantee", "ID"),
         type = "string",
         name = "ID",
         target_id = prelude.String.id,
      }),
      EmailAddress = schema.new({
         id = id.from(_N, "Grantee", "EmailAddress"),
         type = "string",
         name = "EmailAddress",
         target_id = prelude.String.id,
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
      }),
      Permission = schema.new({
         id = id.from(_N, "Grant", "Permission"),
         type = "string",
         name = "Permission",
         target_id = prelude.String.id,
      }),
   },
})

M.AddTagsToVaultInput = schema.new({
   id = id.from(_N, "AddTagsToVaultInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "AddTagsToVaultInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "AddTagsToVaultInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "AddTagsToVaultInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.AddTagsToVaultOutput = prelude.Unit

M.LimitExceededException = schema.new({
   id = id.from(_N, "LimitExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      type = schema.new({
         id = id.from(_N, "LimitExceededException", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "LimitExceededException", "code"),
         type = "string",
         name = "code",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "LimitExceededException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.CompleteMultipartUploadInput = schema.new({
   id = id.from(_N, "CompleteMultipartUploadInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      uploadId = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "uploadId"),
         type = "string",
         name = "uploadId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      archiveSize = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "archiveSize"),
         type = "string",
         name = "archiveSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-archive-size" },
         },
      }),
      checksum = schema.new({
         id = id.from(_N, "CompleteMultipartUploadInput", "checksum"),
         type = "string",
         name = "checksum",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sha256-tree-hash" },
         },
      }),
   },
})

M.CompleteMultipartUploadOutput = schema.new({
   id = id.from(_N, "ArchiveCreationOutput"),
   type = "structure",
   members = {
      location = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "location"),
         type = "string",
         name = "location",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Location" },
         },
      }),
      checksum = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "checksum"),
         type = "string",
         name = "checksum",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sha256-tree-hash" },
         },
      }),
      archiveId = schema.new({
         id = id.from(_N, "CompleteMultipartUploadOutput", "archiveId"),
         type = "string",
         name = "archiveId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-archive-id" },
         },
      }),
   },
})

M.CompleteVaultLockInput = schema.new({
   id = id.from(_N, "CompleteVaultLockInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "CompleteVaultLockInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "CompleteVaultLockInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      lockId = schema.new({
         id = id.from(_N, "CompleteVaultLockInput", "lockId"),
         type = "string",
         name = "lockId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.CompleteVaultLockOutput = prelude.Unit

M.CreateVaultInput = schema.new({
   id = id.from(_N, "CreateVaultInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "CreateVaultInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "CreateVaultInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.CreateVaultOutput = schema.new({
   id = id.from(_N, "CreateVaultOutput"),
   type = "structure",
   members = {
      location = schema.new({
         id = id.from(_N, "CreateVaultOutput", "location"),
         type = "string",
         name = "location",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Location" },
         },
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

M.DataRetrievalRule = schema.new({
   id = id.from(_N, "DataRetrievalRule"),
   type = "structure",
   members = {
      Strategy = schema.new({
         id = id.from(_N, "DataRetrievalRule", "Strategy"),
         type = "string",
         name = "Strategy",
         target_id = prelude.String.id,
      }),
      BytesPerHour = schema.new({
         id = id.from(_N, "DataRetrievalRule", "BytesPerHour"),
         type = "long",
         name = "BytesPerHour",
         target_id = prelude.Long.id,
      }),
   },
})

M.DataRetrievalPolicy = schema.new({
   id = id.from(_N, "DataRetrievalPolicy"),
   type = "structure",
   members = {
      Rules = schema.new({
         id = id.from(_N, "DataRetrievalPolicy", "Rules"),
         type = "list",
         name = "Rules",
         target_id = prelude.Document.id,
         list_member = M.DataRetrievalRule,
      }),
   },
})

M.DeleteArchiveInput = schema.new({
   id = id.from(_N, "DeleteArchiveInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "DeleteArchiveInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "DeleteArchiveInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      archiveId = schema.new({
         id = id.from(_N, "DeleteArchiveInput", "archiveId"),
         type = "string",
         name = "archiveId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteArchiveOutput = prelude.Unit

M.DeleteVaultInput = schema.new({
   id = id.from(_N, "DeleteVaultInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "DeleteVaultInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "DeleteVaultInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteVaultOutput = prelude.Unit

M.DeleteVaultAccessPolicyInput = schema.new({
   id = id.from(_N, "DeleteVaultAccessPolicyInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "DeleteVaultAccessPolicyInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "DeleteVaultAccessPolicyInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteVaultAccessPolicyOutput = prelude.Unit

M.DeleteVaultNotificationsInput = schema.new({
   id = id.from(_N, "DeleteVaultNotificationsInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "DeleteVaultNotificationsInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "DeleteVaultNotificationsInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteVaultNotificationsOutput = prelude.Unit

M.DescribeJobInput = schema.new({
   id = id.from(_N, "DescribeJobInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "DescribeJobInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "DescribeJobInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      jobId = schema.new({
         id = id.from(_N, "DescribeJobInput", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.InventoryRetrievalJobDescription = schema.new({
   id = id.from(_N, "InventoryRetrievalJobDescription"),
   type = "structure",
   members = {
      Format = schema.new({
         id = id.from(_N, "InventoryRetrievalJobDescription", "Format"),
         type = "string",
         name = "Format",
         target_id = prelude.String.id,
      }),
      StartDate = schema.new({
         id = id.from(_N, "InventoryRetrievalJobDescription", "StartDate"),
         type = "string",
         name = "StartDate",
         target_id = prelude.String.id,
      }),
      EndDate = schema.new({
         id = id.from(_N, "InventoryRetrievalJobDescription", "EndDate"),
         type = "string",
         name = "EndDate",
         target_id = prelude.String.id,
      }),
      Limit = schema.new({
         id = id.from(_N, "InventoryRetrievalJobDescription", "Limit"),
         type = "string",
         name = "Limit",
         target_id = prelude.String.id,
      }),
      Marker = schema.new({
         id = id.from(_N, "InventoryRetrievalJobDescription", "Marker"),
         type = "string",
         name = "Marker",
         target_id = prelude.String.id,
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

M.S3Location = schema.new({
   id = id.from(_N, "S3Location"),
   type = "structure",
   members = {
      BucketName = schema.new({
         id = id.from(_N, "S3Location", "BucketName"),
         type = "string",
         name = "BucketName",
         target_id = prelude.String.id,
      }),
      Prefix = schema.new({
         id = id.from(_N, "S3Location", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
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
         list_member = M.Grant,
      }),
      Tagging = schema.new({
         id = id.from(_N, "S3Location", "Tagging"),
         type = "map",
         name = "Tagging",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      UserMetadata = schema.new({
         id = id.from(_N, "S3Location", "UserMetadata"),
         type = "map",
         name = "UserMetadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
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

M.InputSerialization = schema.new({
   id = id.from(_N, "InputSerialization"),
   type = "structure",
   members = {
      csv = schema.new({
         id = id.from(_N, "InputSerialization", "csv"),
         type = "structure",
         name = "csv",
         target_id = id.from(_N, "CSVInput"),
         target = M.CSVInput,
      }),
   },
})

M.OutputSerialization = schema.new({
   id = id.from(_N, "OutputSerialization"),
   type = "structure",
   members = {
      csv = schema.new({
         id = id.from(_N, "OutputSerialization", "csv"),
         type = "structure",
         name = "csv",
         target_id = id.from(_N, "CSVOutput"),
         target = M.CSVOutput,
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
      }),
      ExpressionType = schema.new({
         id = id.from(_N, "SelectParameters", "ExpressionType"),
         type = "string",
         name = "ExpressionType",
         target_id = prelude.String.id,
      }),
      Expression = schema.new({
         id = id.from(_N, "SelectParameters", "Expression"),
         type = "string",
         name = "Expression",
         target_id = prelude.String.id,
      }),
      OutputSerialization = schema.new({
         id = id.from(_N, "SelectParameters", "OutputSerialization"),
         type = "structure",
         name = "OutputSerialization",
         target_id = id.from(_N, "OutputSerialization"),
         target = M.OutputSerialization,
      }),
   },
})

M.DescribeJobOutput = schema.new({
   id = id.from(_N, "GlacierJobDescription"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "DescribeJobOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
      }),
      JobDescription = schema.new({
         id = id.from(_N, "DescribeJobOutput", "JobDescription"),
         type = "string",
         name = "JobDescription",
         target_id = prelude.String.id,
      }),
      Action = schema.new({
         id = id.from(_N, "DescribeJobOutput", "Action"),
         type = "string",
         name = "Action",
         target_id = prelude.String.id,
      }),
      ArchiveId = schema.new({
         id = id.from(_N, "DescribeJobOutput", "ArchiveId"),
         type = "string",
         name = "ArchiveId",
         target_id = prelude.String.id,
      }),
      VaultARN = schema.new({
         id = id.from(_N, "DescribeJobOutput", "VaultARN"),
         type = "string",
         name = "VaultARN",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "DescribeJobOutput", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
      }),
      Completed = schema.new({
         id = id.from(_N, "DescribeJobOutput", "Completed"),
         type = "boolean",
         name = "Completed",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      StatusCode = schema.new({
         id = id.from(_N, "DescribeJobOutput", "StatusCode"),
         type = "string",
         name = "StatusCode",
         target_id = prelude.String.id,
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "DescribeJobOutput", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
      ArchiveSizeInBytes = schema.new({
         id = id.from(_N, "DescribeJobOutput", "ArchiveSizeInBytes"),
         type = "long",
         name = "ArchiveSizeInBytes",
         target_id = prelude.Long.id,
      }),
      InventorySizeInBytes = schema.new({
         id = id.from(_N, "DescribeJobOutput", "InventorySizeInBytes"),
         type = "long",
         name = "InventorySizeInBytes",
         target_id = prelude.Long.id,
      }),
      SNSTopic = schema.new({
         id = id.from(_N, "DescribeJobOutput", "SNSTopic"),
         type = "string",
         name = "SNSTopic",
         target_id = prelude.String.id,
      }),
      CompletionDate = schema.new({
         id = id.from(_N, "DescribeJobOutput", "CompletionDate"),
         type = "string",
         name = "CompletionDate",
         target_id = prelude.String.id,
      }),
      SHA256TreeHash = schema.new({
         id = id.from(_N, "DescribeJobOutput", "SHA256TreeHash"),
         type = "string",
         name = "SHA256TreeHash",
         target_id = prelude.String.id,
      }),
      ArchiveSHA256TreeHash = schema.new({
         id = id.from(_N, "DescribeJobOutput", "ArchiveSHA256TreeHash"),
         type = "string",
         name = "ArchiveSHA256TreeHash",
         target_id = prelude.String.id,
      }),
      RetrievalByteRange = schema.new({
         id = id.from(_N, "DescribeJobOutput", "RetrievalByteRange"),
         type = "string",
         name = "RetrievalByteRange",
         target_id = prelude.String.id,
      }),
      Tier = schema.new({
         id = id.from(_N, "DescribeJobOutput", "Tier"),
         type = "string",
         name = "Tier",
         target_id = prelude.String.id,
      }),
      InventoryRetrievalParameters = schema.new({
         id = id.from(_N, "DescribeJobOutput", "InventoryRetrievalParameters"),
         type = "structure",
         name = "InventoryRetrievalParameters",
         target_id = id.from(_N, "InventoryRetrievalJobDescription"),
         target = M.InventoryRetrievalJobDescription,
      }),
      JobOutputPath = schema.new({
         id = id.from(_N, "DescribeJobOutput", "JobOutputPath"),
         type = "string",
         name = "JobOutputPath",
         target_id = prelude.String.id,
      }),
      SelectParameters = schema.new({
         id = id.from(_N, "DescribeJobOutput", "SelectParameters"),
         type = "structure",
         name = "SelectParameters",
         target_id = id.from(_N, "SelectParameters"),
         target = M.SelectParameters,
      }),
      OutputLocation = schema.new({
         id = id.from(_N, "DescribeJobOutput", "OutputLocation"),
         type = "structure",
         name = "OutputLocation",
         target_id = id.from(_N, "OutputLocation"),
         target = M.OutputLocation,
      }),
   },
})

M.DescribeVaultInput = schema.new({
   id = id.from(_N, "DescribeVaultInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "DescribeVaultInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "DescribeVaultInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeVaultOperationOutput = schema.new({
   id = id.from(_N, "DescribeVaultOutput"),
   type = "structure",
   members = {
      VaultARN = schema.new({
         id = id.from(_N, "DescribeVaultOperationOutput", "VaultARN"),
         type = "string",
         name = "VaultARN",
         target_id = prelude.String.id,
      }),
      VaultName = schema.new({
         id = id.from(_N, "DescribeVaultOperationOutput", "VaultName"),
         type = "string",
         name = "VaultName",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "DescribeVaultOperationOutput", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
      }),
      LastInventoryDate = schema.new({
         id = id.from(_N, "DescribeVaultOperationOutput", "LastInventoryDate"),
         type = "string",
         name = "LastInventoryDate",
         target_id = prelude.String.id,
      }),
      NumberOfArchives = schema.new({
         id = id.from(_N, "DescribeVaultOperationOutput", "NumberOfArchives"),
         type = "long",
         name = "NumberOfArchives",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      SizeInBytes = schema.new({
         id = id.from(_N, "DescribeVaultOperationOutput", "SizeInBytes"),
         type = "long",
         name = "SizeInBytes",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.DescribeVaultOutput = schema.new({
   id = id.from(_N, "DescribeVaultOutput"),
   type = "structure",
   members = {
      VaultARN = schema.new({
         id = id.from(_N, "DescribeVaultOutput", "VaultARN"),
         type = "string",
         name = "VaultARN",
         target_id = prelude.String.id,
      }),
      VaultName = schema.new({
         id = id.from(_N, "DescribeVaultOutput", "VaultName"),
         type = "string",
         name = "VaultName",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "DescribeVaultOutput", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
      }),
      LastInventoryDate = schema.new({
         id = id.from(_N, "DescribeVaultOutput", "LastInventoryDate"),
         type = "string",
         name = "LastInventoryDate",
         target_id = prelude.String.id,
      }),
      NumberOfArchives = schema.new({
         id = id.from(_N, "DescribeVaultOutput", "NumberOfArchives"),
         type = "long",
         name = "NumberOfArchives",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      SizeInBytes = schema.new({
         id = id.from(_N, "DescribeVaultOutput", "SizeInBytes"),
         type = "long",
         name = "SizeInBytes",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.GetDataRetrievalPolicyInput = schema.new({
   id = id.from(_N, "GetDataRetrievalPolicyInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "GetDataRetrievalPolicyInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetDataRetrievalPolicyOutput = schema.new({
   id = id.from(_N, "GetDataRetrievalPolicyOutput"),
   type = "structure",
   members = {
      Policy = schema.new({
         id = id.from(_N, "GetDataRetrievalPolicyOutput", "Policy"),
         type = "structure",
         name = "Policy",
         target_id = id.from(_N, "DataRetrievalPolicy"),
         target = M.DataRetrievalPolicy,
      }),
   },
})

M.GetJobOutputInput = schema.new({
   id = id.from(_N, "GetJobOutputInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "GetJobOutputInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "GetJobOutputInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      jobId = schema.new({
         id = id.from(_N, "GetJobOutputInput", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      range = schema.new({
         id = id.from(_N, "GetJobOutputInput", "range"),
         type = "string",
         name = "range",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Range" },
         },
      }),
   },
})

M.GetJobOutputOutput = schema.new({
   id = id.from(_N, "GetJobOutputOutput"),
   type = "structure",
   members = {
      body = schema.new({
         id = id.from(_N, "GetJobOutputOutput", "body"),
         type = "blob",
         name = "body",
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
      checksum = schema.new({
         id = id.from(_N, "GetJobOutputOutput", "checksum"),
         type = "string",
         name = "checksum",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sha256-tree-hash" },
         },
      }),
      status = schema.new({
         id = id.from(_N, "GetJobOutputOutput", "status"),
         type = "integer",
         name = "status",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.HTTP_RESPONSE_CODE] = {},
         },
      }),
      contentRange = schema.new({
         id = id.from(_N, "GetJobOutputOutput", "contentRange"),
         type = "string",
         name = "contentRange",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Range" },
         },
      }),
      acceptRanges = schema.new({
         id = id.from(_N, "GetJobOutputOutput", "acceptRanges"),
         type = "string",
         name = "acceptRanges",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Accept-Ranges" },
         },
      }),
      contentType = schema.new({
         id = id.from(_N, "GetJobOutputOutput", "contentType"),
         type = "string",
         name = "contentType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Type" },
         },
      }),
      archiveDescription = schema.new({
         id = id.from(_N, "GetJobOutputOutput", "archiveDescription"),
         type = "string",
         name = "archiveDescription",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-archive-description" },
         },
      }),
   },
})

M.GetVaultAccessPolicyInput = schema.new({
   id = id.from(_N, "GetVaultAccessPolicyInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "GetVaultAccessPolicyInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "GetVaultAccessPolicyInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.VaultAccessPolicy = schema.new({
   id = id.from(_N, "VaultAccessPolicy"),
   type = "structure",
   members = {
      Policy = schema.new({
         id = id.from(_N, "VaultAccessPolicy", "Policy"),
         type = "string",
         name = "Policy",
         target_id = prelude.String.id,
      }),
   },
})

M.GetVaultAccessPolicyOutput = schema.new({
   id = id.from(_N, "GetVaultAccessPolicyOutput"),
   type = "structure",
   members = {
      policy = schema.new({
         id = id.from(_N, "GetVaultAccessPolicyOutput", "policy"),
         type = "structure",
         name = "policy",
         target_id = id.from(_N, "VaultAccessPolicy"),
         target = M.VaultAccessPolicy,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.GetVaultLockInput = schema.new({
   id = id.from(_N, "GetVaultLockInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "GetVaultLockInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "GetVaultLockInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetVaultLockOutput = schema.new({
   id = id.from(_N, "GetVaultLockOutput"),
   type = "structure",
   members = {
      Policy = schema.new({
         id = id.from(_N, "GetVaultLockOutput", "Policy"),
         type = "string",
         name = "Policy",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "GetVaultLockOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      ExpirationDate = schema.new({
         id = id.from(_N, "GetVaultLockOutput", "ExpirationDate"),
         type = "string",
         name = "ExpirationDate",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "GetVaultLockOutput", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
      }),
   },
})

M.GetVaultNotificationsInput = schema.new({
   id = id.from(_N, "GetVaultNotificationsInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "GetVaultNotificationsInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "GetVaultNotificationsInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.VaultNotificationConfig = schema.new({
   id = id.from(_N, "VaultNotificationConfig"),
   type = "structure",
   members = {
      SNSTopic = schema.new({
         id = id.from(_N, "VaultNotificationConfig", "SNSTopic"),
         type = "string",
         name = "SNSTopic",
         target_id = prelude.String.id,
      }),
      Events = schema.new({
         id = id.from(_N, "VaultNotificationConfig", "Events"),
         type = "list",
         name = "Events",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.GetVaultNotificationsOutput = schema.new({
   id = id.from(_N, "GetVaultNotificationsOutput"),
   type = "structure",
   members = {
      vaultNotificationConfig = schema.new({
         id = id.from(_N, "GetVaultNotificationsOutput", "vaultNotificationConfig"),
         type = "structure",
         name = "vaultNotificationConfig",
         target_id = id.from(_N, "VaultNotificationConfig"),
         target = M.VaultNotificationConfig,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.InventoryRetrievalJobInput = schema.new({
   id = id.from(_N, "InventoryRetrievalJobInput"),
   type = "structure",
   members = {
      StartDate = schema.new({
         id = id.from(_N, "InventoryRetrievalJobInput", "StartDate"),
         type = "string",
         name = "StartDate",
         target_id = prelude.String.id,
      }),
      EndDate = schema.new({
         id = id.from(_N, "InventoryRetrievalJobInput", "EndDate"),
         type = "string",
         name = "EndDate",
         target_id = prelude.String.id,
      }),
      Limit = schema.new({
         id = id.from(_N, "InventoryRetrievalJobInput", "Limit"),
         type = "string",
         name = "Limit",
         target_id = prelude.String.id,
      }),
      Marker = schema.new({
         id = id.from(_N, "InventoryRetrievalJobInput", "Marker"),
         type = "string",
         name = "Marker",
         target_id = prelude.String.id,
      }),
   },
})

M.JobParameters = schema.new({
   id = id.from(_N, "JobParameters"),
   type = "structure",
   members = {
      Format = schema.new({
         id = id.from(_N, "JobParameters", "Format"),
         type = "string",
         name = "Format",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "JobParameters", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      ArchiveId = schema.new({
         id = id.from(_N, "JobParameters", "ArchiveId"),
         type = "string",
         name = "ArchiveId",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "JobParameters", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      SNSTopic = schema.new({
         id = id.from(_N, "JobParameters", "SNSTopic"),
         type = "string",
         name = "SNSTopic",
         target_id = prelude.String.id,
      }),
      RetrievalByteRange = schema.new({
         id = id.from(_N, "JobParameters", "RetrievalByteRange"),
         type = "string",
         name = "RetrievalByteRange",
         target_id = prelude.String.id,
      }),
      Tier = schema.new({
         id = id.from(_N, "JobParameters", "Tier"),
         type = "string",
         name = "Tier",
         target_id = prelude.String.id,
      }),
      InventoryRetrievalParameters = schema.new({
         id = id.from(_N, "JobParameters", "InventoryRetrievalParameters"),
         type = "structure",
         name = "InventoryRetrievalParameters",
         target_id = id.from(_N, "InventoryRetrievalJobInput"),
         target = M.InventoryRetrievalJobInput,
      }),
      SelectParameters = schema.new({
         id = id.from(_N, "JobParameters", "SelectParameters"),
         type = "structure",
         name = "SelectParameters",
         target_id = id.from(_N, "SelectParameters"),
         target = M.SelectParameters,
      }),
      OutputLocation = schema.new({
         id = id.from(_N, "JobParameters", "OutputLocation"),
         type = "structure",
         name = "OutputLocation",
         target_id = id.from(_N, "OutputLocation"),
         target = M.OutputLocation,
      }),
   },
})

M.InitiateJobInput = schema.new({
   id = id.from(_N, "InitiateJobInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "InitiateJobInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "InitiateJobInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      jobParameters = schema.new({
         id = id.from(_N, "InitiateJobInput", "jobParameters"),
         type = "structure",
         name = "jobParameters",
         target_id = id.from(_N, "JobParameters"),
         target = M.JobParameters,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.InitiateJobOutput = schema.new({
   id = id.from(_N, "InitiateJobOutput"),
   type = "structure",
   members = {
      location = schema.new({
         id = id.from(_N, "InitiateJobOutput", "location"),
         type = "string",
         name = "location",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Location" },
         },
      }),
      jobId = schema.new({
         id = id.from(_N, "InitiateJobOutput", "jobId"),
         type = "string",
         name = "jobId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-job-id" },
         },
      }),
      jobOutputPath = schema.new({
         id = id.from(_N, "InitiateJobOutput", "jobOutputPath"),
         type = "string",
         name = "jobOutputPath",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-job-output-path" },
         },
      }),
   },
})

M.InsufficientCapacityException = schema.new({
   id = id.from(_N, "InsufficientCapacityException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      type = schema.new({
         id = id.from(_N, "InsufficientCapacityException", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "InsufficientCapacityException", "code"),
         type = "string",
         name = "code",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "InsufficientCapacityException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.PolicyEnforcedException = schema.new({
   id = id.from(_N, "PolicyEnforcedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      type = schema.new({
         id = id.from(_N, "PolicyEnforcedException", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "PolicyEnforcedException", "code"),
         type = "string",
         name = "code",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "PolicyEnforcedException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InitiateMultipartUploadInput = schema.new({
   id = id.from(_N, "InitiateMultipartUploadInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "InitiateMultipartUploadInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "InitiateMultipartUploadInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      archiveDescription = schema.new({
         id = id.from(_N, "InitiateMultipartUploadInput", "archiveDescription"),
         type = "string",
         name = "archiveDescription",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-archive-description" },
         },
      }),
      partSize = schema.new({
         id = id.from(_N, "InitiateMultipartUploadInput", "partSize"),
         type = "string",
         name = "partSize",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-part-size" },
         },
      }),
   },
})

M.InitiateMultipartUploadOutput = schema.new({
   id = id.from(_N, "InitiateMultipartUploadOutput"),
   type = "structure",
   members = {
      location = schema.new({
         id = id.from(_N, "InitiateMultipartUploadOutput", "location"),
         type = "string",
         name = "location",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Location" },
         },
      }),
      uploadId = schema.new({
         id = id.from(_N, "InitiateMultipartUploadOutput", "uploadId"),
         type = "string",
         name = "uploadId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-multipart-upload-id" },
         },
      }),
   },
})

M.VaultLockPolicy = schema.new({
   id = id.from(_N, "VaultLockPolicy"),
   type = "structure",
   members = {
      Policy = schema.new({
         id = id.from(_N, "VaultLockPolicy", "Policy"),
         type = "string",
         name = "Policy",
         target_id = prelude.String.id,
      }),
   },
})

M.InitiateVaultLockInput = schema.new({
   id = id.from(_N, "InitiateVaultLockInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "InitiateVaultLockInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "InitiateVaultLockInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      policy = schema.new({
         id = id.from(_N, "InitiateVaultLockInput", "policy"),
         type = "structure",
         name = "policy",
         target_id = id.from(_N, "VaultLockPolicy"),
         target = M.VaultLockPolicy,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.InitiateVaultLockOutput = schema.new({
   id = id.from(_N, "InitiateVaultLockOutput"),
   type = "structure",
   members = {
      lockId = schema.new({
         id = id.from(_N, "InitiateVaultLockOutput", "lockId"),
         type = "string",
         name = "lockId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-lock-id" },
         },
      }),
   },
})

M.ListJobsInput = schema.new({
   id = id.from(_N, "ListJobsInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "ListJobsInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "ListJobsInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      limit = schema.new({
         id = id.from(_N, "ListJobsInput", "limit"),
         type = "integer",
         name = "limit",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "limit" },
         },
      }),
      marker = schema.new({
         id = id.from(_N, "ListJobsInput", "marker"),
         type = "string",
         name = "marker",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "marker" },
         },
      }),
      statuscode = schema.new({
         id = id.from(_N, "ListJobsInput", "statuscode"),
         type = "string",
         name = "statuscode",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "statuscode" },
         },
      }),
      completed = schema.new({
         id = id.from(_N, "ListJobsInput", "completed"),
         type = "string",
         name = "completed",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "completed" },
         },
      }),
   },
})

M.GlacierJobDescription = schema.new({
   id = id.from(_N, "GlacierJobDescription"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "GlacierJobDescription", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
      }),
      JobDescription = schema.new({
         id = id.from(_N, "GlacierJobDescription", "JobDescription"),
         type = "string",
         name = "JobDescription",
         target_id = prelude.String.id,
      }),
      Action = schema.new({
         id = id.from(_N, "GlacierJobDescription", "Action"),
         type = "string",
         name = "Action",
         target_id = prelude.String.id,
      }),
      ArchiveId = schema.new({
         id = id.from(_N, "GlacierJobDescription", "ArchiveId"),
         type = "string",
         name = "ArchiveId",
         target_id = prelude.String.id,
      }),
      VaultARN = schema.new({
         id = id.from(_N, "GlacierJobDescription", "VaultARN"),
         type = "string",
         name = "VaultARN",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "GlacierJobDescription", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
      }),
      Completed = schema.new({
         id = id.from(_N, "GlacierJobDescription", "Completed"),
         type = "boolean",
         name = "Completed",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      StatusCode = schema.new({
         id = id.from(_N, "GlacierJobDescription", "StatusCode"),
         type = "string",
         name = "StatusCode",
         target_id = prelude.String.id,
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "GlacierJobDescription", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
      ArchiveSizeInBytes = schema.new({
         id = id.from(_N, "GlacierJobDescription", "ArchiveSizeInBytes"),
         type = "long",
         name = "ArchiveSizeInBytes",
         target_id = prelude.Long.id,
      }),
      InventorySizeInBytes = schema.new({
         id = id.from(_N, "GlacierJobDescription", "InventorySizeInBytes"),
         type = "long",
         name = "InventorySizeInBytes",
         target_id = prelude.Long.id,
      }),
      SNSTopic = schema.new({
         id = id.from(_N, "GlacierJobDescription", "SNSTopic"),
         type = "string",
         name = "SNSTopic",
         target_id = prelude.String.id,
      }),
      CompletionDate = schema.new({
         id = id.from(_N, "GlacierJobDescription", "CompletionDate"),
         type = "string",
         name = "CompletionDate",
         target_id = prelude.String.id,
      }),
      SHA256TreeHash = schema.new({
         id = id.from(_N, "GlacierJobDescription", "SHA256TreeHash"),
         type = "string",
         name = "SHA256TreeHash",
         target_id = prelude.String.id,
      }),
      ArchiveSHA256TreeHash = schema.new({
         id = id.from(_N, "GlacierJobDescription", "ArchiveSHA256TreeHash"),
         type = "string",
         name = "ArchiveSHA256TreeHash",
         target_id = prelude.String.id,
      }),
      RetrievalByteRange = schema.new({
         id = id.from(_N, "GlacierJobDescription", "RetrievalByteRange"),
         type = "string",
         name = "RetrievalByteRange",
         target_id = prelude.String.id,
      }),
      Tier = schema.new({
         id = id.from(_N, "GlacierJobDescription", "Tier"),
         type = "string",
         name = "Tier",
         target_id = prelude.String.id,
      }),
      InventoryRetrievalParameters = schema.new({
         id = id.from(_N, "GlacierJobDescription", "InventoryRetrievalParameters"),
         type = "structure",
         name = "InventoryRetrievalParameters",
         target_id = id.from(_N, "InventoryRetrievalJobDescription"),
         target = M.InventoryRetrievalJobDescription,
      }),
      JobOutputPath = schema.new({
         id = id.from(_N, "GlacierJobDescription", "JobOutputPath"),
         type = "string",
         name = "JobOutputPath",
         target_id = prelude.String.id,
      }),
      SelectParameters = schema.new({
         id = id.from(_N, "GlacierJobDescription", "SelectParameters"),
         type = "structure",
         name = "SelectParameters",
         target_id = id.from(_N, "SelectParameters"),
         target = M.SelectParameters,
      }),
      OutputLocation = schema.new({
         id = id.from(_N, "GlacierJobDescription", "OutputLocation"),
         type = "structure",
         name = "OutputLocation",
         target_id = id.from(_N, "OutputLocation"),
         target = M.OutputLocation,
      }),
   },
})

M.ListJobsOutput = schema.new({
   id = id.from(_N, "ListJobsOutput"),
   type = "structure",
   members = {
      JobList = schema.new({
         id = id.from(_N, "ListJobsOutput", "JobList"),
         type = "list",
         name = "JobList",
         target_id = prelude.Document.id,
         list_member = M.GlacierJobDescription,
      }),
      Marker = schema.new({
         id = id.from(_N, "ListJobsOutput", "Marker"),
         type = "string",
         name = "Marker",
         target_id = prelude.String.id,
      }),
   },
})

M.ListMultipartUploadsInput = schema.new({
   id = id.from(_N, "ListMultipartUploadsInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "ListMultipartUploadsInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "ListMultipartUploadsInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      limit = schema.new({
         id = id.from(_N, "ListMultipartUploadsInput", "limit"),
         type = "integer",
         name = "limit",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "limit" },
         },
      }),
      marker = schema.new({
         id = id.from(_N, "ListMultipartUploadsInput", "marker"),
         type = "string",
         name = "marker",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "marker" },
         },
      }),
   },
})

M.UploadListElement = schema.new({
   id = id.from(_N, "UploadListElement"),
   type = "structure",
   members = {
      MultipartUploadId = schema.new({
         id = id.from(_N, "UploadListElement", "MultipartUploadId"),
         type = "string",
         name = "MultipartUploadId",
         target_id = prelude.String.id,
      }),
      VaultARN = schema.new({
         id = id.from(_N, "UploadListElement", "VaultARN"),
         type = "string",
         name = "VaultARN",
         target_id = prelude.String.id,
      }),
      ArchiveDescription = schema.new({
         id = id.from(_N, "UploadListElement", "ArchiveDescription"),
         type = "string",
         name = "ArchiveDescription",
         target_id = prelude.String.id,
      }),
      PartSizeInBytes = schema.new({
         id = id.from(_N, "UploadListElement", "PartSizeInBytes"),
         type = "long",
         name = "PartSizeInBytes",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      CreationDate = schema.new({
         id = id.from(_N, "UploadListElement", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
      }),
   },
})

M.ListMultipartUploadsOutput = schema.new({
   id = id.from(_N, "ListMultipartUploadsOutput"),
   type = "structure",
   members = {
      UploadsList = schema.new({
         id = id.from(_N, "ListMultipartUploadsOutput", "UploadsList"),
         type = "list",
         name = "UploadsList",
         target_id = prelude.Document.id,
         list_member = M.UploadListElement,
      }),
      Marker = schema.new({
         id = id.from(_N, "ListMultipartUploadsOutput", "Marker"),
         type = "string",
         name = "Marker",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPartsInput = schema.new({
   id = id.from(_N, "ListPartsInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "ListPartsInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "ListPartsInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      uploadId = schema.new({
         id = id.from(_N, "ListPartsInput", "uploadId"),
         type = "string",
         name = "uploadId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      marker = schema.new({
         id = id.from(_N, "ListPartsInput", "marker"),
         type = "string",
         name = "marker",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "marker" },
         },
      }),
      limit = schema.new({
         id = id.from(_N, "ListPartsInput", "limit"),
         type = "integer",
         name = "limit",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "limit" },
         },
      }),
   },
})

M.PartListElement = schema.new({
   id = id.from(_N, "PartListElement"),
   type = "structure",
   members = {
      RangeInBytes = schema.new({
         id = id.from(_N, "PartListElement", "RangeInBytes"),
         type = "string",
         name = "RangeInBytes",
         target_id = prelude.String.id,
      }),
      SHA256TreeHash = schema.new({
         id = id.from(_N, "PartListElement", "SHA256TreeHash"),
         type = "string",
         name = "SHA256TreeHash",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPartsOutput = schema.new({
   id = id.from(_N, "ListPartsOutput"),
   type = "structure",
   members = {
      MultipartUploadId = schema.new({
         id = id.from(_N, "ListPartsOutput", "MultipartUploadId"),
         type = "string",
         name = "MultipartUploadId",
         target_id = prelude.String.id,
      }),
      VaultARN = schema.new({
         id = id.from(_N, "ListPartsOutput", "VaultARN"),
         type = "string",
         name = "VaultARN",
         target_id = prelude.String.id,
      }),
      ArchiveDescription = schema.new({
         id = id.from(_N, "ListPartsOutput", "ArchiveDescription"),
         type = "string",
         name = "ArchiveDescription",
         target_id = prelude.String.id,
      }),
      PartSizeInBytes = schema.new({
         id = id.from(_N, "ListPartsOutput", "PartSizeInBytes"),
         type = "long",
         name = "PartSizeInBytes",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      CreationDate = schema.new({
         id = id.from(_N, "ListPartsOutput", "CreationDate"),
         type = "string",
         name = "CreationDate",
         target_id = prelude.String.id,
      }),
      Parts = schema.new({
         id = id.from(_N, "ListPartsOutput", "Parts"),
         type = "list",
         name = "Parts",
         target_id = prelude.Document.id,
         list_member = M.PartListElement,
      }),
      Marker = schema.new({
         id = id.from(_N, "ListPartsOutput", "Marker"),
         type = "string",
         name = "Marker",
         target_id = prelude.String.id,
      }),
   },
})

M.ListProvisionedCapacityInput = schema.new({
   id = id.from(_N, "ListProvisionedCapacityInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "ListProvisionedCapacityInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ProvisionedCapacityDescription = schema.new({
   id = id.from(_N, "ProvisionedCapacityDescription"),
   type = "structure",
   members = {
      CapacityId = schema.new({
         id = id.from(_N, "ProvisionedCapacityDescription", "CapacityId"),
         type = "string",
         name = "CapacityId",
         target_id = prelude.String.id,
      }),
      StartDate = schema.new({
         id = id.from(_N, "ProvisionedCapacityDescription", "StartDate"),
         type = "string",
         name = "StartDate",
         target_id = prelude.String.id,
      }),
      ExpirationDate = schema.new({
         id = id.from(_N, "ProvisionedCapacityDescription", "ExpirationDate"),
         type = "string",
         name = "ExpirationDate",
         target_id = prelude.String.id,
      }),
   },
})

M.ListProvisionedCapacityOutput = schema.new({
   id = id.from(_N, "ListProvisionedCapacityOutput"),
   type = "structure",
   members = {
      ProvisionedCapacityList = schema.new({
         id = id.from(_N, "ListProvisionedCapacityOutput", "ProvisionedCapacityList"),
         type = "list",
         name = "ProvisionedCapacityList",
         target_id = prelude.Document.id,
         list_member = M.ProvisionedCapacityDescription,
      }),
   },
})

M.ListTagsForVaultInput = schema.new({
   id = id.from(_N, "ListTagsForVaultInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "ListTagsForVaultInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "ListTagsForVaultInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ListTagsForVaultOutput = schema.new({
   id = id.from(_N, "ListTagsForVaultOutput"),
   type = "structure",
   members = {
      Tags = schema.new({
         id = id.from(_N, "ListTagsForVaultOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ListVaultsInput = schema.new({
   id = id.from(_N, "ListVaultsInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "ListVaultsInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      marker = schema.new({
         id = id.from(_N, "ListVaultsInput", "marker"),
         type = "string",
         name = "marker",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "marker" },
         },
      }),
      limit = schema.new({
         id = id.from(_N, "ListVaultsInput", "limit"),
         type = "integer",
         name = "limit",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "limit" },
         },
      }),
   },
})

M.ListVaultsOutput = schema.new({
   id = id.from(_N, "ListVaultsOutput"),
   type = "structure",
   members = {
      VaultList = schema.new({
         id = id.from(_N, "ListVaultsOutput", "VaultList"),
         type = "list",
         name = "VaultList",
         target_id = prelude.Document.id,
         list_member = M.DescribeVaultOutput,
      }),
      Marker = schema.new({
         id = id.from(_N, "ListVaultsOutput", "Marker"),
         type = "string",
         name = "Marker",
         target_id = prelude.String.id,
      }),
   },
})

M.PurchaseProvisionedCapacityInput = schema.new({
   id = id.from(_N, "PurchaseProvisionedCapacityInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "PurchaseProvisionedCapacityInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.PurchaseProvisionedCapacityOutput = schema.new({
   id = id.from(_N, "PurchaseProvisionedCapacityOutput"),
   type = "structure",
   members = {
      capacityId = schema.new({
         id = id.from(_N, "PurchaseProvisionedCapacityOutput", "capacityId"),
         type = "string",
         name = "capacityId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-capacity-id" },
         },
      }),
   },
})

M.RemoveTagsFromVaultInput = schema.new({
   id = id.from(_N, "RemoveTagsFromVaultInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "RemoveTagsFromVaultInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "RemoveTagsFromVaultInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      TagKeys = schema.new({
         id = id.from(_N, "RemoveTagsFromVaultInput", "TagKeys"),
         type = "list",
         name = "TagKeys",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.RemoveTagsFromVaultOutput = prelude.Unit

M.SetDataRetrievalPolicyInput = schema.new({
   id = id.from(_N, "SetDataRetrievalPolicyInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "SetDataRetrievalPolicyInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Policy = schema.new({
         id = id.from(_N, "SetDataRetrievalPolicyInput", "Policy"),
         type = "structure",
         name = "Policy",
         target_id = id.from(_N, "DataRetrievalPolicy"),
         target = M.DataRetrievalPolicy,
      }),
   },
})

M.SetDataRetrievalPolicyOutput = prelude.Unit

M.SetVaultAccessPolicyInput = schema.new({
   id = id.from(_N, "SetVaultAccessPolicyInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "SetVaultAccessPolicyInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "SetVaultAccessPolicyInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      policy = schema.new({
         id = id.from(_N, "SetVaultAccessPolicyInput", "policy"),
         type = "structure",
         name = "policy",
         target_id = id.from(_N, "VaultAccessPolicy"),
         target = M.VaultAccessPolicy,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.SetVaultAccessPolicyOutput = prelude.Unit

M.SetVaultNotificationsInput = schema.new({
   id = id.from(_N, "SetVaultNotificationsInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "SetVaultNotificationsInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "SetVaultNotificationsInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultNotificationConfig = schema.new({
         id = id.from(_N, "SetVaultNotificationsInput", "vaultNotificationConfig"),
         type = "structure",
         name = "vaultNotificationConfig",
         target_id = id.from(_N, "VaultNotificationConfig"),
         target = M.VaultNotificationConfig,
         traits = {
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
   },
})

M.SetVaultNotificationsOutput = prelude.Unit

M.RequestTimeoutException = schema.new({
   id = id.from(_N, "RequestTimeoutException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      type = schema.new({
         id = id.from(_N, "RequestTimeoutException", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "RequestTimeoutException", "code"),
         type = "string",
         name = "code",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "RequestTimeoutException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.UploadArchiveInput = schema.new({
   id = id.from(_N, "UploadArchiveInput"),
   type = "structure",
   members = {
      vaultName = schema.new({
         id = id.from(_N, "UploadArchiveInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      accountId = schema.new({
         id = id.from(_N, "UploadArchiveInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      archiveDescription = schema.new({
         id = id.from(_N, "UploadArchiveInput", "archiveDescription"),
         type = "string",
         name = "archiveDescription",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-archive-description" },
         },
      }),
      checksum = schema.new({
         id = id.from(_N, "UploadArchiveInput", "checksum"),
         type = "string",
         name = "checksum",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sha256-tree-hash" },
         },
      }),
      body = schema.new({
         id = id.from(_N, "UploadArchiveInput", "body"),
         type = "blob",
         name = "body",
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
   },
})

M.UploadArchiveOutput = schema.new({
   id = id.from(_N, "ArchiveCreationOutput"),
   type = "structure",
   members = {
      location = schema.new({
         id = id.from(_N, "UploadArchiveOutput", "location"),
         type = "string",
         name = "location",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Location" },
         },
      }),
      checksum = schema.new({
         id = id.from(_N, "UploadArchiveOutput", "checksum"),
         type = "string",
         name = "checksum",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sha256-tree-hash" },
         },
      }),
      archiveId = schema.new({
         id = id.from(_N, "UploadArchiveOutput", "archiveId"),
         type = "string",
         name = "archiveId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-archive-id" },
         },
      }),
   },
})

M.UploadMultipartPartInput = schema.new({
   id = id.from(_N, "UploadMultipartPartInput"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "UploadMultipartPartInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      vaultName = schema.new({
         id = id.from(_N, "UploadMultipartPartInput", "vaultName"),
         type = "string",
         name = "vaultName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      uploadId = schema.new({
         id = id.from(_N, "UploadMultipartPartInput", "uploadId"),
         type = "string",
         name = "uploadId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      checksum = schema.new({
         id = id.from(_N, "UploadMultipartPartInput", "checksum"),
         type = "string",
         name = "checksum",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sha256-tree-hash" },
         },
      }),
      range = schema.new({
         id = id.from(_N, "UploadMultipartPartInput", "range"),
         type = "string",
         name = "range",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Range" },
         },
      }),
      body = schema.new({
         id = id.from(_N, "UploadMultipartPartInput", "body"),
         type = "blob",
         name = "body",
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
   },
})

M.UploadMultipartPartOutput = schema.new({
   id = id.from(_N, "UploadMultipartPartOutput"),
   type = "structure",
   members = {
      checksum = schema.new({
         id = id.from(_N, "UploadMultipartPartOutput", "checksum"),
         type = "string",
         name = "checksum",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-sha256-tree-hash" },
         },
      }),
   },
})


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
   id = id.from("com.amazonaws.glacier", "Glacier"),
   version = "2012-06-01",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AbortMultipartUpload = schema.operation({
   id = id.from("com.amazonaws.glacier", "AbortMultipartUpload"),
   input = M.AbortMultipartUploadInput,
   output = M.AbortMultipartUploadOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AbortVaultLock = schema.operation({
   id = id.from("com.amazonaws.glacier", "AbortVaultLock"),
   input = M.AbortVaultLockInput,
   output = M.AbortVaultLockOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/{accountId}/vaults/{vaultName}/lock-policy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AddTagsToVault = schema.operation({
   id = id.from("com.amazonaws.glacier", "AddTagsToVault"),
   input = M.AddTagsToVaultInput,
   output = M.AddTagsToVaultOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/{accountId}/vaults/{vaultName}/tags?operation=add" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CompleteMultipartUpload = schema.operation({
   id = id.from("com.amazonaws.glacier", "CompleteMultipartUpload"),
   input = M.CompleteMultipartUploadInput,
   output = M.CompleteMultipartUploadOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CompleteVaultLock = schema.operation({
   id = id.from("com.amazonaws.glacier", "CompleteVaultLock"),
   input = M.CompleteVaultLockInput,
   output = M.CompleteVaultLockOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/{accountId}/vaults/{vaultName}/lock-policy/{lockId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateVault = schema.operation({
   id = id.from("com.amazonaws.glacier", "CreateVault"),
   input = M.CreateVaultInput,
   output = M.CreateVaultOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/{accountId}/vaults/{vaultName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteArchive = schema.operation({
   id = id.from("com.amazonaws.glacier", "DeleteArchive"),
   input = M.DeleteArchiveInput,
   output = M.DeleteArchiveOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/{accountId}/vaults/{vaultName}/archives/{archiveId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteVault = schema.operation({
   id = id.from("com.amazonaws.glacier", "DeleteVault"),
   input = M.DeleteVaultInput,
   output = M.DeleteVaultOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/{accountId}/vaults/{vaultName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteVaultAccessPolicy = schema.operation({
   id = id.from("com.amazonaws.glacier", "DeleteVaultAccessPolicy"),
   input = M.DeleteVaultAccessPolicyInput,
   output = M.DeleteVaultAccessPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/{accountId}/vaults/{vaultName}/access-policy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteVaultNotifications = schema.operation({
   id = id.from("com.amazonaws.glacier", "DeleteVaultNotifications"),
   input = M.DeleteVaultNotificationsInput,
   output = M.DeleteVaultNotificationsOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/{accountId}/vaults/{vaultName}/notification-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeJob = schema.operation({
   id = id.from("com.amazonaws.glacier", "DescribeJob"),
   input = M.DescribeJobInput,
   output = M.DescribeJobOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/{accountId}/vaults/{vaultName}/jobs/{jobId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeVault = schema.operation({
   id = id.from("com.amazonaws.glacier", "DescribeVault"),
   input = M.DescribeVaultInput,
   output = M.DescribeVaultOperationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/{accountId}/vaults/{vaultName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDataRetrievalPolicy = schema.operation({
   id = id.from("com.amazonaws.glacier", "GetDataRetrievalPolicy"),
   input = M.GetDataRetrievalPolicyInput,
   output = M.GetDataRetrievalPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/{accountId}/policies/data-retrieval" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetJobOutput = schema.operation({
   id = id.from("com.amazonaws.glacier", "GetJobOutput"),
   input = M.GetJobOutputInput,
   output = M.GetJobOutputOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/{accountId}/vaults/{vaultName}/jobs/{jobId}/output" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetVaultAccessPolicy = schema.operation({
   id = id.from("com.amazonaws.glacier", "GetVaultAccessPolicy"),
   input = M.GetVaultAccessPolicyInput,
   output = M.GetVaultAccessPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/{accountId}/vaults/{vaultName}/access-policy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetVaultLock = schema.operation({
   id = id.from("com.amazonaws.glacier", "GetVaultLock"),
   input = M.GetVaultLockInput,
   output = M.GetVaultLockOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/{accountId}/vaults/{vaultName}/lock-policy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetVaultNotifications = schema.operation({
   id = id.from("com.amazonaws.glacier", "GetVaultNotifications"),
   input = M.GetVaultNotificationsInput,
   output = M.GetVaultNotificationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/{accountId}/vaults/{vaultName}/notification-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.InitiateJob = schema.operation({
   id = id.from("com.amazonaws.glacier", "InitiateJob"),
   input = M.InitiateJobInput,
   output = M.InitiateJobOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/{accountId}/vaults/{vaultName}/jobs" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.InitiateMultipartUpload = schema.operation({
   id = id.from("com.amazonaws.glacier", "InitiateMultipartUpload"),
   input = M.InitiateMultipartUploadInput,
   output = M.InitiateMultipartUploadOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/{accountId}/vaults/{vaultName}/multipart-uploads" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.InitiateVaultLock = schema.operation({
   id = id.from("com.amazonaws.glacier", "InitiateVaultLock"),
   input = M.InitiateVaultLockInput,
   output = M.InitiateVaultLockOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/{accountId}/vaults/{vaultName}/lock-policy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListJobs = schema.operation({
   id = id.from("com.amazonaws.glacier", "ListJobs"),
   input = M.ListJobsInput,
   output = M.ListJobsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/{accountId}/vaults/{vaultName}/jobs" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListMultipartUploads = schema.operation({
   id = id.from("com.amazonaws.glacier", "ListMultipartUploads"),
   input = M.ListMultipartUploadsInput,
   output = M.ListMultipartUploadsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/{accountId}/vaults/{vaultName}/multipart-uploads" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListParts = schema.operation({
   id = id.from("com.amazonaws.glacier", "ListParts"),
   input = M.ListPartsInput,
   output = M.ListPartsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListProvisionedCapacity = schema.operation({
   id = id.from("com.amazonaws.glacier", "ListProvisionedCapacity"),
   input = M.ListProvisionedCapacityInput,
   output = M.ListProvisionedCapacityOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/{accountId}/provisioned-capacity" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForVault = schema.operation({
   id = id.from("com.amazonaws.glacier", "ListTagsForVault"),
   input = M.ListTagsForVaultInput,
   output = M.ListTagsForVaultOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/{accountId}/vaults/{vaultName}/tags" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListVaults = schema.operation({
   id = id.from("com.amazonaws.glacier", "ListVaults"),
   input = M.ListVaultsInput,
   output = M.ListVaultsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/{accountId}/vaults" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PurchaseProvisionedCapacity = schema.operation({
   id = id.from("com.amazonaws.glacier", "PurchaseProvisionedCapacity"),
   input = M.PurchaseProvisionedCapacityInput,
   output = M.PurchaseProvisionedCapacityOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/{accountId}/provisioned-capacity" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RemoveTagsFromVault = schema.operation({
   id = id.from("com.amazonaws.glacier", "RemoveTagsFromVault"),
   input = M.RemoveTagsFromVaultInput,
   output = M.RemoveTagsFromVaultOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/{accountId}/vaults/{vaultName}/tags?operation=remove" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SetDataRetrievalPolicy = schema.operation({
   id = id.from("com.amazonaws.glacier", "SetDataRetrievalPolicy"),
   input = M.SetDataRetrievalPolicyInput,
   output = M.SetDataRetrievalPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/{accountId}/policies/data-retrieval" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SetVaultAccessPolicy = schema.operation({
   id = id.from("com.amazonaws.glacier", "SetVaultAccessPolicy"),
   input = M.SetVaultAccessPolicyInput,
   output = M.SetVaultAccessPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/{accountId}/vaults/{vaultName}/access-policy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SetVaultNotifications = schema.operation({
   id = id.from("com.amazonaws.glacier", "SetVaultNotifications"),
   input = M.SetVaultNotificationsInput,
   output = M.SetVaultNotificationsOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/{accountId}/vaults/{vaultName}/notification-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UploadArchive = schema.operation({
   id = id.from("com.amazonaws.glacier", "UploadArchive"),
   input = M.UploadArchiveInput,
   output = M.UploadArchiveOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/{accountId}/vaults/{vaultName}/archives" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UploadMultipartPart = schema.operation({
   id = id.from("com.amazonaws.glacier", "UploadMultipartPart"),
   input = M.UploadMultipartPartInput,
   output = M.UploadMultipartPartOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
