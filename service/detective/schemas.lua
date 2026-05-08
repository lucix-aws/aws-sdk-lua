

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.detective"

local M = {}

M.AccountIdExtendedList = schema.new({ type = "list", list_member = prelude.String })

M.MembershipDatasourcesList = schema.new({ type = "list", list_member = M.MembershipDatasources })

M.UnprocessedAccountList = schema.new({ type = "list", list_member = M.UnprocessedAccount })

M.GraphArnList = schema.new({ type = "list", list_member = prelude.String })

M.UnprocessedGraphList = schema.new({ type = "list", list_member = M.UnprocessedGraph })

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ResourceList = schema.new({ type = "list", list_member = prelude.String })

M.AccountList = schema.new({ type = "list", list_member = M.Account })

M.MemberDetailList = schema.new({ type = "list", list_member = M.MemberDetail })

M.AccountIdList = schema.new({ type = "list", list_member = prelude.String })

M.DatasourcePackageIngestDetails = schema.new({ type = "map", map_key = prelude.String, map_value = M.DatasourcePackageIngestDetail })

M.GraphList = schema.new({ type = "list", list_member = M.Graph })

M.Indicators = schema.new({ type = "list", list_member = M.Indicator })

M.InvestigationDetails = schema.new({ type = "list", list_member = M.InvestigationDetail })

M.AdministratorList = schema.new({ type = "list", list_member = M.Administrator })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.DatasourcePackageList = schema.new({ type = "list", list_member = prelude.String })

M.DatasourcePackageIngestHistory = schema.new({ type = "map", map_key = prelude.String, map_value = M.LastIngestStateChangeDates })

M.VolumeUsageByDatasourcePackage = schema.new({ type = "map", map_key = prelude.String, map_value = M.DatasourcePackageUsageInfo })

M.DatasourcePackageIngestStates = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.LastIngestStateChangeDates = schema.new({ type = "map", map_key = prelude.String, map_value = M.TimestampForCollection })

M.AcceptInvitationInput = schema.new({
   id = id.from(_N, "AcceptInvitationRequest"),
   type = "structure",
   members = {
      GraphArn = schema.new({
         id = id.from(_N, "AcceptInvitationInput", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AcceptInvitationOutput = prelude.Unit

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
      ErrorCode = schema.new({
         id = id.from(_N, "AccessDeniedException", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
      }),
      ErrorCodeReason = schema.new({
         id = id.from(_N, "AccessDeniedException", "ErrorCodeReason"),
         type = "string",
         name = "ErrorCodeReason",
         target_id = prelude.String.id,
      }),
      SubErrorCode = schema.new({
         id = id.from(_N, "AccessDeniedException", "SubErrorCode"),
         type = "string",
         name = "SubErrorCode",
         target_id = prelude.String.id,
      }),
      SubErrorCodeReason = schema.new({
         id = id.from(_N, "AccessDeniedException", "SubErrorCodeReason"),
         type = "string",
         name = "SubErrorCodeReason",
         target_id = prelude.String.id,
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

M.InternalServerException = schema.new({
   id = id.from(_N, "InternalServerException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InternalServerException", "Message"),
         type = "string",
         name = "Message",
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
      Message = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "Message"),
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
      ErrorCode = schema.new({
         id = id.from(_N, "ValidationException", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
      }),
      ErrorCodeReason = schema.new({
         id = id.from(_N, "ValidationException", "ErrorCodeReason"),
         type = "string",
         name = "ErrorCodeReason",
         target_id = prelude.String.id,
      }),
   },
})

M.Account = schema.new({
   id = id.from(_N, "Account"),
   type = "structure",
   members = {
      AccountId = schema.new({
         id = id.from(_N, "Account", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EmailAddress = schema.new({
         id = id.from(_N, "Account", "EmailAddress"),
         type = "string",
         name = "EmailAddress",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Administrator = schema.new({
   id = id.from(_N, "Administrator"),
   type = "structure",
   members = {
      AccountId = schema.new({
         id = id.from(_N, "Administrator", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      GraphArn = schema.new({
         id = id.from(_N, "Administrator", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
      }),
      DelegationTime = schema.new({
         id = id.from(_N, "Administrator", "DelegationTime"),
         type = "timestamp",
         name = "DelegationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
   },
})

M.BatchGetGraphMemberDatasourcesInput = schema.new({
   id = id.from(_N, "BatchGetGraphMemberDatasourcesRequest"),
   type = "structure",
   members = {
      GraphArn = schema.new({
         id = id.from(_N, "BatchGetGraphMemberDatasourcesInput", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AccountIds = schema.new({
         id = id.from(_N, "BatchGetGraphMemberDatasourcesInput", "AccountIds"),
         type = "list",
         name = "AccountIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TimestampForCollection = schema.new({
   id = id.from(_N, "TimestampForCollection"),
   type = "structure",
   members = {
      Timestamp = schema.new({
         id = id.from(_N, "TimestampForCollection", "Timestamp"),
         type = "timestamp",
         name = "Timestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
   },
})

M.MembershipDatasources = schema.new({
   id = id.from(_N, "MembershipDatasources"),
   type = "structure",
   members = {
      AccountId = schema.new({
         id = id.from(_N, "MembershipDatasources", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      GraphArn = schema.new({
         id = id.from(_N, "MembershipDatasources", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
      }),
      DatasourcePackageIngestHistory = schema.new({
         id = id.from(_N, "MembershipDatasources", "DatasourcePackageIngestHistory"),
         type = "map",
         name = "DatasourcePackageIngestHistory",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "map", map_key = prelude.String, map_value = M.TimestampForCollection }),
      }),
   },
})

M.UnprocessedAccount = schema.new({
   id = id.from(_N, "UnprocessedAccount"),
   type = "structure",
   members = {
      AccountId = schema.new({
         id = id.from(_N, "UnprocessedAccount", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      Reason = schema.new({
         id = id.from(_N, "UnprocessedAccount", "Reason"),
         type = "string",
         name = "Reason",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchGetGraphMemberDatasourcesOutput = schema.new({
   id = id.from(_N, "BatchGetGraphMemberDatasourcesResponse"),
   type = "structure",
   members = {
      MemberDatasources = schema.new({
         id = id.from(_N, "BatchGetGraphMemberDatasourcesOutput", "MemberDatasources"),
         type = "list",
         name = "MemberDatasources",
         target_id = prelude.Document.id,
         list_member = M.MembershipDatasources,
      }),
      UnprocessedAccounts = schema.new({
         id = id.from(_N, "BatchGetGraphMemberDatasourcesOutput", "UnprocessedAccounts"),
         type = "list",
         name = "UnprocessedAccounts",
         target_id = prelude.Document.id,
         list_member = M.UnprocessedAccount,
      }),
   },
})

M.BatchGetMembershipDatasourcesInput = schema.new({
   id = id.from(_N, "BatchGetMembershipDatasourcesRequest"),
   type = "structure",
   members = {
      GraphArns = schema.new({
         id = id.from(_N, "BatchGetMembershipDatasourcesInput", "GraphArns"),
         type = "list",
         name = "GraphArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UnprocessedGraph = schema.new({
   id = id.from(_N, "UnprocessedGraph"),
   type = "structure",
   members = {
      GraphArn = schema.new({
         id = id.from(_N, "UnprocessedGraph", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
      }),
      Reason = schema.new({
         id = id.from(_N, "UnprocessedGraph", "Reason"),
         type = "string",
         name = "Reason",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchGetMembershipDatasourcesOutput = schema.new({
   id = id.from(_N, "BatchGetMembershipDatasourcesResponse"),
   type = "structure",
   members = {
      MembershipDatasources = schema.new({
         id = id.from(_N, "BatchGetMembershipDatasourcesOutput", "MembershipDatasources"),
         type = "list",
         name = "MembershipDatasources",
         target_id = prelude.Document.id,
         list_member = M.MembershipDatasources,
      }),
      UnprocessedGraphs = schema.new({
         id = id.from(_N, "BatchGetMembershipDatasourcesOutput", "UnprocessedGraphs"),
         type = "list",
         name = "UnprocessedGraphs",
         target_id = prelude.Document.id,
         list_member = M.UnprocessedGraph,
      }),
   },
})

M.CreateGraphInput = schema.new({
   id = id.from(_N, "CreateGraphRequest"),
   type = "structure",
   members = {
      Tags = schema.new({
         id = id.from(_N, "CreateGraphInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateGraphOutput = schema.new({
   id = id.from(_N, "CreateGraphResponse"),
   type = "structure",
   members = {
      GraphArn = schema.new({
         id = id.from(_N, "CreateGraphOutput", "GraphArn"),
         type = "string",
         name = "GraphArn",
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
      Resources = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "Resources"),
         type = "list",
         name = "Resources",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.CreateMembersInput = schema.new({
   id = id.from(_N, "CreateMembersRequest"),
   type = "structure",
   members = {
      GraphArn = schema.new({
         id = id.from(_N, "CreateMembersInput", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Message = schema.new({
         id = id.from(_N, "CreateMembersInput", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      DisableEmailNotification = schema.new({
         id = id.from(_N, "CreateMembersInput", "DisableEmailNotification"),
         type = "boolean",
         name = "DisableEmailNotification",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      Accounts = schema.new({
         id = id.from(_N, "CreateMembersInput", "Accounts"),
         type = "list",
         name = "Accounts",
         target_id = prelude.Document.id,
         list_member = M.Account,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DatasourcePackageUsageInfo = schema.new({
   id = id.from(_N, "DatasourcePackageUsageInfo"),
   type = "structure",
   members = {
      VolumeUsageInBytes = schema.new({
         id = id.from(_N, "DatasourcePackageUsageInfo", "VolumeUsageInBytes"),
         type = "long",
         name = "VolumeUsageInBytes",
         target_id = prelude.Long.id,
      }),
      VolumeUsageUpdateTime = schema.new({
         id = id.from(_N, "DatasourcePackageUsageInfo", "VolumeUsageUpdateTime"),
         type = "timestamp",
         name = "VolumeUsageUpdateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
   },
})

M.MemberDetail = schema.new({
   id = id.from(_N, "MemberDetail"),
   type = "structure",
   members = {
      AccountId = schema.new({
         id = id.from(_N, "MemberDetail", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      EmailAddress = schema.new({
         id = id.from(_N, "MemberDetail", "EmailAddress"),
         type = "string",
         name = "EmailAddress",
         target_id = prelude.String.id,
      }),
      GraphArn = schema.new({
         id = id.from(_N, "MemberDetail", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
      }),
      MasterId = schema.new({
         id = id.from(_N, "MemberDetail", "MasterId"),
         type = "string",
         name = "MasterId",
         target_id = prelude.String.id,
      }),
      AdministratorId = schema.new({
         id = id.from(_N, "MemberDetail", "AdministratorId"),
         type = "string",
         name = "AdministratorId",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "MemberDetail", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      DisabledReason = schema.new({
         id = id.from(_N, "MemberDetail", "DisabledReason"),
         type = "string",
         name = "DisabledReason",
         target_id = prelude.String.id,
      }),
      InvitedTime = schema.new({
         id = id.from(_N, "MemberDetail", "InvitedTime"),
         type = "timestamp",
         name = "InvitedTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      UpdatedTime = schema.new({
         id = id.from(_N, "MemberDetail", "UpdatedTime"),
         type = "timestamp",
         name = "UpdatedTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      VolumeUsageInBytes = schema.new({
         id = id.from(_N, "MemberDetail", "VolumeUsageInBytes"),
         type = "long",
         name = "VolumeUsageInBytes",
         target_id = prelude.Long.id,
      }),
      VolumeUsageUpdatedTime = schema.new({
         id = id.from(_N, "MemberDetail", "VolumeUsageUpdatedTime"),
         type = "timestamp",
         name = "VolumeUsageUpdatedTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      PercentOfGraphUtilization = schema.new({
         id = id.from(_N, "MemberDetail", "PercentOfGraphUtilization"),
         type = "double",
         name = "PercentOfGraphUtilization",
         target_id = prelude.Double.id,
      }),
      PercentOfGraphUtilizationUpdatedTime = schema.new({
         id = id.from(_N, "MemberDetail", "PercentOfGraphUtilizationUpdatedTime"),
         type = "timestamp",
         name = "PercentOfGraphUtilizationUpdatedTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      InvitationType = schema.new({
         id = id.from(_N, "MemberDetail", "InvitationType"),
         type = "string",
         name = "InvitationType",
         target_id = prelude.String.id,
      }),
      VolumeUsageByDatasourcePackage = schema.new({
         id = id.from(_N, "MemberDetail", "VolumeUsageByDatasourcePackage"),
         type = "map",
         name = "VolumeUsageByDatasourcePackage",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.DatasourcePackageUsageInfo,
      }),
      DatasourcePackageIngestStates = schema.new({
         id = id.from(_N, "MemberDetail", "DatasourcePackageIngestStates"),
         type = "map",
         name = "DatasourcePackageIngestStates",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateMembersOutput = schema.new({
   id = id.from(_N, "CreateMembersResponse"),
   type = "structure",
   members = {
      Members = schema.new({
         id = id.from(_N, "CreateMembersOutput", "Members"),
         type = "list",
         name = "Members",
         target_id = prelude.Document.id,
         list_member = M.MemberDetail,
      }),
      UnprocessedAccounts = schema.new({
         id = id.from(_N, "CreateMembersOutput", "UnprocessedAccounts"),
         type = "list",
         name = "UnprocessedAccounts",
         target_id = prelude.Document.id,
         list_member = M.UnprocessedAccount,
      }),
   },
})

M.DeleteGraphInput = schema.new({
   id = id.from(_N, "DeleteGraphRequest"),
   type = "structure",
   members = {
      GraphArn = schema.new({
         id = id.from(_N, "DeleteGraphInput", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteGraphOutput = prelude.Unit

M.DeleteMembersInput = schema.new({
   id = id.from(_N, "DeleteMembersRequest"),
   type = "structure",
   members = {
      GraphArn = schema.new({
         id = id.from(_N, "DeleteMembersInput", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AccountIds = schema.new({
         id = id.from(_N, "DeleteMembersInput", "AccountIds"),
         type = "list",
         name = "AccountIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteMembersOutput = schema.new({
   id = id.from(_N, "DeleteMembersResponse"),
   type = "structure",
   members = {
      AccountIds = schema.new({
         id = id.from(_N, "DeleteMembersOutput", "AccountIds"),
         type = "list",
         name = "AccountIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      UnprocessedAccounts = schema.new({
         id = id.from(_N, "DeleteMembersOutput", "UnprocessedAccounts"),
         type = "list",
         name = "UnprocessedAccounts",
         target_id = prelude.Document.id,
         list_member = M.UnprocessedAccount,
      }),
   },
})

M.DescribeOrganizationConfigurationInput = schema.new({
   id = id.from(_N, "DescribeOrganizationConfigurationRequest"),
   type = "structure",
   members = {
      GraphArn = schema.new({
         id = id.from(_N, "DescribeOrganizationConfigurationInput", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeOrganizationConfigurationOutput = schema.new({
   id = id.from(_N, "DescribeOrganizationConfigurationResponse"),
   type = "structure",
   members = {
      AutoEnable = schema.new({
         id = id.from(_N, "DescribeOrganizationConfigurationOutput", "AutoEnable"),
         type = "boolean",
         name = "AutoEnable",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.TooManyRequestsException = schema.new({
   id = id.from(_N, "TooManyRequestsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "TooManyRequestsException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.DisableOrganizationAdminAccountInput = prelude.Unit

M.DisableOrganizationAdminAccountOutput = prelude.Unit

M.DisassociateMembershipInput = schema.new({
   id = id.from(_N, "DisassociateMembershipRequest"),
   type = "structure",
   members = {
      GraphArn = schema.new({
         id = id.from(_N, "DisassociateMembershipInput", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisassociateMembershipOutput = prelude.Unit

M.EnableOrganizationAdminAccountInput = schema.new({
   id = id.from(_N, "EnableOrganizationAdminAccountRequest"),
   type = "structure",
   members = {
      AccountId = schema.new({
         id = id.from(_N, "EnableOrganizationAdminAccountInput", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EnableOrganizationAdminAccountOutput = prelude.Unit

M.GetInvestigationInput = schema.new({
   id = id.from(_N, "GetInvestigationRequest"),
   type = "structure",
   members = {
      GraphArn = schema.new({
         id = id.from(_N, "GetInvestigationInput", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InvestigationId = schema.new({
         id = id.from(_N, "GetInvestigationInput", "InvestigationId"),
         type = "string",
         name = "InvestigationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetInvestigationOutput = schema.new({
   id = id.from(_N, "GetInvestigationResponse"),
   type = "structure",
   members = {
      GraphArn = schema.new({
         id = id.from(_N, "GetInvestigationOutput", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
      }),
      InvestigationId = schema.new({
         id = id.from(_N, "GetInvestigationOutput", "InvestigationId"),
         type = "string",
         name = "InvestigationId",
         target_id = prelude.String.id,
      }),
      EntityArn = schema.new({
         id = id.from(_N, "GetInvestigationOutput", "EntityArn"),
         type = "string",
         name = "EntityArn",
         target_id = prelude.String.id,
      }),
      EntityType = schema.new({
         id = id.from(_N, "GetInvestigationOutput", "EntityType"),
         type = "string",
         name = "EntityType",
         target_id = prelude.String.id,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "GetInvestigationOutput", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      ScopeStartTime = schema.new({
         id = id.from(_N, "GetInvestigationOutput", "ScopeStartTime"),
         type = "timestamp",
         name = "ScopeStartTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      ScopeEndTime = schema.new({
         id = id.from(_N, "GetInvestigationOutput", "ScopeEndTime"),
         type = "timestamp",
         name = "ScopeEndTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "GetInvestigationOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      Severity = schema.new({
         id = id.from(_N, "GetInvestigationOutput", "Severity"),
         type = "string",
         name = "Severity",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "GetInvestigationOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
   },
})

M.GetMembersInput = schema.new({
   id = id.from(_N, "GetMembersRequest"),
   type = "structure",
   members = {
      GraphArn = schema.new({
         id = id.from(_N, "GetMembersInput", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AccountIds = schema.new({
         id = id.from(_N, "GetMembersInput", "AccountIds"),
         type = "list",
         name = "AccountIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetMembersOutput = schema.new({
   id = id.from(_N, "GetMembersResponse"),
   type = "structure",
   members = {
      MemberDetails = schema.new({
         id = id.from(_N, "GetMembersOutput", "MemberDetails"),
         type = "list",
         name = "MemberDetails",
         target_id = prelude.Document.id,
         list_member = M.MemberDetail,
      }),
      UnprocessedAccounts = schema.new({
         id = id.from(_N, "GetMembersOutput", "UnprocessedAccounts"),
         type = "list",
         name = "UnprocessedAccounts",
         target_id = prelude.Document.id,
         list_member = M.UnprocessedAccount,
      }),
   },
})

M.ListDatasourcePackagesInput = schema.new({
   id = id.from(_N, "ListDatasourcePackagesRequest"),
   type = "structure",
   members = {
      GraphArn = schema.new({
         id = id.from(_N, "ListDatasourcePackagesInput", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListDatasourcePackagesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListDatasourcePackagesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.DatasourcePackageIngestDetail = schema.new({
   id = id.from(_N, "DatasourcePackageIngestDetail"),
   type = "structure",
   members = {
      DatasourcePackageIngestState = schema.new({
         id = id.from(_N, "DatasourcePackageIngestDetail", "DatasourcePackageIngestState"),
         type = "string",
         name = "DatasourcePackageIngestState",
         target_id = prelude.String.id,
      }),
      LastIngestStateChange = schema.new({
         id = id.from(_N, "DatasourcePackageIngestDetail", "LastIngestStateChange"),
         type = "map",
         name = "LastIngestStateChange",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.TimestampForCollection,
      }),
   },
})

M.ListDatasourcePackagesOutput = schema.new({
   id = id.from(_N, "ListDatasourcePackagesResponse"),
   type = "structure",
   members = {
      DatasourcePackages = schema.new({
         id = id.from(_N, "ListDatasourcePackagesOutput", "DatasourcePackages"),
         type = "map",
         name = "DatasourcePackages",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.DatasourcePackageIngestDetail,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListDatasourcePackagesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListGraphsInput = schema.new({
   id = id.from(_N, "ListGraphsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListGraphsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListGraphsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.Graph = schema.new({
   id = id.from(_N, "Graph"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "Graph", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "Graph", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
   },
})

M.ListGraphsOutput = schema.new({
   id = id.from(_N, "ListGraphsResponse"),
   type = "structure",
   members = {
      GraphList = schema.new({
         id = id.from(_N, "ListGraphsOutput", "GraphList"),
         type = "list",
         name = "GraphList",
         target_id = prelude.Document.id,
         list_member = M.Graph,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListGraphsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListIndicatorsInput = schema.new({
   id = id.from(_N, "ListIndicatorsRequest"),
   type = "structure",
   members = {
      GraphArn = schema.new({
         id = id.from(_N, "ListIndicatorsInput", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InvestigationId = schema.new({
         id = id.from(_N, "ListIndicatorsInput", "InvestigationId"),
         type = "string",
         name = "InvestigationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IndicatorType = schema.new({
         id = id.from(_N, "ListIndicatorsInput", "IndicatorType"),
         type = "string",
         name = "IndicatorType",
         target_id = prelude.String.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListIndicatorsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListIndicatorsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.FlaggedIpAddressDetail = schema.new({
   id = id.from(_N, "FlaggedIpAddressDetail"),
   type = "structure",
   members = {
      IpAddress = schema.new({
         id = id.from(_N, "FlaggedIpAddressDetail", "IpAddress"),
         type = "string",
         name = "IpAddress",
         target_id = prelude.String.id,
      }),
      Reason = schema.new({
         id = id.from(_N, "FlaggedIpAddressDetail", "Reason"),
         type = "string",
         name = "Reason",
         target_id = prelude.String.id,
      }),
   },
})

M.ImpossibleTravelDetail = schema.new({
   id = id.from(_N, "ImpossibleTravelDetail"),
   type = "structure",
   members = {
      StartingIpAddress = schema.new({
         id = id.from(_N, "ImpossibleTravelDetail", "StartingIpAddress"),
         type = "string",
         name = "StartingIpAddress",
         target_id = prelude.String.id,
      }),
      EndingIpAddress = schema.new({
         id = id.from(_N, "ImpossibleTravelDetail", "EndingIpAddress"),
         type = "string",
         name = "EndingIpAddress",
         target_id = prelude.String.id,
      }),
      StartingLocation = schema.new({
         id = id.from(_N, "ImpossibleTravelDetail", "StartingLocation"),
         type = "string",
         name = "StartingLocation",
         target_id = prelude.String.id,
      }),
      EndingLocation = schema.new({
         id = id.from(_N, "ImpossibleTravelDetail", "EndingLocation"),
         type = "string",
         name = "EndingLocation",
         target_id = prelude.String.id,
      }),
      HourlyTimeDelta = schema.new({
         id = id.from(_N, "ImpossibleTravelDetail", "HourlyTimeDelta"),
         type = "integer",
         name = "HourlyTimeDelta",
         target_id = prelude.Integer.id,
      }),
   },
})

M.NewAsoDetail = schema.new({
   id = id.from(_N, "NewAsoDetail"),
   type = "structure",
   members = {
      Aso = schema.new({
         id = id.from(_N, "NewAsoDetail", "Aso"),
         type = "string",
         name = "Aso",
         target_id = prelude.String.id,
      }),
      IsNewForEntireAccount = schema.new({
         id = id.from(_N, "NewAsoDetail", "IsNewForEntireAccount"),
         type = "boolean",
         name = "IsNewForEntireAccount",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.NewGeolocationDetail = schema.new({
   id = id.from(_N, "NewGeolocationDetail"),
   type = "structure",
   members = {
      Location = schema.new({
         id = id.from(_N, "NewGeolocationDetail", "Location"),
         type = "string",
         name = "Location",
         target_id = prelude.String.id,
      }),
      IpAddress = schema.new({
         id = id.from(_N, "NewGeolocationDetail", "IpAddress"),
         type = "string",
         name = "IpAddress",
         target_id = prelude.String.id,
      }),
      IsNewForEntireAccount = schema.new({
         id = id.from(_N, "NewGeolocationDetail", "IsNewForEntireAccount"),
         type = "boolean",
         name = "IsNewForEntireAccount",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.NewUserAgentDetail = schema.new({
   id = id.from(_N, "NewUserAgentDetail"),
   type = "structure",
   members = {
      UserAgent = schema.new({
         id = id.from(_N, "NewUserAgentDetail", "UserAgent"),
         type = "string",
         name = "UserAgent",
         target_id = prelude.String.id,
      }),
      IsNewForEntireAccount = schema.new({
         id = id.from(_N, "NewUserAgentDetail", "IsNewForEntireAccount"),
         type = "boolean",
         name = "IsNewForEntireAccount",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.RelatedFindingDetail = schema.new({
   id = id.from(_N, "RelatedFindingDetail"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "RelatedFindingDetail", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "RelatedFindingDetail", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      IpAddress = schema.new({
         id = id.from(_N, "RelatedFindingDetail", "IpAddress"),
         type = "string",
         name = "IpAddress",
         target_id = prelude.String.id,
      }),
   },
})

M.RelatedFindingGroupDetail = schema.new({
   id = id.from(_N, "RelatedFindingGroupDetail"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "RelatedFindingGroupDetail", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
   },
})

M.TTPsObservedDetail = schema.new({
   id = id.from(_N, "TTPsObservedDetail"),
   type = "structure",
   members = {
      Tactic = schema.new({
         id = id.from(_N, "TTPsObservedDetail", "Tactic"),
         type = "string",
         name = "Tactic",
         target_id = prelude.String.id,
      }),
      Technique = schema.new({
         id = id.from(_N, "TTPsObservedDetail", "Technique"),
         type = "string",
         name = "Technique",
         target_id = prelude.String.id,
      }),
      Procedure = schema.new({
         id = id.from(_N, "TTPsObservedDetail", "Procedure"),
         type = "string",
         name = "Procedure",
         target_id = prelude.String.id,
      }),
      IpAddress = schema.new({
         id = id.from(_N, "TTPsObservedDetail", "IpAddress"),
         type = "string",
         name = "IpAddress",
         target_id = prelude.String.id,
      }),
      APIName = schema.new({
         id = id.from(_N, "TTPsObservedDetail", "APIName"),
         type = "string",
         name = "APIName",
         target_id = prelude.String.id,
      }),
      APISuccessCount = schema.new({
         id = id.from(_N, "TTPsObservedDetail", "APISuccessCount"),
         type = "long",
         name = "APISuccessCount",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      APIFailureCount = schema.new({
         id = id.from(_N, "TTPsObservedDetail", "APIFailureCount"),
         type = "long",
         name = "APIFailureCount",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.IndicatorDetail = schema.new({
   id = id.from(_N, "IndicatorDetail"),
   type = "structure",
   members = {
      TTPsObservedDetail = schema.new({
         id = id.from(_N, "IndicatorDetail", "TTPsObservedDetail"),
         type = "structure",
         name = "TTPsObservedDetail",
         target_id = id.from(_N, "TTPsObservedDetail"),
         target = M.TTPsObservedDetail,
      }),
      ImpossibleTravelDetail = schema.new({
         id = id.from(_N, "IndicatorDetail", "ImpossibleTravelDetail"),
         type = "structure",
         name = "ImpossibleTravelDetail",
         target_id = id.from(_N, "ImpossibleTravelDetail"),
         target = M.ImpossibleTravelDetail,
      }),
      FlaggedIpAddressDetail = schema.new({
         id = id.from(_N, "IndicatorDetail", "FlaggedIpAddressDetail"),
         type = "structure",
         name = "FlaggedIpAddressDetail",
         target_id = id.from(_N, "FlaggedIpAddressDetail"),
         target = M.FlaggedIpAddressDetail,
      }),
      NewGeolocationDetail = schema.new({
         id = id.from(_N, "IndicatorDetail", "NewGeolocationDetail"),
         type = "structure",
         name = "NewGeolocationDetail",
         target_id = id.from(_N, "NewGeolocationDetail"),
         target = M.NewGeolocationDetail,
      }),
      NewAsoDetail = schema.new({
         id = id.from(_N, "IndicatorDetail", "NewAsoDetail"),
         type = "structure",
         name = "NewAsoDetail",
         target_id = id.from(_N, "NewAsoDetail"),
         target = M.NewAsoDetail,
      }),
      NewUserAgentDetail = schema.new({
         id = id.from(_N, "IndicatorDetail", "NewUserAgentDetail"),
         type = "structure",
         name = "NewUserAgentDetail",
         target_id = id.from(_N, "NewUserAgentDetail"),
         target = M.NewUserAgentDetail,
      }),
      RelatedFindingDetail = schema.new({
         id = id.from(_N, "IndicatorDetail", "RelatedFindingDetail"),
         type = "structure",
         name = "RelatedFindingDetail",
         target_id = id.from(_N, "RelatedFindingDetail"),
         target = M.RelatedFindingDetail,
      }),
      RelatedFindingGroupDetail = schema.new({
         id = id.from(_N, "IndicatorDetail", "RelatedFindingGroupDetail"),
         type = "structure",
         name = "RelatedFindingGroupDetail",
         target_id = id.from(_N, "RelatedFindingGroupDetail"),
         target = M.RelatedFindingGroupDetail,
      }),
   },
})

M.Indicator = schema.new({
   id = id.from(_N, "Indicator"),
   type = "structure",
   members = {
      IndicatorType = schema.new({
         id = id.from(_N, "Indicator", "IndicatorType"),
         type = "string",
         name = "IndicatorType",
         target_id = prelude.String.id,
      }),
      IndicatorDetail = schema.new({
         id = id.from(_N, "Indicator", "IndicatorDetail"),
         type = "structure",
         name = "IndicatorDetail",
         target_id = id.from(_N, "IndicatorDetail"),
         target = M.IndicatorDetail,
      }),
   },
})

M.ListIndicatorsOutput = schema.new({
   id = id.from(_N, "ListIndicatorsResponse"),
   type = "structure",
   members = {
      GraphArn = schema.new({
         id = id.from(_N, "ListIndicatorsOutput", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
      }),
      InvestigationId = schema.new({
         id = id.from(_N, "ListIndicatorsOutput", "InvestigationId"),
         type = "string",
         name = "InvestigationId",
         target_id = prelude.String.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListIndicatorsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      Indicators = schema.new({
         id = id.from(_N, "ListIndicatorsOutput", "Indicators"),
         type = "list",
         name = "Indicators",
         target_id = prelude.Document.id,
         list_member = M.Indicator,
      }),
   },
})

M.DateFilter = schema.new({
   id = id.from(_N, "DateFilter"),
   type = "structure",
   members = {
      StartInclusive = schema.new({
         id = id.from(_N, "DateFilter", "StartInclusive"),
         type = "timestamp",
         name = "StartInclusive",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndInclusive = schema.new({
         id = id.from(_N, "DateFilter", "EndInclusive"),
         type = "timestamp",
         name = "EndInclusive",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StringFilter = schema.new({
   id = id.from(_N, "StringFilter"),
   type = "structure",
   members = {
      Value = schema.new({
         id = id.from(_N, "StringFilter", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FilterCriteria = schema.new({
   id = id.from(_N, "FilterCriteria"),
   type = "structure",
   members = {
      Severity = schema.new({
         id = id.from(_N, "FilterCriteria", "Severity"),
         type = "structure",
         name = "Severity",
         target_id = id.from(_N, "StringFilter"),
         target = M.StringFilter,
      }),
      Status = schema.new({
         id = id.from(_N, "FilterCriteria", "Status"),
         type = "structure",
         name = "Status",
         target_id = id.from(_N, "StringFilter"),
         target = M.StringFilter,
      }),
      State = schema.new({
         id = id.from(_N, "FilterCriteria", "State"),
         type = "structure",
         name = "State",
         target_id = id.from(_N, "StringFilter"),
         target = M.StringFilter,
      }),
      EntityArn = schema.new({
         id = id.from(_N, "FilterCriteria", "EntityArn"),
         type = "structure",
         name = "EntityArn",
         target_id = id.from(_N, "StringFilter"),
         target = M.StringFilter,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "FilterCriteria", "CreatedTime"),
         type = "structure",
         name = "CreatedTime",
         target_id = id.from(_N, "DateFilter"),
         target = M.DateFilter,
      }),
   },
})

M.SortCriteria = schema.new({
   id = id.from(_N, "SortCriteria"),
   type = "structure",
   members = {
      Field = schema.new({
         id = id.from(_N, "SortCriteria", "Field"),
         type = "string",
         name = "Field",
         target_id = prelude.String.id,
      }),
      SortOrder = schema.new({
         id = id.from(_N, "SortCriteria", "SortOrder"),
         type = "string",
         name = "SortOrder",
         target_id = prelude.String.id,
      }),
   },
})

M.ListInvestigationsInput = schema.new({
   id = id.from(_N, "ListInvestigationsRequest"),
   type = "structure",
   members = {
      GraphArn = schema.new({
         id = id.from(_N, "ListInvestigationsInput", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListInvestigationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListInvestigationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      FilterCriteria = schema.new({
         id = id.from(_N, "ListInvestigationsInput", "FilterCriteria"),
         type = "structure",
         name = "FilterCriteria",
         target_id = id.from(_N, "FilterCriteria"),
         target = M.FilterCriteria,
      }),
      SortCriteria = schema.new({
         id = id.from(_N, "ListInvestigationsInput", "SortCriteria"),
         type = "structure",
         name = "SortCriteria",
         target_id = id.from(_N, "SortCriteria"),
         target = M.SortCriteria,
      }),
   },
})

M.InvestigationDetail = schema.new({
   id = id.from(_N, "InvestigationDetail"),
   type = "structure",
   members = {
      InvestigationId = schema.new({
         id = id.from(_N, "InvestigationDetail", "InvestigationId"),
         type = "string",
         name = "InvestigationId",
         target_id = prelude.String.id,
      }),
      Severity = schema.new({
         id = id.from(_N, "InvestigationDetail", "Severity"),
         type = "string",
         name = "Severity",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "InvestigationDetail", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "InvestigationDetail", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "InvestigationDetail", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      EntityArn = schema.new({
         id = id.from(_N, "InvestigationDetail", "EntityArn"),
         type = "string",
         name = "EntityArn",
         target_id = prelude.String.id,
      }),
      EntityType = schema.new({
         id = id.from(_N, "InvestigationDetail", "EntityType"),
         type = "string",
         name = "EntityType",
         target_id = prelude.String.id,
      }),
   },
})

M.ListInvestigationsOutput = schema.new({
   id = id.from(_N, "ListInvestigationsResponse"),
   type = "structure",
   members = {
      InvestigationDetails = schema.new({
         id = id.from(_N, "ListInvestigationsOutput", "InvestigationDetails"),
         type = "list",
         name = "InvestigationDetails",
         target_id = prelude.Document.id,
         list_member = M.InvestigationDetail,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListInvestigationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListInvitationsInput = schema.new({
   id = id.from(_N, "ListInvitationsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListInvitationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListInvitationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListInvitationsOutput = schema.new({
   id = id.from(_N, "ListInvitationsResponse"),
   type = "structure",
   members = {
      Invitations = schema.new({
         id = id.from(_N, "ListInvitationsOutput", "Invitations"),
         type = "list",
         name = "Invitations",
         target_id = prelude.Document.id,
         list_member = M.MemberDetail,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListInvitationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListMembersInput = schema.new({
   id = id.from(_N, "ListMembersRequest"),
   type = "structure",
   members = {
      GraphArn = schema.new({
         id = id.from(_N, "ListMembersInput", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListMembersInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListMembersInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListMembersOutput = schema.new({
   id = id.from(_N, "ListMembersResponse"),
   type = "structure",
   members = {
      MemberDetails = schema.new({
         id = id.from(_N, "ListMembersOutput", "MemberDetails"),
         type = "list",
         name = "MemberDetails",
         target_id = prelude.Document.id,
         list_member = M.MemberDetail,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListMembersOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListOrganizationAdminAccountsInput = schema.new({
   id = id.from(_N, "ListOrganizationAdminAccountsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListOrganizationAdminAccountsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListOrganizationAdminAccountsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListOrganizationAdminAccountsOutput = schema.new({
   id = id.from(_N, "ListOrganizationAdminAccountsResponse"),
   type = "structure",
   members = {
      Administrators = schema.new({
         id = id.from(_N, "ListOrganizationAdminAccountsOutput", "Administrators"),
         type = "list",
         name = "Administrators",
         target_id = prelude.Document.id,
         list_member = M.Administrator,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListOrganizationAdminAccountsOutput", "NextToken"),
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
            [traits.HTTP_LABEL] = {},
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
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.RejectInvitationInput = schema.new({
   id = id.from(_N, "RejectInvitationRequest"),
   type = "structure",
   members = {
      GraphArn = schema.new({
         id = id.from(_N, "RejectInvitationInput", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RejectInvitationOutput = prelude.Unit

M.StartInvestigationInput = schema.new({
   id = id.from(_N, "StartInvestigationRequest"),
   type = "structure",
   members = {
      GraphArn = schema.new({
         id = id.from(_N, "StartInvestigationInput", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EntityArn = schema.new({
         id = id.from(_N, "StartInvestigationInput", "EntityArn"),
         type = "string",
         name = "EntityArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ScopeStartTime = schema.new({
         id = id.from(_N, "StartInvestigationInput", "ScopeStartTime"),
         type = "timestamp",
         name = "ScopeStartTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ScopeEndTime = schema.new({
         id = id.from(_N, "StartInvestigationInput", "ScopeEndTime"),
         type = "timestamp",
         name = "ScopeEndTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartInvestigationOutput = schema.new({
   id = id.from(_N, "StartInvestigationResponse"),
   type = "structure",
   members = {
      InvestigationId = schema.new({
         id = id.from(_N, "StartInvestigationOutput", "InvestigationId"),
         type = "string",
         name = "InvestigationId",
         target_id = prelude.String.id,
      }),
   },
})

M.StartMonitoringMemberInput = schema.new({
   id = id.from(_N, "StartMonitoringMemberRequest"),
   type = "structure",
   members = {
      GraphArn = schema.new({
         id = id.from(_N, "StartMonitoringMemberInput", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AccountId = schema.new({
         id = id.from(_N, "StartMonitoringMemberInput", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartMonitoringMemberOutput = prelude.Unit

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
            [traits.HTTP_LABEL] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "TagResourceInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
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
            [traits.HTTP_LABEL] = {},
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
            [traits.HTTP_QUERY] = { name = "tagKeys" },
         },
      }),
   },
})

M.UntagResourceOutput = schema.new({
   id = id.from(_N, "UntagResourceResponse"),
   type = "structure",
})

M.UpdateDatasourcePackagesInput = schema.new({
   id = id.from(_N, "UpdateDatasourcePackagesRequest"),
   type = "structure",
   members = {
      GraphArn = schema.new({
         id = id.from(_N, "UpdateDatasourcePackagesInput", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DatasourcePackages = schema.new({
         id = id.from(_N, "UpdateDatasourcePackagesInput", "DatasourcePackages"),
         type = "list",
         name = "DatasourcePackages",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateDatasourcePackagesOutput = prelude.Unit

M.UpdateInvestigationStateInput = schema.new({
   id = id.from(_N, "UpdateInvestigationStateRequest"),
   type = "structure",
   members = {
      GraphArn = schema.new({
         id = id.from(_N, "UpdateInvestigationStateInput", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InvestigationId = schema.new({
         id = id.from(_N, "UpdateInvestigationStateInput", "InvestigationId"),
         type = "string",
         name = "InvestigationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      State = schema.new({
         id = id.from(_N, "UpdateInvestigationStateInput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateInvestigationStateOutput = prelude.Unit

M.UpdateOrganizationConfigurationInput = schema.new({
   id = id.from(_N, "UpdateOrganizationConfigurationRequest"),
   type = "structure",
   members = {
      GraphArn = schema.new({
         id = id.from(_N, "UpdateOrganizationConfigurationInput", "GraphArn"),
         type = "string",
         name = "GraphArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AutoEnable = schema.new({
         id = id.from(_N, "UpdateOrganizationConfigurationInput", "AutoEnable"),
         type = "boolean",
         name = "AutoEnable",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.UpdateOrganizationConfigurationOutput = prelude.Unit


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
   id = id.from("com.amazonaws.detective", "AmazonDetective"),
   version = "2018-10-26",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AcceptInvitation = schema.operation({
   id = id.from("com.amazonaws.detective", "AcceptInvitation"),
   input = M.AcceptInvitationInput,
   output = M.AcceptInvitationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/invitation" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchGetGraphMemberDatasources = schema.operation({
   id = id.from("com.amazonaws.detective", "BatchGetGraphMemberDatasources"),
   input = M.BatchGetGraphMemberDatasourcesInput,
   output = M.BatchGetGraphMemberDatasourcesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/graph/datasources/get" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchGetMembershipDatasources = schema.operation({
   id = id.from("com.amazonaws.detective", "BatchGetMembershipDatasources"),
   input = M.BatchGetMembershipDatasourcesInput,
   output = M.BatchGetMembershipDatasourcesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/membership/datasources/get" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateGraph = schema.operation({
   id = id.from("com.amazonaws.detective", "CreateGraph"),
   input = M.CreateGraphInput,
   output = M.CreateGraphOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/graph" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateMembers = schema.operation({
   id = id.from("com.amazonaws.detective", "CreateMembers"),
   input = M.CreateMembersInput,
   output = M.CreateMembersOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/graph/members" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteGraph = schema.operation({
   id = id.from("com.amazonaws.detective", "DeleteGraph"),
   input = M.DeleteGraphInput,
   output = M.DeleteGraphOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/graph/removal" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteMembers = schema.operation({
   id = id.from("com.amazonaws.detective", "DeleteMembers"),
   input = M.DeleteMembersInput,
   output = M.DeleteMembersOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/graph/members/removal" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeOrganizationConfiguration = schema.operation({
   id = id.from("com.amazonaws.detective", "DescribeOrganizationConfiguration"),
   input = M.DescribeOrganizationConfigurationInput,
   output = M.DescribeOrganizationConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/orgs/describeOrganizationConfiguration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisableOrganizationAdminAccount = schema.operation({
   id = id.from("com.amazonaws.detective", "DisableOrganizationAdminAccount"),
   input = M.DisableOrganizationAdminAccountInput,
   output = M.DisableOrganizationAdminAccountOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/orgs/disableAdminAccount" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociateMembership = schema.operation({
   id = id.from("com.amazonaws.detective", "DisassociateMembership"),
   input = M.DisassociateMembershipInput,
   output = M.DisassociateMembershipOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/membership/removal" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.EnableOrganizationAdminAccount = schema.operation({
   id = id.from("com.amazonaws.detective", "EnableOrganizationAdminAccount"),
   input = M.EnableOrganizationAdminAccountInput,
   output = M.EnableOrganizationAdminAccountOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/orgs/enableAdminAccount" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetInvestigation = schema.operation({
   id = id.from("com.amazonaws.detective", "GetInvestigation"),
   input = M.GetInvestigationInput,
   output = M.GetInvestigationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/investigations/getInvestigation" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetMembers = schema.operation({
   id = id.from("com.amazonaws.detective", "GetMembers"),
   input = M.GetMembersInput,
   output = M.GetMembersOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/graph/members/get" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDatasourcePackages = schema.operation({
   id = id.from("com.amazonaws.detective", "ListDatasourcePackages"),
   input = M.ListDatasourcePackagesInput,
   output = M.ListDatasourcePackagesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/graph/datasources/list" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListGraphs = schema.operation({
   id = id.from("com.amazonaws.detective", "ListGraphs"),
   input = M.ListGraphsInput,
   output = M.ListGraphsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/graphs/list" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListIndicators = schema.operation({
   id = id.from("com.amazonaws.detective", "ListIndicators"),
   input = M.ListIndicatorsInput,
   output = M.ListIndicatorsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/investigations/listIndicators" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListInvestigations = schema.operation({
   id = id.from("com.amazonaws.detective", "ListInvestigations"),
   input = M.ListInvestigationsInput,
   output = M.ListInvestigationsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/investigations/listInvestigations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListInvitations = schema.operation({
   id = id.from("com.amazonaws.detective", "ListInvitations"),
   input = M.ListInvitationsInput,
   output = M.ListInvitationsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/invitations/list" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListMembers = schema.operation({
   id = id.from("com.amazonaws.detective", "ListMembers"),
   input = M.ListMembersInput,
   output = M.ListMembersOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/graph/members/list" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListOrganizationAdminAccounts = schema.operation({
   id = id.from("com.amazonaws.detective", "ListOrganizationAdminAccounts"),
   input = M.ListOrganizationAdminAccountsInput,
   output = M.ListOrganizationAdminAccountsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/orgs/adminAccountslist" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.detective", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RejectInvitation = schema.operation({
   id = id.from("com.amazonaws.detective", "RejectInvitation"),
   input = M.RejectInvitationInput,
   output = M.RejectInvitationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/invitation/removal" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartInvestigation = schema.operation({
   id = id.from("com.amazonaws.detective", "StartInvestigation"),
   input = M.StartInvestigationInput,
   output = M.StartInvestigationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/investigations/startInvestigation" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartMonitoringMember = schema.operation({
   id = id.from("com.amazonaws.detective", "StartMonitoringMember"),
   input = M.StartMonitoringMemberInput,
   output = M.StartMonitoringMemberOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/graph/member/monitoringstate" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.detective", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.detective", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateDatasourcePackages = schema.operation({
   id = id.from("com.amazonaws.detective", "UpdateDatasourcePackages"),
   input = M.UpdateDatasourcePackagesInput,
   output = M.UpdateDatasourcePackagesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/graph/datasources/update" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateInvestigationState = schema.operation({
   id = id.from("com.amazonaws.detective", "UpdateInvestigationState"),
   input = M.UpdateInvestigationStateInput,
   output = M.UpdateInvestigationStateOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/investigations/updateInvestigationState" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateOrganizationConfiguration = schema.operation({
   id = id.from("com.amazonaws.detective", "UpdateOrganizationConfiguration"),
   input = M.UpdateOrganizationConfigurationInput,
   output = M.UpdateOrganizationConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/orgs/updateOrganizationConfiguration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
