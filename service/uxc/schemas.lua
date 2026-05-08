

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.uxc"

local M = {}

M.ServiceList = schema.new({ type = "list", list_member = prelude.String })

M.RegionsList = schema.new({ type = "list", list_member = prelude.String })

M.ValidationExceptionFieldList = schema.new({ type = "list", list_member = M.ValidationExceptionField })

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

M.GetAccountCustomizationsInput = schema.new({
   id = id.from(_N, "GetAccountCustomizationsInput"),
   type = "structure",
})

M.GetAccountCustomizationsOutput = schema.new({
   id = id.from(_N, "GetAccountCustomizationsOutput"),
   type = "structure",
   members = {
      accountColor = schema.new({
         id = id.from(_N, "GetAccountCustomizationsOutput", "accountColor"),
         type = "string",
         name = "accountColor",
         target_id = prelude.String.id,
      }),
      visibleServices = schema.new({
         id = id.from(_N, "GetAccountCustomizationsOutput", "visibleServices"),
         type = "list",
         name = "visibleServices",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      visibleRegions = schema.new({
         id = id.from(_N, "GetAccountCustomizationsOutput", "visibleRegions"),
         type = "list",
         name = "visibleRegions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
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
      path = schema.new({
         id = id.from(_N, "ValidationExceptionField", "path"),
         type = "string",
         name = "path",
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
      fieldList = schema.new({
         id = id.from(_N, "ValidationException", "fieldList"),
         type = "list",
         name = "fieldList",
         target_id = prelude.Document.id,
         list_member = M.ValidationExceptionField,
      }),
   },
})

M.ListServicesInput = schema.new({
   id = id.from(_N, "ListServicesInput"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListServicesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListServicesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListServicesOutput = schema.new({
   id = id.from(_N, "ListServicesOutput"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListServicesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      services = schema.new({
         id = id.from(_N, "ListServicesOutput", "services"),
         type = "list",
         name = "services",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.UpdateAccountCustomizationsInput = schema.new({
   id = id.from(_N, "UpdateAccountCustomizationsInput"),
   type = "structure",
   members = {
      accountColor = schema.new({
         id = id.from(_N, "UpdateAccountCustomizationsInput", "accountColor"),
         type = "string",
         name = "accountColor",
         target_id = prelude.String.id,
      }),
      visibleServices = schema.new({
         id = id.from(_N, "UpdateAccountCustomizationsInput", "visibleServices"),
         type = "list",
         name = "visibleServices",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      visibleRegions = schema.new({
         id = id.from(_N, "UpdateAccountCustomizationsInput", "visibleRegions"),
         type = "list",
         name = "visibleRegions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.UpdateAccountCustomizationsOutput = schema.new({
   id = id.from(_N, "UpdateAccountCustomizationsOutput"),
   type = "structure",
   members = {
      accountColor = schema.new({
         id = id.from(_N, "UpdateAccountCustomizationsOutput", "accountColor"),
         type = "string",
         name = "accountColor",
         target_id = prelude.String.id,
      }),
      visibleServices = schema.new({
         id = id.from(_N, "UpdateAccountCustomizationsOutput", "visibleServices"),
         type = "list",
         name = "visibleServices",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      visibleRegions = schema.new({
         id = id.from(_N, "UpdateAccountCustomizationsOutput", "visibleRegions"),
         type = "list",
         name = "visibleRegions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
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
   id = id.from("com.amazonaws.uxc", "AWSAccountUXSetting"),
   version = "2024-07-01",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAccountCustomizations = schema.operation({
   id = id.from("com.amazonaws.uxc", "GetAccountCustomizations"),
   input = M.GetAccountCustomizationsInput,
   output = M.GetAccountCustomizationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/account-customizations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListServices = schema.operation({
   id = id.from("com.amazonaws.uxc", "ListServices"),
   input = M.ListServicesInput,
   output = M.ListServicesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/services" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateAccountCustomizations = schema.operation({
   id = id.from("com.amazonaws.uxc", "UpdateAccountCustomizations"),
   input = M.UpdateAccountCustomizationsInput,
   output = M.UpdateAccountCustomizationsOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/v1/account-customizations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
