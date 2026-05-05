local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.arczonalshift"

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
    },
})

M.ListAutoshiftsInput = schema.new({
    id = id.from(_N, "ListAutoshiftsInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListAutoshiftsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        status = schema.new({
            id = id.from(_N, "ListAutoshiftsInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "status" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAutoshiftsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.AutoshiftSummary = schema.new({
    id = id.from(_N, "AutoshiftSummary"),
    type = "structure",
    members = {
        awayFrom = schema.new({
            id = id.from(_N, "AutoshiftSummary", "awayFrom"),
            type = "string",
            name = "awayFrom",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        endTime = schema.new({
            id = id.from(_N, "AutoshiftSummary", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
        }),
        startTime = schema.new({
            id = id.from(_N, "AutoshiftSummary", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "AutoshiftSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAutoshiftsOutput = schema.new({
    id = id.from(_N, "ListAutoshiftsOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListAutoshiftsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.AutoshiftSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAutoshiftsOutput", "nextToken"),
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
    },
})

M.AutoshiftInResource = schema.new({
    id = id.from(_N, "AutoshiftInResource"),
    type = "structure",
    members = {
        appliedStatus = schema.new({
            id = id.from(_N, "AutoshiftInResource", "appliedStatus"),
            type = "string",
            name = "appliedStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        awayFrom = schema.new({
            id = id.from(_N, "AutoshiftInResource", "awayFrom"),
            type = "string",
            name = "awayFrom",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "AutoshiftInResource", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetAutoshiftObserverNotificationStatusInput = schema.new({
    id = id.from(_N, "GetAutoshiftObserverNotificationStatusInput"),
    type = "structure",
})

M.GetAutoshiftObserverNotificationStatusOutput = schema.new({
    id = id.from(_N, "GetAutoshiftObserverNotificationStatusOutput"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "GetAutoshiftObserverNotificationStatusOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateAutoshiftObserverNotificationStatusInput = schema.new({
    id = id.from(_N, "UpdateAutoshiftObserverNotificationStatusInput"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "UpdateAutoshiftObserverNotificationStatusInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateAutoshiftObserverNotificationStatusOutput = schema.new({
    id = id.from(_N, "UpdateAutoshiftObserverNotificationStatusOutput"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "UpdateAutoshiftObserverNotificationStatusOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ControlCondition = schema.new({
    id = id.from(_N, "ControlCondition"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "ControlCondition", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        alarmIdentifier = schema.new({
            id = id.from(_N, "ControlCondition", "alarmIdentifier"),
            type = "string",
            name = "alarmIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CancelPracticeRunInput = schema.new({
    id = id.from(_N, "CancelPracticeRunInput"),
    type = "structure",
    members = {
        zonalShiftId = schema.new({
            id = id.from(_N, "CancelPracticeRunInput", "zonalShiftId"),
            type = "string",
            name = "zonalShiftId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.CancelPracticeRunOutput = schema.new({
    id = id.from(_N, "CancelPracticeRunOutput"),
    type = "structure",
    members = {
        zonalShiftId = schema.new({
            id = id.from(_N, "CancelPracticeRunOutput", "zonalShiftId"),
            type = "string",
            name = "zonalShiftId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceIdentifier = schema.new({
            id = id.from(_N, "CancelPracticeRunOutput", "resourceIdentifier"),
            type = "string",
            name = "resourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        awayFrom = schema.new({
            id = id.from(_N, "CancelPracticeRunOutput", "awayFrom"),
            type = "string",
            name = "awayFrom",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        expiryTime = schema.new({
            id = id.from(_N, "CancelPracticeRunOutput", "expiryTime"),
            type = "timestamp",
            name = "expiryTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "CancelPracticeRunOutput", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CancelPracticeRunOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        comment = schema.new({
            id = id.from(_N, "CancelPracticeRunOutput", "comment"),
            type = "string",
            name = "comment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reason = schema.new({
            id = id.from(_N, "ConflictException", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        zonalShiftId = schema.new({
            id = id.from(_N, "ConflictException", "zonalShiftId"),
            type = "string",
            name = "zonalShiftId",
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CancelZonalShiftInput = schema.new({
    id = id.from(_N, "CancelZonalShiftInput"),
    type = "structure",
    members = {
        zonalShiftId = schema.new({
            id = id.from(_N, "CancelZonalShiftInput", "zonalShiftId"),
            type = "string",
            name = "zonalShiftId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.CancelZonalShiftOutput = schema.new({
    id = id.from(_N, "CancelZonalShiftOutput"),
    type = "structure",
    members = {
        zonalShiftId = schema.new({
            id = id.from(_N, "CancelZonalShiftOutput", "zonalShiftId"),
            type = "string",
            name = "zonalShiftId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceIdentifier = schema.new({
            id = id.from(_N, "CancelZonalShiftOutput", "resourceIdentifier"),
            type = "string",
            name = "resourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        awayFrom = schema.new({
            id = id.from(_N, "CancelZonalShiftOutput", "awayFrom"),
            type = "string",
            name = "awayFrom",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        expiryTime = schema.new({
            id = id.from(_N, "CancelZonalShiftOutput", "expiryTime"),
            type = "timestamp",
            name = "expiryTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "CancelZonalShiftOutput", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CancelZonalShiftOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        comment = schema.new({
            id = id.from(_N, "CancelZonalShiftOutput", "comment"),
            type = "string",
            name = "comment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreatePracticeRunConfigurationInput = schema.new({
    id = id.from(_N, "CreatePracticeRunConfigurationInput"),
    type = "structure",
    members = {
        resourceIdentifier = schema.new({
            id = id.from(_N, "CreatePracticeRunConfigurationInput", "resourceIdentifier"),
            type = "string",
            name = "resourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        blockedWindows = schema.new({
            id = id.from(_N, "CreatePracticeRunConfigurationInput", "blockedWindows"),
            type = "list",
            name = "blockedWindows",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        blockedDates = schema.new({
            id = id.from(_N, "CreatePracticeRunConfigurationInput", "blockedDates"),
            type = "list",
            name = "blockedDates",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        blockingAlarms = schema.new({
            id = id.from(_N, "CreatePracticeRunConfigurationInput", "blockingAlarms"),
            type = "list",
            name = "blockingAlarms",
            target_id = prelude.Document.id,
            list_member = M.ControlCondition,
        }),
        allowedWindows = schema.new({
            id = id.from(_N, "CreatePracticeRunConfigurationInput", "allowedWindows"),
            type = "list",
            name = "allowedWindows",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        outcomeAlarms = schema.new({
            id = id.from(_N, "CreatePracticeRunConfigurationInput", "outcomeAlarms"),
            type = "list",
            name = "outcomeAlarms",
            target_id = prelude.Document.id,
            list_member = M.ControlCondition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PracticeRunConfiguration = schema.new({
    id = id.from(_N, "PracticeRunConfiguration"),
    type = "structure",
    members = {
        blockingAlarms = schema.new({
            id = id.from(_N, "PracticeRunConfiguration", "blockingAlarms"),
            type = "list",
            name = "blockingAlarms",
            target_id = prelude.Document.id,
            list_member = M.ControlCondition,
        }),
        outcomeAlarms = schema.new({
            id = id.from(_N, "PracticeRunConfiguration", "outcomeAlarms"),
            type = "list",
            name = "outcomeAlarms",
            target_id = prelude.Document.id,
            list_member = M.ControlCondition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        blockedWindows = schema.new({
            id = id.from(_N, "PracticeRunConfiguration", "blockedWindows"),
            type = "list",
            name = "blockedWindows",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        allowedWindows = schema.new({
            id = id.from(_N, "PracticeRunConfiguration", "allowedWindows"),
            type = "list",
            name = "allowedWindows",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        blockedDates = schema.new({
            id = id.from(_N, "PracticeRunConfiguration", "blockedDates"),
            type = "list",
            name = "blockedDates",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.DEFAULT] = { value = {} },
            },
        }),
    },
})

M.CreatePracticeRunConfigurationOutput = schema.new({
    id = id.from(_N, "CreatePracticeRunConfigurationOutput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "CreatePracticeRunConfigurationOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreatePracticeRunConfigurationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        zonalAutoshiftStatus = schema.new({
            id = id.from(_N, "CreatePracticeRunConfigurationOutput", "zonalAutoshiftStatus"),
            type = "string",
            name = "zonalAutoshiftStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        practiceRunConfiguration = schema.new({
            id = id.from(_N, "CreatePracticeRunConfigurationOutput", "practiceRunConfiguration"),
            type = "structure",
            name = "practiceRunConfiguration",
            target_id = id.from(_N, "PracticeRunConfiguration"),
            target = M.PracticeRunConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeletePracticeRunConfigurationInput = schema.new({
    id = id.from(_N, "DeletePracticeRunConfigurationInput"),
    type = "structure",
    members = {
        resourceIdentifier = schema.new({
            id = id.from(_N, "DeletePracticeRunConfigurationInput", "resourceIdentifier"),
            type = "string",
            name = "resourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeletePracticeRunConfigurationOutput = schema.new({
    id = id.from(_N, "DeletePracticeRunConfigurationOutput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "DeletePracticeRunConfigurationOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "DeletePracticeRunConfigurationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        zonalAutoshiftStatus = schema.new({
            id = id.from(_N, "DeletePracticeRunConfigurationOutput", "zonalAutoshiftStatus"),
            type = "string",
            name = "zonalAutoshiftStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetManagedResourceInput = schema.new({
    id = id.from(_N, "GetManagedResourceInput"),
    type = "structure",
    members = {
        resourceIdentifier = schema.new({
            id = id.from(_N, "GetManagedResourceInput", "resourceIdentifier"),
            type = "string",
            name = "resourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ZonalShiftInResource = schema.new({
    id = id.from(_N, "ZonalShiftInResource"),
    type = "structure",
    members = {
        appliedStatus = schema.new({
            id = id.from(_N, "ZonalShiftInResource", "appliedStatus"),
            type = "string",
            name = "appliedStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        zonalShiftId = schema.new({
            id = id.from(_N, "ZonalShiftInResource", "zonalShiftId"),
            type = "string",
            name = "zonalShiftId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceIdentifier = schema.new({
            id = id.from(_N, "ZonalShiftInResource", "resourceIdentifier"),
            type = "string",
            name = "resourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        awayFrom = schema.new({
            id = id.from(_N, "ZonalShiftInResource", "awayFrom"),
            type = "string",
            name = "awayFrom",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        expiryTime = schema.new({
            id = id.from(_N, "ZonalShiftInResource", "expiryTime"),
            type = "timestamp",
            name = "expiryTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "ZonalShiftInResource", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        comment = schema.new({
            id = id.from(_N, "ZonalShiftInResource", "comment"),
            type = "string",
            name = "comment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        shiftType = schema.new({
            id = id.from(_N, "ZonalShiftInResource", "shiftType"),
            type = "string",
            name = "shiftType",
            target_id = prelude.String.id,
        }),
        practiceRunOutcome = schema.new({
            id = id.from(_N, "ZonalShiftInResource", "practiceRunOutcome"),
            type = "string",
            name = "practiceRunOutcome",
            target_id = prelude.String.id,
        }),
    },
})

M.GetManagedResourceOutput = schema.new({
    id = id.from(_N, "GetManagedResourceOutput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetManagedResourceOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetManagedResourceOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        appliedWeights = schema.new({
            id = id.from(_N, "GetManagedResourceOutput", "appliedWeights"),
            type = "map",
            name = "appliedWeights",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Float,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        zonalShifts = schema.new({
            id = id.from(_N, "GetManagedResourceOutput", "zonalShifts"),
            type = "list",
            name = "zonalShifts",
            target_id = prelude.Document.id,
            list_member = M.ZonalShiftInResource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        autoshifts = schema.new({
            id = id.from(_N, "GetManagedResourceOutput", "autoshifts"),
            type = "list",
            name = "autoshifts",
            target_id = prelude.Document.id,
            list_member = M.AutoshiftInResource,
        }),
        practiceRunConfiguration = schema.new({
            id = id.from(_N, "GetManagedResourceOutput", "practiceRunConfiguration"),
            type = "structure",
            name = "practiceRunConfiguration",
            target_id = id.from(_N, "PracticeRunConfiguration"),
            target = M.PracticeRunConfiguration,
        }),
        zonalAutoshiftStatus = schema.new({
            id = id.from(_N, "GetManagedResourceOutput", "zonalAutoshiftStatus"),
            type = "string",
            name = "zonalAutoshiftStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ListManagedResourcesInput = schema.new({
    id = id.from(_N, "ListManagedResourcesInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListManagedResourcesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListManagedResourcesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ManagedResourceSummary = schema.new({
    id = id.from(_N, "ManagedResourceSummary"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "ManagedResourceSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ManagedResourceSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        availabilityZones = schema.new({
            id = id.from(_N, "ManagedResourceSummary", "availabilityZones"),
            type = "list",
            name = "availabilityZones",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appliedWeights = schema.new({
            id = id.from(_N, "ManagedResourceSummary", "appliedWeights"),
            type = "map",
            name = "appliedWeights",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Float,
        }),
        zonalShifts = schema.new({
            id = id.from(_N, "ManagedResourceSummary", "zonalShifts"),
            type = "list",
            name = "zonalShifts",
            target_id = prelude.Document.id,
            list_member = M.ZonalShiftInResource,
        }),
        autoshifts = schema.new({
            id = id.from(_N, "ManagedResourceSummary", "autoshifts"),
            type = "list",
            name = "autoshifts",
            target_id = prelude.Document.id,
            list_member = M.AutoshiftInResource,
        }),
        zonalAutoshiftStatus = schema.new({
            id = id.from(_N, "ManagedResourceSummary", "zonalAutoshiftStatus"),
            type = "string",
            name = "zonalAutoshiftStatus",
            target_id = prelude.String.id,
        }),
        practiceRunStatus = schema.new({
            id = id.from(_N, "ManagedResourceSummary", "practiceRunStatus"),
            type = "string",
            name = "practiceRunStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ListManagedResourcesOutput = schema.new({
    id = id.from(_N, "ListManagedResourcesOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListManagedResourcesOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.ManagedResourceSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListManagedResourcesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListZonalShiftsInput = schema.new({
    id = id.from(_N, "ListZonalShiftsInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListZonalShiftsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        status = schema.new({
            id = id.from(_N, "ListZonalShiftsInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "status" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListZonalShiftsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        resourceIdentifier = schema.new({
            id = id.from(_N, "ListZonalShiftsInput", "resourceIdentifier"),
            type = "string",
            name = "resourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "resourceIdentifier" },
            },
        }),
    },
})

M.ZonalShiftSummary = schema.new({
    id = id.from(_N, "ZonalShiftSummary"),
    type = "structure",
    members = {
        zonalShiftId = schema.new({
            id = id.from(_N, "ZonalShiftSummary", "zonalShiftId"),
            type = "string",
            name = "zonalShiftId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceIdentifier = schema.new({
            id = id.from(_N, "ZonalShiftSummary", "resourceIdentifier"),
            type = "string",
            name = "resourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        awayFrom = schema.new({
            id = id.from(_N, "ZonalShiftSummary", "awayFrom"),
            type = "string",
            name = "awayFrom",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        expiryTime = schema.new({
            id = id.from(_N, "ZonalShiftSummary", "expiryTime"),
            type = "timestamp",
            name = "expiryTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "ZonalShiftSummary", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "ZonalShiftSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        comment = schema.new({
            id = id.from(_N, "ZonalShiftSummary", "comment"),
            type = "string",
            name = "comment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        shiftType = schema.new({
            id = id.from(_N, "ZonalShiftSummary", "shiftType"),
            type = "string",
            name = "shiftType",
            target_id = prelude.String.id,
        }),
        practiceRunOutcome = schema.new({
            id = id.from(_N, "ZonalShiftSummary", "practiceRunOutcome"),
            type = "string",
            name = "practiceRunOutcome",
            target_id = prelude.String.id,
        }),
    },
})

M.ListZonalShiftsOutput = schema.new({
    id = id.from(_N, "ListZonalShiftsOutput"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListZonalShiftsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.ZonalShiftSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListZonalShiftsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateZonalAutoshiftConfigurationInput = schema.new({
    id = id.from(_N, "UpdateZonalAutoshiftConfigurationInput"),
    type = "structure",
    members = {
        resourceIdentifier = schema.new({
            id = id.from(_N, "UpdateZonalAutoshiftConfigurationInput", "resourceIdentifier"),
            type = "string",
            name = "resourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        zonalAutoshiftStatus = schema.new({
            id = id.from(_N, "UpdateZonalAutoshiftConfigurationInput", "zonalAutoshiftStatus"),
            type = "string",
            name = "zonalAutoshiftStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateZonalAutoshiftConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateZonalAutoshiftConfigurationOutput"),
    type = "structure",
    members = {
        resourceIdentifier = schema.new({
            id = id.from(_N, "UpdateZonalAutoshiftConfigurationOutput", "resourceIdentifier"),
            type = "string",
            name = "resourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        zonalAutoshiftStatus = schema.new({
            id = id.from(_N, "UpdateZonalAutoshiftConfigurationOutput", "zonalAutoshiftStatus"),
            type = "string",
            name = "zonalAutoshiftStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdatePracticeRunConfigurationInput = schema.new({
    id = id.from(_N, "UpdatePracticeRunConfigurationInput"),
    type = "structure",
    members = {
        resourceIdentifier = schema.new({
            id = id.from(_N, "UpdatePracticeRunConfigurationInput", "resourceIdentifier"),
            type = "string",
            name = "resourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        blockedWindows = schema.new({
            id = id.from(_N, "UpdatePracticeRunConfigurationInput", "blockedWindows"),
            type = "list",
            name = "blockedWindows",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        blockedDates = schema.new({
            id = id.from(_N, "UpdatePracticeRunConfigurationInput", "blockedDates"),
            type = "list",
            name = "blockedDates",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        blockingAlarms = schema.new({
            id = id.from(_N, "UpdatePracticeRunConfigurationInput", "blockingAlarms"),
            type = "list",
            name = "blockingAlarms",
            target_id = prelude.Document.id,
            list_member = M.ControlCondition,
        }),
        allowedWindows = schema.new({
            id = id.from(_N, "UpdatePracticeRunConfigurationInput", "allowedWindows"),
            type = "list",
            name = "allowedWindows",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        outcomeAlarms = schema.new({
            id = id.from(_N, "UpdatePracticeRunConfigurationInput", "outcomeAlarms"),
            type = "list",
            name = "outcomeAlarms",
            target_id = prelude.Document.id,
            list_member = M.ControlCondition,
        }),
    },
})

M.UpdatePracticeRunConfigurationOutput = schema.new({
    id = id.from(_N, "UpdatePracticeRunConfigurationOutput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "UpdatePracticeRunConfigurationOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdatePracticeRunConfigurationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        zonalAutoshiftStatus = schema.new({
            id = id.from(_N, "UpdatePracticeRunConfigurationOutput", "zonalAutoshiftStatus"),
            type = "string",
            name = "zonalAutoshiftStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        practiceRunConfiguration = schema.new({
            id = id.from(_N, "UpdatePracticeRunConfigurationOutput", "practiceRunConfiguration"),
            type = "structure",
            name = "practiceRunConfiguration",
            target_id = id.from(_N, "PracticeRunConfiguration"),
            target = M.PracticeRunConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateZonalShiftInput = schema.new({
    id = id.from(_N, "UpdateZonalShiftInput"),
    type = "structure",
    members = {
        zonalShiftId = schema.new({
            id = id.from(_N, "UpdateZonalShiftInput", "zonalShiftId"),
            type = "string",
            name = "zonalShiftId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        comment = schema.new({
            id = id.from(_N, "UpdateZonalShiftInput", "comment"),
            type = "string",
            name = "comment",
            target_id = prelude.String.id,
        }),
        expiresIn = schema.new({
            id = id.from(_N, "UpdateZonalShiftInput", "expiresIn"),
            type = "string",
            name = "expiresIn",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateZonalShiftOutput = schema.new({
    id = id.from(_N, "UpdateZonalShiftOutput"),
    type = "structure",
    members = {
        zonalShiftId = schema.new({
            id = id.from(_N, "UpdateZonalShiftOutput", "zonalShiftId"),
            type = "string",
            name = "zonalShiftId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceIdentifier = schema.new({
            id = id.from(_N, "UpdateZonalShiftOutput", "resourceIdentifier"),
            type = "string",
            name = "resourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        awayFrom = schema.new({
            id = id.from(_N, "UpdateZonalShiftOutput", "awayFrom"),
            type = "string",
            name = "awayFrom",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        expiryTime = schema.new({
            id = id.from(_N, "UpdateZonalShiftOutput", "expiryTime"),
            type = "timestamp",
            name = "expiryTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "UpdateZonalShiftOutput", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateZonalShiftOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        comment = schema.new({
            id = id.from(_N, "UpdateZonalShiftOutput", "comment"),
            type = "string",
            name = "comment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartPracticeRunInput = schema.new({
    id = id.from(_N, "StartPracticeRunInput"),
    type = "structure",
    members = {
        resourceIdentifier = schema.new({
            id = id.from(_N, "StartPracticeRunInput", "resourceIdentifier"),
            type = "string",
            name = "resourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        awayFrom = schema.new({
            id = id.from(_N, "StartPracticeRunInput", "awayFrom"),
            type = "string",
            name = "awayFrom",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        comment = schema.new({
            id = id.from(_N, "StartPracticeRunInput", "comment"),
            type = "string",
            name = "comment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartPracticeRunOutput = schema.new({
    id = id.from(_N, "StartPracticeRunOutput"),
    type = "structure",
    members = {
        zonalShiftId = schema.new({
            id = id.from(_N, "StartPracticeRunOutput", "zonalShiftId"),
            type = "string",
            name = "zonalShiftId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceIdentifier = schema.new({
            id = id.from(_N, "StartPracticeRunOutput", "resourceIdentifier"),
            type = "string",
            name = "resourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        awayFrom = schema.new({
            id = id.from(_N, "StartPracticeRunOutput", "awayFrom"),
            type = "string",
            name = "awayFrom",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        expiryTime = schema.new({
            id = id.from(_N, "StartPracticeRunOutput", "expiryTime"),
            type = "timestamp",
            name = "expiryTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "StartPracticeRunOutput", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "StartPracticeRunOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        comment = schema.new({
            id = id.from(_N, "StartPracticeRunOutput", "comment"),
            type = "string",
            name = "comment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartZonalShiftInput = schema.new({
    id = id.from(_N, "StartZonalShiftInput"),
    type = "structure",
    members = {
        resourceIdentifier = schema.new({
            id = id.from(_N, "StartZonalShiftInput", "resourceIdentifier"),
            type = "string",
            name = "resourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        awayFrom = schema.new({
            id = id.from(_N, "StartZonalShiftInput", "awayFrom"),
            type = "string",
            name = "awayFrom",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        expiresIn = schema.new({
            id = id.from(_N, "StartZonalShiftInput", "expiresIn"),
            type = "string",
            name = "expiresIn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        comment = schema.new({
            id = id.from(_N, "StartZonalShiftInput", "comment"),
            type = "string",
            name = "comment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartZonalShiftOutput = schema.new({
    id = id.from(_N, "StartZonalShiftOutput"),
    type = "structure",
    members = {
        zonalShiftId = schema.new({
            id = id.from(_N, "StartZonalShiftOutput", "zonalShiftId"),
            type = "string",
            name = "zonalShiftId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceIdentifier = schema.new({
            id = id.from(_N, "StartZonalShiftOutput", "resourceIdentifier"),
            type = "string",
            name = "resourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        awayFrom = schema.new({
            id = id.from(_N, "StartZonalShiftOutput", "awayFrom"),
            type = "string",
            name = "awayFrom",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        expiryTime = schema.new({
            id = id.from(_N, "StartZonalShiftOutput", "expiryTime"),
            type = "timestamp",
            name = "expiryTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "StartZonalShiftOutput", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "StartZonalShiftOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        comment = schema.new({
            id = id.from(_N, "StartZonalShiftOutput", "comment"),
            type = "string",
            name = "comment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

return M
