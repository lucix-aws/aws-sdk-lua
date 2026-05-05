local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.mturk"

local M = {}

M.AcceptQualificationRequestInput = schema.new({
    id = id.from(_N, "AcceptQualificationRequestInput"),
    type = "structure",
    members = {
        QualificationRequestId = schema.new({
            id = id.from(_N, "AcceptQualificationRequestInput", "QualificationRequestId"),
            type = "string",
            name = "QualificationRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IntegerValue = schema.new({
            id = id.from(_N, "AcceptQualificationRequestInput", "IntegerValue"),
            type = "integer",
            name = "IntegerValue",
            target_id = prelude.Integer.id,
        }),
    },
})

M.AcceptQualificationRequestOutput = schema.new({
    id = id.from(_N, "AcceptQualificationRequestOutput"),
    type = "structure",
})

M.RequestError = schema.new({
    id = id.from(_N, "RequestError"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "RequestError", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        TurkErrorCode = schema.new({
            id = id.from(_N, "RequestError", "TurkErrorCode"),
            type = "string",
            name = "TurkErrorCode",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceFault = schema.new({
    id = id.from(_N, "ServiceFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceFault", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        TurkErrorCode = schema.new({
            id = id.from(_N, "ServiceFault", "TurkErrorCode"),
            type = "string",
            name = "TurkErrorCode",
            target_id = prelude.String.id,
        }),
    },
})

M.ApproveAssignmentInput = schema.new({
    id = id.from(_N, "ApproveAssignmentInput"),
    type = "structure",
    members = {
        AssignmentId = schema.new({
            id = id.from(_N, "ApproveAssignmentInput", "AssignmentId"),
            type = "string",
            name = "AssignmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RequesterFeedback = schema.new({
            id = id.from(_N, "ApproveAssignmentInput", "RequesterFeedback"),
            type = "string",
            name = "RequesterFeedback",
            target_id = prelude.String.id,
        }),
        OverrideRejection = schema.new({
            id = id.from(_N, "ApproveAssignmentInput", "OverrideRejection"),
            type = "boolean",
            name = "OverrideRejection",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ApproveAssignmentOutput = schema.new({
    id = id.from(_N, "ApproveAssignmentOutput"),
    type = "structure",
})

M.Assignment = schema.new({
    id = id.from(_N, "Assignment"),
    type = "structure",
    members = {
        AssignmentId = schema.new({
            id = id.from(_N, "Assignment", "AssignmentId"),
            type = "string",
            name = "AssignmentId",
            target_id = prelude.String.id,
        }),
        WorkerId = schema.new({
            id = id.from(_N, "Assignment", "WorkerId"),
            type = "string",
            name = "WorkerId",
            target_id = prelude.String.id,
        }),
        HITId = schema.new({
            id = id.from(_N, "Assignment", "HITId"),
            type = "string",
            name = "HITId",
            target_id = prelude.String.id,
        }),
        AssignmentStatus = schema.new({
            id = id.from(_N, "Assignment", "AssignmentStatus"),
            type = "string",
            name = "AssignmentStatus",
            target_id = prelude.String.id,
        }),
        AutoApprovalTime = schema.new({
            id = id.from(_N, "Assignment", "AutoApprovalTime"),
            type = "timestamp",
            name = "AutoApprovalTime",
            target_id = prelude.Timestamp.id,
        }),
        AcceptTime = schema.new({
            id = id.from(_N, "Assignment", "AcceptTime"),
            type = "timestamp",
            name = "AcceptTime",
            target_id = prelude.Timestamp.id,
        }),
        SubmitTime = schema.new({
            id = id.from(_N, "Assignment", "SubmitTime"),
            type = "timestamp",
            name = "SubmitTime",
            target_id = prelude.Timestamp.id,
        }),
        ApprovalTime = schema.new({
            id = id.from(_N, "Assignment", "ApprovalTime"),
            type = "timestamp",
            name = "ApprovalTime",
            target_id = prelude.Timestamp.id,
        }),
        RejectionTime = schema.new({
            id = id.from(_N, "Assignment", "RejectionTime"),
            type = "timestamp",
            name = "RejectionTime",
            target_id = prelude.Timestamp.id,
        }),
        Deadline = schema.new({
            id = id.from(_N, "Assignment", "Deadline"),
            type = "timestamp",
            name = "Deadline",
            target_id = prelude.Timestamp.id,
        }),
        Answer = schema.new({
            id = id.from(_N, "Assignment", "Answer"),
            type = "string",
            name = "Answer",
            target_id = prelude.String.id,
        }),
        RequesterFeedback = schema.new({
            id = id.from(_N, "Assignment", "RequesterFeedback"),
            type = "string",
            name = "RequesterFeedback",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateQualificationWithWorkerInput = schema.new({
    id = id.from(_N, "AssociateQualificationWithWorkerInput"),
    type = "structure",
    members = {
        QualificationTypeId = schema.new({
            id = id.from(_N, "AssociateQualificationWithWorkerInput", "QualificationTypeId"),
            type = "string",
            name = "QualificationTypeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WorkerId = schema.new({
            id = id.from(_N, "AssociateQualificationWithWorkerInput", "WorkerId"),
            type = "string",
            name = "WorkerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IntegerValue = schema.new({
            id = id.from(_N, "AssociateQualificationWithWorkerInput", "IntegerValue"),
            type = "integer",
            name = "IntegerValue",
            target_id = prelude.Integer.id,
        }),
        SendNotification = schema.new({
            id = id.from(_N, "AssociateQualificationWithWorkerInput", "SendNotification"),
            type = "boolean",
            name = "SendNotification",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.AssociateQualificationWithWorkerOutput = schema.new({
    id = id.from(_N, "AssociateQualificationWithWorkerOutput"),
    type = "structure",
})

M.BonusPayment = schema.new({
    id = id.from(_N, "BonusPayment"),
    type = "structure",
    members = {
        WorkerId = schema.new({
            id = id.from(_N, "BonusPayment", "WorkerId"),
            type = "string",
            name = "WorkerId",
            target_id = prelude.String.id,
        }),
        BonusAmount = schema.new({
            id = id.from(_N, "BonusPayment", "BonusAmount"),
            type = "string",
            name = "BonusAmount",
            target_id = prelude.String.id,
        }),
        AssignmentId = schema.new({
            id = id.from(_N, "BonusPayment", "AssignmentId"),
            type = "string",
            name = "AssignmentId",
            target_id = prelude.String.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "BonusPayment", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
        GrantTime = schema.new({
            id = id.from(_N, "BonusPayment", "GrantTime"),
            type = "timestamp",
            name = "GrantTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CreateAdditionalAssignmentsForHITInput = schema.new({
    id = id.from(_N, "CreateAdditionalAssignmentsForHITInput"),
    type = "structure",
    members = {
        HITId = schema.new({
            id = id.from(_N, "CreateAdditionalAssignmentsForHITInput", "HITId"),
            type = "string",
            name = "HITId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NumberOfAdditionalAssignments = schema.new({
            id = id.from(_N, "CreateAdditionalAssignmentsForHITInput", "NumberOfAdditionalAssignments"),
            type = "integer",
            name = "NumberOfAdditionalAssignments",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UniqueRequestToken = schema.new({
            id = id.from(_N, "CreateAdditionalAssignmentsForHITInput", "UniqueRequestToken"),
            type = "string",
            name = "UniqueRequestToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateAdditionalAssignmentsForHITOutput = schema.new({
    id = id.from(_N, "CreateAdditionalAssignmentsForHITOutput"),
    type = "structure",
})

M.ParameterMapEntry = schema.new({
    id = id.from(_N, "ParameterMapEntry"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "ParameterMapEntry", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Values = schema.new({
            id = id.from(_N, "ParameterMapEntry", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.PolicyParameter = schema.new({
    id = id.from(_N, "PolicyParameter"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "PolicyParameter", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Values = schema.new({
            id = id.from(_N, "PolicyParameter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MapEntries = schema.new({
            id = id.from(_N, "PolicyParameter", "MapEntries"),
            type = "list",
            name = "MapEntries",
            target_id = prelude.Document.id,
            list_member = M.ParameterMapEntry,
        }),
    },
})

M.ReviewPolicy = schema.new({
    id = id.from(_N, "ReviewPolicy"),
    type = "structure",
    members = {
        PolicyName = schema.new({
            id = id.from(_N, "ReviewPolicy", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Parameters = schema.new({
            id = id.from(_N, "ReviewPolicy", "Parameters"),
            type = "list",
            name = "Parameters",
            target_id = prelude.Document.id,
            list_member = M.PolicyParameter,
        }),
    },
})

M.HITLayoutParameter = schema.new({
    id = id.from(_N, "HITLayoutParameter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "HITLayoutParameter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "HITLayoutParameter", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Locale = schema.new({
    id = id.from(_N, "Locale"),
    type = "structure",
    members = {
        Country = schema.new({
            id = id.from(_N, "Locale", "Country"),
            type = "string",
            name = "Country",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subdivision = schema.new({
            id = id.from(_N, "Locale", "Subdivision"),
            type = "string",
            name = "Subdivision",
            target_id = prelude.String.id,
        }),
    },
})

M.QualificationRequirement = schema.new({
    id = id.from(_N, "QualificationRequirement"),
    type = "structure",
    members = {
        QualificationTypeId = schema.new({
            id = id.from(_N, "QualificationRequirement", "QualificationTypeId"),
            type = "string",
            name = "QualificationTypeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Comparator = schema.new({
            id = id.from(_N, "QualificationRequirement", "Comparator"),
            type = "string",
            name = "Comparator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IntegerValues = schema.new({
            id = id.from(_N, "QualificationRequirement", "IntegerValues"),
            type = "list",
            name = "IntegerValues",
            target_id = prelude.Document.id,
            list_member = prelude.Integer,
        }),
        LocaleValues = schema.new({
            id = id.from(_N, "QualificationRequirement", "LocaleValues"),
            type = "list",
            name = "LocaleValues",
            target_id = prelude.Document.id,
            list_member = M.Locale,
        }),
        RequiredToPreview = schema.new({
            id = id.from(_N, "QualificationRequirement", "RequiredToPreview"),
            type = "boolean",
            name = "RequiredToPreview",
            target_id = prelude.Boolean.id,
        }),
        ActionsGuarded = schema.new({
            id = id.from(_N, "QualificationRequirement", "ActionsGuarded"),
            type = "string",
            name = "ActionsGuarded",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateHITInput = schema.new({
    id = id.from(_N, "CreateHITInput"),
    type = "structure",
    members = {
        MaxAssignments = schema.new({
            id = id.from(_N, "CreateHITInput", "MaxAssignments"),
            type = "integer",
            name = "MaxAssignments",
            target_id = prelude.Integer.id,
        }),
        AutoApprovalDelayInSeconds = schema.new({
            id = id.from(_N, "CreateHITInput", "AutoApprovalDelayInSeconds"),
            type = "long",
            name = "AutoApprovalDelayInSeconds",
            target_id = prelude.Long.id,
        }),
        LifetimeInSeconds = schema.new({
            id = id.from(_N, "CreateHITInput", "LifetimeInSeconds"),
            type = "long",
            name = "LifetimeInSeconds",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AssignmentDurationInSeconds = schema.new({
            id = id.from(_N, "CreateHITInput", "AssignmentDurationInSeconds"),
            type = "long",
            name = "AssignmentDurationInSeconds",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Reward = schema.new({
            id = id.from(_N, "CreateHITInput", "Reward"),
            type = "string",
            name = "Reward",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Title = schema.new({
            id = id.from(_N, "CreateHITInput", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Keywords = schema.new({
            id = id.from(_N, "CreateHITInput", "Keywords"),
            type = "string",
            name = "Keywords",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateHITInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Question = schema.new({
            id = id.from(_N, "CreateHITInput", "Question"),
            type = "string",
            name = "Question",
            target_id = prelude.String.id,
        }),
        RequesterAnnotation = schema.new({
            id = id.from(_N, "CreateHITInput", "RequesterAnnotation"),
            type = "string",
            name = "RequesterAnnotation",
            target_id = prelude.String.id,
        }),
        QualificationRequirements = schema.new({
            id = id.from(_N, "CreateHITInput", "QualificationRequirements"),
            type = "list",
            name = "QualificationRequirements",
            target_id = prelude.Document.id,
            list_member = M.QualificationRequirement,
        }),
        UniqueRequestToken = schema.new({
            id = id.from(_N, "CreateHITInput", "UniqueRequestToken"),
            type = "string",
            name = "UniqueRequestToken",
            target_id = prelude.String.id,
        }),
        AssignmentReviewPolicy = schema.new({
            id = id.from(_N, "CreateHITInput", "AssignmentReviewPolicy"),
            type = "structure",
            name = "AssignmentReviewPolicy",
            target_id = id.from(_N, "ReviewPolicy"),
            target = M.ReviewPolicy,
        }),
        HITReviewPolicy = schema.new({
            id = id.from(_N, "CreateHITInput", "HITReviewPolicy"),
            type = "structure",
            name = "HITReviewPolicy",
            target_id = id.from(_N, "ReviewPolicy"),
            target = M.ReviewPolicy,
        }),
        HITLayoutId = schema.new({
            id = id.from(_N, "CreateHITInput", "HITLayoutId"),
            type = "string",
            name = "HITLayoutId",
            target_id = prelude.String.id,
        }),
        HITLayoutParameters = schema.new({
            id = id.from(_N, "CreateHITInput", "HITLayoutParameters"),
            type = "list",
            name = "HITLayoutParameters",
            target_id = prelude.Document.id,
            list_member = M.HITLayoutParameter,
        }),
    },
})

M.HIT = schema.new({
    id = id.from(_N, "HIT"),
    type = "structure",
    members = {
        HITId = schema.new({
            id = id.from(_N, "HIT", "HITId"),
            type = "string",
            name = "HITId",
            target_id = prelude.String.id,
        }),
        HITTypeId = schema.new({
            id = id.from(_N, "HIT", "HITTypeId"),
            type = "string",
            name = "HITTypeId",
            target_id = prelude.String.id,
        }),
        HITGroupId = schema.new({
            id = id.from(_N, "HIT", "HITGroupId"),
            type = "string",
            name = "HITGroupId",
            target_id = prelude.String.id,
        }),
        HITLayoutId = schema.new({
            id = id.from(_N, "HIT", "HITLayoutId"),
            type = "string",
            name = "HITLayoutId",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "HIT", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        Title = schema.new({
            id = id.from(_N, "HIT", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "HIT", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Question = schema.new({
            id = id.from(_N, "HIT", "Question"),
            type = "string",
            name = "Question",
            target_id = prelude.String.id,
        }),
        Keywords = schema.new({
            id = id.from(_N, "HIT", "Keywords"),
            type = "string",
            name = "Keywords",
            target_id = prelude.String.id,
        }),
        HITStatus = schema.new({
            id = id.from(_N, "HIT", "HITStatus"),
            type = "string",
            name = "HITStatus",
            target_id = prelude.String.id,
        }),
        MaxAssignments = schema.new({
            id = id.from(_N, "HIT", "MaxAssignments"),
            type = "integer",
            name = "MaxAssignments",
            target_id = prelude.Integer.id,
        }),
        Reward = schema.new({
            id = id.from(_N, "HIT", "Reward"),
            type = "string",
            name = "Reward",
            target_id = prelude.String.id,
        }),
        AutoApprovalDelayInSeconds = schema.new({
            id = id.from(_N, "HIT", "AutoApprovalDelayInSeconds"),
            type = "long",
            name = "AutoApprovalDelayInSeconds",
            target_id = prelude.Long.id,
        }),
        Expiration = schema.new({
            id = id.from(_N, "HIT", "Expiration"),
            type = "timestamp",
            name = "Expiration",
            target_id = prelude.Timestamp.id,
        }),
        AssignmentDurationInSeconds = schema.new({
            id = id.from(_N, "HIT", "AssignmentDurationInSeconds"),
            type = "long",
            name = "AssignmentDurationInSeconds",
            target_id = prelude.Long.id,
        }),
        RequesterAnnotation = schema.new({
            id = id.from(_N, "HIT", "RequesterAnnotation"),
            type = "string",
            name = "RequesterAnnotation",
            target_id = prelude.String.id,
        }),
        QualificationRequirements = schema.new({
            id = id.from(_N, "HIT", "QualificationRequirements"),
            type = "list",
            name = "QualificationRequirements",
            target_id = prelude.Document.id,
            list_member = M.QualificationRequirement,
        }),
        HITReviewStatus = schema.new({
            id = id.from(_N, "HIT", "HITReviewStatus"),
            type = "string",
            name = "HITReviewStatus",
            target_id = prelude.String.id,
        }),
        NumberOfAssignmentsPending = schema.new({
            id = id.from(_N, "HIT", "NumberOfAssignmentsPending"),
            type = "integer",
            name = "NumberOfAssignmentsPending",
            target_id = prelude.Integer.id,
        }),
        NumberOfAssignmentsAvailable = schema.new({
            id = id.from(_N, "HIT", "NumberOfAssignmentsAvailable"),
            type = "integer",
            name = "NumberOfAssignmentsAvailable",
            target_id = prelude.Integer.id,
        }),
        NumberOfAssignmentsCompleted = schema.new({
            id = id.from(_N, "HIT", "NumberOfAssignmentsCompleted"),
            type = "integer",
            name = "NumberOfAssignmentsCompleted",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CreateHITOutput = schema.new({
    id = id.from(_N, "CreateHITOutput"),
    type = "structure",
    members = {
        HIT = schema.new({
            id = id.from(_N, "CreateHITOutput", "HIT"),
            type = "structure",
            name = "HIT",
            target_id = id.from(_N, "HIT"),
            target = M.HIT,
        }),
    },
})

M.CreateHITTypeInput = schema.new({
    id = id.from(_N, "CreateHITTypeInput"),
    type = "structure",
    members = {
        AutoApprovalDelayInSeconds = schema.new({
            id = id.from(_N, "CreateHITTypeInput", "AutoApprovalDelayInSeconds"),
            type = "long",
            name = "AutoApprovalDelayInSeconds",
            target_id = prelude.Long.id,
        }),
        AssignmentDurationInSeconds = schema.new({
            id = id.from(_N, "CreateHITTypeInput", "AssignmentDurationInSeconds"),
            type = "long",
            name = "AssignmentDurationInSeconds",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Reward = schema.new({
            id = id.from(_N, "CreateHITTypeInput", "Reward"),
            type = "string",
            name = "Reward",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Title = schema.new({
            id = id.from(_N, "CreateHITTypeInput", "Title"),
            type = "string",
            name = "Title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Keywords = schema.new({
            id = id.from(_N, "CreateHITTypeInput", "Keywords"),
            type = "string",
            name = "Keywords",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateHITTypeInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        QualificationRequirements = schema.new({
            id = id.from(_N, "CreateHITTypeInput", "QualificationRequirements"),
            type = "list",
            name = "QualificationRequirements",
            target_id = prelude.Document.id,
            list_member = M.QualificationRequirement,
        }),
    },
})

M.CreateHITTypeOutput = schema.new({
    id = id.from(_N, "CreateHITTypeOutput"),
    type = "structure",
    members = {
        HITTypeId = schema.new({
            id = id.from(_N, "CreateHITTypeOutput", "HITTypeId"),
            type = "string",
            name = "HITTypeId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateHITWithHITTypeInput = schema.new({
    id = id.from(_N, "CreateHITWithHITTypeInput"),
    type = "structure",
    members = {
        HITTypeId = schema.new({
            id = id.from(_N, "CreateHITWithHITTypeInput", "HITTypeId"),
            type = "string",
            name = "HITTypeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxAssignments = schema.new({
            id = id.from(_N, "CreateHITWithHITTypeInput", "MaxAssignments"),
            type = "integer",
            name = "MaxAssignments",
            target_id = prelude.Integer.id,
        }),
        LifetimeInSeconds = schema.new({
            id = id.from(_N, "CreateHITWithHITTypeInput", "LifetimeInSeconds"),
            type = "long",
            name = "LifetimeInSeconds",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Question = schema.new({
            id = id.from(_N, "CreateHITWithHITTypeInput", "Question"),
            type = "string",
            name = "Question",
            target_id = prelude.String.id,
        }),
        RequesterAnnotation = schema.new({
            id = id.from(_N, "CreateHITWithHITTypeInput", "RequesterAnnotation"),
            type = "string",
            name = "RequesterAnnotation",
            target_id = prelude.String.id,
        }),
        UniqueRequestToken = schema.new({
            id = id.from(_N, "CreateHITWithHITTypeInput", "UniqueRequestToken"),
            type = "string",
            name = "UniqueRequestToken",
            target_id = prelude.String.id,
        }),
        AssignmentReviewPolicy = schema.new({
            id = id.from(_N, "CreateHITWithHITTypeInput", "AssignmentReviewPolicy"),
            type = "structure",
            name = "AssignmentReviewPolicy",
            target_id = id.from(_N, "ReviewPolicy"),
            target = M.ReviewPolicy,
        }),
        HITReviewPolicy = schema.new({
            id = id.from(_N, "CreateHITWithHITTypeInput", "HITReviewPolicy"),
            type = "structure",
            name = "HITReviewPolicy",
            target_id = id.from(_N, "ReviewPolicy"),
            target = M.ReviewPolicy,
        }),
        HITLayoutId = schema.new({
            id = id.from(_N, "CreateHITWithHITTypeInput", "HITLayoutId"),
            type = "string",
            name = "HITLayoutId",
            target_id = prelude.String.id,
        }),
        HITLayoutParameters = schema.new({
            id = id.from(_N, "CreateHITWithHITTypeInput", "HITLayoutParameters"),
            type = "list",
            name = "HITLayoutParameters",
            target_id = prelude.Document.id,
            list_member = M.HITLayoutParameter,
        }),
    },
})

M.CreateHITWithHITTypeOutput = schema.new({
    id = id.from(_N, "CreateHITWithHITTypeOutput"),
    type = "structure",
    members = {
        HIT = schema.new({
            id = id.from(_N, "CreateHITWithHITTypeOutput", "HIT"),
            type = "structure",
            name = "HIT",
            target_id = id.from(_N, "HIT"),
            target = M.HIT,
        }),
    },
})

M.CreateQualificationTypeInput = schema.new({
    id = id.from(_N, "CreateQualificationTypeInput"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateQualificationTypeInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Keywords = schema.new({
            id = id.from(_N, "CreateQualificationTypeInput", "Keywords"),
            type = "string",
            name = "Keywords",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateQualificationTypeInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        QualificationTypeStatus = schema.new({
            id = id.from(_N, "CreateQualificationTypeInput", "QualificationTypeStatus"),
            type = "string",
            name = "QualificationTypeStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RetryDelayInSeconds = schema.new({
            id = id.from(_N, "CreateQualificationTypeInput", "RetryDelayInSeconds"),
            type = "long",
            name = "RetryDelayInSeconds",
            target_id = prelude.Long.id,
        }),
        Test = schema.new({
            id = id.from(_N, "CreateQualificationTypeInput", "Test"),
            type = "string",
            name = "Test",
            target_id = prelude.String.id,
        }),
        AnswerKey = schema.new({
            id = id.from(_N, "CreateQualificationTypeInput", "AnswerKey"),
            type = "string",
            name = "AnswerKey",
            target_id = prelude.String.id,
        }),
        TestDurationInSeconds = schema.new({
            id = id.from(_N, "CreateQualificationTypeInput", "TestDurationInSeconds"),
            type = "long",
            name = "TestDurationInSeconds",
            target_id = prelude.Long.id,
        }),
        AutoGranted = schema.new({
            id = id.from(_N, "CreateQualificationTypeInput", "AutoGranted"),
            type = "boolean",
            name = "AutoGranted",
            target_id = prelude.Boolean.id,
        }),
        AutoGrantedValue = schema.new({
            id = id.from(_N, "CreateQualificationTypeInput", "AutoGrantedValue"),
            type = "integer",
            name = "AutoGrantedValue",
            target_id = prelude.Integer.id,
        }),
    },
})

M.QualificationType = schema.new({
    id = id.from(_N, "QualificationType"),
    type = "structure",
    members = {
        QualificationTypeId = schema.new({
            id = id.from(_N, "QualificationType", "QualificationTypeId"),
            type = "string",
            name = "QualificationTypeId",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "QualificationType", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
        }),
        Name = schema.new({
            id = id.from(_N, "QualificationType", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "QualificationType", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Keywords = schema.new({
            id = id.from(_N, "QualificationType", "Keywords"),
            type = "string",
            name = "Keywords",
            target_id = prelude.String.id,
        }),
        QualificationTypeStatus = schema.new({
            id = id.from(_N, "QualificationType", "QualificationTypeStatus"),
            type = "string",
            name = "QualificationTypeStatus",
            target_id = prelude.String.id,
        }),
        Test = schema.new({
            id = id.from(_N, "QualificationType", "Test"),
            type = "string",
            name = "Test",
            target_id = prelude.String.id,
        }),
        TestDurationInSeconds = schema.new({
            id = id.from(_N, "QualificationType", "TestDurationInSeconds"),
            type = "long",
            name = "TestDurationInSeconds",
            target_id = prelude.Long.id,
        }),
        AnswerKey = schema.new({
            id = id.from(_N, "QualificationType", "AnswerKey"),
            type = "string",
            name = "AnswerKey",
            target_id = prelude.String.id,
        }),
        RetryDelayInSeconds = schema.new({
            id = id.from(_N, "QualificationType", "RetryDelayInSeconds"),
            type = "long",
            name = "RetryDelayInSeconds",
            target_id = prelude.Long.id,
        }),
        IsRequestable = schema.new({
            id = id.from(_N, "QualificationType", "IsRequestable"),
            type = "boolean",
            name = "IsRequestable",
            target_id = prelude.Boolean.id,
        }),
        AutoGranted = schema.new({
            id = id.from(_N, "QualificationType", "AutoGranted"),
            type = "boolean",
            name = "AutoGranted",
            target_id = prelude.Boolean.id,
        }),
        AutoGrantedValue = schema.new({
            id = id.from(_N, "QualificationType", "AutoGrantedValue"),
            type = "integer",
            name = "AutoGrantedValue",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CreateQualificationTypeOutput = schema.new({
    id = id.from(_N, "CreateQualificationTypeOutput"),
    type = "structure",
    members = {
        QualificationType = schema.new({
            id = id.from(_N, "CreateQualificationTypeOutput", "QualificationType"),
            type = "structure",
            name = "QualificationType",
            target_id = id.from(_N, "QualificationType"),
            target = M.QualificationType,
        }),
    },
})

M.CreateWorkerBlockInput = schema.new({
    id = id.from(_N, "CreateWorkerBlockInput"),
    type = "structure",
    members = {
        WorkerId = schema.new({
            id = id.from(_N, "CreateWorkerBlockInput", "WorkerId"),
            type = "string",
            name = "WorkerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Reason = schema.new({
            id = id.from(_N, "CreateWorkerBlockInput", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateWorkerBlockOutput = schema.new({
    id = id.from(_N, "CreateWorkerBlockOutput"),
    type = "structure",
})

M.DeleteHITInput = schema.new({
    id = id.from(_N, "DeleteHITInput"),
    type = "structure",
    members = {
        HITId = schema.new({
            id = id.from(_N, "DeleteHITInput", "HITId"),
            type = "string",
            name = "HITId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteHITOutput = schema.new({
    id = id.from(_N, "DeleteHITOutput"),
    type = "structure",
})

M.DeleteQualificationTypeInput = schema.new({
    id = id.from(_N, "DeleteQualificationTypeInput"),
    type = "structure",
    members = {
        QualificationTypeId = schema.new({
            id = id.from(_N, "DeleteQualificationTypeInput", "QualificationTypeId"),
            type = "string",
            name = "QualificationTypeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteQualificationTypeOutput = schema.new({
    id = id.from(_N, "DeleteQualificationTypeOutput"),
    type = "structure",
})

M.DeleteWorkerBlockInput = schema.new({
    id = id.from(_N, "DeleteWorkerBlockInput"),
    type = "structure",
    members = {
        WorkerId = schema.new({
            id = id.from(_N, "DeleteWorkerBlockInput", "WorkerId"),
            type = "string",
            name = "WorkerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Reason = schema.new({
            id = id.from(_N, "DeleteWorkerBlockInput", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteWorkerBlockOutput = schema.new({
    id = id.from(_N, "DeleteWorkerBlockOutput"),
    type = "structure",
})

M.DisassociateQualificationFromWorkerInput = schema.new({
    id = id.from(_N, "DisassociateQualificationFromWorkerInput"),
    type = "structure",
    members = {
        WorkerId = schema.new({
            id = id.from(_N, "DisassociateQualificationFromWorkerInput", "WorkerId"),
            type = "string",
            name = "WorkerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        QualificationTypeId = schema.new({
            id = id.from(_N, "DisassociateQualificationFromWorkerInput", "QualificationTypeId"),
            type = "string",
            name = "QualificationTypeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Reason = schema.new({
            id = id.from(_N, "DisassociateQualificationFromWorkerInput", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
    },
})

M.DisassociateQualificationFromWorkerOutput = schema.new({
    id = id.from(_N, "DisassociateQualificationFromWorkerOutput"),
    type = "structure",
})

M.GetAccountBalanceInput = schema.new({
    id = id.from(_N, "GetAccountBalanceInput"),
    type = "structure",
})

M.GetAccountBalanceOutput = schema.new({
    id = id.from(_N, "GetAccountBalanceOutput"),
    type = "structure",
    members = {
        AvailableBalance = schema.new({
            id = id.from(_N, "GetAccountBalanceOutput", "AvailableBalance"),
            type = "string",
            name = "AvailableBalance",
            target_id = prelude.String.id,
        }),
        OnHoldBalance = schema.new({
            id = id.from(_N, "GetAccountBalanceOutput", "OnHoldBalance"),
            type = "string",
            name = "OnHoldBalance",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAssignmentInput = schema.new({
    id = id.from(_N, "GetAssignmentInput"),
    type = "structure",
    members = {
        AssignmentId = schema.new({
            id = id.from(_N, "GetAssignmentInput", "AssignmentId"),
            type = "string",
            name = "AssignmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetAssignmentOutput = schema.new({
    id = id.from(_N, "GetAssignmentOutput"),
    type = "structure",
    members = {
        Assignment = schema.new({
            id = id.from(_N, "GetAssignmentOutput", "Assignment"),
            type = "structure",
            name = "Assignment",
            target_id = id.from(_N, "Assignment"),
            target = M.Assignment,
        }),
        HIT = schema.new({
            id = id.from(_N, "GetAssignmentOutput", "HIT"),
            type = "structure",
            name = "HIT",
            target_id = id.from(_N, "HIT"),
            target = M.HIT,
        }),
    },
})

M.GetFileUploadURLInput = schema.new({
    id = id.from(_N, "GetFileUploadURLInput"),
    type = "structure",
    members = {
        AssignmentId = schema.new({
            id = id.from(_N, "GetFileUploadURLInput", "AssignmentId"),
            type = "string",
            name = "AssignmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        QuestionIdentifier = schema.new({
            id = id.from(_N, "GetFileUploadURLInput", "QuestionIdentifier"),
            type = "string",
            name = "QuestionIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetFileUploadURLOutput = schema.new({
    id = id.from(_N, "GetFileUploadURLOutput"),
    type = "structure",
    members = {
        FileUploadURL = schema.new({
            id = id.from(_N, "GetFileUploadURLOutput", "FileUploadURL"),
            type = "string",
            name = "FileUploadURL",
            target_id = prelude.String.id,
        }),
    },
})

M.GetHITInput = schema.new({
    id = id.from(_N, "GetHITInput"),
    type = "structure",
    members = {
        HITId = schema.new({
            id = id.from(_N, "GetHITInput", "HITId"),
            type = "string",
            name = "HITId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetHITOutput = schema.new({
    id = id.from(_N, "GetHITOutput"),
    type = "structure",
    members = {
        HIT = schema.new({
            id = id.from(_N, "GetHITOutput", "HIT"),
            type = "structure",
            name = "HIT",
            target_id = id.from(_N, "HIT"),
            target = M.HIT,
        }),
    },
})

M.GetQualificationScoreInput = schema.new({
    id = id.from(_N, "GetQualificationScoreInput"),
    type = "structure",
    members = {
        QualificationTypeId = schema.new({
            id = id.from(_N, "GetQualificationScoreInput", "QualificationTypeId"),
            type = "string",
            name = "QualificationTypeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WorkerId = schema.new({
            id = id.from(_N, "GetQualificationScoreInput", "WorkerId"),
            type = "string",
            name = "WorkerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Qualification = schema.new({
    id = id.from(_N, "Qualification"),
    type = "structure",
    members = {
        QualificationTypeId = schema.new({
            id = id.from(_N, "Qualification", "QualificationTypeId"),
            type = "string",
            name = "QualificationTypeId",
            target_id = prelude.String.id,
        }),
        WorkerId = schema.new({
            id = id.from(_N, "Qualification", "WorkerId"),
            type = "string",
            name = "WorkerId",
            target_id = prelude.String.id,
        }),
        GrantTime = schema.new({
            id = id.from(_N, "Qualification", "GrantTime"),
            type = "timestamp",
            name = "GrantTime",
            target_id = prelude.Timestamp.id,
        }),
        IntegerValue = schema.new({
            id = id.from(_N, "Qualification", "IntegerValue"),
            type = "integer",
            name = "IntegerValue",
            target_id = prelude.Integer.id,
        }),
        LocaleValue = schema.new({
            id = id.from(_N, "Qualification", "LocaleValue"),
            type = "structure",
            name = "LocaleValue",
            target_id = id.from(_N, "Locale"),
            target = M.Locale,
        }),
        Status = schema.new({
            id = id.from(_N, "Qualification", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.GetQualificationScoreOutput = schema.new({
    id = id.from(_N, "GetQualificationScoreOutput"),
    type = "structure",
    members = {
        Qualification = schema.new({
            id = id.from(_N, "GetQualificationScoreOutput", "Qualification"),
            type = "structure",
            name = "Qualification",
            target_id = id.from(_N, "Qualification"),
            target = M.Qualification,
        }),
    },
})

M.GetQualificationTypeInput = schema.new({
    id = id.from(_N, "GetQualificationTypeInput"),
    type = "structure",
    members = {
        QualificationTypeId = schema.new({
            id = id.from(_N, "GetQualificationTypeInput", "QualificationTypeId"),
            type = "string",
            name = "QualificationTypeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetQualificationTypeOutput = schema.new({
    id = id.from(_N, "GetQualificationTypeOutput"),
    type = "structure",
    members = {
        QualificationType = schema.new({
            id = id.from(_N, "GetQualificationTypeOutput", "QualificationType"),
            type = "structure",
            name = "QualificationType",
            target_id = id.from(_N, "QualificationType"),
            target = M.QualificationType,
        }),
    },
})

M.ListAssignmentsForHITInput = schema.new({
    id = id.from(_N, "ListAssignmentsForHITInput"),
    type = "structure",
    members = {
        HITId = schema.new({
            id = id.from(_N, "ListAssignmentsForHITInput", "HITId"),
            type = "string",
            name = "HITId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAssignmentsForHITInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAssignmentsForHITInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        AssignmentStatuses = schema.new({
            id = id.from(_N, "ListAssignmentsForHITInput", "AssignmentStatuses"),
            type = "list",
            name = "AssignmentStatuses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListAssignmentsForHITOutput = schema.new({
    id = id.from(_N, "ListAssignmentsForHITOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListAssignmentsForHITOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        NumResults = schema.new({
            id = id.from(_N, "ListAssignmentsForHITOutput", "NumResults"),
            type = "integer",
            name = "NumResults",
            target_id = prelude.Integer.id,
        }),
        Assignments = schema.new({
            id = id.from(_N, "ListAssignmentsForHITOutput", "Assignments"),
            type = "list",
            name = "Assignments",
            target_id = prelude.Document.id,
            list_member = M.Assignment,
        }),
    },
})

M.ListBonusPaymentsInput = schema.new({
    id = id.from(_N, "ListBonusPaymentsInput"),
    type = "structure",
    members = {
        HITId = schema.new({
            id = id.from(_N, "ListBonusPaymentsInput", "HITId"),
            type = "string",
            name = "HITId",
            target_id = prelude.String.id,
        }),
        AssignmentId = schema.new({
            id = id.from(_N, "ListBonusPaymentsInput", "AssignmentId"),
            type = "string",
            name = "AssignmentId",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListBonusPaymentsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListBonusPaymentsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListBonusPaymentsOutput = schema.new({
    id = id.from(_N, "ListBonusPaymentsOutput"),
    type = "structure",
    members = {
        NumResults = schema.new({
            id = id.from(_N, "ListBonusPaymentsOutput", "NumResults"),
            type = "integer",
            name = "NumResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListBonusPaymentsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        BonusPayments = schema.new({
            id = id.from(_N, "ListBonusPaymentsOutput", "BonusPayments"),
            type = "list",
            name = "BonusPayments",
            target_id = prelude.Document.id,
            list_member = M.BonusPayment,
        }),
    },
})

M.ListHITsInput = schema.new({
    id = id.from(_N, "ListHITsInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListHITsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListHITsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListHITsOutput = schema.new({
    id = id.from(_N, "ListHITsOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListHITsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        NumResults = schema.new({
            id = id.from(_N, "ListHITsOutput", "NumResults"),
            type = "integer",
            name = "NumResults",
            target_id = prelude.Integer.id,
        }),
        HITs = schema.new({
            id = id.from(_N, "ListHITsOutput", "HITs"),
            type = "list",
            name = "HITs",
            target_id = prelude.Document.id,
            list_member = M.HIT,
        }),
    },
})

M.ListHITsForQualificationTypeInput = schema.new({
    id = id.from(_N, "ListHITsForQualificationTypeInput"),
    type = "structure",
    members = {
        QualificationTypeId = schema.new({
            id = id.from(_N, "ListHITsForQualificationTypeInput", "QualificationTypeId"),
            type = "string",
            name = "QualificationTypeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListHITsForQualificationTypeInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListHITsForQualificationTypeInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListHITsForQualificationTypeOutput = schema.new({
    id = id.from(_N, "ListHITsForQualificationTypeOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListHITsForQualificationTypeOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        NumResults = schema.new({
            id = id.from(_N, "ListHITsForQualificationTypeOutput", "NumResults"),
            type = "integer",
            name = "NumResults",
            target_id = prelude.Integer.id,
        }),
        HITs = schema.new({
            id = id.from(_N, "ListHITsForQualificationTypeOutput", "HITs"),
            type = "list",
            name = "HITs",
            target_id = prelude.Document.id,
            list_member = M.HIT,
        }),
    },
})

M.ListQualificationRequestsInput = schema.new({
    id = id.from(_N, "ListQualificationRequestsInput"),
    type = "structure",
    members = {
        QualificationTypeId = schema.new({
            id = id.from(_N, "ListQualificationRequestsInput", "QualificationTypeId"),
            type = "string",
            name = "QualificationTypeId",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListQualificationRequestsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListQualificationRequestsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.QualificationRequest = schema.new({
    id = id.from(_N, "QualificationRequest"),
    type = "structure",
    members = {
        QualificationRequestId = schema.new({
            id = id.from(_N, "QualificationRequest", "QualificationRequestId"),
            type = "string",
            name = "QualificationRequestId",
            target_id = prelude.String.id,
        }),
        QualificationTypeId = schema.new({
            id = id.from(_N, "QualificationRequest", "QualificationTypeId"),
            type = "string",
            name = "QualificationTypeId",
            target_id = prelude.String.id,
        }),
        WorkerId = schema.new({
            id = id.from(_N, "QualificationRequest", "WorkerId"),
            type = "string",
            name = "WorkerId",
            target_id = prelude.String.id,
        }),
        Test = schema.new({
            id = id.from(_N, "QualificationRequest", "Test"),
            type = "string",
            name = "Test",
            target_id = prelude.String.id,
        }),
        Answer = schema.new({
            id = id.from(_N, "QualificationRequest", "Answer"),
            type = "string",
            name = "Answer",
            target_id = prelude.String.id,
        }),
        SubmitTime = schema.new({
            id = id.from(_N, "QualificationRequest", "SubmitTime"),
            type = "timestamp",
            name = "SubmitTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListQualificationRequestsOutput = schema.new({
    id = id.from(_N, "ListQualificationRequestsOutput"),
    type = "structure",
    members = {
        NumResults = schema.new({
            id = id.from(_N, "ListQualificationRequestsOutput", "NumResults"),
            type = "integer",
            name = "NumResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListQualificationRequestsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        QualificationRequests = schema.new({
            id = id.from(_N, "ListQualificationRequestsOutput", "QualificationRequests"),
            type = "list",
            name = "QualificationRequests",
            target_id = prelude.Document.id,
            list_member = M.QualificationRequest,
        }),
    },
})

M.ListQualificationTypesInput = schema.new({
    id = id.from(_N, "ListQualificationTypesInput"),
    type = "structure",
    members = {
        Query = schema.new({
            id = id.from(_N, "ListQualificationTypesInput", "Query"),
            type = "string",
            name = "Query",
            target_id = prelude.String.id,
        }),
        MustBeRequestable = schema.new({
            id = id.from(_N, "ListQualificationTypesInput", "MustBeRequestable"),
            type = "boolean",
            name = "MustBeRequestable",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MustBeOwnedByCaller = schema.new({
            id = id.from(_N, "ListQualificationTypesInput", "MustBeOwnedByCaller"),
            type = "boolean",
            name = "MustBeOwnedByCaller",
            target_id = prelude.Boolean.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListQualificationTypesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListQualificationTypesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListQualificationTypesOutput = schema.new({
    id = id.from(_N, "ListQualificationTypesOutput"),
    type = "structure",
    members = {
        NumResults = schema.new({
            id = id.from(_N, "ListQualificationTypesOutput", "NumResults"),
            type = "integer",
            name = "NumResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListQualificationTypesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        QualificationTypes = schema.new({
            id = id.from(_N, "ListQualificationTypesOutput", "QualificationTypes"),
            type = "list",
            name = "QualificationTypes",
            target_id = prelude.Document.id,
            list_member = M.QualificationType,
        }),
    },
})

M.ListReviewableHITsInput = schema.new({
    id = id.from(_N, "ListReviewableHITsInput"),
    type = "structure",
    members = {
        HITTypeId = schema.new({
            id = id.from(_N, "ListReviewableHITsInput", "HITTypeId"),
            type = "string",
            name = "HITTypeId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ListReviewableHITsInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListReviewableHITsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListReviewableHITsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListReviewableHITsOutput = schema.new({
    id = id.from(_N, "ListReviewableHITsOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListReviewableHITsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        NumResults = schema.new({
            id = id.from(_N, "ListReviewableHITsOutput", "NumResults"),
            type = "integer",
            name = "NumResults",
            target_id = prelude.Integer.id,
        }),
        HITs = schema.new({
            id = id.from(_N, "ListReviewableHITsOutput", "HITs"),
            type = "list",
            name = "HITs",
            target_id = prelude.Document.id,
            list_member = M.HIT,
        }),
    },
})

M.ListReviewPolicyResultsForHITInput = schema.new({
    id = id.from(_N, "ListReviewPolicyResultsForHITInput"),
    type = "structure",
    members = {
        HITId = schema.new({
            id = id.from(_N, "ListReviewPolicyResultsForHITInput", "HITId"),
            type = "string",
            name = "HITId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PolicyLevels = schema.new({
            id = id.from(_N, "ListReviewPolicyResultsForHITInput", "PolicyLevels"),
            type = "list",
            name = "PolicyLevels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        RetrieveActions = schema.new({
            id = id.from(_N, "ListReviewPolicyResultsForHITInput", "RetrieveActions"),
            type = "boolean",
            name = "RetrieveActions",
            target_id = prelude.Boolean.id,
        }),
        RetrieveResults = schema.new({
            id = id.from(_N, "ListReviewPolicyResultsForHITInput", "RetrieveResults"),
            type = "boolean",
            name = "RetrieveResults",
            target_id = prelude.Boolean.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListReviewPolicyResultsForHITInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListReviewPolicyResultsForHITInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ReviewActionDetail = schema.new({
    id = id.from(_N, "ReviewActionDetail"),
    type = "structure",
    members = {
        ActionId = schema.new({
            id = id.from(_N, "ReviewActionDetail", "ActionId"),
            type = "string",
            name = "ActionId",
            target_id = prelude.String.id,
        }),
        ActionName = schema.new({
            id = id.from(_N, "ReviewActionDetail", "ActionName"),
            type = "string",
            name = "ActionName",
            target_id = prelude.String.id,
        }),
        TargetId = schema.new({
            id = id.from(_N, "ReviewActionDetail", "TargetId"),
            type = "string",
            name = "TargetId",
            target_id = prelude.String.id,
        }),
        TargetType = schema.new({
            id = id.from(_N, "ReviewActionDetail", "TargetType"),
            type = "string",
            name = "TargetType",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ReviewActionDetail", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        CompleteTime = schema.new({
            id = id.from(_N, "ReviewActionDetail", "CompleteTime"),
            type = "timestamp",
            name = "CompleteTime",
            target_id = prelude.Timestamp.id,
        }),
        Result = schema.new({
            id = id.from(_N, "ReviewActionDetail", "Result"),
            type = "string",
            name = "Result",
            target_id = prelude.String.id,
        }),
        ErrorCode = schema.new({
            id = id.from(_N, "ReviewActionDetail", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
    },
})

M.ReviewResultDetail = schema.new({
    id = id.from(_N, "ReviewResultDetail"),
    type = "structure",
    members = {
        ActionId = schema.new({
            id = id.from(_N, "ReviewResultDetail", "ActionId"),
            type = "string",
            name = "ActionId",
            target_id = prelude.String.id,
        }),
        SubjectId = schema.new({
            id = id.from(_N, "ReviewResultDetail", "SubjectId"),
            type = "string",
            name = "SubjectId",
            target_id = prelude.String.id,
        }),
        SubjectType = schema.new({
            id = id.from(_N, "ReviewResultDetail", "SubjectType"),
            type = "string",
            name = "SubjectType",
            target_id = prelude.String.id,
        }),
        QuestionId = schema.new({
            id = id.from(_N, "ReviewResultDetail", "QuestionId"),
            type = "string",
            name = "QuestionId",
            target_id = prelude.String.id,
        }),
        Key = schema.new({
            id = id.from(_N, "ReviewResultDetail", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "ReviewResultDetail", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.ReviewReport = schema.new({
    id = id.from(_N, "ReviewReport"),
    type = "structure",
    members = {
        ReviewResults = schema.new({
            id = id.from(_N, "ReviewReport", "ReviewResults"),
            type = "list",
            name = "ReviewResults",
            target_id = prelude.Document.id,
            list_member = M.ReviewResultDetail,
        }),
        ReviewActions = schema.new({
            id = id.from(_N, "ReviewReport", "ReviewActions"),
            type = "list",
            name = "ReviewActions",
            target_id = prelude.Document.id,
            list_member = M.ReviewActionDetail,
        }),
    },
})

M.ListReviewPolicyResultsForHITOutput = schema.new({
    id = id.from(_N, "ListReviewPolicyResultsForHITOutput"),
    type = "structure",
    members = {
        HITId = schema.new({
            id = id.from(_N, "ListReviewPolicyResultsForHITOutput", "HITId"),
            type = "string",
            name = "HITId",
            target_id = prelude.String.id,
        }),
        AssignmentReviewPolicy = schema.new({
            id = id.from(_N, "ListReviewPolicyResultsForHITOutput", "AssignmentReviewPolicy"),
            type = "structure",
            name = "AssignmentReviewPolicy",
            target_id = id.from(_N, "ReviewPolicy"),
            target = M.ReviewPolicy,
        }),
        HITReviewPolicy = schema.new({
            id = id.from(_N, "ListReviewPolicyResultsForHITOutput", "HITReviewPolicy"),
            type = "structure",
            name = "HITReviewPolicy",
            target_id = id.from(_N, "ReviewPolicy"),
            target = M.ReviewPolicy,
        }),
        AssignmentReviewReport = schema.new({
            id = id.from(_N, "ListReviewPolicyResultsForHITOutput", "AssignmentReviewReport"),
            type = "structure",
            name = "AssignmentReviewReport",
            target_id = id.from(_N, "ReviewReport"),
            target = M.ReviewReport,
        }),
        HITReviewReport = schema.new({
            id = id.from(_N, "ListReviewPolicyResultsForHITOutput", "HITReviewReport"),
            type = "structure",
            name = "HITReviewReport",
            target_id = id.from(_N, "ReviewReport"),
            target = M.ReviewReport,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListReviewPolicyResultsForHITOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListWorkerBlocksInput = schema.new({
    id = id.from(_N, "ListWorkerBlocksInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListWorkerBlocksInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListWorkerBlocksInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.WorkerBlock = schema.new({
    id = id.from(_N, "WorkerBlock"),
    type = "structure",
    members = {
        WorkerId = schema.new({
            id = id.from(_N, "WorkerBlock", "WorkerId"),
            type = "string",
            name = "WorkerId",
            target_id = prelude.String.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "WorkerBlock", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
    },
})

M.ListWorkerBlocksOutput = schema.new({
    id = id.from(_N, "ListWorkerBlocksOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListWorkerBlocksOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        NumResults = schema.new({
            id = id.from(_N, "ListWorkerBlocksOutput", "NumResults"),
            type = "integer",
            name = "NumResults",
            target_id = prelude.Integer.id,
        }),
        WorkerBlocks = schema.new({
            id = id.from(_N, "ListWorkerBlocksOutput", "WorkerBlocks"),
            type = "list",
            name = "WorkerBlocks",
            target_id = prelude.Document.id,
            list_member = M.WorkerBlock,
        }),
    },
})

M.ListWorkersWithQualificationTypeInput = schema.new({
    id = id.from(_N, "ListWorkersWithQualificationTypeInput"),
    type = "structure",
    members = {
        QualificationTypeId = schema.new({
            id = id.from(_N, "ListWorkersWithQualificationTypeInput", "QualificationTypeId"),
            type = "string",
            name = "QualificationTypeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "ListWorkersWithQualificationTypeInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListWorkersWithQualificationTypeInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListWorkersWithQualificationTypeInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListWorkersWithQualificationTypeOutput = schema.new({
    id = id.from(_N, "ListWorkersWithQualificationTypeOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListWorkersWithQualificationTypeOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        NumResults = schema.new({
            id = id.from(_N, "ListWorkersWithQualificationTypeOutput", "NumResults"),
            type = "integer",
            name = "NumResults",
            target_id = prelude.Integer.id,
        }),
        Qualifications = schema.new({
            id = id.from(_N, "ListWorkersWithQualificationTypeOutput", "Qualifications"),
            type = "list",
            name = "Qualifications",
            target_id = prelude.Document.id,
            list_member = M.Qualification,
        }),
    },
})

M.NotifyWorkersInput = schema.new({
    id = id.from(_N, "NotifyWorkersInput"),
    type = "structure",
    members = {
        Subject = schema.new({
            id = id.from(_N, "NotifyWorkersInput", "Subject"),
            type = "string",
            name = "Subject",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MessageText = schema.new({
            id = id.from(_N, "NotifyWorkersInput", "MessageText"),
            type = "string",
            name = "MessageText",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WorkerIds = schema.new({
            id = id.from(_N, "NotifyWorkersInput", "WorkerIds"),
            type = "list",
            name = "WorkerIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.NotifyWorkersFailureStatus = schema.new({
    id = id.from(_N, "NotifyWorkersFailureStatus"),
    type = "structure",
    members = {
        NotifyWorkersFailureCode = schema.new({
            id = id.from(_N, "NotifyWorkersFailureStatus", "NotifyWorkersFailureCode"),
            type = "string",
            name = "NotifyWorkersFailureCode",
            target_id = prelude.String.id,
        }),
        NotifyWorkersFailureMessage = schema.new({
            id = id.from(_N, "NotifyWorkersFailureStatus", "NotifyWorkersFailureMessage"),
            type = "string",
            name = "NotifyWorkersFailureMessage",
            target_id = prelude.String.id,
        }),
        WorkerId = schema.new({
            id = id.from(_N, "NotifyWorkersFailureStatus", "WorkerId"),
            type = "string",
            name = "WorkerId",
            target_id = prelude.String.id,
        }),
    },
})

M.NotifyWorkersOutput = schema.new({
    id = id.from(_N, "NotifyWorkersOutput"),
    type = "structure",
    members = {
        NotifyWorkersFailureStatuses = schema.new({
            id = id.from(_N, "NotifyWorkersOutput", "NotifyWorkersFailureStatuses"),
            type = "list",
            name = "NotifyWorkersFailureStatuses",
            target_id = prelude.Document.id,
            list_member = M.NotifyWorkersFailureStatus,
        }),
    },
})

M.RejectAssignmentInput = schema.new({
    id = id.from(_N, "RejectAssignmentInput"),
    type = "structure",
    members = {
        AssignmentId = schema.new({
            id = id.from(_N, "RejectAssignmentInput", "AssignmentId"),
            type = "string",
            name = "AssignmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RequesterFeedback = schema.new({
            id = id.from(_N, "RejectAssignmentInput", "RequesterFeedback"),
            type = "string",
            name = "RequesterFeedback",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RejectAssignmentOutput = schema.new({
    id = id.from(_N, "RejectAssignmentOutput"),
    type = "structure",
})

M.RejectQualificationRequestInput = schema.new({
    id = id.from(_N, "RejectQualificationRequestInput"),
    type = "structure",
    members = {
        QualificationRequestId = schema.new({
            id = id.from(_N, "RejectQualificationRequestInput", "QualificationRequestId"),
            type = "string",
            name = "QualificationRequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Reason = schema.new({
            id = id.from(_N, "RejectQualificationRequestInput", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
    },
})

M.RejectQualificationRequestOutput = schema.new({
    id = id.from(_N, "RejectQualificationRequestOutput"),
    type = "structure",
})

M.SendBonusInput = schema.new({
    id = id.from(_N, "SendBonusInput"),
    type = "structure",
    members = {
        WorkerId = schema.new({
            id = id.from(_N, "SendBonusInput", "WorkerId"),
            type = "string",
            name = "WorkerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BonusAmount = schema.new({
            id = id.from(_N, "SendBonusInput", "BonusAmount"),
            type = "string",
            name = "BonusAmount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AssignmentId = schema.new({
            id = id.from(_N, "SendBonusInput", "AssignmentId"),
            type = "string",
            name = "AssignmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Reason = schema.new({
            id = id.from(_N, "SendBonusInput", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UniqueRequestToken = schema.new({
            id = id.from(_N, "SendBonusInput", "UniqueRequestToken"),
            type = "string",
            name = "UniqueRequestToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SendBonusOutput = schema.new({
    id = id.from(_N, "SendBonusOutput"),
    type = "structure",
})

M.NotificationSpecification = schema.new({
    id = id.from(_N, "NotificationSpecification"),
    type = "structure",
    members = {
        Destination = schema.new({
            id = id.from(_N, "NotificationSpecification", "Destination"),
            type = "string",
            name = "Destination",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Transport = schema.new({
            id = id.from(_N, "NotificationSpecification", "Transport"),
            type = "string",
            name = "Transport",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Version = schema.new({
            id = id.from(_N, "NotificationSpecification", "Version"),
            type = "string",
            name = "Version",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EventTypes = schema.new({
            id = id.from(_N, "NotificationSpecification", "EventTypes"),
            type = "list",
            name = "EventTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SendTestEventNotificationInput = schema.new({
    id = id.from(_N, "SendTestEventNotificationInput"),
    type = "structure",
    members = {
        Notification = schema.new({
            id = id.from(_N, "SendTestEventNotificationInput", "Notification"),
            type = "structure",
            name = "Notification",
            target_id = id.from(_N, "NotificationSpecification"),
            target = M.NotificationSpecification,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TestEventType = schema.new({
            id = id.from(_N, "SendTestEventNotificationInput", "TestEventType"),
            type = "string",
            name = "TestEventType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SendTestEventNotificationOutput = schema.new({
    id = id.from(_N, "SendTestEventNotificationOutput"),
    type = "structure",
})

M.UpdateExpirationForHITInput = schema.new({
    id = id.from(_N, "UpdateExpirationForHITInput"),
    type = "structure",
    members = {
        HITId = schema.new({
            id = id.from(_N, "UpdateExpirationForHITInput", "HITId"),
            type = "string",
            name = "HITId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExpireAt = schema.new({
            id = id.from(_N, "UpdateExpirationForHITInput", "ExpireAt"),
            type = "timestamp",
            name = "ExpireAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateExpirationForHITOutput = schema.new({
    id = id.from(_N, "UpdateExpirationForHITOutput"),
    type = "structure",
})

M.UpdateHITReviewStatusInput = schema.new({
    id = id.from(_N, "UpdateHITReviewStatusInput"),
    type = "structure",
    members = {
        HITId = schema.new({
            id = id.from(_N, "UpdateHITReviewStatusInput", "HITId"),
            type = "string",
            name = "HITId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Revert = schema.new({
            id = id.from(_N, "UpdateHITReviewStatusInput", "Revert"),
            type = "boolean",
            name = "Revert",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateHITReviewStatusOutput = schema.new({
    id = id.from(_N, "UpdateHITReviewStatusOutput"),
    type = "structure",
})

M.UpdateHITTypeOfHITInput = schema.new({
    id = id.from(_N, "UpdateHITTypeOfHITInput"),
    type = "structure",
    members = {
        HITId = schema.new({
            id = id.from(_N, "UpdateHITTypeOfHITInput", "HITId"),
            type = "string",
            name = "HITId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HITTypeId = schema.new({
            id = id.from(_N, "UpdateHITTypeOfHITInput", "HITTypeId"),
            type = "string",
            name = "HITTypeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateHITTypeOfHITOutput = schema.new({
    id = id.from(_N, "UpdateHITTypeOfHITOutput"),
    type = "structure",
})

M.UpdateNotificationSettingsInput = schema.new({
    id = id.from(_N, "UpdateNotificationSettingsInput"),
    type = "structure",
    members = {
        HITTypeId = schema.new({
            id = id.from(_N, "UpdateNotificationSettingsInput", "HITTypeId"),
            type = "string",
            name = "HITTypeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Notification = schema.new({
            id = id.from(_N, "UpdateNotificationSettingsInput", "Notification"),
            type = "structure",
            name = "Notification",
            target_id = id.from(_N, "NotificationSpecification"),
            target = M.NotificationSpecification,
        }),
        Active = schema.new({
            id = id.from(_N, "UpdateNotificationSettingsInput", "Active"),
            type = "boolean",
            name = "Active",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateNotificationSettingsOutput = schema.new({
    id = id.from(_N, "UpdateNotificationSettingsOutput"),
    type = "structure",
})

M.UpdateQualificationTypeInput = schema.new({
    id = id.from(_N, "UpdateQualificationTypeInput"),
    type = "structure",
    members = {
        QualificationTypeId = schema.new({
            id = id.from(_N, "UpdateQualificationTypeInput", "QualificationTypeId"),
            type = "string",
            name = "QualificationTypeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateQualificationTypeInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        QualificationTypeStatus = schema.new({
            id = id.from(_N, "UpdateQualificationTypeInput", "QualificationTypeStatus"),
            type = "string",
            name = "QualificationTypeStatus",
            target_id = prelude.String.id,
        }),
        Test = schema.new({
            id = id.from(_N, "UpdateQualificationTypeInput", "Test"),
            type = "string",
            name = "Test",
            target_id = prelude.String.id,
        }),
        AnswerKey = schema.new({
            id = id.from(_N, "UpdateQualificationTypeInput", "AnswerKey"),
            type = "string",
            name = "AnswerKey",
            target_id = prelude.String.id,
        }),
        TestDurationInSeconds = schema.new({
            id = id.from(_N, "UpdateQualificationTypeInput", "TestDurationInSeconds"),
            type = "long",
            name = "TestDurationInSeconds",
            target_id = prelude.Long.id,
        }),
        RetryDelayInSeconds = schema.new({
            id = id.from(_N, "UpdateQualificationTypeInput", "RetryDelayInSeconds"),
            type = "long",
            name = "RetryDelayInSeconds",
            target_id = prelude.Long.id,
        }),
        AutoGranted = schema.new({
            id = id.from(_N, "UpdateQualificationTypeInput", "AutoGranted"),
            type = "boolean",
            name = "AutoGranted",
            target_id = prelude.Boolean.id,
        }),
        AutoGrantedValue = schema.new({
            id = id.from(_N, "UpdateQualificationTypeInput", "AutoGrantedValue"),
            type = "integer",
            name = "AutoGrantedValue",
            target_id = prelude.Integer.id,
        }),
    },
})

M.UpdateQualificationTypeOutput = schema.new({
    id = id.from(_N, "UpdateQualificationTypeOutput"),
    type = "structure",
    members = {
        QualificationType = schema.new({
            id = id.from(_N, "UpdateQualificationTypeOutput", "QualificationType"),
            type = "structure",
            name = "QualificationType",
            target_id = id.from(_N, "QualificationType"),
            target = M.QualificationType,
        }),
    },
})

return M
