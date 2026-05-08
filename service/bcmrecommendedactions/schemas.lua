

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.bcmrecommendedactions"

local M = {}

M.RecommendedActions = schema.new({ type = "list", list_member = M.RecommendedAction })

M.ValidationExceptionFieldList = schema.new({ type = "list", list_member = M.ValidationExceptionField })

M.ActionFilterList = schema.new({ type = "list", list_member = M.ActionFilter })

M.Context = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.NextSteps = schema.new({ type = "list", list_member = prelude.String })

M.FilterValues = schema.new({ type = "list", list_member = prelude.String })

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

M.ActionFilter = schema.new({
   id = id.from(_N, "ActionFilter"),
   type = "structure",
   members = {
      key = schema.new({
         id = id.from(_N, "ActionFilter", "key"),
         type = "string",
         name = "key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      matchOption = schema.new({
         id = id.from(_N, "ActionFilter", "matchOption"),
         type = "string",
         name = "matchOption",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      values = schema.new({
         id = id.from(_N, "ActionFilter", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
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

M.RequestFilter = schema.new({
   id = id.from(_N, "RequestFilter"),
   type = "structure",
   members = {
      actions = schema.new({
         id = id.from(_N, "RequestFilter", "actions"),
         type = "list",
         name = "actions",
         target_id = prelude.Document.id,
         list_member = M.ActionFilter,
      }),
   },
})

M.ListRecommendedActionsInput = schema.new({
   id = id.from(_N, "ListRecommendedActionsRequest"),
   type = "structure",
   members = {
      filter = schema.new({
         id = id.from(_N, "ListRecommendedActionsInput", "filter"),
         type = "structure",
         name = "filter",
         target_id = id.from(_N, "RequestFilter"),
         target = M.RequestFilter,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListRecommendedActionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListRecommendedActionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.RecommendedAction = schema.new({
   id = id.from(_N, "RecommendedAction"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "RecommendedAction", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
      }),
      type = schema.new({
         id = id.from(_N, "RecommendedAction", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      accountId = schema.new({
         id = id.from(_N, "RecommendedAction", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
      }),
      severity = schema.new({
         id = id.from(_N, "RecommendedAction", "severity"),
         type = "string",
         name = "severity",
         target_id = prelude.String.id,
      }),
      feature = schema.new({
         id = id.from(_N, "RecommendedAction", "feature"),
         type = "string",
         name = "feature",
         target_id = prelude.String.id,
      }),
      context = schema.new({
         id = id.from(_N, "RecommendedAction", "context"),
         type = "map",
         name = "context",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      nextSteps = schema.new({
         id = id.from(_N, "RecommendedAction", "nextSteps"),
         type = "list",
         name = "nextSteps",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      lastUpdatedTimeStamp = schema.new({
         id = id.from(_N, "RecommendedAction", "lastUpdatedTimeStamp"),
         type = "string",
         name = "lastUpdatedTimeStamp",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRecommendedActionsOutput = schema.new({
   id = id.from(_N, "ListRecommendedActionsResponse"),
   type = "structure",
   members = {
      recommendedActions = schema.new({
         id = id.from(_N, "ListRecommendedActionsOutput", "recommendedActions"),
         type = "list",
         name = "recommendedActions",
         target_id = prelude.Document.id,
         list_member = M.RecommendedAction,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListRecommendedActionsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
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

M.ValidationExceptionField = schema.new({
   id = id.from(_N, "ValidationExceptionField"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "ValidationExceptionField", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      message = schema.new({
         id = id.from(_N, "ValidationExceptionField", "message"),
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
      reason = schema.new({
         id = id.from(_N, "ValidationException", "reason"),
         type = "string",
         name = "reason",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      fieldList = schema.new({
         id = id.from(_N, "ValidationException", "fieldList"),
         type = "list",
         name = "fieldList",
         target_id = prelude.Document.id,
         list_member = M.ValidationExceptionField,
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
   id = id.from("com.amazonaws.bcmrecommendedactions", "AWSBillingAndCostManagementRecommendedActions"),
   version = "2024-11-14",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRecommendedActions = schema.operation({
   id = id.from("com.amazonaws.bcmrecommendedactions", "ListRecommendedActions"),
   input = M.ListRecommendedActionsInput,
   output = M.ListRecommendedActionsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
