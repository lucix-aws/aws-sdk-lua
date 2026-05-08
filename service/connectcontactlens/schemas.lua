

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.connectcontactlens"

local M = {}

M.RealtimeContactAnalysisSegments = schema.new({ type = "list", list_member = M.RealtimeContactAnalysisSegment })

M.IssuesDetected = schema.new({ type = "list", list_member = M.IssueDetected })

M.MatchedCategories = schema.new({ type = "list", list_member = prelude.String })

M.MatchedDetails = schema.new({ type = "map", map_key = prelude.String, map_value = M.CategoryDetails })

M.PointsOfInterest = schema.new({ type = "list", list_member = M.PointOfInterest })

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
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.InternalServiceException = schema.new({
   id = id.from(_N, "InternalServiceException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InternalServiceException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidRequestException = schema.new({
   id = id.from(_N, "InvalidRequestException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InvalidRequestException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRealtimeContactAnalysisSegmentsInput = schema.new({
   id = id.from(_N, "ListRealtimeContactAnalysisSegmentsRequest"),
   type = "structure",
   members = {
      InstanceId = schema.new({
         id = id.from(_N, "ListRealtimeContactAnalysisSegmentsInput", "InstanceId"),
         type = "string",
         name = "InstanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ContactId = schema.new({
         id = id.from(_N, "ListRealtimeContactAnalysisSegmentsInput", "ContactId"),
         type = "string",
         name = "ContactId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListRealtimeContactAnalysisSegmentsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRealtimeContactAnalysisSegmentsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.PointOfInterest = schema.new({
   id = id.from(_N, "PointOfInterest"),
   type = "structure",
   members = {
      BeginOffsetMillis = schema.new({
         id = id.from(_N, "PointOfInterest", "BeginOffsetMillis"),
         type = "integer",
         name = "BeginOffsetMillis",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndOffsetMillis = schema.new({
         id = id.from(_N, "PointOfInterest", "EndOffsetMillis"),
         type = "integer",
         name = "EndOffsetMillis",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CategoryDetails = schema.new({
   id = id.from(_N, "CategoryDetails"),
   type = "structure",
   members = {
      PointsOfInterest = schema.new({
         id = id.from(_N, "CategoryDetails", "PointsOfInterest"),
         type = "list",
         name = "PointsOfInterest",
         target_id = prelude.Document.id,
         list_member = M.PointOfInterest,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Categories = schema.new({
   id = id.from(_N, "Categories"),
   type = "structure",
   members = {
      MatchedCategories = schema.new({
         id = id.from(_N, "Categories", "MatchedCategories"),
         type = "list",
         name = "MatchedCategories",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MatchedDetails = schema.new({
         id = id.from(_N, "Categories", "MatchedDetails"),
         type = "map",
         name = "MatchedDetails",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.CategoryDetails,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PostContactSummary = schema.new({
   id = id.from(_N, "PostContactSummary"),
   type = "structure",
   members = {
      Content = schema.new({
         id = id.from(_N, "PostContactSummary", "Content"),
         type = "string",
         name = "Content",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "PostContactSummary", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FailureCode = schema.new({
         id = id.from(_N, "PostContactSummary", "FailureCode"),
         type = "string",
         name = "FailureCode",
         target_id = prelude.String.id,
      }),
   },
})

M.CharacterOffsets = schema.new({
   id = id.from(_N, "CharacterOffsets"),
   type = "structure",
   members = {
      BeginOffsetChar = schema.new({
         id = id.from(_N, "CharacterOffsets", "BeginOffsetChar"),
         type = "integer",
         name = "BeginOffsetChar",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndOffsetChar = schema.new({
         id = id.from(_N, "CharacterOffsets", "EndOffsetChar"),
         type = "integer",
         name = "EndOffsetChar",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IssueDetected = schema.new({
   id = id.from(_N, "IssueDetected"),
   type = "structure",
   members = {
      CharacterOffsets = schema.new({
         id = id.from(_N, "IssueDetected", "CharacterOffsets"),
         type = "structure",
         name = "CharacterOffsets",
         target_id = id.from(_N, "CharacterOffsets"),
         target = M.CharacterOffsets,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Transcript = schema.new({
   id = id.from(_N, "Transcript"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "Transcript", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ParticipantId = schema.new({
         id = id.from(_N, "Transcript", "ParticipantId"),
         type = "string",
         name = "ParticipantId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ParticipantRole = schema.new({
         id = id.from(_N, "Transcript", "ParticipantRole"),
         type = "string",
         name = "ParticipantRole",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Content = schema.new({
         id = id.from(_N, "Transcript", "Content"),
         type = "string",
         name = "Content",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BeginOffsetMillis = schema.new({
         id = id.from(_N, "Transcript", "BeginOffsetMillis"),
         type = "integer",
         name = "BeginOffsetMillis",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndOffsetMillis = schema.new({
         id = id.from(_N, "Transcript", "EndOffsetMillis"),
         type = "integer",
         name = "EndOffsetMillis",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Sentiment = schema.new({
         id = id.from(_N, "Transcript", "Sentiment"),
         type = "string",
         name = "Sentiment",
         target_id = prelude.String.id,
      }),
      IssuesDetected = schema.new({
         id = id.from(_N, "Transcript", "IssuesDetected"),
         type = "list",
         name = "IssuesDetected",
         target_id = prelude.Document.id,
         list_member = M.IssueDetected,
      }),
   },
})

M.RealtimeContactAnalysisSegment = schema.new({
   id = id.from(_N, "RealtimeContactAnalysisSegment"),
   type = "structure",
   members = {
      Transcript = schema.new({
         id = id.from(_N, "RealtimeContactAnalysisSegment", "Transcript"),
         type = "structure",
         name = "Transcript",
         target_id = id.from(_N, "Transcript"),
         target = M.Transcript,
      }),
      Categories = schema.new({
         id = id.from(_N, "RealtimeContactAnalysisSegment", "Categories"),
         type = "structure",
         name = "Categories",
         target_id = id.from(_N, "Categories"),
         target = M.Categories,
      }),
      PostContactSummary = schema.new({
         id = id.from(_N, "RealtimeContactAnalysisSegment", "PostContactSummary"),
         type = "structure",
         name = "PostContactSummary",
         target_id = id.from(_N, "PostContactSummary"),
         target = M.PostContactSummary,
      }),
   },
})

M.ListRealtimeContactAnalysisSegmentsOutput = schema.new({
   id = id.from(_N, "ListRealtimeContactAnalysisSegmentsResponse"),
   type = "structure",
   members = {
      Segments = schema.new({
         id = id.from(_N, "ListRealtimeContactAnalysisSegmentsOutput", "Segments"),
         type = "list",
         name = "Segments",
         target_id = prelude.Document.id,
         list_member = M.RealtimeContactAnalysisSegment,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListRealtimeContactAnalysisSegmentsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
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
         traits = {
            [traits.REQUIRED] = {},
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
   id = id.from("com.amazonaws.connectcontactlens", "AmazonConnectContactLens"),
   version = "2020-08-21",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRealtimeContactAnalysisSegments = schema.operation({
   id = id.from("com.amazonaws.connectcontactlens", "ListRealtimeContactAnalysisSegments"),
   input = M.ListRealtimeContactAnalysisSegmentsInput,
   output = M.ListRealtimeContactAnalysisSegmentsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/realtime-contact-analysis/analysis-segments" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
