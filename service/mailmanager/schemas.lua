

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.mailmanager"

local M = {}

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.Rules = schema.new({ type = "list", list_member = M.Rule })

M.RowsList = schema.new({ type = "list", list_member = M.Row })

M.ImportJobs = schema.new({ type = "list", list_member = M.ImportJob })

M.ExportSummaryList = schema.new({ type = "list", list_member = M.ExportSummary })

M.SearchSummaryList = schema.new({ type = "list", list_member = M.SearchSummary })

M.SavedAddresses = schema.new({ type = "list", list_member = M.SavedAddress })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.AddonInstances = schema.new({ type = "list", list_member = M.AddonInstance })

M.AddonSubscriptions = schema.new({ type = "list", list_member = M.AddonSubscription })

M.AddressLists = schema.new({ type = "list", list_member = M.AddressList })

M.ArchivesList = schema.new({ type = "list", list_member = M.Archive })

M.IngressPointsList = schema.new({ type = "list", list_member = M.IngressPoint })

M.Relays = schema.new({ type = "list", list_member = M.Relay })

M.RuleSets = schema.new({ type = "list", list_member = M.RuleSet })

M.TrafficPolicyList = schema.new({ type = "list", list_member = M.TrafficPolicy })

M.PolicyStatementList = schema.new({ type = "list", list_member = M.PolicyStatement })

M.ArchiveFilterConditions = schema.new({ type = "list", list_member = M.ArchiveFilterCondition })

M.StringList = schema.new({ type = "list", list_member = prelude.String })

M.RuleConditions = schema.new({ type = "list", list_member = M.RuleCondition })

M.RuleActions = schema.new({ type = "list", list_member = M.RuleAction })

M.EmailReceivedHeadersList = schema.new({ type = "list", list_member = prelude.String })

M.PolicyConditions = schema.new({ type = "list", list_member = M.PolicyCondition })

M.StringValueList = schema.new({ type = "list", list_member = prelude.String })

M.RuleStringList = schema.new({ type = "list", list_member = prelude.String })

M.RuleIpValueList = schema.new({ type = "list", list_member = prelude.String })

M.RuleVerdictValueList = schema.new({ type = "list", list_member = prelude.String })

M.RuleDmarcValueList = schema.new({ type = "list", list_member = prelude.String })

M.Recipients = schema.new({ type = "list", list_member = prelude.String })

M.Ipv4Cidrs = schema.new({ type = "list", list_member = prelude.String })

M.Ipv6Cidrs = schema.new({ type = "list", list_member = prelude.String })

M.RuleAddressListArnList = schema.new({ type = "list", list_member = prelude.String })

M.IngressAddressListArnList = schema.new({ type = "list", list_member = prelude.String })

M.AccessDeniedException = schema.new({
   id = id.from(_N, "AccessDeniedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "AccessDeniedException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.AddHeaderAction = schema.new({
   id = id.from(_N, "AddHeaderAction"),
   type = "structure",
   members = {
      HeaderName = schema.new({
         id = id.from(_N, "AddHeaderAction", "HeaderName"),
         type = "string",
         name = "HeaderName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      HeaderValue = schema.new({
         id = id.from(_N, "AddHeaderAction", "HeaderValue"),
         type = "string",
         name = "HeaderValue",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AddonInstance = schema.new({
   id = id.from(_N, "AddonInstance"),
   type = "structure",
   members = {
      AddonInstanceId = schema.new({
         id = id.from(_N, "AddonInstance", "AddonInstanceId"),
         type = "string",
         name = "AddonInstanceId",
         target_id = prelude.String.id,
      }),
      AddonSubscriptionId = schema.new({
         id = id.from(_N, "AddonInstance", "AddonSubscriptionId"),
         type = "string",
         name = "AddonSubscriptionId",
         target_id = prelude.String.id,
      }),
      AddonName = schema.new({
         id = id.from(_N, "AddonInstance", "AddonName"),
         type = "string",
         name = "AddonName",
         target_id = prelude.String.id,
      }),
      AddonInstanceArn = schema.new({
         id = id.from(_N, "AddonInstance", "AddonInstanceArn"),
         type = "string",
         name = "AddonInstanceArn",
         target_id = prelude.String.id,
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "AddonInstance", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ConflictException = schema.new({
   id = id.from(_N, "ConflictException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "ConflictException", "Message"),
         type = "string",
         name = "Message",
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

M.CreateAddonInstanceInput = schema.new({
   id = id.from(_N, "CreateAddonInstanceRequest"),
   type = "structure",
   members = {
      ClientToken = schema.new({
         id = id.from(_N, "CreateAddonInstanceInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      AddonSubscriptionId = schema.new({
         id = id.from(_N, "CreateAddonInstanceInput", "AddonSubscriptionId"),
         type = "string",
         name = "AddonSubscriptionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateAddonInstanceInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateAddonInstanceOutput = schema.new({
   id = id.from(_N, "CreateAddonInstanceResponse"),
   type = "structure",
   members = {
      AddonInstanceId = schema.new({
         id = id.from(_N, "CreateAddonInstanceOutput", "AddonInstanceId"),
         type = "string",
         name = "AddonInstanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
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
      Message = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.ServiceQuotaExceededException = schema.new({
   id = id.from(_N, "ServiceQuotaExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.ValidationException = schema.new({
   id = id.from(_N, "ValidationException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "ValidationException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteAddonInstanceInput = schema.new({
   id = id.from(_N, "DeleteAddonInstanceRequest"),
   type = "structure",
   members = {
      AddonInstanceId = schema.new({
         id = id.from(_N, "DeleteAddonInstanceInput", "AddonInstanceId"),
         type = "string",
         name = "AddonInstanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteAddonInstanceOutput = schema.new({
   id = id.from(_N, "DeleteAddonInstanceResponse"),
   type = "structure",
})

M.GetAddonInstanceInput = schema.new({
   id = id.from(_N, "GetAddonInstanceRequest"),
   type = "structure",
   members = {
      AddonInstanceId = schema.new({
         id = id.from(_N, "GetAddonInstanceInput", "AddonInstanceId"),
         type = "string",
         name = "AddonInstanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetAddonInstanceOutput = schema.new({
   id = id.from(_N, "GetAddonInstanceResponse"),
   type = "structure",
   members = {
      AddonSubscriptionId = schema.new({
         id = id.from(_N, "GetAddonInstanceOutput", "AddonSubscriptionId"),
         type = "string",
         name = "AddonSubscriptionId",
         target_id = prelude.String.id,
      }),
      AddonName = schema.new({
         id = id.from(_N, "GetAddonInstanceOutput", "AddonName"),
         type = "string",
         name = "AddonName",
         target_id = prelude.String.id,
      }),
      AddonInstanceArn = schema.new({
         id = id.from(_N, "GetAddonInstanceOutput", "AddonInstanceArn"),
         type = "string",
         name = "AddonInstanceArn",
         target_id = prelude.String.id,
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "GetAddonInstanceOutput", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListAddonInstancesInput = schema.new({
   id = id.from(_N, "ListAddonInstancesRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListAddonInstancesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      PageSize = schema.new({
         id = id.from(_N, "ListAddonInstancesInput", "PageSize"),
         type = "integer",
         name = "PageSize",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListAddonInstancesOutput = schema.new({
   id = id.from(_N, "ListAddonInstancesResponse"),
   type = "structure",
   members = {
      AddonInstances = schema.new({
         id = id.from(_N, "ListAddonInstancesOutput", "AddonInstances"),
         type = "list",
         name = "AddonInstances",
         target_id = prelude.Document.id,
         list_member = M.AddonInstance,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListAddonInstancesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.AddonSubscription = schema.new({
   id = id.from(_N, "AddonSubscription"),
   type = "structure",
   members = {
      AddonSubscriptionId = schema.new({
         id = id.from(_N, "AddonSubscription", "AddonSubscriptionId"),
         type = "string",
         name = "AddonSubscriptionId",
         target_id = prelude.String.id,
      }),
      AddonName = schema.new({
         id = id.from(_N, "AddonSubscription", "AddonName"),
         type = "string",
         name = "AddonName",
         target_id = prelude.String.id,
      }),
      AddonSubscriptionArn = schema.new({
         id = id.from(_N, "AddonSubscription", "AddonSubscriptionArn"),
         type = "string",
         name = "AddonSubscriptionArn",
         target_id = prelude.String.id,
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "AddonSubscription", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.CreateAddonSubscriptionInput = schema.new({
   id = id.from(_N, "CreateAddonSubscriptionRequest"),
   type = "structure",
   members = {
      ClientToken = schema.new({
         id = id.from(_N, "CreateAddonSubscriptionInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      AddonName = schema.new({
         id = id.from(_N, "CreateAddonSubscriptionInput", "AddonName"),
         type = "string",
         name = "AddonName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateAddonSubscriptionInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateAddonSubscriptionOutput = schema.new({
   id = id.from(_N, "CreateAddonSubscriptionResponse"),
   type = "structure",
   members = {
      AddonSubscriptionId = schema.new({
         id = id.from(_N, "CreateAddonSubscriptionOutput", "AddonSubscriptionId"),
         type = "string",
         name = "AddonSubscriptionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ThrottlingException = schema.new({
   id = id.from(_N, "ThrottlingException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "ThrottlingException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteAddonSubscriptionInput = schema.new({
   id = id.from(_N, "DeleteAddonSubscriptionRequest"),
   type = "structure",
   members = {
      AddonSubscriptionId = schema.new({
         id = id.from(_N, "DeleteAddonSubscriptionInput", "AddonSubscriptionId"),
         type = "string",
         name = "AddonSubscriptionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteAddonSubscriptionOutput = schema.new({
   id = id.from(_N, "DeleteAddonSubscriptionResponse"),
   type = "structure",
})

M.GetAddonSubscriptionInput = schema.new({
   id = id.from(_N, "GetAddonSubscriptionRequest"),
   type = "structure",
   members = {
      AddonSubscriptionId = schema.new({
         id = id.from(_N, "GetAddonSubscriptionInput", "AddonSubscriptionId"),
         type = "string",
         name = "AddonSubscriptionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetAddonSubscriptionOutput = schema.new({
   id = id.from(_N, "GetAddonSubscriptionResponse"),
   type = "structure",
   members = {
      AddonName = schema.new({
         id = id.from(_N, "GetAddonSubscriptionOutput", "AddonName"),
         type = "string",
         name = "AddonName",
         target_id = prelude.String.id,
      }),
      AddonSubscriptionArn = schema.new({
         id = id.from(_N, "GetAddonSubscriptionOutput", "AddonSubscriptionArn"),
         type = "string",
         name = "AddonSubscriptionArn",
         target_id = prelude.String.id,
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "GetAddonSubscriptionOutput", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListAddonSubscriptionsInput = schema.new({
   id = id.from(_N, "ListAddonSubscriptionsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListAddonSubscriptionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      PageSize = schema.new({
         id = id.from(_N, "ListAddonSubscriptionsInput", "PageSize"),
         type = "integer",
         name = "PageSize",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListAddonSubscriptionsOutput = schema.new({
   id = id.from(_N, "ListAddonSubscriptionsResponse"),
   type = "structure",
   members = {
      AddonSubscriptions = schema.new({
         id = id.from(_N, "ListAddonSubscriptionsOutput", "AddonSubscriptions"),
         type = "list",
         name = "AddonSubscriptions",
         target_id = prelude.Document.id,
         list_member = M.AddonSubscription,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListAddonSubscriptionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.AddressFilter = schema.new({
   id = id.from(_N, "AddressFilter"),
   type = "structure",
   members = {
      AddressPrefix = schema.new({
         id = id.from(_N, "AddressFilter", "AddressPrefix"),
         type = "string",
         name = "AddressPrefix",
         target_id = prelude.String.id,
      }),
   },
})

M.AddressList = schema.new({
   id = id.from(_N, "AddressList"),
   type = "structure",
   members = {
      AddressListId = schema.new({
         id = id.from(_N, "AddressList", "AddressListId"),
         type = "string",
         name = "AddressListId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AddressListArn = schema.new({
         id = id.from(_N, "AddressList", "AddressListArn"),
         type = "string",
         name = "AddressListArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AddressListName = schema.new({
         id = id.from(_N, "AddressList", "AddressListName"),
         type = "string",
         name = "AddressListName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "AddressList", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LastUpdatedTimestamp = schema.new({
         id = id.from(_N, "AddressList", "LastUpdatedTimestamp"),
         type = "timestamp",
         name = "LastUpdatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateAddressListInput = schema.new({
   id = id.from(_N, "CreateAddressListRequest"),
   type = "structure",
   members = {
      ClientToken = schema.new({
         id = id.from(_N, "CreateAddressListInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      AddressListName = schema.new({
         id = id.from(_N, "CreateAddressListInput", "AddressListName"),
         type = "string",
         name = "AddressListName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateAddressListInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateAddressListOutput = schema.new({
   id = id.from(_N, "CreateAddressListResponse"),
   type = "structure",
   members = {
      AddressListId = schema.new({
         id = id.from(_N, "CreateAddressListOutput", "AddressListId"),
         type = "string",
         name = "AddressListId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteAddressListInput = schema.new({
   id = id.from(_N, "DeleteAddressListRequest"),
   type = "structure",
   members = {
      AddressListId = schema.new({
         id = id.from(_N, "DeleteAddressListInput", "AddressListId"),
         type = "string",
         name = "AddressListId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteAddressListOutput = schema.new({
   id = id.from(_N, "DeleteAddressListResponse"),
   type = "structure",
})

M.GetAddressListInput = schema.new({
   id = id.from(_N, "GetAddressListRequest"),
   type = "structure",
   members = {
      AddressListId = schema.new({
         id = id.from(_N, "GetAddressListInput", "AddressListId"),
         type = "string",
         name = "AddressListId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetAddressListOutput = schema.new({
   id = id.from(_N, "GetAddressListResponse"),
   type = "structure",
   members = {
      AddressListId = schema.new({
         id = id.from(_N, "GetAddressListOutput", "AddressListId"),
         type = "string",
         name = "AddressListId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AddressListArn = schema.new({
         id = id.from(_N, "GetAddressListOutput", "AddressListArn"),
         type = "string",
         name = "AddressListArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AddressListName = schema.new({
         id = id.from(_N, "GetAddressListOutput", "AddressListName"),
         type = "string",
         name = "AddressListName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "GetAddressListOutput", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LastUpdatedTimestamp = schema.new({
         id = id.from(_N, "GetAddressListOutput", "LastUpdatedTimestamp"),
         type = "timestamp",
         name = "LastUpdatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListAddressListsInput = schema.new({
   id = id.from(_N, "ListAddressListsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListAddressListsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      PageSize = schema.new({
         id = id.from(_N, "ListAddressListsInput", "PageSize"),
         type = "integer",
         name = "PageSize",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListAddressListsOutput = schema.new({
   id = id.from(_N, "ListAddressListsResponse"),
   type = "structure",
   members = {
      AddressLists = schema.new({
         id = id.from(_N, "ListAddressListsOutput", "AddressLists"),
         type = "list",
         name = "AddressLists",
         target_id = prelude.Document.id,
         list_member = M.AddressList,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListAddressListsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.Analysis = schema.new({
   id = id.from(_N, "Analysis"),
   type = "structure",
   members = {
      Analyzer = schema.new({
         id = id.from(_N, "Analysis", "Analyzer"),
         type = "string",
         name = "Analyzer",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ResultField = schema.new({
         id = id.from(_N, "Analysis", "ResultField"),
         type = "string",
         name = "ResultField",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Archive = schema.new({
   id = id.from(_N, "Archive"),
   type = "structure",
   members = {
      ArchiveId = schema.new({
         id = id.from(_N, "Archive", "ArchiveId"),
         type = "string",
         name = "ArchiveId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ArchiveName = schema.new({
         id = id.from(_N, "Archive", "ArchiveName"),
         type = "string",
         name = "ArchiveName",
         target_id = prelude.String.id,
      }),
      ArchiveState = schema.new({
         id = id.from(_N, "Archive", "ArchiveState"),
         type = "string",
         name = "ArchiveState",
         target_id = prelude.String.id,
      }),
      LastUpdatedTimestamp = schema.new({
         id = id.from(_N, "Archive", "LastUpdatedTimestamp"),
         type = "timestamp",
         name = "LastUpdatedTimestamp",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ArchiveAction = schema.new({
   id = id.from(_N, "ArchiveAction"),
   type = "structure",
   members = {
      ActionFailurePolicy = schema.new({
         id = id.from(_N, "ArchiveAction", "ActionFailurePolicy"),
         type = "string",
         name = "ActionFailurePolicy",
         target_id = prelude.String.id,
      }),
      TargetArchive = schema.new({
         id = id.from(_N, "ArchiveAction", "TargetArchive"),
         type = "string",
         name = "TargetArchive",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ArchiveBooleanToEvaluate = schema.new({
   id = id.from(_N, "ArchiveBooleanToEvaluate"),
   type = "union",
   members = {
      Attribute = schema.new({
         id = id.from(_N, "ArchiveBooleanToEvaluate", "Attribute"),
         type = "string",
         name = "Attribute",
         target_id = prelude.String.id,
      }),
   },
})

M.ArchiveBooleanExpression = schema.new({
   id = id.from(_N, "ArchiveBooleanExpression"),
   type = "structure",
   members = {
      Evaluate = schema.new({
         id = id.from(_N, "ArchiveBooleanExpression", "Evaluate"),
         type = "union",
         name = "Evaluate",
         target_id = id.from(_N, "ArchiveBooleanToEvaluate"),
         target = M.ArchiveBooleanToEvaluate,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Operator = schema.new({
         id = id.from(_N, "ArchiveBooleanExpression", "Operator"),
         type = "string",
         name = "Operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ArchiveStringToEvaluate = schema.new({
   id = id.from(_N, "ArchiveStringToEvaluate"),
   type = "union",
   members = {
      Attribute = schema.new({
         id = id.from(_N, "ArchiveStringToEvaluate", "Attribute"),
         type = "string",
         name = "Attribute",
         target_id = prelude.String.id,
      }),
   },
})

M.ArchiveStringExpression = schema.new({
   id = id.from(_N, "ArchiveStringExpression"),
   type = "structure",
   members = {
      Evaluate = schema.new({
         id = id.from(_N, "ArchiveStringExpression", "Evaluate"),
         type = "union",
         name = "Evaluate",
         target_id = id.from(_N, "ArchiveStringToEvaluate"),
         target = M.ArchiveStringToEvaluate,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Operator = schema.new({
         id = id.from(_N, "ArchiveStringExpression", "Operator"),
         type = "string",
         name = "Operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Values = schema.new({
         id = id.from(_N, "ArchiveStringExpression", "Values"),
         type = "list",
         name = "Values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ArchiveFilterCondition = schema.new({
   id = id.from(_N, "ArchiveFilterCondition"),
   type = "union",
   members = {
      StringExpression = schema.new({
         id = id.from(_N, "ArchiveFilterCondition", "StringExpression"),
         type = "structure",
         name = "StringExpression",
         target_id = id.from(_N, "ArchiveStringExpression"),
         target = M.ArchiveStringExpression,
      }),
      BooleanExpression = schema.new({
         id = id.from(_N, "ArchiveFilterCondition", "BooleanExpression"),
         type = "structure",
         name = "BooleanExpression",
         target_id = id.from(_N, "ArchiveBooleanExpression"),
         target = M.ArchiveBooleanExpression,
      }),
   },
})

M.ArchiveFilters = schema.new({
   id = id.from(_N, "ArchiveFilters"),
   type = "structure",
   members = {
      Include = schema.new({
         id = id.from(_N, "ArchiveFilters", "Include"),
         type = "list",
         name = "Include",
         target_id = prelude.Document.id,
         list_member = M.ArchiveFilterCondition,
      }),
      Unless = schema.new({
         id = id.from(_N, "ArchiveFilters", "Unless"),
         type = "list",
         name = "Unless",
         target_id = prelude.Document.id,
         list_member = M.ArchiveFilterCondition,
      }),
   },
})

M.ArchiveRetention = schema.new({
   id = id.from(_N, "ArchiveRetention"),
   type = "union",
   members = {
      RetentionPeriod = schema.new({
         id = id.from(_N, "ArchiveRetention", "RetentionPeriod"),
         type = "string",
         name = "RetentionPeriod",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateArchiveInput = schema.new({
   id = id.from(_N, "CreateArchiveRequest"),
   type = "structure",
   members = {
      ClientToken = schema.new({
         id = id.from(_N, "CreateArchiveInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      ArchiveName = schema.new({
         id = id.from(_N, "CreateArchiveInput", "ArchiveName"),
         type = "string",
         name = "ArchiveName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Retention = schema.new({
         id = id.from(_N, "CreateArchiveInput", "Retention"),
         type = "union",
         name = "Retention",
         target_id = id.from(_N, "ArchiveRetention"),
         target = M.ArchiveRetention,
      }),
      KmsKeyArn = schema.new({
         id = id.from(_N, "CreateArchiveInput", "KmsKeyArn"),
         type = "string",
         name = "KmsKeyArn",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateArchiveInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateArchiveOutput = schema.new({
   id = id.from(_N, "CreateArchiveResponse"),
   type = "structure",
   members = {
      ArchiveId = schema.new({
         id = id.from(_N, "CreateArchiveOutput", "ArchiveId"),
         type = "string",
         name = "ArchiveId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteArchiveInput = schema.new({
   id = id.from(_N, "DeleteArchiveRequest"),
   type = "structure",
   members = {
      ArchiveId = schema.new({
         id = id.from(_N, "DeleteArchiveInput", "ArchiveId"),
         type = "string",
         name = "ArchiveId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteArchiveOutput = schema.new({
   id = id.from(_N, "DeleteArchiveResponse"),
   type = "structure",
})

M.GetArchiveInput = schema.new({
   id = id.from(_N, "GetArchiveRequest"),
   type = "structure",
   members = {
      ArchiveId = schema.new({
         id = id.from(_N, "GetArchiveInput", "ArchiveId"),
         type = "string",
         name = "ArchiveId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetArchiveOutput = schema.new({
   id = id.from(_N, "GetArchiveResponse"),
   type = "structure",
   members = {
      ArchiveId = schema.new({
         id = id.from(_N, "GetArchiveOutput", "ArchiveId"),
         type = "string",
         name = "ArchiveId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ArchiveName = schema.new({
         id = id.from(_N, "GetArchiveOutput", "ArchiveName"),
         type = "string",
         name = "ArchiveName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ArchiveArn = schema.new({
         id = id.from(_N, "GetArchiveOutput", "ArchiveArn"),
         type = "string",
         name = "ArchiveArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ArchiveState = schema.new({
         id = id.from(_N, "GetArchiveOutput", "ArchiveState"),
         type = "string",
         name = "ArchiveState",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Retention = schema.new({
         id = id.from(_N, "GetArchiveOutput", "Retention"),
         type = "union",
         name = "Retention",
         target_id = id.from(_N, "ArchiveRetention"),
         target = M.ArchiveRetention,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "GetArchiveOutput", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      LastUpdatedTimestamp = schema.new({
         id = id.from(_N, "GetArchiveOutput", "LastUpdatedTimestamp"),
         type = "timestamp",
         name = "LastUpdatedTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      KmsKeyArn = schema.new({
         id = id.from(_N, "GetArchiveOutput", "KmsKeyArn"),
         type = "string",
         name = "KmsKeyArn",
         target_id = prelude.String.id,
      }),
   },
})

M.ListArchivesInput = schema.new({
   id = id.from(_N, "ListArchivesRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListArchivesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      PageSize = schema.new({
         id = id.from(_N, "ListArchivesInput", "PageSize"),
         type = "integer",
         name = "PageSize",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListArchivesOutput = schema.new({
   id = id.from(_N, "ListArchivesResponse"),
   type = "structure",
   members = {
      Archives = schema.new({
         id = id.from(_N, "ListArchivesOutput", "Archives"),
         type = "list",
         name = "Archives",
         target_id = prelude.Document.id,
         list_member = M.Archive,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListArchivesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateArchiveInput = schema.new({
   id = id.from(_N, "UpdateArchiveRequest"),
   type = "structure",
   members = {
      ArchiveId = schema.new({
         id = id.from(_N, "UpdateArchiveInput", "ArchiveId"),
         type = "string",
         name = "ArchiveId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ArchiveName = schema.new({
         id = id.from(_N, "UpdateArchiveInput", "ArchiveName"),
         type = "string",
         name = "ArchiveName",
         target_id = prelude.String.id,
      }),
      Retention = schema.new({
         id = id.from(_N, "UpdateArchiveInput", "Retention"),
         type = "union",
         name = "Retention",
         target_id = id.from(_N, "ArchiveRetention"),
         target = M.ArchiveRetention,
      }),
   },
})

M.UpdateArchiveOutput = schema.new({
   id = id.from(_N, "UpdateArchiveResponse"),
   type = "structure",
})

M.BounceAction = schema.new({
   id = id.from(_N, "BounceAction"),
   type = "structure",
   members = {
      ActionFailurePolicy = schema.new({
         id = id.from(_N, "BounceAction", "ActionFailurePolicy"),
         type = "string",
         name = "ActionFailurePolicy",
         target_id = prelude.String.id,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "BounceAction", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Sender = schema.new({
         id = id.from(_N, "BounceAction", "Sender"),
         type = "string",
         name = "Sender",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StatusCode = schema.new({
         id = id.from(_N, "BounceAction", "StatusCode"),
         type = "string",
         name = "StatusCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SmtpReplyCode = schema.new({
         id = id.from(_N, "BounceAction", "SmtpReplyCode"),
         type = "string",
         name = "SmtpReplyCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DiagnosticMessage = schema.new({
         id = id.from(_N, "BounceAction", "DiagnosticMessage"),
         type = "string",
         name = "DiagnosticMessage",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Message = schema.new({
         id = id.from(_N, "BounceAction", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.ImportDataFormat = schema.new({
   id = id.from(_N, "ImportDataFormat"),
   type = "structure",
   members = {
      ImportDataType = schema.new({
         id = id.from(_N, "ImportDataFormat", "ImportDataType"),
         type = "string",
         name = "ImportDataType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateAddressListImportJobInput = schema.new({
   id = id.from(_N, "CreateAddressListImportJobRequest"),
   type = "structure",
   members = {
      ClientToken = schema.new({
         id = id.from(_N, "CreateAddressListImportJobInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      AddressListId = schema.new({
         id = id.from(_N, "CreateAddressListImportJobInput", "AddressListId"),
         type = "string",
         name = "AddressListId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "CreateAddressListImportJobInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ImportDataFormat = schema.new({
         id = id.from(_N, "CreateAddressListImportJobInput", "ImportDataFormat"),
         type = "structure",
         name = "ImportDataFormat",
         target_id = id.from(_N, "ImportDataFormat"),
         target = M.ImportDataFormat,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateAddressListImportJobOutput = schema.new({
   id = id.from(_N, "CreateAddressListImportJobResponse"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "CreateAddressListImportJobOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PreSignedUrl = schema.new({
         id = id.from(_N, "CreateAddressListImportJobOutput", "PreSignedUrl"),
         type = "string",
         name = "PreSignedUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TrustStore = schema.new({
   id = id.from(_N, "TrustStore"),
   type = "structure",
   members = {
      CAContent = schema.new({
         id = id.from(_N, "TrustStore", "CAContent"),
         type = "string",
         name = "CAContent",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CrlContent = schema.new({
         id = id.from(_N, "TrustStore", "CrlContent"),
         type = "string",
         name = "CrlContent",
         target_id = prelude.String.id,
      }),
      KmsKeyArn = schema.new({
         id = id.from(_N, "TrustStore", "KmsKeyArn"),
         type = "string",
         name = "KmsKeyArn",
         target_id = prelude.String.id,
      }),
   },
})

M.TlsAuthConfiguration = schema.new({
   id = id.from(_N, "TlsAuthConfiguration"),
   type = "structure",
   members = {
      TrustStore = schema.new({
         id = id.from(_N, "TlsAuthConfiguration", "TrustStore"),
         type = "structure",
         name = "TrustStore",
         target_id = id.from(_N, "TrustStore"),
         target = M.TrustStore,
      }),
   },
})

M.IngressPointConfiguration = schema.new({
   id = id.from(_N, "IngressPointConfiguration"),
   type = "union",
   members = {
      SmtpPassword = schema.new({
         id = id.from(_N, "IngressPointConfiguration", "SmtpPassword"),
         type = "string",
         name = "SmtpPassword",
         target_id = prelude.String.id,
      }),
      SecretArn = schema.new({
         id = id.from(_N, "IngressPointConfiguration", "SecretArn"),
         type = "string",
         name = "SecretArn",
         target_id = prelude.String.id,
      }),
      TlsAuthConfiguration = schema.new({
         id = id.from(_N, "IngressPointConfiguration", "TlsAuthConfiguration"),
         type = "structure",
         name = "TlsAuthConfiguration",
         target_id = id.from(_N, "TlsAuthConfiguration"),
         target = M.TlsAuthConfiguration,
      }),
   },
})

M.PrivateNetworkConfiguration = schema.new({
   id = id.from(_N, "PrivateNetworkConfiguration"),
   type = "structure",
   members = {
      VpcEndpointId = schema.new({
         id = id.from(_N, "PrivateNetworkConfiguration", "VpcEndpointId"),
         type = "string",
         name = "VpcEndpointId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PublicNetworkConfiguration = schema.new({
   id = id.from(_N, "PublicNetworkConfiguration"),
   type = "structure",
   members = {
      IpType = schema.new({
         id = id.from(_N, "PublicNetworkConfiguration", "IpType"),
         type = "string",
         name = "IpType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = "IPV4" },
         },
      }),
   },
})

M.NetworkConfiguration = schema.new({
   id = id.from(_N, "NetworkConfiguration"),
   type = "union",
   members = {
      PublicNetworkConfiguration = schema.new({
         id = id.from(_N, "NetworkConfiguration", "PublicNetworkConfiguration"),
         type = "structure",
         name = "PublicNetworkConfiguration",
         target_id = id.from(_N, "PublicNetworkConfiguration"),
         target = M.PublicNetworkConfiguration,
      }),
      PrivateNetworkConfiguration = schema.new({
         id = id.from(_N, "NetworkConfiguration", "PrivateNetworkConfiguration"),
         type = "structure",
         name = "PrivateNetworkConfiguration",
         target_id = id.from(_N, "PrivateNetworkConfiguration"),
         target = M.PrivateNetworkConfiguration,
      }),
   },
})

M.CreateIngressPointInput = schema.new({
   id = id.from(_N, "CreateIngressPointRequest"),
   type = "structure",
   members = {
      ClientToken = schema.new({
         id = id.from(_N, "CreateIngressPointInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      IngressPointName = schema.new({
         id = id.from(_N, "CreateIngressPointInput", "IngressPointName"),
         type = "string",
         name = "IngressPointName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Type = schema.new({
         id = id.from(_N, "CreateIngressPointInput", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RuleSetId = schema.new({
         id = id.from(_N, "CreateIngressPointInput", "RuleSetId"),
         type = "string",
         name = "RuleSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TrafficPolicyId = schema.new({
         id = id.from(_N, "CreateIngressPointInput", "TrafficPolicyId"),
         type = "string",
         name = "TrafficPolicyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IngressPointConfiguration = schema.new({
         id = id.from(_N, "CreateIngressPointInput", "IngressPointConfiguration"),
         type = "union",
         name = "IngressPointConfiguration",
         target_id = id.from(_N, "IngressPointConfiguration"),
         target = M.IngressPointConfiguration,
      }),
      NetworkConfiguration = schema.new({
         id = id.from(_N, "CreateIngressPointInput", "NetworkConfiguration"),
         type = "union",
         name = "NetworkConfiguration",
         target_id = id.from(_N, "NetworkConfiguration"),
         target = M.NetworkConfiguration,
      }),
      TlsPolicy = schema.new({
         id = id.from(_N, "CreateIngressPointInput", "TlsPolicy"),
         type = "string",
         name = "TlsPolicy",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateIngressPointInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateIngressPointOutput = schema.new({
   id = id.from(_N, "CreateIngressPointResponse"),
   type = "structure",
   members = {
      IngressPointId = schema.new({
         id = id.from(_N, "CreateIngressPointOutput", "IngressPointId"),
         type = "string",
         name = "IngressPointId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.NoAuthentication = schema.new({
   id = id.from(_N, "NoAuthentication"),
   type = "structure",
})

M.RelayAuthentication = schema.new({
   id = id.from(_N, "RelayAuthentication"),
   type = "union",
   members = {
      SecretArn = schema.new({
         id = id.from(_N, "RelayAuthentication", "SecretArn"),
         type = "string",
         name = "SecretArn",
         target_id = prelude.String.id,
      }),
      NoAuthentication = schema.new({
         id = id.from(_N, "RelayAuthentication", "NoAuthentication"),
         type = "structure",
         name = "NoAuthentication",
         target_id = id.from(_N, "NoAuthentication"),
         target = M.NoAuthentication,
      }),
   },
})

M.CreateRelayInput = schema.new({
   id = id.from(_N, "CreateRelayRequest"),
   type = "structure",
   members = {
      ClientToken = schema.new({
         id = id.from(_N, "CreateRelayInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      RelayName = schema.new({
         id = id.from(_N, "CreateRelayInput", "RelayName"),
         type = "string",
         name = "RelayName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ServerName = schema.new({
         id = id.from(_N, "CreateRelayInput", "ServerName"),
         type = "string",
         name = "ServerName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ServerPort = schema.new({
         id = id.from(_N, "CreateRelayInput", "ServerPort"),
         type = "integer",
         name = "ServerPort",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Authentication = schema.new({
         id = id.from(_N, "CreateRelayInput", "Authentication"),
         type = "union",
         name = "Authentication",
         target_id = id.from(_N, "RelayAuthentication"),
         target = M.RelayAuthentication,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateRelayInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateRelayOutput = schema.new({
   id = id.from(_N, "CreateRelayResponse"),
   type = "structure",
   members = {
      RelayId = schema.new({
         id = id.from(_N, "CreateRelayOutput", "RelayId"),
         type = "string",
         name = "RelayId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeliverToMailboxAction = schema.new({
   id = id.from(_N, "DeliverToMailboxAction"),
   type = "structure",
   members = {
      ActionFailurePolicy = schema.new({
         id = id.from(_N, "DeliverToMailboxAction", "ActionFailurePolicy"),
         type = "string",
         name = "ActionFailurePolicy",
         target_id = prelude.String.id,
      }),
      MailboxArn = schema.new({
         id = id.from(_N, "DeliverToMailboxAction", "MailboxArn"),
         type = "string",
         name = "MailboxArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RoleArn = schema.new({
         id = id.from(_N, "DeliverToMailboxAction", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeliverToQBusinessAction = schema.new({
   id = id.from(_N, "DeliverToQBusinessAction"),
   type = "structure",
   members = {
      ActionFailurePolicy = schema.new({
         id = id.from(_N, "DeliverToQBusinessAction", "ActionFailurePolicy"),
         type = "string",
         name = "ActionFailurePolicy",
         target_id = prelude.String.id,
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "DeliverToQBusinessAction", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IndexId = schema.new({
         id = id.from(_N, "DeliverToQBusinessAction", "IndexId"),
         type = "string",
         name = "IndexId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RoleArn = schema.new({
         id = id.from(_N, "DeliverToQBusinessAction", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DropAction = schema.new({
   id = id.from(_N, "DropAction"),
   type = "structure",
})

M.InvokeLambdaAction = schema.new({
   id = id.from(_N, "InvokeLambdaAction"),
   type = "structure",
   members = {
      ActionFailurePolicy = schema.new({
         id = id.from(_N, "InvokeLambdaAction", "ActionFailurePolicy"),
         type = "string",
         name = "ActionFailurePolicy",
         target_id = prelude.String.id,
      }),
      FunctionArn = schema.new({
         id = id.from(_N, "InvokeLambdaAction", "FunctionArn"),
         type = "string",
         name = "FunctionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InvocationType = schema.new({
         id = id.from(_N, "InvokeLambdaAction", "InvocationType"),
         type = "string",
         name = "InvocationType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RoleArn = schema.new({
         id = id.from(_N, "InvokeLambdaAction", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RetryTimeMinutes = schema.new({
         id = id.from(_N, "InvokeLambdaAction", "RetryTimeMinutes"),
         type = "integer",
         name = "RetryTimeMinutes",
         target_id = prelude.Integer.id,
      }),
   },
})

M.SnsAction = schema.new({
   id = id.from(_N, "SnsAction"),
   type = "structure",
   members = {
      ActionFailurePolicy = schema.new({
         id = id.from(_N, "SnsAction", "ActionFailurePolicy"),
         type = "string",
         name = "ActionFailurePolicy",
         target_id = prelude.String.id,
      }),
      TopicArn = schema.new({
         id = id.from(_N, "SnsAction", "TopicArn"),
         type = "string",
         name = "TopicArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RoleArn = schema.new({
         id = id.from(_N, "SnsAction", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Encoding = schema.new({
         id = id.from(_N, "SnsAction", "Encoding"),
         type = "string",
         name = "Encoding",
         target_id = prelude.String.id,
         traits = {
            [traits.DEFAULT] = { value = "UTF-8" },
         },
      }),
      PayloadType = schema.new({
         id = id.from(_N, "SnsAction", "PayloadType"),
         type = "string",
         name = "PayloadType",
         target_id = prelude.String.id,
         traits = {
            [traits.DEFAULT] = { value = "CONTENT" },
         },
      }),
   },
})

M.RelayAction = schema.new({
   id = id.from(_N, "RelayAction"),
   type = "structure",
   members = {
      ActionFailurePolicy = schema.new({
         id = id.from(_N, "RelayAction", "ActionFailurePolicy"),
         type = "string",
         name = "ActionFailurePolicy",
         target_id = prelude.String.id,
      }),
      Relay = schema.new({
         id = id.from(_N, "RelayAction", "Relay"),
         type = "string",
         name = "Relay",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MailFrom = schema.new({
         id = id.from(_N, "RelayAction", "MailFrom"),
         type = "string",
         name = "MailFrom",
         target_id = prelude.String.id,
      }),
   },
})

M.ReplaceRecipientAction = schema.new({
   id = id.from(_N, "ReplaceRecipientAction"),
   type = "structure",
   members = {
      ReplaceWith = schema.new({
         id = id.from(_N, "ReplaceRecipientAction", "ReplaceWith"),
         type = "list",
         name = "ReplaceWith",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.SendAction = schema.new({
   id = id.from(_N, "SendAction"),
   type = "structure",
   members = {
      ActionFailurePolicy = schema.new({
         id = id.from(_N, "SendAction", "ActionFailurePolicy"),
         type = "string",
         name = "ActionFailurePolicy",
         target_id = prelude.String.id,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "SendAction", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.S3Action = schema.new({
   id = id.from(_N, "S3Action"),
   type = "structure",
   members = {
      ActionFailurePolicy = schema.new({
         id = id.from(_N, "S3Action", "ActionFailurePolicy"),
         type = "string",
         name = "ActionFailurePolicy",
         target_id = prelude.String.id,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "S3Action", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      S3Bucket = schema.new({
         id = id.from(_N, "S3Action", "S3Bucket"),
         type = "string",
         name = "S3Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      S3Prefix = schema.new({
         id = id.from(_N, "S3Action", "S3Prefix"),
         type = "string",
         name = "S3Prefix",
         target_id = prelude.String.id,
      }),
      S3SseKmsKeyId = schema.new({
         id = id.from(_N, "S3Action", "S3SseKmsKeyId"),
         type = "string",
         name = "S3SseKmsKeyId",
         target_id = prelude.String.id,
      }),
   },
})

M.RuleAction = schema.new({
   id = id.from(_N, "RuleAction"),
   type = "union",
   members = {
      Drop = schema.new({
         id = id.from(_N, "RuleAction", "Drop"),
         type = "structure",
         name = "Drop",
         target_id = id.from(_N, "DropAction"),
         target = M.DropAction,
      }),
      Relay = schema.new({
         id = id.from(_N, "RuleAction", "Relay"),
         type = "structure",
         name = "Relay",
         target_id = id.from(_N, "RelayAction"),
         target = M.RelayAction,
      }),
      Archive = schema.new({
         id = id.from(_N, "RuleAction", "Archive"),
         type = "structure",
         name = "Archive",
         target_id = id.from(_N, "ArchiveAction"),
         target = M.ArchiveAction,
      }),
      WriteToS3 = schema.new({
         id = id.from(_N, "RuleAction", "WriteToS3"),
         type = "structure",
         name = "WriteToS3",
         target_id = id.from(_N, "S3Action"),
         target = M.S3Action,
      }),
      Send = schema.new({
         id = id.from(_N, "RuleAction", "Send"),
         type = "structure",
         name = "Send",
         target_id = id.from(_N, "SendAction"),
         target = M.SendAction,
      }),
      AddHeader = schema.new({
         id = id.from(_N, "RuleAction", "AddHeader"),
         type = "structure",
         name = "AddHeader",
         target_id = id.from(_N, "AddHeaderAction"),
         target = M.AddHeaderAction,
      }),
      ReplaceRecipient = schema.new({
         id = id.from(_N, "RuleAction", "ReplaceRecipient"),
         type = "structure",
         name = "ReplaceRecipient",
         target_id = id.from(_N, "ReplaceRecipientAction"),
         target = M.ReplaceRecipientAction,
      }),
      DeliverToMailbox = schema.new({
         id = id.from(_N, "RuleAction", "DeliverToMailbox"),
         type = "structure",
         name = "DeliverToMailbox",
         target_id = id.from(_N, "DeliverToMailboxAction"),
         target = M.DeliverToMailboxAction,
      }),
      DeliverToQBusiness = schema.new({
         id = id.from(_N, "RuleAction", "DeliverToQBusiness"),
         type = "structure",
         name = "DeliverToQBusiness",
         target_id = id.from(_N, "DeliverToQBusinessAction"),
         target = M.DeliverToQBusinessAction,
      }),
      PublishToSns = schema.new({
         id = id.from(_N, "RuleAction", "PublishToSns"),
         type = "structure",
         name = "PublishToSns",
         target_id = id.from(_N, "SnsAction"),
         target = M.SnsAction,
      }),
      Bounce = schema.new({
         id = id.from(_N, "RuleAction", "Bounce"),
         type = "structure",
         name = "Bounce",
         target_id = id.from(_N, "BounceAction"),
         target = M.BounceAction,
      }),
      InvokeLambda = schema.new({
         id = id.from(_N, "RuleAction", "InvokeLambda"),
         type = "structure",
         name = "InvokeLambda",
         target_id = id.from(_N, "InvokeLambdaAction"),
         target = M.InvokeLambdaAction,
      }),
   },
})

M.RuleIsInAddressList = schema.new({
   id = id.from(_N, "RuleIsInAddressList"),
   type = "structure",
   members = {
      Attribute = schema.new({
         id = id.from(_N, "RuleIsInAddressList", "Attribute"),
         type = "string",
         name = "Attribute",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AddressLists = schema.new({
         id = id.from(_N, "RuleIsInAddressList", "AddressLists"),
         type = "list",
         name = "AddressLists",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RuleBooleanToEvaluate = schema.new({
   id = id.from(_N, "RuleBooleanToEvaluate"),
   type = "union",
   members = {
      Attribute = schema.new({
         id = id.from(_N, "RuleBooleanToEvaluate", "Attribute"),
         type = "string",
         name = "Attribute",
         target_id = prelude.String.id,
      }),
      Analysis = schema.new({
         id = id.from(_N, "RuleBooleanToEvaluate", "Analysis"),
         type = "structure",
         name = "Analysis",
         target_id = id.from(_N, "Analysis"),
         target = M.Analysis,
      }),
      IsInAddressList = schema.new({
         id = id.from(_N, "RuleBooleanToEvaluate", "IsInAddressList"),
         type = "structure",
         name = "IsInAddressList",
         target_id = id.from(_N, "RuleIsInAddressList"),
         target = M.RuleIsInAddressList,
      }),
   },
})

M.RuleBooleanExpression = schema.new({
   id = id.from(_N, "RuleBooleanExpression"),
   type = "structure",
   members = {
      Evaluate = schema.new({
         id = id.from(_N, "RuleBooleanExpression", "Evaluate"),
         type = "union",
         name = "Evaluate",
         target_id = id.from(_N, "RuleBooleanToEvaluate"),
         target = M.RuleBooleanToEvaluate,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Operator = schema.new({
         id = id.from(_N, "RuleBooleanExpression", "Operator"),
         type = "string",
         name = "Operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RuleDmarcExpression = schema.new({
   id = id.from(_N, "RuleDmarcExpression"),
   type = "structure",
   members = {
      Operator = schema.new({
         id = id.from(_N, "RuleDmarcExpression", "Operator"),
         type = "string",
         name = "Operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Values = schema.new({
         id = id.from(_N, "RuleDmarcExpression", "Values"),
         type = "list",
         name = "Values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RuleIpToEvaluate = schema.new({
   id = id.from(_N, "RuleIpToEvaluate"),
   type = "union",
   members = {
      Attribute = schema.new({
         id = id.from(_N, "RuleIpToEvaluate", "Attribute"),
         type = "string",
         name = "Attribute",
         target_id = prelude.String.id,
      }),
   },
})

M.RuleIpExpression = schema.new({
   id = id.from(_N, "RuleIpExpression"),
   type = "structure",
   members = {
      Evaluate = schema.new({
         id = id.from(_N, "RuleIpExpression", "Evaluate"),
         type = "union",
         name = "Evaluate",
         target_id = id.from(_N, "RuleIpToEvaluate"),
         target = M.RuleIpToEvaluate,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Operator = schema.new({
         id = id.from(_N, "RuleIpExpression", "Operator"),
         type = "string",
         name = "Operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Values = schema.new({
         id = id.from(_N, "RuleIpExpression", "Values"),
         type = "list",
         name = "Values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RuleNumberToEvaluate = schema.new({
   id = id.from(_N, "RuleNumberToEvaluate"),
   type = "union",
   members = {
      Attribute = schema.new({
         id = id.from(_N, "RuleNumberToEvaluate", "Attribute"),
         type = "string",
         name = "Attribute",
         target_id = prelude.String.id,
      }),
   },
})

M.RuleNumberExpression = schema.new({
   id = id.from(_N, "RuleNumberExpression"),
   type = "structure",
   members = {
      Evaluate = schema.new({
         id = id.from(_N, "RuleNumberExpression", "Evaluate"),
         type = "union",
         name = "Evaluate",
         target_id = id.from(_N, "RuleNumberToEvaluate"),
         target = M.RuleNumberToEvaluate,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Operator = schema.new({
         id = id.from(_N, "RuleNumberExpression", "Operator"),
         type = "string",
         name = "Operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Value = schema.new({
         id = id.from(_N, "RuleNumberExpression", "Value"),
         type = "double",
         name = "Value",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RuleStringToEvaluate = schema.new({
   id = id.from(_N, "RuleStringToEvaluate"),
   type = "union",
   members = {
      Attribute = schema.new({
         id = id.from(_N, "RuleStringToEvaluate", "Attribute"),
         type = "string",
         name = "Attribute",
         target_id = prelude.String.id,
      }),
      MimeHeaderAttribute = schema.new({
         id = id.from(_N, "RuleStringToEvaluate", "MimeHeaderAttribute"),
         type = "string",
         name = "MimeHeaderAttribute",
         target_id = prelude.String.id,
      }),
      Analysis = schema.new({
         id = id.from(_N, "RuleStringToEvaluate", "Analysis"),
         type = "structure",
         name = "Analysis",
         target_id = id.from(_N, "Analysis"),
         target = M.Analysis,
      }),
      ClientCertificateAttribute = schema.new({
         id = id.from(_N, "RuleStringToEvaluate", "ClientCertificateAttribute"),
         type = "string",
         name = "ClientCertificateAttribute",
         target_id = prelude.String.id,
      }),
   },
})

M.RuleStringExpression = schema.new({
   id = id.from(_N, "RuleStringExpression"),
   type = "structure",
   members = {
      Evaluate = schema.new({
         id = id.from(_N, "RuleStringExpression", "Evaluate"),
         type = "union",
         name = "Evaluate",
         target_id = id.from(_N, "RuleStringToEvaluate"),
         target = M.RuleStringToEvaluate,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Operator = schema.new({
         id = id.from(_N, "RuleStringExpression", "Operator"),
         type = "string",
         name = "Operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Values = schema.new({
         id = id.from(_N, "RuleStringExpression", "Values"),
         type = "list",
         name = "Values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RuleVerdictToEvaluate = schema.new({
   id = id.from(_N, "RuleVerdictToEvaluate"),
   type = "union",
   members = {
      Attribute = schema.new({
         id = id.from(_N, "RuleVerdictToEvaluate", "Attribute"),
         type = "string",
         name = "Attribute",
         target_id = prelude.String.id,
      }),
      Analysis = schema.new({
         id = id.from(_N, "RuleVerdictToEvaluate", "Analysis"),
         type = "structure",
         name = "Analysis",
         target_id = id.from(_N, "Analysis"),
         target = M.Analysis,
      }),
   },
})

M.RuleVerdictExpression = schema.new({
   id = id.from(_N, "RuleVerdictExpression"),
   type = "structure",
   members = {
      Evaluate = schema.new({
         id = id.from(_N, "RuleVerdictExpression", "Evaluate"),
         type = "union",
         name = "Evaluate",
         target_id = id.from(_N, "RuleVerdictToEvaluate"),
         target = M.RuleVerdictToEvaluate,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Operator = schema.new({
         id = id.from(_N, "RuleVerdictExpression", "Operator"),
         type = "string",
         name = "Operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Values = schema.new({
         id = id.from(_N, "RuleVerdictExpression", "Values"),
         type = "list",
         name = "Values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RuleCondition = schema.new({
   id = id.from(_N, "RuleCondition"),
   type = "union",
   members = {
      BooleanExpression = schema.new({
         id = id.from(_N, "RuleCondition", "BooleanExpression"),
         type = "structure",
         name = "BooleanExpression",
         target_id = id.from(_N, "RuleBooleanExpression"),
         target = M.RuleBooleanExpression,
      }),
      StringExpression = schema.new({
         id = id.from(_N, "RuleCondition", "StringExpression"),
         type = "structure",
         name = "StringExpression",
         target_id = id.from(_N, "RuleStringExpression"),
         target = M.RuleStringExpression,
      }),
      NumberExpression = schema.new({
         id = id.from(_N, "RuleCondition", "NumberExpression"),
         type = "structure",
         name = "NumberExpression",
         target_id = id.from(_N, "RuleNumberExpression"),
         target = M.RuleNumberExpression,
      }),
      IpExpression = schema.new({
         id = id.from(_N, "RuleCondition", "IpExpression"),
         type = "structure",
         name = "IpExpression",
         target_id = id.from(_N, "RuleIpExpression"),
         target = M.RuleIpExpression,
      }),
      VerdictExpression = schema.new({
         id = id.from(_N, "RuleCondition", "VerdictExpression"),
         type = "structure",
         name = "VerdictExpression",
         target_id = id.from(_N, "RuleVerdictExpression"),
         target = M.RuleVerdictExpression,
      }),
      DmarcExpression = schema.new({
         id = id.from(_N, "RuleCondition", "DmarcExpression"),
         type = "structure",
         name = "DmarcExpression",
         target_id = id.from(_N, "RuleDmarcExpression"),
         target = M.RuleDmarcExpression,
      }),
   },
})

M.Rule = schema.new({
   id = id.from(_N, "Rule"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "Rule", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Conditions = schema.new({
         id = id.from(_N, "Rule", "Conditions"),
         type = "list",
         name = "Conditions",
         target_id = prelude.Document.id,
         list_member = M.RuleCondition,
      }),
      Unless = schema.new({
         id = id.from(_N, "Rule", "Unless"),
         type = "list",
         name = "Unless",
         target_id = prelude.Document.id,
         list_member = M.RuleCondition,
      }),
      Actions = schema.new({
         id = id.from(_N, "Rule", "Actions"),
         type = "list",
         name = "Actions",
         target_id = prelude.Document.id,
         list_member = M.RuleAction,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateRuleSetInput = schema.new({
   id = id.from(_N, "CreateRuleSetRequest"),
   type = "structure",
   members = {
      ClientToken = schema.new({
         id = id.from(_N, "CreateRuleSetInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      RuleSetName = schema.new({
         id = id.from(_N, "CreateRuleSetInput", "RuleSetName"),
         type = "string",
         name = "RuleSetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Rules = schema.new({
         id = id.from(_N, "CreateRuleSetInput", "Rules"),
         type = "list",
         name = "Rules",
         target_id = prelude.Document.id,
         list_member = M.Rule,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateRuleSetInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateRuleSetOutput = schema.new({
   id = id.from(_N, "CreateRuleSetResponse"),
   type = "structure",
   members = {
      RuleSetId = schema.new({
         id = id.from(_N, "CreateRuleSetOutput", "RuleSetId"),
         type = "string",
         name = "RuleSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IngressAnalysis = schema.new({
   id = id.from(_N, "IngressAnalysis"),
   type = "structure",
   members = {
      Analyzer = schema.new({
         id = id.from(_N, "IngressAnalysis", "Analyzer"),
         type = "string",
         name = "Analyzer",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ResultField = schema.new({
         id = id.from(_N, "IngressAnalysis", "ResultField"),
         type = "string",
         name = "ResultField",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IngressIsInAddressList = schema.new({
   id = id.from(_N, "IngressIsInAddressList"),
   type = "structure",
   members = {
      Attribute = schema.new({
         id = id.from(_N, "IngressIsInAddressList", "Attribute"),
         type = "string",
         name = "Attribute",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AddressLists = schema.new({
         id = id.from(_N, "IngressIsInAddressList", "AddressLists"),
         type = "list",
         name = "AddressLists",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IngressBooleanToEvaluate = schema.new({
   id = id.from(_N, "IngressBooleanToEvaluate"),
   type = "union",
   members = {
      Analysis = schema.new({
         id = id.from(_N, "IngressBooleanToEvaluate", "Analysis"),
         type = "structure",
         name = "Analysis",
         target_id = id.from(_N, "IngressAnalysis"),
         target = M.IngressAnalysis,
      }),
      IsInAddressList = schema.new({
         id = id.from(_N, "IngressBooleanToEvaluate", "IsInAddressList"),
         type = "structure",
         name = "IsInAddressList",
         target_id = id.from(_N, "IngressIsInAddressList"),
         target = M.IngressIsInAddressList,
      }),
   },
})

M.IngressBooleanExpression = schema.new({
   id = id.from(_N, "IngressBooleanExpression"),
   type = "structure",
   members = {
      Evaluate = schema.new({
         id = id.from(_N, "IngressBooleanExpression", "Evaluate"),
         type = "union",
         name = "Evaluate",
         target_id = id.from(_N, "IngressBooleanToEvaluate"),
         target = M.IngressBooleanToEvaluate,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Operator = schema.new({
         id = id.from(_N, "IngressBooleanExpression", "Operator"),
         type = "string",
         name = "Operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IngressIpToEvaluate = schema.new({
   id = id.from(_N, "IngressIpToEvaluate"),
   type = "union",
   members = {
      Attribute = schema.new({
         id = id.from(_N, "IngressIpToEvaluate", "Attribute"),
         type = "string",
         name = "Attribute",
         target_id = prelude.String.id,
      }),
   },
})

M.IngressIpv4Expression = schema.new({
   id = id.from(_N, "IngressIpv4Expression"),
   type = "structure",
   members = {
      Evaluate = schema.new({
         id = id.from(_N, "IngressIpv4Expression", "Evaluate"),
         type = "union",
         name = "Evaluate",
         target_id = id.from(_N, "IngressIpToEvaluate"),
         target = M.IngressIpToEvaluate,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Operator = schema.new({
         id = id.from(_N, "IngressIpv4Expression", "Operator"),
         type = "string",
         name = "Operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Values = schema.new({
         id = id.from(_N, "IngressIpv4Expression", "Values"),
         type = "list",
         name = "Values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IngressIpv6ToEvaluate = schema.new({
   id = id.from(_N, "IngressIpv6ToEvaluate"),
   type = "union",
   members = {
      Attribute = schema.new({
         id = id.from(_N, "IngressIpv6ToEvaluate", "Attribute"),
         type = "string",
         name = "Attribute",
         target_id = prelude.String.id,
      }),
   },
})

M.IngressIpv6Expression = schema.new({
   id = id.from(_N, "IngressIpv6Expression"),
   type = "structure",
   members = {
      Evaluate = schema.new({
         id = id.from(_N, "IngressIpv6Expression", "Evaluate"),
         type = "union",
         name = "Evaluate",
         target_id = id.from(_N, "IngressIpv6ToEvaluate"),
         target = M.IngressIpv6ToEvaluate,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Operator = schema.new({
         id = id.from(_N, "IngressIpv6Expression", "Operator"),
         type = "string",
         name = "Operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Values = schema.new({
         id = id.from(_N, "IngressIpv6Expression", "Values"),
         type = "list",
         name = "Values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IngressStringToEvaluate = schema.new({
   id = id.from(_N, "IngressStringToEvaluate"),
   type = "union",
   members = {
      Attribute = schema.new({
         id = id.from(_N, "IngressStringToEvaluate", "Attribute"),
         type = "string",
         name = "Attribute",
         target_id = prelude.String.id,
      }),
      Analysis = schema.new({
         id = id.from(_N, "IngressStringToEvaluate", "Analysis"),
         type = "structure",
         name = "Analysis",
         target_id = id.from(_N, "IngressAnalysis"),
         target = M.IngressAnalysis,
      }),
   },
})

M.IngressStringExpression = schema.new({
   id = id.from(_N, "IngressStringExpression"),
   type = "structure",
   members = {
      Evaluate = schema.new({
         id = id.from(_N, "IngressStringExpression", "Evaluate"),
         type = "union",
         name = "Evaluate",
         target_id = id.from(_N, "IngressStringToEvaluate"),
         target = M.IngressStringToEvaluate,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Operator = schema.new({
         id = id.from(_N, "IngressStringExpression", "Operator"),
         type = "string",
         name = "Operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Values = schema.new({
         id = id.from(_N, "IngressStringExpression", "Values"),
         type = "list",
         name = "Values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IngressTlsProtocolToEvaluate = schema.new({
   id = id.from(_N, "IngressTlsProtocolToEvaluate"),
   type = "union",
   members = {
      Attribute = schema.new({
         id = id.from(_N, "IngressTlsProtocolToEvaluate", "Attribute"),
         type = "string",
         name = "Attribute",
         target_id = prelude.String.id,
      }),
   },
})

M.IngressTlsProtocolExpression = schema.new({
   id = id.from(_N, "IngressTlsProtocolExpression"),
   type = "structure",
   members = {
      Evaluate = schema.new({
         id = id.from(_N, "IngressTlsProtocolExpression", "Evaluate"),
         type = "union",
         name = "Evaluate",
         target_id = id.from(_N, "IngressTlsProtocolToEvaluate"),
         target = M.IngressTlsProtocolToEvaluate,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Operator = schema.new({
         id = id.from(_N, "IngressTlsProtocolExpression", "Operator"),
         type = "string",
         name = "Operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Value = schema.new({
         id = id.from(_N, "IngressTlsProtocolExpression", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PolicyCondition = schema.new({
   id = id.from(_N, "PolicyCondition"),
   type = "union",
   members = {
      StringExpression = schema.new({
         id = id.from(_N, "PolicyCondition", "StringExpression"),
         type = "structure",
         name = "StringExpression",
         target_id = id.from(_N, "IngressStringExpression"),
         target = M.IngressStringExpression,
      }),
      IpExpression = schema.new({
         id = id.from(_N, "PolicyCondition", "IpExpression"),
         type = "structure",
         name = "IpExpression",
         target_id = id.from(_N, "IngressIpv4Expression"),
         target = M.IngressIpv4Expression,
      }),
      Ipv6Expression = schema.new({
         id = id.from(_N, "PolicyCondition", "Ipv6Expression"),
         type = "structure",
         name = "Ipv6Expression",
         target_id = id.from(_N, "IngressIpv6Expression"),
         target = M.IngressIpv6Expression,
      }),
      TlsExpression = schema.new({
         id = id.from(_N, "PolicyCondition", "TlsExpression"),
         type = "structure",
         name = "TlsExpression",
         target_id = id.from(_N, "IngressTlsProtocolExpression"),
         target = M.IngressTlsProtocolExpression,
      }),
      BooleanExpression = schema.new({
         id = id.from(_N, "PolicyCondition", "BooleanExpression"),
         type = "structure",
         name = "BooleanExpression",
         target_id = id.from(_N, "IngressBooleanExpression"),
         target = M.IngressBooleanExpression,
      }),
   },
})

M.PolicyStatement = schema.new({
   id = id.from(_N, "PolicyStatement"),
   type = "structure",
   members = {
      Conditions = schema.new({
         id = id.from(_N, "PolicyStatement", "Conditions"),
         type = "list",
         name = "Conditions",
         target_id = prelude.Document.id,
         list_member = M.PolicyCondition,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Action = schema.new({
         id = id.from(_N, "PolicyStatement", "Action"),
         type = "string",
         name = "Action",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateTrafficPolicyInput = schema.new({
   id = id.from(_N, "CreateTrafficPolicyRequest"),
   type = "structure",
   members = {
      ClientToken = schema.new({
         id = id.from(_N, "CreateTrafficPolicyInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      TrafficPolicyName = schema.new({
         id = id.from(_N, "CreateTrafficPolicyInput", "TrafficPolicyName"),
         type = "string",
         name = "TrafficPolicyName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PolicyStatements = schema.new({
         id = id.from(_N, "CreateTrafficPolicyInput", "PolicyStatements"),
         type = "list",
         name = "PolicyStatements",
         target_id = prelude.Document.id,
         list_member = M.PolicyStatement,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DefaultAction = schema.new({
         id = id.from(_N, "CreateTrafficPolicyInput", "DefaultAction"),
         type = "string",
         name = "DefaultAction",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxMessageSizeBytes = schema.new({
         id = id.from(_N, "CreateTrafficPolicyInput", "MaxMessageSizeBytes"),
         type = "integer",
         name = "MaxMessageSizeBytes",
         target_id = prelude.Integer.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateTrafficPolicyInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateTrafficPolicyOutput = schema.new({
   id = id.from(_N, "CreateTrafficPolicyResponse"),
   type = "structure",
   members = {
      TrafficPolicyId = schema.new({
         id = id.from(_N, "CreateTrafficPolicyOutput", "TrafficPolicyId"),
         type = "string",
         name = "TrafficPolicyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteIngressPointInput = schema.new({
   id = id.from(_N, "DeleteIngressPointRequest"),
   type = "structure",
   members = {
      IngressPointId = schema.new({
         id = id.from(_N, "DeleteIngressPointInput", "IngressPointId"),
         type = "string",
         name = "IngressPointId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteIngressPointOutput = schema.new({
   id = id.from(_N, "DeleteIngressPointResponse"),
   type = "structure",
})

M.DeleteRelayInput = schema.new({
   id = id.from(_N, "DeleteRelayRequest"),
   type = "structure",
   members = {
      RelayId = schema.new({
         id = id.from(_N, "DeleteRelayInput", "RelayId"),
         type = "string",
         name = "RelayId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteRelayOutput = schema.new({
   id = id.from(_N, "DeleteRelayResponse"),
   type = "structure",
})

M.DeleteRuleSetInput = schema.new({
   id = id.from(_N, "DeleteRuleSetRequest"),
   type = "structure",
   members = {
      RuleSetId = schema.new({
         id = id.from(_N, "DeleteRuleSetInput", "RuleSetId"),
         type = "string",
         name = "RuleSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteRuleSetOutput = schema.new({
   id = id.from(_N, "DeleteRuleSetResponse"),
   type = "structure",
})

M.DeleteTrafficPolicyInput = schema.new({
   id = id.from(_N, "DeleteTrafficPolicyRequest"),
   type = "structure",
   members = {
      TrafficPolicyId = schema.new({
         id = id.from(_N, "DeleteTrafficPolicyInput", "TrafficPolicyId"),
         type = "string",
         name = "TrafficPolicyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteTrafficPolicyOutput = schema.new({
   id = id.from(_N, "DeleteTrafficPolicyResponse"),
   type = "structure",
})

M.DeregisterMemberFromAddressListInput = schema.new({
   id = id.from(_N, "DeregisterMemberFromAddressListRequest"),
   type = "structure",
   members = {
      AddressListId = schema.new({
         id = id.from(_N, "DeregisterMemberFromAddressListInput", "AddressListId"),
         type = "string",
         name = "AddressListId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Address = schema.new({
         id = id.from(_N, "DeregisterMemberFromAddressListInput", "Address"),
         type = "string",
         name = "Address",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeregisterMemberFromAddressListOutput = schema.new({
   id = id.from(_N, "DeregisterMemberFromAddressListResponse"),
   type = "structure",
})

M.Envelope = schema.new({
   id = id.from(_N, "Envelope"),
   type = "structure",
   members = {
      Helo = schema.new({
         id = id.from(_N, "Envelope", "Helo"),
         type = "string",
         name = "Helo",
         target_id = prelude.String.id,
      }),
      From = schema.new({
         id = id.from(_N, "Envelope", "From"),
         type = "string",
         name = "From",
         target_id = prelude.String.id,
      }),
      To = schema.new({
         id = id.from(_N, "Envelope", "To"),
         type = "list",
         name = "To",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.S3ExportDestinationConfiguration = schema.new({
   id = id.from(_N, "S3ExportDestinationConfiguration"),
   type = "structure",
   members = {
      S3Location = schema.new({
         id = id.from(_N, "S3ExportDestinationConfiguration", "S3Location"),
         type = "string",
         name = "S3Location",
         target_id = prelude.String.id,
      }),
   },
})

M.ExportDestinationConfiguration = schema.new({
   id = id.from(_N, "ExportDestinationConfiguration"),
   type = "union",
   members = {
      S3 = schema.new({
         id = id.from(_N, "ExportDestinationConfiguration", "S3"),
         type = "structure",
         name = "S3",
         target_id = id.from(_N, "S3ExportDestinationConfiguration"),
         target = M.S3ExportDestinationConfiguration,
      }),
   },
})

M.ExportStatus = schema.new({
   id = id.from(_N, "ExportStatus"),
   type = "structure",
   members = {
      SubmissionTimestamp = schema.new({
         id = id.from(_N, "ExportStatus", "SubmissionTimestamp"),
         type = "timestamp",
         name = "SubmissionTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      CompletionTimestamp = schema.new({
         id = id.from(_N, "ExportStatus", "CompletionTimestamp"),
         type = "timestamp",
         name = "CompletionTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      State = schema.new({
         id = id.from(_N, "ExportStatus", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      ErrorMessage = schema.new({
         id = id.from(_N, "ExportStatus", "ErrorMessage"),
         type = "string",
         name = "ErrorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.ExportSummary = schema.new({
   id = id.from(_N, "ExportSummary"),
   type = "structure",
   members = {
      ExportId = schema.new({
         id = id.from(_N, "ExportSummary", "ExportId"),
         type = "string",
         name = "ExportId",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "ExportSummary", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "ExportStatus"),
         target = M.ExportStatus,
      }),
   },
})

M.GetAddressListImportJobInput = schema.new({
   id = id.from(_N, "GetAddressListImportJobRequest"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "GetAddressListImportJobInput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetAddressListImportJobOutput = schema.new({
   id = id.from(_N, "GetAddressListImportJobResponse"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "GetAddressListImportJobOutput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "GetAddressListImportJobOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "GetAddressListImportJobOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PreSignedUrl = schema.new({
         id = id.from(_N, "GetAddressListImportJobOutput", "PreSignedUrl"),
         type = "string",
         name = "PreSignedUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ImportedItemsCount = schema.new({
         id = id.from(_N, "GetAddressListImportJobOutput", "ImportedItemsCount"),
         type = "integer",
         name = "ImportedItemsCount",
         target_id = prelude.Integer.id,
      }),
      FailedItemsCount = schema.new({
         id = id.from(_N, "GetAddressListImportJobOutput", "FailedItemsCount"),
         type = "integer",
         name = "FailedItemsCount",
         target_id = prelude.Integer.id,
      }),
      ImportDataFormat = schema.new({
         id = id.from(_N, "GetAddressListImportJobOutput", "ImportDataFormat"),
         type = "structure",
         name = "ImportDataFormat",
         target_id = id.from(_N, "ImportDataFormat"),
         target = M.ImportDataFormat,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AddressListId = schema.new({
         id = id.from(_N, "GetAddressListImportJobOutput", "AddressListId"),
         type = "string",
         name = "AddressListId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "GetAddressListImportJobOutput", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StartTimestamp = schema.new({
         id = id.from(_N, "GetAddressListImportJobOutput", "StartTimestamp"),
         type = "timestamp",
         name = "StartTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      CompletedTimestamp = schema.new({
         id = id.from(_N, "GetAddressListImportJobOutput", "CompletedTimestamp"),
         type = "timestamp",
         name = "CompletedTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      Error = schema.new({
         id = id.from(_N, "GetAddressListImportJobOutput", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
      }),
   },
})

M.GetArchiveExportInput = schema.new({
   id = id.from(_N, "GetArchiveExportRequest"),
   type = "structure",
   members = {
      ExportId = schema.new({
         id = id.from(_N, "GetArchiveExportInput", "ExportId"),
         type = "string",
         name = "ExportId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetArchiveExportOutput = schema.new({
   id = id.from(_N, "GetArchiveExportResponse"),
   type = "structure",
   members = {
      ArchiveId = schema.new({
         id = id.from(_N, "GetArchiveExportOutput", "ArchiveId"),
         type = "string",
         name = "ArchiveId",
         target_id = prelude.String.id,
      }),
      Filters = schema.new({
         id = id.from(_N, "GetArchiveExportOutput", "Filters"),
         type = "structure",
         name = "Filters",
         target_id = id.from(_N, "ArchiveFilters"),
         target = M.ArchiveFilters,
      }),
      FromTimestamp = schema.new({
         id = id.from(_N, "GetArchiveExportOutput", "FromTimestamp"),
         type = "timestamp",
         name = "FromTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      ToTimestamp = schema.new({
         id = id.from(_N, "GetArchiveExportOutput", "ToTimestamp"),
         type = "timestamp",
         name = "ToTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "GetArchiveExportOutput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      ExportDestinationConfiguration = schema.new({
         id = id.from(_N, "GetArchiveExportOutput", "ExportDestinationConfiguration"),
         type = "union",
         name = "ExportDestinationConfiguration",
         target_id = id.from(_N, "ExportDestinationConfiguration"),
         target = M.ExportDestinationConfiguration,
      }),
      Status = schema.new({
         id = id.from(_N, "GetArchiveExportOutput", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "ExportStatus"),
         target = M.ExportStatus,
      }),
   },
})

M.GetArchiveMessageInput = schema.new({
   id = id.from(_N, "GetArchiveMessageRequest"),
   type = "structure",
   members = {
      ArchivedMessageId = schema.new({
         id = id.from(_N, "GetArchiveMessageInput", "ArchivedMessageId"),
         type = "string",
         name = "ArchivedMessageId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Metadata = schema.new({
   id = id.from(_N, "Metadata"),
   type = "structure",
   members = {
      Timestamp = schema.new({
         id = id.from(_N, "Metadata", "Timestamp"),
         type = "timestamp",
         name = "Timestamp",
         target_id = prelude.Timestamp.id,
      }),
      IngressPointId = schema.new({
         id = id.from(_N, "Metadata", "IngressPointId"),
         type = "string",
         name = "IngressPointId",
         target_id = prelude.String.id,
      }),
      TrafficPolicyId = schema.new({
         id = id.from(_N, "Metadata", "TrafficPolicyId"),
         type = "string",
         name = "TrafficPolicyId",
         target_id = prelude.String.id,
      }),
      RuleSetId = schema.new({
         id = id.from(_N, "Metadata", "RuleSetId"),
         type = "string",
         name = "RuleSetId",
         target_id = prelude.String.id,
      }),
      SenderHostname = schema.new({
         id = id.from(_N, "Metadata", "SenderHostname"),
         type = "string",
         name = "SenderHostname",
         target_id = prelude.String.id,
      }),
      SenderIpAddress = schema.new({
         id = id.from(_N, "Metadata", "SenderIpAddress"),
         type = "string",
         name = "SenderIpAddress",
         target_id = prelude.String.id,
      }),
      TlsCipherSuite = schema.new({
         id = id.from(_N, "Metadata", "TlsCipherSuite"),
         type = "string",
         name = "TlsCipherSuite",
         target_id = prelude.String.id,
      }),
      TlsProtocol = schema.new({
         id = id.from(_N, "Metadata", "TlsProtocol"),
         type = "string",
         name = "TlsProtocol",
         target_id = prelude.String.id,
      }),
      SendingMethod = schema.new({
         id = id.from(_N, "Metadata", "SendingMethod"),
         type = "string",
         name = "SendingMethod",
         target_id = prelude.String.id,
      }),
      SourceIdentity = schema.new({
         id = id.from(_N, "Metadata", "SourceIdentity"),
         type = "string",
         name = "SourceIdentity",
         target_id = prelude.String.id,
      }),
      SendingPool = schema.new({
         id = id.from(_N, "Metadata", "SendingPool"),
         type = "string",
         name = "SendingPool",
         target_id = prelude.String.id,
      }),
      ConfigurationSet = schema.new({
         id = id.from(_N, "Metadata", "ConfigurationSet"),
         type = "string",
         name = "ConfigurationSet",
         target_id = prelude.String.id,
      }),
      SourceArn = schema.new({
         id = id.from(_N, "Metadata", "SourceArn"),
         type = "string",
         name = "SourceArn",
         target_id = prelude.String.id,
      }),
   },
})

M.GetArchiveMessageOutput = schema.new({
   id = id.from(_N, "GetArchiveMessageResponse"),
   type = "structure",
   members = {
      MessageDownloadLink = schema.new({
         id = id.from(_N, "GetArchiveMessageOutput", "MessageDownloadLink"),
         type = "string",
         name = "MessageDownloadLink",
         target_id = prelude.String.id,
      }),
      Metadata = schema.new({
         id = id.from(_N, "GetArchiveMessageOutput", "Metadata"),
         type = "structure",
         name = "Metadata",
         target_id = id.from(_N, "Metadata"),
         target = M.Metadata,
      }),
      Envelope = schema.new({
         id = id.from(_N, "GetArchiveMessageOutput", "Envelope"),
         type = "structure",
         name = "Envelope",
         target_id = id.from(_N, "Envelope"),
         target = M.Envelope,
      }),
   },
})

M.GetArchiveMessageContentInput = schema.new({
   id = id.from(_N, "GetArchiveMessageContentRequest"),
   type = "structure",
   members = {
      ArchivedMessageId = schema.new({
         id = id.from(_N, "GetArchiveMessageContentInput", "ArchivedMessageId"),
         type = "string",
         name = "ArchivedMessageId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.MessageBody = schema.new({
   id = id.from(_N, "MessageBody"),
   type = "structure",
   members = {
      Text = schema.new({
         id = id.from(_N, "MessageBody", "Text"),
         type = "string",
         name = "Text",
         target_id = prelude.String.id,
      }),
      Html = schema.new({
         id = id.from(_N, "MessageBody", "Html"),
         type = "string",
         name = "Html",
         target_id = prelude.String.id,
      }),
      MessageMalformed = schema.new({
         id = id.from(_N, "MessageBody", "MessageMalformed"),
         type = "boolean",
         name = "MessageMalformed",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.GetArchiveMessageContentOutput = schema.new({
   id = id.from(_N, "GetArchiveMessageContentResponse"),
   type = "structure",
   members = {
      Body = schema.new({
         id = id.from(_N, "GetArchiveMessageContentOutput", "Body"),
         type = "structure",
         name = "Body",
         target_id = id.from(_N, "MessageBody"),
         target = M.MessageBody,
      }),
   },
})

M.GetArchiveSearchInput = schema.new({
   id = id.from(_N, "GetArchiveSearchRequest"),
   type = "structure",
   members = {
      SearchId = schema.new({
         id = id.from(_N, "GetArchiveSearchInput", "SearchId"),
         type = "string",
         name = "SearchId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SearchStatus = schema.new({
   id = id.from(_N, "SearchStatus"),
   type = "structure",
   members = {
      SubmissionTimestamp = schema.new({
         id = id.from(_N, "SearchStatus", "SubmissionTimestamp"),
         type = "timestamp",
         name = "SubmissionTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      CompletionTimestamp = schema.new({
         id = id.from(_N, "SearchStatus", "CompletionTimestamp"),
         type = "timestamp",
         name = "CompletionTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      State = schema.new({
         id = id.from(_N, "SearchStatus", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      ErrorMessage = schema.new({
         id = id.from(_N, "SearchStatus", "ErrorMessage"),
         type = "string",
         name = "ErrorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.GetArchiveSearchOutput = schema.new({
   id = id.from(_N, "GetArchiveSearchResponse"),
   type = "structure",
   members = {
      ArchiveId = schema.new({
         id = id.from(_N, "GetArchiveSearchOutput", "ArchiveId"),
         type = "string",
         name = "ArchiveId",
         target_id = prelude.String.id,
      }),
      Filters = schema.new({
         id = id.from(_N, "GetArchiveSearchOutput", "Filters"),
         type = "structure",
         name = "Filters",
         target_id = id.from(_N, "ArchiveFilters"),
         target = M.ArchiveFilters,
      }),
      FromTimestamp = schema.new({
         id = id.from(_N, "GetArchiveSearchOutput", "FromTimestamp"),
         type = "timestamp",
         name = "FromTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      ToTimestamp = schema.new({
         id = id.from(_N, "GetArchiveSearchOutput", "ToTimestamp"),
         type = "timestamp",
         name = "ToTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "GetArchiveSearchOutput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      Status = schema.new({
         id = id.from(_N, "GetArchiveSearchOutput", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "SearchStatus"),
         target = M.SearchStatus,
      }),
   },
})

M.GetArchiveSearchResultsInput = schema.new({
   id = id.from(_N, "GetArchiveSearchResultsRequest"),
   type = "structure",
   members = {
      SearchId = schema.new({
         id = id.from(_N, "GetArchiveSearchResultsInput", "SearchId"),
         type = "string",
         name = "SearchId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Row = schema.new({
   id = id.from(_N, "Row"),
   type = "structure",
   members = {
      ArchivedMessageId = schema.new({
         id = id.from(_N, "Row", "ArchivedMessageId"),
         type = "string",
         name = "ArchivedMessageId",
         target_id = prelude.String.id,
      }),
      ReceivedTimestamp = schema.new({
         id = id.from(_N, "Row", "ReceivedTimestamp"),
         type = "timestamp",
         name = "ReceivedTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      Date = schema.new({
         id = id.from(_N, "Row", "Date"),
         type = "string",
         name = "Date",
         target_id = prelude.String.id,
      }),
      To = schema.new({
         id = id.from(_N, "Row", "To"),
         type = "string",
         name = "To",
         target_id = prelude.String.id,
      }),
      From = schema.new({
         id = id.from(_N, "Row", "From"),
         type = "string",
         name = "From",
         target_id = prelude.String.id,
      }),
      Cc = schema.new({
         id = id.from(_N, "Row", "Cc"),
         type = "string",
         name = "Cc",
         target_id = prelude.String.id,
      }),
      Subject = schema.new({
         id = id.from(_N, "Row", "Subject"),
         type = "string",
         name = "Subject",
         target_id = prelude.String.id,
      }),
      MessageId = schema.new({
         id = id.from(_N, "Row", "MessageId"),
         type = "string",
         name = "MessageId",
         target_id = prelude.String.id,
      }),
      HasAttachments = schema.new({
         id = id.from(_N, "Row", "HasAttachments"),
         type = "boolean",
         name = "HasAttachments",
         target_id = prelude.Boolean.id,
      }),
      ReceivedHeaders = schema.new({
         id = id.from(_N, "Row", "ReceivedHeaders"),
         type = "list",
         name = "ReceivedHeaders",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      InReplyTo = schema.new({
         id = id.from(_N, "Row", "InReplyTo"),
         type = "string",
         name = "InReplyTo",
         target_id = prelude.String.id,
      }),
      XMailer = schema.new({
         id = id.from(_N, "Row", "XMailer"),
         type = "string",
         name = "XMailer",
         target_id = prelude.String.id,
      }),
      XOriginalMailer = schema.new({
         id = id.from(_N, "Row", "XOriginalMailer"),
         type = "string",
         name = "XOriginalMailer",
         target_id = prelude.String.id,
      }),
      XPriority = schema.new({
         id = id.from(_N, "Row", "XPriority"),
         type = "string",
         name = "XPriority",
         target_id = prelude.String.id,
      }),
      IngressPointId = schema.new({
         id = id.from(_N, "Row", "IngressPointId"),
         type = "string",
         name = "IngressPointId",
         target_id = prelude.String.id,
      }),
      SenderHostname = schema.new({
         id = id.from(_N, "Row", "SenderHostname"),
         type = "string",
         name = "SenderHostname",
         target_id = prelude.String.id,
      }),
      SenderIpAddress = schema.new({
         id = id.from(_N, "Row", "SenderIpAddress"),
         type = "string",
         name = "SenderIpAddress",
         target_id = prelude.String.id,
      }),
      Envelope = schema.new({
         id = id.from(_N, "Row", "Envelope"),
         type = "structure",
         name = "Envelope",
         target_id = id.from(_N, "Envelope"),
         target = M.Envelope,
      }),
      SourceArn = schema.new({
         id = id.from(_N, "Row", "SourceArn"),
         type = "string",
         name = "SourceArn",
         target_id = prelude.String.id,
      }),
   },
})

M.GetArchiveSearchResultsOutput = schema.new({
   id = id.from(_N, "GetArchiveSearchResultsResponse"),
   type = "structure",
   members = {
      Rows = schema.new({
         id = id.from(_N, "GetArchiveSearchResultsOutput", "Rows"),
         type = "list",
         name = "Rows",
         target_id = prelude.Document.id,
         list_member = M.Row,
      }),
   },
})

M.GetIngressPointInput = schema.new({
   id = id.from(_N, "GetIngressPointRequest"),
   type = "structure",
   members = {
      IngressPointId = schema.new({
         id = id.from(_N, "GetIngressPointInput", "IngressPointId"),
         type = "string",
         name = "IngressPointId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IncludeTrustStoreContents = schema.new({
         id = id.from(_N, "GetIngressPointInput", "IncludeTrustStoreContents"),
         type = "string",
         name = "IncludeTrustStoreContents",
         target_id = prelude.String.id,
      }),
   },
})

M.IngressPointPasswordConfiguration = schema.new({
   id = id.from(_N, "IngressPointPasswordConfiguration"),
   type = "structure",
   members = {
      SmtpPasswordVersion = schema.new({
         id = id.from(_N, "IngressPointPasswordConfiguration", "SmtpPasswordVersion"),
         type = "string",
         name = "SmtpPasswordVersion",
         target_id = prelude.String.id,
      }),
      PreviousSmtpPasswordVersion = schema.new({
         id = id.from(_N, "IngressPointPasswordConfiguration", "PreviousSmtpPasswordVersion"),
         type = "string",
         name = "PreviousSmtpPasswordVersion",
         target_id = prelude.String.id,
      }),
      PreviousSmtpPasswordExpiryTimestamp = schema.new({
         id = id.from(_N, "IngressPointPasswordConfiguration", "PreviousSmtpPasswordExpiryTimestamp"),
         type = "timestamp",
         name = "PreviousSmtpPasswordExpiryTimestamp",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.IngressPointAuthConfiguration = schema.new({
   id = id.from(_N, "IngressPointAuthConfiguration"),
   type = "structure",
   members = {
      IngressPointPasswordConfiguration = schema.new({
         id = id.from(_N, "IngressPointAuthConfiguration", "IngressPointPasswordConfiguration"),
         type = "structure",
         name = "IngressPointPasswordConfiguration",
         target_id = id.from(_N, "IngressPointPasswordConfiguration"),
         target = M.IngressPointPasswordConfiguration,
      }),
      SecretArn = schema.new({
         id = id.from(_N, "IngressPointAuthConfiguration", "SecretArn"),
         type = "string",
         name = "SecretArn",
         target_id = prelude.String.id,
      }),
      TlsAuthConfiguration = schema.new({
         id = id.from(_N, "IngressPointAuthConfiguration", "TlsAuthConfiguration"),
         type = "structure",
         name = "TlsAuthConfiguration",
         target_id = id.from(_N, "TlsAuthConfiguration"),
         target = M.TlsAuthConfiguration,
      }),
   },
})

M.GetIngressPointOutput = schema.new({
   id = id.from(_N, "GetIngressPointResponse"),
   type = "structure",
   members = {
      IngressPointId = schema.new({
         id = id.from(_N, "GetIngressPointOutput", "IngressPointId"),
         type = "string",
         name = "IngressPointId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IngressPointName = schema.new({
         id = id.from(_N, "GetIngressPointOutput", "IngressPointName"),
         type = "string",
         name = "IngressPointName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IngressPointArn = schema.new({
         id = id.from(_N, "GetIngressPointOutput", "IngressPointArn"),
         type = "string",
         name = "IngressPointArn",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "GetIngressPointOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "GetIngressPointOutput", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      ARecord = schema.new({
         id = id.from(_N, "GetIngressPointOutput", "ARecord"),
         type = "string",
         name = "ARecord",
         target_id = prelude.String.id,
      }),
      RuleSetId = schema.new({
         id = id.from(_N, "GetIngressPointOutput", "RuleSetId"),
         type = "string",
         name = "RuleSetId",
         target_id = prelude.String.id,
      }),
      TrafficPolicyId = schema.new({
         id = id.from(_N, "GetIngressPointOutput", "TrafficPolicyId"),
         type = "string",
         name = "TrafficPolicyId",
         target_id = prelude.String.id,
      }),
      IngressPointAuthConfiguration = schema.new({
         id = id.from(_N, "GetIngressPointOutput", "IngressPointAuthConfiguration"),
         type = "structure",
         name = "IngressPointAuthConfiguration",
         target_id = id.from(_N, "IngressPointAuthConfiguration"),
         target = M.IngressPointAuthConfiguration,
      }),
      NetworkConfiguration = schema.new({
         id = id.from(_N, "GetIngressPointOutput", "NetworkConfiguration"),
         type = "union",
         name = "NetworkConfiguration",
         target_id = id.from(_N, "NetworkConfiguration"),
         target = M.NetworkConfiguration,
      }),
      TlsPolicy = schema.new({
         id = id.from(_N, "GetIngressPointOutput", "TlsPolicy"),
         type = "string",
         name = "TlsPolicy",
         target_id = prelude.String.id,
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "GetIngressPointOutput", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      LastUpdatedTimestamp = schema.new({
         id = id.from(_N, "GetIngressPointOutput", "LastUpdatedTimestamp"),
         type = "timestamp",
         name = "LastUpdatedTimestamp",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.GetMemberOfAddressListInput = schema.new({
   id = id.from(_N, "GetMemberOfAddressListRequest"),
   type = "structure",
   members = {
      AddressListId = schema.new({
         id = id.from(_N, "GetMemberOfAddressListInput", "AddressListId"),
         type = "string",
         name = "AddressListId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Address = schema.new({
         id = id.from(_N, "GetMemberOfAddressListInput", "Address"),
         type = "string",
         name = "Address",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetMemberOfAddressListOutput = schema.new({
   id = id.from(_N, "GetMemberOfAddressListResponse"),
   type = "structure",
   members = {
      Address = schema.new({
         id = id.from(_N, "GetMemberOfAddressListOutput", "Address"),
         type = "string",
         name = "Address",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "GetMemberOfAddressListOutput", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetRelayInput = schema.new({
   id = id.from(_N, "GetRelayRequest"),
   type = "structure",
   members = {
      RelayId = schema.new({
         id = id.from(_N, "GetRelayInput", "RelayId"),
         type = "string",
         name = "RelayId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetRelayOutput = schema.new({
   id = id.from(_N, "GetRelayResponse"),
   type = "structure",
   members = {
      RelayId = schema.new({
         id = id.from(_N, "GetRelayOutput", "RelayId"),
         type = "string",
         name = "RelayId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RelayArn = schema.new({
         id = id.from(_N, "GetRelayOutput", "RelayArn"),
         type = "string",
         name = "RelayArn",
         target_id = prelude.String.id,
      }),
      RelayName = schema.new({
         id = id.from(_N, "GetRelayOutput", "RelayName"),
         type = "string",
         name = "RelayName",
         target_id = prelude.String.id,
      }),
      ServerName = schema.new({
         id = id.from(_N, "GetRelayOutput", "ServerName"),
         type = "string",
         name = "ServerName",
         target_id = prelude.String.id,
      }),
      ServerPort = schema.new({
         id = id.from(_N, "GetRelayOutput", "ServerPort"),
         type = "integer",
         name = "ServerPort",
         target_id = prelude.Integer.id,
      }),
      Authentication = schema.new({
         id = id.from(_N, "GetRelayOutput", "Authentication"),
         type = "union",
         name = "Authentication",
         target_id = id.from(_N, "RelayAuthentication"),
         target = M.RelayAuthentication,
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "GetRelayOutput", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      LastModifiedTimestamp = schema.new({
         id = id.from(_N, "GetRelayOutput", "LastModifiedTimestamp"),
         type = "timestamp",
         name = "LastModifiedTimestamp",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.GetRuleSetInput = schema.new({
   id = id.from(_N, "GetRuleSetRequest"),
   type = "structure",
   members = {
      RuleSetId = schema.new({
         id = id.from(_N, "GetRuleSetInput", "RuleSetId"),
         type = "string",
         name = "RuleSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetRuleSetOutput = schema.new({
   id = id.from(_N, "GetRuleSetResponse"),
   type = "structure",
   members = {
      RuleSetId = schema.new({
         id = id.from(_N, "GetRuleSetOutput", "RuleSetId"),
         type = "string",
         name = "RuleSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RuleSetArn = schema.new({
         id = id.from(_N, "GetRuleSetOutput", "RuleSetArn"),
         type = "string",
         name = "RuleSetArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RuleSetName = schema.new({
         id = id.from(_N, "GetRuleSetOutput", "RuleSetName"),
         type = "string",
         name = "RuleSetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatedDate = schema.new({
         id = id.from(_N, "GetRuleSetOutput", "CreatedDate"),
         type = "timestamp",
         name = "CreatedDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LastModificationDate = schema.new({
         id = id.from(_N, "GetRuleSetOutput", "LastModificationDate"),
         type = "timestamp",
         name = "LastModificationDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Rules = schema.new({
         id = id.from(_N, "GetRuleSetOutput", "Rules"),
         type = "list",
         name = "Rules",
         target_id = prelude.Document.id,
         list_member = M.Rule,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetTrafficPolicyInput = schema.new({
   id = id.from(_N, "GetTrafficPolicyRequest"),
   type = "structure",
   members = {
      TrafficPolicyId = schema.new({
         id = id.from(_N, "GetTrafficPolicyInput", "TrafficPolicyId"),
         type = "string",
         name = "TrafficPolicyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetTrafficPolicyOutput = schema.new({
   id = id.from(_N, "GetTrafficPolicyResponse"),
   type = "structure",
   members = {
      TrafficPolicyName = schema.new({
         id = id.from(_N, "GetTrafficPolicyOutput", "TrafficPolicyName"),
         type = "string",
         name = "TrafficPolicyName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TrafficPolicyId = schema.new({
         id = id.from(_N, "GetTrafficPolicyOutput", "TrafficPolicyId"),
         type = "string",
         name = "TrafficPolicyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TrafficPolicyArn = schema.new({
         id = id.from(_N, "GetTrafficPolicyOutput", "TrafficPolicyArn"),
         type = "string",
         name = "TrafficPolicyArn",
         target_id = prelude.String.id,
      }),
      PolicyStatements = schema.new({
         id = id.from(_N, "GetTrafficPolicyOutput", "PolicyStatements"),
         type = "list",
         name = "PolicyStatements",
         target_id = prelude.Document.id,
         list_member = M.PolicyStatement,
      }),
      MaxMessageSizeBytes = schema.new({
         id = id.from(_N, "GetTrafficPolicyOutput", "MaxMessageSizeBytes"),
         type = "integer",
         name = "MaxMessageSizeBytes",
         target_id = prelude.Integer.id,
      }),
      DefaultAction = schema.new({
         id = id.from(_N, "GetTrafficPolicyOutput", "DefaultAction"),
         type = "string",
         name = "DefaultAction",
         target_id = prelude.String.id,
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "GetTrafficPolicyOutput", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      LastUpdatedTimestamp = schema.new({
         id = id.from(_N, "GetTrafficPolicyOutput", "LastUpdatedTimestamp"),
         type = "timestamp",
         name = "LastUpdatedTimestamp",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ImportJob = schema.new({
   id = id.from(_N, "ImportJob"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "ImportJob", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "ImportJob", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "ImportJob", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PreSignedUrl = schema.new({
         id = id.from(_N, "ImportJob", "PreSignedUrl"),
         type = "string",
         name = "PreSignedUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ImportedItemsCount = schema.new({
         id = id.from(_N, "ImportJob", "ImportedItemsCount"),
         type = "integer",
         name = "ImportedItemsCount",
         target_id = prelude.Integer.id,
      }),
      FailedItemsCount = schema.new({
         id = id.from(_N, "ImportJob", "FailedItemsCount"),
         type = "integer",
         name = "FailedItemsCount",
         target_id = prelude.Integer.id,
      }),
      ImportDataFormat = schema.new({
         id = id.from(_N, "ImportJob", "ImportDataFormat"),
         type = "structure",
         name = "ImportDataFormat",
         target_id = id.from(_N, "ImportDataFormat"),
         target = M.ImportDataFormat,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AddressListId = schema.new({
         id = id.from(_N, "ImportJob", "AddressListId"),
         type = "string",
         name = "AddressListId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "ImportJob", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StartTimestamp = schema.new({
         id = id.from(_N, "ImportJob", "StartTimestamp"),
         type = "timestamp",
         name = "StartTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      CompletedTimestamp = schema.new({
         id = id.from(_N, "ImportJob", "CompletedTimestamp"),
         type = "timestamp",
         name = "CompletedTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      Error = schema.new({
         id = id.from(_N, "ImportJob", "Error"),
         type = "string",
         name = "Error",
         target_id = prelude.String.id,
      }),
   },
})

M.IngressPoint = schema.new({
   id = id.from(_N, "IngressPoint"),
   type = "structure",
   members = {
      IngressPointName = schema.new({
         id = id.from(_N, "IngressPoint", "IngressPointName"),
         type = "string",
         name = "IngressPointName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IngressPointId = schema.new({
         id = id.from(_N, "IngressPoint", "IngressPointId"),
         type = "string",
         name = "IngressPointId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "IngressPoint", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Type = schema.new({
         id = id.from(_N, "IngressPoint", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ARecord = schema.new({
         id = id.from(_N, "IngressPoint", "ARecord"),
         type = "string",
         name = "ARecord",
         target_id = prelude.String.id,
      }),
   },
})

M.ListIngressPointsInput = schema.new({
   id = id.from(_N, "ListIngressPointsRequest"),
   type = "structure",
   members = {
      PageSize = schema.new({
         id = id.from(_N, "ListIngressPointsInput", "PageSize"),
         type = "integer",
         name = "PageSize",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListIngressPointsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListIngressPointsOutput = schema.new({
   id = id.from(_N, "ListIngressPointsResponse"),
   type = "structure",
   members = {
      IngressPoints = schema.new({
         id = id.from(_N, "ListIngressPointsOutput", "IngressPoints"),
         type = "list",
         name = "IngressPoints",
         target_id = prelude.Document.id,
         list_member = M.IngressPoint,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListIngressPointsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateIngressPointInput = schema.new({
   id = id.from(_N, "UpdateIngressPointRequest"),
   type = "structure",
   members = {
      IngressPointId = schema.new({
         id = id.from(_N, "UpdateIngressPointInput", "IngressPointId"),
         type = "string",
         name = "IngressPointId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IngressPointName = schema.new({
         id = id.from(_N, "UpdateIngressPointInput", "IngressPointName"),
         type = "string",
         name = "IngressPointName",
         target_id = prelude.String.id,
      }),
      StatusToUpdate = schema.new({
         id = id.from(_N, "UpdateIngressPointInput", "StatusToUpdate"),
         type = "string",
         name = "StatusToUpdate",
         target_id = prelude.String.id,
      }),
      RuleSetId = schema.new({
         id = id.from(_N, "UpdateIngressPointInput", "RuleSetId"),
         type = "string",
         name = "RuleSetId",
         target_id = prelude.String.id,
      }),
      TrafficPolicyId = schema.new({
         id = id.from(_N, "UpdateIngressPointInput", "TrafficPolicyId"),
         type = "string",
         name = "TrafficPolicyId",
         target_id = prelude.String.id,
      }),
      IngressPointConfiguration = schema.new({
         id = id.from(_N, "UpdateIngressPointInput", "IngressPointConfiguration"),
         type = "union",
         name = "IngressPointConfiguration",
         target_id = id.from(_N, "IngressPointConfiguration"),
         target = M.IngressPointConfiguration,
      }),
      TlsPolicy = schema.new({
         id = id.from(_N, "UpdateIngressPointInput", "TlsPolicy"),
         type = "string",
         name = "TlsPolicy",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateIngressPointOutput = schema.new({
   id = id.from(_N, "UpdateIngressPointResponse"),
   type = "structure",
})

M.ListAddressListImportJobsInput = schema.new({
   id = id.from(_N, "ListAddressListImportJobsRequest"),
   type = "structure",
   members = {
      AddressListId = schema.new({
         id = id.from(_N, "ListAddressListImportJobsInput", "AddressListId"),
         type = "string",
         name = "AddressListId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListAddressListImportJobsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      PageSize = schema.new({
         id = id.from(_N, "ListAddressListImportJobsInput", "PageSize"),
         type = "integer",
         name = "PageSize",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListAddressListImportJobsOutput = schema.new({
   id = id.from(_N, "ListAddressListImportJobsResponse"),
   type = "structure",
   members = {
      ImportJobs = schema.new({
         id = id.from(_N, "ListAddressListImportJobsOutput", "ImportJobs"),
         type = "list",
         name = "ImportJobs",
         target_id = prelude.Document.id,
         list_member = M.ImportJob,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListAddressListImportJobsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListArchiveExportsInput = schema.new({
   id = id.from(_N, "ListArchiveExportsRequest"),
   type = "structure",
   members = {
      ArchiveId = schema.new({
         id = id.from(_N, "ListArchiveExportsInput", "ArchiveId"),
         type = "string",
         name = "ArchiveId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListArchiveExportsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      PageSize = schema.new({
         id = id.from(_N, "ListArchiveExportsInput", "PageSize"),
         type = "integer",
         name = "PageSize",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListArchiveExportsOutput = schema.new({
   id = id.from(_N, "ListArchiveExportsResponse"),
   type = "structure",
   members = {
      Exports = schema.new({
         id = id.from(_N, "ListArchiveExportsOutput", "Exports"),
         type = "list",
         name = "Exports",
         target_id = prelude.Document.id,
         list_member = M.ExportSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListArchiveExportsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListArchiveSearchesInput = schema.new({
   id = id.from(_N, "ListArchiveSearchesRequest"),
   type = "structure",
   members = {
      ArchiveId = schema.new({
         id = id.from(_N, "ListArchiveSearchesInput", "ArchiveId"),
         type = "string",
         name = "ArchiveId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListArchiveSearchesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      PageSize = schema.new({
         id = id.from(_N, "ListArchiveSearchesInput", "PageSize"),
         type = "integer",
         name = "PageSize",
         target_id = prelude.Integer.id,
      }),
   },
})

M.SearchSummary = schema.new({
   id = id.from(_N, "SearchSummary"),
   type = "structure",
   members = {
      SearchId = schema.new({
         id = id.from(_N, "SearchSummary", "SearchId"),
         type = "string",
         name = "SearchId",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "SearchSummary", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "SearchStatus"),
         target = M.SearchStatus,
      }),
   },
})

M.ListArchiveSearchesOutput = schema.new({
   id = id.from(_N, "ListArchiveSearchesResponse"),
   type = "structure",
   members = {
      Searches = schema.new({
         id = id.from(_N, "ListArchiveSearchesOutput", "Searches"),
         type = "list",
         name = "Searches",
         target_id = prelude.Document.id,
         list_member = M.SearchSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListArchiveSearchesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListMembersOfAddressListInput = schema.new({
   id = id.from(_N, "ListMembersOfAddressListRequest"),
   type = "structure",
   members = {
      AddressListId = schema.new({
         id = id.from(_N, "ListMembersOfAddressListInput", "AddressListId"),
         type = "string",
         name = "AddressListId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Filter = schema.new({
         id = id.from(_N, "ListMembersOfAddressListInput", "Filter"),
         type = "structure",
         name = "Filter",
         target_id = id.from(_N, "AddressFilter"),
         target = M.AddressFilter,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListMembersOfAddressListInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      PageSize = schema.new({
         id = id.from(_N, "ListMembersOfAddressListInput", "PageSize"),
         type = "integer",
         name = "PageSize",
         target_id = prelude.Integer.id,
      }),
   },
})

M.SavedAddress = schema.new({
   id = id.from(_N, "SavedAddress"),
   type = "structure",
   members = {
      Address = schema.new({
         id = id.from(_N, "SavedAddress", "Address"),
         type = "string",
         name = "Address",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "SavedAddress", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListMembersOfAddressListOutput = schema.new({
   id = id.from(_N, "ListMembersOfAddressListResponse"),
   type = "structure",
   members = {
      Addresses = schema.new({
         id = id.from(_N, "ListMembersOfAddressListOutput", "Addresses"),
         type = "list",
         name = "Addresses",
         target_id = prelude.Document.id,
         list_member = M.SavedAddress,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListMembersOfAddressListOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRelaysInput = schema.new({
   id = id.from(_N, "ListRelaysRequest"),
   type = "structure",
   members = {
      PageSize = schema.new({
         id = id.from(_N, "ListRelaysInput", "PageSize"),
         type = "integer",
         name = "PageSize",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRelaysInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.Relay = schema.new({
   id = id.from(_N, "Relay"),
   type = "structure",
   members = {
      RelayId = schema.new({
         id = id.from(_N, "Relay", "RelayId"),
         type = "string",
         name = "RelayId",
         target_id = prelude.String.id,
      }),
      RelayName = schema.new({
         id = id.from(_N, "Relay", "RelayName"),
         type = "string",
         name = "RelayName",
         target_id = prelude.String.id,
      }),
      LastModifiedTimestamp = schema.new({
         id = id.from(_N, "Relay", "LastModifiedTimestamp"),
         type = "timestamp",
         name = "LastModifiedTimestamp",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListRelaysOutput = schema.new({
   id = id.from(_N, "ListRelaysResponse"),
   type = "structure",
   members = {
      Relays = schema.new({
         id = id.from(_N, "ListRelaysOutput", "Relays"),
         type = "list",
         name = "Relays",
         target_id = prelude.Document.id,
         list_member = M.Relay,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRelaysOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRuleSetsInput = schema.new({
   id = id.from(_N, "ListRuleSetsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListRuleSetsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      PageSize = schema.new({
         id = id.from(_N, "ListRuleSetsInput", "PageSize"),
         type = "integer",
         name = "PageSize",
         target_id = prelude.Integer.id,
      }),
   },
})

M.RuleSet = schema.new({
   id = id.from(_N, "RuleSet"),
   type = "structure",
   members = {
      RuleSetId = schema.new({
         id = id.from(_N, "RuleSet", "RuleSetId"),
         type = "string",
         name = "RuleSetId",
         target_id = prelude.String.id,
      }),
      RuleSetName = schema.new({
         id = id.from(_N, "RuleSet", "RuleSetName"),
         type = "string",
         name = "RuleSetName",
         target_id = prelude.String.id,
      }),
      LastModificationDate = schema.new({
         id = id.from(_N, "RuleSet", "LastModificationDate"),
         type = "timestamp",
         name = "LastModificationDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListRuleSetsOutput = schema.new({
   id = id.from(_N, "ListRuleSetsResponse"),
   type = "structure",
   members = {
      RuleSets = schema.new({
         id = id.from(_N, "ListRuleSetsOutput", "RuleSets"),
         type = "list",
         name = "RuleSets",
         target_id = prelude.Document.id,
         list_member = M.RuleSet,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRuleSetsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTagsForResourceInput = schema.new({
   id = id.from(_N, "ListTagsForResourceRequest"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "ListTagsForResourceInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListTagsForResourceOutput = schema.new({
   id = id.from(_N, "ListTagsForResourceResponse"),
   type = "structure",
   members = {
      Tags = schema.new({
         id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListTrafficPoliciesInput = schema.new({
   id = id.from(_N, "ListTrafficPoliciesRequest"),
   type = "structure",
   members = {
      PageSize = schema.new({
         id = id.from(_N, "ListTrafficPoliciesInput", "PageSize"),
         type = "integer",
         name = "PageSize",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListTrafficPoliciesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.TrafficPolicy = schema.new({
   id = id.from(_N, "TrafficPolicy"),
   type = "structure",
   members = {
      TrafficPolicyName = schema.new({
         id = id.from(_N, "TrafficPolicy", "TrafficPolicyName"),
         type = "string",
         name = "TrafficPolicyName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TrafficPolicyId = schema.new({
         id = id.from(_N, "TrafficPolicy", "TrafficPolicyId"),
         type = "string",
         name = "TrafficPolicyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DefaultAction = schema.new({
         id = id.from(_N, "TrafficPolicy", "DefaultAction"),
         type = "string",
         name = "DefaultAction",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListTrafficPoliciesOutput = schema.new({
   id = id.from(_N, "ListTrafficPoliciesResponse"),
   type = "structure",
   members = {
      TrafficPolicies = schema.new({
         id = id.from(_N, "ListTrafficPoliciesOutput", "TrafficPolicies"),
         type = "list",
         name = "TrafficPolicies",
         target_id = prelude.Document.id,
         list_member = M.TrafficPolicy,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListTrafficPoliciesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.RegisterMemberToAddressListInput = schema.new({
   id = id.from(_N, "RegisterMemberToAddressListRequest"),
   type = "structure",
   members = {
      AddressListId = schema.new({
         id = id.from(_N, "RegisterMemberToAddressListInput", "AddressListId"),
         type = "string",
         name = "AddressListId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Address = schema.new({
         id = id.from(_N, "RegisterMemberToAddressListInput", "Address"),
         type = "string",
         name = "Address",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RegisterMemberToAddressListOutput = schema.new({
   id = id.from(_N, "RegisterMemberToAddressListResponse"),
   type = "structure",
})

M.UpdateRelayInput = schema.new({
   id = id.from(_N, "UpdateRelayRequest"),
   type = "structure",
   members = {
      RelayId = schema.new({
         id = id.from(_N, "UpdateRelayInput", "RelayId"),
         type = "string",
         name = "RelayId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RelayName = schema.new({
         id = id.from(_N, "UpdateRelayInput", "RelayName"),
         type = "string",
         name = "RelayName",
         target_id = prelude.String.id,
      }),
      ServerName = schema.new({
         id = id.from(_N, "UpdateRelayInput", "ServerName"),
         type = "string",
         name = "ServerName",
         target_id = prelude.String.id,
      }),
      ServerPort = schema.new({
         id = id.from(_N, "UpdateRelayInput", "ServerPort"),
         type = "integer",
         name = "ServerPort",
         target_id = prelude.Integer.id,
      }),
      Authentication = schema.new({
         id = id.from(_N, "UpdateRelayInput", "Authentication"),
         type = "union",
         name = "Authentication",
         target_id = id.from(_N, "RelayAuthentication"),
         target = M.RelayAuthentication,
      }),
   },
})

M.UpdateRelayOutput = schema.new({
   id = id.from(_N, "UpdateRelayResponse"),
   type = "structure",
})

M.UpdateRuleSetInput = schema.new({
   id = id.from(_N, "UpdateRuleSetRequest"),
   type = "structure",
   members = {
      RuleSetId = schema.new({
         id = id.from(_N, "UpdateRuleSetInput", "RuleSetId"),
         type = "string",
         name = "RuleSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RuleSetName = schema.new({
         id = id.from(_N, "UpdateRuleSetInput", "RuleSetName"),
         type = "string",
         name = "RuleSetName",
         target_id = prelude.String.id,
      }),
      Rules = schema.new({
         id = id.from(_N, "UpdateRuleSetInput", "Rules"),
         type = "list",
         name = "Rules",
         target_id = prelude.Document.id,
         list_member = M.Rule,
      }),
   },
})

M.UpdateRuleSetOutput = schema.new({
   id = id.from(_N, "UpdateRuleSetResponse"),
   type = "structure",
})

M.StartAddressListImportJobInput = schema.new({
   id = id.from(_N, "StartAddressListImportJobRequest"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "StartAddressListImportJobInput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartAddressListImportJobOutput = schema.new({
   id = id.from(_N, "StartAddressListImportJobResponse"),
   type = "structure",
})

M.StartArchiveExportInput = schema.new({
   id = id.from(_N, "StartArchiveExportRequest"),
   type = "structure",
   members = {
      ArchiveId = schema.new({
         id = id.from(_N, "StartArchiveExportInput", "ArchiveId"),
         type = "string",
         name = "ArchiveId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Filters = schema.new({
         id = id.from(_N, "StartArchiveExportInput", "Filters"),
         type = "structure",
         name = "Filters",
         target_id = id.from(_N, "ArchiveFilters"),
         target = M.ArchiveFilters,
      }),
      FromTimestamp = schema.new({
         id = id.from(_N, "StartArchiveExportInput", "FromTimestamp"),
         type = "timestamp",
         name = "FromTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ToTimestamp = schema.new({
         id = id.from(_N, "StartArchiveExportInput", "ToTimestamp"),
         type = "timestamp",
         name = "ToTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "StartArchiveExportInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      ExportDestinationConfiguration = schema.new({
         id = id.from(_N, "StartArchiveExportInput", "ExportDestinationConfiguration"),
         type = "union",
         name = "ExportDestinationConfiguration",
         target_id = id.from(_N, "ExportDestinationConfiguration"),
         target = M.ExportDestinationConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IncludeMetadata = schema.new({
         id = id.from(_N, "StartArchiveExportInput", "IncludeMetadata"),
         type = "boolean",
         name = "IncludeMetadata",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.StartArchiveExportOutput = schema.new({
   id = id.from(_N, "StartArchiveExportResponse"),
   type = "structure",
   members = {
      ExportId = schema.new({
         id = id.from(_N, "StartArchiveExportOutput", "ExportId"),
         type = "string",
         name = "ExportId",
         target_id = prelude.String.id,
      }),
   },
})

M.StartArchiveSearchInput = schema.new({
   id = id.from(_N, "StartArchiveSearchRequest"),
   type = "structure",
   members = {
      ArchiveId = schema.new({
         id = id.from(_N, "StartArchiveSearchInput", "ArchiveId"),
         type = "string",
         name = "ArchiveId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Filters = schema.new({
         id = id.from(_N, "StartArchiveSearchInput", "Filters"),
         type = "structure",
         name = "Filters",
         target_id = id.from(_N, "ArchiveFilters"),
         target = M.ArchiveFilters,
      }),
      FromTimestamp = schema.new({
         id = id.from(_N, "StartArchiveSearchInput", "FromTimestamp"),
         type = "timestamp",
         name = "FromTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ToTimestamp = schema.new({
         id = id.from(_N, "StartArchiveSearchInput", "ToTimestamp"),
         type = "timestamp",
         name = "ToTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "StartArchiveSearchInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartArchiveSearchOutput = schema.new({
   id = id.from(_N, "StartArchiveSearchResponse"),
   type = "structure",
   members = {
      SearchId = schema.new({
         id = id.from(_N, "StartArchiveSearchOutput", "SearchId"),
         type = "string",
         name = "SearchId",
         target_id = prelude.String.id,
      }),
   },
})

M.StopAddressListImportJobInput = schema.new({
   id = id.from(_N, "StopAddressListImportJobRequest"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "StopAddressListImportJobInput", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopAddressListImportJobOutput = schema.new({
   id = id.from(_N, "StopAddressListImportJobResponse"),
   type = "structure",
})

M.StopArchiveExportInput = schema.new({
   id = id.from(_N, "StopArchiveExportRequest"),
   type = "structure",
   members = {
      ExportId = schema.new({
         id = id.from(_N, "StopArchiveExportInput", "ExportId"),
         type = "string",
         name = "ExportId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopArchiveExportOutput = schema.new({
   id = id.from(_N, "StopArchiveExportResponse"),
   type = "structure",
})

M.StopArchiveSearchInput = schema.new({
   id = id.from(_N, "StopArchiveSearchRequest"),
   type = "structure",
   members = {
      SearchId = schema.new({
         id = id.from(_N, "StopArchiveSearchInput", "SearchId"),
         type = "string",
         name = "SearchId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopArchiveSearchOutput = schema.new({
   id = id.from(_N, "StopArchiveSearchResponse"),
   type = "structure",
})

M.TagResourceInput = schema.new({
   id = id.from(_N, "TagResourceRequest"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "TagResourceInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "TagResourceInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TagResourceOutput = schema.new({
   id = id.from(_N, "TagResourceResponse"),
   type = "structure",
})

M.UpdateTrafficPolicyInput = schema.new({
   id = id.from(_N, "UpdateTrafficPolicyRequest"),
   type = "structure",
   members = {
      TrafficPolicyId = schema.new({
         id = id.from(_N, "UpdateTrafficPolicyInput", "TrafficPolicyId"),
         type = "string",
         name = "TrafficPolicyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TrafficPolicyName = schema.new({
         id = id.from(_N, "UpdateTrafficPolicyInput", "TrafficPolicyName"),
         type = "string",
         name = "TrafficPolicyName",
         target_id = prelude.String.id,
      }),
      PolicyStatements = schema.new({
         id = id.from(_N, "UpdateTrafficPolicyInput", "PolicyStatements"),
         type = "list",
         name = "PolicyStatements",
         target_id = prelude.Document.id,
         list_member = M.PolicyStatement,
      }),
      DefaultAction = schema.new({
         id = id.from(_N, "UpdateTrafficPolicyInput", "DefaultAction"),
         type = "string",
         name = "DefaultAction",
         target_id = prelude.String.id,
      }),
      MaxMessageSizeBytes = schema.new({
         id = id.from(_N, "UpdateTrafficPolicyInput", "MaxMessageSizeBytes"),
         type = "integer",
         name = "MaxMessageSizeBytes",
         target_id = prelude.Integer.id,
      }),
   },
})

M.UpdateTrafficPolicyOutput = schema.new({
   id = id.from(_N, "UpdateTrafficPolicyResponse"),
   type = "structure",
})

M.UntagResourceInput = schema.new({
   id = id.from(_N, "UntagResourceRequest"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "UntagResourceInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TagKeys = schema.new({
         id = id.from(_N, "UntagResourceInput", "TagKeys"),
         type = "list",
         name = "TagKeys",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UntagResourceOutput = schema.new({
   id = id.from(_N, "UntagResourceResponse"),
   type = "structure",
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
   id = id.from("com.amazonaws.mailmanager", "MailManagerSvc"),
   version = "2023-10-17",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateAddonInstance = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "CreateAddonInstance"),
   input = M.CreateAddonInstanceInput,
   output = M.CreateAddonInstanceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateAddonSubscription = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "CreateAddonSubscription"),
   input = M.CreateAddonSubscriptionInput,
   output = M.CreateAddonSubscriptionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateAddressList = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "CreateAddressList"),
   input = M.CreateAddressListInput,
   output = M.CreateAddressListOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateAddressListImportJob = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "CreateAddressListImportJob"),
   input = M.CreateAddressListImportJobInput,
   output = M.CreateAddressListImportJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateArchive = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "CreateArchive"),
   input = M.CreateArchiveInput,
   output = M.CreateArchiveOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateIngressPoint = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "CreateIngressPoint"),
   input = M.CreateIngressPointInput,
   output = M.CreateIngressPointOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateRelay = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "CreateRelay"),
   input = M.CreateRelayInput,
   output = M.CreateRelayOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateRuleSet = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "CreateRuleSet"),
   input = M.CreateRuleSetInput,
   output = M.CreateRuleSetOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateTrafficPolicy = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "CreateTrafficPolicy"),
   input = M.CreateTrafficPolicyInput,
   output = M.CreateTrafficPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteAddonInstance = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "DeleteAddonInstance"),
   input = M.DeleteAddonInstanceInput,
   output = M.DeleteAddonInstanceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteAddonSubscription = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "DeleteAddonSubscription"),
   input = M.DeleteAddonSubscriptionInput,
   output = M.DeleteAddonSubscriptionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteAddressList = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "DeleteAddressList"),
   input = M.DeleteAddressListInput,
   output = M.DeleteAddressListOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteArchive = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "DeleteArchive"),
   input = M.DeleteArchiveInput,
   output = M.DeleteArchiveOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteIngressPoint = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "DeleteIngressPoint"),
   input = M.DeleteIngressPointInput,
   output = M.DeleteIngressPointOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteRelay = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "DeleteRelay"),
   input = M.DeleteRelayInput,
   output = M.DeleteRelayOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteRuleSet = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "DeleteRuleSet"),
   input = M.DeleteRuleSetInput,
   output = M.DeleteRuleSetOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteTrafficPolicy = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "DeleteTrafficPolicy"),
   input = M.DeleteTrafficPolicyInput,
   output = M.DeleteTrafficPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeregisterMemberFromAddressList = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "DeregisterMemberFromAddressList"),
   input = M.DeregisterMemberFromAddressListInput,
   output = M.DeregisterMemberFromAddressListOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAddonInstance = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "GetAddonInstance"),
   input = M.GetAddonInstanceInput,
   output = M.GetAddonInstanceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAddonSubscription = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "GetAddonSubscription"),
   input = M.GetAddonSubscriptionInput,
   output = M.GetAddonSubscriptionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAddressList = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "GetAddressList"),
   input = M.GetAddressListInput,
   output = M.GetAddressListOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAddressListImportJob = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "GetAddressListImportJob"),
   input = M.GetAddressListImportJobInput,
   output = M.GetAddressListImportJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetArchive = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "GetArchive"),
   input = M.GetArchiveInput,
   output = M.GetArchiveOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetArchiveExport = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "GetArchiveExport"),
   input = M.GetArchiveExportInput,
   output = M.GetArchiveExportOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetArchiveMessage = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "GetArchiveMessage"),
   input = M.GetArchiveMessageInput,
   output = M.GetArchiveMessageOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetArchiveMessageContent = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "GetArchiveMessageContent"),
   input = M.GetArchiveMessageContentInput,
   output = M.GetArchiveMessageContentOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetArchiveSearch = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "GetArchiveSearch"),
   input = M.GetArchiveSearchInput,
   output = M.GetArchiveSearchOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetArchiveSearchResults = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "GetArchiveSearchResults"),
   input = M.GetArchiveSearchResultsInput,
   output = M.GetArchiveSearchResultsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetIngressPoint = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "GetIngressPoint"),
   input = M.GetIngressPointInput,
   output = M.GetIngressPointOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetMemberOfAddressList = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "GetMemberOfAddressList"),
   input = M.GetMemberOfAddressListInput,
   output = M.GetMemberOfAddressListOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRelay = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "GetRelay"),
   input = M.GetRelayInput,
   output = M.GetRelayOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRuleSet = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "GetRuleSet"),
   input = M.GetRuleSetInput,
   output = M.GetRuleSetOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetTrafficPolicy = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "GetTrafficPolicy"),
   input = M.GetTrafficPolicyInput,
   output = M.GetTrafficPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAddonInstances = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "ListAddonInstances"),
   input = M.ListAddonInstancesInput,
   output = M.ListAddonInstancesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAddonSubscriptions = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "ListAddonSubscriptions"),
   input = M.ListAddonSubscriptionsInput,
   output = M.ListAddonSubscriptionsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAddressListImportJobs = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "ListAddressListImportJobs"),
   input = M.ListAddressListImportJobsInput,
   output = M.ListAddressListImportJobsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAddressLists = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "ListAddressLists"),
   input = M.ListAddressListsInput,
   output = M.ListAddressListsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListArchiveExports = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "ListArchiveExports"),
   input = M.ListArchiveExportsInput,
   output = M.ListArchiveExportsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListArchives = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "ListArchives"),
   input = M.ListArchivesInput,
   output = M.ListArchivesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListArchiveSearches = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "ListArchiveSearches"),
   input = M.ListArchiveSearchesInput,
   output = M.ListArchiveSearchesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListIngressPoints = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "ListIngressPoints"),
   input = M.ListIngressPointsInput,
   output = M.ListIngressPointsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListMembersOfAddressList = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "ListMembersOfAddressList"),
   input = M.ListMembersOfAddressListInput,
   output = M.ListMembersOfAddressListOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRelays = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "ListRelays"),
   input = M.ListRelaysInput,
   output = M.ListRelaysOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRuleSets = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "ListRuleSets"),
   input = M.ListRuleSetsInput,
   output = M.ListRuleSetsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTrafficPolicies = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "ListTrafficPolicies"),
   input = M.ListTrafficPoliciesInput,
   output = M.ListTrafficPoliciesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RegisterMemberToAddressList = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "RegisterMemberToAddressList"),
   input = M.RegisterMemberToAddressListInput,
   output = M.RegisterMemberToAddressListOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartAddressListImportJob = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "StartAddressListImportJob"),
   input = M.StartAddressListImportJobInput,
   output = M.StartAddressListImportJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartArchiveExport = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "StartArchiveExport"),
   input = M.StartArchiveExportInput,
   output = M.StartArchiveExportOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartArchiveSearch = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "StartArchiveSearch"),
   input = M.StartArchiveSearchInput,
   output = M.StartArchiveSearchOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopAddressListImportJob = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "StopAddressListImportJob"),
   input = M.StopAddressListImportJobInput,
   output = M.StopAddressListImportJobOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopArchiveExport = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "StopArchiveExport"),
   input = M.StopArchiveExportInput,
   output = M.StopArchiveExportOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopArchiveSearch = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "StopArchiveSearch"),
   input = M.StopArchiveSearchInput,
   output = M.StopArchiveSearchOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateArchive = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "UpdateArchive"),
   input = M.UpdateArchiveInput,
   output = M.UpdateArchiveOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateIngressPoint = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "UpdateIngressPoint"),
   input = M.UpdateIngressPointInput,
   output = M.UpdateIngressPointOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateRelay = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "UpdateRelay"),
   input = M.UpdateRelayInput,
   output = M.UpdateRelayOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateRuleSet = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "UpdateRuleSet"),
   input = M.UpdateRuleSetInput,
   output = M.UpdateRuleSetOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateTrafficPolicy = schema.operation({
   id = id.from("com.amazonaws.mailmanager", "UpdateTrafficPolicy"),
   input = M.UpdateTrafficPolicyInput,
   output = M.UpdateTrafficPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
