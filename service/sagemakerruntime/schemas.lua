

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.sagemakerruntime"

local M = {}

M.InternalDependencyException = schema.new({
   id = id.from(_N, "InternalDependencyException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InternalDependencyException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.InternalFailure = schema.new({
   id = id.from(_N, "InternalFailure"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InternalFailure", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvokeEndpointInput = schema.new({
   id = id.from(_N, "InvokeEndpointInput"),
   type = "structure",
   members = {
      EndpointName = schema.new({
         id = id.from(_N, "InvokeEndpointInput", "EndpointName"),
         type = "string",
         name = "EndpointName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Body = schema.new({
         id = id.from(_N, "InvokeEndpointInput", "Body"),
         type = "blob",
         name = "Body",
         target_id = prelude.Blob.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      ContentType = schema.new({
         id = id.from(_N, "InvokeEndpointInput", "ContentType"),
         type = "string",
         name = "ContentType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Type" },
         },
      }),
      Accept = schema.new({
         id = id.from(_N, "InvokeEndpointInput", "Accept"),
         type = "string",
         name = "Accept",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Accept" },
         },
      }),
      CustomAttributes = schema.new({
         id = id.from(_N, "InvokeEndpointInput", "CustomAttributes"),
         type = "string",
         name = "CustomAttributes",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Custom-Attributes" },
         },
      }),
      TargetModel = schema.new({
         id = id.from(_N, "InvokeEndpointInput", "TargetModel"),
         type = "string",
         name = "TargetModel",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Target-Model" },
         },
      }),
      TargetVariant = schema.new({
         id = id.from(_N, "InvokeEndpointInput", "TargetVariant"),
         type = "string",
         name = "TargetVariant",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Target-Variant" },
         },
      }),
      TargetContainerHostname = schema.new({
         id = id.from(_N, "InvokeEndpointInput", "TargetContainerHostname"),
         type = "string",
         name = "TargetContainerHostname",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Target-Container-Hostname" },
         },
      }),
      InferenceId = schema.new({
         id = id.from(_N, "InvokeEndpointInput", "InferenceId"),
         type = "string",
         name = "InferenceId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Inference-Id" },
         },
      }),
      EnableExplanations = schema.new({
         id = id.from(_N, "InvokeEndpointInput", "EnableExplanations"),
         type = "string",
         name = "EnableExplanations",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Enable-Explanations" },
         },
      }),
      InferenceComponentName = schema.new({
         id = id.from(_N, "InvokeEndpointInput", "InferenceComponentName"),
         type = "string",
         name = "InferenceComponentName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Inference-Component" },
         },
      }),
      SessionId = schema.new({
         id = id.from(_N, "InvokeEndpointInput", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Session-Id" },
         },
      }),
   },
})

M.InvokeEndpointOutput = schema.new({
   id = id.from(_N, "InvokeEndpointOutput"),
   type = "structure",
   members = {
      Body = schema.new({
         id = id.from(_N, "InvokeEndpointOutput", "Body"),
         type = "blob",
         name = "Body",
         target_id = prelude.Blob.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      ContentType = schema.new({
         id = id.from(_N, "InvokeEndpointOutput", "ContentType"),
         type = "string",
         name = "ContentType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Type" },
         },
      }),
      InvokedProductionVariant = schema.new({
         id = id.from(_N, "InvokeEndpointOutput", "InvokedProductionVariant"),
         type = "string",
         name = "InvokedProductionVariant",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-Amzn-Invoked-Production-Variant" },
         },
      }),
      CustomAttributes = schema.new({
         id = id.from(_N, "InvokeEndpointOutput", "CustomAttributes"),
         type = "string",
         name = "CustomAttributes",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Custom-Attributes" },
         },
      }),
      NewSessionId = schema.new({
         id = id.from(_N, "InvokeEndpointOutput", "NewSessionId"),
         type = "string",
         name = "NewSessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-New-Session-Id" },
         },
      }),
      ClosedSessionId = schema.new({
         id = id.from(_N, "InvokeEndpointOutput", "ClosedSessionId"),
         type = "string",
         name = "ClosedSessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Closed-Session-Id" },
         },
      }),
   },
})

M.ModelError = schema.new({
   id = id.from(_N, "ModelError"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "ModelError", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      OriginalStatusCode = schema.new({
         id = id.from(_N, "ModelError", "OriginalStatusCode"),
         type = "integer",
         name = "OriginalStatusCode",
         target_id = prelude.Integer.id,
      }),
      OriginalMessage = schema.new({
         id = id.from(_N, "ModelError", "OriginalMessage"),
         type = "string",
         name = "OriginalMessage",
         target_id = prelude.String.id,
      }),
      LogStreamArn = schema.new({
         id = id.from(_N, "ModelError", "LogStreamArn"),
         type = "string",
         name = "LogStreamArn",
         target_id = prelude.String.id,
      }),
   },
})

M.ModelNotReadyException = schema.new({
   id = id.from(_N, "ModelNotReadyException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "ModelNotReadyException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.ServiceUnavailable = schema.new({
   id = id.from(_N, "ServiceUnavailable"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "ServiceUnavailable", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.ValidationError = schema.new({
   id = id.from(_N, "ValidationError"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "ValidationError", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvokeEndpointAsyncInput = schema.new({
   id = id.from(_N, "InvokeEndpointAsyncInput"),
   type = "structure",
   members = {
      EndpointName = schema.new({
         id = id.from(_N, "InvokeEndpointAsyncInput", "EndpointName"),
         type = "string",
         name = "EndpointName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ContentType = schema.new({
         id = id.from(_N, "InvokeEndpointAsyncInput", "ContentType"),
         type = "string",
         name = "ContentType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Content-Type" },
         },
      }),
      Accept = schema.new({
         id = id.from(_N, "InvokeEndpointAsyncInput", "Accept"),
         type = "string",
         name = "Accept",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Accept" },
         },
      }),
      CustomAttributes = schema.new({
         id = id.from(_N, "InvokeEndpointAsyncInput", "CustomAttributes"),
         type = "string",
         name = "CustomAttributes",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Custom-Attributes" },
         },
      }),
      InferenceId = schema.new({
         id = id.from(_N, "InvokeEndpointAsyncInput", "InferenceId"),
         type = "string",
         name = "InferenceId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Inference-Id" },
         },
      }),
      InputLocation = schema.new({
         id = id.from(_N, "InvokeEndpointAsyncInput", "InputLocation"),
         type = "string",
         name = "InputLocation",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-InputLocation" },
         },
      }),
      S3OutputPathExtension = schema.new({
         id = id.from(_N, "InvokeEndpointAsyncInput", "S3OutputPathExtension"),
         type = "string",
         name = "S3OutputPathExtension",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-S3OutputPathExtension" },
         },
      }),
      Filename = schema.new({
         id = id.from(_N, "InvokeEndpointAsyncInput", "Filename"),
         type = "string",
         name = "Filename",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Filename" },
         },
      }),
      RequestTTLSeconds = schema.new({
         id = id.from(_N, "InvokeEndpointAsyncInput", "RequestTTLSeconds"),
         type = "integer",
         name = "RequestTTLSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-RequestTTLSeconds" },
         },
      }),
      InvocationTimeoutSeconds = schema.new({
         id = id.from(_N, "InvokeEndpointAsyncInput", "InvocationTimeoutSeconds"),
         type = "integer",
         name = "InvocationTimeoutSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-InvocationTimeoutSeconds" },
         },
      }),
   },
})

M.InvokeEndpointAsyncOutput = schema.new({
   id = id.from(_N, "InvokeEndpointAsyncOutput"),
   type = "structure",
   members = {
      InferenceId = schema.new({
         id = id.from(_N, "InvokeEndpointAsyncOutput", "InferenceId"),
         type = "string",
         name = "InferenceId",
         target_id = prelude.String.id,
      }),
      OutputLocation = schema.new({
         id = id.from(_N, "InvokeEndpointAsyncOutput", "OutputLocation"),
         type = "string",
         name = "OutputLocation",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-OutputLocation" },
         },
      }),
      FailureLocation = schema.new({
         id = id.from(_N, "InvokeEndpointAsyncOutput", "FailureLocation"),
         type = "string",
         name = "FailureLocation",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-FailureLocation" },
         },
      }),
   },
})

M.InternalStreamFailure = schema.new({
   id = id.from(_N, "InternalStreamFailure"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InternalStreamFailure", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvokeEndpointWithResponseStreamInput = schema.new({
   id = id.from(_N, "InvokeEndpointWithResponseStreamInput"),
   type = "structure",
   members = {
      EndpointName = schema.new({
         id = id.from(_N, "InvokeEndpointWithResponseStreamInput", "EndpointName"),
         type = "string",
         name = "EndpointName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Body = schema.new({
         id = id.from(_N, "InvokeEndpointWithResponseStreamInput", "Body"),
         type = "blob",
         name = "Body",
         target_id = prelude.Blob.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      ContentType = schema.new({
         id = id.from(_N, "InvokeEndpointWithResponseStreamInput", "ContentType"),
         type = "string",
         name = "ContentType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Content-Type" },
         },
      }),
      Accept = schema.new({
         id = id.from(_N, "InvokeEndpointWithResponseStreamInput", "Accept"),
         type = "string",
         name = "Accept",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Accept" },
         },
      }),
      CustomAttributes = schema.new({
         id = id.from(_N, "InvokeEndpointWithResponseStreamInput", "CustomAttributes"),
         type = "string",
         name = "CustomAttributes",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Custom-Attributes" },
         },
      }),
      TargetVariant = schema.new({
         id = id.from(_N, "InvokeEndpointWithResponseStreamInput", "TargetVariant"),
         type = "string",
         name = "TargetVariant",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Target-Variant" },
         },
      }),
      TargetContainerHostname = schema.new({
         id = id.from(_N, "InvokeEndpointWithResponseStreamInput", "TargetContainerHostname"),
         type = "string",
         name = "TargetContainerHostname",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Target-Container-Hostname" },
         },
      }),
      InferenceId = schema.new({
         id = id.from(_N, "InvokeEndpointWithResponseStreamInput", "InferenceId"),
         type = "string",
         name = "InferenceId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Inference-Id" },
         },
      }),
      InferenceComponentName = schema.new({
         id = id.from(_N, "InvokeEndpointWithResponseStreamInput", "InferenceComponentName"),
         type = "string",
         name = "InferenceComponentName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Inference-Component" },
         },
      }),
      SessionId = schema.new({
         id = id.from(_N, "InvokeEndpointWithResponseStreamInput", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Session-Id" },
         },
      }),
   },
})

M.ModelStreamError = schema.new({
   id = id.from(_N, "ModelStreamError"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "ModelStreamError", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      ErrorCode = schema.new({
         id = id.from(_N, "ModelStreamError", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
      }),
   },
})

M.PayloadPart = schema.new({
   id = id.from(_N, "PayloadPart"),
   type = "structure",
   members = {
      Bytes = schema.new({
         id = id.from(_N, "PayloadPart", "Bytes"),
         type = "blob",
         name = "Bytes",
         target_id = prelude.Blob.id,
         traits = {
            [traits.EVENT_PAYLOAD] = {},
         },
      }),
   },
})

M.ResponseStream = schema.new({
   id = id.from(_N, "ResponseStream"),
   type = "union",
   members = {
      PayloadPart = schema.new({
         id = id.from(_N, "ResponseStream", "PayloadPart"),
         type = "structure",
         name = "PayloadPart",
         target_id = id.from(_N, "PayloadPart"),
         target = M.PayloadPart,
      }),
      ModelStreamError = schema.new({
         id = id.from(_N, "ResponseStream", "ModelStreamError"),
         type = "structure",
         name = "ModelStreamError",
         target_id = id.from(_N, "ModelStreamError"),
         target = M.ModelStreamError,
      }),
      InternalStreamFailure = schema.new({
         id = id.from(_N, "ResponseStream", "InternalStreamFailure"),
         type = "structure",
         name = "InternalStreamFailure",
         target_id = id.from(_N, "InternalStreamFailure"),
         target = M.InternalStreamFailure,
      }),
   },
})

M.InvokeEndpointWithResponseStreamOutput = schema.new({
   id = id.from(_N, "InvokeEndpointWithResponseStreamOutput"),
   type = "structure",
   members = {
      Body = schema.new({
         id = id.from(_N, "InvokeEndpointWithResponseStreamOutput", "Body"),
         type = "union",
         name = "Body",
         target_id = id.from(_N, "ResponseStream"),
         target = M.ResponseStream,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
            [traits.STREAMING] = {},
         },
         direct_traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_PAYLOAD] = {},
         },
      }),
      ContentType = schema.new({
         id = id.from(_N, "InvokeEndpointWithResponseStreamOutput", "ContentType"),
         type = "string",
         name = "ContentType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Content-Type" },
         },
      }),
      InvokedProductionVariant = schema.new({
         id = id.from(_N, "InvokeEndpointWithResponseStreamOutput", "InvokedProductionVariant"),
         type = "string",
         name = "InvokedProductionVariant",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-Amzn-Invoked-Production-Variant" },
         },
      }),
      CustomAttributes = schema.new({
         id = id.from(_N, "InvokeEndpointWithResponseStreamOutput", "CustomAttributes"),
         type = "string",
         name = "CustomAttributes",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-SageMaker-Custom-Attributes" },
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
   id = id.from("com.amazonaws.sagemakerruntime", "AmazonSageMakerRuntime"),
   version = "2017-05-13",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.InvokeEndpoint = schema.operation({
   id = id.from("com.amazonaws.sagemakerruntime", "InvokeEndpoint"),
   input = M.InvokeEndpointInput,
   output = M.InvokeEndpointOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/endpoints/{EndpointName}/invocations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.InvokeEndpointAsync = schema.operation({
   id = id.from("com.amazonaws.sagemakerruntime", "InvokeEndpointAsync"),
   input = M.InvokeEndpointAsyncInput,
   output = M.InvokeEndpointAsyncOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/endpoints/{EndpointName}/async-invocations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.InvokeEndpointWithResponseStream = schema.operation({
   id = id.from("com.amazonaws.sagemakerruntime", "InvokeEndpointWithResponseStream"),
   input = M.InvokeEndpointWithResponseStreamInput,
   output = M.InvokeEndpointWithResponseStreamOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/endpoints/{EndpointName}/invocations-response-stream" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.EVENT_STREAM] = M.ResponseStream,
   },
})

return M
