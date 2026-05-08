

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.signerdata"

local M = {}

M.CertificateHashes = schema.new({ type = "list", list_member = prelude.String })

M.RevokedEntities = schema.new({ type = "list", list_member = prelude.String })

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
      }),
      code = schema.new({
         id = id.from(_N, "AccessDeniedException", "code"),
         type = "string",
         name = "code",
         target_id = prelude.String.id,
      }),
   },
})

M.GetRevocationStatusInput = schema.new({
   id = id.from(_N, "GetRevocationStatusRequest"),
   type = "structure",
   members = {
      signatureTimestamp = schema.new({
         id = id.from(_N, "GetRevocationStatusInput", "signatureTimestamp"),
         type = "timestamp",
         name = "signatureTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "signatureTimestamp" },
         },
      }),
      platformId = schema.new({
         id = id.from(_N, "GetRevocationStatusInput", "platformId"),
         type = "string",
         name = "platformId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "platformId" },
         },
      }),
      profileVersionArn = schema.new({
         id = id.from(_N, "GetRevocationStatusInput", "profileVersionArn"),
         type = "string",
         name = "profileVersionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "profileVersionArn" },
         },
      }),
      jobArn = schema.new({
         id = id.from(_N, "GetRevocationStatusInput", "jobArn"),
         type = "string",
         name = "jobArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "jobArn" },
         },
      }),
      certificateHashes = schema.new({
         id = id.from(_N, "GetRevocationStatusInput", "certificateHashes"),
         type = "list",
         name = "certificateHashes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "certificateHashes" },
         },
      }),
   },
})

M.GetRevocationStatusOutput = schema.new({
   id = id.from(_N, "GetRevocationStatusResponse"),
   type = "structure",
   members = {
      revokedEntities = schema.new({
         id = id.from(_N, "GetRevocationStatusOutput", "revokedEntities"),
         type = "list",
         name = "revokedEntities",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.InternalServiceErrorException = schema.new({
   id = id.from(_N, "InternalServiceErrorException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InternalServiceErrorException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "InternalServiceErrorException", "code"),
         type = "string",
         name = "code",
         target_id = prelude.String.id,
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
      message = schema.new({
         id = id.from(_N, "TooManyRequestsException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "TooManyRequestsException", "code"),
         type = "string",
         name = "code",
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
      message = schema.new({
         id = id.from(_N, "ValidationException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "ValidationException", "code"),
         type = "string",
         name = "code",
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
   id = id.from("com.amazonaws.signerdata", "SignerDataPlane"),
   version = "2017-08-25",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRevocationStatus = schema.operation({
   id = id.from("com.amazonaws.signerdata", "GetRevocationStatus"),
   input = M.GetRevocationStatusInput,
   output = M.GetRevocationStatusOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/revocations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
