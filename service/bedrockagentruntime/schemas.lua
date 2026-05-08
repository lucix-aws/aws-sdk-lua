

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.bedrockagentruntime"

local M = {}

M.FlowExecutionErrors = schema.new({ type = "list", list_member = M.FlowExecutionError })

M.FlowExecutionEvents = schema.new({ type = "list", list_member = M.FlowExecutionEvent })

M.FlowExecutionSummaries = schema.new({ type = "list", list_member = M.FlowExecutionSummary })

M.FlowInputs = schema.new({ type = "list", list_member = M.FlowInput })

M.GeneratedQueries = schema.new({ type = "list", list_member = M.GeneratedQuery })

M.AgentActionGroups = schema.new({ type = "list", list_member = M.AgentActionGroup })

M.KnowledgeBases = schema.new({ type = "list", list_member = M.KnowledgeBase })

M.CollaboratorConfigurations = schema.new({ type = "list", list_member = M.CollaboratorConfiguration })

M.Collaborators = schema.new({ type = "list", list_member = M.Collaborator })

M.Memories = schema.new({ type = "list", list_member = M.Memory })

M.RerankQueriesList = schema.new({ type = "list", list_member = M.RerankQuery })

M.RerankSourcesList = schema.new({ type = "list", list_member = M.RerankSource })

M.RerankResultsList = schema.new({ type = "list", list_member = M.RerankResult })

M.Citations = schema.new({ type = "list", list_member = M.Citation })

M.KnowledgeBaseRetrievalResults = schema.new({ type = "list", list_member = M.KnowledgeBaseRetrievalResult })

M.SessionSummaries = schema.new({ type = "list", list_member = M.SessionSummary })

M.SessionMetadataMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.TagsMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.InvocationSummaries = schema.new({ type = "list", list_member = M.InvocationSummary })

M.InvocationStepSummaries = schema.new({ type = "list", list_member = M.InvocationStepSummary })

M.SessionAttributesMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.PromptSessionAttributesMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ReturnControlInvocationResults = schema.new({ type = "list", list_member = M.InvocationResultMember })

M.InputFiles = schema.new({ type = "list", list_member = M.InputFile })

M.KnowledgeBaseConfigurations = schema.new({ type = "list", list_member = M.KnowledgeBaseConfiguration })

M.PromptConfigurations = schema.new({ type = "list", list_member = M.PromptConfiguration })

M.BedrockSessionContentBlocks = schema.new({ type = "list", list_member = M.BedrockSessionContentBlock })

M.Messages = schema.new({ type = "list", list_member = M.Message })

M.CallerChain = schema.new({ type = "list", list_member = M.Caller })

M.InvocationInputs = schema.new({ type = "list", list_member = M.InvocationInputMember })

M.OutputFiles = schema.new({ type = "list", list_member = M.OutputFile })

M.ActionGroupSignatureParams = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ExternalSources = schema.new({ type = "list", list_member = M.ExternalSource })

M.RetrievedReferences = schema.new({ type = "list", list_member = M.RetrievedReference })

M.RetrievalResultMetadata = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.Document })

M.FlowInputFields = schema.new({ type = "list", list_member = M.FlowInputField })

M.FlowOutputFields = schema.new({ type = "list", list_member = M.FlowOutputField })

M.NodeInputFields = schema.new({ type = "list", list_member = M.NodeInputField })

M.NodeOutputFields = schema.new({ type = "list", list_member = M.NodeOutputField })

M.SatisfiedConditions = schema.new({ type = "list", list_member = M.SatisfiedCondition })

M.Functions = schema.new({ type = "list", list_member = M.FunctionDefinition })

M.AdditionalModelRequestFields = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.Document })

M.RetrievalFilterList = schema.new({ type = "list", list_member = M.RetrievalFilter })

M.MetadataAttributeSchemaList = schema.new({ type = "list", list_member = M.MetadataAttributeSchema })

M.RetrievalResultContentRow = schema.new({ type = "list", list_member = M.RetrievalResultContentColumn })

M.AgentTraces = schema.new({ type = "list", list_member = M.TracePart })

M.FlowTraceNodeInputFields = schema.new({ type = "list", list_member = M.FlowTraceNodeInputField })

M.FlowTraceNodeOutputFields = schema.new({ type = "list", list_member = M.FlowTraceNodeOutputField })

M.FlowTraceConditions = schema.new({ type = "list", list_member = M.FlowTraceCondition })

M.ResponseBody = schema.new({ type = "map", map_key = prelude.String, map_value = M.ContentBody })

M.ContentBlocks = schema.new({ type = "list", list_member = M.ContentBlock })

M.GuardrailAssessmentList = schema.new({ type = "list", list_member = M.GuardrailAssessment })

M.StopSequences = schema.new({ type = "list", list_member = prelude.String })

M.NodeInputExecutionChain = schema.new({ type = "list", list_member = M.NodeInputExecutionChainItem })

M.NodeOutputNextList = schema.new({ type = "list", list_member = M.NodeOutputNext })

M.ApiParameters = schema.new({ type = "list", list_member = M.ApiParameter })

M.FunctionParameters = schema.new({ type = "list", list_member = M.FunctionParameter })

M.ParameterMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.ParameterDetail })

M.RAGStopSequences = schema.new({ type = "list", list_member = prelude.String })

M.FlowTraceNodeInputExecutionChain = schema.new({ type = "list", list_member = M.FlowTraceNodeInputExecutionChainItem })

M.FlowTraceNodeOutputNextList = schema.new({ type = "list", list_member = M.FlowTraceNodeOutputNext })

M.ImageInputs = schema.new({ type = "list", list_member = M.ImageInput })

M.Parameters = schema.new({ type = "list", list_member = M.Parameter })

M.Files = schema.new({ type = "list", list_member = prelude.String })

M.ApiContentMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.PropertyParameters })

M.FieldsForReranking = schema.new({ type = "list", list_member = M.FieldForReranking })

M.GuardrailTopicList = schema.new({ type = "list", list_member = M.GuardrailTopic })

M.GuardrailContentFilterList = schema.new({ type = "list", list_member = M.GuardrailContentFilter })

M.GuardrailCustomWordList = schema.new({ type = "list", list_member = M.GuardrailCustomWord })

M.GuardrailManagedWordList = schema.new({ type = "list", list_member = M.GuardrailManagedWord })

M.GuardrailPiiEntityFilterList = schema.new({ type = "list", list_member = M.GuardrailPiiEntityFilter })

M.GuardrailRegexFilterList = schema.new({ type = "list", list_member = M.GuardrailRegexFilter })

M.ContentMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.Parameters })

M.ParameterList = schema.new({ type = "list", list_member = M.Parameter })

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

M.ActionGroupExecutor = schema.new({
   id = id.from(_N, "ActionGroupExecutor"),
   type = "union",
   members = {
      lambda = schema.new({
         id = id.from(_N, "ActionGroupExecutor", "lambda"),
         type = "string",
         name = "lambda",
         target_id = prelude.String.id,
      }),
      customControl = schema.new({
         id = id.from(_N, "ActionGroupExecutor", "customControl"),
         type = "string",
         name = "customControl",
         target_id = prelude.String.id,
      }),
   },
})

M.Parameter = schema.new({
   id = id.from(_N, "Parameter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "Parameter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      type = schema.new({
         id = id.from(_N, "Parameter", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      value = schema.new({
         id = id.from(_N, "Parameter", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
      }),
   },
})

M.RequestBody = schema.new({
   id = id.from(_N, "RequestBody"),
   type = "structure",
   members = {
      content = schema.new({
         id = id.from(_N, "RequestBody", "content"),
         type = "map",
         name = "content",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = M.Parameter }),
      }),
   },
})

M.ActionGroupInvocationInput = schema.new({
   id = id.from(_N, "ActionGroupInvocationInput"),
   type = "structure",
   members = {
      actionGroupName = schema.new({
         id = id.from(_N, "ActionGroupInvocationInput", "actionGroupName"),
         type = "string",
         name = "actionGroupName",
         target_id = prelude.String.id,
      }),
      verb = schema.new({
         id = id.from(_N, "ActionGroupInvocationInput", "verb"),
         type = "string",
         name = "verb",
         target_id = prelude.String.id,
      }),
      apiPath = schema.new({
         id = id.from(_N, "ActionGroupInvocationInput", "apiPath"),
         type = "string",
         name = "apiPath",
         target_id = prelude.String.id,
      }),
      parameters = schema.new({
         id = id.from(_N, "ActionGroupInvocationInput", "parameters"),
         type = "list",
         name = "parameters",
         target_id = prelude.Document.id,
         list_member = M.Parameter,
      }),
      requestBody = schema.new({
         id = id.from(_N, "ActionGroupInvocationInput", "requestBody"),
         type = "structure",
         name = "requestBody",
         target_id = id.from(_N, "RequestBody"),
         target = M.RequestBody,
      }),
      ["function"] = schema.new({
         id = id.from(_N, "ActionGroupInvocationInput", "function"),
         type = "string",
         name = "function",
         target_id = prelude.String.id,
      }),
      executionType = schema.new({
         id = id.from(_N, "ActionGroupInvocationInput", "executionType"),
         type = "string",
         name = "executionType",
         target_id = prelude.String.id,
      }),
      invocationId = schema.new({
         id = id.from(_N, "ActionGroupInvocationInput", "invocationId"),
         type = "string",
         name = "invocationId",
         target_id = prelude.String.id,
      }),
   },
})

M.Usage = schema.new({
   id = id.from(_N, "Usage"),
   type = "structure",
   members = {
      inputTokens = schema.new({
         id = id.from(_N, "Usage", "inputTokens"),
         type = "integer",
         name = "inputTokens",
         target_id = prelude.Integer.id,
      }),
      outputTokens = schema.new({
         id = id.from(_N, "Usage", "outputTokens"),
         type = "integer",
         name = "outputTokens",
         target_id = prelude.Integer.id,
      }),
   },
})

M.Metadata = schema.new({
   id = id.from(_N, "Metadata"),
   type = "structure",
   members = {
      startTime = schema.new({
         id = id.from(_N, "Metadata", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "Metadata", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      totalTimeMs = schema.new({
         id = id.from(_N, "Metadata", "totalTimeMs"),
         type = "long",
         name = "totalTimeMs",
         target_id = prelude.Long.id,
      }),
      operationTotalTimeMs = schema.new({
         id = id.from(_N, "Metadata", "operationTotalTimeMs"),
         type = "long",
         name = "operationTotalTimeMs",
         target_id = prelude.Long.id,
      }),
      clientRequestId = schema.new({
         id = id.from(_N, "Metadata", "clientRequestId"),
         type = "string",
         name = "clientRequestId",
         target_id = prelude.String.id,
      }),
      usage = schema.new({
         id = id.from(_N, "Metadata", "usage"),
         type = "structure",
         name = "usage",
         target_id = id.from(_N, "Usage"),
         target = M.Usage,
      }),
   },
})

M.ActionGroupInvocationOutput = schema.new({
   id = id.from(_N, "ActionGroupInvocationOutput"),
   type = "structure",
   members = {
      text = schema.new({
         id = id.from(_N, "ActionGroupInvocationOutput", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
      }),
      metadata = schema.new({
         id = id.from(_N, "ActionGroupInvocationOutput", "metadata"),
         type = "structure",
         name = "metadata",
         target_id = id.from(_N, "Metadata"),
         target = M.Metadata,
      }),
   },
})

M.S3Identifier = schema.new({
   id = id.from(_N, "S3Identifier"),
   type = "structure",
   members = {
      s3BucketName = schema.new({
         id = id.from(_N, "S3Identifier", "s3BucketName"),
         type = "string",
         name = "s3BucketName",
         target_id = prelude.String.id,
      }),
      s3ObjectKey = schema.new({
         id = id.from(_N, "S3Identifier", "s3ObjectKey"),
         type = "string",
         name = "s3ObjectKey",
         target_id = prelude.String.id,
      }),
   },
})

M.APISchema = schema.new({
   id = id.from(_N, "APISchema"),
   type = "union",
   members = {
      s3 = schema.new({
         id = id.from(_N, "APISchema", "s3"),
         type = "structure",
         name = "s3",
         target_id = id.from(_N, "S3Identifier"),
         target = M.S3Identifier,
      }),
      payload = schema.new({
         id = id.from(_N, "APISchema", "payload"),
         type = "string",
         name = "payload",
         target_id = prelude.String.id,
      }),
   },
})

M.ParameterDetail = schema.new({
   id = id.from(_N, "ParameterDetail"),
   type = "structure",
   members = {
      description = schema.new({
         id = id.from(_N, "ParameterDetail", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      type = schema.new({
         id = id.from(_N, "ParameterDetail", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      required = schema.new({
         id = id.from(_N, "ParameterDetail", "required"),
         type = "boolean",
         name = "required",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.FunctionDefinition = schema.new({
   id = id.from(_N, "FunctionDefinition"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "FunctionDefinition", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "FunctionDefinition", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      parameters = schema.new({
         id = id.from(_N, "FunctionDefinition", "parameters"),
         type = "map",
         name = "parameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.ParameterDetail,
      }),
      requireConfirmation = schema.new({
         id = id.from(_N, "FunctionDefinition", "requireConfirmation"),
         type = "string",
         name = "requireConfirmation",
         target_id = prelude.String.id,
      }),
   },
})

M.FunctionSchema = schema.new({
   id = id.from(_N, "FunctionSchema"),
   type = "union",
   members = {
      functions = schema.new({
         id = id.from(_N, "FunctionSchema", "functions"),
         type = "list",
         name = "functions",
         target_id = prelude.Document.id,
         list_member = M.FunctionDefinition,
      }),
   },
})

M.AgentActionGroup = schema.new({
   id = id.from(_N, "AgentActionGroup"),
   type = "structure",
   members = {
      actionGroupName = schema.new({
         id = id.from(_N, "AgentActionGroup", "actionGroupName"),
         type = "string",
         name = "actionGroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "AgentActionGroup", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      parentActionGroupSignature = schema.new({
         id = id.from(_N, "AgentActionGroup", "parentActionGroupSignature"),
         type = "string",
         name = "parentActionGroupSignature",
         target_id = prelude.String.id,
      }),
      actionGroupExecutor = schema.new({
         id = id.from(_N, "AgentActionGroup", "actionGroupExecutor"),
         type = "union",
         name = "actionGroupExecutor",
         target_id = id.from(_N, "ActionGroupExecutor"),
         target = M.ActionGroupExecutor,
      }),
      apiSchema = schema.new({
         id = id.from(_N, "AgentActionGroup", "apiSchema"),
         type = "union",
         name = "apiSchema",
         target_id = id.from(_N, "APISchema"),
         target = M.APISchema,
      }),
      functionSchema = schema.new({
         id = id.from(_N, "AgentActionGroup", "functionSchema"),
         type = "union",
         name = "functionSchema",
         target_id = id.from(_N, "FunctionSchema"),
         target = M.FunctionSchema,
      }),
      parentActionGroupSignatureParams = schema.new({
         id = id.from(_N, "AgentActionGroup", "parentActionGroupSignatureParams"),
         type = "map",
         name = "parentActionGroupSignatureParams",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ImageInputSource = schema.new({
   id = id.from(_N, "ImageInputSource"),
   type = "union",
   members = {
      bytes = schema.new({
         id = id.from(_N, "ImageInputSource", "bytes"),
         type = "blob",
         name = "bytes",
         target_id = prelude.Blob.id,
      }),
   },
})

M.ImageInput = schema.new({
   id = id.from(_N, "ImageInput"),
   type = "structure",
   members = {
      format = schema.new({
         id = id.from(_N, "ImageInput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      source = schema.new({
         id = id.from(_N, "ImageInput", "source"),
         type = "union",
         name = "source",
         target_id = id.from(_N, "ImageInputSource"),
         target = M.ImageInputSource,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ContentBody = schema.new({
   id = id.from(_N, "ContentBody"),
   type = "structure",
   members = {
      body = schema.new({
         id = id.from(_N, "ContentBody", "body"),
         type = "string",
         name = "body",
         target_id = prelude.String.id,
      }),
      images = schema.new({
         id = id.from(_N, "ContentBody", "images"),
         type = "list",
         name = "images",
         target_id = prelude.Document.id,
         list_member = M.ImageInput,
      }),
   },
})

M.ApiResult = schema.new({
   id = id.from(_N, "ApiResult"),
   type = "structure",
   members = {
      actionGroup = schema.new({
         id = id.from(_N, "ApiResult", "actionGroup"),
         type = "string",
         name = "actionGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      httpMethod = schema.new({
         id = id.from(_N, "ApiResult", "httpMethod"),
         type = "string",
         name = "httpMethod",
         target_id = prelude.String.id,
      }),
      apiPath = schema.new({
         id = id.from(_N, "ApiResult", "apiPath"),
         type = "string",
         name = "apiPath",
         target_id = prelude.String.id,
      }),
      confirmationState = schema.new({
         id = id.from(_N, "ApiResult", "confirmationState"),
         type = "string",
         name = "confirmationState",
         target_id = prelude.String.id,
      }),
      responseState = schema.new({
         id = id.from(_N, "ApiResult", "responseState"),
         type = "string",
         name = "responseState",
         target_id = prelude.String.id,
      }),
      httpStatusCode = schema.new({
         id = id.from(_N, "ApiResult", "httpStatusCode"),
         type = "integer",
         name = "httpStatusCode",
         target_id = prelude.Integer.id,
      }),
      responseBody = schema.new({
         id = id.from(_N, "ApiResult", "responseBody"),
         type = "map",
         name = "responseBody",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.ContentBody,
      }),
      agentId = schema.new({
         id = id.from(_N, "ApiResult", "agentId"),
         type = "string",
         name = "agentId",
         target_id = prelude.String.id,
      }),
   },
})

M.FunctionResult = schema.new({
   id = id.from(_N, "FunctionResult"),
   type = "structure",
   members = {
      actionGroup = schema.new({
         id = id.from(_N, "FunctionResult", "actionGroup"),
         type = "string",
         name = "actionGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      confirmationState = schema.new({
         id = id.from(_N, "FunctionResult", "confirmationState"),
         type = "string",
         name = "confirmationState",
         target_id = prelude.String.id,
      }),
      ["function"] = schema.new({
         id = id.from(_N, "FunctionResult", "function"),
         type = "string",
         name = "function",
         target_id = prelude.String.id,
      }),
      responseBody = schema.new({
         id = id.from(_N, "FunctionResult", "responseBody"),
         type = "map",
         name = "responseBody",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.ContentBody,
      }),
      responseState = schema.new({
         id = id.from(_N, "FunctionResult", "responseState"),
         type = "string",
         name = "responseState",
         target_id = prelude.String.id,
      }),
      agentId = schema.new({
         id = id.from(_N, "FunctionResult", "agentId"),
         type = "string",
         name = "agentId",
         target_id = prelude.String.id,
      }),
   },
})

M.InvocationResultMember = schema.new({
   id = id.from(_N, "InvocationResultMember"),
   type = "union",
   members = {
      apiResult = schema.new({
         id = id.from(_N, "InvocationResultMember", "apiResult"),
         type = "structure",
         name = "apiResult",
         target_id = id.from(_N, "ApiResult"),
         target = M.ApiResult,
      }),
      functionResult = schema.new({
         id = id.from(_N, "InvocationResultMember", "functionResult"),
         type = "structure",
         name = "functionResult",
         target_id = id.from(_N, "FunctionResult"),
         target = M.FunctionResult,
      }),
   },
})

M.ReturnControlResults = schema.new({
   id = id.from(_N, "ReturnControlResults"),
   type = "structure",
   members = {
      invocationId = schema.new({
         id = id.from(_N, "ReturnControlResults", "invocationId"),
         type = "string",
         name = "invocationId",
         target_id = prelude.String.id,
      }),
      returnControlInvocationResults = schema.new({
         id = id.from(_N, "ReturnControlResults", "returnControlInvocationResults"),
         type = "list",
         name = "returnControlInvocationResults",
         target_id = prelude.Document.id,
         list_member = M.InvocationResultMember,
      }),
   },
})

M.AgentCollaboratorInputPayload = schema.new({
   id = id.from(_N, "AgentCollaboratorInputPayload"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "AgentCollaboratorInputPayload", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      text = schema.new({
         id = id.from(_N, "AgentCollaboratorInputPayload", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
      }),
      returnControlResults = schema.new({
         id = id.from(_N, "AgentCollaboratorInputPayload", "returnControlResults"),
         type = "structure",
         name = "returnControlResults",
         target_id = id.from(_N, "ReturnControlResults"),
         target = M.ReturnControlResults,
      }),
   },
})

M.AgentCollaboratorInvocationInput = schema.new({
   id = id.from(_N, "AgentCollaboratorInvocationInput"),
   type = "structure",
   members = {
      agentCollaboratorName = schema.new({
         id = id.from(_N, "AgentCollaboratorInvocationInput", "agentCollaboratorName"),
         type = "string",
         name = "agentCollaboratorName",
         target_id = prelude.String.id,
      }),
      agentCollaboratorAliasArn = schema.new({
         id = id.from(_N, "AgentCollaboratorInvocationInput", "agentCollaboratorAliasArn"),
         type = "string",
         name = "agentCollaboratorAliasArn",
         target_id = prelude.String.id,
      }),
      input = schema.new({
         id = id.from(_N, "AgentCollaboratorInvocationInput", "input"),
         type = "structure",
         name = "input",
         target_id = id.from(_N, "AgentCollaboratorInputPayload"),
         target = M.AgentCollaboratorInputPayload,
      }),
   },
})

M.ApiParameter = schema.new({
   id = id.from(_N, "ApiParameter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "ApiParameter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      type = schema.new({
         id = id.from(_N, "ApiParameter", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      value = schema.new({
         id = id.from(_N, "ApiParameter", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
      }),
   },
})

M.PropertyParameters = schema.new({
   id = id.from(_N, "PropertyParameters"),
   type = "structure",
   members = {
      properties = schema.new({
         id = id.from(_N, "PropertyParameters", "properties"),
         type = "list",
         name = "properties",
         target_id = prelude.Document.id,
         list_member = M.Parameter,
      }),
   },
})

M.ApiRequestBody = schema.new({
   id = id.from(_N, "ApiRequestBody"),
   type = "structure",
   members = {
      content = schema.new({
         id = id.from(_N, "ApiRequestBody", "content"),
         type = "map",
         name = "content",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.PropertyParameters,
      }),
   },
})

M.ApiInvocationInput = schema.new({
   id = id.from(_N, "ApiInvocationInput"),
   type = "structure",
   members = {
      actionGroup = schema.new({
         id = id.from(_N, "ApiInvocationInput", "actionGroup"),
         type = "string",
         name = "actionGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      httpMethod = schema.new({
         id = id.from(_N, "ApiInvocationInput", "httpMethod"),
         type = "string",
         name = "httpMethod",
         target_id = prelude.String.id,
      }),
      apiPath = schema.new({
         id = id.from(_N, "ApiInvocationInput", "apiPath"),
         type = "string",
         name = "apiPath",
         target_id = prelude.String.id,
      }),
      parameters = schema.new({
         id = id.from(_N, "ApiInvocationInput", "parameters"),
         type = "list",
         name = "parameters",
         target_id = prelude.Document.id,
         list_member = M.ApiParameter,
      }),
      requestBody = schema.new({
         id = id.from(_N, "ApiInvocationInput", "requestBody"),
         type = "structure",
         name = "requestBody",
         target_id = id.from(_N, "ApiRequestBody"),
         target = M.ApiRequestBody,
      }),
      actionInvocationType = schema.new({
         id = id.from(_N, "ApiInvocationInput", "actionInvocationType"),
         type = "string",
         name = "actionInvocationType",
         target_id = prelude.String.id,
      }),
      agentId = schema.new({
         id = id.from(_N, "ApiInvocationInput", "agentId"),
         type = "string",
         name = "agentId",
         target_id = prelude.String.id,
      }),
      collaboratorName = schema.new({
         id = id.from(_N, "ApiInvocationInput", "collaboratorName"),
         type = "string",
         name = "collaboratorName",
         target_id = prelude.String.id,
      }),
   },
})

M.FunctionParameter = schema.new({
   id = id.from(_N, "FunctionParameter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "FunctionParameter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      type = schema.new({
         id = id.from(_N, "FunctionParameter", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      value = schema.new({
         id = id.from(_N, "FunctionParameter", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
      }),
   },
})

M.FunctionInvocationInput = schema.new({
   id = id.from(_N, "FunctionInvocationInput"),
   type = "structure",
   members = {
      actionGroup = schema.new({
         id = id.from(_N, "FunctionInvocationInput", "actionGroup"),
         type = "string",
         name = "actionGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      parameters = schema.new({
         id = id.from(_N, "FunctionInvocationInput", "parameters"),
         type = "list",
         name = "parameters",
         target_id = prelude.Document.id,
         list_member = M.FunctionParameter,
      }),
      ["function"] = schema.new({
         id = id.from(_N, "FunctionInvocationInput", "function"),
         type = "string",
         name = "function",
         target_id = prelude.String.id,
      }),
      actionInvocationType = schema.new({
         id = id.from(_N, "FunctionInvocationInput", "actionInvocationType"),
         type = "string",
         name = "actionInvocationType",
         target_id = prelude.String.id,
      }),
      agentId = schema.new({
         id = id.from(_N, "FunctionInvocationInput", "agentId"),
         type = "string",
         name = "agentId",
         target_id = prelude.String.id,
      }),
      collaboratorName = schema.new({
         id = id.from(_N, "FunctionInvocationInput", "collaboratorName"),
         type = "string",
         name = "collaboratorName",
         target_id = prelude.String.id,
      }),
   },
})

M.InvocationInputMember = schema.new({
   id = id.from(_N, "InvocationInputMember"),
   type = "union",
   members = {
      apiInvocationInput = schema.new({
         id = id.from(_N, "InvocationInputMember", "apiInvocationInput"),
         type = "structure",
         name = "apiInvocationInput",
         target_id = id.from(_N, "ApiInvocationInput"),
         target = M.ApiInvocationInput,
      }),
      functionInvocationInput = schema.new({
         id = id.from(_N, "InvocationInputMember", "functionInvocationInput"),
         type = "structure",
         name = "functionInvocationInput",
         target_id = id.from(_N, "FunctionInvocationInput"),
         target = M.FunctionInvocationInput,
      }),
   },
})

M.ReturnControlPayload = schema.new({
   id = id.from(_N, "ReturnControlPayload"),
   type = "structure",
   members = {
      invocationInputs = schema.new({
         id = id.from(_N, "ReturnControlPayload", "invocationInputs"),
         type = "list",
         name = "invocationInputs",
         target_id = prelude.Document.id,
         list_member = M.InvocationInputMember,
      }),
      invocationId = schema.new({
         id = id.from(_N, "ReturnControlPayload", "invocationId"),
         type = "string",
         name = "invocationId",
         target_id = prelude.String.id,
      }),
   },
})

M.AgentCollaboratorOutputPayload = schema.new({
   id = id.from(_N, "AgentCollaboratorOutputPayload"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "AgentCollaboratorOutputPayload", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      text = schema.new({
         id = id.from(_N, "AgentCollaboratorOutputPayload", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
      }),
      returnControlPayload = schema.new({
         id = id.from(_N, "AgentCollaboratorOutputPayload", "returnControlPayload"),
         type = "structure",
         name = "returnControlPayload",
         target_id = id.from(_N, "ReturnControlPayload"),
         target = M.ReturnControlPayload,
      }),
   },
})

M.AgentCollaboratorInvocationOutput = schema.new({
   id = id.from(_N, "AgentCollaboratorInvocationOutput"),
   type = "structure",
   members = {
      agentCollaboratorName = schema.new({
         id = id.from(_N, "AgentCollaboratorInvocationOutput", "agentCollaboratorName"),
         type = "string",
         name = "agentCollaboratorName",
         target_id = prelude.String.id,
      }),
      agentCollaboratorAliasArn = schema.new({
         id = id.from(_N, "AgentCollaboratorInvocationOutput", "agentCollaboratorAliasArn"),
         type = "string",
         name = "agentCollaboratorAliasArn",
         target_id = prelude.String.id,
      }),
      output = schema.new({
         id = id.from(_N, "AgentCollaboratorInvocationOutput", "output"),
         type = "structure",
         name = "output",
         target_id = id.from(_N, "AgentCollaboratorOutputPayload"),
         target = M.AgentCollaboratorOutputPayload,
      }),
      metadata = schema.new({
         id = id.from(_N, "AgentCollaboratorInvocationOutput", "metadata"),
         type = "structure",
         name = "metadata",
         target_id = id.from(_N, "Metadata"),
         target = M.Metadata,
      }),
   },
})

M.Caller = schema.new({
   id = id.from(_N, "Caller"),
   type = "union",
   members = {
      agentAliasArn = schema.new({
         id = id.from(_N, "Caller", "agentAliasArn"),
         type = "string",
         name = "agentAliasArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CustomOrchestrationTraceEvent = schema.new({
   id = id.from(_N, "CustomOrchestrationTraceEvent"),
   type = "structure",
   members = {
      text = schema.new({
         id = id.from(_N, "CustomOrchestrationTraceEvent", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
      }),
   },
})

M.CustomOrchestrationTrace = schema.new({
   id = id.from(_N, "CustomOrchestrationTrace"),
   type = "structure",
   members = {
      traceId = schema.new({
         id = id.from(_N, "CustomOrchestrationTrace", "traceId"),
         type = "string",
         name = "traceId",
         target_id = prelude.String.id,
      }),
      event = schema.new({
         id = id.from(_N, "CustomOrchestrationTrace", "event"),
         type = "structure",
         name = "event",
         target_id = id.from(_N, "CustomOrchestrationTraceEvent"),
         target = M.CustomOrchestrationTraceEvent,
      }),
   },
})

M.FailureTrace = schema.new({
   id = id.from(_N, "FailureTrace"),
   type = "structure",
   members = {
      traceId = schema.new({
         id = id.from(_N, "FailureTrace", "traceId"),
         type = "string",
         name = "traceId",
         target_id = prelude.String.id,
      }),
      failureReason = schema.new({
         id = id.from(_N, "FailureTrace", "failureReason"),
         type = "string",
         name = "failureReason",
         target_id = prelude.String.id,
      }),
      failureCode = schema.new({
         id = id.from(_N, "FailureTrace", "failureCode"),
         type = "integer",
         name = "failureCode",
         target_id = prelude.Integer.id,
      }),
      metadata = schema.new({
         id = id.from(_N, "FailureTrace", "metadata"),
         type = "structure",
         name = "metadata",
         target_id = id.from(_N, "Metadata"),
         target = M.Metadata,
      }),
   },
})

M.GuardrailContentFilter = schema.new({
   id = id.from(_N, "GuardrailContentFilter"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "GuardrailContentFilter", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      confidence = schema.new({
         id = id.from(_N, "GuardrailContentFilter", "confidence"),
         type = "string",
         name = "confidence",
         target_id = prelude.String.id,
      }),
      action = schema.new({
         id = id.from(_N, "GuardrailContentFilter", "action"),
         type = "string",
         name = "action",
         target_id = prelude.String.id,
      }),
   },
})

M.GuardrailContentPolicyAssessment = schema.new({
   id = id.from(_N, "GuardrailContentPolicyAssessment"),
   type = "structure",
   members = {
      filters = schema.new({
         id = id.from(_N, "GuardrailContentPolicyAssessment", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.GuardrailContentFilter,
      }),
   },
})

M.GuardrailPiiEntityFilter = schema.new({
   id = id.from(_N, "GuardrailPiiEntityFilter"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "GuardrailPiiEntityFilter", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      match = schema.new({
         id = id.from(_N, "GuardrailPiiEntityFilter", "match"),
         type = "string",
         name = "match",
         target_id = prelude.String.id,
      }),
      action = schema.new({
         id = id.from(_N, "GuardrailPiiEntityFilter", "action"),
         type = "string",
         name = "action",
         target_id = prelude.String.id,
      }),
   },
})

M.GuardrailRegexFilter = schema.new({
   id = id.from(_N, "GuardrailRegexFilter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "GuardrailRegexFilter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      regex = schema.new({
         id = id.from(_N, "GuardrailRegexFilter", "regex"),
         type = "string",
         name = "regex",
         target_id = prelude.String.id,
      }),
      match = schema.new({
         id = id.from(_N, "GuardrailRegexFilter", "match"),
         type = "string",
         name = "match",
         target_id = prelude.String.id,
      }),
      action = schema.new({
         id = id.from(_N, "GuardrailRegexFilter", "action"),
         type = "string",
         name = "action",
         target_id = prelude.String.id,
      }),
   },
})

M.GuardrailSensitiveInformationPolicyAssessment = schema.new({
   id = id.from(_N, "GuardrailSensitiveInformationPolicyAssessment"),
   type = "structure",
   members = {
      piiEntities = schema.new({
         id = id.from(_N, "GuardrailSensitiveInformationPolicyAssessment", "piiEntities"),
         type = "list",
         name = "piiEntities",
         target_id = prelude.Document.id,
         list_member = M.GuardrailPiiEntityFilter,
      }),
      regexes = schema.new({
         id = id.from(_N, "GuardrailSensitiveInformationPolicyAssessment", "regexes"),
         type = "list",
         name = "regexes",
         target_id = prelude.Document.id,
         list_member = M.GuardrailRegexFilter,
      }),
   },
})

M.GuardrailTopic = schema.new({
   id = id.from(_N, "GuardrailTopic"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "GuardrailTopic", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      type = schema.new({
         id = id.from(_N, "GuardrailTopic", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      action = schema.new({
         id = id.from(_N, "GuardrailTopic", "action"),
         type = "string",
         name = "action",
         target_id = prelude.String.id,
      }),
   },
})

M.GuardrailTopicPolicyAssessment = schema.new({
   id = id.from(_N, "GuardrailTopicPolicyAssessment"),
   type = "structure",
   members = {
      topics = schema.new({
         id = id.from(_N, "GuardrailTopicPolicyAssessment", "topics"),
         type = "list",
         name = "topics",
         target_id = prelude.Document.id,
         list_member = M.GuardrailTopic,
      }),
   },
})

M.GuardrailCustomWord = schema.new({
   id = id.from(_N, "GuardrailCustomWord"),
   type = "structure",
   members = {
      match = schema.new({
         id = id.from(_N, "GuardrailCustomWord", "match"),
         type = "string",
         name = "match",
         target_id = prelude.String.id,
      }),
      action = schema.new({
         id = id.from(_N, "GuardrailCustomWord", "action"),
         type = "string",
         name = "action",
         target_id = prelude.String.id,
      }),
   },
})

M.GuardrailManagedWord = schema.new({
   id = id.from(_N, "GuardrailManagedWord"),
   type = "structure",
   members = {
      match = schema.new({
         id = id.from(_N, "GuardrailManagedWord", "match"),
         type = "string",
         name = "match",
         target_id = prelude.String.id,
      }),
      type = schema.new({
         id = id.from(_N, "GuardrailManagedWord", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      action = schema.new({
         id = id.from(_N, "GuardrailManagedWord", "action"),
         type = "string",
         name = "action",
         target_id = prelude.String.id,
      }),
   },
})

M.GuardrailWordPolicyAssessment = schema.new({
   id = id.from(_N, "GuardrailWordPolicyAssessment"),
   type = "structure",
   members = {
      customWords = schema.new({
         id = id.from(_N, "GuardrailWordPolicyAssessment", "customWords"),
         type = "list",
         name = "customWords",
         target_id = prelude.Document.id,
         list_member = M.GuardrailCustomWord,
      }),
      managedWordLists = schema.new({
         id = id.from(_N, "GuardrailWordPolicyAssessment", "managedWordLists"),
         type = "list",
         name = "managedWordLists",
         target_id = prelude.Document.id,
         list_member = M.GuardrailManagedWord,
      }),
   },
})

M.GuardrailAssessment = schema.new({
   id = id.from(_N, "GuardrailAssessment"),
   type = "structure",
   members = {
      topicPolicy = schema.new({
         id = id.from(_N, "GuardrailAssessment", "topicPolicy"),
         type = "structure",
         name = "topicPolicy",
         target_id = id.from(_N, "GuardrailTopicPolicyAssessment"),
         target = M.GuardrailTopicPolicyAssessment,
      }),
      contentPolicy = schema.new({
         id = id.from(_N, "GuardrailAssessment", "contentPolicy"),
         type = "structure",
         name = "contentPolicy",
         target_id = id.from(_N, "GuardrailContentPolicyAssessment"),
         target = M.GuardrailContentPolicyAssessment,
      }),
      wordPolicy = schema.new({
         id = id.from(_N, "GuardrailAssessment", "wordPolicy"),
         type = "structure",
         name = "wordPolicy",
         target_id = id.from(_N, "GuardrailWordPolicyAssessment"),
         target = M.GuardrailWordPolicyAssessment,
      }),
      sensitiveInformationPolicy = schema.new({
         id = id.from(_N, "GuardrailAssessment", "sensitiveInformationPolicy"),
         type = "structure",
         name = "sensitiveInformationPolicy",
         target_id = id.from(_N, "GuardrailSensitiveInformationPolicyAssessment"),
         target = M.GuardrailSensitiveInformationPolicyAssessment,
      }),
   },
})

M.GuardrailTrace = schema.new({
   id = id.from(_N, "GuardrailTrace"),
   type = "structure",
   members = {
      action = schema.new({
         id = id.from(_N, "GuardrailTrace", "action"),
         type = "string",
         name = "action",
         target_id = prelude.String.id,
      }),
      traceId = schema.new({
         id = id.from(_N, "GuardrailTrace", "traceId"),
         type = "string",
         name = "traceId",
         target_id = prelude.String.id,
      }),
      inputAssessments = schema.new({
         id = id.from(_N, "GuardrailTrace", "inputAssessments"),
         type = "list",
         name = "inputAssessments",
         target_id = prelude.Document.id,
         list_member = M.GuardrailAssessment,
      }),
      outputAssessments = schema.new({
         id = id.from(_N, "GuardrailTrace", "outputAssessments"),
         type = "list",
         name = "outputAssessments",
         target_id = prelude.Document.id,
         list_member = M.GuardrailAssessment,
      }),
      metadata = schema.new({
         id = id.from(_N, "GuardrailTrace", "metadata"),
         type = "structure",
         name = "metadata",
         target_id = id.from(_N, "Metadata"),
         target = M.Metadata,
      }),
   },
})

M.CodeInterpreterInvocationInput = schema.new({
   id = id.from(_N, "CodeInterpreterInvocationInput"),
   type = "structure",
   members = {
      code = schema.new({
         id = id.from(_N, "CodeInterpreterInvocationInput", "code"),
         type = "string",
         name = "code",
         target_id = prelude.String.id,
      }),
      files = schema.new({
         id = id.from(_N, "CodeInterpreterInvocationInput", "files"),
         type = "list",
         name = "files",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.KnowledgeBaseLookupInput = schema.new({
   id = id.from(_N, "KnowledgeBaseLookupInput"),
   type = "structure",
   members = {
      text = schema.new({
         id = id.from(_N, "KnowledgeBaseLookupInput", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
      }),
      knowledgeBaseId = schema.new({
         id = id.from(_N, "KnowledgeBaseLookupInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
      }),
   },
})

M.InvocationInput = schema.new({
   id = id.from(_N, "InvocationInput"),
   type = "structure",
   members = {
      traceId = schema.new({
         id = id.from(_N, "InvocationInput", "traceId"),
         type = "string",
         name = "traceId",
         target_id = prelude.String.id,
      }),
      invocationType = schema.new({
         id = id.from(_N, "InvocationInput", "invocationType"),
         type = "string",
         name = "invocationType",
         target_id = prelude.String.id,
      }),
      actionGroupInvocationInput = schema.new({
         id = id.from(_N, "InvocationInput", "actionGroupInvocationInput"),
         type = "structure",
         name = "actionGroupInvocationInput",
         target_id = id.from(_N, "ActionGroupInvocationInput"),
         target = M.ActionGroupInvocationInput,
      }),
      knowledgeBaseLookupInput = schema.new({
         id = id.from(_N, "InvocationInput", "knowledgeBaseLookupInput"),
         type = "structure",
         name = "knowledgeBaseLookupInput",
         target_id = id.from(_N, "KnowledgeBaseLookupInput"),
         target = M.KnowledgeBaseLookupInput,
      }),
      codeInterpreterInvocationInput = schema.new({
         id = id.from(_N, "InvocationInput", "codeInterpreterInvocationInput"),
         type = "structure",
         name = "codeInterpreterInvocationInput",
         target_id = id.from(_N, "CodeInterpreterInvocationInput"),
         target = M.CodeInterpreterInvocationInput,
      }),
      agentCollaboratorInvocationInput = schema.new({
         id = id.from(_N, "InvocationInput", "agentCollaboratorInvocationInput"),
         type = "structure",
         name = "agentCollaboratorInvocationInput",
         target_id = id.from(_N, "AgentCollaboratorInvocationInput"),
         target = M.AgentCollaboratorInvocationInput,
      }),
   },
})

M.InferenceConfiguration = schema.new({
   id = id.from(_N, "InferenceConfiguration"),
   type = "structure",
   members = {
      temperature = schema.new({
         id = id.from(_N, "InferenceConfiguration", "temperature"),
         type = "float",
         name = "temperature",
         target_id = prelude.Float.id,
      }),
      topP = schema.new({
         id = id.from(_N, "InferenceConfiguration", "topP"),
         type = "float",
         name = "topP",
         target_id = prelude.Float.id,
      }),
      topK = schema.new({
         id = id.from(_N, "InferenceConfiguration", "topK"),
         type = "integer",
         name = "topK",
         target_id = prelude.Integer.id,
      }),
      maximumLength = schema.new({
         id = id.from(_N, "InferenceConfiguration", "maximumLength"),
         type = "integer",
         name = "maximumLength",
         target_id = prelude.Integer.id,
      }),
      stopSequences = schema.new({
         id = id.from(_N, "InferenceConfiguration", "stopSequences"),
         type = "list",
         name = "stopSequences",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ModelInvocationInput = schema.new({
   id = id.from(_N, "ModelInvocationInput"),
   type = "structure",
   members = {
      traceId = schema.new({
         id = id.from(_N, "ModelInvocationInput", "traceId"),
         type = "string",
         name = "traceId",
         target_id = prelude.String.id,
      }),
      text = schema.new({
         id = id.from(_N, "ModelInvocationInput", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
      }),
      type = schema.new({
         id = id.from(_N, "ModelInvocationInput", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      overrideLambda = schema.new({
         id = id.from(_N, "ModelInvocationInput", "overrideLambda"),
         type = "string",
         name = "overrideLambda",
         target_id = prelude.String.id,
      }),
      promptCreationMode = schema.new({
         id = id.from(_N, "ModelInvocationInput", "promptCreationMode"),
         type = "string",
         name = "promptCreationMode",
         target_id = prelude.String.id,
      }),
      inferenceConfiguration = schema.new({
         id = id.from(_N, "ModelInvocationInput", "inferenceConfiguration"),
         type = "structure",
         name = "inferenceConfiguration",
         target_id = id.from(_N, "InferenceConfiguration"),
         target = M.InferenceConfiguration,
      }),
      parserMode = schema.new({
         id = id.from(_N, "ModelInvocationInput", "parserMode"),
         type = "string",
         name = "parserMode",
         target_id = prelude.String.id,
      }),
      foundationModel = schema.new({
         id = id.from(_N, "ModelInvocationInput", "foundationModel"),
         type = "string",
         name = "foundationModel",
         target_id = prelude.String.id,
      }),
   },
})

M.RawResponse = schema.new({
   id = id.from(_N, "RawResponse"),
   type = "structure",
   members = {
      content = schema.new({
         id = id.from(_N, "RawResponse", "content"),
         type = "string",
         name = "content",
         target_id = prelude.String.id,
      }),
   },
})

M.ReasoningTextBlock = schema.new({
   id = id.from(_N, "ReasoningTextBlock"),
   type = "structure",
   members = {
      text = schema.new({
         id = id.from(_N, "ReasoningTextBlock", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      signature = schema.new({
         id = id.from(_N, "ReasoningTextBlock", "signature"),
         type = "string",
         name = "signature",
         target_id = prelude.String.id,
      }),
   },
})

M.ReasoningContentBlock = schema.new({
   id = id.from(_N, "ReasoningContentBlock"),
   type = "union",
   members = {
      reasoningText = schema.new({
         id = id.from(_N, "ReasoningContentBlock", "reasoningText"),
         type = "structure",
         name = "reasoningText",
         target_id = id.from(_N, "ReasoningTextBlock"),
         target = M.ReasoningTextBlock,
      }),
      redactedContent = schema.new({
         id = id.from(_N, "ReasoningContentBlock", "redactedContent"),
         type = "blob",
         name = "redactedContent",
         target_id = prelude.Blob.id,
      }),
   },
})

M.OrchestrationModelInvocationOutput = schema.new({
   id = id.from(_N, "OrchestrationModelInvocationOutput"),
   type = "structure",
   members = {
      traceId = schema.new({
         id = id.from(_N, "OrchestrationModelInvocationOutput", "traceId"),
         type = "string",
         name = "traceId",
         target_id = prelude.String.id,
      }),
      rawResponse = schema.new({
         id = id.from(_N, "OrchestrationModelInvocationOutput", "rawResponse"),
         type = "structure",
         name = "rawResponse",
         target_id = id.from(_N, "RawResponse"),
         target = M.RawResponse,
      }),
      metadata = schema.new({
         id = id.from(_N, "OrchestrationModelInvocationOutput", "metadata"),
         type = "structure",
         name = "metadata",
         target_id = id.from(_N, "Metadata"),
         target = M.Metadata,
      }),
      reasoningContent = schema.new({
         id = id.from(_N, "OrchestrationModelInvocationOutput", "reasoningContent"),
         type = "union",
         name = "reasoningContent",
         target_id = id.from(_N, "ReasoningContentBlock"),
         target = M.ReasoningContentBlock,
      }),
   },
})

M.CodeInterpreterInvocationOutput = schema.new({
   id = id.from(_N, "CodeInterpreterInvocationOutput"),
   type = "structure",
   members = {
      executionOutput = schema.new({
         id = id.from(_N, "CodeInterpreterInvocationOutput", "executionOutput"),
         type = "string",
         name = "executionOutput",
         target_id = prelude.String.id,
      }),
      executionError = schema.new({
         id = id.from(_N, "CodeInterpreterInvocationOutput", "executionError"),
         type = "string",
         name = "executionError",
         target_id = prelude.String.id,
      }),
      files = schema.new({
         id = id.from(_N, "CodeInterpreterInvocationOutput", "files"),
         type = "list",
         name = "files",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      executionTimeout = schema.new({
         id = id.from(_N, "CodeInterpreterInvocationOutput", "executionTimeout"),
         type = "boolean",
         name = "executionTimeout",
         target_id = prelude.Boolean.id,
      }),
      metadata = schema.new({
         id = id.from(_N, "CodeInterpreterInvocationOutput", "metadata"),
         type = "structure",
         name = "metadata",
         target_id = id.from(_N, "Metadata"),
         target = M.Metadata,
      }),
   },
})

M.FinalResponse = schema.new({
   id = id.from(_N, "FinalResponse"),
   type = "structure",
   members = {
      text = schema.new({
         id = id.from(_N, "FinalResponse", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
      }),
      metadata = schema.new({
         id = id.from(_N, "FinalResponse", "metadata"),
         type = "structure",
         name = "metadata",
         target_id = id.from(_N, "Metadata"),
         target = M.Metadata,
      }),
   },
})

M.AudioSegment = schema.new({
   id = id.from(_N, "AudioSegment"),
   type = "structure",
   members = {
      s3Uri = schema.new({
         id = id.from(_N, "AudioSegment", "s3Uri"),
         type = "string",
         name = "s3Uri",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      transcription = schema.new({
         id = id.from(_N, "AudioSegment", "transcription"),
         type = "string",
         name = "transcription",
         target_id = prelude.String.id,
      }),
   },
})

M.RetrievalResultContentColumn = schema.new({
   id = id.from(_N, "RetrievalResultContentColumn"),
   type = "structure",
   members = {
      columnName = schema.new({
         id = id.from(_N, "RetrievalResultContentColumn", "columnName"),
         type = "string",
         name = "columnName",
         target_id = prelude.String.id,
      }),
      columnValue = schema.new({
         id = id.from(_N, "RetrievalResultContentColumn", "columnValue"),
         type = "string",
         name = "columnValue",
         target_id = prelude.String.id,
      }),
      type = schema.new({
         id = id.from(_N, "RetrievalResultContentColumn", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
   },
})

M.VideoSegment = schema.new({
   id = id.from(_N, "VideoSegment"),
   type = "structure",
   members = {
      s3Uri = schema.new({
         id = id.from(_N, "VideoSegment", "s3Uri"),
         type = "string",
         name = "s3Uri",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      summary = schema.new({
         id = id.from(_N, "VideoSegment", "summary"),
         type = "string",
         name = "summary",
         target_id = prelude.String.id,
      }),
   },
})

M.RetrievalResultContent = schema.new({
   id = id.from(_N, "RetrievalResultContent"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "RetrievalResultContent", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      text = schema.new({
         id = id.from(_N, "RetrievalResultContent", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
         traits = {
            [traits.DEFAULT] = { value = "" },
         },
      }),
      byteContent = schema.new({
         id = id.from(_N, "RetrievalResultContent", "byteContent"),
         type = "string",
         name = "byteContent",
         target_id = prelude.String.id,
      }),
      video = schema.new({
         id = id.from(_N, "RetrievalResultContent", "video"),
         type = "structure",
         name = "video",
         target_id = id.from(_N, "VideoSegment"),
         target = M.VideoSegment,
      }),
      audio = schema.new({
         id = id.from(_N, "RetrievalResultContent", "audio"),
         type = "structure",
         name = "audio",
         target_id = id.from(_N, "AudioSegment"),
         target = M.AudioSegment,
      }),
      row = schema.new({
         id = id.from(_N, "RetrievalResultContent", "row"),
         type = "list",
         name = "row",
         target_id = prelude.Document.id,
         list_member = M.RetrievalResultContentColumn,
      }),
   },
})

M.RetrievalResultConfluenceLocation = schema.new({
   id = id.from(_N, "RetrievalResultConfluenceLocation"),
   type = "structure",
   members = {
      url = schema.new({
         id = id.from(_N, "RetrievalResultConfluenceLocation", "url"),
         type = "string",
         name = "url",
         target_id = prelude.String.id,
      }),
   },
})

M.RetrievalResultCustomDocumentLocation = schema.new({
   id = id.from(_N, "RetrievalResultCustomDocumentLocation"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "RetrievalResultCustomDocumentLocation", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
      }),
   },
})

M.RetrievalResultKendraDocumentLocation = schema.new({
   id = id.from(_N, "RetrievalResultKendraDocumentLocation"),
   type = "structure",
   members = {
      uri = schema.new({
         id = id.from(_N, "RetrievalResultKendraDocumentLocation", "uri"),
         type = "string",
         name = "uri",
         target_id = prelude.String.id,
      }),
   },
})

M.RetrievalResultS3Location = schema.new({
   id = id.from(_N, "RetrievalResultS3Location"),
   type = "structure",
   members = {
      uri = schema.new({
         id = id.from(_N, "RetrievalResultS3Location", "uri"),
         type = "string",
         name = "uri",
         target_id = prelude.String.id,
      }),
   },
})

M.RetrievalResultSalesforceLocation = schema.new({
   id = id.from(_N, "RetrievalResultSalesforceLocation"),
   type = "structure",
   members = {
      url = schema.new({
         id = id.from(_N, "RetrievalResultSalesforceLocation", "url"),
         type = "string",
         name = "url",
         target_id = prelude.String.id,
      }),
   },
})

M.RetrievalResultSharePointLocation = schema.new({
   id = id.from(_N, "RetrievalResultSharePointLocation"),
   type = "structure",
   members = {
      url = schema.new({
         id = id.from(_N, "RetrievalResultSharePointLocation", "url"),
         type = "string",
         name = "url",
         target_id = prelude.String.id,
      }),
   },
})

M.RetrievalResultSqlLocation = schema.new({
   id = id.from(_N, "RetrievalResultSqlLocation"),
   type = "structure",
   members = {
      query = schema.new({
         id = id.from(_N, "RetrievalResultSqlLocation", "query"),
         type = "string",
         name = "query",
         target_id = prelude.String.id,
      }),
   },
})

M.RetrievalResultWebLocation = schema.new({
   id = id.from(_N, "RetrievalResultWebLocation"),
   type = "structure",
   members = {
      url = schema.new({
         id = id.from(_N, "RetrievalResultWebLocation", "url"),
         type = "string",
         name = "url",
         target_id = prelude.String.id,
      }),
   },
})

M.RetrievalResultLocation = schema.new({
   id = id.from(_N, "RetrievalResultLocation"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "RetrievalResultLocation", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      s3Location = schema.new({
         id = id.from(_N, "RetrievalResultLocation", "s3Location"),
         type = "structure",
         name = "s3Location",
         target_id = id.from(_N, "RetrievalResultS3Location"),
         target = M.RetrievalResultS3Location,
      }),
      webLocation = schema.new({
         id = id.from(_N, "RetrievalResultLocation", "webLocation"),
         type = "structure",
         name = "webLocation",
         target_id = id.from(_N, "RetrievalResultWebLocation"),
         target = M.RetrievalResultWebLocation,
      }),
      confluenceLocation = schema.new({
         id = id.from(_N, "RetrievalResultLocation", "confluenceLocation"),
         type = "structure",
         name = "confluenceLocation",
         target_id = id.from(_N, "RetrievalResultConfluenceLocation"),
         target = M.RetrievalResultConfluenceLocation,
      }),
      salesforceLocation = schema.new({
         id = id.from(_N, "RetrievalResultLocation", "salesforceLocation"),
         type = "structure",
         name = "salesforceLocation",
         target_id = id.from(_N, "RetrievalResultSalesforceLocation"),
         target = M.RetrievalResultSalesforceLocation,
      }),
      sharePointLocation = schema.new({
         id = id.from(_N, "RetrievalResultLocation", "sharePointLocation"),
         type = "structure",
         name = "sharePointLocation",
         target_id = id.from(_N, "RetrievalResultSharePointLocation"),
         target = M.RetrievalResultSharePointLocation,
      }),
      customDocumentLocation = schema.new({
         id = id.from(_N, "RetrievalResultLocation", "customDocumentLocation"),
         type = "structure",
         name = "customDocumentLocation",
         target_id = id.from(_N, "RetrievalResultCustomDocumentLocation"),
         target = M.RetrievalResultCustomDocumentLocation,
      }),
      kendraDocumentLocation = schema.new({
         id = id.from(_N, "RetrievalResultLocation", "kendraDocumentLocation"),
         type = "structure",
         name = "kendraDocumentLocation",
         target_id = id.from(_N, "RetrievalResultKendraDocumentLocation"),
         target = M.RetrievalResultKendraDocumentLocation,
      }),
      sqlLocation = schema.new({
         id = id.from(_N, "RetrievalResultLocation", "sqlLocation"),
         type = "structure",
         name = "sqlLocation",
         target_id = id.from(_N, "RetrievalResultSqlLocation"),
         target = M.RetrievalResultSqlLocation,
      }),
   },
})

M.RetrievedReference = schema.new({
   id = id.from(_N, "RetrievedReference"),
   type = "structure",
   members = {
      content = schema.new({
         id = id.from(_N, "RetrievedReference", "content"),
         type = "structure",
         name = "content",
         target_id = id.from(_N, "RetrievalResultContent"),
         target = M.RetrievalResultContent,
      }),
      location = schema.new({
         id = id.from(_N, "RetrievedReference", "location"),
         type = "structure",
         name = "location",
         target_id = id.from(_N, "RetrievalResultLocation"),
         target = M.RetrievalResultLocation,
      }),
      metadata = schema.new({
         id = id.from(_N, "RetrievedReference", "metadata"),
         type = "map",
         name = "metadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Document,
      }),
   },
})

M.KnowledgeBaseLookupOutput = schema.new({
   id = id.from(_N, "KnowledgeBaseLookupOutput"),
   type = "structure",
   members = {
      retrievedReferences = schema.new({
         id = id.from(_N, "KnowledgeBaseLookupOutput", "retrievedReferences"),
         type = "list",
         name = "retrievedReferences",
         target_id = prelude.Document.id,
         list_member = M.RetrievedReference,
      }),
      metadata = schema.new({
         id = id.from(_N, "KnowledgeBaseLookupOutput", "metadata"),
         type = "structure",
         name = "metadata",
         target_id = id.from(_N, "Metadata"),
         target = M.Metadata,
      }),
   },
})

M.RepromptResponse = schema.new({
   id = id.from(_N, "RepromptResponse"),
   type = "structure",
   members = {
      text = schema.new({
         id = id.from(_N, "RepromptResponse", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
      }),
      source = schema.new({
         id = id.from(_N, "RepromptResponse", "source"),
         type = "string",
         name = "source",
         target_id = prelude.String.id,
      }),
   },
})

M.Observation = schema.new({
   id = id.from(_N, "Observation"),
   type = "structure",
   members = {
      traceId = schema.new({
         id = id.from(_N, "Observation", "traceId"),
         type = "string",
         name = "traceId",
         target_id = prelude.String.id,
      }),
      type = schema.new({
         id = id.from(_N, "Observation", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      actionGroupInvocationOutput = schema.new({
         id = id.from(_N, "Observation", "actionGroupInvocationOutput"),
         type = "structure",
         name = "actionGroupInvocationOutput",
         target_id = id.from(_N, "ActionGroupInvocationOutput"),
         target = M.ActionGroupInvocationOutput,
      }),
      agentCollaboratorInvocationOutput = schema.new({
         id = id.from(_N, "Observation", "agentCollaboratorInvocationOutput"),
         type = "structure",
         name = "agentCollaboratorInvocationOutput",
         target_id = id.from(_N, "AgentCollaboratorInvocationOutput"),
         target = M.AgentCollaboratorInvocationOutput,
      }),
      knowledgeBaseLookupOutput = schema.new({
         id = id.from(_N, "Observation", "knowledgeBaseLookupOutput"),
         type = "structure",
         name = "knowledgeBaseLookupOutput",
         target_id = id.from(_N, "KnowledgeBaseLookupOutput"),
         target = M.KnowledgeBaseLookupOutput,
      }),
      finalResponse = schema.new({
         id = id.from(_N, "Observation", "finalResponse"),
         type = "structure",
         name = "finalResponse",
         target_id = id.from(_N, "FinalResponse"),
         target = M.FinalResponse,
      }),
      repromptResponse = schema.new({
         id = id.from(_N, "Observation", "repromptResponse"),
         type = "structure",
         name = "repromptResponse",
         target_id = id.from(_N, "RepromptResponse"),
         target = M.RepromptResponse,
      }),
      codeInterpreterInvocationOutput = schema.new({
         id = id.from(_N, "Observation", "codeInterpreterInvocationOutput"),
         type = "structure",
         name = "codeInterpreterInvocationOutput",
         target_id = id.from(_N, "CodeInterpreterInvocationOutput"),
         target = M.CodeInterpreterInvocationOutput,
      }),
   },
})

M.Rationale = schema.new({
   id = id.from(_N, "Rationale"),
   type = "structure",
   members = {
      traceId = schema.new({
         id = id.from(_N, "Rationale", "traceId"),
         type = "string",
         name = "traceId",
         target_id = prelude.String.id,
      }),
      text = schema.new({
         id = id.from(_N, "Rationale", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
      }),
   },
})

M.OrchestrationTrace = schema.new({
   id = id.from(_N, "OrchestrationTrace"),
   type = "union",
   members = {
      rationale = schema.new({
         id = id.from(_N, "OrchestrationTrace", "rationale"),
         type = "structure",
         name = "rationale",
         target_id = id.from(_N, "Rationale"),
         target = M.Rationale,
      }),
      invocationInput = schema.new({
         id = id.from(_N, "OrchestrationTrace", "invocationInput"),
         type = "structure",
         name = "invocationInput",
         target_id = id.from(_N, "InvocationInput"),
         target = M.InvocationInput,
      }),
      observation = schema.new({
         id = id.from(_N, "OrchestrationTrace", "observation"),
         type = "structure",
         name = "observation",
         target_id = id.from(_N, "Observation"),
         target = M.Observation,
      }),
      modelInvocationInput = schema.new({
         id = id.from(_N, "OrchestrationTrace", "modelInvocationInput"),
         type = "structure",
         name = "modelInvocationInput",
         target_id = id.from(_N, "ModelInvocationInput"),
         target = M.ModelInvocationInput,
      }),
      modelInvocationOutput = schema.new({
         id = id.from(_N, "OrchestrationTrace", "modelInvocationOutput"),
         type = "structure",
         name = "modelInvocationOutput",
         target_id = id.from(_N, "OrchestrationModelInvocationOutput"),
         target = M.OrchestrationModelInvocationOutput,
      }),
   },
})

M.PostProcessingParsedResponse = schema.new({
   id = id.from(_N, "PostProcessingParsedResponse"),
   type = "structure",
   members = {
      text = schema.new({
         id = id.from(_N, "PostProcessingParsedResponse", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
      }),
   },
})

M.PostProcessingModelInvocationOutput = schema.new({
   id = id.from(_N, "PostProcessingModelInvocationOutput"),
   type = "structure",
   members = {
      traceId = schema.new({
         id = id.from(_N, "PostProcessingModelInvocationOutput", "traceId"),
         type = "string",
         name = "traceId",
         target_id = prelude.String.id,
      }),
      parsedResponse = schema.new({
         id = id.from(_N, "PostProcessingModelInvocationOutput", "parsedResponse"),
         type = "structure",
         name = "parsedResponse",
         target_id = id.from(_N, "PostProcessingParsedResponse"),
         target = M.PostProcessingParsedResponse,
      }),
      rawResponse = schema.new({
         id = id.from(_N, "PostProcessingModelInvocationOutput", "rawResponse"),
         type = "structure",
         name = "rawResponse",
         target_id = id.from(_N, "RawResponse"),
         target = M.RawResponse,
      }),
      metadata = schema.new({
         id = id.from(_N, "PostProcessingModelInvocationOutput", "metadata"),
         type = "structure",
         name = "metadata",
         target_id = id.from(_N, "Metadata"),
         target = M.Metadata,
      }),
      reasoningContent = schema.new({
         id = id.from(_N, "PostProcessingModelInvocationOutput", "reasoningContent"),
         type = "union",
         name = "reasoningContent",
         target_id = id.from(_N, "ReasoningContentBlock"),
         target = M.ReasoningContentBlock,
      }),
   },
})

M.PostProcessingTrace = schema.new({
   id = id.from(_N, "PostProcessingTrace"),
   type = "union",
   members = {
      modelInvocationInput = schema.new({
         id = id.from(_N, "PostProcessingTrace", "modelInvocationInput"),
         type = "structure",
         name = "modelInvocationInput",
         target_id = id.from(_N, "ModelInvocationInput"),
         target = M.ModelInvocationInput,
      }),
      modelInvocationOutput = schema.new({
         id = id.from(_N, "PostProcessingTrace", "modelInvocationOutput"),
         type = "structure",
         name = "modelInvocationOutput",
         target_id = id.from(_N, "PostProcessingModelInvocationOutput"),
         target = M.PostProcessingModelInvocationOutput,
      }),
   },
})

M.PreProcessingParsedResponse = schema.new({
   id = id.from(_N, "PreProcessingParsedResponse"),
   type = "structure",
   members = {
      rationale = schema.new({
         id = id.from(_N, "PreProcessingParsedResponse", "rationale"),
         type = "string",
         name = "rationale",
         target_id = prelude.String.id,
      }),
      isValid = schema.new({
         id = id.from(_N, "PreProcessingParsedResponse", "isValid"),
         type = "boolean",
         name = "isValid",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.PreProcessingModelInvocationOutput = schema.new({
   id = id.from(_N, "PreProcessingModelInvocationOutput"),
   type = "structure",
   members = {
      traceId = schema.new({
         id = id.from(_N, "PreProcessingModelInvocationOutput", "traceId"),
         type = "string",
         name = "traceId",
         target_id = prelude.String.id,
      }),
      parsedResponse = schema.new({
         id = id.from(_N, "PreProcessingModelInvocationOutput", "parsedResponse"),
         type = "structure",
         name = "parsedResponse",
         target_id = id.from(_N, "PreProcessingParsedResponse"),
         target = M.PreProcessingParsedResponse,
      }),
      rawResponse = schema.new({
         id = id.from(_N, "PreProcessingModelInvocationOutput", "rawResponse"),
         type = "structure",
         name = "rawResponse",
         target_id = id.from(_N, "RawResponse"),
         target = M.RawResponse,
      }),
      metadata = schema.new({
         id = id.from(_N, "PreProcessingModelInvocationOutput", "metadata"),
         type = "structure",
         name = "metadata",
         target_id = id.from(_N, "Metadata"),
         target = M.Metadata,
      }),
      reasoningContent = schema.new({
         id = id.from(_N, "PreProcessingModelInvocationOutput", "reasoningContent"),
         type = "union",
         name = "reasoningContent",
         target_id = id.from(_N, "ReasoningContentBlock"),
         target = M.ReasoningContentBlock,
      }),
   },
})

M.PreProcessingTrace = schema.new({
   id = id.from(_N, "PreProcessingTrace"),
   type = "union",
   members = {
      modelInvocationInput = schema.new({
         id = id.from(_N, "PreProcessingTrace", "modelInvocationInput"),
         type = "structure",
         name = "modelInvocationInput",
         target_id = id.from(_N, "ModelInvocationInput"),
         target = M.ModelInvocationInput,
      }),
      modelInvocationOutput = schema.new({
         id = id.from(_N, "PreProcessingTrace", "modelInvocationOutput"),
         type = "structure",
         name = "modelInvocationOutput",
         target_id = id.from(_N, "PreProcessingModelInvocationOutput"),
         target = M.PreProcessingModelInvocationOutput,
      }),
   },
})

M.RoutingClassifierModelInvocationOutput = schema.new({
   id = id.from(_N, "RoutingClassifierModelInvocationOutput"),
   type = "structure",
   members = {
      traceId = schema.new({
         id = id.from(_N, "RoutingClassifierModelInvocationOutput", "traceId"),
         type = "string",
         name = "traceId",
         target_id = prelude.String.id,
      }),
      rawResponse = schema.new({
         id = id.from(_N, "RoutingClassifierModelInvocationOutput", "rawResponse"),
         type = "structure",
         name = "rawResponse",
         target_id = id.from(_N, "RawResponse"),
         target = M.RawResponse,
      }),
      metadata = schema.new({
         id = id.from(_N, "RoutingClassifierModelInvocationOutput", "metadata"),
         type = "structure",
         name = "metadata",
         target_id = id.from(_N, "Metadata"),
         target = M.Metadata,
      }),
   },
})

M.RoutingClassifierTrace = schema.new({
   id = id.from(_N, "RoutingClassifierTrace"),
   type = "union",
   members = {
      invocationInput = schema.new({
         id = id.from(_N, "RoutingClassifierTrace", "invocationInput"),
         type = "structure",
         name = "invocationInput",
         target_id = id.from(_N, "InvocationInput"),
         target = M.InvocationInput,
      }),
      observation = schema.new({
         id = id.from(_N, "RoutingClassifierTrace", "observation"),
         type = "structure",
         name = "observation",
         target_id = id.from(_N, "Observation"),
         target = M.Observation,
      }),
      modelInvocationInput = schema.new({
         id = id.from(_N, "RoutingClassifierTrace", "modelInvocationInput"),
         type = "structure",
         name = "modelInvocationInput",
         target_id = id.from(_N, "ModelInvocationInput"),
         target = M.ModelInvocationInput,
      }),
      modelInvocationOutput = schema.new({
         id = id.from(_N, "RoutingClassifierTrace", "modelInvocationOutput"),
         type = "structure",
         name = "modelInvocationOutput",
         target_id = id.from(_N, "RoutingClassifierModelInvocationOutput"),
         target = M.RoutingClassifierModelInvocationOutput,
      }),
   },
})

M.Trace = schema.new({
   id = id.from(_N, "Trace"),
   type = "union",
   members = {
      guardrailTrace = schema.new({
         id = id.from(_N, "Trace", "guardrailTrace"),
         type = "structure",
         name = "guardrailTrace",
         target_id = id.from(_N, "GuardrailTrace"),
         target = M.GuardrailTrace,
      }),
      preProcessingTrace = schema.new({
         id = id.from(_N, "Trace", "preProcessingTrace"),
         type = "union",
         name = "preProcessingTrace",
         target_id = id.from(_N, "PreProcessingTrace"),
         target = M.PreProcessingTrace,
      }),
      orchestrationTrace = schema.new({
         id = id.from(_N, "Trace", "orchestrationTrace"),
         type = "union",
         name = "orchestrationTrace",
         target_id = id.from(_N, "OrchestrationTrace"),
         target = M.OrchestrationTrace,
      }),
      postProcessingTrace = schema.new({
         id = id.from(_N, "Trace", "postProcessingTrace"),
         type = "union",
         name = "postProcessingTrace",
         target_id = id.from(_N, "PostProcessingTrace"),
         target = M.PostProcessingTrace,
      }),
      routingClassifierTrace = schema.new({
         id = id.from(_N, "Trace", "routingClassifierTrace"),
         type = "union",
         name = "routingClassifierTrace",
         target_id = id.from(_N, "RoutingClassifierTrace"),
         target = M.RoutingClassifierTrace,
      }),
      failureTrace = schema.new({
         id = id.from(_N, "Trace", "failureTrace"),
         type = "structure",
         name = "failureTrace",
         target_id = id.from(_N, "FailureTrace"),
         target = M.FailureTrace,
      }),
      customOrchestrationTrace = schema.new({
         id = id.from(_N, "Trace", "customOrchestrationTrace"),
         type = "structure",
         name = "customOrchestrationTrace",
         target_id = id.from(_N, "CustomOrchestrationTrace"),
         target = M.CustomOrchestrationTrace,
      }),
   },
})

M.TracePart = schema.new({
   id = id.from(_N, "TracePart"),
   type = "structure",
   members = {
      sessionId = schema.new({
         id = id.from(_N, "TracePart", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
      }),
      trace = schema.new({
         id = id.from(_N, "TracePart", "trace"),
         type = "union",
         name = "trace",
         target_id = id.from(_N, "Trace"),
         target = M.Trace,
      }),
      callerChain = schema.new({
         id = id.from(_N, "TracePart", "callerChain"),
         type = "list",
         name = "callerChain",
         target_id = prelude.Document.id,
         list_member = M.Caller,
      }),
      eventTime = schema.new({
         id = id.from(_N, "TracePart", "eventTime"),
         type = "timestamp",
         name = "eventTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      collaboratorName = schema.new({
         id = id.from(_N, "TracePart", "collaboratorName"),
         type = "string",
         name = "collaboratorName",
         target_id = prelude.String.id,
      }),
      agentId = schema.new({
         id = id.from(_N, "TracePart", "agentId"),
         type = "string",
         name = "agentId",
         target_id = prelude.String.id,
      }),
      agentAliasId = schema.new({
         id = id.from(_N, "TracePart", "agentAliasId"),
         type = "string",
         name = "agentAliasId",
         target_id = prelude.String.id,
      }),
      agentVersion = schema.new({
         id = id.from(_N, "TracePart", "agentVersion"),
         type = "string",
         name = "agentVersion",
         target_id = prelude.String.id,
      }),
   },
})

M.GetExecutionFlowSnapshotInput = schema.new({
   id = id.from(_N, "GetExecutionFlowSnapshotRequest"),
   type = "structure",
   members = {
      flowIdentifier = schema.new({
         id = id.from(_N, "GetExecutionFlowSnapshotInput", "flowIdentifier"),
         type = "string",
         name = "flowIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      flowAliasIdentifier = schema.new({
         id = id.from(_N, "GetExecutionFlowSnapshotInput", "flowAliasIdentifier"),
         type = "string",
         name = "flowAliasIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      executionIdentifier = schema.new({
         id = id.from(_N, "GetExecutionFlowSnapshotInput", "executionIdentifier"),
         type = "string",
         name = "executionIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetExecutionFlowSnapshotOutput = schema.new({
   id = id.from(_N, "GetExecutionFlowSnapshotResponse"),
   type = "structure",
   members = {
      flowIdentifier = schema.new({
         id = id.from(_N, "GetExecutionFlowSnapshotOutput", "flowIdentifier"),
         type = "string",
         name = "flowIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      flowAliasIdentifier = schema.new({
         id = id.from(_N, "GetExecutionFlowSnapshotOutput", "flowAliasIdentifier"),
         type = "string",
         name = "flowAliasIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      flowVersion = schema.new({
         id = id.from(_N, "GetExecutionFlowSnapshotOutput", "flowVersion"),
         type = "string",
         name = "flowVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      executionRoleArn = schema.new({
         id = id.from(_N, "GetExecutionFlowSnapshotOutput", "executionRoleArn"),
         type = "string",
         name = "executionRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      definition = schema.new({
         id = id.from(_N, "GetExecutionFlowSnapshotOutput", "definition"),
         type = "string",
         name = "definition",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      customerEncryptionKeyArn = schema.new({
         id = id.from(_N, "GetExecutionFlowSnapshotOutput", "customerEncryptionKeyArn"),
         type = "string",
         name = "customerEncryptionKeyArn",
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
      message = schema.new({
         id = id.from(_N, "InternalServerException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      reason = schema.new({
         id = id.from(_N, "InternalServerException", "reason"),
         type = "string",
         name = "reason",
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
      message = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "message"),
         type = "string",
         name = "message",
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
   },
})

M.GetFlowExecutionInput = schema.new({
   id = id.from(_N, "GetFlowExecutionRequest"),
   type = "structure",
   members = {
      flowIdentifier = schema.new({
         id = id.from(_N, "GetFlowExecutionInput", "flowIdentifier"),
         type = "string",
         name = "flowIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      flowAliasIdentifier = schema.new({
         id = id.from(_N, "GetFlowExecutionInput", "flowAliasIdentifier"),
         type = "string",
         name = "flowAliasIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      executionIdentifier = schema.new({
         id = id.from(_N, "GetFlowExecutionInput", "executionIdentifier"),
         type = "string",
         name = "executionIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.FlowExecutionError = schema.new({
   id = id.from(_N, "FlowExecutionError"),
   type = "structure",
   members = {
      nodeName = schema.new({
         id = id.from(_N, "FlowExecutionError", "nodeName"),
         type = "string",
         name = "nodeName",
         target_id = prelude.String.id,
      }),
      error = schema.new({
         id = id.from(_N, "FlowExecutionError", "error"),
         type = "string",
         name = "error",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "FlowExecutionError", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.GetFlowExecutionOutput = schema.new({
   id = id.from(_N, "GetFlowExecutionResponse"),
   type = "structure",
   members = {
      executionArn = schema.new({
         id = id.from(_N, "GetFlowExecutionOutput", "executionArn"),
         type = "string",
         name = "executionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "GetFlowExecutionOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      startedAt = schema.new({
         id = id.from(_N, "GetFlowExecutionOutput", "startedAt"),
         type = "timestamp",
         name = "startedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endedAt = schema.new({
         id = id.from(_N, "GetFlowExecutionOutput", "endedAt"),
         type = "timestamp",
         name = "endedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      errors = schema.new({
         id = id.from(_N, "GetFlowExecutionOutput", "errors"),
         type = "list",
         name = "errors",
         target_id = prelude.Document.id,
         list_member = M.FlowExecutionError,
      }),
      flowAliasIdentifier = schema.new({
         id = id.from(_N, "GetFlowExecutionOutput", "flowAliasIdentifier"),
         type = "string",
         name = "flowAliasIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      flowIdentifier = schema.new({
         id = id.from(_N, "GetFlowExecutionOutput", "flowIdentifier"),
         type = "string",
         name = "flowIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      flowVersion = schema.new({
         id = id.from(_N, "GetFlowExecutionOutput", "flowVersion"),
         type = "string",
         name = "flowVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListFlowExecutionEventsInput = schema.new({
   id = id.from(_N, "ListFlowExecutionEventsRequest"),
   type = "structure",
   members = {
      flowIdentifier = schema.new({
         id = id.from(_N, "ListFlowExecutionEventsInput", "flowIdentifier"),
         type = "string",
         name = "flowIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      flowAliasIdentifier = schema.new({
         id = id.from(_N, "ListFlowExecutionEventsInput", "flowAliasIdentifier"),
         type = "string",
         name = "flowAliasIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      executionIdentifier = schema.new({
         id = id.from(_N, "ListFlowExecutionEventsInput", "executionIdentifier"),
         type = "string",
         name = "executionIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListFlowExecutionEventsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListFlowExecutionEventsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      eventType = schema.new({
         id = id.from(_N, "ListFlowExecutionEventsInput", "eventType"),
         type = "string",
         name = "eventType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "eventType" },
         },
      }),
   },
})

M.SatisfiedCondition = schema.new({
   id = id.from(_N, "SatisfiedCondition"),
   type = "structure",
   members = {
      conditionName = schema.new({
         id = id.from(_N, "SatisfiedCondition", "conditionName"),
         type = "string",
         name = "conditionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ConditionResultEvent = schema.new({
   id = id.from(_N, "ConditionResultEvent"),
   type = "structure",
   members = {
      nodeName = schema.new({
         id = id.from(_N, "ConditionResultEvent", "nodeName"),
         type = "string",
         name = "nodeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timestamp = schema.new({
         id = id.from(_N, "ConditionResultEvent", "timestamp"),
         type = "timestamp",
         name = "timestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      satisfiedConditions = schema.new({
         id = id.from(_N, "ConditionResultEvent", "satisfiedConditions"),
         type = "list",
         name = "satisfiedConditions",
         target_id = prelude.Document.id,
         list_member = M.SatisfiedCondition,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FlowFailureEvent = schema.new({
   id = id.from(_N, "FlowFailureEvent"),
   type = "structure",
   members = {
      timestamp = schema.new({
         id = id.from(_N, "FlowFailureEvent", "timestamp"),
         type = "timestamp",
         name = "timestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      errorCode = schema.new({
         id = id.from(_N, "FlowFailureEvent", "errorCode"),
         type = "string",
         name = "errorCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      errorMessage = schema.new({
         id = id.from(_N, "FlowFailureEvent", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FlowExecutionContent = schema.new({
   id = id.from(_N, "FlowExecutionContent"),
   type = "union",
   members = {
      document = schema.new({
         id = id.from(_N, "FlowExecutionContent", "document"),
         type = "document",
         name = "document",
         target_id = prelude.Document.id,
      }),
   },
})

M.FlowInputField = schema.new({
   id = id.from(_N, "FlowInputField"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "FlowInputField", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      content = schema.new({
         id = id.from(_N, "FlowInputField", "content"),
         type = "union",
         name = "content",
         target_id = id.from(_N, "FlowExecutionContent"),
         target = M.FlowExecutionContent,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FlowExecutionInputEvent = schema.new({
   id = id.from(_N, "FlowExecutionInputEvent"),
   type = "structure",
   members = {
      nodeName = schema.new({
         id = id.from(_N, "FlowExecutionInputEvent", "nodeName"),
         type = "string",
         name = "nodeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timestamp = schema.new({
         id = id.from(_N, "FlowExecutionInputEvent", "timestamp"),
         type = "timestamp",
         name = "timestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      fields = schema.new({
         id = id.from(_N, "FlowExecutionInputEvent", "fields"),
         type = "list",
         name = "fields",
         target_id = prelude.Document.id,
         list_member = M.FlowInputField,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FlowOutputField = schema.new({
   id = id.from(_N, "FlowOutputField"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "FlowOutputField", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      content = schema.new({
         id = id.from(_N, "FlowOutputField", "content"),
         type = "union",
         name = "content",
         target_id = id.from(_N, "FlowExecutionContent"),
         target = M.FlowExecutionContent,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FlowExecutionOutputEvent = schema.new({
   id = id.from(_N, "FlowExecutionOutputEvent"),
   type = "structure",
   members = {
      nodeName = schema.new({
         id = id.from(_N, "FlowExecutionOutputEvent", "nodeName"),
         type = "string",
         name = "nodeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timestamp = schema.new({
         id = id.from(_N, "FlowExecutionOutputEvent", "timestamp"),
         type = "timestamp",
         name = "timestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      fields = schema.new({
         id = id.from(_N, "FlowExecutionOutputEvent", "fields"),
         type = "list",
         name = "fields",
         target_id = prelude.Document.id,
         list_member = M.FlowOutputField,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.NodeActionEvent = schema.new({
   id = id.from(_N, "NodeActionEvent"),
   type = "structure",
   members = {
      nodeName = schema.new({
         id = id.from(_N, "NodeActionEvent", "nodeName"),
         type = "string",
         name = "nodeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timestamp = schema.new({
         id = id.from(_N, "NodeActionEvent", "timestamp"),
         type = "timestamp",
         name = "timestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      requestId = schema.new({
         id = id.from(_N, "NodeActionEvent", "requestId"),
         type = "string",
         name = "requestId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      serviceName = schema.new({
         id = id.from(_N, "NodeActionEvent", "serviceName"),
         type = "string",
         name = "serviceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operationName = schema.new({
         id = id.from(_N, "NodeActionEvent", "operationName"),
         type = "string",
         name = "operationName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operationRequest = schema.new({
         id = id.from(_N, "NodeActionEvent", "operationRequest"),
         type = "document",
         name = "operationRequest",
         target_id = prelude.Document.id,
      }),
      operationResponse = schema.new({
         id = id.from(_N, "NodeActionEvent", "operationResponse"),
         type = "document",
         name = "operationResponse",
         target_id = prelude.Document.id,
      }),
   },
})

M.NodeTraceElements = schema.new({
   id = id.from(_N, "NodeTraceElements"),
   type = "union",
   members = {
      agentTraces = schema.new({
         id = id.from(_N, "NodeTraceElements", "agentTraces"),
         type = "list",
         name = "agentTraces",
         target_id = prelude.Document.id,
         list_member = M.TracePart,
      }),
   },
})

M.NodeDependencyEvent = schema.new({
   id = id.from(_N, "NodeDependencyEvent"),
   type = "structure",
   members = {
      nodeName = schema.new({
         id = id.from(_N, "NodeDependencyEvent", "nodeName"),
         type = "string",
         name = "nodeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timestamp = schema.new({
         id = id.from(_N, "NodeDependencyEvent", "timestamp"),
         type = "timestamp",
         name = "timestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      traceElements = schema.new({
         id = id.from(_N, "NodeDependencyEvent", "traceElements"),
         type = "union",
         name = "traceElements",
         target_id = id.from(_N, "NodeTraceElements"),
         target = M.NodeTraceElements,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.NodeFailureEvent = schema.new({
   id = id.from(_N, "NodeFailureEvent"),
   type = "structure",
   members = {
      nodeName = schema.new({
         id = id.from(_N, "NodeFailureEvent", "nodeName"),
         type = "string",
         name = "nodeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timestamp = schema.new({
         id = id.from(_N, "NodeFailureEvent", "timestamp"),
         type = "timestamp",
         name = "timestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      errorCode = schema.new({
         id = id.from(_N, "NodeFailureEvent", "errorCode"),
         type = "string",
         name = "errorCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      errorMessage = schema.new({
         id = id.from(_N, "NodeFailureEvent", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.NodeExecutionContent = schema.new({
   id = id.from(_N, "NodeExecutionContent"),
   type = "union",
   members = {
      document = schema.new({
         id = id.from(_N, "NodeExecutionContent", "document"),
         type = "document",
         name = "document",
         target_id = prelude.Document.id,
      }),
   },
})

M.NodeInputExecutionChainItem = schema.new({
   id = id.from(_N, "NodeInputExecutionChainItem"),
   type = "structure",
   members = {
      nodeName = schema.new({
         id = id.from(_N, "NodeInputExecutionChainItem", "nodeName"),
         type = "string",
         name = "nodeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      index = schema.new({
         id = id.from(_N, "NodeInputExecutionChainItem", "index"),
         type = "integer",
         name = "index",
         target_id = prelude.Integer.id,
      }),
      type = schema.new({
         id = id.from(_N, "NodeInputExecutionChainItem", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.NodeInputSource = schema.new({
   id = id.from(_N, "NodeInputSource"),
   type = "structure",
   members = {
      nodeName = schema.new({
         id = id.from(_N, "NodeInputSource", "nodeName"),
         type = "string",
         name = "nodeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      outputFieldName = schema.new({
         id = id.from(_N, "NodeInputSource", "outputFieldName"),
         type = "string",
         name = "outputFieldName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      expression = schema.new({
         id = id.from(_N, "NodeInputSource", "expression"),
         type = "string",
         name = "expression",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.NodeInputField = schema.new({
   id = id.from(_N, "NodeInputField"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "NodeInputField", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      content = schema.new({
         id = id.from(_N, "NodeInputField", "content"),
         type = "union",
         name = "content",
         target_id = id.from(_N, "NodeExecutionContent"),
         target = M.NodeExecutionContent,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      source = schema.new({
         id = id.from(_N, "NodeInputField", "source"),
         type = "structure",
         name = "source",
         target_id = id.from(_N, "NodeInputSource"),
         target = M.NodeInputSource,
      }),
      type = schema.new({
         id = id.from(_N, "NodeInputField", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      category = schema.new({
         id = id.from(_N, "NodeInputField", "category"),
         type = "string",
         name = "category",
         target_id = prelude.String.id,
      }),
      executionChain = schema.new({
         id = id.from(_N, "NodeInputField", "executionChain"),
         type = "list",
         name = "executionChain",
         target_id = prelude.Document.id,
         list_member = M.NodeInputExecutionChainItem,
      }),
   },
})

M.NodeInputEvent = schema.new({
   id = id.from(_N, "NodeInputEvent"),
   type = "structure",
   members = {
      nodeName = schema.new({
         id = id.from(_N, "NodeInputEvent", "nodeName"),
         type = "string",
         name = "nodeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timestamp = schema.new({
         id = id.from(_N, "NodeInputEvent", "timestamp"),
         type = "timestamp",
         name = "timestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      fields = schema.new({
         id = id.from(_N, "NodeInputEvent", "fields"),
         type = "list",
         name = "fields",
         target_id = prelude.Document.id,
         list_member = M.NodeInputField,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.NodeOutputNext = schema.new({
   id = id.from(_N, "NodeOutputNext"),
   type = "structure",
   members = {
      nodeName = schema.new({
         id = id.from(_N, "NodeOutputNext", "nodeName"),
         type = "string",
         name = "nodeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      inputFieldName = schema.new({
         id = id.from(_N, "NodeOutputNext", "inputFieldName"),
         type = "string",
         name = "inputFieldName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.NodeOutputField = schema.new({
   id = id.from(_N, "NodeOutputField"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "NodeOutputField", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      content = schema.new({
         id = id.from(_N, "NodeOutputField", "content"),
         type = "union",
         name = "content",
         target_id = id.from(_N, "NodeExecutionContent"),
         target = M.NodeExecutionContent,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      next = schema.new({
         id = id.from(_N, "NodeOutputField", "next"),
         type = "list",
         name = "next",
         target_id = prelude.Document.id,
         list_member = M.NodeOutputNext,
      }),
      type = schema.new({
         id = id.from(_N, "NodeOutputField", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
   },
})

M.NodeOutputEvent = schema.new({
   id = id.from(_N, "NodeOutputEvent"),
   type = "structure",
   members = {
      nodeName = schema.new({
         id = id.from(_N, "NodeOutputEvent", "nodeName"),
         type = "string",
         name = "nodeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timestamp = schema.new({
         id = id.from(_N, "NodeOutputEvent", "timestamp"),
         type = "timestamp",
         name = "timestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      fields = schema.new({
         id = id.from(_N, "NodeOutputEvent", "fields"),
         type = "list",
         name = "fields",
         target_id = prelude.Document.id,
         list_member = M.NodeOutputField,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FlowExecutionEvent = schema.new({
   id = id.from(_N, "FlowExecutionEvent"),
   type = "union",
   members = {
      flowInputEvent = schema.new({
         id = id.from(_N, "FlowExecutionEvent", "flowInputEvent"),
         type = "structure",
         name = "flowInputEvent",
         target_id = id.from(_N, "FlowExecutionInputEvent"),
         target = M.FlowExecutionInputEvent,
      }),
      flowOutputEvent = schema.new({
         id = id.from(_N, "FlowExecutionEvent", "flowOutputEvent"),
         type = "structure",
         name = "flowOutputEvent",
         target_id = id.from(_N, "FlowExecutionOutputEvent"),
         target = M.FlowExecutionOutputEvent,
      }),
      nodeInputEvent = schema.new({
         id = id.from(_N, "FlowExecutionEvent", "nodeInputEvent"),
         type = "structure",
         name = "nodeInputEvent",
         target_id = id.from(_N, "NodeInputEvent"),
         target = M.NodeInputEvent,
      }),
      nodeOutputEvent = schema.new({
         id = id.from(_N, "FlowExecutionEvent", "nodeOutputEvent"),
         type = "structure",
         name = "nodeOutputEvent",
         target_id = id.from(_N, "NodeOutputEvent"),
         target = M.NodeOutputEvent,
      }),
      conditionResultEvent = schema.new({
         id = id.from(_N, "FlowExecutionEvent", "conditionResultEvent"),
         type = "structure",
         name = "conditionResultEvent",
         target_id = id.from(_N, "ConditionResultEvent"),
         target = M.ConditionResultEvent,
      }),
      nodeFailureEvent = schema.new({
         id = id.from(_N, "FlowExecutionEvent", "nodeFailureEvent"),
         type = "structure",
         name = "nodeFailureEvent",
         target_id = id.from(_N, "NodeFailureEvent"),
         target = M.NodeFailureEvent,
      }),
      flowFailureEvent = schema.new({
         id = id.from(_N, "FlowExecutionEvent", "flowFailureEvent"),
         type = "structure",
         name = "flowFailureEvent",
         target_id = id.from(_N, "FlowFailureEvent"),
         target = M.FlowFailureEvent,
      }),
      nodeActionEvent = schema.new({
         id = id.from(_N, "FlowExecutionEvent", "nodeActionEvent"),
         type = "structure",
         name = "nodeActionEvent",
         target_id = id.from(_N, "NodeActionEvent"),
         target = M.NodeActionEvent,
      }),
      nodeDependencyEvent = schema.new({
         id = id.from(_N, "FlowExecutionEvent", "nodeDependencyEvent"),
         type = "structure",
         name = "nodeDependencyEvent",
         target_id = id.from(_N, "NodeDependencyEvent"),
         target = M.NodeDependencyEvent,
      }),
   },
})

M.ListFlowExecutionEventsOutput = schema.new({
   id = id.from(_N, "ListFlowExecutionEventsResponse"),
   type = "structure",
   members = {
      flowExecutionEvents = schema.new({
         id = id.from(_N, "ListFlowExecutionEventsOutput", "flowExecutionEvents"),
         type = "list",
         name = "flowExecutionEvents",
         target_id = prelude.Document.id,
         list_member = M.FlowExecutionEvent,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListFlowExecutionEventsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListFlowExecutionsInput = schema.new({
   id = id.from(_N, "ListFlowExecutionsRequest"),
   type = "structure",
   members = {
      flowIdentifier = schema.new({
         id = id.from(_N, "ListFlowExecutionsInput", "flowIdentifier"),
         type = "string",
         name = "flowIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      flowAliasIdentifier = schema.new({
         id = id.from(_N, "ListFlowExecutionsInput", "flowAliasIdentifier"),
         type = "string",
         name = "flowAliasIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "flowAliasIdentifier" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListFlowExecutionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListFlowExecutionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.FlowExecutionSummary = schema.new({
   id = id.from(_N, "FlowExecutionSummary"),
   type = "structure",
   members = {
      executionArn = schema.new({
         id = id.from(_N, "FlowExecutionSummary", "executionArn"),
         type = "string",
         name = "executionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      flowAliasIdentifier = schema.new({
         id = id.from(_N, "FlowExecutionSummary", "flowAliasIdentifier"),
         type = "string",
         name = "flowAliasIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      flowIdentifier = schema.new({
         id = id.from(_N, "FlowExecutionSummary", "flowIdentifier"),
         type = "string",
         name = "flowIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      flowVersion = schema.new({
         id = id.from(_N, "FlowExecutionSummary", "flowVersion"),
         type = "string",
         name = "flowVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "FlowExecutionSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdAt = schema.new({
         id = id.from(_N, "FlowExecutionSummary", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endedAt = schema.new({
         id = id.from(_N, "FlowExecutionSummary", "endedAt"),
         type = "timestamp",
         name = "endedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
   },
})

M.ListFlowExecutionsOutput = schema.new({
   id = id.from(_N, "ListFlowExecutionsResponse"),
   type = "structure",
   members = {
      flowExecutionSummaries = schema.new({
         id = id.from(_N, "ListFlowExecutionsOutput", "flowExecutionSummaries"),
         type = "list",
         name = "flowExecutionSummaries",
         target_id = prelude.Document.id,
         list_member = M.FlowExecutionSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListFlowExecutionsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.BadGatewayException = schema.new({
   id = id.from(_N, "BadGatewayException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "BadGatewayException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      resourceName = schema.new({
         id = id.from(_N, "BadGatewayException", "resourceName"),
         type = "string",
         name = "resourceName",
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
      message = schema.new({
         id = id.from(_N, "ConflictException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.DependencyFailedException = schema.new({
   id = id.from(_N, "DependencyFailedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "DependencyFailedException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      resourceName = schema.new({
         id = id.from(_N, "DependencyFailedException", "resourceName"),
         type = "string",
         name = "resourceName",
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
      message = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.FlowInputContent = schema.new({
   id = id.from(_N, "FlowInputContent"),
   type = "union",
   members = {
      document = schema.new({
         id = id.from(_N, "FlowInputContent", "document"),
         type = "document",
         name = "document",
         target_id = prelude.Document.id,
      }),
   },
})

M.FlowInput = schema.new({
   id = id.from(_N, "FlowInput"),
   type = "structure",
   members = {
      nodeName = schema.new({
         id = id.from(_N, "FlowInput", "nodeName"),
         type = "string",
         name = "nodeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nodeOutputName = schema.new({
         id = id.from(_N, "FlowInput", "nodeOutputName"),
         type = "string",
         name = "nodeOutputName",
         target_id = prelude.String.id,
      }),
      content = schema.new({
         id = id.from(_N, "FlowInput", "content"),
         type = "union",
         name = "content",
         target_id = id.from(_N, "FlowInputContent"),
         target = M.FlowInputContent,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nodeInputName = schema.new({
         id = id.from(_N, "FlowInput", "nodeInputName"),
         type = "string",
         name = "nodeInputName",
         target_id = prelude.String.id,
      }),
   },
})

M.PerformanceConfiguration = schema.new({
   id = id.from(_N, "PerformanceConfiguration"),
   type = "structure",
   members = {
      latency = schema.new({
         id = id.from(_N, "PerformanceConfiguration", "latency"),
         type = "string",
         name = "latency",
         target_id = prelude.String.id,
         traits = {
            [traits.DEFAULT] = { value = "standard" },
         },
      }),
   },
})

M.ModelPerformanceConfiguration = schema.new({
   id = id.from(_N, "ModelPerformanceConfiguration"),
   type = "structure",
   members = {
      performanceConfig = schema.new({
         id = id.from(_N, "ModelPerformanceConfiguration", "performanceConfig"),
         type = "structure",
         name = "performanceConfig",
         target_id = id.from(_N, "PerformanceConfiguration"),
         target = M.PerformanceConfiguration,
      }),
   },
})

M.StartFlowExecutionInput = schema.new({
   id = id.from(_N, "StartFlowExecutionRequest"),
   type = "structure",
   members = {
      flowIdentifier = schema.new({
         id = id.from(_N, "StartFlowExecutionInput", "flowIdentifier"),
         type = "string",
         name = "flowIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      flowAliasIdentifier = schema.new({
         id = id.from(_N, "StartFlowExecutionInput", "flowAliasIdentifier"),
         type = "string",
         name = "flowAliasIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      flowExecutionName = schema.new({
         id = id.from(_N, "StartFlowExecutionInput", "flowExecutionName"),
         type = "string",
         name = "flowExecutionName",
         target_id = prelude.String.id,
      }),
      inputs = schema.new({
         id = id.from(_N, "StartFlowExecutionInput", "inputs"),
         type = "list",
         name = "inputs",
         target_id = prelude.Document.id,
         list_member = M.FlowInput,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      modelPerformanceConfiguration = schema.new({
         id = id.from(_N, "StartFlowExecutionInput", "modelPerformanceConfiguration"),
         type = "structure",
         name = "modelPerformanceConfiguration",
         target_id = id.from(_N, "ModelPerformanceConfiguration"),
         target = M.ModelPerformanceConfiguration,
      }),
   },
})

M.StartFlowExecutionOutput = schema.new({
   id = id.from(_N, "StartFlowExecutionResponse"),
   type = "structure",
   members = {
      executionArn = schema.new({
         id = id.from(_N, "StartFlowExecutionOutput", "executionArn"),
         type = "string",
         name = "executionArn",
         target_id = prelude.String.id,
      }),
   },
})

M.StopFlowExecutionInput = schema.new({
   id = id.from(_N, "StopFlowExecutionRequest"),
   type = "structure",
   members = {
      flowIdentifier = schema.new({
         id = id.from(_N, "StopFlowExecutionInput", "flowIdentifier"),
         type = "string",
         name = "flowIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      flowAliasIdentifier = schema.new({
         id = id.from(_N, "StopFlowExecutionInput", "flowAliasIdentifier"),
         type = "string",
         name = "flowAliasIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      executionIdentifier = schema.new({
         id = id.from(_N, "StopFlowExecutionInput", "executionIdentifier"),
         type = "string",
         name = "executionIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.StopFlowExecutionOutput = schema.new({
   id = id.from(_N, "StopFlowExecutionResponse"),
   type = "structure",
   members = {
      executionArn = schema.new({
         id = id.from(_N, "StopFlowExecutionOutput", "executionArn"),
         type = "string",
         name = "executionArn",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "StopFlowExecutionOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.InvokeFlowInput = schema.new({
   id = id.from(_N, "InvokeFlowRequest"),
   type = "structure",
   members = {
      flowIdentifier = schema.new({
         id = id.from(_N, "InvokeFlowInput", "flowIdentifier"),
         type = "string",
         name = "flowIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      flowAliasIdentifier = schema.new({
         id = id.from(_N, "InvokeFlowInput", "flowAliasIdentifier"),
         type = "string",
         name = "flowAliasIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      inputs = schema.new({
         id = id.from(_N, "InvokeFlowInput", "inputs"),
         type = "list",
         name = "inputs",
         target_id = prelude.Document.id,
         list_member = M.FlowInput,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      enableTrace = schema.new({
         id = id.from(_N, "InvokeFlowInput", "enableTrace"),
         type = "boolean",
         name = "enableTrace",
         target_id = prelude.Boolean.id,
      }),
      modelPerformanceConfiguration = schema.new({
         id = id.from(_N, "InvokeFlowInput", "modelPerformanceConfiguration"),
         type = "structure",
         name = "modelPerformanceConfiguration",
         target_id = id.from(_N, "ModelPerformanceConfiguration"),
         target = M.ModelPerformanceConfiguration,
      }),
      executionId = schema.new({
         id = id.from(_N, "InvokeFlowInput", "executionId"),
         type = "string",
         name = "executionId",
         target_id = prelude.String.id,
      }),
   },
})

M.FlowCompletionEvent = schema.new({
   id = id.from(_N, "FlowCompletionEvent"),
   type = "structure",
   members = {
      completionReason = schema.new({
         id = id.from(_N, "FlowCompletionEvent", "completionReason"),
         type = "string",
         name = "completionReason",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FlowMultiTurnInputContent = schema.new({
   id = id.from(_N, "FlowMultiTurnInputContent"),
   type = "union",
   members = {
      document = schema.new({
         id = id.from(_N, "FlowMultiTurnInputContent", "document"),
         type = "document",
         name = "document",
         target_id = prelude.Document.id,
      }),
   },
})

M.FlowMultiTurnInputRequestEvent = schema.new({
   id = id.from(_N, "FlowMultiTurnInputRequestEvent"),
   type = "structure",
   members = {
      nodeName = schema.new({
         id = id.from(_N, "FlowMultiTurnInputRequestEvent", "nodeName"),
         type = "string",
         name = "nodeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nodeType = schema.new({
         id = id.from(_N, "FlowMultiTurnInputRequestEvent", "nodeType"),
         type = "string",
         name = "nodeType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      content = schema.new({
         id = id.from(_N, "FlowMultiTurnInputRequestEvent", "content"),
         type = "union",
         name = "content",
         target_id = id.from(_N, "FlowMultiTurnInputContent"),
         target = M.FlowMultiTurnInputContent,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FlowOutputContent = schema.new({
   id = id.from(_N, "FlowOutputContent"),
   type = "union",
   members = {
      document = schema.new({
         id = id.from(_N, "FlowOutputContent", "document"),
         type = "document",
         name = "document",
         target_id = prelude.Document.id,
      }),
   },
})

M.FlowOutputEvent = schema.new({
   id = id.from(_N, "FlowOutputEvent"),
   type = "structure",
   members = {
      nodeName = schema.new({
         id = id.from(_N, "FlowOutputEvent", "nodeName"),
         type = "string",
         name = "nodeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nodeType = schema.new({
         id = id.from(_N, "FlowOutputEvent", "nodeType"),
         type = "string",
         name = "nodeType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      content = schema.new({
         id = id.from(_N, "FlowOutputEvent", "content"),
         type = "union",
         name = "content",
         target_id = id.from(_N, "FlowOutputContent"),
         target = M.FlowOutputContent,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FlowTraceCondition = schema.new({
   id = id.from(_N, "FlowTraceCondition"),
   type = "structure",
   members = {
      conditionName = schema.new({
         id = id.from(_N, "FlowTraceCondition", "conditionName"),
         type = "string",
         name = "conditionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FlowTraceConditionNodeResultEvent = schema.new({
   id = id.from(_N, "FlowTraceConditionNodeResultEvent"),
   type = "structure",
   members = {
      nodeName = schema.new({
         id = id.from(_N, "FlowTraceConditionNodeResultEvent", "nodeName"),
         type = "string",
         name = "nodeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timestamp = schema.new({
         id = id.from(_N, "FlowTraceConditionNodeResultEvent", "timestamp"),
         type = "timestamp",
         name = "timestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      satisfiedConditions = schema.new({
         id = id.from(_N, "FlowTraceConditionNodeResultEvent", "satisfiedConditions"),
         type = "list",
         name = "satisfiedConditions",
         target_id = prelude.Document.id,
         list_member = M.FlowTraceCondition,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FlowTraceNodeActionEvent = schema.new({
   id = id.from(_N, "FlowTraceNodeActionEvent"),
   type = "structure",
   members = {
      nodeName = schema.new({
         id = id.from(_N, "FlowTraceNodeActionEvent", "nodeName"),
         type = "string",
         name = "nodeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timestamp = schema.new({
         id = id.from(_N, "FlowTraceNodeActionEvent", "timestamp"),
         type = "timestamp",
         name = "timestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      requestId = schema.new({
         id = id.from(_N, "FlowTraceNodeActionEvent", "requestId"),
         type = "string",
         name = "requestId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      serviceName = schema.new({
         id = id.from(_N, "FlowTraceNodeActionEvent", "serviceName"),
         type = "string",
         name = "serviceName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operationName = schema.new({
         id = id.from(_N, "FlowTraceNodeActionEvent", "operationName"),
         type = "string",
         name = "operationName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operationRequest = schema.new({
         id = id.from(_N, "FlowTraceNodeActionEvent", "operationRequest"),
         type = "document",
         name = "operationRequest",
         target_id = prelude.Document.id,
      }),
      operationResponse = schema.new({
         id = id.from(_N, "FlowTraceNodeActionEvent", "operationResponse"),
         type = "document",
         name = "operationResponse",
         target_id = prelude.Document.id,
      }),
   },
})

M.TraceElements = schema.new({
   id = id.from(_N, "TraceElements"),
   type = "union",
   members = {
      agentTraces = schema.new({
         id = id.from(_N, "TraceElements", "agentTraces"),
         type = "list",
         name = "agentTraces",
         target_id = prelude.Document.id,
         list_member = M.TracePart,
      }),
   },
})

M.FlowTraceDependencyEvent = schema.new({
   id = id.from(_N, "FlowTraceDependencyEvent"),
   type = "structure",
   members = {
      nodeName = schema.new({
         id = id.from(_N, "FlowTraceDependencyEvent", "nodeName"),
         type = "string",
         name = "nodeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timestamp = schema.new({
         id = id.from(_N, "FlowTraceDependencyEvent", "timestamp"),
         type = "timestamp",
         name = "timestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      traceElements = schema.new({
         id = id.from(_N, "FlowTraceDependencyEvent", "traceElements"),
         type = "union",
         name = "traceElements",
         target_id = id.from(_N, "TraceElements"),
         target = M.TraceElements,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FlowTraceNodeInputContent = schema.new({
   id = id.from(_N, "FlowTraceNodeInputContent"),
   type = "union",
   members = {
      document = schema.new({
         id = id.from(_N, "FlowTraceNodeInputContent", "document"),
         type = "document",
         name = "document",
         target_id = prelude.Document.id,
      }),
   },
})

M.FlowTraceNodeInputExecutionChainItem = schema.new({
   id = id.from(_N, "FlowTraceNodeInputExecutionChainItem"),
   type = "structure",
   members = {
      nodeName = schema.new({
         id = id.from(_N, "FlowTraceNodeInputExecutionChainItem", "nodeName"),
         type = "string",
         name = "nodeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      index = schema.new({
         id = id.from(_N, "FlowTraceNodeInputExecutionChainItem", "index"),
         type = "integer",
         name = "index",
         target_id = prelude.Integer.id,
      }),
      type = schema.new({
         id = id.from(_N, "FlowTraceNodeInputExecutionChainItem", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FlowTraceNodeInputSource = schema.new({
   id = id.from(_N, "FlowTraceNodeInputSource"),
   type = "structure",
   members = {
      nodeName = schema.new({
         id = id.from(_N, "FlowTraceNodeInputSource", "nodeName"),
         type = "string",
         name = "nodeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      outputFieldName = schema.new({
         id = id.from(_N, "FlowTraceNodeInputSource", "outputFieldName"),
         type = "string",
         name = "outputFieldName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      expression = schema.new({
         id = id.from(_N, "FlowTraceNodeInputSource", "expression"),
         type = "string",
         name = "expression",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FlowTraceNodeInputField = schema.new({
   id = id.from(_N, "FlowTraceNodeInputField"),
   type = "structure",
   members = {
      nodeInputName = schema.new({
         id = id.from(_N, "FlowTraceNodeInputField", "nodeInputName"),
         type = "string",
         name = "nodeInputName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      content = schema.new({
         id = id.from(_N, "FlowTraceNodeInputField", "content"),
         type = "union",
         name = "content",
         target_id = id.from(_N, "FlowTraceNodeInputContent"),
         target = M.FlowTraceNodeInputContent,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      source = schema.new({
         id = id.from(_N, "FlowTraceNodeInputField", "source"),
         type = "structure",
         name = "source",
         target_id = id.from(_N, "FlowTraceNodeInputSource"),
         target = M.FlowTraceNodeInputSource,
      }),
      type = schema.new({
         id = id.from(_N, "FlowTraceNodeInputField", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      category = schema.new({
         id = id.from(_N, "FlowTraceNodeInputField", "category"),
         type = "string",
         name = "category",
         target_id = prelude.String.id,
      }),
      executionChain = schema.new({
         id = id.from(_N, "FlowTraceNodeInputField", "executionChain"),
         type = "list",
         name = "executionChain",
         target_id = prelude.Document.id,
         list_member = M.FlowTraceNodeInputExecutionChainItem,
      }),
   },
})

M.FlowTraceNodeInputEvent = schema.new({
   id = id.from(_N, "FlowTraceNodeInputEvent"),
   type = "structure",
   members = {
      nodeName = schema.new({
         id = id.from(_N, "FlowTraceNodeInputEvent", "nodeName"),
         type = "string",
         name = "nodeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timestamp = schema.new({
         id = id.from(_N, "FlowTraceNodeInputEvent", "timestamp"),
         type = "timestamp",
         name = "timestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      fields = schema.new({
         id = id.from(_N, "FlowTraceNodeInputEvent", "fields"),
         type = "list",
         name = "fields",
         target_id = prelude.Document.id,
         list_member = M.FlowTraceNodeInputField,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FlowTraceNodeOutputContent = schema.new({
   id = id.from(_N, "FlowTraceNodeOutputContent"),
   type = "union",
   members = {
      document = schema.new({
         id = id.from(_N, "FlowTraceNodeOutputContent", "document"),
         type = "document",
         name = "document",
         target_id = prelude.Document.id,
      }),
   },
})

M.FlowTraceNodeOutputNext = schema.new({
   id = id.from(_N, "FlowTraceNodeOutputNext"),
   type = "structure",
   members = {
      nodeName = schema.new({
         id = id.from(_N, "FlowTraceNodeOutputNext", "nodeName"),
         type = "string",
         name = "nodeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      inputFieldName = schema.new({
         id = id.from(_N, "FlowTraceNodeOutputNext", "inputFieldName"),
         type = "string",
         name = "inputFieldName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FlowTraceNodeOutputField = schema.new({
   id = id.from(_N, "FlowTraceNodeOutputField"),
   type = "structure",
   members = {
      nodeOutputName = schema.new({
         id = id.from(_N, "FlowTraceNodeOutputField", "nodeOutputName"),
         type = "string",
         name = "nodeOutputName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      content = schema.new({
         id = id.from(_N, "FlowTraceNodeOutputField", "content"),
         type = "union",
         name = "content",
         target_id = id.from(_N, "FlowTraceNodeOutputContent"),
         target = M.FlowTraceNodeOutputContent,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      next = schema.new({
         id = id.from(_N, "FlowTraceNodeOutputField", "next"),
         type = "list",
         name = "next",
         target_id = prelude.Document.id,
         list_member = M.FlowTraceNodeOutputNext,
      }),
      type = schema.new({
         id = id.from(_N, "FlowTraceNodeOutputField", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
   },
})

M.FlowTraceNodeOutputEvent = schema.new({
   id = id.from(_N, "FlowTraceNodeOutputEvent"),
   type = "structure",
   members = {
      nodeName = schema.new({
         id = id.from(_N, "FlowTraceNodeOutputEvent", "nodeName"),
         type = "string",
         name = "nodeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timestamp = schema.new({
         id = id.from(_N, "FlowTraceNodeOutputEvent", "timestamp"),
         type = "timestamp",
         name = "timestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      fields = schema.new({
         id = id.from(_N, "FlowTraceNodeOutputEvent", "fields"),
         type = "list",
         name = "fields",
         target_id = prelude.Document.id,
         list_member = M.FlowTraceNodeOutputField,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FlowTrace = schema.new({
   id = id.from(_N, "FlowTrace"),
   type = "union",
   members = {
      nodeInputTrace = schema.new({
         id = id.from(_N, "FlowTrace", "nodeInputTrace"),
         type = "structure",
         name = "nodeInputTrace",
         target_id = id.from(_N, "FlowTraceNodeInputEvent"),
         target = M.FlowTraceNodeInputEvent,
      }),
      nodeOutputTrace = schema.new({
         id = id.from(_N, "FlowTrace", "nodeOutputTrace"),
         type = "structure",
         name = "nodeOutputTrace",
         target_id = id.from(_N, "FlowTraceNodeOutputEvent"),
         target = M.FlowTraceNodeOutputEvent,
      }),
      conditionNodeResultTrace = schema.new({
         id = id.from(_N, "FlowTrace", "conditionNodeResultTrace"),
         type = "structure",
         name = "conditionNodeResultTrace",
         target_id = id.from(_N, "FlowTraceConditionNodeResultEvent"),
         target = M.FlowTraceConditionNodeResultEvent,
      }),
      nodeActionTrace = schema.new({
         id = id.from(_N, "FlowTrace", "nodeActionTrace"),
         type = "structure",
         name = "nodeActionTrace",
         target_id = id.from(_N, "FlowTraceNodeActionEvent"),
         target = M.FlowTraceNodeActionEvent,
      }),
      nodeDependencyTrace = schema.new({
         id = id.from(_N, "FlowTrace", "nodeDependencyTrace"),
         type = "structure",
         name = "nodeDependencyTrace",
         target_id = id.from(_N, "FlowTraceDependencyEvent"),
         target = M.FlowTraceDependencyEvent,
      }),
   },
})

M.FlowTraceEvent = schema.new({
   id = id.from(_N, "FlowTraceEvent"),
   type = "structure",
   members = {
      trace = schema.new({
         id = id.from(_N, "FlowTraceEvent", "trace"),
         type = "union",
         name = "trace",
         target_id = id.from(_N, "FlowTrace"),
         target = M.FlowTrace,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FlowResponseStream = schema.new({
   id = id.from(_N, "FlowResponseStream"),
   type = "union",
   members = {
      flowOutputEvent = schema.new({
         id = id.from(_N, "FlowResponseStream", "flowOutputEvent"),
         type = "structure",
         name = "flowOutputEvent",
         target_id = id.from(_N, "FlowOutputEvent"),
         target = M.FlowOutputEvent,
      }),
      flowCompletionEvent = schema.new({
         id = id.from(_N, "FlowResponseStream", "flowCompletionEvent"),
         type = "structure",
         name = "flowCompletionEvent",
         target_id = id.from(_N, "FlowCompletionEvent"),
         target = M.FlowCompletionEvent,
      }),
      flowTraceEvent = schema.new({
         id = id.from(_N, "FlowResponseStream", "flowTraceEvent"),
         type = "structure",
         name = "flowTraceEvent",
         target_id = id.from(_N, "FlowTraceEvent"),
         target = M.FlowTraceEvent,
      }),
      internalServerException = schema.new({
         id = id.from(_N, "FlowResponseStream", "internalServerException"),
         type = "structure",
         name = "internalServerException",
         target_id = id.from(_N, "InternalServerException"),
         target = M.InternalServerException,
      }),
      validationException = schema.new({
         id = id.from(_N, "FlowResponseStream", "validationException"),
         type = "structure",
         name = "validationException",
         target_id = id.from(_N, "ValidationException"),
         target = M.ValidationException,
      }),
      resourceNotFoundException = schema.new({
         id = id.from(_N, "FlowResponseStream", "resourceNotFoundException"),
         type = "structure",
         name = "resourceNotFoundException",
         target_id = id.from(_N, "ResourceNotFoundException"),
         target = M.ResourceNotFoundException,
      }),
      serviceQuotaExceededException = schema.new({
         id = id.from(_N, "FlowResponseStream", "serviceQuotaExceededException"),
         type = "structure",
         name = "serviceQuotaExceededException",
         target_id = id.from(_N, "ServiceQuotaExceededException"),
         target = M.ServiceQuotaExceededException,
      }),
      throttlingException = schema.new({
         id = id.from(_N, "FlowResponseStream", "throttlingException"),
         type = "structure",
         name = "throttlingException",
         target_id = id.from(_N, "ThrottlingException"),
         target = M.ThrottlingException,
      }),
      accessDeniedException = schema.new({
         id = id.from(_N, "FlowResponseStream", "accessDeniedException"),
         type = "structure",
         name = "accessDeniedException",
         target_id = id.from(_N, "AccessDeniedException"),
         target = M.AccessDeniedException,
      }),
      conflictException = schema.new({
         id = id.from(_N, "FlowResponseStream", "conflictException"),
         type = "structure",
         name = "conflictException",
         target_id = id.from(_N, "ConflictException"),
         target = M.ConflictException,
      }),
      dependencyFailedException = schema.new({
         id = id.from(_N, "FlowResponseStream", "dependencyFailedException"),
         type = "structure",
         name = "dependencyFailedException",
         target_id = id.from(_N, "DependencyFailedException"),
         target = M.DependencyFailedException,
      }),
      badGatewayException = schema.new({
         id = id.from(_N, "FlowResponseStream", "badGatewayException"),
         type = "structure",
         name = "badGatewayException",
         target_id = id.from(_N, "BadGatewayException"),
         target = M.BadGatewayException,
      }),
      flowMultiTurnInputRequestEvent = schema.new({
         id = id.from(_N, "FlowResponseStream", "flowMultiTurnInputRequestEvent"),
         type = "structure",
         name = "flowMultiTurnInputRequestEvent",
         target_id = id.from(_N, "FlowMultiTurnInputRequestEvent"),
         target = M.FlowMultiTurnInputRequestEvent,
      }),
   },
})

M.InvokeFlowOutput = schema.new({
   id = id.from(_N, "InvokeFlowResponse"),
   type = "structure",
   members = {
      responseStream = schema.new({
         id = id.from(_N, "InvokeFlowOutput", "responseStream"),
         type = "union",
         name = "responseStream",
         target_id = id.from(_N, "FlowResponseStream"),
         target = M.FlowResponseStream,
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
      executionId = schema.new({
         id = id.from(_N, "InvokeFlowOutput", "executionId"),
         type = "string",
         name = "executionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-bedrock-flow-execution-id" },
         },
      }),
   },
})

M.QueryGenerationInput = schema.new({
   id = id.from(_N, "QueryGenerationInput"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "QueryGenerationInput", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      text = schema.new({
         id = id.from(_N, "QueryGenerationInput", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TextToSqlKnowledgeBaseConfiguration = schema.new({
   id = id.from(_N, "TextToSqlKnowledgeBaseConfiguration"),
   type = "structure",
   members = {
      knowledgeBaseArn = schema.new({
         id = id.from(_N, "TextToSqlKnowledgeBaseConfiguration", "knowledgeBaseArn"),
         type = "string",
         name = "knowledgeBaseArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TextToSqlConfiguration = schema.new({
   id = id.from(_N, "TextToSqlConfiguration"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "TextToSqlConfiguration", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      knowledgeBaseConfiguration = schema.new({
         id = id.from(_N, "TextToSqlConfiguration", "knowledgeBaseConfiguration"),
         type = "structure",
         name = "knowledgeBaseConfiguration",
         target_id = id.from(_N, "TextToSqlKnowledgeBaseConfiguration"),
         target = M.TextToSqlKnowledgeBaseConfiguration,
      }),
   },
})

M.TransformationConfiguration = schema.new({
   id = id.from(_N, "TransformationConfiguration"),
   type = "structure",
   members = {
      mode = schema.new({
         id = id.from(_N, "TransformationConfiguration", "mode"),
         type = "string",
         name = "mode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      textToSqlConfiguration = schema.new({
         id = id.from(_N, "TransformationConfiguration", "textToSqlConfiguration"),
         type = "structure",
         name = "textToSqlConfiguration",
         target_id = id.from(_N, "TextToSqlConfiguration"),
         target = M.TextToSqlConfiguration,
      }),
   },
})

M.GenerateQueryInput = schema.new({
   id = id.from(_N, "GenerateQueryRequest"),
   type = "structure",
   members = {
      queryGenerationInput = schema.new({
         id = id.from(_N, "GenerateQueryInput", "queryGenerationInput"),
         type = "structure",
         name = "queryGenerationInput",
         target_id = id.from(_N, "QueryGenerationInput"),
         target = M.QueryGenerationInput,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      transformationConfiguration = schema.new({
         id = id.from(_N, "GenerateQueryInput", "transformationConfiguration"),
         type = "structure",
         name = "transformationConfiguration",
         target_id = id.from(_N, "TransformationConfiguration"),
         target = M.TransformationConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GeneratedQuery = schema.new({
   id = id.from(_N, "GeneratedQuery"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "GeneratedQuery", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      sql = schema.new({
         id = id.from(_N, "GeneratedQuery", "sql"),
         type = "string",
         name = "sql",
         target_id = prelude.String.id,
      }),
   },
})

M.GenerateQueryOutput = schema.new({
   id = id.from(_N, "GenerateQueryResponse"),
   type = "structure",
   members = {
      queries = schema.new({
         id = id.from(_N, "GenerateQueryOutput", "queries"),
         type = "list",
         name = "queries",
         target_id = prelude.Document.id,
         list_member = M.GeneratedQuery,
      }),
   },
})

M.BedrockModelConfigurations = schema.new({
   id = id.from(_N, "BedrockModelConfigurations"),
   type = "structure",
   members = {
      performanceConfig = schema.new({
         id = id.from(_N, "BedrockModelConfigurations", "performanceConfig"),
         type = "structure",
         name = "performanceConfig",
         target_id = id.from(_N, "PerformanceConfiguration"),
         target = M.PerformanceConfiguration,
      }),
   },
})

M.PromptCreationConfigurations = schema.new({
   id = id.from(_N, "PromptCreationConfigurations"),
   type = "structure",
   members = {
      previousConversationTurnsToInclude = schema.new({
         id = id.from(_N, "PromptCreationConfigurations", "previousConversationTurnsToInclude"),
         type = "integer",
         name = "previousConversationTurnsToInclude",
         target_id = prelude.Integer.id,
      }),
      excludePreviousThinkingSteps = schema.new({
         id = id.from(_N, "PromptCreationConfigurations", "excludePreviousThinkingSteps"),
         type = "boolean",
         name = "excludePreviousThinkingSteps",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.ContentBlock = schema.new({
   id = id.from(_N, "ContentBlock"),
   type = "union",
   members = {
      text = schema.new({
         id = id.from(_N, "ContentBlock", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
      }),
   },
})

M.Message = schema.new({
   id = id.from(_N, "Message"),
   type = "structure",
   members = {
      role = schema.new({
         id = id.from(_N, "Message", "role"),
         type = "string",
         name = "role",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      content = schema.new({
         id = id.from(_N, "Message", "content"),
         type = "list",
         name = "content",
         target_id = prelude.Document.id,
         list_member = M.ContentBlock,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ConversationHistory = schema.new({
   id = id.from(_N, "ConversationHistory"),
   type = "structure",
   members = {
      messages = schema.new({
         id = id.from(_N, "ConversationHistory", "messages"),
         type = "list",
         name = "messages",
         target_id = prelude.Document.id,
         list_member = M.Message,
      }),
   },
})

M.ByteContentFile = schema.new({
   id = id.from(_N, "ByteContentFile"),
   type = "structure",
   members = {
      mediaType = schema.new({
         id = id.from(_N, "ByteContentFile", "mediaType"),
         type = "string",
         name = "mediaType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      data = schema.new({
         id = id.from(_N, "ByteContentFile", "data"),
         type = "blob",
         name = "data",
         target_id = prelude.Blob.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.S3ObjectFile = schema.new({
   id = id.from(_N, "S3ObjectFile"),
   type = "structure",
   members = {
      uri = schema.new({
         id = id.from(_N, "S3ObjectFile", "uri"),
         type = "string",
         name = "uri",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FileSource = schema.new({
   id = id.from(_N, "FileSource"),
   type = "structure",
   members = {
      sourceType = schema.new({
         id = id.from(_N, "FileSource", "sourceType"),
         type = "string",
         name = "sourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      s3Location = schema.new({
         id = id.from(_N, "FileSource", "s3Location"),
         type = "structure",
         name = "s3Location",
         target_id = id.from(_N, "S3ObjectFile"),
         target = M.S3ObjectFile,
      }),
      byteContent = schema.new({
         id = id.from(_N, "FileSource", "byteContent"),
         type = "structure",
         name = "byteContent",
         target_id = id.from(_N, "ByteContentFile"),
         target = M.ByteContentFile,
      }),
   },
})

M.InputFile = schema.new({
   id = id.from(_N, "InputFile"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "InputFile", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      source = schema.new({
         id = id.from(_N, "InputFile", "source"),
         type = "structure",
         name = "source",
         target_id = id.from(_N, "FileSource"),
         target = M.FileSource,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      useCase = schema.new({
         id = id.from(_N, "InputFile", "useCase"),
         type = "string",
         name = "useCase",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FilterAttribute = schema.new({
   id = id.from(_N, "FilterAttribute"),
   type = "structure",
   members = {
      key = schema.new({
         id = id.from(_N, "FilterAttribute", "key"),
         type = "string",
         name = "key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "FilterAttribute", "value"),
         type = "document",
         name = "value",
         target_id = prelude.Document.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.MetadataAttributeSchema = schema.new({
   id = id.from(_N, "MetadataAttributeSchema"),
   type = "structure",
   members = {
      key = schema.new({
         id = id.from(_N, "MetadataAttributeSchema", "key"),
         type = "string",
         name = "key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "MetadataAttributeSchema", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "MetadataAttributeSchema", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ImplicitFilterConfiguration = schema.new({
   id = id.from(_N, "ImplicitFilterConfiguration"),
   type = "structure",
   members = {
      metadataAttributes = schema.new({
         id = id.from(_N, "ImplicitFilterConfiguration", "metadataAttributes"),
         type = "list",
         name = "metadataAttributes",
         target_id = prelude.Document.id,
         list_member = M.MetadataAttributeSchema,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      modelArn = schema.new({
         id = id.from(_N, "ImplicitFilterConfiguration", "modelArn"),
         type = "string",
         name = "modelArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FieldForReranking = schema.new({
   id = id.from(_N, "FieldForReranking"),
   type = "structure",
   members = {
      fieldName = schema.new({
         id = id.from(_N, "FieldForReranking", "fieldName"),
         type = "string",
         name = "fieldName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RerankingMetadataSelectiveModeConfiguration = schema.new({
   id = id.from(_N, "RerankingMetadataSelectiveModeConfiguration"),
   type = "union",
   members = {
      fieldsToInclude = schema.new({
         id = id.from(_N, "RerankingMetadataSelectiveModeConfiguration", "fieldsToInclude"),
         type = "list",
         name = "fieldsToInclude",
         target_id = prelude.Document.id,
         list_member = M.FieldForReranking,
      }),
      fieldsToExclude = schema.new({
         id = id.from(_N, "RerankingMetadataSelectiveModeConfiguration", "fieldsToExclude"),
         type = "list",
         name = "fieldsToExclude",
         target_id = prelude.Document.id,
         list_member = M.FieldForReranking,
      }),
   },
})

M.MetadataConfigurationForReranking = schema.new({
   id = id.from(_N, "MetadataConfigurationForReranking"),
   type = "structure",
   members = {
      selectionMode = schema.new({
         id = id.from(_N, "MetadataConfigurationForReranking", "selectionMode"),
         type = "string",
         name = "selectionMode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      selectiveModeConfiguration = schema.new({
         id = id.from(_N, "MetadataConfigurationForReranking", "selectiveModeConfiguration"),
         type = "union",
         name = "selectiveModeConfiguration",
         target_id = id.from(_N, "RerankingMetadataSelectiveModeConfiguration"),
         target = M.RerankingMetadataSelectiveModeConfiguration,
      }),
   },
})

M.VectorSearchBedrockRerankingModelConfiguration = schema.new({
   id = id.from(_N, "VectorSearchBedrockRerankingModelConfiguration"),
   type = "structure",
   members = {
      modelArn = schema.new({
         id = id.from(_N, "VectorSearchBedrockRerankingModelConfiguration", "modelArn"),
         type = "string",
         name = "modelArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      additionalModelRequestFields = schema.new({
         id = id.from(_N, "VectorSearchBedrockRerankingModelConfiguration", "additionalModelRequestFields"),
         type = "map",
         name = "additionalModelRequestFields",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Document,
      }),
   },
})

M.VectorSearchBedrockRerankingConfiguration = schema.new({
   id = id.from(_N, "VectorSearchBedrockRerankingConfiguration"),
   type = "structure",
   members = {
      modelConfiguration = schema.new({
         id = id.from(_N, "VectorSearchBedrockRerankingConfiguration", "modelConfiguration"),
         type = "structure",
         name = "modelConfiguration",
         target_id = id.from(_N, "VectorSearchBedrockRerankingModelConfiguration"),
         target = M.VectorSearchBedrockRerankingModelConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      numberOfRerankedResults = schema.new({
         id = id.from(_N, "VectorSearchBedrockRerankingConfiguration", "numberOfRerankedResults"),
         type = "integer",
         name = "numberOfRerankedResults",
         target_id = prelude.Integer.id,
      }),
      metadataConfiguration = schema.new({
         id = id.from(_N, "VectorSearchBedrockRerankingConfiguration", "metadataConfiguration"),
         type = "structure",
         name = "metadataConfiguration",
         target_id = id.from(_N, "MetadataConfigurationForReranking"),
         target = M.MetadataConfigurationForReranking,
      }),
   },
})

M.VectorSearchRerankingConfiguration = schema.new({
   id = id.from(_N, "VectorSearchRerankingConfiguration"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "VectorSearchRerankingConfiguration", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      bedrockRerankingConfiguration = schema.new({
         id = id.from(_N, "VectorSearchRerankingConfiguration", "bedrockRerankingConfiguration"),
         type = "structure",
         name = "bedrockRerankingConfiguration",
         target_id = id.from(_N, "VectorSearchBedrockRerankingConfiguration"),
         target = M.VectorSearchBedrockRerankingConfiguration,
      }),
   },
})

M.StreamingConfigurations = schema.new({
   id = id.from(_N, "StreamingConfigurations"),
   type = "structure",
   members = {
      streamFinalResponse = schema.new({
         id = id.from(_N, "StreamingConfigurations", "streamFinalResponse"),
         type = "boolean",
         name = "streamFinalResponse",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      applyGuardrailInterval = schema.new({
         id = id.from(_N, "StreamingConfigurations", "applyGuardrailInterval"),
         type = "integer",
         name = "applyGuardrailInterval",
         target_id = prelude.Integer.id,
      }),
   },
})

M.Span = schema.new({
   id = id.from(_N, "Span"),
   type = "structure",
   members = {
      start = schema.new({
         id = id.from(_N, "Span", "start"),
         type = "integer",
         name = "start",
         target_id = prelude.Integer.id,
      }),
      ["end"] = schema.new({
         id = id.from(_N, "Span", "end"),
         type = "integer",
         name = "end",
         target_id = prelude.Integer.id,
      }),
   },
})

M.TextResponsePart = schema.new({
   id = id.from(_N, "TextResponsePart"),
   type = "structure",
   members = {
      text = schema.new({
         id = id.from(_N, "TextResponsePart", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
      }),
      span = schema.new({
         id = id.from(_N, "TextResponsePart", "span"),
         type = "structure",
         name = "span",
         target_id = id.from(_N, "Span"),
         target = M.Span,
      }),
   },
})

M.GeneratedResponsePart = schema.new({
   id = id.from(_N, "GeneratedResponsePart"),
   type = "structure",
   members = {
      textResponsePart = schema.new({
         id = id.from(_N, "GeneratedResponsePart", "textResponsePart"),
         type = "structure",
         name = "textResponsePart",
         target_id = id.from(_N, "TextResponsePart"),
         target = M.TextResponsePart,
      }),
   },
})

M.Citation = schema.new({
   id = id.from(_N, "Citation"),
   type = "structure",
   members = {
      generatedResponsePart = schema.new({
         id = id.from(_N, "Citation", "generatedResponsePart"),
         type = "structure",
         name = "generatedResponsePart",
         target_id = id.from(_N, "GeneratedResponsePart"),
         target = M.GeneratedResponsePart,
      }),
      retrievedReferences = schema.new({
         id = id.from(_N, "Citation", "retrievedReferences"),
         type = "list",
         name = "retrievedReferences",
         target_id = prelude.Document.id,
         list_member = M.RetrievedReference,
      }),
   },
})

M.Attribution = schema.new({
   id = id.from(_N, "Attribution"),
   type = "structure",
   members = {
      citations = schema.new({
         id = id.from(_N, "Attribution", "citations"),
         type = "list",
         name = "citations",
         target_id = prelude.Document.id,
         list_member = M.Citation,
      }),
   },
})

M.PayloadPart = schema.new({
   id = id.from(_N, "PayloadPart"),
   type = "structure",
   members = {
      bytes = schema.new({
         id = id.from(_N, "PayloadPart", "bytes"),
         type = "blob",
         name = "bytes",
         target_id = prelude.Blob.id,
      }),
      attribution = schema.new({
         id = id.from(_N, "PayloadPart", "attribution"),
         type = "structure",
         name = "attribution",
         target_id = id.from(_N, "Attribution"),
         target = M.Attribution,
      }),
   },
})

M.OutputFile = schema.new({
   id = id.from(_N, "OutputFile"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "OutputFile", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      type = schema.new({
         id = id.from(_N, "OutputFile", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      bytes = schema.new({
         id = id.from(_N, "OutputFile", "bytes"),
         type = "blob",
         name = "bytes",
         target_id = prelude.Blob.id,
      }),
   },
})

M.FilePart = schema.new({
   id = id.from(_N, "FilePart"),
   type = "structure",
   members = {
      files = schema.new({
         id = id.from(_N, "FilePart", "files"),
         type = "list",
         name = "files",
         target_id = prelude.Document.id,
         list_member = M.OutputFile,
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
      message = schema.new({
         id = id.from(_N, "ModelNotReadyException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ResponseStream = schema.new({
   id = id.from(_N, "ResponseStream"),
   type = "union",
   members = {
      chunk = schema.new({
         id = id.from(_N, "ResponseStream", "chunk"),
         type = "structure",
         name = "chunk",
         target_id = id.from(_N, "PayloadPart"),
         target = M.PayloadPart,
      }),
      trace = schema.new({
         id = id.from(_N, "ResponseStream", "trace"),
         type = "structure",
         name = "trace",
         target_id = id.from(_N, "TracePart"),
         target = M.TracePart,
      }),
      returnControl = schema.new({
         id = id.from(_N, "ResponseStream", "returnControl"),
         type = "structure",
         name = "returnControl",
         target_id = id.from(_N, "ReturnControlPayload"),
         target = M.ReturnControlPayload,
      }),
      internalServerException = schema.new({
         id = id.from(_N, "ResponseStream", "internalServerException"),
         type = "structure",
         name = "internalServerException",
         target_id = id.from(_N, "InternalServerException"),
         target = M.InternalServerException,
      }),
      validationException = schema.new({
         id = id.from(_N, "ResponseStream", "validationException"),
         type = "structure",
         name = "validationException",
         target_id = id.from(_N, "ValidationException"),
         target = M.ValidationException,
      }),
      resourceNotFoundException = schema.new({
         id = id.from(_N, "ResponseStream", "resourceNotFoundException"),
         type = "structure",
         name = "resourceNotFoundException",
         target_id = id.from(_N, "ResourceNotFoundException"),
         target = M.ResourceNotFoundException,
      }),
      serviceQuotaExceededException = schema.new({
         id = id.from(_N, "ResponseStream", "serviceQuotaExceededException"),
         type = "structure",
         name = "serviceQuotaExceededException",
         target_id = id.from(_N, "ServiceQuotaExceededException"),
         target = M.ServiceQuotaExceededException,
      }),
      throttlingException = schema.new({
         id = id.from(_N, "ResponseStream", "throttlingException"),
         type = "structure",
         name = "throttlingException",
         target_id = id.from(_N, "ThrottlingException"),
         target = M.ThrottlingException,
      }),
      accessDeniedException = schema.new({
         id = id.from(_N, "ResponseStream", "accessDeniedException"),
         type = "structure",
         name = "accessDeniedException",
         target_id = id.from(_N, "AccessDeniedException"),
         target = M.AccessDeniedException,
      }),
      conflictException = schema.new({
         id = id.from(_N, "ResponseStream", "conflictException"),
         type = "structure",
         name = "conflictException",
         target_id = id.from(_N, "ConflictException"),
         target = M.ConflictException,
      }),
      dependencyFailedException = schema.new({
         id = id.from(_N, "ResponseStream", "dependencyFailedException"),
         type = "structure",
         name = "dependencyFailedException",
         target_id = id.from(_N, "DependencyFailedException"),
         target = M.DependencyFailedException,
      }),
      badGatewayException = schema.new({
         id = id.from(_N, "ResponseStream", "badGatewayException"),
         type = "structure",
         name = "badGatewayException",
         target_id = id.from(_N, "BadGatewayException"),
         target = M.BadGatewayException,
      }),
      modelNotReadyException = schema.new({
         id = id.from(_N, "ResponseStream", "modelNotReadyException"),
         type = "structure",
         name = "modelNotReadyException",
         target_id = id.from(_N, "ModelNotReadyException"),
         target = M.ModelNotReadyException,
      }),
      files = schema.new({
         id = id.from(_N, "ResponseStream", "files"),
         type = "structure",
         name = "files",
         target_id = id.from(_N, "FilePart"),
         target = M.FilePart,
      }),
   },
})

M.InvokeAgentOutput = schema.new({
   id = id.from(_N, "InvokeAgentResponse"),
   type = "structure",
   members = {
      completion = schema.new({
         id = id.from(_N, "InvokeAgentOutput", "completion"),
         type = "union",
         name = "completion",
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
      contentType = schema.new({
         id = id.from(_N, "InvokeAgentOutput", "contentType"),
         type = "string",
         name = "contentType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "x-amzn-bedrock-agent-content-type" },
         },
      }),
      sessionId = schema.new({
         id = id.from(_N, "InvokeAgentOutput", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "x-amz-bedrock-agent-session-id" },
         },
      }),
      memoryId = schema.new({
         id = id.from(_N, "InvokeAgentOutput", "memoryId"),
         type = "string",
         name = "memoryId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-bedrock-agent-memory-id" },
         },
      }),
   },
})

M.InlineBedrockModelConfigurations = schema.new({
   id = id.from(_N, "InlineBedrockModelConfigurations"),
   type = "structure",
   members = {
      performanceConfig = schema.new({
         id = id.from(_N, "InlineBedrockModelConfigurations", "performanceConfig"),
         type = "structure",
         name = "performanceConfig",
         target_id = id.from(_N, "PerformanceConfiguration"),
         target = M.PerformanceConfiguration,
      }),
   },
})

M.CollaboratorConfiguration = schema.new({
   id = id.from(_N, "CollaboratorConfiguration"),
   type = "structure",
   members = {
      collaboratorName = schema.new({
         id = id.from(_N, "CollaboratorConfiguration", "collaboratorName"),
         type = "string",
         name = "collaboratorName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      collaboratorInstruction = schema.new({
         id = id.from(_N, "CollaboratorConfiguration", "collaboratorInstruction"),
         type = "string",
         name = "collaboratorInstruction",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      agentAliasArn = schema.new({
         id = id.from(_N, "CollaboratorConfiguration", "agentAliasArn"),
         type = "string",
         name = "agentAliasArn",
         target_id = prelude.String.id,
      }),
      relayConversationHistory = schema.new({
         id = id.from(_N, "CollaboratorConfiguration", "relayConversationHistory"),
         type = "string",
         name = "relayConversationHistory",
         target_id = prelude.String.id,
      }),
   },
})

M.GuardrailConfigurationWithArn = schema.new({
   id = id.from(_N, "GuardrailConfigurationWithArn"),
   type = "structure",
   members = {
      guardrailIdentifier = schema.new({
         id = id.from(_N, "GuardrailConfigurationWithArn", "guardrailIdentifier"),
         type = "string",
         name = "guardrailIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      guardrailVersion = schema.new({
         id = id.from(_N, "GuardrailConfigurationWithArn", "guardrailVersion"),
         type = "string",
         name = "guardrailVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PromptConfiguration = schema.new({
   id = id.from(_N, "PromptConfiguration"),
   type = "structure",
   members = {
      promptType = schema.new({
         id = id.from(_N, "PromptConfiguration", "promptType"),
         type = "string",
         name = "promptType",
         target_id = prelude.String.id,
      }),
      promptCreationMode = schema.new({
         id = id.from(_N, "PromptConfiguration", "promptCreationMode"),
         type = "string",
         name = "promptCreationMode",
         target_id = prelude.String.id,
      }),
      promptState = schema.new({
         id = id.from(_N, "PromptConfiguration", "promptState"),
         type = "string",
         name = "promptState",
         target_id = prelude.String.id,
      }),
      basePromptTemplate = schema.new({
         id = id.from(_N, "PromptConfiguration", "basePromptTemplate"),
         type = "string",
         name = "basePromptTemplate",
         target_id = prelude.String.id,
      }),
      inferenceConfiguration = schema.new({
         id = id.from(_N, "PromptConfiguration", "inferenceConfiguration"),
         type = "structure",
         name = "inferenceConfiguration",
         target_id = id.from(_N, "InferenceConfiguration"),
         target = M.InferenceConfiguration,
      }),
      parserMode = schema.new({
         id = id.from(_N, "PromptConfiguration", "parserMode"),
         type = "string",
         name = "parserMode",
         target_id = prelude.String.id,
      }),
      foundationModel = schema.new({
         id = id.from(_N, "PromptConfiguration", "foundationModel"),
         type = "string",
         name = "foundationModel",
         target_id = prelude.String.id,
      }),
      additionalModelRequestFields = schema.new({
         id = id.from(_N, "PromptConfiguration", "additionalModelRequestFields"),
         type = "document",
         name = "additionalModelRequestFields",
         target_id = prelude.Document.id,
      }),
   },
})

M.PromptOverrideConfiguration = schema.new({
   id = id.from(_N, "PromptOverrideConfiguration"),
   type = "structure",
   members = {
      promptConfigurations = schema.new({
         id = id.from(_N, "PromptOverrideConfiguration", "promptConfigurations"),
         type = "list",
         name = "promptConfigurations",
         target_id = prelude.Document.id,
         list_member = M.PromptConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      overrideLambda = schema.new({
         id = id.from(_N, "PromptOverrideConfiguration", "overrideLambda"),
         type = "string",
         name = "overrideLambda",
         target_id = prelude.String.id,
      }),
   },
})

M.OrchestrationExecutor = schema.new({
   id = id.from(_N, "OrchestrationExecutor"),
   type = "union",
   members = {
      lambda = schema.new({
         id = id.from(_N, "OrchestrationExecutor", "lambda"),
         type = "string",
         name = "lambda",
         target_id = prelude.String.id,
      }),
   },
})

M.CustomOrchestration = schema.new({
   id = id.from(_N, "CustomOrchestration"),
   type = "structure",
   members = {
      executor = schema.new({
         id = id.from(_N, "CustomOrchestration", "executor"),
         type = "union",
         name = "executor",
         target_id = id.from(_N, "OrchestrationExecutor"),
         target = M.OrchestrationExecutor,
      }),
   },
})

M.InlineSessionState = schema.new({
   id = id.from(_N, "InlineSessionState"),
   type = "structure",
   members = {
      sessionAttributes = schema.new({
         id = id.from(_N, "InlineSessionState", "sessionAttributes"),
         type = "map",
         name = "sessionAttributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      promptSessionAttributes = schema.new({
         id = id.from(_N, "InlineSessionState", "promptSessionAttributes"),
         type = "map",
         name = "promptSessionAttributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      returnControlInvocationResults = schema.new({
         id = id.from(_N, "InlineSessionState", "returnControlInvocationResults"),
         type = "list",
         name = "returnControlInvocationResults",
         target_id = prelude.Document.id,
         list_member = M.InvocationResultMember,
      }),
      invocationId = schema.new({
         id = id.from(_N, "InlineSessionState", "invocationId"),
         type = "string",
         name = "invocationId",
         target_id = prelude.String.id,
      }),
      files = schema.new({
         id = id.from(_N, "InlineSessionState", "files"),
         type = "list",
         name = "files",
         target_id = prelude.Document.id,
         list_member = M.InputFile,
      }),
      conversationHistory = schema.new({
         id = id.from(_N, "InlineSessionState", "conversationHistory"),
         type = "structure",
         name = "conversationHistory",
         target_id = id.from(_N, "ConversationHistory"),
         target = M.ConversationHistory,
      }),
   },
})

M.InlineAgentPayloadPart = schema.new({
   id = id.from(_N, "InlineAgentPayloadPart"),
   type = "structure",
   members = {
      bytes = schema.new({
         id = id.from(_N, "InlineAgentPayloadPart", "bytes"),
         type = "blob",
         name = "bytes",
         target_id = prelude.Blob.id,
      }),
      attribution = schema.new({
         id = id.from(_N, "InlineAgentPayloadPart", "attribution"),
         type = "structure",
         name = "attribution",
         target_id = id.from(_N, "Attribution"),
         target = M.Attribution,
      }),
   },
})

M.InlineAgentFilePart = schema.new({
   id = id.from(_N, "InlineAgentFilePart"),
   type = "structure",
   members = {
      files = schema.new({
         id = id.from(_N, "InlineAgentFilePart", "files"),
         type = "list",
         name = "files",
         target_id = prelude.Document.id,
         list_member = M.OutputFile,
      }),
   },
})

M.InlineAgentReturnControlPayload = schema.new({
   id = id.from(_N, "InlineAgentReturnControlPayload"),
   type = "structure",
   members = {
      invocationInputs = schema.new({
         id = id.from(_N, "InlineAgentReturnControlPayload", "invocationInputs"),
         type = "list",
         name = "invocationInputs",
         target_id = prelude.Document.id,
         list_member = M.InvocationInputMember,
      }),
      invocationId = schema.new({
         id = id.from(_N, "InlineAgentReturnControlPayload", "invocationId"),
         type = "string",
         name = "invocationId",
         target_id = prelude.String.id,
      }),
   },
})

M.InlineAgentTracePart = schema.new({
   id = id.from(_N, "InlineAgentTracePart"),
   type = "structure",
   members = {
      sessionId = schema.new({
         id = id.from(_N, "InlineAgentTracePart", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
      }),
      trace = schema.new({
         id = id.from(_N, "InlineAgentTracePart", "trace"),
         type = "union",
         name = "trace",
         target_id = id.from(_N, "Trace"),
         target = M.Trace,
      }),
      callerChain = schema.new({
         id = id.from(_N, "InlineAgentTracePart", "callerChain"),
         type = "list",
         name = "callerChain",
         target_id = prelude.Document.id,
         list_member = M.Caller,
      }),
      eventTime = schema.new({
         id = id.from(_N, "InlineAgentTracePart", "eventTime"),
         type = "timestamp",
         name = "eventTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      collaboratorName = schema.new({
         id = id.from(_N, "InlineAgentTracePart", "collaboratorName"),
         type = "string",
         name = "collaboratorName",
         target_id = prelude.String.id,
      }),
   },
})

M.InlineAgentResponseStream = schema.new({
   id = id.from(_N, "InlineAgentResponseStream"),
   type = "union",
   members = {
      chunk = schema.new({
         id = id.from(_N, "InlineAgentResponseStream", "chunk"),
         type = "structure",
         name = "chunk",
         target_id = id.from(_N, "InlineAgentPayloadPart"),
         target = M.InlineAgentPayloadPart,
      }),
      trace = schema.new({
         id = id.from(_N, "InlineAgentResponseStream", "trace"),
         type = "structure",
         name = "trace",
         target_id = id.from(_N, "InlineAgentTracePart"),
         target = M.InlineAgentTracePart,
      }),
      returnControl = schema.new({
         id = id.from(_N, "InlineAgentResponseStream", "returnControl"),
         type = "structure",
         name = "returnControl",
         target_id = id.from(_N, "InlineAgentReturnControlPayload"),
         target = M.InlineAgentReturnControlPayload,
      }),
      internalServerException = schema.new({
         id = id.from(_N, "InlineAgentResponseStream", "internalServerException"),
         type = "structure",
         name = "internalServerException",
         target_id = id.from(_N, "InternalServerException"),
         target = M.InternalServerException,
      }),
      validationException = schema.new({
         id = id.from(_N, "InlineAgentResponseStream", "validationException"),
         type = "structure",
         name = "validationException",
         target_id = id.from(_N, "ValidationException"),
         target = M.ValidationException,
      }),
      resourceNotFoundException = schema.new({
         id = id.from(_N, "InlineAgentResponseStream", "resourceNotFoundException"),
         type = "structure",
         name = "resourceNotFoundException",
         target_id = id.from(_N, "ResourceNotFoundException"),
         target = M.ResourceNotFoundException,
      }),
      serviceQuotaExceededException = schema.new({
         id = id.from(_N, "InlineAgentResponseStream", "serviceQuotaExceededException"),
         type = "structure",
         name = "serviceQuotaExceededException",
         target_id = id.from(_N, "ServiceQuotaExceededException"),
         target = M.ServiceQuotaExceededException,
      }),
      throttlingException = schema.new({
         id = id.from(_N, "InlineAgentResponseStream", "throttlingException"),
         type = "structure",
         name = "throttlingException",
         target_id = id.from(_N, "ThrottlingException"),
         target = M.ThrottlingException,
      }),
      accessDeniedException = schema.new({
         id = id.from(_N, "InlineAgentResponseStream", "accessDeniedException"),
         type = "structure",
         name = "accessDeniedException",
         target_id = id.from(_N, "AccessDeniedException"),
         target = M.AccessDeniedException,
      }),
      conflictException = schema.new({
         id = id.from(_N, "InlineAgentResponseStream", "conflictException"),
         type = "structure",
         name = "conflictException",
         target_id = id.from(_N, "ConflictException"),
         target = M.ConflictException,
      }),
      dependencyFailedException = schema.new({
         id = id.from(_N, "InlineAgentResponseStream", "dependencyFailedException"),
         type = "structure",
         name = "dependencyFailedException",
         target_id = id.from(_N, "DependencyFailedException"),
         target = M.DependencyFailedException,
      }),
      badGatewayException = schema.new({
         id = id.from(_N, "InlineAgentResponseStream", "badGatewayException"),
         type = "structure",
         name = "badGatewayException",
         target_id = id.from(_N, "BadGatewayException"),
         target = M.BadGatewayException,
      }),
      files = schema.new({
         id = id.from(_N, "InlineAgentResponseStream", "files"),
         type = "structure",
         name = "files",
         target_id = id.from(_N, "InlineAgentFilePart"),
         target = M.InlineAgentFilePart,
      }),
   },
})

M.InvokeInlineAgentOutput = schema.new({
   id = id.from(_N, "InvokeInlineAgentResponse"),
   type = "structure",
   members = {
      completion = schema.new({
         id = id.from(_N, "InvokeInlineAgentOutput", "completion"),
         type = "union",
         name = "completion",
         target_id = id.from(_N, "InlineAgentResponseStream"),
         target = M.InlineAgentResponseStream,
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
      contentType = schema.new({
         id = id.from(_N, "InvokeInlineAgentOutput", "contentType"),
         type = "string",
         name = "contentType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "x-amzn-bedrock-agent-content-type" },
         },
      }),
      sessionId = schema.new({
         id = id.from(_N, "InvokeInlineAgentOutput", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "x-amz-bedrock-agent-session-id" },
         },
      }),
   },
})

M.DeleteAgentMemoryInput = schema.new({
   id = id.from(_N, "DeleteAgentMemoryRequest"),
   type = "structure",
   members = {
      agentId = schema.new({
         id = id.from(_N, "DeleteAgentMemoryInput", "agentId"),
         type = "string",
         name = "agentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      agentAliasId = schema.new({
         id = id.from(_N, "DeleteAgentMemoryInput", "agentAliasId"),
         type = "string",
         name = "agentAliasId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      memoryId = schema.new({
         id = id.from(_N, "DeleteAgentMemoryInput", "memoryId"),
         type = "string",
         name = "memoryId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "memoryId" },
         },
      }),
      sessionId = schema.new({
         id = id.from(_N, "DeleteAgentMemoryInput", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "sessionId" },
         },
      }),
   },
})

M.DeleteAgentMemoryOutput = schema.new({
   id = id.from(_N, "DeleteAgentMemoryResponse"),
   type = "structure",
})

M.GetAgentMemoryInput = schema.new({
   id = id.from(_N, "GetAgentMemoryRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "GetAgentMemoryInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxItems = schema.new({
         id = id.from(_N, "GetAgentMemoryInput", "maxItems"),
         type = "integer",
         name = "maxItems",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxItems" },
         },
      }),
      agentId = schema.new({
         id = id.from(_N, "GetAgentMemoryInput", "agentId"),
         type = "string",
         name = "agentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      agentAliasId = schema.new({
         id = id.from(_N, "GetAgentMemoryInput", "agentAliasId"),
         type = "string",
         name = "agentAliasId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      memoryType = schema.new({
         id = id.from(_N, "GetAgentMemoryInput", "memoryType"),
         type = "string",
         name = "memoryType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "memoryType" },
         },
      }),
      memoryId = schema.new({
         id = id.from(_N, "GetAgentMemoryInput", "memoryId"),
         type = "string",
         name = "memoryId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "memoryId" },
         },
      }),
   },
})

M.MemorySessionSummary = schema.new({
   id = id.from(_N, "MemorySessionSummary"),
   type = "structure",
   members = {
      memoryId = schema.new({
         id = id.from(_N, "MemorySessionSummary", "memoryId"),
         type = "string",
         name = "memoryId",
         target_id = prelude.String.id,
      }),
      sessionId = schema.new({
         id = id.from(_N, "MemorySessionSummary", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
      }),
      sessionStartTime = schema.new({
         id = id.from(_N, "MemorySessionSummary", "sessionStartTime"),
         type = "timestamp",
         name = "sessionStartTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      sessionExpiryTime = schema.new({
         id = id.from(_N, "MemorySessionSummary", "sessionExpiryTime"),
         type = "timestamp",
         name = "sessionExpiryTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      summaryText = schema.new({
         id = id.from(_N, "MemorySessionSummary", "summaryText"),
         type = "string",
         name = "summaryText",
         target_id = prelude.String.id,
      }),
   },
})

M.Memory = schema.new({
   id = id.from(_N, "Memory"),
   type = "union",
   members = {
      sessionSummary = schema.new({
         id = id.from(_N, "Memory", "sessionSummary"),
         type = "structure",
         name = "sessionSummary",
         target_id = id.from(_N, "MemorySessionSummary"),
         target = M.MemorySessionSummary,
      }),
   },
})

M.GetAgentMemoryOutput = schema.new({
   id = id.from(_N, "GetAgentMemoryResponse"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "GetAgentMemoryOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      memoryContents = schema.new({
         id = id.from(_N, "GetAgentMemoryOutput", "memoryContents"),
         type = "list",
         name = "memoryContents",
         target_id = prelude.Document.id,
         list_member = M.Memory,
      }),
   },
})

M.TextPrompt = schema.new({
   id = id.from(_N, "TextPrompt"),
   type = "structure",
   members = {
      text = schema.new({
         id = id.from(_N, "TextPrompt", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.InputPrompt = schema.new({
   id = id.from(_N, "InputPrompt"),
   type = "union",
   members = {
      textPrompt = schema.new({
         id = id.from(_N, "InputPrompt", "textPrompt"),
         type = "structure",
         name = "textPrompt",
         target_id = id.from(_N, "TextPrompt"),
         target = M.TextPrompt,
      }),
   },
})

M.OptimizePromptInput = schema.new({
   id = id.from(_N, "OptimizePromptRequest"),
   type = "structure",
   members = {
      input = schema.new({
         id = id.from(_N, "OptimizePromptInput", "input"),
         type = "union",
         name = "input",
         target_id = id.from(_N, "InputPrompt"),
         target = M.InputPrompt,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      targetModelId = schema.new({
         id = id.from(_N, "OptimizePromptInput", "targetModelId"),
         type = "string",
         name = "targetModelId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AnalyzePromptEvent = schema.new({
   id = id.from(_N, "AnalyzePromptEvent"),
   type = "structure",
   members = {
      message = schema.new({
         id = id.from(_N, "AnalyzePromptEvent", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.OptimizedPrompt = schema.new({
   id = id.from(_N, "OptimizedPrompt"),
   type = "union",
   members = {
      textPrompt = schema.new({
         id = id.from(_N, "OptimizedPrompt", "textPrompt"),
         type = "structure",
         name = "textPrompt",
         target_id = id.from(_N, "TextPrompt"),
         target = M.TextPrompt,
      }),
   },
})

M.OptimizedPromptEvent = schema.new({
   id = id.from(_N, "OptimizedPromptEvent"),
   type = "structure",
   members = {
      optimizedPrompt = schema.new({
         id = id.from(_N, "OptimizedPromptEvent", "optimizedPrompt"),
         type = "union",
         name = "optimizedPrompt",
         target_id = id.from(_N, "OptimizedPrompt"),
         target = M.OptimizedPrompt,
      }),
   },
})

M.OptimizedPromptStream = schema.new({
   id = id.from(_N, "OptimizedPromptStream"),
   type = "union",
   members = {
      optimizedPromptEvent = schema.new({
         id = id.from(_N, "OptimizedPromptStream", "optimizedPromptEvent"),
         type = "structure",
         name = "optimizedPromptEvent",
         target_id = id.from(_N, "OptimizedPromptEvent"),
         target = M.OptimizedPromptEvent,
      }),
      analyzePromptEvent = schema.new({
         id = id.from(_N, "OptimizedPromptStream", "analyzePromptEvent"),
         type = "structure",
         name = "analyzePromptEvent",
         target_id = id.from(_N, "AnalyzePromptEvent"),
         target = M.AnalyzePromptEvent,
      }),
      internalServerException = schema.new({
         id = id.from(_N, "OptimizedPromptStream", "internalServerException"),
         type = "structure",
         name = "internalServerException",
         target_id = id.from(_N, "InternalServerException"),
         target = M.InternalServerException,
      }),
      throttlingException = schema.new({
         id = id.from(_N, "OptimizedPromptStream", "throttlingException"),
         type = "structure",
         name = "throttlingException",
         target_id = id.from(_N, "ThrottlingException"),
         target = M.ThrottlingException,
      }),
      validationException = schema.new({
         id = id.from(_N, "OptimizedPromptStream", "validationException"),
         type = "structure",
         name = "validationException",
         target_id = id.from(_N, "ValidationException"),
         target = M.ValidationException,
      }),
      dependencyFailedException = schema.new({
         id = id.from(_N, "OptimizedPromptStream", "dependencyFailedException"),
         type = "structure",
         name = "dependencyFailedException",
         target_id = id.from(_N, "DependencyFailedException"),
         target = M.DependencyFailedException,
      }),
      accessDeniedException = schema.new({
         id = id.from(_N, "OptimizedPromptStream", "accessDeniedException"),
         type = "structure",
         name = "accessDeniedException",
         target_id = id.from(_N, "AccessDeniedException"),
         target = M.AccessDeniedException,
      }),
      badGatewayException = schema.new({
         id = id.from(_N, "OptimizedPromptStream", "badGatewayException"),
         type = "structure",
         name = "badGatewayException",
         target_id = id.from(_N, "BadGatewayException"),
         target = M.BadGatewayException,
      }),
   },
})

M.OptimizePromptOutput = schema.new({
   id = id.from(_N, "OptimizePromptResponse"),
   type = "structure",
   members = {
      optimizedPrompt = schema.new({
         id = id.from(_N, "OptimizePromptOutput", "optimizedPrompt"),
         type = "union",
         name = "optimizedPrompt",
         target_id = id.from(_N, "OptimizedPromptStream"),
         target = M.OptimizedPromptStream,
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
   },
})

M.RerankTextDocument = schema.new({
   id = id.from(_N, "RerankTextDocument"),
   type = "structure",
   members = {
      text = schema.new({
         id = id.from(_N, "RerankTextDocument", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
      }),
   },
})

M.RerankQuery = schema.new({
   id = id.from(_N, "RerankQuery"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "RerankQuery", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      textQuery = schema.new({
         id = id.from(_N, "RerankQuery", "textQuery"),
         type = "structure",
         name = "textQuery",
         target_id = id.from(_N, "RerankTextDocument"),
         target = M.RerankTextDocument,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BedrockRerankingModelConfiguration = schema.new({
   id = id.from(_N, "BedrockRerankingModelConfiguration"),
   type = "structure",
   members = {
      modelArn = schema.new({
         id = id.from(_N, "BedrockRerankingModelConfiguration", "modelArn"),
         type = "string",
         name = "modelArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      additionalModelRequestFields = schema.new({
         id = id.from(_N, "BedrockRerankingModelConfiguration", "additionalModelRequestFields"),
         type = "map",
         name = "additionalModelRequestFields",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Document,
      }),
   },
})

M.BedrockRerankingConfiguration = schema.new({
   id = id.from(_N, "BedrockRerankingConfiguration"),
   type = "structure",
   members = {
      numberOfResults = schema.new({
         id = id.from(_N, "BedrockRerankingConfiguration", "numberOfResults"),
         type = "integer",
         name = "numberOfResults",
         target_id = prelude.Integer.id,
      }),
      modelConfiguration = schema.new({
         id = id.from(_N, "BedrockRerankingConfiguration", "modelConfiguration"),
         type = "structure",
         name = "modelConfiguration",
         target_id = id.from(_N, "BedrockRerankingModelConfiguration"),
         target = M.BedrockRerankingModelConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RerankingConfiguration = schema.new({
   id = id.from(_N, "RerankingConfiguration"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "RerankingConfiguration", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      bedrockRerankingConfiguration = schema.new({
         id = id.from(_N, "RerankingConfiguration", "bedrockRerankingConfiguration"),
         type = "structure",
         name = "bedrockRerankingConfiguration",
         target_id = id.from(_N, "BedrockRerankingConfiguration"),
         target = M.BedrockRerankingConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RerankDocument = schema.new({
   id = id.from(_N, "RerankDocument"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "RerankDocument", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      textDocument = schema.new({
         id = id.from(_N, "RerankDocument", "textDocument"),
         type = "structure",
         name = "textDocument",
         target_id = id.from(_N, "RerankTextDocument"),
         target = M.RerankTextDocument,
      }),
      jsonDocument = schema.new({
         id = id.from(_N, "RerankDocument", "jsonDocument"),
         type = "document",
         name = "jsonDocument",
         target_id = prelude.Document.id,
      }),
   },
})

M.RerankSource = schema.new({
   id = id.from(_N, "RerankSource"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "RerankSource", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      inlineDocumentSource = schema.new({
         id = id.from(_N, "RerankSource", "inlineDocumentSource"),
         type = "structure",
         name = "inlineDocumentSource",
         target_id = id.from(_N, "RerankDocument"),
         target = M.RerankDocument,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RerankInput = schema.new({
   id = id.from(_N, "RerankRequest"),
   type = "structure",
   members = {
      queries = schema.new({
         id = id.from(_N, "RerankInput", "queries"),
         type = "list",
         name = "queries",
         target_id = prelude.Document.id,
         list_member = M.RerankQuery,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sources = schema.new({
         id = id.from(_N, "RerankInput", "sources"),
         type = "list",
         name = "sources",
         target_id = prelude.Document.id,
         list_member = M.RerankSource,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      rerankingConfiguration = schema.new({
         id = id.from(_N, "RerankInput", "rerankingConfiguration"),
         type = "structure",
         name = "rerankingConfiguration",
         target_id = id.from(_N, "RerankingConfiguration"),
         target = M.RerankingConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "RerankInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.RerankResult = schema.new({
   id = id.from(_N, "RerankResult"),
   type = "structure",
   members = {
      index = schema.new({
         id = id.from(_N, "RerankResult", "index"),
         type = "integer",
         name = "index",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      relevanceScore = schema.new({
         id = id.from(_N, "RerankResult", "relevanceScore"),
         type = "float",
         name = "relevanceScore",
         target_id = prelude.Float.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      document = schema.new({
         id = id.from(_N, "RerankResult", "document"),
         type = "structure",
         name = "document",
         target_id = id.from(_N, "RerankDocument"),
         target = M.RerankDocument,
      }),
   },
})

M.RerankOutput = schema.new({
   id = id.from(_N, "RerankResponse"),
   type = "structure",
   members = {
      results = schema.new({
         id = id.from(_N, "RerankOutput", "results"),
         type = "list",
         name = "results",
         target_id = prelude.Document.id,
         list_member = M.RerankResult,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "RerankOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.RetrieveAndGenerateInput = schema.new({
   id = id.from(_N, "RetrieveAndGenerateInput"),
   type = "structure",
   members = {
      text = schema.new({
         id = id.from(_N, "RetrieveAndGenerateInput", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GuardrailConfiguration = schema.new({
   id = id.from(_N, "GuardrailConfiguration"),
   type = "structure",
   members = {
      guardrailId = schema.new({
         id = id.from(_N, "GuardrailConfiguration", "guardrailId"),
         type = "string",
         name = "guardrailId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      guardrailVersion = schema.new({
         id = id.from(_N, "GuardrailConfiguration", "guardrailVersion"),
         type = "string",
         name = "guardrailVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TextInferenceConfig = schema.new({
   id = id.from(_N, "TextInferenceConfig"),
   type = "structure",
   members = {
      temperature = schema.new({
         id = id.from(_N, "TextInferenceConfig", "temperature"),
         type = "float",
         name = "temperature",
         target_id = prelude.Float.id,
      }),
      topP = schema.new({
         id = id.from(_N, "TextInferenceConfig", "topP"),
         type = "float",
         name = "topP",
         target_id = prelude.Float.id,
      }),
      maxTokens = schema.new({
         id = id.from(_N, "TextInferenceConfig", "maxTokens"),
         type = "integer",
         name = "maxTokens",
         target_id = prelude.Integer.id,
      }),
      stopSequences = schema.new({
         id = id.from(_N, "TextInferenceConfig", "stopSequences"),
         type = "list",
         name = "stopSequences",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.InferenceConfig = schema.new({
   id = id.from(_N, "InferenceConfig"),
   type = "structure",
   members = {
      textInferenceConfig = schema.new({
         id = id.from(_N, "InferenceConfig", "textInferenceConfig"),
         type = "structure",
         name = "textInferenceConfig",
         target_id = id.from(_N, "TextInferenceConfig"),
         target = M.TextInferenceConfig,
      }),
   },
})

M.PromptTemplate = schema.new({
   id = id.from(_N, "PromptTemplate"),
   type = "structure",
   members = {
      textPromptTemplate = schema.new({
         id = id.from(_N, "PromptTemplate", "textPromptTemplate"),
         type = "string",
         name = "textPromptTemplate",
         target_id = prelude.String.id,
      }),
   },
})

M.ExternalSourcesGenerationConfiguration = schema.new({
   id = id.from(_N, "ExternalSourcesGenerationConfiguration"),
   type = "structure",
   members = {
      promptTemplate = schema.new({
         id = id.from(_N, "ExternalSourcesGenerationConfiguration", "promptTemplate"),
         type = "structure",
         name = "promptTemplate",
         target_id = id.from(_N, "PromptTemplate"),
         target = M.PromptTemplate,
      }),
      guardrailConfiguration = schema.new({
         id = id.from(_N, "ExternalSourcesGenerationConfiguration", "guardrailConfiguration"),
         type = "structure",
         name = "guardrailConfiguration",
         target_id = id.from(_N, "GuardrailConfiguration"),
         target = M.GuardrailConfiguration,
      }),
      inferenceConfig = schema.new({
         id = id.from(_N, "ExternalSourcesGenerationConfiguration", "inferenceConfig"),
         type = "structure",
         name = "inferenceConfig",
         target_id = id.from(_N, "InferenceConfig"),
         target = M.InferenceConfig,
      }),
      additionalModelRequestFields = schema.new({
         id = id.from(_N, "ExternalSourcesGenerationConfiguration", "additionalModelRequestFields"),
         type = "map",
         name = "additionalModelRequestFields",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Document,
      }),
      performanceConfig = schema.new({
         id = id.from(_N, "ExternalSourcesGenerationConfiguration", "performanceConfig"),
         type = "structure",
         name = "performanceConfig",
         target_id = id.from(_N, "PerformanceConfiguration"),
         target = M.PerformanceConfiguration,
      }),
   },
})

M.ByteContentDoc = schema.new({
   id = id.from(_N, "ByteContentDoc"),
   type = "structure",
   members = {
      identifier = schema.new({
         id = id.from(_N, "ByteContentDoc", "identifier"),
         type = "string",
         name = "identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      contentType = schema.new({
         id = id.from(_N, "ByteContentDoc", "contentType"),
         type = "string",
         name = "contentType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      data = schema.new({
         id = id.from(_N, "ByteContentDoc", "data"),
         type = "blob",
         name = "data",
         target_id = prelude.Blob.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.S3ObjectDoc = schema.new({
   id = id.from(_N, "S3ObjectDoc"),
   type = "structure",
   members = {
      uri = schema.new({
         id = id.from(_N, "S3ObjectDoc", "uri"),
         type = "string",
         name = "uri",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ExternalSource = schema.new({
   id = id.from(_N, "ExternalSource"),
   type = "structure",
   members = {
      sourceType = schema.new({
         id = id.from(_N, "ExternalSource", "sourceType"),
         type = "string",
         name = "sourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      s3Location = schema.new({
         id = id.from(_N, "ExternalSource", "s3Location"),
         type = "structure",
         name = "s3Location",
         target_id = id.from(_N, "S3ObjectDoc"),
         target = M.S3ObjectDoc,
      }),
      byteContent = schema.new({
         id = id.from(_N, "ExternalSource", "byteContent"),
         type = "structure",
         name = "byteContent",
         target_id = id.from(_N, "ByteContentDoc"),
         target = M.ByteContentDoc,
      }),
   },
})

M.ExternalSourcesRetrieveAndGenerateConfiguration = schema.new({
   id = id.from(_N, "ExternalSourcesRetrieveAndGenerateConfiguration"),
   type = "structure",
   members = {
      modelArn = schema.new({
         id = id.from(_N, "ExternalSourcesRetrieveAndGenerateConfiguration", "modelArn"),
         type = "string",
         name = "modelArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sources = schema.new({
         id = id.from(_N, "ExternalSourcesRetrieveAndGenerateConfiguration", "sources"),
         type = "list",
         name = "sources",
         target_id = prelude.Document.id,
         list_member = M.ExternalSource,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      generationConfiguration = schema.new({
         id = id.from(_N, "ExternalSourcesRetrieveAndGenerateConfiguration", "generationConfiguration"),
         type = "structure",
         name = "generationConfiguration",
         target_id = id.from(_N, "ExternalSourcesGenerationConfiguration"),
         target = M.ExternalSourcesGenerationConfiguration,
      }),
   },
})

M.GenerationConfiguration = schema.new({
   id = id.from(_N, "GenerationConfiguration"),
   type = "structure",
   members = {
      promptTemplate = schema.new({
         id = id.from(_N, "GenerationConfiguration", "promptTemplate"),
         type = "structure",
         name = "promptTemplate",
         target_id = id.from(_N, "PromptTemplate"),
         target = M.PromptTemplate,
      }),
      guardrailConfiguration = schema.new({
         id = id.from(_N, "GenerationConfiguration", "guardrailConfiguration"),
         type = "structure",
         name = "guardrailConfiguration",
         target_id = id.from(_N, "GuardrailConfiguration"),
         target = M.GuardrailConfiguration,
      }),
      inferenceConfig = schema.new({
         id = id.from(_N, "GenerationConfiguration", "inferenceConfig"),
         type = "structure",
         name = "inferenceConfig",
         target_id = id.from(_N, "InferenceConfig"),
         target = M.InferenceConfig,
      }),
      additionalModelRequestFields = schema.new({
         id = id.from(_N, "GenerationConfiguration", "additionalModelRequestFields"),
         type = "map",
         name = "additionalModelRequestFields",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Document,
      }),
      performanceConfig = schema.new({
         id = id.from(_N, "GenerationConfiguration", "performanceConfig"),
         type = "structure",
         name = "performanceConfig",
         target_id = id.from(_N, "PerformanceConfiguration"),
         target = M.PerformanceConfiguration,
      }),
   },
})

M.QueryTransformationConfiguration = schema.new({
   id = id.from(_N, "QueryTransformationConfiguration"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "QueryTransformationConfiguration", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.OrchestrationConfiguration = schema.new({
   id = id.from(_N, "OrchestrationConfiguration"),
   type = "structure",
   members = {
      promptTemplate = schema.new({
         id = id.from(_N, "OrchestrationConfiguration", "promptTemplate"),
         type = "structure",
         name = "promptTemplate",
         target_id = id.from(_N, "PromptTemplate"),
         target = M.PromptTemplate,
      }),
      inferenceConfig = schema.new({
         id = id.from(_N, "OrchestrationConfiguration", "inferenceConfig"),
         type = "structure",
         name = "inferenceConfig",
         target_id = id.from(_N, "InferenceConfig"),
         target = M.InferenceConfig,
      }),
      additionalModelRequestFields = schema.new({
         id = id.from(_N, "OrchestrationConfiguration", "additionalModelRequestFields"),
         type = "map",
         name = "additionalModelRequestFields",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Document,
      }),
      queryTransformationConfiguration = schema.new({
         id = id.from(_N, "OrchestrationConfiguration", "queryTransformationConfiguration"),
         type = "structure",
         name = "queryTransformationConfiguration",
         target_id = id.from(_N, "QueryTransformationConfiguration"),
         target = M.QueryTransformationConfiguration,
      }),
      performanceConfig = schema.new({
         id = id.from(_N, "OrchestrationConfiguration", "performanceConfig"),
         type = "structure",
         name = "performanceConfig",
         target_id = id.from(_N, "PerformanceConfiguration"),
         target = M.PerformanceConfiguration,
      }),
   },
})

M.RetrieveAndGenerateSessionConfiguration = schema.new({
   id = id.from(_N, "RetrieveAndGenerateSessionConfiguration"),
   type = "structure",
   members = {
      kmsKeyArn = schema.new({
         id = id.from(_N, "RetrieveAndGenerateSessionConfiguration", "kmsKeyArn"),
         type = "string",
         name = "kmsKeyArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RetrieveAndGenerateOutput = schema.new({
   id = id.from(_N, "RetrieveAndGenerateOutput"),
   type = "structure",
   members = {
      text = schema.new({
         id = id.from(_N, "RetrieveAndGenerateOutput", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RetrieveAndGenerateOperationOutput = schema.new({
   id = id.from(_N, "RetrieveAndGenerateResponse"),
   type = "structure",
   members = {
      sessionId = schema.new({
         id = id.from(_N, "RetrieveAndGenerateOperationOutput", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      output = schema.new({
         id = id.from(_N, "RetrieveAndGenerateOperationOutput", "output"),
         type = "structure",
         name = "output",
         target_id = id.from(_N, "RetrieveAndGenerateOutput"),
         target = M.RetrieveAndGenerateOutput,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      citations = schema.new({
         id = id.from(_N, "RetrieveAndGenerateOperationOutput", "citations"),
         type = "list",
         name = "citations",
         target_id = prelude.Document.id,
         list_member = M.Citation,
      }),
      guardrailAction = schema.new({
         id = id.from(_N, "RetrieveAndGenerateOperationOutput", "guardrailAction"),
         type = "string",
         name = "guardrailAction",
         target_id = prelude.String.id,
      }),
   },
})

M.CitationEvent = schema.new({
   id = id.from(_N, "CitationEvent"),
   type = "structure",
   members = {
      citation = schema.new({
         id = id.from(_N, "CitationEvent", "citation"),
         type = "structure",
         name = "citation",
         target_id = id.from(_N, "Citation"),
         target = M.Citation,
      }),
      generatedResponsePart = schema.new({
         id = id.from(_N, "CitationEvent", "generatedResponsePart"),
         type = "structure",
         name = "generatedResponsePart",
         target_id = id.from(_N, "GeneratedResponsePart"),
         target = M.GeneratedResponsePart,
      }),
      retrievedReferences = schema.new({
         id = id.from(_N, "CitationEvent", "retrievedReferences"),
         type = "list",
         name = "retrievedReferences",
         target_id = prelude.Document.id,
         list_member = M.RetrievedReference,
      }),
   },
})

M.GuardrailEvent = schema.new({
   id = id.from(_N, "GuardrailEvent"),
   type = "structure",
   members = {
      action = schema.new({
         id = id.from(_N, "GuardrailEvent", "action"),
         type = "string",
         name = "action",
         target_id = prelude.String.id,
      }),
   },
})

M.RetrieveAndGenerateOutputEvent = schema.new({
   id = id.from(_N, "RetrieveAndGenerateOutputEvent"),
   type = "structure",
   members = {
      text = schema.new({
         id = id.from(_N, "RetrieveAndGenerateOutputEvent", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RetrieveAndGenerateStreamResponseOutput = schema.new({
   id = id.from(_N, "RetrieveAndGenerateStreamResponseOutput"),
   type = "union",
   members = {
      output = schema.new({
         id = id.from(_N, "RetrieveAndGenerateStreamResponseOutput", "output"),
         type = "structure",
         name = "output",
         target_id = id.from(_N, "RetrieveAndGenerateOutputEvent"),
         target = M.RetrieveAndGenerateOutputEvent,
      }),
      citation = schema.new({
         id = id.from(_N, "RetrieveAndGenerateStreamResponseOutput", "citation"),
         type = "structure",
         name = "citation",
         target_id = id.from(_N, "CitationEvent"),
         target = M.CitationEvent,
      }),
      guardrail = schema.new({
         id = id.from(_N, "RetrieveAndGenerateStreamResponseOutput", "guardrail"),
         type = "structure",
         name = "guardrail",
         target_id = id.from(_N, "GuardrailEvent"),
         target = M.GuardrailEvent,
      }),
      internalServerException = schema.new({
         id = id.from(_N, "RetrieveAndGenerateStreamResponseOutput", "internalServerException"),
         type = "structure",
         name = "internalServerException",
         target_id = id.from(_N, "InternalServerException"),
         target = M.InternalServerException,
      }),
      validationException = schema.new({
         id = id.from(_N, "RetrieveAndGenerateStreamResponseOutput", "validationException"),
         type = "structure",
         name = "validationException",
         target_id = id.from(_N, "ValidationException"),
         target = M.ValidationException,
      }),
      resourceNotFoundException = schema.new({
         id = id.from(_N, "RetrieveAndGenerateStreamResponseOutput", "resourceNotFoundException"),
         type = "structure",
         name = "resourceNotFoundException",
         target_id = id.from(_N, "ResourceNotFoundException"),
         target = M.ResourceNotFoundException,
      }),
      serviceQuotaExceededException = schema.new({
         id = id.from(_N, "RetrieveAndGenerateStreamResponseOutput", "serviceQuotaExceededException"),
         type = "structure",
         name = "serviceQuotaExceededException",
         target_id = id.from(_N, "ServiceQuotaExceededException"),
         target = M.ServiceQuotaExceededException,
      }),
      throttlingException = schema.new({
         id = id.from(_N, "RetrieveAndGenerateStreamResponseOutput", "throttlingException"),
         type = "structure",
         name = "throttlingException",
         target_id = id.from(_N, "ThrottlingException"),
         target = M.ThrottlingException,
      }),
      accessDeniedException = schema.new({
         id = id.from(_N, "RetrieveAndGenerateStreamResponseOutput", "accessDeniedException"),
         type = "structure",
         name = "accessDeniedException",
         target_id = id.from(_N, "AccessDeniedException"),
         target = M.AccessDeniedException,
      }),
      conflictException = schema.new({
         id = id.from(_N, "RetrieveAndGenerateStreamResponseOutput", "conflictException"),
         type = "structure",
         name = "conflictException",
         target_id = id.from(_N, "ConflictException"),
         target = M.ConflictException,
      }),
      dependencyFailedException = schema.new({
         id = id.from(_N, "RetrieveAndGenerateStreamResponseOutput", "dependencyFailedException"),
         type = "structure",
         name = "dependencyFailedException",
         target_id = id.from(_N, "DependencyFailedException"),
         target = M.DependencyFailedException,
      }),
      badGatewayException = schema.new({
         id = id.from(_N, "RetrieveAndGenerateStreamResponseOutput", "badGatewayException"),
         type = "structure",
         name = "badGatewayException",
         target_id = id.from(_N, "BadGatewayException"),
         target = M.BadGatewayException,
      }),
   },
})

M.RetrieveAndGenerateStreamOutput = schema.new({
   id = id.from(_N, "RetrieveAndGenerateStreamResponse"),
   type = "structure",
   members = {
      stream = schema.new({
         id = id.from(_N, "RetrieveAndGenerateStreamOutput", "stream"),
         type = "union",
         name = "stream",
         target_id = id.from(_N, "RetrieveAndGenerateStreamResponseOutput"),
         target = M.RetrieveAndGenerateStreamResponseOutput,
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
      sessionId = schema.new({
         id = id.from(_N, "RetrieveAndGenerateStreamOutput", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_HEADER] = { name = "x-amzn-bedrock-knowledge-base-session-id" },
         },
      }),
   },
})

M.InputImage = schema.new({
   id = id.from(_N, "InputImage"),
   type = "structure",
   members = {
      format = schema.new({
         id = id.from(_N, "InputImage", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      inlineContent = schema.new({
         id = id.from(_N, "InputImage", "inlineContent"),
         type = "blob",
         name = "inlineContent",
         target_id = prelude.Blob.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.KnowledgeBaseQuery = schema.new({
   id = id.from(_N, "KnowledgeBaseQuery"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "KnowledgeBaseQuery", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.DEFAULT] = { value = "TEXT" },
         },
      }),
      text = schema.new({
         id = id.from(_N, "KnowledgeBaseQuery", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
         traits = {
            [traits.DEFAULT] = { value = "" },
         },
      }),
      image = schema.new({
         id = id.from(_N, "KnowledgeBaseQuery", "image"),
         type = "structure",
         name = "image",
         target_id = id.from(_N, "InputImage"),
         target = M.InputImage,
      }),
   },
})

M.KnowledgeBaseRetrievalResult = schema.new({
   id = id.from(_N, "KnowledgeBaseRetrievalResult"),
   type = "structure",
   members = {
      content = schema.new({
         id = id.from(_N, "KnowledgeBaseRetrievalResult", "content"),
         type = "structure",
         name = "content",
         target_id = id.from(_N, "RetrievalResultContent"),
         target = M.RetrievalResultContent,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      location = schema.new({
         id = id.from(_N, "KnowledgeBaseRetrievalResult", "location"),
         type = "structure",
         name = "location",
         target_id = id.from(_N, "RetrievalResultLocation"),
         target = M.RetrievalResultLocation,
      }),
      score = schema.new({
         id = id.from(_N, "KnowledgeBaseRetrievalResult", "score"),
         type = "double",
         name = "score",
         target_id = prelude.Double.id,
      }),
      metadata = schema.new({
         id = id.from(_N, "KnowledgeBaseRetrievalResult", "metadata"),
         type = "map",
         name = "metadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Document,
      }),
   },
})

M.RetrieveOutput = schema.new({
   id = id.from(_N, "RetrieveResponse"),
   type = "structure",
   members = {
      retrievalResults = schema.new({
         id = id.from(_N, "RetrieveOutput", "retrievalResults"),
         type = "list",
         name = "retrievalResults",
         target_id = prelude.Document.id,
         list_member = M.KnowledgeBaseRetrievalResult,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      guardrailAction = schema.new({
         id = id.from(_N, "RetrieveOutput", "guardrailAction"),
         type = "string",
         name = "guardrailAction",
         target_id = prelude.String.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "RetrieveOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateSessionInput = schema.new({
   id = id.from(_N, "CreateSessionRequest"),
   type = "structure",
   members = {
      sessionMetadata = schema.new({
         id = id.from(_N, "CreateSessionInput", "sessionMetadata"),
         type = "map",
         name = "sessionMetadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      encryptionKeyArn = schema.new({
         id = id.from(_N, "CreateSessionInput", "encryptionKeyArn"),
         type = "string",
         name = "encryptionKeyArn",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateSessionInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateSessionOutput = schema.new({
   id = id.from(_N, "CreateSessionResponse"),
   type = "structure",
   members = {
      sessionId = schema.new({
         id = id.from(_N, "CreateSessionOutput", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sessionArn = schema.new({
         id = id.from(_N, "CreateSessionOutput", "sessionArn"),
         type = "string",
         name = "sessionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sessionStatus = schema.new({
         id = id.from(_N, "CreateSessionOutput", "sessionStatus"),
         type = "string",
         name = "sessionStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdAt = schema.new({
         id = id.from(_N, "CreateSessionOutput", "createdAt"),
         type = "timestamp",
         name = "createdAt",
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

M.DeleteSessionInput = schema.new({
   id = id.from(_N, "DeleteSessionRequest"),
   type = "structure",
   members = {
      sessionIdentifier = schema.new({
         id = id.from(_N, "DeleteSessionInput", "sessionIdentifier"),
         type = "string",
         name = "sessionIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteSessionOutput = schema.new({
   id = id.from(_N, "DeleteSessionResponse"),
   type = "structure",
})

M.EndSessionInput = schema.new({
   id = id.from(_N, "EndSessionRequest"),
   type = "structure",
   members = {
      sessionIdentifier = schema.new({
         id = id.from(_N, "EndSessionInput", "sessionIdentifier"),
         type = "string",
         name = "sessionIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.EndSessionOutput = schema.new({
   id = id.from(_N, "EndSessionResponse"),
   type = "structure",
   members = {
      sessionId = schema.new({
         id = id.from(_N, "EndSessionOutput", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sessionArn = schema.new({
         id = id.from(_N, "EndSessionOutput", "sessionArn"),
         type = "string",
         name = "sessionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sessionStatus = schema.new({
         id = id.from(_N, "EndSessionOutput", "sessionStatus"),
         type = "string",
         name = "sessionStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetSessionInput = schema.new({
   id = id.from(_N, "GetSessionRequest"),
   type = "structure",
   members = {
      sessionIdentifier = schema.new({
         id = id.from(_N, "GetSessionInput", "sessionIdentifier"),
         type = "string",
         name = "sessionIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetSessionOutput = schema.new({
   id = id.from(_N, "GetSessionResponse"),
   type = "structure",
   members = {
      sessionId = schema.new({
         id = id.from(_N, "GetSessionOutput", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sessionArn = schema.new({
         id = id.from(_N, "GetSessionOutput", "sessionArn"),
         type = "string",
         name = "sessionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sessionStatus = schema.new({
         id = id.from(_N, "GetSessionOutput", "sessionStatus"),
         type = "string",
         name = "sessionStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdAt = schema.new({
         id = id.from(_N, "GetSessionOutput", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      lastUpdatedAt = schema.new({
         id = id.from(_N, "GetSessionOutput", "lastUpdatedAt"),
         type = "timestamp",
         name = "lastUpdatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sessionMetadata = schema.new({
         id = id.from(_N, "GetSessionOutput", "sessionMetadata"),
         type = "map",
         name = "sessionMetadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      encryptionKeyArn = schema.new({
         id = id.from(_N, "GetSessionOutput", "encryptionKeyArn"),
         type = "string",
         name = "encryptionKeyArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateInvocationInput = schema.new({
   id = id.from(_N, "CreateInvocationRequest"),
   type = "structure",
   members = {
      invocationId = schema.new({
         id = id.from(_N, "CreateInvocationInput", "invocationId"),
         type = "string",
         name = "invocationId",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "CreateInvocationInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      sessionIdentifier = schema.new({
         id = id.from(_N, "CreateInvocationInput", "sessionIdentifier"),
         type = "string",
         name = "sessionIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.CreateInvocationOutput = schema.new({
   id = id.from(_N, "CreateInvocationResponse"),
   type = "structure",
   members = {
      sessionId = schema.new({
         id = id.from(_N, "CreateInvocationOutput", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      invocationId = schema.new({
         id = id.from(_N, "CreateInvocationOutput", "invocationId"),
         type = "string",
         name = "invocationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdAt = schema.new({
         id = id.from(_N, "CreateInvocationOutput", "createdAt"),
         type = "timestamp",
         name = "createdAt",
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

M.ListInvocationsInput = schema.new({
   id = id.from(_N, "ListInvocationsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListInvocationsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListInvocationsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 10 },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      sessionIdentifier = schema.new({
         id = id.from(_N, "ListInvocationsInput", "sessionIdentifier"),
         type = "string",
         name = "sessionIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.InvocationSummary = schema.new({
   id = id.from(_N, "InvocationSummary"),
   type = "structure",
   members = {
      sessionId = schema.new({
         id = id.from(_N, "InvocationSummary", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      invocationId = schema.new({
         id = id.from(_N, "InvocationSummary", "invocationId"),
         type = "string",
         name = "invocationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdAt = schema.new({
         id = id.from(_N, "InvocationSummary", "createdAt"),
         type = "timestamp",
         name = "createdAt",
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

M.ListInvocationsOutput = schema.new({
   id = id.from(_N, "ListInvocationsResponse"),
   type = "structure",
   members = {
      invocationSummaries = schema.new({
         id = id.from(_N, "ListInvocationsOutput", "invocationSummaries"),
         type = "list",
         name = "invocationSummaries",
         target_id = prelude.Document.id,
         list_member = M.InvocationSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListInvocationsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetInvocationStepInput = schema.new({
   id = id.from(_N, "GetInvocationStepRequest"),
   type = "structure",
   members = {
      invocationIdentifier = schema.new({
         id = id.from(_N, "GetInvocationStepInput", "invocationIdentifier"),
         type = "string",
         name = "invocationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      invocationStepId = schema.new({
         id = id.from(_N, "GetInvocationStepInput", "invocationStepId"),
         type = "string",
         name = "invocationStepId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      sessionIdentifier = schema.new({
         id = id.from(_N, "GetInvocationStepInput", "sessionIdentifier"),
         type = "string",
         name = "sessionIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.S3Location = schema.new({
   id = id.from(_N, "S3Location"),
   type = "structure",
   members = {
      uri = schema.new({
         id = id.from(_N, "S3Location", "uri"),
         type = "string",
         name = "uri",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ImageSource = schema.new({
   id = id.from(_N, "ImageSource"),
   type = "union",
   members = {
      bytes = schema.new({
         id = id.from(_N, "ImageSource", "bytes"),
         type = "blob",
         name = "bytes",
         target_id = prelude.Blob.id,
      }),
      s3Location = schema.new({
         id = id.from(_N, "ImageSource", "s3Location"),
         type = "structure",
         name = "s3Location",
         target_id = id.from(_N, "S3Location"),
         target = M.S3Location,
      }),
   },
})

M.ImageBlock = schema.new({
   id = id.from(_N, "ImageBlock"),
   type = "structure",
   members = {
      format = schema.new({
         id = id.from(_N, "ImageBlock", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      source = schema.new({
         id = id.from(_N, "ImageBlock", "source"),
         type = "union",
         name = "source",
         target_id = id.from(_N, "ImageSource"),
         target = M.ImageSource,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BedrockSessionContentBlock = schema.new({
   id = id.from(_N, "BedrockSessionContentBlock"),
   type = "union",
   members = {
      text = schema.new({
         id = id.from(_N, "BedrockSessionContentBlock", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
      }),
      image = schema.new({
         id = id.from(_N, "BedrockSessionContentBlock", "image"),
         type = "structure",
         name = "image",
         target_id = id.from(_N, "ImageBlock"),
         target = M.ImageBlock,
      }),
   },
})

M.InvocationStepPayload = schema.new({
   id = id.from(_N, "InvocationStepPayload"),
   type = "union",
   members = {
      contentBlocks = schema.new({
         id = id.from(_N, "InvocationStepPayload", "contentBlocks"),
         type = "list",
         name = "contentBlocks",
         target_id = prelude.Document.id,
         list_member = M.BedrockSessionContentBlock,
      }),
   },
})

M.InvocationStep = schema.new({
   id = id.from(_N, "InvocationStep"),
   type = "structure",
   members = {
      sessionId = schema.new({
         id = id.from(_N, "InvocationStep", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      invocationId = schema.new({
         id = id.from(_N, "InvocationStep", "invocationId"),
         type = "string",
         name = "invocationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      invocationStepId = schema.new({
         id = id.from(_N, "InvocationStep", "invocationStepId"),
         type = "string",
         name = "invocationStepId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      invocationStepTime = schema.new({
         id = id.from(_N, "InvocationStep", "invocationStepTime"),
         type = "timestamp",
         name = "invocationStepTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      payload = schema.new({
         id = id.from(_N, "InvocationStep", "payload"),
         type = "union",
         name = "payload",
         target_id = id.from(_N, "InvocationStepPayload"),
         target = M.InvocationStepPayload,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetInvocationStepOutput = schema.new({
   id = id.from(_N, "GetInvocationStepResponse"),
   type = "structure",
   members = {
      invocationStep = schema.new({
         id = id.from(_N, "GetInvocationStepOutput", "invocationStep"),
         type = "structure",
         name = "invocationStep",
         target_id = id.from(_N, "InvocationStep"),
         target = M.InvocationStep,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListInvocationStepsInput = schema.new({
   id = id.from(_N, "ListInvocationStepsRequest"),
   type = "structure",
   members = {
      invocationIdentifier = schema.new({
         id = id.from(_N, "ListInvocationStepsInput", "invocationIdentifier"),
         type = "string",
         name = "invocationIdentifier",
         target_id = prelude.String.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListInvocationStepsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListInvocationStepsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 10 },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      sessionIdentifier = schema.new({
         id = id.from(_N, "ListInvocationStepsInput", "sessionIdentifier"),
         type = "string",
         name = "sessionIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.InvocationStepSummary = schema.new({
   id = id.from(_N, "InvocationStepSummary"),
   type = "structure",
   members = {
      sessionId = schema.new({
         id = id.from(_N, "InvocationStepSummary", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      invocationId = schema.new({
         id = id.from(_N, "InvocationStepSummary", "invocationId"),
         type = "string",
         name = "invocationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      invocationStepId = schema.new({
         id = id.from(_N, "InvocationStepSummary", "invocationStepId"),
         type = "string",
         name = "invocationStepId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      invocationStepTime = schema.new({
         id = id.from(_N, "InvocationStepSummary", "invocationStepTime"),
         type = "timestamp",
         name = "invocationStepTime",
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

M.ListInvocationStepsOutput = schema.new({
   id = id.from(_N, "ListInvocationStepsResponse"),
   type = "structure",
   members = {
      invocationStepSummaries = schema.new({
         id = id.from(_N, "ListInvocationStepsOutput", "invocationStepSummaries"),
         type = "list",
         name = "invocationStepSummaries",
         target_id = prelude.Document.id,
         list_member = M.InvocationStepSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListInvocationStepsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.PutInvocationStepInput = schema.new({
   id = id.from(_N, "PutInvocationStepRequest"),
   type = "structure",
   members = {
      sessionIdentifier = schema.new({
         id = id.from(_N, "PutInvocationStepInput", "sessionIdentifier"),
         type = "string",
         name = "sessionIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      invocationIdentifier = schema.new({
         id = id.from(_N, "PutInvocationStepInput", "invocationIdentifier"),
         type = "string",
         name = "invocationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      invocationStepTime = schema.new({
         id = id.from(_N, "PutInvocationStepInput", "invocationStepTime"),
         type = "timestamp",
         name = "invocationStepTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      payload = schema.new({
         id = id.from(_N, "PutInvocationStepInput", "payload"),
         type = "union",
         name = "payload",
         target_id = id.from(_N, "InvocationStepPayload"),
         target = M.InvocationStepPayload,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      invocationStepId = schema.new({
         id = id.from(_N, "PutInvocationStepInput", "invocationStepId"),
         type = "string",
         name = "invocationStepId",
         target_id = prelude.String.id,
      }),
   },
})

M.PutInvocationStepOutput = schema.new({
   id = id.from(_N, "PutInvocationStepResponse"),
   type = "structure",
   members = {
      invocationStepId = schema.new({
         id = id.from(_N, "PutInvocationStepOutput", "invocationStepId"),
         type = "string",
         name = "invocationStepId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListSessionsInput = schema.new({
   id = id.from(_N, "ListSessionsRequest"),
   type = "structure",
   members = {
      maxResults = schema.new({
         id = id.from(_N, "ListSessionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 10 },
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListSessionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.SessionSummary = schema.new({
   id = id.from(_N, "SessionSummary"),
   type = "structure",
   members = {
      sessionId = schema.new({
         id = id.from(_N, "SessionSummary", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sessionArn = schema.new({
         id = id.from(_N, "SessionSummary", "sessionArn"),
         type = "string",
         name = "sessionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sessionStatus = schema.new({
         id = id.from(_N, "SessionSummary", "sessionStatus"),
         type = "string",
         name = "sessionStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdAt = schema.new({
         id = id.from(_N, "SessionSummary", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      lastUpdatedAt = schema.new({
         id = id.from(_N, "SessionSummary", "lastUpdatedAt"),
         type = "timestamp",
         name = "lastUpdatedAt",
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

M.ListSessionsOutput = schema.new({
   id = id.from(_N, "ListSessionsResponse"),
   type = "structure",
   members = {
      sessionSummaries = schema.new({
         id = id.from(_N, "ListSessionsOutput", "sessionSummaries"),
         type = "list",
         name = "sessionSummaries",
         target_id = prelude.Document.id,
         list_member = M.SessionSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListSessionsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateSessionInput = schema.new({
   id = id.from(_N, "UpdateSessionRequest"),
   type = "structure",
   members = {
      sessionMetadata = schema.new({
         id = id.from(_N, "UpdateSessionInput", "sessionMetadata"),
         type = "map",
         name = "sessionMetadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      sessionIdentifier = schema.new({
         id = id.from(_N, "UpdateSessionInput", "sessionIdentifier"),
         type = "string",
         name = "sessionIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.UpdateSessionOutput = schema.new({
   id = id.from(_N, "UpdateSessionResponse"),
   type = "structure",
   members = {
      sessionId = schema.new({
         id = id.from(_N, "UpdateSessionOutput", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sessionArn = schema.new({
         id = id.from(_N, "UpdateSessionOutput", "sessionArn"),
         type = "string",
         name = "sessionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sessionStatus = schema.new({
         id = id.from(_N, "UpdateSessionOutput", "sessionStatus"),
         type = "string",
         name = "sessionStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdAt = schema.new({
         id = id.from(_N, "UpdateSessionOutput", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      lastUpdatedAt = schema.new({
         id = id.from(_N, "UpdateSessionOutput", "lastUpdatedAt"),
         type = "timestamp",
         name = "lastUpdatedAt",
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

M.ListTagsForResourceInput = schema.new({
   id = id.from(_N, "ListTagsForResourceRequest"),
   type = "structure",
   members = {
      resourceArn = schema.new({
         id = id.from(_N, "ListTagsForResourceInput", "resourceArn"),
         type = "string",
         name = "resourceArn",
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
      tags = schema.new({
         id = id.from(_N, "ListTagsForResourceOutput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.TagResourceInput = schema.new({
   id = id.from(_N, "TagResourceRequest"),
   type = "structure",
   members = {
      resourceArn = schema.new({
         id = id.from(_N, "TagResourceInput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "TagResourceInput", "tags"),
         type = "map",
         name = "tags",
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
      resourceArn = schema.new({
         id = id.from(_N, "UntagResourceInput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      tagKeys = schema.new({
         id = id.from(_N, "UntagResourceInput", "tagKeys"),
         type = "list",
         name = "tagKeys",
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

M.RetrievalFilter = schema.new({
   id = id.from(_N, "RetrievalFilter"),
   type = "union",
   members = {
      equals = schema.new({
         id = id.from(_N, "RetrievalFilter", "equals"),
         type = "structure",
         name = "equals",
         target_id = id.from(_N, "FilterAttribute"),
         target = M.FilterAttribute,
      }),
      notEquals = schema.new({
         id = id.from(_N, "RetrievalFilter", "notEquals"),
         type = "structure",
         name = "notEquals",
         target_id = id.from(_N, "FilterAttribute"),
         target = M.FilterAttribute,
      }),
      greaterThan = schema.new({
         id = id.from(_N, "RetrievalFilter", "greaterThan"),
         type = "structure",
         name = "greaterThan",
         target_id = id.from(_N, "FilterAttribute"),
         target = M.FilterAttribute,
      }),
      greaterThanOrEquals = schema.new({
         id = id.from(_N, "RetrievalFilter", "greaterThanOrEquals"),
         type = "structure",
         name = "greaterThanOrEquals",
         target_id = id.from(_N, "FilterAttribute"),
         target = M.FilterAttribute,
      }),
      lessThan = schema.new({
         id = id.from(_N, "RetrievalFilter", "lessThan"),
         type = "structure",
         name = "lessThan",
         target_id = id.from(_N, "FilterAttribute"),
         target = M.FilterAttribute,
      }),
      lessThanOrEquals = schema.new({
         id = id.from(_N, "RetrievalFilter", "lessThanOrEquals"),
         type = "structure",
         name = "lessThanOrEquals",
         target_id = id.from(_N, "FilterAttribute"),
         target = M.FilterAttribute,
      }),
      ["in"] = schema.new({
         id = id.from(_N, "RetrievalFilter", "in"),
         type = "structure",
         name = "in",
         target_id = id.from(_N, "FilterAttribute"),
         target = M.FilterAttribute,
      }),
      notIn = schema.new({
         id = id.from(_N, "RetrievalFilter", "notIn"),
         type = "structure",
         name = "notIn",
         target_id = id.from(_N, "FilterAttribute"),
         target = M.FilterAttribute,
      }),
      startsWith = schema.new({
         id = id.from(_N, "RetrievalFilter", "startsWith"),
         type = "structure",
         name = "startsWith",
         target_id = id.from(_N, "FilterAttribute"),
         target = M.FilterAttribute,
      }),
      listContains = schema.new({
         id = id.from(_N, "RetrievalFilter", "listContains"),
         type = "structure",
         name = "listContains",
         target_id = id.from(_N, "FilterAttribute"),
         target = M.FilterAttribute,
      }),
      stringContains = schema.new({
         id = id.from(_N, "RetrievalFilter", "stringContains"),
         type = "structure",
         name = "stringContains",
         target_id = id.from(_N, "FilterAttribute"),
         target = M.FilterAttribute,
      }),
      andAll = schema.new({
         id = id.from(_N, "RetrievalFilter", "andAll"),
         type = "list",
         name = "andAll",
         target_id = prelude.Document.id,
         list_member = M.RetrievalFilter,
      }),
      orAll = schema.new({
         id = id.from(_N, "RetrievalFilter", "orAll"),
         type = "list",
         name = "orAll",
         target_id = prelude.Document.id,
         list_member = M.RetrievalFilter,
      }),
   },
})

M.KnowledgeBaseVectorSearchConfiguration = schema.new({
   id = id.from(_N, "KnowledgeBaseVectorSearchConfiguration"),
   type = "structure",
   members = {
      numberOfResults = schema.new({
         id = id.from(_N, "KnowledgeBaseVectorSearchConfiguration", "numberOfResults"),
         type = "integer",
         name = "numberOfResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 5 },
         },
      }),
      overrideSearchType = schema.new({
         id = id.from(_N, "KnowledgeBaseVectorSearchConfiguration", "overrideSearchType"),
         type = "string",
         name = "overrideSearchType",
         target_id = prelude.String.id,
      }),
      filter = schema.new({
         id = id.from(_N, "KnowledgeBaseVectorSearchConfiguration", "filter"),
         type = "union",
         name = "filter",
         target_id = id.from(_N, "RetrievalFilter"),
         target = M.RetrievalFilter,
      }),
      rerankingConfiguration = schema.new({
         id = id.from(_N, "KnowledgeBaseVectorSearchConfiguration", "rerankingConfiguration"),
         type = "structure",
         name = "rerankingConfiguration",
         target_id = id.from(_N, "VectorSearchRerankingConfiguration"),
         target = M.VectorSearchRerankingConfiguration,
      }),
      implicitFilterConfiguration = schema.new({
         id = id.from(_N, "KnowledgeBaseVectorSearchConfiguration", "implicitFilterConfiguration"),
         type = "structure",
         name = "implicitFilterConfiguration",
         target_id = id.from(_N, "ImplicitFilterConfiguration"),
         target = M.ImplicitFilterConfiguration,
      }),
   },
})

M.KnowledgeBaseRetrievalConfiguration = schema.new({
   id = id.from(_N, "KnowledgeBaseRetrievalConfiguration"),
   type = "structure",
   members = {
      vectorSearchConfiguration = schema.new({
         id = id.from(_N, "KnowledgeBaseRetrievalConfiguration", "vectorSearchConfiguration"),
         type = "structure",
         name = "vectorSearchConfiguration",
         target_id = id.from(_N, "KnowledgeBaseVectorSearchConfiguration"),
         target = M.KnowledgeBaseVectorSearchConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.KnowledgeBase = schema.new({
   id = id.from(_N, "KnowledgeBase"),
   type = "structure",
   members = {
      knowledgeBaseId = schema.new({
         id = id.from(_N, "KnowledgeBase", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "KnowledgeBase", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      retrievalConfiguration = schema.new({
         id = id.from(_N, "KnowledgeBase", "retrievalConfiguration"),
         type = "structure",
         name = "retrievalConfiguration",
         target_id = id.from(_N, "KnowledgeBaseRetrievalConfiguration"),
         target = M.KnowledgeBaseRetrievalConfiguration,
      }),
   },
})

M.KnowledgeBaseConfiguration = schema.new({
   id = id.from(_N, "KnowledgeBaseConfiguration"),
   type = "structure",
   members = {
      knowledgeBaseId = schema.new({
         id = id.from(_N, "KnowledgeBaseConfiguration", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      retrievalConfiguration = schema.new({
         id = id.from(_N, "KnowledgeBaseConfiguration", "retrievalConfiguration"),
         type = "structure",
         name = "retrievalConfiguration",
         target_id = id.from(_N, "KnowledgeBaseRetrievalConfiguration"),
         target = M.KnowledgeBaseRetrievalConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.KnowledgeBaseRetrieveAndGenerateConfiguration = schema.new({
   id = id.from(_N, "KnowledgeBaseRetrieveAndGenerateConfiguration"),
   type = "structure",
   members = {
      knowledgeBaseId = schema.new({
         id = id.from(_N, "KnowledgeBaseRetrieveAndGenerateConfiguration", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      modelArn = schema.new({
         id = id.from(_N, "KnowledgeBaseRetrieveAndGenerateConfiguration", "modelArn"),
         type = "string",
         name = "modelArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      retrievalConfiguration = schema.new({
         id = id.from(_N, "KnowledgeBaseRetrieveAndGenerateConfiguration", "retrievalConfiguration"),
         type = "structure",
         name = "retrievalConfiguration",
         target_id = id.from(_N, "KnowledgeBaseRetrievalConfiguration"),
         target = M.KnowledgeBaseRetrievalConfiguration,
      }),
      generationConfiguration = schema.new({
         id = id.from(_N, "KnowledgeBaseRetrieveAndGenerateConfiguration", "generationConfiguration"),
         type = "structure",
         name = "generationConfiguration",
         target_id = id.from(_N, "GenerationConfiguration"),
         target = M.GenerationConfiguration,
      }),
      orchestrationConfiguration = schema.new({
         id = id.from(_N, "KnowledgeBaseRetrieveAndGenerateConfiguration", "orchestrationConfiguration"),
         type = "structure",
         name = "orchestrationConfiguration",
         target_id = id.from(_N, "OrchestrationConfiguration"),
         target = M.OrchestrationConfiguration,
      }),
   },
})

M.RetrieveInput = schema.new({
   id = id.from(_N, "RetrieveRequest"),
   type = "structure",
   members = {
      knowledgeBaseId = schema.new({
         id = id.from(_N, "RetrieveInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      retrievalQuery = schema.new({
         id = id.from(_N, "RetrieveInput", "retrievalQuery"),
         type = "structure",
         name = "retrievalQuery",
         target_id = id.from(_N, "KnowledgeBaseQuery"),
         target = M.KnowledgeBaseQuery,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      retrievalConfiguration = schema.new({
         id = id.from(_N, "RetrieveInput", "retrievalConfiguration"),
         type = "structure",
         name = "retrievalConfiguration",
         target_id = id.from(_N, "KnowledgeBaseRetrievalConfiguration"),
         target = M.KnowledgeBaseRetrievalConfiguration,
      }),
      guardrailConfiguration = schema.new({
         id = id.from(_N, "RetrieveInput", "guardrailConfiguration"),
         type = "structure",
         name = "guardrailConfiguration",
         target_id = id.from(_N, "GuardrailConfiguration"),
         target = M.GuardrailConfiguration,
      }),
      nextToken = schema.new({
         id = id.from(_N, "RetrieveInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.RetrieveAndGenerateConfiguration = schema.new({
   id = id.from(_N, "RetrieveAndGenerateConfiguration"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "RetrieveAndGenerateConfiguration", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      knowledgeBaseConfiguration = schema.new({
         id = id.from(_N, "RetrieveAndGenerateConfiguration", "knowledgeBaseConfiguration"),
         type = "structure",
         name = "knowledgeBaseConfiguration",
         target_id = id.from(_N, "KnowledgeBaseRetrieveAndGenerateConfiguration"),
         target = M.KnowledgeBaseRetrieveAndGenerateConfiguration,
      }),
      externalSourcesConfiguration = schema.new({
         id = id.from(_N, "RetrieveAndGenerateConfiguration", "externalSourcesConfiguration"),
         type = "structure",
         name = "externalSourcesConfiguration",
         target_id = id.from(_N, "ExternalSourcesRetrieveAndGenerateConfiguration"),
         target = M.ExternalSourcesRetrieveAndGenerateConfiguration,
      }),
   },
})

M.Collaborator = schema.new({
   id = id.from(_N, "Collaborator"),
   type = "structure",
   members = {
      customerEncryptionKeyArn = schema.new({
         id = id.from(_N, "Collaborator", "customerEncryptionKeyArn"),
         type = "string",
         name = "customerEncryptionKeyArn",
         target_id = prelude.String.id,
      }),
      foundationModel = schema.new({
         id = id.from(_N, "Collaborator", "foundationModel"),
         type = "string",
         name = "foundationModel",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      instruction = schema.new({
         id = id.from(_N, "Collaborator", "instruction"),
         type = "string",
         name = "instruction",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      idleSessionTTLInSeconds = schema.new({
         id = id.from(_N, "Collaborator", "idleSessionTTLInSeconds"),
         type = "integer",
         name = "idleSessionTTLInSeconds",
         target_id = prelude.Integer.id,
      }),
      actionGroups = schema.new({
         id = id.from(_N, "Collaborator", "actionGroups"),
         type = "list",
         name = "actionGroups",
         target_id = prelude.Document.id,
         list_member = M.AgentActionGroup,
      }),
      knowledgeBases = schema.new({
         id = id.from(_N, "Collaborator", "knowledgeBases"),
         type = "list",
         name = "knowledgeBases",
         target_id = prelude.Document.id,
         list_member = M.KnowledgeBase,
      }),
      guardrailConfiguration = schema.new({
         id = id.from(_N, "Collaborator", "guardrailConfiguration"),
         type = "structure",
         name = "guardrailConfiguration",
         target_id = id.from(_N, "GuardrailConfigurationWithArn"),
         target = M.GuardrailConfigurationWithArn,
      }),
      promptOverrideConfiguration = schema.new({
         id = id.from(_N, "Collaborator", "promptOverrideConfiguration"),
         type = "structure",
         name = "promptOverrideConfiguration",
         target_id = id.from(_N, "PromptOverrideConfiguration"),
         target = M.PromptOverrideConfiguration,
      }),
      agentCollaboration = schema.new({
         id = id.from(_N, "Collaborator", "agentCollaboration"),
         type = "string",
         name = "agentCollaboration",
         target_id = prelude.String.id,
      }),
      collaboratorConfigurations = schema.new({
         id = id.from(_N, "Collaborator", "collaboratorConfigurations"),
         type = "list",
         name = "collaboratorConfigurations",
         target_id = prelude.Document.id,
         list_member = M.CollaboratorConfiguration,
      }),
      agentName = schema.new({
         id = id.from(_N, "Collaborator", "agentName"),
         type = "string",
         name = "agentName",
         target_id = prelude.String.id,
      }),
   },
})

M.RetrieveAndGenerateOperationInput = schema.new({
   id = id.from(_N, "RetrieveAndGenerateRequest"),
   type = "structure",
   members = {
      sessionId = schema.new({
         id = id.from(_N, "RetrieveAndGenerateOperationInput", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
      }),
      input = schema.new({
         id = id.from(_N, "RetrieveAndGenerateOperationInput", "input"),
         type = "structure",
         name = "input",
         target_id = id.from(_N, "RetrieveAndGenerateInput"),
         target = M.RetrieveAndGenerateInput,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      retrieveAndGenerateConfiguration = schema.new({
         id = id.from(_N, "RetrieveAndGenerateOperationInput", "retrieveAndGenerateConfiguration"),
         type = "structure",
         name = "retrieveAndGenerateConfiguration",
         target_id = id.from(_N, "RetrieveAndGenerateConfiguration"),
         target = M.RetrieveAndGenerateConfiguration,
      }),
      sessionConfiguration = schema.new({
         id = id.from(_N, "RetrieveAndGenerateOperationInput", "sessionConfiguration"),
         type = "structure",
         name = "sessionConfiguration",
         target_id = id.from(_N, "RetrieveAndGenerateSessionConfiguration"),
         target = M.RetrieveAndGenerateSessionConfiguration,
      }),
   },
})

M.RetrieveAndGenerateStreamInput = schema.new({
   id = id.from(_N, "RetrieveAndGenerateStreamRequest"),
   type = "structure",
   members = {
      sessionId = schema.new({
         id = id.from(_N, "RetrieveAndGenerateStreamInput", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
      }),
      input = schema.new({
         id = id.from(_N, "RetrieveAndGenerateStreamInput", "input"),
         type = "structure",
         name = "input",
         target_id = id.from(_N, "RetrieveAndGenerateInput"),
         target = M.RetrieveAndGenerateInput,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      retrieveAndGenerateConfiguration = schema.new({
         id = id.from(_N, "RetrieveAndGenerateStreamInput", "retrieveAndGenerateConfiguration"),
         type = "structure",
         name = "retrieveAndGenerateConfiguration",
         target_id = id.from(_N, "RetrieveAndGenerateConfiguration"),
         target = M.RetrieveAndGenerateConfiguration,
      }),
      sessionConfiguration = schema.new({
         id = id.from(_N, "RetrieveAndGenerateStreamInput", "sessionConfiguration"),
         type = "structure",
         name = "sessionConfiguration",
         target_id = id.from(_N, "RetrieveAndGenerateSessionConfiguration"),
         target = M.RetrieveAndGenerateSessionConfiguration,
      }),
   },
})

M.SessionState = schema.new({
   id = id.from(_N, "SessionState"),
   type = "structure",
   members = {
      sessionAttributes = schema.new({
         id = id.from(_N, "SessionState", "sessionAttributes"),
         type = "map",
         name = "sessionAttributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      promptSessionAttributes = schema.new({
         id = id.from(_N, "SessionState", "promptSessionAttributes"),
         type = "map",
         name = "promptSessionAttributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      returnControlInvocationResults = schema.new({
         id = id.from(_N, "SessionState", "returnControlInvocationResults"),
         type = "list",
         name = "returnControlInvocationResults",
         target_id = prelude.Document.id,
         list_member = M.InvocationResultMember,
      }),
      invocationId = schema.new({
         id = id.from(_N, "SessionState", "invocationId"),
         type = "string",
         name = "invocationId",
         target_id = prelude.String.id,
      }),
      files = schema.new({
         id = id.from(_N, "SessionState", "files"),
         type = "list",
         name = "files",
         target_id = prelude.Document.id,
         list_member = M.InputFile,
      }),
      knowledgeBaseConfigurations = schema.new({
         id = id.from(_N, "SessionState", "knowledgeBaseConfigurations"),
         type = "list",
         name = "knowledgeBaseConfigurations",
         target_id = prelude.Document.id,
         list_member = M.KnowledgeBaseConfiguration,
      }),
      conversationHistory = schema.new({
         id = id.from(_N, "SessionState", "conversationHistory"),
         type = "structure",
         name = "conversationHistory",
         target_id = id.from(_N, "ConversationHistory"),
         target = M.ConversationHistory,
      }),
   },
})

M.InvokeAgentInput = schema.new({
   id = id.from(_N, "InvokeAgentRequest"),
   type = "structure",
   members = {
      sessionState = schema.new({
         id = id.from(_N, "InvokeAgentInput", "sessionState"),
         type = "structure",
         name = "sessionState",
         target_id = id.from(_N, "SessionState"),
         target = M.SessionState,
      }),
      agentId = schema.new({
         id = id.from(_N, "InvokeAgentInput", "agentId"),
         type = "string",
         name = "agentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      agentAliasId = schema.new({
         id = id.from(_N, "InvokeAgentInput", "agentAliasId"),
         type = "string",
         name = "agentAliasId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      sessionId = schema.new({
         id = id.from(_N, "InvokeAgentInput", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      endSession = schema.new({
         id = id.from(_N, "InvokeAgentInput", "endSession"),
         type = "boolean",
         name = "endSession",
         target_id = prelude.Boolean.id,
      }),
      enableTrace = schema.new({
         id = id.from(_N, "InvokeAgentInput", "enableTrace"),
         type = "boolean",
         name = "enableTrace",
         target_id = prelude.Boolean.id,
      }),
      inputText = schema.new({
         id = id.from(_N, "InvokeAgentInput", "inputText"),
         type = "string",
         name = "inputText",
         target_id = prelude.String.id,
      }),
      memoryId = schema.new({
         id = id.from(_N, "InvokeAgentInput", "memoryId"),
         type = "string",
         name = "memoryId",
         target_id = prelude.String.id,
      }),
      bedrockModelConfigurations = schema.new({
         id = id.from(_N, "InvokeAgentInput", "bedrockModelConfigurations"),
         type = "structure",
         name = "bedrockModelConfigurations",
         target_id = id.from(_N, "BedrockModelConfigurations"),
         target = M.BedrockModelConfigurations,
      }),
      streamingConfigurations = schema.new({
         id = id.from(_N, "InvokeAgentInput", "streamingConfigurations"),
         type = "structure",
         name = "streamingConfigurations",
         target_id = id.from(_N, "StreamingConfigurations"),
         target = M.StreamingConfigurations,
      }),
      promptCreationConfigurations = schema.new({
         id = id.from(_N, "InvokeAgentInput", "promptCreationConfigurations"),
         type = "structure",
         name = "promptCreationConfigurations",
         target_id = id.from(_N, "PromptCreationConfigurations"),
         target = M.PromptCreationConfigurations,
      }),
      sourceArn = schema.new({
         id = id.from(_N, "InvokeAgentInput", "sourceArn"),
         type = "string",
         name = "sourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-source-arn" },
         },
      }),
   },
})

M.InvokeInlineAgentInput = schema.new({
   id = id.from(_N, "InvokeInlineAgentRequest"),
   type = "structure",
   members = {
      customerEncryptionKeyArn = schema.new({
         id = id.from(_N, "InvokeInlineAgentInput", "customerEncryptionKeyArn"),
         type = "string",
         name = "customerEncryptionKeyArn",
         target_id = prelude.String.id,
      }),
      foundationModel = schema.new({
         id = id.from(_N, "InvokeInlineAgentInput", "foundationModel"),
         type = "string",
         name = "foundationModel",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      instruction = schema.new({
         id = id.from(_N, "InvokeInlineAgentInput", "instruction"),
         type = "string",
         name = "instruction",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      idleSessionTTLInSeconds = schema.new({
         id = id.from(_N, "InvokeInlineAgentInput", "idleSessionTTLInSeconds"),
         type = "integer",
         name = "idleSessionTTLInSeconds",
         target_id = prelude.Integer.id,
      }),
      actionGroups = schema.new({
         id = id.from(_N, "InvokeInlineAgentInput", "actionGroups"),
         type = "list",
         name = "actionGroups",
         target_id = prelude.Document.id,
         list_member = M.AgentActionGroup,
      }),
      knowledgeBases = schema.new({
         id = id.from(_N, "InvokeInlineAgentInput", "knowledgeBases"),
         type = "list",
         name = "knowledgeBases",
         target_id = prelude.Document.id,
         list_member = M.KnowledgeBase,
      }),
      guardrailConfiguration = schema.new({
         id = id.from(_N, "InvokeInlineAgentInput", "guardrailConfiguration"),
         type = "structure",
         name = "guardrailConfiguration",
         target_id = id.from(_N, "GuardrailConfigurationWithArn"),
         target = M.GuardrailConfigurationWithArn,
      }),
      promptOverrideConfiguration = schema.new({
         id = id.from(_N, "InvokeInlineAgentInput", "promptOverrideConfiguration"),
         type = "structure",
         name = "promptOverrideConfiguration",
         target_id = id.from(_N, "PromptOverrideConfiguration"),
         target = M.PromptOverrideConfiguration,
      }),
      agentCollaboration = schema.new({
         id = id.from(_N, "InvokeInlineAgentInput", "agentCollaboration"),
         type = "string",
         name = "agentCollaboration",
         target_id = prelude.String.id,
      }),
      collaboratorConfigurations = schema.new({
         id = id.from(_N, "InvokeInlineAgentInput", "collaboratorConfigurations"),
         type = "list",
         name = "collaboratorConfigurations",
         target_id = prelude.Document.id,
         list_member = M.CollaboratorConfiguration,
      }),
      agentName = schema.new({
         id = id.from(_N, "InvokeInlineAgentInput", "agentName"),
         type = "string",
         name = "agentName",
         target_id = prelude.String.id,
      }),
      sessionId = schema.new({
         id = id.from(_N, "InvokeInlineAgentInput", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      endSession = schema.new({
         id = id.from(_N, "InvokeInlineAgentInput", "endSession"),
         type = "boolean",
         name = "endSession",
         target_id = prelude.Boolean.id,
      }),
      enableTrace = schema.new({
         id = id.from(_N, "InvokeInlineAgentInput", "enableTrace"),
         type = "boolean",
         name = "enableTrace",
         target_id = prelude.Boolean.id,
      }),
      inputText = schema.new({
         id = id.from(_N, "InvokeInlineAgentInput", "inputText"),
         type = "string",
         name = "inputText",
         target_id = prelude.String.id,
      }),
      streamingConfigurations = schema.new({
         id = id.from(_N, "InvokeInlineAgentInput", "streamingConfigurations"),
         type = "structure",
         name = "streamingConfigurations",
         target_id = id.from(_N, "StreamingConfigurations"),
         target = M.StreamingConfigurations,
      }),
      promptCreationConfigurations = schema.new({
         id = id.from(_N, "InvokeInlineAgentInput", "promptCreationConfigurations"),
         type = "structure",
         name = "promptCreationConfigurations",
         target_id = id.from(_N, "PromptCreationConfigurations"),
         target = M.PromptCreationConfigurations,
      }),
      inlineSessionState = schema.new({
         id = id.from(_N, "InvokeInlineAgentInput", "inlineSessionState"),
         type = "structure",
         name = "inlineSessionState",
         target_id = id.from(_N, "InlineSessionState"),
         target = M.InlineSessionState,
      }),
      collaborators = schema.new({
         id = id.from(_N, "InvokeInlineAgentInput", "collaborators"),
         type = "list",
         name = "collaborators",
         target_id = prelude.Document.id,
         list_member = M.Collaborator,
      }),
      bedrockModelConfigurations = schema.new({
         id = id.from(_N, "InvokeInlineAgentInput", "bedrockModelConfigurations"),
         type = "structure",
         name = "bedrockModelConfigurations",
         target_id = id.from(_N, "InlineBedrockModelConfigurations"),
         target = M.InlineBedrockModelConfigurations,
      }),
      orchestrationType = schema.new({
         id = id.from(_N, "InvokeInlineAgentInput", "orchestrationType"),
         type = "string",
         name = "orchestrationType",
         target_id = prelude.String.id,
      }),
      customOrchestration = schema.new({
         id = id.from(_N, "InvokeInlineAgentInput", "customOrchestration"),
         type = "structure",
         name = "customOrchestration",
         target_id = id.from(_N, "CustomOrchestration"),
         target = M.CustomOrchestration,
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
   id = id.from("com.amazonaws.bedrockagentruntime", "AmazonBedrockAgentRunTimeService"),
   version = "2023-07-26",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateInvocation = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "CreateInvocation"),
   input = M.CreateInvocationInput,
   output = M.CreateInvocationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/sessions/{sessionIdentifier}/invocations/" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateSession = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "CreateSession"),
   input = M.CreateSessionInput,
   output = M.CreateSessionOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/sessions/" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteAgentMemory = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "DeleteAgentMemory"),
   input = M.DeleteAgentMemoryInput,
   output = M.DeleteAgentMemoryOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/agents/{agentId}/agentAliases/{agentAliasId}/memories" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteSession = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "DeleteSession"),
   input = M.DeleteSessionInput,
   output = M.DeleteSessionOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/sessions/{sessionIdentifier}/" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.EndSession = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "EndSession"),
   input = M.EndSessionInput,
   output = M.EndSessionOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/sessions/{sessionIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GenerateQuery = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "GenerateQuery"),
   input = M.GenerateQueryInput,
   output = M.GenerateQueryOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/generateQuery" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAgentMemory = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "GetAgentMemory"),
   input = M.GetAgentMemoryInput,
   output = M.GetAgentMemoryOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/agents/{agentId}/agentAliases/{agentAliasId}/memories" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetExecutionFlowSnapshot = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "GetExecutionFlowSnapshot"),
   input = M.GetExecutionFlowSnapshotInput,
   output = M.GetExecutionFlowSnapshotOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions/{executionIdentifier}/flowsnapshot" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetFlowExecution = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "GetFlowExecution"),
   input = M.GetFlowExecutionInput,
   output = M.GetFlowExecutionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions/{executionIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetInvocationStep = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "GetInvocationStep"),
   input = M.GetInvocationStepInput,
   output = M.GetInvocationStepOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/sessions/{sessionIdentifier}/invocationSteps/{invocationStepId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSession = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "GetSession"),
   input = M.GetSessionInput,
   output = M.GetSessionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/sessions/{sessionIdentifier}/" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.InvokeAgent = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "InvokeAgent"),
   input = M.InvokeAgentInput,
   output = M.InvokeAgentOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/agents/{agentId}/agentAliases/{agentAliasId}/sessions/{sessionId}/text" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.EVENT_STREAM] = M.ResponseStream,
   },
})

M.InvokeFlow = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "InvokeFlow"),
   input = M.InvokeFlowInput,
   output = M.InvokeFlowOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.EVENT_STREAM] = M.FlowResponseStream,
   },
})

M.InvokeInlineAgent = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "InvokeInlineAgent"),
   input = M.InvokeInlineAgentInput,
   output = M.InvokeInlineAgentOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/agents/{sessionId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.EVENT_STREAM] = M.InlineAgentResponseStream,
   },
})

M.ListFlowExecutionEvents = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "ListFlowExecutionEvents"),
   input = M.ListFlowExecutionEventsInput,
   output = M.ListFlowExecutionEventsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions/{executionIdentifier}/events" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListFlowExecutions = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "ListFlowExecutions"),
   input = M.ListFlowExecutionsInput,
   output = M.ListFlowExecutionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/flows/{flowIdentifier}/executions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListInvocations = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "ListInvocations"),
   input = M.ListInvocationsInput,
   output = M.ListInvocationsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/sessions/{sessionIdentifier}/invocations/" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListInvocationSteps = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "ListInvocationSteps"),
   input = M.ListInvocationStepsInput,
   output = M.ListInvocationStepsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/sessions/{sessionIdentifier}/invocationSteps/" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSessions = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "ListSessions"),
   input = M.ListSessionsInput,
   output = M.ListSessionsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/sessions/" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.OptimizePrompt = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "OptimizePrompt"),
   input = M.OptimizePromptInput,
   output = M.OptimizePromptOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/optimize-prompt" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.EVENT_STREAM] = M.OptimizedPromptStream,
   },
})

M.PutInvocationStep = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "PutInvocationStep"),
   input = M.PutInvocationStepInput,
   output = M.PutInvocationStepOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/sessions/{sessionIdentifier}/invocationSteps/" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.Rerank = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "Rerank"),
   input = M.RerankInput,
   output = M.RerankOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/rerank" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.Retrieve = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "Retrieve"),
   input = M.RetrieveInput,
   output = M.RetrieveOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/knowledgebases/{knowledgeBaseId}/retrieve" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RetrieveAndGenerate = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "RetrieveAndGenerate"),
   input = M.RetrieveAndGenerateOperationInput,
   output = M.RetrieveAndGenerateOperationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/retrieveAndGenerate" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RetrieveAndGenerateStream = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "RetrieveAndGenerateStream"),
   input = M.RetrieveAndGenerateStreamInput,
   output = M.RetrieveAndGenerateStreamOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/retrieveAndGenerateStream" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
      [traits.EVENT_STREAM] = M.RetrieveAndGenerateStreamResponseOutput,
   },
})

M.StartFlowExecution = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "StartFlowExecution"),
   input = M.StartFlowExecutionInput,
   output = M.StartFlowExecutionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopFlowExecution = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "StopFlowExecution"),
   input = M.StopFlowExecutionInput,
   output = M.StopFlowExecutionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/flows/{flowIdentifier}/aliases/{flowAliasIdentifier}/executions/{executionIdentifier}/stop" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateSession = schema.operation({
   id = id.from("com.amazonaws.bedrockagentruntime", "UpdateSession"),
   input = M.UpdateSessionInput,
   output = M.UpdateSessionOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/sessions/{sessionIdentifier}/" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
