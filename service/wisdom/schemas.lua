

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.wisdom"

local M = {}

M.Tags = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.AssistantList = schema.new({ type = "list", list_member = M.AssistantSummary })

M.RecommendationList = schema.new({ type = "list", list_member = M.RecommendationData })

M.RecommendationTriggerList = schema.new({ type = "list", list_member = M.RecommendationTrigger })

M.RecommendationIdList = schema.new({ type = "list", list_member = prelude.String })

M.NotifyRecommendationsReceivedErrorList = schema.new({ type = "list", list_member = M.NotifyRecommendationsReceivedError })

M.QueryResultsList = schema.new({ type = "list", list_member = M.ResultData })

M.SessionSummaries = schema.new({ type = "list", list_member = M.SessionSummary })

M.KnowledgeBaseList = schema.new({ type = "list", list_member = M.KnowledgeBaseSummary })

M.ImportJobList = schema.new({ type = "list", list_member = M.ImportJobSummary })

M.ContentSummaryList = schema.new({ type = "list", list_member = M.ContentSummary })

M.ContactAttributes = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.QuickResponseSearchResultsList = schema.new({ type = "list", list_member = M.QuickResponseSearchResultData })

M.Headers = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ContentMetadata = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.AssistantAssociationSummaryList = schema.new({ type = "list", list_member = M.AssistantAssociationSummary })

M.QuickResponseSummaryList = schema.new({ type = "list", list_member = M.QuickResponseSummary })

M.Channels = schema.new({ type = "list", list_member = prelude.String })

M.FilterList = schema.new({ type = "list", list_member = M.Filter })

M.QuickResponseQueryFieldList = schema.new({ type = "list", list_member = M.QuickResponseQueryField })

M.QuickResponseFilterFieldList = schema.new({ type = "list", list_member = M.QuickResponseFilterField })

M.GroupingValues = schema.new({ type = "list", list_member = prelude.String })

M.ObjectFieldsList = schema.new({ type = "list", list_member = prelude.String })

M.ContactAttributeKeys = schema.new({ type = "list", list_member = prelude.String })

M.QuickResponseQueryValueList = schema.new({ type = "list", list_member = prelude.String })

M.QuickResponseFilterValueList = schema.new({ type = "list", list_member = prelude.String })

M.Highlights = schema.new({ type = "list", list_member = M.Highlight })

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

M.AppIntegrationsConfiguration = schema.new({
   id = id.from(_N, "AppIntegrationsConfiguration"),
   type = "structure",
   members = {
      appIntegrationArn = schema.new({
         id = id.from(_N, "AppIntegrationsConfiguration", "appIntegrationArn"),
         type = "string",
         name = "appIntegrationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      objectFields = schema.new({
         id = id.from(_N, "AppIntegrationsConfiguration", "objectFields"),
         type = "list",
         name = "objectFields",
         target_id = prelude.Document.id,
         list_member = prelude.String,
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

M.AssistantAssociationInputData = schema.new({
   id = id.from(_N, "AssistantAssociationInputData"),
   type = "union",
   members = {
      knowledgeBaseId = schema.new({
         id = id.from(_N, "AssistantAssociationInputData", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateAssistantAssociationInput = schema.new({
   id = id.from(_N, "CreateAssistantAssociationRequest"),
   type = "structure",
   members = {
      assistantId = schema.new({
         id = id.from(_N, "CreateAssistantAssociationInput", "assistantId"),
         type = "string",
         name = "assistantId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      associationType = schema.new({
         id = id.from(_N, "CreateAssistantAssociationInput", "associationType"),
         type = "string",
         name = "associationType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      association = schema.new({
         id = id.from(_N, "CreateAssistantAssociationInput", "association"),
         type = "union",
         name = "association",
         target_id = id.from(_N, "AssistantAssociationInputData"),
         target = M.AssistantAssociationInputData,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      clientToken = schema.new({
         id = id.from(_N, "CreateAssistantAssociationInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateAssistantAssociationInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.KnowledgeBaseAssociationData = schema.new({
   id = id.from(_N, "KnowledgeBaseAssociationData"),
   type = "structure",
   members = {
      knowledgeBaseId = schema.new({
         id = id.from(_N, "KnowledgeBaseAssociationData", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
      }),
      knowledgeBaseArn = schema.new({
         id = id.from(_N, "KnowledgeBaseAssociationData", "knowledgeBaseArn"),
         type = "string",
         name = "knowledgeBaseArn",
         target_id = prelude.String.id,
      }),
   },
})

M.AssistantAssociationOutputData = schema.new({
   id = id.from(_N, "AssistantAssociationOutputData"),
   type = "union",
   members = {
      knowledgeBaseAssociation = schema.new({
         id = id.from(_N, "AssistantAssociationOutputData", "knowledgeBaseAssociation"),
         type = "structure",
         name = "knowledgeBaseAssociation",
         target_id = id.from(_N, "KnowledgeBaseAssociationData"),
         target = M.KnowledgeBaseAssociationData,
      }),
   },
})

M.AssistantAssociationData = schema.new({
   id = id.from(_N, "AssistantAssociationData"),
   type = "structure",
   members = {
      assistantAssociationId = schema.new({
         id = id.from(_N, "AssistantAssociationData", "assistantAssociationId"),
         type = "string",
         name = "assistantAssociationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      assistantAssociationArn = schema.new({
         id = id.from(_N, "AssistantAssociationData", "assistantAssociationArn"),
         type = "string",
         name = "assistantAssociationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      assistantId = schema.new({
         id = id.from(_N, "AssistantAssociationData", "assistantId"),
         type = "string",
         name = "assistantId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      assistantArn = schema.new({
         id = id.from(_N, "AssistantAssociationData", "assistantArn"),
         type = "string",
         name = "assistantArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      associationType = schema.new({
         id = id.from(_N, "AssistantAssociationData", "associationType"),
         type = "string",
         name = "associationType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      associationData = schema.new({
         id = id.from(_N, "AssistantAssociationData", "associationData"),
         type = "union",
         name = "associationData",
         target_id = id.from(_N, "AssistantAssociationOutputData"),
         target = M.AssistantAssociationOutputData,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "AssistantAssociationData", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateAssistantAssociationOutput = schema.new({
   id = id.from(_N, "CreateAssistantAssociationResponse"),
   type = "structure",
   members = {
      assistantAssociation = schema.new({
         id = id.from(_N, "CreateAssistantAssociationOutput", "assistantAssociation"),
         type = "structure",
         name = "assistantAssociation",
         target_id = id.from(_N, "AssistantAssociationData"),
         target = M.AssistantAssociationData,
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
      resourceName = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "resourceName"),
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

M.DeleteAssistantAssociationInput = schema.new({
   id = id.from(_N, "DeleteAssistantAssociationRequest"),
   type = "structure",
   members = {
      assistantAssociationId = schema.new({
         id = id.from(_N, "DeleteAssistantAssociationInput", "assistantAssociationId"),
         type = "string",
         name = "assistantAssociationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      assistantId = schema.new({
         id = id.from(_N, "DeleteAssistantAssociationInput", "assistantId"),
         type = "string",
         name = "assistantId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteAssistantAssociationOutput = schema.new({
   id = id.from(_N, "DeleteAssistantAssociationResponse"),
   type = "structure",
})

M.GetAssistantAssociationInput = schema.new({
   id = id.from(_N, "GetAssistantAssociationRequest"),
   type = "structure",
   members = {
      assistantAssociationId = schema.new({
         id = id.from(_N, "GetAssistantAssociationInput", "assistantAssociationId"),
         type = "string",
         name = "assistantAssociationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      assistantId = schema.new({
         id = id.from(_N, "GetAssistantAssociationInput", "assistantId"),
         type = "string",
         name = "assistantId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetAssistantAssociationOutput = schema.new({
   id = id.from(_N, "GetAssistantAssociationResponse"),
   type = "structure",
   members = {
      assistantAssociation = schema.new({
         id = id.from(_N, "GetAssistantAssociationOutput", "assistantAssociation"),
         type = "structure",
         name = "assistantAssociation",
         target_id = id.from(_N, "AssistantAssociationData"),
         target = M.AssistantAssociationData,
      }),
   },
})

M.ListAssistantAssociationsInput = schema.new({
   id = id.from(_N, "ListAssistantAssociationsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListAssistantAssociationsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListAssistantAssociationsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      assistantId = schema.new({
         id = id.from(_N, "ListAssistantAssociationsInput", "assistantId"),
         type = "string",
         name = "assistantId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.AssistantAssociationSummary = schema.new({
   id = id.from(_N, "AssistantAssociationSummary"),
   type = "structure",
   members = {
      assistantAssociationId = schema.new({
         id = id.from(_N, "AssistantAssociationSummary", "assistantAssociationId"),
         type = "string",
         name = "assistantAssociationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      assistantAssociationArn = schema.new({
         id = id.from(_N, "AssistantAssociationSummary", "assistantAssociationArn"),
         type = "string",
         name = "assistantAssociationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      assistantId = schema.new({
         id = id.from(_N, "AssistantAssociationSummary", "assistantId"),
         type = "string",
         name = "assistantId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      assistantArn = schema.new({
         id = id.from(_N, "AssistantAssociationSummary", "assistantArn"),
         type = "string",
         name = "assistantArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      associationType = schema.new({
         id = id.from(_N, "AssistantAssociationSummary", "associationType"),
         type = "string",
         name = "associationType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      associationData = schema.new({
         id = id.from(_N, "AssistantAssociationSummary", "associationData"),
         type = "union",
         name = "associationData",
         target_id = id.from(_N, "AssistantAssociationOutputData"),
         target = M.AssistantAssociationOutputData,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "AssistantAssociationSummary", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ListAssistantAssociationsOutput = schema.new({
   id = id.from(_N, "ListAssistantAssociationsResponse"),
   type = "structure",
   members = {
      assistantAssociationSummaries = schema.new({
         id = id.from(_N, "ListAssistantAssociationsOutput", "assistantAssociationSummaries"),
         type = "list",
         name = "assistantAssociationSummaries",
         target_id = prelude.Document.id,
         list_member = M.AssistantAssociationSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAssistantAssociationsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ServerSideEncryptionConfiguration = schema.new({
   id = id.from(_N, "ServerSideEncryptionConfiguration"),
   type = "structure",
   members = {
      kmsKeyId = schema.new({
         id = id.from(_N, "ServerSideEncryptionConfiguration", "kmsKeyId"),
         type = "string",
         name = "kmsKeyId",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateAssistantInput = schema.new({
   id = id.from(_N, "CreateAssistantRequest"),
   type = "structure",
   members = {
      clientToken = schema.new({
         id = id.from(_N, "CreateAssistantInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "CreateAssistantInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "CreateAssistantInput", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "CreateAssistantInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateAssistantInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      serverSideEncryptionConfiguration = schema.new({
         id = id.from(_N, "CreateAssistantInput", "serverSideEncryptionConfiguration"),
         type = "structure",
         name = "serverSideEncryptionConfiguration",
         target_id = id.from(_N, "ServerSideEncryptionConfiguration"),
         target = M.ServerSideEncryptionConfiguration,
      }),
   },
})

M.AssistantIntegrationConfiguration = schema.new({
   id = id.from(_N, "AssistantIntegrationConfiguration"),
   type = "structure",
   members = {
      topicIntegrationArn = schema.new({
         id = id.from(_N, "AssistantIntegrationConfiguration", "topicIntegrationArn"),
         type = "string",
         name = "topicIntegrationArn",
         target_id = prelude.String.id,
      }),
   },
})

M.AssistantData = schema.new({
   id = id.from(_N, "AssistantData"),
   type = "structure",
   members = {
      assistantId = schema.new({
         id = id.from(_N, "AssistantData", "assistantId"),
         type = "string",
         name = "assistantId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      assistantArn = schema.new({
         id = id.from(_N, "AssistantData", "assistantArn"),
         type = "string",
         name = "assistantArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "AssistantData", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "AssistantData", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "AssistantData", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "AssistantData", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "AssistantData", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      serverSideEncryptionConfiguration = schema.new({
         id = id.from(_N, "AssistantData", "serverSideEncryptionConfiguration"),
         type = "structure",
         name = "serverSideEncryptionConfiguration",
         target_id = id.from(_N, "ServerSideEncryptionConfiguration"),
         target = M.ServerSideEncryptionConfiguration,
      }),
      integrationConfiguration = schema.new({
         id = id.from(_N, "AssistantData", "integrationConfiguration"),
         type = "structure",
         name = "integrationConfiguration",
         target_id = id.from(_N, "AssistantIntegrationConfiguration"),
         target = M.AssistantIntegrationConfiguration,
      }),
   },
})

M.CreateAssistantOutput = schema.new({
   id = id.from(_N, "CreateAssistantResponse"),
   type = "structure",
   members = {
      assistant = schema.new({
         id = id.from(_N, "CreateAssistantOutput", "assistant"),
         type = "structure",
         name = "assistant",
         target_id = id.from(_N, "AssistantData"),
         target = M.AssistantData,
      }),
   },
})

M.DeleteAssistantInput = schema.new({
   id = id.from(_N, "DeleteAssistantRequest"),
   type = "structure",
   members = {
      assistantId = schema.new({
         id = id.from(_N, "DeleteAssistantInput", "assistantId"),
         type = "string",
         name = "assistantId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteAssistantOutput = schema.new({
   id = id.from(_N, "DeleteAssistantResponse"),
   type = "structure",
})

M.GetAssistantInput = schema.new({
   id = id.from(_N, "GetAssistantRequest"),
   type = "structure",
   members = {
      assistantId = schema.new({
         id = id.from(_N, "GetAssistantInput", "assistantId"),
         type = "string",
         name = "assistantId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetAssistantOutput = schema.new({
   id = id.from(_N, "GetAssistantResponse"),
   type = "structure",
   members = {
      assistant = schema.new({
         id = id.from(_N, "GetAssistantOutput", "assistant"),
         type = "structure",
         name = "assistant",
         target_id = id.from(_N, "AssistantData"),
         target = M.AssistantData,
      }),
   },
})

M.GetRecommendationsInput = schema.new({
   id = id.from(_N, "GetRecommendationsRequest"),
   type = "structure",
   members = {
      assistantId = schema.new({
         id = id.from(_N, "GetRecommendationsInput", "assistantId"),
         type = "string",
         name = "assistantId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      sessionId = schema.new({
         id = id.from(_N, "GetRecommendationsInput", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "GetRecommendationsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      waitTimeSeconds = schema.new({
         id = id.from(_N, "GetRecommendationsInput", "waitTimeSeconds"),
         type = "integer",
         name = "waitTimeSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.HTTP_QUERY] = { name = "waitTimeSeconds" },
         },
      }),
   },
})

M.ContentReference = schema.new({
   id = id.from(_N, "ContentReference"),
   type = "structure",
   members = {
      knowledgeBaseArn = schema.new({
         id = id.from(_N, "ContentReference", "knowledgeBaseArn"),
         type = "string",
         name = "knowledgeBaseArn",
         target_id = prelude.String.id,
      }),
      knowledgeBaseId = schema.new({
         id = id.from(_N, "ContentReference", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
      }),
      contentArn = schema.new({
         id = id.from(_N, "ContentReference", "contentArn"),
         type = "string",
         name = "contentArn",
         target_id = prelude.String.id,
      }),
      contentId = schema.new({
         id = id.from(_N, "ContentReference", "contentId"),
         type = "string",
         name = "contentId",
         target_id = prelude.String.id,
      }),
   },
})

M.Highlight = schema.new({
   id = id.from(_N, "Highlight"),
   type = "structure",
   members = {
      beginOffsetInclusive = schema.new({
         id = id.from(_N, "Highlight", "beginOffsetInclusive"),
         type = "integer",
         name = "beginOffsetInclusive",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      endOffsetExclusive = schema.new({
         id = id.from(_N, "Highlight", "endOffsetExclusive"),
         type = "integer",
         name = "endOffsetExclusive",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.DocumentText = schema.new({
   id = id.from(_N, "DocumentText"),
   type = "structure",
   members = {
      text = schema.new({
         id = id.from(_N, "DocumentText", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
      }),
      highlights = schema.new({
         id = id.from(_N, "DocumentText", "highlights"),
         type = "list",
         name = "highlights",
         target_id = prelude.Document.id,
         list_member = M.Highlight,
      }),
   },
})

M.Document = schema.new({
   id = id.from(_N, "Document"),
   type = "structure",
   members = {
      contentReference = schema.new({
         id = id.from(_N, "Document", "contentReference"),
         type = "structure",
         name = "contentReference",
         target_id = id.from(_N, "ContentReference"),
         target = M.ContentReference,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      title = schema.new({
         id = id.from(_N, "Document", "title"),
         type = "structure",
         name = "title",
         target_id = id.from(_N, "DocumentText"),
         target = M.DocumentText,
      }),
      excerpt = schema.new({
         id = id.from(_N, "Document", "excerpt"),
         type = "structure",
         name = "excerpt",
         target_id = id.from(_N, "DocumentText"),
         target = M.DocumentText,
      }),
   },
})

M.RecommendationData = schema.new({
   id = id.from(_N, "RecommendationData"),
   type = "structure",
   members = {
      recommendationId = schema.new({
         id = id.from(_N, "RecommendationData", "recommendationId"),
         type = "string",
         name = "recommendationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      document = schema.new({
         id = id.from(_N, "RecommendationData", "document"),
         type = "structure",
         name = "document",
         target_id = id.from(_N, "Document"),
         target = M.Document,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      relevanceScore = schema.new({
         id = id.from(_N, "RecommendationData", "relevanceScore"),
         type = "double",
         name = "relevanceScore",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      relevanceLevel = schema.new({
         id = id.from(_N, "RecommendationData", "relevanceLevel"),
         type = "string",
         name = "relevanceLevel",
         target_id = prelude.String.id,
      }),
      type = schema.new({
         id = id.from(_N, "RecommendationData", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
   },
})

M.QueryRecommendationTriggerData = schema.new({
   id = id.from(_N, "QueryRecommendationTriggerData"),
   type = "structure",
   members = {
      text = schema.new({
         id = id.from(_N, "QueryRecommendationTriggerData", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
      }),
   },
})

M.RecommendationTriggerData = schema.new({
   id = id.from(_N, "RecommendationTriggerData"),
   type = "union",
   members = {
      query = schema.new({
         id = id.from(_N, "RecommendationTriggerData", "query"),
         type = "structure",
         name = "query",
         target_id = id.from(_N, "QueryRecommendationTriggerData"),
         target = M.QueryRecommendationTriggerData,
      }),
   },
})

M.RecommendationTrigger = schema.new({
   id = id.from(_N, "RecommendationTrigger"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "RecommendationTrigger", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "RecommendationTrigger", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      source = schema.new({
         id = id.from(_N, "RecommendationTrigger", "source"),
         type = "string",
         name = "source",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      data = schema.new({
         id = id.from(_N, "RecommendationTrigger", "data"),
         type = "union",
         name = "data",
         target_id = id.from(_N, "RecommendationTriggerData"),
         target = M.RecommendationTriggerData,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      recommendationIds = schema.new({
         id = id.from(_N, "RecommendationTrigger", "recommendationIds"),
         type = "list",
         name = "recommendationIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetRecommendationsOutput = schema.new({
   id = id.from(_N, "GetRecommendationsResponse"),
   type = "structure",
   members = {
      recommendations = schema.new({
         id = id.from(_N, "GetRecommendationsOutput", "recommendations"),
         type = "list",
         name = "recommendations",
         target_id = prelude.Document.id,
         list_member = M.RecommendationData,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      triggers = schema.new({
         id = id.from(_N, "GetRecommendationsOutput", "triggers"),
         type = "list",
         name = "triggers",
         target_id = prelude.Document.id,
         list_member = M.RecommendationTrigger,
      }),
   },
})

M.ListAssistantsInput = schema.new({
   id = id.from(_N, "ListAssistantsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListAssistantsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListAssistantsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.AssistantSummary = schema.new({
   id = id.from(_N, "AssistantSummary"),
   type = "structure",
   members = {
      assistantId = schema.new({
         id = id.from(_N, "AssistantSummary", "assistantId"),
         type = "string",
         name = "assistantId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      assistantArn = schema.new({
         id = id.from(_N, "AssistantSummary", "assistantArn"),
         type = "string",
         name = "assistantArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "AssistantSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "AssistantSummary", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "AssistantSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "AssistantSummary", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "AssistantSummary", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      serverSideEncryptionConfiguration = schema.new({
         id = id.from(_N, "AssistantSummary", "serverSideEncryptionConfiguration"),
         type = "structure",
         name = "serverSideEncryptionConfiguration",
         target_id = id.from(_N, "ServerSideEncryptionConfiguration"),
         target = M.ServerSideEncryptionConfiguration,
      }),
      integrationConfiguration = schema.new({
         id = id.from(_N, "AssistantSummary", "integrationConfiguration"),
         type = "structure",
         name = "integrationConfiguration",
         target_id = id.from(_N, "AssistantIntegrationConfiguration"),
         target = M.AssistantIntegrationConfiguration,
      }),
   },
})

M.ListAssistantsOutput = schema.new({
   id = id.from(_N, "ListAssistantsResponse"),
   type = "structure",
   members = {
      assistantSummaries = schema.new({
         id = id.from(_N, "ListAssistantsOutput", "assistantSummaries"),
         type = "list",
         name = "assistantSummaries",
         target_id = prelude.Document.id,
         list_member = M.AssistantSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAssistantsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.NotifyRecommendationsReceivedInput = schema.new({
   id = id.from(_N, "NotifyRecommendationsReceivedRequest"),
   type = "structure",
   members = {
      assistantId = schema.new({
         id = id.from(_N, "NotifyRecommendationsReceivedInput", "assistantId"),
         type = "string",
         name = "assistantId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      sessionId = schema.new({
         id = id.from(_N, "NotifyRecommendationsReceivedInput", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      recommendationIds = schema.new({
         id = id.from(_N, "NotifyRecommendationsReceivedInput", "recommendationIds"),
         type = "list",
         name = "recommendationIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.NotifyRecommendationsReceivedError = schema.new({
   id = id.from(_N, "NotifyRecommendationsReceivedError"),
   type = "structure",
   members = {
      recommendationId = schema.new({
         id = id.from(_N, "NotifyRecommendationsReceivedError", "recommendationId"),
         type = "string",
         name = "recommendationId",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "NotifyRecommendationsReceivedError", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.NotifyRecommendationsReceivedOutput = schema.new({
   id = id.from(_N, "NotifyRecommendationsReceivedResponse"),
   type = "structure",
   members = {
      recommendationIds = schema.new({
         id = id.from(_N, "NotifyRecommendationsReceivedOutput", "recommendationIds"),
         type = "list",
         name = "recommendationIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      errors = schema.new({
         id = id.from(_N, "NotifyRecommendationsReceivedOutput", "errors"),
         type = "list",
         name = "errors",
         target_id = prelude.Document.id,
         list_member = M.NotifyRecommendationsReceivedError,
      }),
   },
})

M.QueryAssistantInput = schema.new({
   id = id.from(_N, "QueryAssistantRequest"),
   type = "structure",
   members = {
      assistantId = schema.new({
         id = id.from(_N, "QueryAssistantInput", "assistantId"),
         type = "string",
         name = "assistantId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      queryText = schema.new({
         id = id.from(_N, "QueryAssistantInput", "queryText"),
         type = "string",
         name = "queryText",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "QueryAssistantInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "QueryAssistantInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ResultData = schema.new({
   id = id.from(_N, "ResultData"),
   type = "structure",
   members = {
      resultId = schema.new({
         id = id.from(_N, "ResultData", "resultId"),
         type = "string",
         name = "resultId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      document = schema.new({
         id = id.from(_N, "ResultData", "document"),
         type = "structure",
         name = "document",
         target_id = id.from(_N, "Document"),
         target = M.Document,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      relevanceScore = schema.new({
         id = id.from(_N, "ResultData", "relevanceScore"),
         type = "double",
         name = "relevanceScore",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.QueryAssistantOutput = schema.new({
   id = id.from(_N, "QueryAssistantResponse"),
   type = "structure",
   members = {
      results = schema.new({
         id = id.from(_N, "QueryAssistantOutput", "results"),
         type = "list",
         name = "results",
         target_id = prelude.Document.id,
         list_member = M.ResultData,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "QueryAssistantOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.RequestTimeoutException = schema.new({
   id = id.from(_N, "RequestTimeoutException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "RequestTimeoutException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.Filter = schema.new({
   id = id.from(_N, "Filter"),
   type = "structure",
   members = {
      field = schema.new({
         id = id.from(_N, "Filter", "field"),
         type = "string",
         name = "field",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operator = schema.new({
         id = id.from(_N, "Filter", "operator"),
         type = "string",
         name = "operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "Filter", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SearchExpression = schema.new({
   id = id.from(_N, "SearchExpression"),
   type = "structure",
   members = {
      filters = schema.new({
         id = id.from(_N, "SearchExpression", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.Filter,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SearchSessionsInput = schema.new({
   id = id.from(_N, "SearchSessionsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "SearchSessionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "SearchSessionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      assistantId = schema.new({
         id = id.from(_N, "SearchSessionsInput", "assistantId"),
         type = "string",
         name = "assistantId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      searchExpression = schema.new({
         id = id.from(_N, "SearchSessionsInput", "searchExpression"),
         type = "structure",
         name = "searchExpression",
         target_id = id.from(_N, "SearchExpression"),
         target = M.SearchExpression,
         traits = {
            [traits.REQUIRED] = {},
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
      assistantId = schema.new({
         id = id.from(_N, "SessionSummary", "assistantId"),
         type = "string",
         name = "assistantId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      assistantArn = schema.new({
         id = id.from(_N, "SessionSummary", "assistantArn"),
         type = "string",
         name = "assistantArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SearchSessionsOutput = schema.new({
   id = id.from(_N, "SearchSessionsResponse"),
   type = "structure",
   members = {
      sessionSummaries = schema.new({
         id = id.from(_N, "SearchSessionsOutput", "sessionSummaries"),
         type = "list",
         name = "sessionSummaries",
         target_id = prelude.Document.id,
         list_member = M.SessionSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "SearchSessionsOutput", "nextToken"),
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
      clientToken = schema.new({
         id = id.from(_N, "CreateSessionInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      assistantId = schema.new({
         id = id.from(_N, "CreateSessionInput", "assistantId"),
         type = "string",
         name = "assistantId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "CreateSessionInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "CreateSessionInput", "description"),
         type = "string",
         name = "description",
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

M.SessionIntegrationConfiguration = schema.new({
   id = id.from(_N, "SessionIntegrationConfiguration"),
   type = "structure",
   members = {
      topicIntegrationArn = schema.new({
         id = id.from(_N, "SessionIntegrationConfiguration", "topicIntegrationArn"),
         type = "string",
         name = "topicIntegrationArn",
         target_id = prelude.String.id,
      }),
   },
})

M.SessionData = schema.new({
   id = id.from(_N, "SessionData"),
   type = "structure",
   members = {
      sessionArn = schema.new({
         id = id.from(_N, "SessionData", "sessionArn"),
         type = "string",
         name = "sessionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sessionId = schema.new({
         id = id.from(_N, "SessionData", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "SessionData", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "SessionData", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "SessionData", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      integrationConfiguration = schema.new({
         id = id.from(_N, "SessionData", "integrationConfiguration"),
         type = "structure",
         name = "integrationConfiguration",
         target_id = id.from(_N, "SessionIntegrationConfiguration"),
         target = M.SessionIntegrationConfiguration,
      }),
   },
})

M.CreateSessionOutput = schema.new({
   id = id.from(_N, "CreateSessionResponse"),
   type = "structure",
   members = {
      session = schema.new({
         id = id.from(_N, "CreateSessionOutput", "session"),
         type = "structure",
         name = "session",
         target_id = id.from(_N, "SessionData"),
         target = M.SessionData,
      }),
   },
})

M.GetSessionInput = schema.new({
   id = id.from(_N, "GetSessionRequest"),
   type = "structure",
   members = {
      assistantId = schema.new({
         id = id.from(_N, "GetSessionInput", "assistantId"),
         type = "string",
         name = "assistantId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      sessionId = schema.new({
         id = id.from(_N, "GetSessionInput", "sessionId"),
         type = "string",
         name = "sessionId",
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
      session = schema.new({
         id = id.from(_N, "GetSessionOutput", "session"),
         type = "structure",
         name = "session",
         target_id = id.from(_N, "SessionData"),
         target = M.SessionData,
      }),
   },
})

M.ConnectConfiguration = schema.new({
   id = id.from(_N, "ConnectConfiguration"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "ConnectConfiguration", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
      }),
   },
})

M.Configuration = schema.new({
   id = id.from(_N, "Configuration"),
   type = "union",
   members = {
      connectConfiguration = schema.new({
         id = id.from(_N, "Configuration", "connectConfiguration"),
         type = "structure",
         name = "connectConfiguration",
         target_id = id.from(_N, "ConnectConfiguration"),
         target = M.ConnectConfiguration,
      }),
   },
})

M.CreateContentInput = schema.new({
   id = id.from(_N, "CreateContentRequest"),
   type = "structure",
   members = {
      knowledgeBaseId = schema.new({
         id = id.from(_N, "CreateContentInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "CreateContentInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      title = schema.new({
         id = id.from(_N, "CreateContentInput", "title"),
         type = "string",
         name = "title",
         target_id = prelude.String.id,
      }),
      overrideLinkOutUri = schema.new({
         id = id.from(_N, "CreateContentInput", "overrideLinkOutUri"),
         type = "string",
         name = "overrideLinkOutUri",
         target_id = prelude.String.id,
      }),
      metadata = schema.new({
         id = id.from(_N, "CreateContentInput", "metadata"),
         type = "map",
         name = "metadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      uploadId = schema.new({
         id = id.from(_N, "CreateContentInput", "uploadId"),
         type = "string",
         name = "uploadId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      clientToken = schema.new({
         id = id.from(_N, "CreateContentInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateContentInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ContentData = schema.new({
   id = id.from(_N, "ContentData"),
   type = "structure",
   members = {
      contentArn = schema.new({
         id = id.from(_N, "ContentData", "contentArn"),
         type = "string",
         name = "contentArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      contentId = schema.new({
         id = id.from(_N, "ContentData", "contentId"),
         type = "string",
         name = "contentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      knowledgeBaseArn = schema.new({
         id = id.from(_N, "ContentData", "knowledgeBaseArn"),
         type = "string",
         name = "knowledgeBaseArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      knowledgeBaseId = schema.new({
         id = id.from(_N, "ContentData", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "ContentData", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      revisionId = schema.new({
         id = id.from(_N, "ContentData", "revisionId"),
         type = "string",
         name = "revisionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      title = schema.new({
         id = id.from(_N, "ContentData", "title"),
         type = "string",
         name = "title",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      contentType = schema.new({
         id = id.from(_N, "ContentData", "contentType"),
         type = "string",
         name = "contentType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "ContentData", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      metadata = schema.new({
         id = id.from(_N, "ContentData", "metadata"),
         type = "map",
         name = "metadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "ContentData", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      linkOutUri = schema.new({
         id = id.from(_N, "ContentData", "linkOutUri"),
         type = "string",
         name = "linkOutUri",
         target_id = prelude.String.id,
      }),
      url = schema.new({
         id = id.from(_N, "ContentData", "url"),
         type = "string",
         name = "url",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      urlExpiry = schema.new({
         id = id.from(_N, "ContentData", "urlExpiry"),
         type = "timestamp",
         name = "urlExpiry",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
         },
      }),
   },
})

M.CreateContentOutput = schema.new({
   id = id.from(_N, "CreateContentResponse"),
   type = "structure",
   members = {
      content = schema.new({
         id = id.from(_N, "CreateContentOutput", "content"),
         type = "structure",
         name = "content",
         target_id = id.from(_N, "ContentData"),
         target = M.ContentData,
      }),
   },
})

M.DeleteContentInput = schema.new({
   id = id.from(_N, "DeleteContentRequest"),
   type = "structure",
   members = {
      knowledgeBaseId = schema.new({
         id = id.from(_N, "DeleteContentInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      contentId = schema.new({
         id = id.from(_N, "DeleteContentInput", "contentId"),
         type = "string",
         name = "contentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteContentOutput = schema.new({
   id = id.from(_N, "DeleteContentResponse"),
   type = "structure",
})

M.GetContentInput = schema.new({
   id = id.from(_N, "GetContentRequest"),
   type = "structure",
   members = {
      contentId = schema.new({
         id = id.from(_N, "GetContentInput", "contentId"),
         type = "string",
         name = "contentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      knowledgeBaseId = schema.new({
         id = id.from(_N, "GetContentInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetContentOutput = schema.new({
   id = id.from(_N, "GetContentResponse"),
   type = "structure",
   members = {
      content = schema.new({
         id = id.from(_N, "GetContentOutput", "content"),
         type = "structure",
         name = "content",
         target_id = id.from(_N, "ContentData"),
         target = M.ContentData,
      }),
   },
})

M.GetContentSummaryInput = schema.new({
   id = id.from(_N, "GetContentSummaryRequest"),
   type = "structure",
   members = {
      contentId = schema.new({
         id = id.from(_N, "GetContentSummaryInput", "contentId"),
         type = "string",
         name = "contentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      knowledgeBaseId = schema.new({
         id = id.from(_N, "GetContentSummaryInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ContentSummary = schema.new({
   id = id.from(_N, "ContentSummary"),
   type = "structure",
   members = {
      contentArn = schema.new({
         id = id.from(_N, "ContentSummary", "contentArn"),
         type = "string",
         name = "contentArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      contentId = schema.new({
         id = id.from(_N, "ContentSummary", "contentId"),
         type = "string",
         name = "contentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      knowledgeBaseArn = schema.new({
         id = id.from(_N, "ContentSummary", "knowledgeBaseArn"),
         type = "string",
         name = "knowledgeBaseArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      knowledgeBaseId = schema.new({
         id = id.from(_N, "ContentSummary", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "ContentSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      revisionId = schema.new({
         id = id.from(_N, "ContentSummary", "revisionId"),
         type = "string",
         name = "revisionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      title = schema.new({
         id = id.from(_N, "ContentSummary", "title"),
         type = "string",
         name = "title",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      contentType = schema.new({
         id = id.from(_N, "ContentSummary", "contentType"),
         type = "string",
         name = "contentType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "ContentSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      metadata = schema.new({
         id = id.from(_N, "ContentSummary", "metadata"),
         type = "map",
         name = "metadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "ContentSummary", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.GetContentSummaryOutput = schema.new({
   id = id.from(_N, "GetContentSummaryResponse"),
   type = "structure",
   members = {
      contentSummary = schema.new({
         id = id.from(_N, "GetContentSummaryOutput", "contentSummary"),
         type = "structure",
         name = "contentSummary",
         target_id = id.from(_N, "ContentSummary"),
         target = M.ContentSummary,
      }),
   },
})

M.ListContentsInput = schema.new({
   id = id.from(_N, "ListContentsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListContentsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListContentsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      knowledgeBaseId = schema.new({
         id = id.from(_N, "ListContentsInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ListContentsOutput = schema.new({
   id = id.from(_N, "ListContentsResponse"),
   type = "structure",
   members = {
      contentSummaries = schema.new({
         id = id.from(_N, "ListContentsOutput", "contentSummaries"),
         type = "list",
         name = "contentSummaries",
         target_id = prelude.Document.id,
         list_member = M.ContentSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListContentsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.PreconditionFailedException = schema.new({
   id = id.from(_N, "PreconditionFailedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "PreconditionFailedException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateContentInput = schema.new({
   id = id.from(_N, "UpdateContentRequest"),
   type = "structure",
   members = {
      knowledgeBaseId = schema.new({
         id = id.from(_N, "UpdateContentInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      contentId = schema.new({
         id = id.from(_N, "UpdateContentInput", "contentId"),
         type = "string",
         name = "contentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      revisionId = schema.new({
         id = id.from(_N, "UpdateContentInput", "revisionId"),
         type = "string",
         name = "revisionId",
         target_id = prelude.String.id,
      }),
      title = schema.new({
         id = id.from(_N, "UpdateContentInput", "title"),
         type = "string",
         name = "title",
         target_id = prelude.String.id,
      }),
      overrideLinkOutUri = schema.new({
         id = id.from(_N, "UpdateContentInput", "overrideLinkOutUri"),
         type = "string",
         name = "overrideLinkOutUri",
         target_id = prelude.String.id,
      }),
      removeOverrideLinkOutUri = schema.new({
         id = id.from(_N, "UpdateContentInput", "removeOverrideLinkOutUri"),
         type = "boolean",
         name = "removeOverrideLinkOutUri",
         target_id = prelude.Boolean.id,
      }),
      metadata = schema.new({
         id = id.from(_N, "UpdateContentInput", "metadata"),
         type = "map",
         name = "metadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      uploadId = schema.new({
         id = id.from(_N, "UpdateContentInput", "uploadId"),
         type = "string",
         name = "uploadId",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateContentOutput = schema.new({
   id = id.from(_N, "UpdateContentResponse"),
   type = "structure",
   members = {
      content = schema.new({
         id = id.from(_N, "UpdateContentOutput", "content"),
         type = "structure",
         name = "content",
         target_id = id.from(_N, "ContentData"),
         target = M.ContentData,
      }),
   },
})

M.RenderingConfiguration = schema.new({
   id = id.from(_N, "RenderingConfiguration"),
   type = "structure",
   members = {
      templateUri = schema.new({
         id = id.from(_N, "RenderingConfiguration", "templateUri"),
         type = "string",
         name = "templateUri",
         target_id = prelude.String.id,
      }),
   },
})

M.SourceConfiguration = schema.new({
   id = id.from(_N, "SourceConfiguration"),
   type = "union",
   members = {
      appIntegrations = schema.new({
         id = id.from(_N, "SourceConfiguration", "appIntegrations"),
         type = "structure",
         name = "appIntegrations",
         target_id = id.from(_N, "AppIntegrationsConfiguration"),
         target = M.AppIntegrationsConfiguration,
      }),
   },
})

M.CreateKnowledgeBaseInput = schema.new({
   id = id.from(_N, "CreateKnowledgeBaseRequest"),
   type = "structure",
   members = {
      clientToken = schema.new({
         id = id.from(_N, "CreateKnowledgeBaseInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "CreateKnowledgeBaseInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      knowledgeBaseType = schema.new({
         id = id.from(_N, "CreateKnowledgeBaseInput", "knowledgeBaseType"),
         type = "string",
         name = "knowledgeBaseType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sourceConfiguration = schema.new({
         id = id.from(_N, "CreateKnowledgeBaseInput", "sourceConfiguration"),
         type = "union",
         name = "sourceConfiguration",
         target_id = id.from(_N, "SourceConfiguration"),
         target = M.SourceConfiguration,
      }),
      renderingConfiguration = schema.new({
         id = id.from(_N, "CreateKnowledgeBaseInput", "renderingConfiguration"),
         type = "structure",
         name = "renderingConfiguration",
         target_id = id.from(_N, "RenderingConfiguration"),
         target = M.RenderingConfiguration,
      }),
      serverSideEncryptionConfiguration = schema.new({
         id = id.from(_N, "CreateKnowledgeBaseInput", "serverSideEncryptionConfiguration"),
         type = "structure",
         name = "serverSideEncryptionConfiguration",
         target_id = id.from(_N, "ServerSideEncryptionConfiguration"),
         target = M.ServerSideEncryptionConfiguration,
      }),
      description = schema.new({
         id = id.from(_N, "CreateKnowledgeBaseInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateKnowledgeBaseInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.KnowledgeBaseData = schema.new({
   id = id.from(_N, "KnowledgeBaseData"),
   type = "structure",
   members = {
      knowledgeBaseId = schema.new({
         id = id.from(_N, "KnowledgeBaseData", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      knowledgeBaseArn = schema.new({
         id = id.from(_N, "KnowledgeBaseData", "knowledgeBaseArn"),
         type = "string",
         name = "knowledgeBaseArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "KnowledgeBaseData", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      knowledgeBaseType = schema.new({
         id = id.from(_N, "KnowledgeBaseData", "knowledgeBaseType"),
         type = "string",
         name = "knowledgeBaseType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "KnowledgeBaseData", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      lastContentModificationTime = schema.new({
         id = id.from(_N, "KnowledgeBaseData", "lastContentModificationTime"),
         type = "timestamp",
         name = "lastContentModificationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
         },
      }),
      sourceConfiguration = schema.new({
         id = id.from(_N, "KnowledgeBaseData", "sourceConfiguration"),
         type = "union",
         name = "sourceConfiguration",
         target_id = id.from(_N, "SourceConfiguration"),
         target = M.SourceConfiguration,
      }),
      renderingConfiguration = schema.new({
         id = id.from(_N, "KnowledgeBaseData", "renderingConfiguration"),
         type = "structure",
         name = "renderingConfiguration",
         target_id = id.from(_N, "RenderingConfiguration"),
         target = M.RenderingConfiguration,
      }),
      serverSideEncryptionConfiguration = schema.new({
         id = id.from(_N, "KnowledgeBaseData", "serverSideEncryptionConfiguration"),
         type = "structure",
         name = "serverSideEncryptionConfiguration",
         target_id = id.from(_N, "ServerSideEncryptionConfiguration"),
         target = M.ServerSideEncryptionConfiguration,
      }),
      description = schema.new({
         id = id.from(_N, "KnowledgeBaseData", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "KnowledgeBaseData", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateKnowledgeBaseOutput = schema.new({
   id = id.from(_N, "CreateKnowledgeBaseResponse"),
   type = "structure",
   members = {
      knowledgeBase = schema.new({
         id = id.from(_N, "CreateKnowledgeBaseOutput", "knowledgeBase"),
         type = "structure",
         name = "knowledgeBase",
         target_id = id.from(_N, "KnowledgeBaseData"),
         target = M.KnowledgeBaseData,
      }),
   },
})

M.QuickResponseDataProvider = schema.new({
   id = id.from(_N, "QuickResponseDataProvider"),
   type = "union",
   members = {
      content = schema.new({
         id = id.from(_N, "QuickResponseDataProvider", "content"),
         type = "string",
         name = "content",
         target_id = prelude.String.id,
      }),
   },
})

M.GroupingConfiguration = schema.new({
   id = id.from(_N, "GroupingConfiguration"),
   type = "structure",
   members = {
      criteria = schema.new({
         id = id.from(_N, "GroupingConfiguration", "criteria"),
         type = "string",
         name = "criteria",
         target_id = prelude.String.id,
      }),
      values = schema.new({
         id = id.from(_N, "GroupingConfiguration", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.CreateQuickResponseInput = schema.new({
   id = id.from(_N, "CreateQuickResponseRequest"),
   type = "structure",
   members = {
      knowledgeBaseId = schema.new({
         id = id.from(_N, "CreateQuickResponseInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "CreateQuickResponseInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      content = schema.new({
         id = id.from(_N, "CreateQuickResponseInput", "content"),
         type = "union",
         name = "content",
         target_id = id.from(_N, "QuickResponseDataProvider"),
         target = M.QuickResponseDataProvider,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      contentType = schema.new({
         id = id.from(_N, "CreateQuickResponseInput", "contentType"),
         type = "string",
         name = "contentType",
         target_id = prelude.String.id,
      }),
      groupingConfiguration = schema.new({
         id = id.from(_N, "CreateQuickResponseInput", "groupingConfiguration"),
         type = "structure",
         name = "groupingConfiguration",
         target_id = id.from(_N, "GroupingConfiguration"),
         target = M.GroupingConfiguration,
      }),
      description = schema.new({
         id = id.from(_N, "CreateQuickResponseInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      shortcutKey = schema.new({
         id = id.from(_N, "CreateQuickResponseInput", "shortcutKey"),
         type = "string",
         name = "shortcutKey",
         target_id = prelude.String.id,
      }),
      isActive = schema.new({
         id = id.from(_N, "CreateQuickResponseInput", "isActive"),
         type = "boolean",
         name = "isActive",
         target_id = prelude.Boolean.id,
      }),
      channels = schema.new({
         id = id.from(_N, "CreateQuickResponseInput", "channels"),
         type = "list",
         name = "channels",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      language = schema.new({
         id = id.from(_N, "CreateQuickResponseInput", "language"),
         type = "string",
         name = "language",
         target_id = prelude.String.id,
      }),
      clientToken = schema.new({
         id = id.from(_N, "CreateQuickResponseInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateQuickResponseInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.QuickResponseContentProvider = schema.new({
   id = id.from(_N, "QuickResponseContentProvider"),
   type = "union",
   members = {
      content = schema.new({
         id = id.from(_N, "QuickResponseContentProvider", "content"),
         type = "string",
         name = "content",
         target_id = prelude.String.id,
      }),
   },
})

M.QuickResponseContents = schema.new({
   id = id.from(_N, "QuickResponseContents"),
   type = "structure",
   members = {
      plainText = schema.new({
         id = id.from(_N, "QuickResponseContents", "plainText"),
         type = "union",
         name = "plainText",
         target_id = id.from(_N, "QuickResponseContentProvider"),
         target = M.QuickResponseContentProvider,
      }),
      markdown = schema.new({
         id = id.from(_N, "QuickResponseContents", "markdown"),
         type = "union",
         name = "markdown",
         target_id = id.from(_N, "QuickResponseContentProvider"),
         target = M.QuickResponseContentProvider,
      }),
   },
})

M.QuickResponseData = schema.new({
   id = id.from(_N, "QuickResponseData"),
   type = "structure",
   members = {
      quickResponseArn = schema.new({
         id = id.from(_N, "QuickResponseData", "quickResponseArn"),
         type = "string",
         name = "quickResponseArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      quickResponseId = schema.new({
         id = id.from(_N, "QuickResponseData", "quickResponseId"),
         type = "string",
         name = "quickResponseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      knowledgeBaseArn = schema.new({
         id = id.from(_N, "QuickResponseData", "knowledgeBaseArn"),
         type = "string",
         name = "knowledgeBaseArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      knowledgeBaseId = schema.new({
         id = id.from(_N, "QuickResponseData", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "QuickResponseData", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      contentType = schema.new({
         id = id.from(_N, "QuickResponseData", "contentType"),
         type = "string",
         name = "contentType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "QuickResponseData", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdTime = schema.new({
         id = id.from(_N, "QuickResponseData", "createdTime"),
         type = "timestamp",
         name = "createdTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
         },
      }),
      lastModifiedTime = schema.new({
         id = id.from(_N, "QuickResponseData", "lastModifiedTime"),
         type = "timestamp",
         name = "lastModifiedTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
         },
      }),
      contents = schema.new({
         id = id.from(_N, "QuickResponseData", "contents"),
         type = "structure",
         name = "contents",
         target_id = id.from(_N, "QuickResponseContents"),
         target = M.QuickResponseContents,
      }),
      description = schema.new({
         id = id.from(_N, "QuickResponseData", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      groupingConfiguration = schema.new({
         id = id.from(_N, "QuickResponseData", "groupingConfiguration"),
         type = "structure",
         name = "groupingConfiguration",
         target_id = id.from(_N, "GroupingConfiguration"),
         target = M.GroupingConfiguration,
      }),
      shortcutKey = schema.new({
         id = id.from(_N, "QuickResponseData", "shortcutKey"),
         type = "string",
         name = "shortcutKey",
         target_id = prelude.String.id,
      }),
      lastModifiedBy = schema.new({
         id = id.from(_N, "QuickResponseData", "lastModifiedBy"),
         type = "string",
         name = "lastModifiedBy",
         target_id = prelude.String.id,
      }),
      isActive = schema.new({
         id = id.from(_N, "QuickResponseData", "isActive"),
         type = "boolean",
         name = "isActive",
         target_id = prelude.Boolean.id,
      }),
      channels = schema.new({
         id = id.from(_N, "QuickResponseData", "channels"),
         type = "list",
         name = "channels",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      language = schema.new({
         id = id.from(_N, "QuickResponseData", "language"),
         type = "string",
         name = "language",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "QuickResponseData", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateQuickResponseOutput = schema.new({
   id = id.from(_N, "CreateQuickResponseResponse"),
   type = "structure",
   members = {
      quickResponse = schema.new({
         id = id.from(_N, "CreateQuickResponseOutput", "quickResponse"),
         type = "structure",
         name = "quickResponse",
         target_id = id.from(_N, "QuickResponseData"),
         target = M.QuickResponseData,
      }),
   },
})

M.DeleteImportJobInput = schema.new({
   id = id.from(_N, "DeleteImportJobRequest"),
   type = "structure",
   members = {
      knowledgeBaseId = schema.new({
         id = id.from(_N, "DeleteImportJobInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      importJobId = schema.new({
         id = id.from(_N, "DeleteImportJobInput", "importJobId"),
         type = "string",
         name = "importJobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteImportJobOutput = schema.new({
   id = id.from(_N, "DeleteImportJobResponse"),
   type = "structure",
})

M.DeleteKnowledgeBaseInput = schema.new({
   id = id.from(_N, "DeleteKnowledgeBaseRequest"),
   type = "structure",
   members = {
      knowledgeBaseId = schema.new({
         id = id.from(_N, "DeleteKnowledgeBaseInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteKnowledgeBaseOutput = schema.new({
   id = id.from(_N, "DeleteKnowledgeBaseResponse"),
   type = "structure",
})

M.DeleteQuickResponseInput = schema.new({
   id = id.from(_N, "DeleteQuickResponseRequest"),
   type = "structure",
   members = {
      knowledgeBaseId = schema.new({
         id = id.from(_N, "DeleteQuickResponseInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      quickResponseId = schema.new({
         id = id.from(_N, "DeleteQuickResponseInput", "quickResponseId"),
         type = "string",
         name = "quickResponseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteQuickResponseOutput = schema.new({
   id = id.from(_N, "DeleteQuickResponseResponse"),
   type = "structure",
})

M.ExternalSourceConfiguration = schema.new({
   id = id.from(_N, "ExternalSourceConfiguration"),
   type = "structure",
   members = {
      source = schema.new({
         id = id.from(_N, "ExternalSourceConfiguration", "source"),
         type = "string",
         name = "source",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      configuration = schema.new({
         id = id.from(_N, "ExternalSourceConfiguration", "configuration"),
         type = "union",
         name = "configuration",
         target_id = id.from(_N, "Configuration"),
         target = M.Configuration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetImportJobInput = schema.new({
   id = id.from(_N, "GetImportJobRequest"),
   type = "structure",
   members = {
      importJobId = schema.new({
         id = id.from(_N, "GetImportJobInput", "importJobId"),
         type = "string",
         name = "importJobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      knowledgeBaseId = schema.new({
         id = id.from(_N, "GetImportJobInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ImportJobData = schema.new({
   id = id.from(_N, "ImportJobData"),
   type = "structure",
   members = {
      importJobId = schema.new({
         id = id.from(_N, "ImportJobData", "importJobId"),
         type = "string",
         name = "importJobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      knowledgeBaseId = schema.new({
         id = id.from(_N, "ImportJobData", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      uploadId = schema.new({
         id = id.from(_N, "ImportJobData", "uploadId"),
         type = "string",
         name = "uploadId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      knowledgeBaseArn = schema.new({
         id = id.from(_N, "ImportJobData", "knowledgeBaseArn"),
         type = "string",
         name = "knowledgeBaseArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      importJobType = schema.new({
         id = id.from(_N, "ImportJobData", "importJobType"),
         type = "string",
         name = "importJobType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "ImportJobData", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      url = schema.new({
         id = id.from(_N, "ImportJobData", "url"),
         type = "string",
         name = "url",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      failedRecordReport = schema.new({
         id = id.from(_N, "ImportJobData", "failedRecordReport"),
         type = "string",
         name = "failedRecordReport",
         target_id = prelude.String.id,
      }),
      urlExpiry = schema.new({
         id = id.from(_N, "ImportJobData", "urlExpiry"),
         type = "timestamp",
         name = "urlExpiry",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
         },
      }),
      createdTime = schema.new({
         id = id.from(_N, "ImportJobData", "createdTime"),
         type = "timestamp",
         name = "createdTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
         },
      }),
      lastModifiedTime = schema.new({
         id = id.from(_N, "ImportJobData", "lastModifiedTime"),
         type = "timestamp",
         name = "lastModifiedTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
         },
      }),
      metadata = schema.new({
         id = id.from(_N, "ImportJobData", "metadata"),
         type = "map",
         name = "metadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      externalSourceConfiguration = schema.new({
         id = id.from(_N, "ImportJobData", "externalSourceConfiguration"),
         type = "structure",
         name = "externalSourceConfiguration",
         target_id = id.from(_N, "ExternalSourceConfiguration"),
         target = M.ExternalSourceConfiguration,
      }),
   },
})

M.GetImportJobOutput = schema.new({
   id = id.from(_N, "GetImportJobResponse"),
   type = "structure",
   members = {
      importJob = schema.new({
         id = id.from(_N, "GetImportJobOutput", "importJob"),
         type = "structure",
         name = "importJob",
         target_id = id.from(_N, "ImportJobData"),
         target = M.ImportJobData,
      }),
   },
})

M.GetKnowledgeBaseInput = schema.new({
   id = id.from(_N, "GetKnowledgeBaseRequest"),
   type = "structure",
   members = {
      knowledgeBaseId = schema.new({
         id = id.from(_N, "GetKnowledgeBaseInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetKnowledgeBaseOutput = schema.new({
   id = id.from(_N, "GetKnowledgeBaseResponse"),
   type = "structure",
   members = {
      knowledgeBase = schema.new({
         id = id.from(_N, "GetKnowledgeBaseOutput", "knowledgeBase"),
         type = "structure",
         name = "knowledgeBase",
         target_id = id.from(_N, "KnowledgeBaseData"),
         target = M.KnowledgeBaseData,
      }),
   },
})

M.GetQuickResponseInput = schema.new({
   id = id.from(_N, "GetQuickResponseRequest"),
   type = "structure",
   members = {
      quickResponseId = schema.new({
         id = id.from(_N, "GetQuickResponseInput", "quickResponseId"),
         type = "string",
         name = "quickResponseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      knowledgeBaseId = schema.new({
         id = id.from(_N, "GetQuickResponseInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetQuickResponseOutput = schema.new({
   id = id.from(_N, "GetQuickResponseResponse"),
   type = "structure",
   members = {
      quickResponse = schema.new({
         id = id.from(_N, "GetQuickResponseOutput", "quickResponse"),
         type = "structure",
         name = "quickResponse",
         target_id = id.from(_N, "QuickResponseData"),
         target = M.QuickResponseData,
      }),
   },
})

M.ImportJobSummary = schema.new({
   id = id.from(_N, "ImportJobSummary"),
   type = "structure",
   members = {
      importJobId = schema.new({
         id = id.from(_N, "ImportJobSummary", "importJobId"),
         type = "string",
         name = "importJobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      knowledgeBaseId = schema.new({
         id = id.from(_N, "ImportJobSummary", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      uploadId = schema.new({
         id = id.from(_N, "ImportJobSummary", "uploadId"),
         type = "string",
         name = "uploadId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      knowledgeBaseArn = schema.new({
         id = id.from(_N, "ImportJobSummary", "knowledgeBaseArn"),
         type = "string",
         name = "knowledgeBaseArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      importJobType = schema.new({
         id = id.from(_N, "ImportJobSummary", "importJobType"),
         type = "string",
         name = "importJobType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "ImportJobSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdTime = schema.new({
         id = id.from(_N, "ImportJobSummary", "createdTime"),
         type = "timestamp",
         name = "createdTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
         },
      }),
      lastModifiedTime = schema.new({
         id = id.from(_N, "ImportJobSummary", "lastModifiedTime"),
         type = "timestamp",
         name = "lastModifiedTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
         },
      }),
      metadata = schema.new({
         id = id.from(_N, "ImportJobSummary", "metadata"),
         type = "map",
         name = "metadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      externalSourceConfiguration = schema.new({
         id = id.from(_N, "ImportJobSummary", "externalSourceConfiguration"),
         type = "structure",
         name = "externalSourceConfiguration",
         target_id = id.from(_N, "ExternalSourceConfiguration"),
         target = M.ExternalSourceConfiguration,
      }),
   },
})

M.ListImportJobsInput = schema.new({
   id = id.from(_N, "ListImportJobsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListImportJobsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListImportJobsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      knowledgeBaseId = schema.new({
         id = id.from(_N, "ListImportJobsInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ListImportJobsOutput = schema.new({
   id = id.from(_N, "ListImportJobsResponse"),
   type = "structure",
   members = {
      importJobSummaries = schema.new({
         id = id.from(_N, "ListImportJobsOutput", "importJobSummaries"),
         type = "list",
         name = "importJobSummaries",
         target_id = prelude.Document.id,
         list_member = M.ImportJobSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListImportJobsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListKnowledgeBasesInput = schema.new({
   id = id.from(_N, "ListKnowledgeBasesRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListKnowledgeBasesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListKnowledgeBasesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.KnowledgeBaseSummary = schema.new({
   id = id.from(_N, "KnowledgeBaseSummary"),
   type = "structure",
   members = {
      knowledgeBaseId = schema.new({
         id = id.from(_N, "KnowledgeBaseSummary", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      knowledgeBaseArn = schema.new({
         id = id.from(_N, "KnowledgeBaseSummary", "knowledgeBaseArn"),
         type = "string",
         name = "knowledgeBaseArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "KnowledgeBaseSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      knowledgeBaseType = schema.new({
         id = id.from(_N, "KnowledgeBaseSummary", "knowledgeBaseType"),
         type = "string",
         name = "knowledgeBaseType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "KnowledgeBaseSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sourceConfiguration = schema.new({
         id = id.from(_N, "KnowledgeBaseSummary", "sourceConfiguration"),
         type = "union",
         name = "sourceConfiguration",
         target_id = id.from(_N, "SourceConfiguration"),
         target = M.SourceConfiguration,
      }),
      renderingConfiguration = schema.new({
         id = id.from(_N, "KnowledgeBaseSummary", "renderingConfiguration"),
         type = "structure",
         name = "renderingConfiguration",
         target_id = id.from(_N, "RenderingConfiguration"),
         target = M.RenderingConfiguration,
      }),
      serverSideEncryptionConfiguration = schema.new({
         id = id.from(_N, "KnowledgeBaseSummary", "serverSideEncryptionConfiguration"),
         type = "structure",
         name = "serverSideEncryptionConfiguration",
         target_id = id.from(_N, "ServerSideEncryptionConfiguration"),
         target = M.ServerSideEncryptionConfiguration,
      }),
      description = schema.new({
         id = id.from(_N, "KnowledgeBaseSummary", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "KnowledgeBaseSummary", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ListKnowledgeBasesOutput = schema.new({
   id = id.from(_N, "ListKnowledgeBasesResponse"),
   type = "structure",
   members = {
      knowledgeBaseSummaries = schema.new({
         id = id.from(_N, "ListKnowledgeBasesOutput", "knowledgeBaseSummaries"),
         type = "list",
         name = "knowledgeBaseSummaries",
         target_id = prelude.Document.id,
         list_member = M.KnowledgeBaseSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListKnowledgeBasesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListQuickResponsesInput = schema.new({
   id = id.from(_N, "ListQuickResponsesRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListQuickResponsesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListQuickResponsesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      knowledgeBaseId = schema.new({
         id = id.from(_N, "ListQuickResponsesInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.QuickResponseSummary = schema.new({
   id = id.from(_N, "QuickResponseSummary"),
   type = "structure",
   members = {
      quickResponseArn = schema.new({
         id = id.from(_N, "QuickResponseSummary", "quickResponseArn"),
         type = "string",
         name = "quickResponseArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      quickResponseId = schema.new({
         id = id.from(_N, "QuickResponseSummary", "quickResponseId"),
         type = "string",
         name = "quickResponseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      knowledgeBaseArn = schema.new({
         id = id.from(_N, "QuickResponseSummary", "knowledgeBaseArn"),
         type = "string",
         name = "knowledgeBaseArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      knowledgeBaseId = schema.new({
         id = id.from(_N, "QuickResponseSummary", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "QuickResponseSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      contentType = schema.new({
         id = id.from(_N, "QuickResponseSummary", "contentType"),
         type = "string",
         name = "contentType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "QuickResponseSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdTime = schema.new({
         id = id.from(_N, "QuickResponseSummary", "createdTime"),
         type = "timestamp",
         name = "createdTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
         },
      }),
      lastModifiedTime = schema.new({
         id = id.from(_N, "QuickResponseSummary", "lastModifiedTime"),
         type = "timestamp",
         name = "lastModifiedTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
         },
      }),
      description = schema.new({
         id = id.from(_N, "QuickResponseSummary", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      lastModifiedBy = schema.new({
         id = id.from(_N, "QuickResponseSummary", "lastModifiedBy"),
         type = "string",
         name = "lastModifiedBy",
         target_id = prelude.String.id,
      }),
      isActive = schema.new({
         id = id.from(_N, "QuickResponseSummary", "isActive"),
         type = "boolean",
         name = "isActive",
         target_id = prelude.Boolean.id,
      }),
      channels = schema.new({
         id = id.from(_N, "QuickResponseSummary", "channels"),
         type = "list",
         name = "channels",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      tags = schema.new({
         id = id.from(_N, "QuickResponseSummary", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ListQuickResponsesOutput = schema.new({
   id = id.from(_N, "ListQuickResponsesResponse"),
   type = "structure",
   members = {
      quickResponseSummaries = schema.new({
         id = id.from(_N, "ListQuickResponsesOutput", "quickResponseSummaries"),
         type = "list",
         name = "quickResponseSummaries",
         target_id = prelude.Document.id,
         list_member = M.QuickResponseSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListQuickResponsesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateQuickResponseInput = schema.new({
   id = id.from(_N, "UpdateQuickResponseRequest"),
   type = "structure",
   members = {
      knowledgeBaseId = schema.new({
         id = id.from(_N, "UpdateQuickResponseInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      quickResponseId = schema.new({
         id = id.from(_N, "UpdateQuickResponseInput", "quickResponseId"),
         type = "string",
         name = "quickResponseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "UpdateQuickResponseInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      content = schema.new({
         id = id.from(_N, "UpdateQuickResponseInput", "content"),
         type = "union",
         name = "content",
         target_id = id.from(_N, "QuickResponseDataProvider"),
         target = M.QuickResponseDataProvider,
      }),
      contentType = schema.new({
         id = id.from(_N, "UpdateQuickResponseInput", "contentType"),
         type = "string",
         name = "contentType",
         target_id = prelude.String.id,
      }),
      groupingConfiguration = schema.new({
         id = id.from(_N, "UpdateQuickResponseInput", "groupingConfiguration"),
         type = "structure",
         name = "groupingConfiguration",
         target_id = id.from(_N, "GroupingConfiguration"),
         target = M.GroupingConfiguration,
      }),
      removeGroupingConfiguration = schema.new({
         id = id.from(_N, "UpdateQuickResponseInput", "removeGroupingConfiguration"),
         type = "boolean",
         name = "removeGroupingConfiguration",
         target_id = prelude.Boolean.id,
      }),
      description = schema.new({
         id = id.from(_N, "UpdateQuickResponseInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      removeDescription = schema.new({
         id = id.from(_N, "UpdateQuickResponseInput", "removeDescription"),
         type = "boolean",
         name = "removeDescription",
         target_id = prelude.Boolean.id,
      }),
      shortcutKey = schema.new({
         id = id.from(_N, "UpdateQuickResponseInput", "shortcutKey"),
         type = "string",
         name = "shortcutKey",
         target_id = prelude.String.id,
      }),
      removeShortcutKey = schema.new({
         id = id.from(_N, "UpdateQuickResponseInput", "removeShortcutKey"),
         type = "boolean",
         name = "removeShortcutKey",
         target_id = prelude.Boolean.id,
      }),
      isActive = schema.new({
         id = id.from(_N, "UpdateQuickResponseInput", "isActive"),
         type = "boolean",
         name = "isActive",
         target_id = prelude.Boolean.id,
      }),
      channels = schema.new({
         id = id.from(_N, "UpdateQuickResponseInput", "channels"),
         type = "list",
         name = "channels",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      language = schema.new({
         id = id.from(_N, "UpdateQuickResponseInput", "language"),
         type = "string",
         name = "language",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateQuickResponseOutput = schema.new({
   id = id.from(_N, "UpdateQuickResponseResponse"),
   type = "structure",
   members = {
      quickResponse = schema.new({
         id = id.from(_N, "UpdateQuickResponseOutput", "quickResponse"),
         type = "structure",
         name = "quickResponse",
         target_id = id.from(_N, "QuickResponseData"),
         target = M.QuickResponseData,
      }),
   },
})

M.RemoveKnowledgeBaseTemplateUriInput = schema.new({
   id = id.from(_N, "RemoveKnowledgeBaseTemplateUriRequest"),
   type = "structure",
   members = {
      knowledgeBaseId = schema.new({
         id = id.from(_N, "RemoveKnowledgeBaseTemplateUriInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.RemoveKnowledgeBaseTemplateUriOutput = schema.new({
   id = id.from(_N, "RemoveKnowledgeBaseTemplateUriResponse"),
   type = "structure",
})

M.SearchContentInput = schema.new({
   id = id.from(_N, "SearchContentRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "SearchContentInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "SearchContentInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      knowledgeBaseId = schema.new({
         id = id.from(_N, "SearchContentInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      searchExpression = schema.new({
         id = id.from(_N, "SearchContentInput", "searchExpression"),
         type = "structure",
         name = "searchExpression",
         target_id = id.from(_N, "SearchExpression"),
         target = M.SearchExpression,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SearchContentOutput = schema.new({
   id = id.from(_N, "SearchContentResponse"),
   type = "structure",
   members = {
      contentSummaries = schema.new({
         id = id.from(_N, "SearchContentOutput", "contentSummaries"),
         type = "list",
         name = "contentSummaries",
         target_id = prelude.Document.id,
         list_member = M.ContentSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "SearchContentOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.QuickResponseFilterField = schema.new({
   id = id.from(_N, "QuickResponseFilterField"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "QuickResponseFilterField", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      values = schema.new({
         id = id.from(_N, "QuickResponseFilterField", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      operator = schema.new({
         id = id.from(_N, "QuickResponseFilterField", "operator"),
         type = "string",
         name = "operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      includeNoExistence = schema.new({
         id = id.from(_N, "QuickResponseFilterField", "includeNoExistence"),
         type = "boolean",
         name = "includeNoExistence",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.QuickResponseOrderField = schema.new({
   id = id.from(_N, "QuickResponseOrderField"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "QuickResponseOrderField", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      order = schema.new({
         id = id.from(_N, "QuickResponseOrderField", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
      }),
   },
})

M.QuickResponseQueryField = schema.new({
   id = id.from(_N, "QuickResponseQueryField"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "QuickResponseQueryField", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      values = schema.new({
         id = id.from(_N, "QuickResponseQueryField", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operator = schema.new({
         id = id.from(_N, "QuickResponseQueryField", "operator"),
         type = "string",
         name = "operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      allowFuzziness = schema.new({
         id = id.from(_N, "QuickResponseQueryField", "allowFuzziness"),
         type = "boolean",
         name = "allowFuzziness",
         target_id = prelude.Boolean.id,
      }),
      priority = schema.new({
         id = id.from(_N, "QuickResponseQueryField", "priority"),
         type = "string",
         name = "priority",
         target_id = prelude.String.id,
      }),
   },
})

M.QuickResponseSearchExpression = schema.new({
   id = id.from(_N, "QuickResponseSearchExpression"),
   type = "structure",
   members = {
      queries = schema.new({
         id = id.from(_N, "QuickResponseSearchExpression", "queries"),
         type = "list",
         name = "queries",
         target_id = prelude.Document.id,
         list_member = M.QuickResponseQueryField,
      }),
      filters = schema.new({
         id = id.from(_N, "QuickResponseSearchExpression", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.QuickResponseFilterField,
      }),
      orderOnField = schema.new({
         id = id.from(_N, "QuickResponseSearchExpression", "orderOnField"),
         type = "structure",
         name = "orderOnField",
         target_id = id.from(_N, "QuickResponseOrderField"),
         target = M.QuickResponseOrderField,
      }),
   },
})

M.SearchQuickResponsesInput = schema.new({
   id = id.from(_N, "SearchQuickResponsesRequest"),
   type = "structure",
   members = {
      knowledgeBaseId = schema.new({
         id = id.from(_N, "SearchQuickResponsesInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      searchExpression = schema.new({
         id = id.from(_N, "SearchQuickResponsesInput", "searchExpression"),
         type = "structure",
         name = "searchExpression",
         target_id = id.from(_N, "QuickResponseSearchExpression"),
         target = M.QuickResponseSearchExpression,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "SearchQuickResponsesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "SearchQuickResponsesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      attributes = schema.new({
         id = id.from(_N, "SearchQuickResponsesInput", "attributes"),
         type = "map",
         name = "attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.QuickResponseSearchResultData = schema.new({
   id = id.from(_N, "QuickResponseSearchResultData"),
   type = "structure",
   members = {
      quickResponseArn = schema.new({
         id = id.from(_N, "QuickResponseSearchResultData", "quickResponseArn"),
         type = "string",
         name = "quickResponseArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      quickResponseId = schema.new({
         id = id.from(_N, "QuickResponseSearchResultData", "quickResponseId"),
         type = "string",
         name = "quickResponseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      knowledgeBaseArn = schema.new({
         id = id.from(_N, "QuickResponseSearchResultData", "knowledgeBaseArn"),
         type = "string",
         name = "knowledgeBaseArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      knowledgeBaseId = schema.new({
         id = id.from(_N, "QuickResponseSearchResultData", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "QuickResponseSearchResultData", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      contentType = schema.new({
         id = id.from(_N, "QuickResponseSearchResultData", "contentType"),
         type = "string",
         name = "contentType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "QuickResponseSearchResultData", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      contents = schema.new({
         id = id.from(_N, "QuickResponseSearchResultData", "contents"),
         type = "structure",
         name = "contents",
         target_id = id.from(_N, "QuickResponseContents"),
         target = M.QuickResponseContents,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdTime = schema.new({
         id = id.from(_N, "QuickResponseSearchResultData", "createdTime"),
         type = "timestamp",
         name = "createdTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
         },
      }),
      lastModifiedTime = schema.new({
         id = id.from(_N, "QuickResponseSearchResultData", "lastModifiedTime"),
         type = "timestamp",
         name = "lastModifiedTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
         },
      }),
      isActive = schema.new({
         id = id.from(_N, "QuickResponseSearchResultData", "isActive"),
         type = "boolean",
         name = "isActive",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "QuickResponseSearchResultData", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      groupingConfiguration = schema.new({
         id = id.from(_N, "QuickResponseSearchResultData", "groupingConfiguration"),
         type = "structure",
         name = "groupingConfiguration",
         target_id = id.from(_N, "GroupingConfiguration"),
         target = M.GroupingConfiguration,
      }),
      shortcutKey = schema.new({
         id = id.from(_N, "QuickResponseSearchResultData", "shortcutKey"),
         type = "string",
         name = "shortcutKey",
         target_id = prelude.String.id,
      }),
      lastModifiedBy = schema.new({
         id = id.from(_N, "QuickResponseSearchResultData", "lastModifiedBy"),
         type = "string",
         name = "lastModifiedBy",
         target_id = prelude.String.id,
      }),
      channels = schema.new({
         id = id.from(_N, "QuickResponseSearchResultData", "channels"),
         type = "list",
         name = "channels",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      language = schema.new({
         id = id.from(_N, "QuickResponseSearchResultData", "language"),
         type = "string",
         name = "language",
         target_id = prelude.String.id,
      }),
      attributesNotInterpolated = schema.new({
         id = id.from(_N, "QuickResponseSearchResultData", "attributesNotInterpolated"),
         type = "list",
         name = "attributesNotInterpolated",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      attributesInterpolated = schema.new({
         id = id.from(_N, "QuickResponseSearchResultData", "attributesInterpolated"),
         type = "list",
         name = "attributesInterpolated",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      tags = schema.new({
         id = id.from(_N, "QuickResponseSearchResultData", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.SearchQuickResponsesOutput = schema.new({
   id = id.from(_N, "SearchQuickResponsesResponse"),
   type = "structure",
   members = {
      results = schema.new({
         id = id.from(_N, "SearchQuickResponsesOutput", "results"),
         type = "list",
         name = "results",
         target_id = prelude.Document.id,
         list_member = M.QuickResponseSearchResultData,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "SearchQuickResponsesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.StartContentUploadInput = schema.new({
   id = id.from(_N, "StartContentUploadRequest"),
   type = "structure",
   members = {
      knowledgeBaseId = schema.new({
         id = id.from(_N, "StartContentUploadInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      contentType = schema.new({
         id = id.from(_N, "StartContentUploadInput", "contentType"),
         type = "string",
         name = "contentType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      presignedUrlTimeToLive = schema.new({
         id = id.from(_N, "StartContentUploadInput", "presignedUrlTimeToLive"),
         type = "integer",
         name = "presignedUrlTimeToLive",
         target_id = prelude.Integer.id,
      }),
   },
})

M.StartContentUploadOutput = schema.new({
   id = id.from(_N, "StartContentUploadResponse"),
   type = "structure",
   members = {
      uploadId = schema.new({
         id = id.from(_N, "StartContentUploadOutput", "uploadId"),
         type = "string",
         name = "uploadId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      url = schema.new({
         id = id.from(_N, "StartContentUploadOutput", "url"),
         type = "string",
         name = "url",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      urlExpiry = schema.new({
         id = id.from(_N, "StartContentUploadOutput", "urlExpiry"),
         type = "timestamp",
         name = "urlExpiry",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "epoch-seconds" },
         },
      }),
      headersToInclude = schema.new({
         id = id.from(_N, "StartContentUploadOutput", "headersToInclude"),
         type = "map",
         name = "headersToInclude",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartImportJobInput = schema.new({
   id = id.from(_N, "StartImportJobRequest"),
   type = "structure",
   members = {
      knowledgeBaseId = schema.new({
         id = id.from(_N, "StartImportJobInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      importJobType = schema.new({
         id = id.from(_N, "StartImportJobInput", "importJobType"),
         type = "string",
         name = "importJobType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      uploadId = schema.new({
         id = id.from(_N, "StartImportJobInput", "uploadId"),
         type = "string",
         name = "uploadId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      clientToken = schema.new({
         id = id.from(_N, "StartImportJobInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      metadata = schema.new({
         id = id.from(_N, "StartImportJobInput", "metadata"),
         type = "map",
         name = "metadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      externalSourceConfiguration = schema.new({
         id = id.from(_N, "StartImportJobInput", "externalSourceConfiguration"),
         type = "structure",
         name = "externalSourceConfiguration",
         target_id = id.from(_N, "ExternalSourceConfiguration"),
         target = M.ExternalSourceConfiguration,
      }),
   },
})

M.StartImportJobOutput = schema.new({
   id = id.from(_N, "StartImportJobResponse"),
   type = "structure",
   members = {
      importJob = schema.new({
         id = id.from(_N, "StartImportJobOutput", "importJob"),
         type = "structure",
         name = "importJob",
         target_id = id.from(_N, "ImportJobData"),
         target = M.ImportJobData,
      }),
   },
})

M.UpdateKnowledgeBaseTemplateUriInput = schema.new({
   id = id.from(_N, "UpdateKnowledgeBaseTemplateUriRequest"),
   type = "structure",
   members = {
      knowledgeBaseId = schema.new({
         id = id.from(_N, "UpdateKnowledgeBaseTemplateUriInput", "knowledgeBaseId"),
         type = "string",
         name = "knowledgeBaseId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      templateUri = schema.new({
         id = id.from(_N, "UpdateKnowledgeBaseTemplateUriInput", "templateUri"),
         type = "string",
         name = "templateUri",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateKnowledgeBaseTemplateUriOutput = schema.new({
   id = id.from(_N, "UpdateKnowledgeBaseTemplateUriResponse"),
   type = "structure",
   members = {
      knowledgeBase = schema.new({
         id = id.from(_N, "UpdateKnowledgeBaseTemplateUriOutput", "knowledgeBase"),
         type = "structure",
         name = "knowledgeBase",
         target_id = id.from(_N, "KnowledgeBaseData"),
         target = M.KnowledgeBaseData,
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

M.TooManyTagsException = schema.new({
   id = id.from(_N, "TooManyTagsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "TooManyTagsException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      resourceName = schema.new({
         id = id.from(_N, "TooManyTagsException", "resourceName"),
         type = "string",
         name = "resourceName",
         target_id = prelude.String.id,
      }),
   },
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
   id = id.from("com.amazonaws.wisdom", "WisdomService"),
   version = "2020-10-19",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateAssistant = schema.operation({
   id = id.from("com.amazonaws.wisdom", "CreateAssistant"),
   input = M.CreateAssistantInput,
   output = M.CreateAssistantOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/assistants" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateAssistantAssociation = schema.operation({
   id = id.from("com.amazonaws.wisdom", "CreateAssistantAssociation"),
   input = M.CreateAssistantAssociationInput,
   output = M.CreateAssistantAssociationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/assistants/{assistantId}/associations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateContent = schema.operation({
   id = id.from("com.amazonaws.wisdom", "CreateContent"),
   input = M.CreateContentInput,
   output = M.CreateContentOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/knowledgeBases/{knowledgeBaseId}/contents" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateKnowledgeBase = schema.operation({
   id = id.from("com.amazonaws.wisdom", "CreateKnowledgeBase"),
   input = M.CreateKnowledgeBaseInput,
   output = M.CreateKnowledgeBaseOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/knowledgeBases" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateQuickResponse = schema.operation({
   id = id.from("com.amazonaws.wisdom", "CreateQuickResponse"),
   input = M.CreateQuickResponseInput,
   output = M.CreateQuickResponseOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/knowledgeBases/{knowledgeBaseId}/quickResponses" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateSession = schema.operation({
   id = id.from("com.amazonaws.wisdom", "CreateSession"),
   input = M.CreateSessionInput,
   output = M.CreateSessionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/assistants/{assistantId}/sessions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteAssistant = schema.operation({
   id = id.from("com.amazonaws.wisdom", "DeleteAssistant"),
   input = M.DeleteAssistantInput,
   output = M.DeleteAssistantOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/assistants/{assistantId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteAssistantAssociation = schema.operation({
   id = id.from("com.amazonaws.wisdom", "DeleteAssistantAssociation"),
   input = M.DeleteAssistantAssociationInput,
   output = M.DeleteAssistantAssociationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/assistants/{assistantId}/associations/{assistantAssociationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteContent = schema.operation({
   id = id.from("com.amazonaws.wisdom", "DeleteContent"),
   input = M.DeleteContentInput,
   output = M.DeleteContentOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteImportJob = schema.operation({
   id = id.from("com.amazonaws.wisdom", "DeleteImportJob"),
   input = M.DeleteImportJobInput,
   output = M.DeleteImportJobOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteKnowledgeBase = schema.operation({
   id = id.from("com.amazonaws.wisdom", "DeleteKnowledgeBase"),
   input = M.DeleteKnowledgeBaseInput,
   output = M.DeleteKnowledgeBaseOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/knowledgeBases/{knowledgeBaseId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteQuickResponse = schema.operation({
   id = id.from("com.amazonaws.wisdom", "DeleteQuickResponse"),
   input = M.DeleteQuickResponseInput,
   output = M.DeleteQuickResponseOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAssistant = schema.operation({
   id = id.from("com.amazonaws.wisdom", "GetAssistant"),
   input = M.GetAssistantInput,
   output = M.GetAssistantOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/assistants/{assistantId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAssistantAssociation = schema.operation({
   id = id.from("com.amazonaws.wisdom", "GetAssistantAssociation"),
   input = M.GetAssistantAssociationInput,
   output = M.GetAssistantAssociationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/assistants/{assistantId}/associations/{assistantAssociationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetContent = schema.operation({
   id = id.from("com.amazonaws.wisdom", "GetContent"),
   input = M.GetContentInput,
   output = M.GetContentOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetContentSummary = schema.operation({
   id = id.from("com.amazonaws.wisdom", "GetContentSummary"),
   input = M.GetContentSummaryInput,
   output = M.GetContentSummaryOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}/summary" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetImportJob = schema.operation({
   id = id.from("com.amazonaws.wisdom", "GetImportJob"),
   input = M.GetImportJobInput,
   output = M.GetImportJobOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetKnowledgeBase = schema.operation({
   id = id.from("com.amazonaws.wisdom", "GetKnowledgeBase"),
   input = M.GetKnowledgeBaseInput,
   output = M.GetKnowledgeBaseOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/knowledgeBases/{knowledgeBaseId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetQuickResponse = schema.operation({
   id = id.from("com.amazonaws.wisdom", "GetQuickResponse"),
   input = M.GetQuickResponseInput,
   output = M.GetQuickResponseOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetRecommendations = schema.operation({
   id = id.from("com.amazonaws.wisdom", "GetRecommendations"),
   input = M.GetRecommendationsInput,
   output = M.GetRecommendationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/assistants/{assistantId}/sessions/{sessionId}/recommendations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSession = schema.operation({
   id = id.from("com.amazonaws.wisdom", "GetSession"),
   input = M.GetSessionInput,
   output = M.GetSessionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/assistants/{assistantId}/sessions/{sessionId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAssistantAssociations = schema.operation({
   id = id.from("com.amazonaws.wisdom", "ListAssistantAssociations"),
   input = M.ListAssistantAssociationsInput,
   output = M.ListAssistantAssociationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/assistants/{assistantId}/associations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAssistants = schema.operation({
   id = id.from("com.amazonaws.wisdom", "ListAssistants"),
   input = M.ListAssistantsInput,
   output = M.ListAssistantsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/assistants" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListContents = schema.operation({
   id = id.from("com.amazonaws.wisdom", "ListContents"),
   input = M.ListContentsInput,
   output = M.ListContentsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/knowledgeBases/{knowledgeBaseId}/contents" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListImportJobs = schema.operation({
   id = id.from("com.amazonaws.wisdom", "ListImportJobs"),
   input = M.ListImportJobsInput,
   output = M.ListImportJobsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/knowledgeBases/{knowledgeBaseId}/importJobs" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListKnowledgeBases = schema.operation({
   id = id.from("com.amazonaws.wisdom", "ListKnowledgeBases"),
   input = M.ListKnowledgeBasesInput,
   output = M.ListKnowledgeBasesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/knowledgeBases" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListQuickResponses = schema.operation({
   id = id.from("com.amazonaws.wisdom", "ListQuickResponses"),
   input = M.ListQuickResponsesInput,
   output = M.ListQuickResponsesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/knowledgeBases/{knowledgeBaseId}/quickResponses" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.wisdom", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.NotifyRecommendationsReceived = schema.operation({
   id = id.from("com.amazonaws.wisdom", "NotifyRecommendationsReceived"),
   input = M.NotifyRecommendationsReceivedInput,
   output = M.NotifyRecommendationsReceivedOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/assistants/{assistantId}/sessions/{sessionId}/recommendations/notify" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.QueryAssistant = schema.operation({
   id = id.from("com.amazonaws.wisdom", "QueryAssistant"),
   input = M.QueryAssistantInput,
   output = M.QueryAssistantOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/assistants/{assistantId}/query" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RemoveKnowledgeBaseTemplateUri = schema.operation({
   id = id.from("com.amazonaws.wisdom", "RemoveKnowledgeBaseTemplateUri"),
   input = M.RemoveKnowledgeBaseTemplateUriInput,
   output = M.RemoveKnowledgeBaseTemplateUriOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/knowledgeBases/{knowledgeBaseId}/templateUri" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SearchContent = schema.operation({
   id = id.from("com.amazonaws.wisdom", "SearchContent"),
   input = M.SearchContentInput,
   output = M.SearchContentOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/knowledgeBases/{knowledgeBaseId}/search" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SearchQuickResponses = schema.operation({
   id = id.from("com.amazonaws.wisdom", "SearchQuickResponses"),
   input = M.SearchQuickResponsesInput,
   output = M.SearchQuickResponsesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/knowledgeBases/{knowledgeBaseId}/search/quickResponses" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SearchSessions = schema.operation({
   id = id.from("com.amazonaws.wisdom", "SearchSessions"),
   input = M.SearchSessionsInput,
   output = M.SearchSessionsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/assistants/{assistantId}/searchSessions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartContentUpload = schema.operation({
   id = id.from("com.amazonaws.wisdom", "StartContentUpload"),
   input = M.StartContentUploadInput,
   output = M.StartContentUploadOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/knowledgeBases/{knowledgeBaseId}/upload" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartImportJob = schema.operation({
   id = id.from("com.amazonaws.wisdom", "StartImportJob"),
   input = M.StartImportJobInput,
   output = M.StartImportJobOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/knowledgeBases/{knowledgeBaseId}/importJobs" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.wisdom", "TagResource"),
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
   id = id.from("com.amazonaws.wisdom", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateContent = schema.operation({
   id = id.from("com.amazonaws.wisdom", "UpdateContent"),
   input = M.UpdateContentInput,
   output = M.UpdateContentOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/knowledgeBases/{knowledgeBaseId}/contents/{contentId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateKnowledgeBaseTemplateUri = schema.operation({
   id = id.from("com.amazonaws.wisdom", "UpdateKnowledgeBaseTemplateUri"),
   input = M.UpdateKnowledgeBaseTemplateUriInput,
   output = M.UpdateKnowledgeBaseTemplateUriOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/knowledgeBases/{knowledgeBaseId}/templateUri" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateQuickResponse = schema.operation({
   id = id.from("com.amazonaws.wisdom", "UpdateQuickResponse"),
   input = M.UpdateQuickResponseInput,
   output = M.UpdateQuickResponseOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/knowledgeBases/{knowledgeBaseId}/quickResponses/{quickResponseId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
