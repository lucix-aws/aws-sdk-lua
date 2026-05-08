

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.kinesisvideowebrtcstorage"

local M = {}

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
   },
})

M.ClientLimitExceededException = schema.new({
   id = id.from(_N, "ClientLimitExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ClientLimitExceededException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidArgumentException = schema.new({
   id = id.from(_N, "InvalidArgumentException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidArgumentException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.JoinStorageSessionInput = schema.new({
   id = id.from(_N, "JoinStorageSessionInput"),
   type = "structure",
   members = {
      channelArn = schema.new({
         id = id.from(_N, "JoinStorageSessionInput", "channelArn"),
         type = "string",
         name = "channelArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.JoinStorageSessionOutput = prelude.Unit

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
      }),
   },
})

M.JoinStorageSessionAsViewerInput = schema.new({
   id = id.from(_N, "JoinStorageSessionAsViewerInput"),
   type = "structure",
   members = {
      channelArn = schema.new({
         id = id.from(_N, "JoinStorageSessionAsViewerInput", "channelArn"),
         type = "string",
         name = "channelArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      clientId = schema.new({
         id = id.from(_N, "JoinStorageSessionAsViewerInput", "clientId"),
         type = "string",
         name = "clientId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.JoinStorageSessionAsViewerOutput = prelude.Unit


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
   id = id.from("com.amazonaws.kinesisvideowebrtcstorage", "AWSAcuityRoutingServiceLambda"),
   version = "2018-05-10",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.JoinStorageSession = schema.operation({
   id = id.from("com.amazonaws.kinesisvideowebrtcstorage", "JoinStorageSession"),
   input = M.JoinStorageSessionInput,
   output = M.JoinStorageSessionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/joinStorageSession" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.JoinStorageSessionAsViewer = schema.operation({
   id = id.from("com.amazonaws.kinesisvideowebrtcstorage", "JoinStorageSessionAsViewer"),
   input = M.JoinStorageSessionAsViewerInput,
   output = M.JoinStorageSessionAsViewerOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/joinStorageSessionAsViewer" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
