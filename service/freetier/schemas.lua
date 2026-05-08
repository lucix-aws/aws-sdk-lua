

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.freetier"

local M = {}

M.FreeTierUsages = schema.new({ type = "list", list_member = M.FreeTierUsage })

M.FilterActivityStatuses = schema.new({ type = "list", list_member = prelude.String })

M.Activities = schema.new({ type = "list", list_member = M.ActivitySummary })

M.Expressions = schema.new({ type = "list", list_member = M.Expression })

M.Values = schema.new({ type = "list", list_member = prelude.String })

M.MatchOptions = schema.new({ type = "list", list_member = prelude.String })

M.AccessDeniedException = schema.new({
   id = id.from(_N, "AccessDeniedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "AccessDeniedException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.MonetaryAmount = schema.new({
   id = id.from(_N, "MonetaryAmount"),
   type = "structure",
   members = {
      amount = schema.new({
         id = id.from(_N, "MonetaryAmount", "amount"),
         type = "double",
         name = "amount",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      unit = schema.new({
         id = id.from(_N, "MonetaryAmount", "unit"),
         type = "string",
         name = "unit",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ActivityReward = schema.new({
   id = id.from(_N, "ActivityReward"),
   type = "union",
   members = {
      credit = schema.new({
         id = id.from(_N, "ActivityReward", "credit"),
         type = "structure",
         name = "credit",
         target_id = id.from(_N, "MonetaryAmount"),
         target = M.MonetaryAmount,
      }),
   },
})

M.ActivitySummary = schema.new({
   id = id.from(_N, "ActivitySummary"),
   type = "structure",
   members = {
      activityId = schema.new({
         id = id.from(_N, "ActivitySummary", "activityId"),
         type = "string",
         name = "activityId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      title = schema.new({
         id = id.from(_N, "ActivitySummary", "title"),
         type = "string",
         name = "title",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      reward = schema.new({
         id = id.from(_N, "ActivitySummary", "reward"),
         type = "union",
         name = "reward",
         target_id = id.from(_N, "ActivityReward"),
         target = M.ActivityReward,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "ActivitySummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetAccountActivityInput = schema.new({
   id = id.from(_N, "GetAccountActivityRequest"),
   type = "structure",
   members = {
      activityId = schema.new({
         id = id.from(_N, "GetAccountActivityInput", "activityId"),
         type = "string",
         name = "activityId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      languageCode = schema.new({
         id = id.from(_N, "GetAccountActivityInput", "languageCode"),
         type = "string",
         name = "languageCode",
         target_id = prelude.String.id,
      }),
   },
})

M.GetAccountActivityOutput = schema.new({
   id = id.from(_N, "GetAccountActivityResponse"),
   type = "structure",
   members = {
      activityId = schema.new({
         id = id.from(_N, "GetAccountActivityOutput", "activityId"),
         type = "string",
         name = "activityId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      title = schema.new({
         id = id.from(_N, "GetAccountActivityOutput", "title"),
         type = "string",
         name = "title",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "GetAccountActivityOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "GetAccountActivityOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      instructionsUrl = schema.new({
         id = id.from(_N, "GetAccountActivityOutput", "instructionsUrl"),
         type = "string",
         name = "instructionsUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      reward = schema.new({
         id = id.from(_N, "GetAccountActivityOutput", "reward"),
         type = "union",
         name = "reward",
         target_id = id.from(_N, "ActivityReward"),
         target = M.ActivityReward,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      estimatedTimeToCompleteInMinutes = schema.new({
         id = id.from(_N, "GetAccountActivityOutput", "estimatedTimeToCompleteInMinutes"),
         type = "integer",
         name = "estimatedTimeToCompleteInMinutes",
         target_id = prelude.Integer.id,
      }),
      expiresAt = schema.new({
         id = id.from(_N, "GetAccountActivityOutput", "expiresAt"),
         type = "timestamp",
         name = "expiresAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      startedAt = schema.new({
         id = id.from(_N, "GetAccountActivityOutput", "startedAt"),
         type = "timestamp",
         name = "startedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      completedAt = schema.new({
         id = id.from(_N, "GetAccountActivityOutput", "completedAt"),
         type = "timestamp",
         name = "completedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
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
      message = schema.new({
         id = id.from(_N, "InternalServerException", "message"),
         type = "string",
         name = "message",
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
      message = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "message"),
         type = "string",
         name = "message",
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
      message = schema.new({
         id = id.from(_N, "ThrottlingException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
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
      message = schema.new({
         id = id.from(_N, "ValidationException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetAccountPlanStateInput = schema.new({
   id = id.from(_N, "GetAccountPlanStateRequest"),
   type = "structure",
})

M.GetAccountPlanStateOutput = schema.new({
   id = id.from(_N, "GetAccountPlanStateResponse"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "GetAccountPlanStateOutput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      accountPlanType = schema.new({
         id = id.from(_N, "GetAccountPlanStateOutput", "accountPlanType"),
         type = "string",
         name = "accountPlanType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      accountPlanStatus = schema.new({
         id = id.from(_N, "GetAccountPlanStateOutput", "accountPlanStatus"),
         type = "string",
         name = "accountPlanStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      accountPlanRemainingCredits = schema.new({
         id = id.from(_N, "GetAccountPlanStateOutput", "accountPlanRemainingCredits"),
         type = "structure",
         name = "accountPlanRemainingCredits",
         target_id = id.from(_N, "MonetaryAmount"),
         target = M.MonetaryAmount,
      }),
      accountPlanExpirationDate = schema.new({
         id = id.from(_N, "GetAccountPlanStateOutput", "accountPlanExpirationDate"),
         type = "timestamp",
         name = "accountPlanExpirationDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
   },
})

M.DimensionValues = schema.new({
   id = id.from(_N, "DimensionValues"),
   type = "structure",
   members = {
      Key = schema.new({
         id = id.from(_N, "DimensionValues", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Values = schema.new({
         id = id.from(_N, "DimensionValues", "Values"),
         type = "list",
         name = "Values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MatchOptions = schema.new({
         id = id.from(_N, "DimensionValues", "MatchOptions"),
         type = "list",
         name = "MatchOptions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FreeTierUsage = schema.new({
   id = id.from(_N, "FreeTierUsage"),
   type = "structure",
   members = {
      service = schema.new({
         id = id.from(_N, "FreeTierUsage", "service"),
         type = "string",
         name = "service",
         target_id = prelude.String.id,
      }),
      operation = schema.new({
         id = id.from(_N, "FreeTierUsage", "operation"),
         type = "string",
         name = "operation",
         target_id = prelude.String.id,
      }),
      usageType = schema.new({
         id = id.from(_N, "FreeTierUsage", "usageType"),
         type = "string",
         name = "usageType",
         target_id = prelude.String.id,
      }),
      region = schema.new({
         id = id.from(_N, "FreeTierUsage", "region"),
         type = "string",
         name = "region",
         target_id = prelude.String.id,
      }),
      actualUsageAmount = schema.new({
         id = id.from(_N, "FreeTierUsage", "actualUsageAmount"),
         type = "double",
         name = "actualUsageAmount",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      forecastedUsageAmount = schema.new({
         id = id.from(_N, "FreeTierUsage", "forecastedUsageAmount"),
         type = "double",
         name = "forecastedUsageAmount",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      limit = schema.new({
         id = id.from(_N, "FreeTierUsage", "limit"),
         type = "double",
         name = "limit",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      unit = schema.new({
         id = id.from(_N, "FreeTierUsage", "unit"),
         type = "string",
         name = "unit",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "FreeTierUsage", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      freeTierType = schema.new({
         id = id.from(_N, "FreeTierUsage", "freeTierType"),
         type = "string",
         name = "freeTierType",
         target_id = prelude.String.id,
      }),
   },
})

M.GetFreeTierUsageOutput = schema.new({
   id = id.from(_N, "GetFreeTierUsageResponse"),
   type = "structure",
   members = {
      freeTierUsages = schema.new({
         id = id.from(_N, "GetFreeTierUsageOutput", "freeTierUsages"),
         type = "list",
         name = "freeTierUsages",
         target_id = prelude.Document.id,
         list_member = M.FreeTierUsage,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "GetFreeTierUsageOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAccountActivitiesInput = schema.new({
   id = id.from(_N, "ListAccountActivitiesRequest"),
   type = "structure",
   members = {
      filterActivityStatuses = schema.new({
         id = id.from(_N, "ListAccountActivitiesInput", "filterActivityStatuses"),
         type = "list",
         name = "filterActivityStatuses",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAccountActivitiesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListAccountActivitiesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 10 },
         },
      }),
      languageCode = schema.new({
         id = id.from(_N, "ListAccountActivitiesInput", "languageCode"),
         type = "string",
         name = "languageCode",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAccountActivitiesOutput = schema.new({
   id = id.from(_N, "ListAccountActivitiesResponse"),
   type = "structure",
   members = {
      activities = schema.new({
         id = id.from(_N, "ListAccountActivitiesOutput", "activities"),
         type = "list",
         name = "activities",
         target_id = prelude.Document.id,
         list_member = M.ActivitySummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAccountActivitiesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpgradeAccountPlanInput = schema.new({
   id = id.from(_N, "UpgradeAccountPlanRequest"),
   type = "structure",
   members = {
      accountPlanType = schema.new({
         id = id.from(_N, "UpgradeAccountPlanInput", "accountPlanType"),
         type = "string",
         name = "accountPlanType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpgradeAccountPlanOutput = schema.new({
   id = id.from(_N, "UpgradeAccountPlanResponse"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "UpgradeAccountPlanOutput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      accountPlanType = schema.new({
         id = id.from(_N, "UpgradeAccountPlanOutput", "accountPlanType"),
         type = "string",
         name = "accountPlanType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      accountPlanStatus = schema.new({
         id = id.from(_N, "UpgradeAccountPlanOutput", "accountPlanStatus"),
         type = "string",
         name = "accountPlanStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Expression = schema.new({
   id = id.from(_N, "Expression"),
   type = "structure",
   members = {
      Or = schema.new({
         id = id.from(_N, "Expression", "Or"),
         type = "list",
         name = "Or",
         target_id = prelude.Document.id,
         list_member = M.Expression,
      }),
      And = schema.new({
         id = id.from(_N, "Expression", "And"),
         type = "list",
         name = "And",
         target_id = prelude.Document.id,
         list_member = M.Expression,
      }),
      Not = schema.new({
         id = id.from(_N, "Expression", "Not"),
         type = "structure",
         name = "Not",
         target_id = id.from(_N, "Expression"),
         target = M.Expression,
      }),
      Dimensions = schema.new({
         id = id.from(_N, "Expression", "Dimensions"),
         type = "structure",
         name = "Dimensions",
         target_id = id.from(_N, "DimensionValues"),
         target = M.DimensionValues,
      }),
   },
})

M.GetFreeTierUsageInput = schema.new({
   id = id.from(_N, "GetFreeTierUsageRequest"),
   type = "structure",
   members = {
      filter = schema.new({
         id = id.from(_N, "GetFreeTierUsageInput", "filter"),
         type = "structure",
         name = "filter",
         target_id = id.from(_N, "Expression"),
         target = M.Expression,
      }),
      maxResults = schema.new({
         id = id.from(_N, "GetFreeTierUsageInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 10 },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "GetFreeTierUsageInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
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
   id = id.from("com.amazonaws.freetier", "AWSFreeTierService"),
   version = "2023-09-07",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAccountActivity = schema.operation({
   id = id.from("com.amazonaws.freetier", "GetAccountActivity"),
   input = M.GetAccountActivityInput,
   output = M.GetAccountActivityOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAccountPlanState = schema.operation({
   id = id.from("com.amazonaws.freetier", "GetAccountPlanState"),
   input = M.GetAccountPlanStateInput,
   output = M.GetAccountPlanStateOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetFreeTierUsage = schema.operation({
   id = id.from("com.amazonaws.freetier", "GetFreeTierUsage"),
   input = M.GetFreeTierUsageInput,
   output = M.GetFreeTierUsageOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAccountActivities = schema.operation({
   id = id.from("com.amazonaws.freetier", "ListAccountActivities"),
   input = M.ListAccountActivitiesInput,
   output = M.ListAccountActivitiesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpgradeAccountPlan = schema.operation({
   id = id.from("com.amazonaws.freetier", "UpgradeAccountPlan"),
   input = M.UpgradeAccountPlanInput,
   output = M.UpgradeAccountPlanOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
