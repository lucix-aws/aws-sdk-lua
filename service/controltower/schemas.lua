

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.controltower"

local M = {}

M.Baselines = schema.new({ type = "list", list_member = M.BaselineSummary })

M.ControlOperations = schema.new({ type = "list", list_member = M.ControlOperationSummary })

M.EnabledBaselines = schema.new({ type = "list", list_member = M.EnabledBaselineSummary })

M.EnabledBaselineParameters = schema.new({ type = "list", list_member = M.EnabledBaselineParameter })

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.EnabledControls = schema.new({ type = "list", list_member = M.EnabledControlSummary })

M.EnabledControlParameters = schema.new({ type = "list", list_member = M.EnabledControlParameter })

M.LandingZoneOperations = schema.new({ type = "list", list_member = M.LandingZoneOperationSummary })

M.LandingZoneSummaries = schema.new({ type = "list", list_member = M.LandingZoneSummary })

M.RemediationTypes = schema.new({ type = "list", list_member = prelude.String })

M.TagKeys = schema.new({ type = "list", list_member = prelude.String })

M.ControlIdentifiers = schema.new({ type = "list", list_member = prelude.String })

M.TargetIdentifiers = schema.new({ type = "list", list_member = prelude.String })

M.EnabledControlIdentifiers = schema.new({ type = "list", list_member = prelude.String })

M.ControlOperationStatuses = schema.new({ type = "list", list_member = prelude.String })

M.ControlOperationTypes = schema.new({ type = "list", list_member = prelude.String })

M.EnabledBaselineTargetIdentifiers = schema.new({ type = "list", list_member = prelude.String })

M.EnabledBaselineBaselineIdentifiers = schema.new({ type = "list", list_member = prelude.String })

M.EnabledBaselineParentIdentifiers = schema.new({ type = "list", list_member = prelude.String })

M.EnabledBaselineEnablementStatuses = schema.new({ type = "list", list_member = prelude.String })

M.EnabledBaselineDriftStatuses = schema.new({ type = "list", list_member = prelude.String })

M.EnabledBaselineParameterSummaries = schema.new({ type = "list", list_member = M.EnabledBaselineParameterSummary })

M.EnablementStatuses = schema.new({ type = "list", list_member = prelude.String })

M.DriftStatuses = schema.new({ type = "list", list_member = prelude.String })

M.ParentIdentifiers = schema.new({ type = "list", list_member = prelude.String })

M.TargetRegions = schema.new({ type = "list", list_member = M.Region })

M.EnabledControlParameterSummaries = schema.new({ type = "list", list_member = M.EnabledControlParameterSummary })

M.LandingZoneOperationTypes = schema.new({ type = "list", list_member = prelude.String })

M.LandingZoneOperationStatuses = schema.new({ type = "list", list_member = prelude.String })

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

M.GetBaselineOperationInput = schema.new({
   id = id.from(_N, "GetBaselineOperationInput"),
   type = "structure",
   members = {
      operationIdentifier = schema.new({
         id = id.from(_N, "GetBaselineOperationInput", "operationIdentifier"),
         type = "string",
         name = "operationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BaselineOperation = schema.new({
   id = id.from(_N, "BaselineOperation"),
   type = "structure",
   members = {
      operationIdentifier = schema.new({
         id = id.from(_N, "BaselineOperation", "operationIdentifier"),
         type = "string",
         name = "operationIdentifier",
         target_id = prelude.String.id,
      }),
      operationType = schema.new({
         id = id.from(_N, "BaselineOperation", "operationType"),
         type = "string",
         name = "operationType",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "BaselineOperation", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      startTime = schema.new({
         id = id.from(_N, "BaselineOperation", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "BaselineOperation", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      statusMessage = schema.new({
         id = id.from(_N, "BaselineOperation", "statusMessage"),
         type = "string",
         name = "statusMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.GetBaselineOperationOutput = schema.new({
   id = id.from(_N, "GetBaselineOperationOutput"),
   type = "structure",
   members = {
      baselineOperation = schema.new({
         id = id.from(_N, "GetBaselineOperationOutput", "baselineOperation"),
         type = "structure",
         name = "baselineOperation",
         target_id = id.from(_N, "BaselineOperation"),
         target = M.BaselineOperation,
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
      serviceCode = schema.new({
         id = id.from(_N, "ThrottlingException", "serviceCode"),
         type = "string",
         name = "serviceCode",
         target_id = prelude.String.id,
      }),
      quotaCode = schema.new({
         id = id.from(_N, "ThrottlingException", "quotaCode"),
         type = "string",
         name = "quotaCode",
         target_id = prelude.String.id,
      }),
      retryAfterSeconds = schema.new({
         id = id.from(_N, "ThrottlingException", "retryAfterSeconds"),
         type = "integer",
         name = "retryAfterSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Retry-After" },
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
   },
})

M.GetBaselineInput = schema.new({
   id = id.from(_N, "GetBaselineInput"),
   type = "structure",
   members = {
      baselineIdentifier = schema.new({
         id = id.from(_N, "GetBaselineInput", "baselineIdentifier"),
         type = "string",
         name = "baselineIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetBaselineOutput = schema.new({
   id = id.from(_N, "GetBaselineOutput"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "GetBaselineOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "GetBaselineOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "GetBaselineOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBaselinesInput = schema.new({
   id = id.from(_N, "ListBaselinesInput"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListBaselinesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListBaselinesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.BaselineSummary = schema.new({
   id = id.from(_N, "BaselineSummary"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "BaselineSummary", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "BaselineSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "BaselineSummary", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBaselinesOutput = schema.new({
   id = id.from(_N, "ListBaselinesOutput"),
   type = "structure",
   members = {
      baselines = schema.new({
         id = id.from(_N, "ListBaselinesOutput", "baselines"),
         type = "list",
         name = "baselines",
         target_id = prelude.Document.id,
         list_member = M.BaselineSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBaselinesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetControlOperationInput = schema.new({
   id = id.from(_N, "GetControlOperationInput"),
   type = "structure",
   members = {
      operationIdentifier = schema.new({
         id = id.from(_N, "GetControlOperationInput", "operationIdentifier"),
         type = "string",
         name = "operationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ControlOperation = schema.new({
   id = id.from(_N, "ControlOperation"),
   type = "structure",
   members = {
      operationType = schema.new({
         id = id.from(_N, "ControlOperation", "operationType"),
         type = "string",
         name = "operationType",
         target_id = prelude.String.id,
      }),
      startTime = schema.new({
         id = id.from(_N, "ControlOperation", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "ControlOperation", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      status = schema.new({
         id = id.from(_N, "ControlOperation", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      statusMessage = schema.new({
         id = id.from(_N, "ControlOperation", "statusMessage"),
         type = "string",
         name = "statusMessage",
         target_id = prelude.String.id,
      }),
      operationIdentifier = schema.new({
         id = id.from(_N, "ControlOperation", "operationIdentifier"),
         type = "string",
         name = "operationIdentifier",
         target_id = prelude.String.id,
      }),
      controlIdentifier = schema.new({
         id = id.from(_N, "ControlOperation", "controlIdentifier"),
         type = "string",
         name = "controlIdentifier",
         target_id = prelude.String.id,
      }),
      targetIdentifier = schema.new({
         id = id.from(_N, "ControlOperation", "targetIdentifier"),
         type = "string",
         name = "targetIdentifier",
         target_id = prelude.String.id,
      }),
      enabledControlIdentifier = schema.new({
         id = id.from(_N, "ControlOperation", "enabledControlIdentifier"),
         type = "string",
         name = "enabledControlIdentifier",
         target_id = prelude.String.id,
      }),
   },
})

M.GetControlOperationOutput = schema.new({
   id = id.from(_N, "GetControlOperationOutput"),
   type = "structure",
   members = {
      controlOperation = schema.new({
         id = id.from(_N, "GetControlOperationOutput", "controlOperation"),
         type = "structure",
         name = "controlOperation",
         target_id = id.from(_N, "ControlOperation"),
         target = M.ControlOperation,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ControlOperationFilter = schema.new({
   id = id.from(_N, "ControlOperationFilter"),
   type = "structure",
   members = {
      controlIdentifiers = schema.new({
         id = id.from(_N, "ControlOperationFilter", "controlIdentifiers"),
         type = "list",
         name = "controlIdentifiers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      targetIdentifiers = schema.new({
         id = id.from(_N, "ControlOperationFilter", "targetIdentifiers"),
         type = "list",
         name = "targetIdentifiers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      enabledControlIdentifiers = schema.new({
         id = id.from(_N, "ControlOperationFilter", "enabledControlIdentifiers"),
         type = "list",
         name = "enabledControlIdentifiers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      statuses = schema.new({
         id = id.from(_N, "ControlOperationFilter", "statuses"),
         type = "list",
         name = "statuses",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      controlOperationTypes = schema.new({
         id = id.from(_N, "ControlOperationFilter", "controlOperationTypes"),
         type = "list",
         name = "controlOperationTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ListControlOperationsInput = schema.new({
   id = id.from(_N, "ListControlOperationsInput"),
   type = "structure",
   members = {
      filter = schema.new({
         id = id.from(_N, "ListControlOperationsInput", "filter"),
         type = "structure",
         name = "filter",
         target_id = id.from(_N, "ControlOperationFilter"),
         target = M.ControlOperationFilter,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListControlOperationsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListControlOperationsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ControlOperationSummary = schema.new({
   id = id.from(_N, "ControlOperationSummary"),
   type = "structure",
   members = {
      operationType = schema.new({
         id = id.from(_N, "ControlOperationSummary", "operationType"),
         type = "string",
         name = "operationType",
         target_id = prelude.String.id,
      }),
      startTime = schema.new({
         id = id.from(_N, "ControlOperationSummary", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "ControlOperationSummary", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      status = schema.new({
         id = id.from(_N, "ControlOperationSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      statusMessage = schema.new({
         id = id.from(_N, "ControlOperationSummary", "statusMessage"),
         type = "string",
         name = "statusMessage",
         target_id = prelude.String.id,
      }),
      operationIdentifier = schema.new({
         id = id.from(_N, "ControlOperationSummary", "operationIdentifier"),
         type = "string",
         name = "operationIdentifier",
         target_id = prelude.String.id,
      }),
      controlIdentifier = schema.new({
         id = id.from(_N, "ControlOperationSummary", "controlIdentifier"),
         type = "string",
         name = "controlIdentifier",
         target_id = prelude.String.id,
      }),
      targetIdentifier = schema.new({
         id = id.from(_N, "ControlOperationSummary", "targetIdentifier"),
         type = "string",
         name = "targetIdentifier",
         target_id = prelude.String.id,
      }),
      enabledControlIdentifier = schema.new({
         id = id.from(_N, "ControlOperationSummary", "enabledControlIdentifier"),
         type = "string",
         name = "enabledControlIdentifier",
         target_id = prelude.String.id,
      }),
   },
})

M.ListControlOperationsOutput = schema.new({
   id = id.from(_N, "ListControlOperationsOutput"),
   type = "structure",
   members = {
      controlOperations = schema.new({
         id = id.from(_N, "ListControlOperationsOutput", "controlOperations"),
         type = "list",
         name = "controlOperations",
         target_id = prelude.Document.id,
         list_member = M.ControlOperationSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListControlOperationsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
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
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisableControlInput = schema.new({
   id = id.from(_N, "DisableControlInput"),
   type = "structure",
   members = {
      controlIdentifier = schema.new({
         id = id.from(_N, "DisableControlInput", "controlIdentifier"),
         type = "string",
         name = "controlIdentifier",
         target_id = prelude.String.id,
      }),
      targetIdentifier = schema.new({
         id = id.from(_N, "DisableControlInput", "targetIdentifier"),
         type = "string",
         name = "targetIdentifier",
         target_id = prelude.String.id,
      }),
      enabledControlIdentifier = schema.new({
         id = id.from(_N, "DisableControlInput", "enabledControlIdentifier"),
         type = "string",
         name = "enabledControlIdentifier",
         target_id = prelude.String.id,
      }),
   },
})

M.DisableControlOutput = schema.new({
   id = id.from(_N, "DisableControlOutput"),
   type = "structure",
   members = {
      operationIdentifier = schema.new({
         id = id.from(_N, "DisableControlOutput", "operationIdentifier"),
         type = "string",
         name = "operationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
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
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisableBaselineInput = schema.new({
   id = id.from(_N, "DisableBaselineInput"),
   type = "structure",
   members = {
      enabledBaselineIdentifier = schema.new({
         id = id.from(_N, "DisableBaselineInput", "enabledBaselineIdentifier"),
         type = "string",
         name = "enabledBaselineIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisableBaselineOutput = schema.new({
   id = id.from(_N, "DisableBaselineOutput"),
   type = "structure",
   members = {
      operationIdentifier = schema.new({
         id = id.from(_N, "DisableBaselineOutput", "operationIdentifier"),
         type = "string",
         name = "operationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EnabledBaselineParameter = schema.new({
   id = id.from(_N, "EnabledBaselineParameter"),
   type = "structure",
   members = {
      key = schema.new({
         id = id.from(_N, "EnabledBaselineParameter", "key"),
         type = "string",
         name = "key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "EnabledBaselineParameter", "value"),
         type = "document",
         name = "value",
         target_id = prelude.Document.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EnableBaselineInput = schema.new({
   id = id.from(_N, "EnableBaselineInput"),
   type = "structure",
   members = {
      baselineVersion = schema.new({
         id = id.from(_N, "EnableBaselineInput", "baselineVersion"),
         type = "string",
         name = "baselineVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      parameters = schema.new({
         id = id.from(_N, "EnableBaselineInput", "parameters"),
         type = "list",
         name = "parameters",
         target_id = prelude.Document.id,
         list_member = M.EnabledBaselineParameter,
      }),
      baselineIdentifier = schema.new({
         id = id.from(_N, "EnableBaselineInput", "baselineIdentifier"),
         type = "string",
         name = "baselineIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      targetIdentifier = schema.new({
         id = id.from(_N, "EnableBaselineInput", "targetIdentifier"),
         type = "string",
         name = "targetIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "EnableBaselineInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.EnableBaselineOutput = schema.new({
   id = id.from(_N, "EnableBaselineOutput"),
   type = "structure",
   members = {
      operationIdentifier = schema.new({
         id = id.from(_N, "EnableBaselineOutput", "operationIdentifier"),
         type = "string",
         name = "operationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      arn = schema.new({
         id = id.from(_N, "EnableBaselineOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetEnabledBaselineInput = schema.new({
   id = id.from(_N, "GetEnabledBaselineInput"),
   type = "structure",
   members = {
      enabledBaselineIdentifier = schema.new({
         id = id.from(_N, "GetEnabledBaselineInput", "enabledBaselineIdentifier"),
         type = "string",
         name = "enabledBaselineIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EnabledBaselineInheritanceDrift = schema.new({
   id = id.from(_N, "EnabledBaselineInheritanceDrift"),
   type = "structure",
   members = {
      status = schema.new({
         id = id.from(_N, "EnabledBaselineInheritanceDrift", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
   },
})

M.EnabledBaselineDriftTypes = schema.new({
   id = id.from(_N, "EnabledBaselineDriftTypes"),
   type = "structure",
   members = {
      inheritance = schema.new({
         id = id.from(_N, "EnabledBaselineDriftTypes", "inheritance"),
         type = "structure",
         name = "inheritance",
         target_id = id.from(_N, "EnabledBaselineInheritanceDrift"),
         target = M.EnabledBaselineInheritanceDrift,
      }),
   },
})

M.EnabledBaselineDriftStatusSummary = schema.new({
   id = id.from(_N, "EnabledBaselineDriftStatusSummary"),
   type = "structure",
   members = {
      types = schema.new({
         id = id.from(_N, "EnabledBaselineDriftStatusSummary", "types"),
         type = "structure",
         name = "types",
         target_id = id.from(_N, "EnabledBaselineDriftTypes"),
         target = M.EnabledBaselineDriftTypes,
      }),
   },
})

M.EnabledBaselineParameterSummary = schema.new({
   id = id.from(_N, "EnabledBaselineParameterSummary"),
   type = "structure",
   members = {
      key = schema.new({
         id = id.from(_N, "EnabledBaselineParameterSummary", "key"),
         type = "string",
         name = "key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "EnabledBaselineParameterSummary", "value"),
         type = "document",
         name = "value",
         target_id = prelude.Document.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EnablementStatusSummary = schema.new({
   id = id.from(_N, "EnablementStatusSummary"),
   type = "structure",
   members = {
      status = schema.new({
         id = id.from(_N, "EnablementStatusSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      lastOperationIdentifier = schema.new({
         id = id.from(_N, "EnablementStatusSummary", "lastOperationIdentifier"),
         type = "string",
         name = "lastOperationIdentifier",
         target_id = prelude.String.id,
      }),
   },
})

M.EnabledBaselineDetails = schema.new({
   id = id.from(_N, "EnabledBaselineDetails"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "EnabledBaselineDetails", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      baselineIdentifier = schema.new({
         id = id.from(_N, "EnabledBaselineDetails", "baselineIdentifier"),
         type = "string",
         name = "baselineIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      baselineVersion = schema.new({
         id = id.from(_N, "EnabledBaselineDetails", "baselineVersion"),
         type = "string",
         name = "baselineVersion",
         target_id = prelude.String.id,
      }),
      driftStatusSummary = schema.new({
         id = id.from(_N, "EnabledBaselineDetails", "driftStatusSummary"),
         type = "structure",
         name = "driftStatusSummary",
         target_id = id.from(_N, "EnabledBaselineDriftStatusSummary"),
         target = M.EnabledBaselineDriftStatusSummary,
      }),
      targetIdentifier = schema.new({
         id = id.from(_N, "EnabledBaselineDetails", "targetIdentifier"),
         type = "string",
         name = "targetIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      parentIdentifier = schema.new({
         id = id.from(_N, "EnabledBaselineDetails", "parentIdentifier"),
         type = "string",
         name = "parentIdentifier",
         target_id = prelude.String.id,
      }),
      statusSummary = schema.new({
         id = id.from(_N, "EnabledBaselineDetails", "statusSummary"),
         type = "structure",
         name = "statusSummary",
         target_id = id.from(_N, "EnablementStatusSummary"),
         target = M.EnablementStatusSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      parameters = schema.new({
         id = id.from(_N, "EnabledBaselineDetails", "parameters"),
         type = "list",
         name = "parameters",
         target_id = prelude.Document.id,
         list_member = M.EnabledBaselineParameterSummary,
      }),
   },
})

M.GetEnabledBaselineOutput = schema.new({
   id = id.from(_N, "GetEnabledBaselineOutput"),
   type = "structure",
   members = {
      enabledBaselineDetails = schema.new({
         id = id.from(_N, "GetEnabledBaselineOutput", "enabledBaselineDetails"),
         type = "structure",
         name = "enabledBaselineDetails",
         target_id = id.from(_N, "EnabledBaselineDetails"),
         target = M.EnabledBaselineDetails,
      }),
   },
})

M.EnabledBaselineFilter = schema.new({
   id = id.from(_N, "EnabledBaselineFilter"),
   type = "structure",
   members = {
      targetIdentifiers = schema.new({
         id = id.from(_N, "EnabledBaselineFilter", "targetIdentifiers"),
         type = "list",
         name = "targetIdentifiers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      baselineIdentifiers = schema.new({
         id = id.from(_N, "EnabledBaselineFilter", "baselineIdentifiers"),
         type = "list",
         name = "baselineIdentifiers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      parentIdentifiers = schema.new({
         id = id.from(_N, "EnabledBaselineFilter", "parentIdentifiers"),
         type = "list",
         name = "parentIdentifiers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      statuses = schema.new({
         id = id.from(_N, "EnabledBaselineFilter", "statuses"),
         type = "list",
         name = "statuses",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      inheritanceDriftStatuses = schema.new({
         id = id.from(_N, "EnabledBaselineFilter", "inheritanceDriftStatuses"),
         type = "list",
         name = "inheritanceDriftStatuses",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ListEnabledBaselinesInput = schema.new({
   id = id.from(_N, "ListEnabledBaselinesInput"),
   type = "structure",
   members = {
      filter = schema.new({
         id = id.from(_N, "ListEnabledBaselinesInput", "filter"),
         type = "structure",
         name = "filter",
         target_id = id.from(_N, "EnabledBaselineFilter"),
         target = M.EnabledBaselineFilter,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListEnabledBaselinesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListEnabledBaselinesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      includeChildren = schema.new({
         id = id.from(_N, "ListEnabledBaselinesInput", "includeChildren"),
         type = "boolean",
         name = "includeChildren",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.EnabledBaselineSummary = schema.new({
   id = id.from(_N, "EnabledBaselineSummary"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "EnabledBaselineSummary", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      baselineIdentifier = schema.new({
         id = id.from(_N, "EnabledBaselineSummary", "baselineIdentifier"),
         type = "string",
         name = "baselineIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      baselineVersion = schema.new({
         id = id.from(_N, "EnabledBaselineSummary", "baselineVersion"),
         type = "string",
         name = "baselineVersion",
         target_id = prelude.String.id,
      }),
      driftStatusSummary = schema.new({
         id = id.from(_N, "EnabledBaselineSummary", "driftStatusSummary"),
         type = "structure",
         name = "driftStatusSummary",
         target_id = id.from(_N, "EnabledBaselineDriftStatusSummary"),
         target = M.EnabledBaselineDriftStatusSummary,
      }),
      targetIdentifier = schema.new({
         id = id.from(_N, "EnabledBaselineSummary", "targetIdentifier"),
         type = "string",
         name = "targetIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      parentIdentifier = schema.new({
         id = id.from(_N, "EnabledBaselineSummary", "parentIdentifier"),
         type = "string",
         name = "parentIdentifier",
         target_id = prelude.String.id,
      }),
      statusSummary = schema.new({
         id = id.from(_N, "EnabledBaselineSummary", "statusSummary"),
         type = "structure",
         name = "statusSummary",
         target_id = id.from(_N, "EnablementStatusSummary"),
         target = M.EnablementStatusSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListEnabledBaselinesOutput = schema.new({
   id = id.from(_N, "ListEnabledBaselinesOutput"),
   type = "structure",
   members = {
      enabledBaselines = schema.new({
         id = id.from(_N, "ListEnabledBaselinesOutput", "enabledBaselines"),
         type = "list",
         name = "enabledBaselines",
         target_id = prelude.Document.id,
         list_member = M.EnabledBaselineSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListEnabledBaselinesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ResetEnabledBaselineInput = schema.new({
   id = id.from(_N, "ResetEnabledBaselineInput"),
   type = "structure",
   members = {
      enabledBaselineIdentifier = schema.new({
         id = id.from(_N, "ResetEnabledBaselineInput", "enabledBaselineIdentifier"),
         type = "string",
         name = "enabledBaselineIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ResetEnabledBaselineOutput = schema.new({
   id = id.from(_N, "ResetEnabledBaselineOutput"),
   type = "structure",
   members = {
      operationIdentifier = schema.new({
         id = id.from(_N, "ResetEnabledBaselineOutput", "operationIdentifier"),
         type = "string",
         name = "operationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateEnabledBaselineInput = schema.new({
   id = id.from(_N, "UpdateEnabledBaselineInput"),
   type = "structure",
   members = {
      baselineVersion = schema.new({
         id = id.from(_N, "UpdateEnabledBaselineInput", "baselineVersion"),
         type = "string",
         name = "baselineVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      parameters = schema.new({
         id = id.from(_N, "UpdateEnabledBaselineInput", "parameters"),
         type = "list",
         name = "parameters",
         target_id = prelude.Document.id,
         list_member = M.EnabledBaselineParameter,
      }),
      enabledBaselineIdentifier = schema.new({
         id = id.from(_N, "UpdateEnabledBaselineInput", "enabledBaselineIdentifier"),
         type = "string",
         name = "enabledBaselineIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateEnabledBaselineOutput = schema.new({
   id = id.from(_N, "UpdateEnabledBaselineOutput"),
   type = "structure",
   members = {
      operationIdentifier = schema.new({
         id = id.from(_N, "UpdateEnabledBaselineOutput", "operationIdentifier"),
         type = "string",
         name = "operationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EnabledControlParameter = schema.new({
   id = id.from(_N, "EnabledControlParameter"),
   type = "structure",
   members = {
      key = schema.new({
         id = id.from(_N, "EnabledControlParameter", "key"),
         type = "string",
         name = "key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "EnabledControlParameter", "value"),
         type = "document",
         name = "value",
         target_id = prelude.Document.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EnableControlInput = schema.new({
   id = id.from(_N, "EnableControlInput"),
   type = "structure",
   members = {
      controlIdentifier = schema.new({
         id = id.from(_N, "EnableControlInput", "controlIdentifier"),
         type = "string",
         name = "controlIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      targetIdentifier = schema.new({
         id = id.from(_N, "EnableControlInput", "targetIdentifier"),
         type = "string",
         name = "targetIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "EnableControlInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      parameters = schema.new({
         id = id.from(_N, "EnableControlInput", "parameters"),
         type = "list",
         name = "parameters",
         target_id = prelude.Document.id,
         list_member = M.EnabledControlParameter,
      }),
   },
})

M.EnableControlOutput = schema.new({
   id = id.from(_N, "EnableControlOutput"),
   type = "structure",
   members = {
      operationIdentifier = schema.new({
         id = id.from(_N, "EnableControlOutput", "operationIdentifier"),
         type = "string",
         name = "operationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      arn = schema.new({
         id = id.from(_N, "EnableControlOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
   },
})

M.GetEnabledControlInput = schema.new({
   id = id.from(_N, "GetEnabledControlInput"),
   type = "structure",
   members = {
      enabledControlIdentifier = schema.new({
         id = id.from(_N, "GetEnabledControlInput", "enabledControlIdentifier"),
         type = "string",
         name = "enabledControlIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EnabledControlInheritanceDrift = schema.new({
   id = id.from(_N, "EnabledControlInheritanceDrift"),
   type = "structure",
   members = {
      status = schema.new({
         id = id.from(_N, "EnabledControlInheritanceDrift", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
   },
})

M.EnabledControlResourceDrift = schema.new({
   id = id.from(_N, "EnabledControlResourceDrift"),
   type = "structure",
   members = {
      status = schema.new({
         id = id.from(_N, "EnabledControlResourceDrift", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
   },
})

M.EnabledControlDriftTypes = schema.new({
   id = id.from(_N, "EnabledControlDriftTypes"),
   type = "structure",
   members = {
      inheritance = schema.new({
         id = id.from(_N, "EnabledControlDriftTypes", "inheritance"),
         type = "structure",
         name = "inheritance",
         target_id = id.from(_N, "EnabledControlInheritanceDrift"),
         target = M.EnabledControlInheritanceDrift,
      }),
      resource = schema.new({
         id = id.from(_N, "EnabledControlDriftTypes", "resource"),
         type = "structure",
         name = "resource",
         target_id = id.from(_N, "EnabledControlResourceDrift"),
         target = M.EnabledControlResourceDrift,
      }),
   },
})

M.DriftStatusSummary = schema.new({
   id = id.from(_N, "DriftStatusSummary"),
   type = "structure",
   members = {
      driftStatus = schema.new({
         id = id.from(_N, "DriftStatusSummary", "driftStatus"),
         type = "string",
         name = "driftStatus",
         target_id = prelude.String.id,
      }),
      types = schema.new({
         id = id.from(_N, "DriftStatusSummary", "types"),
         type = "structure",
         name = "types",
         target_id = id.from(_N, "EnabledControlDriftTypes"),
         target = M.EnabledControlDriftTypes,
      }),
   },
})

M.EnabledControlParameterSummary = schema.new({
   id = id.from(_N, "EnabledControlParameterSummary"),
   type = "structure",
   members = {
      key = schema.new({
         id = id.from(_N, "EnabledControlParameterSummary", "key"),
         type = "string",
         name = "key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "EnabledControlParameterSummary", "value"),
         type = "document",
         name = "value",
         target_id = prelude.Document.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Region = schema.new({
   id = id.from(_N, "Region"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "Region", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
   },
})

M.EnabledControlDetails = schema.new({
   id = id.from(_N, "EnabledControlDetails"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "EnabledControlDetails", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      controlIdentifier = schema.new({
         id = id.from(_N, "EnabledControlDetails", "controlIdentifier"),
         type = "string",
         name = "controlIdentifier",
         target_id = prelude.String.id,
      }),
      targetIdentifier = schema.new({
         id = id.from(_N, "EnabledControlDetails", "targetIdentifier"),
         type = "string",
         name = "targetIdentifier",
         target_id = prelude.String.id,
      }),
      statusSummary = schema.new({
         id = id.from(_N, "EnabledControlDetails", "statusSummary"),
         type = "structure",
         name = "statusSummary",
         target_id = id.from(_N, "EnablementStatusSummary"),
         target = M.EnablementStatusSummary,
      }),
      driftStatusSummary = schema.new({
         id = id.from(_N, "EnabledControlDetails", "driftStatusSummary"),
         type = "structure",
         name = "driftStatusSummary",
         target_id = id.from(_N, "DriftStatusSummary"),
         target = M.DriftStatusSummary,
      }),
      parentIdentifier = schema.new({
         id = id.from(_N, "EnabledControlDetails", "parentIdentifier"),
         type = "string",
         name = "parentIdentifier",
         target_id = prelude.String.id,
      }),
      targetRegions = schema.new({
         id = id.from(_N, "EnabledControlDetails", "targetRegions"),
         type = "list",
         name = "targetRegions",
         target_id = prelude.Document.id,
         list_member = M.Region,
      }),
      parameters = schema.new({
         id = id.from(_N, "EnabledControlDetails", "parameters"),
         type = "list",
         name = "parameters",
         target_id = prelude.Document.id,
         list_member = M.EnabledControlParameterSummary,
      }),
   },
})

M.GetEnabledControlOutput = schema.new({
   id = id.from(_N, "GetEnabledControlOutput"),
   type = "structure",
   members = {
      enabledControlDetails = schema.new({
         id = id.from(_N, "GetEnabledControlOutput", "enabledControlDetails"),
         type = "structure",
         name = "enabledControlDetails",
         target_id = id.from(_N, "EnabledControlDetails"),
         target = M.EnabledControlDetails,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EnabledControlFilter = schema.new({
   id = id.from(_N, "EnabledControlFilter"),
   type = "structure",
   members = {
      controlIdentifiers = schema.new({
         id = id.from(_N, "EnabledControlFilter", "controlIdentifiers"),
         type = "list",
         name = "controlIdentifiers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      statuses = schema.new({
         id = id.from(_N, "EnabledControlFilter", "statuses"),
         type = "list",
         name = "statuses",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      driftStatuses = schema.new({
         id = id.from(_N, "EnabledControlFilter", "driftStatuses"),
         type = "list",
         name = "driftStatuses",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      parentIdentifiers = schema.new({
         id = id.from(_N, "EnabledControlFilter", "parentIdentifiers"),
         type = "list",
         name = "parentIdentifiers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      inheritanceDriftStatuses = schema.new({
         id = id.from(_N, "EnabledControlFilter", "inheritanceDriftStatuses"),
         type = "list",
         name = "inheritanceDriftStatuses",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      resourceDriftStatuses = schema.new({
         id = id.from(_N, "EnabledControlFilter", "resourceDriftStatuses"),
         type = "list",
         name = "resourceDriftStatuses",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ListEnabledControlsInput = schema.new({
   id = id.from(_N, "ListEnabledControlsInput"),
   type = "structure",
   members = {
      targetIdentifier = schema.new({
         id = id.from(_N, "ListEnabledControlsInput", "targetIdentifier"),
         type = "string",
         name = "targetIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListEnabledControlsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListEnabledControlsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      filter = schema.new({
         id = id.from(_N, "ListEnabledControlsInput", "filter"),
         type = "structure",
         name = "filter",
         target_id = id.from(_N, "EnabledControlFilter"),
         target = M.EnabledControlFilter,
      }),
      includeChildren = schema.new({
         id = id.from(_N, "ListEnabledControlsInput", "includeChildren"),
         type = "boolean",
         name = "includeChildren",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.EnabledControlSummary = schema.new({
   id = id.from(_N, "EnabledControlSummary"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "EnabledControlSummary", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      controlIdentifier = schema.new({
         id = id.from(_N, "EnabledControlSummary", "controlIdentifier"),
         type = "string",
         name = "controlIdentifier",
         target_id = prelude.String.id,
      }),
      targetIdentifier = schema.new({
         id = id.from(_N, "EnabledControlSummary", "targetIdentifier"),
         type = "string",
         name = "targetIdentifier",
         target_id = prelude.String.id,
      }),
      statusSummary = schema.new({
         id = id.from(_N, "EnabledControlSummary", "statusSummary"),
         type = "structure",
         name = "statusSummary",
         target_id = id.from(_N, "EnablementStatusSummary"),
         target = M.EnablementStatusSummary,
      }),
      driftStatusSummary = schema.new({
         id = id.from(_N, "EnabledControlSummary", "driftStatusSummary"),
         type = "structure",
         name = "driftStatusSummary",
         target_id = id.from(_N, "DriftStatusSummary"),
         target = M.DriftStatusSummary,
      }),
      parentIdentifier = schema.new({
         id = id.from(_N, "EnabledControlSummary", "parentIdentifier"),
         type = "string",
         name = "parentIdentifier",
         target_id = prelude.String.id,
      }),
   },
})

M.ListEnabledControlsOutput = schema.new({
   id = id.from(_N, "ListEnabledControlsOutput"),
   type = "structure",
   members = {
      enabledControls = schema.new({
         id = id.from(_N, "ListEnabledControlsOutput", "enabledControls"),
         type = "list",
         name = "enabledControls",
         target_id = prelude.Document.id,
         list_member = M.EnabledControlSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListEnabledControlsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ResetEnabledControlInput = schema.new({
   id = id.from(_N, "ResetEnabledControlInput"),
   type = "structure",
   members = {
      enabledControlIdentifier = schema.new({
         id = id.from(_N, "ResetEnabledControlInput", "enabledControlIdentifier"),
         type = "string",
         name = "enabledControlIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ResetEnabledControlOutput = schema.new({
   id = id.from(_N, "ResetEnabledControlOutput"),
   type = "structure",
   members = {
      operationIdentifier = schema.new({
         id = id.from(_N, "ResetEnabledControlOutput", "operationIdentifier"),
         type = "string",
         name = "operationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateEnabledControlInput = schema.new({
   id = id.from(_N, "UpdateEnabledControlInput"),
   type = "structure",
   members = {
      parameters = schema.new({
         id = id.from(_N, "UpdateEnabledControlInput", "parameters"),
         type = "list",
         name = "parameters",
         target_id = prelude.Document.id,
         list_member = M.EnabledControlParameter,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      enabledControlIdentifier = schema.new({
         id = id.from(_N, "UpdateEnabledControlInput", "enabledControlIdentifier"),
         type = "string",
         name = "enabledControlIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateEnabledControlOutput = schema.new({
   id = id.from(_N, "UpdateEnabledControlOutput"),
   type = "structure",
   members = {
      operationIdentifier = schema.new({
         id = id.from(_N, "UpdateEnabledControlOutput", "operationIdentifier"),
         type = "string",
         name = "operationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetLandingZoneOperationInput = schema.new({
   id = id.from(_N, "GetLandingZoneOperationInput"),
   type = "structure",
   members = {
      operationIdentifier = schema.new({
         id = id.from(_N, "GetLandingZoneOperationInput", "operationIdentifier"),
         type = "string",
         name = "operationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.LandingZoneOperationDetail = schema.new({
   id = id.from(_N, "LandingZoneOperationDetail"),
   type = "structure",
   members = {
      operationType = schema.new({
         id = id.from(_N, "LandingZoneOperationDetail", "operationType"),
         type = "string",
         name = "operationType",
         target_id = prelude.String.id,
      }),
      operationIdentifier = schema.new({
         id = id.from(_N, "LandingZoneOperationDetail", "operationIdentifier"),
         type = "string",
         name = "operationIdentifier",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "LandingZoneOperationDetail", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      startTime = schema.new({
         id = id.from(_N, "LandingZoneOperationDetail", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "LandingZoneOperationDetail", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      statusMessage = schema.new({
         id = id.from(_N, "LandingZoneOperationDetail", "statusMessage"),
         type = "string",
         name = "statusMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.GetLandingZoneOperationOutput = schema.new({
   id = id.from(_N, "GetLandingZoneOperationOutput"),
   type = "structure",
   members = {
      operationDetails = schema.new({
         id = id.from(_N, "GetLandingZoneOperationOutput", "operationDetails"),
         type = "structure",
         name = "operationDetails",
         target_id = id.from(_N, "LandingZoneOperationDetail"),
         target = M.LandingZoneOperationDetail,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.LandingZoneOperationFilter = schema.new({
   id = id.from(_N, "LandingZoneOperationFilter"),
   type = "structure",
   members = {
      types = schema.new({
         id = id.from(_N, "LandingZoneOperationFilter", "types"),
         type = "list",
         name = "types",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      statuses = schema.new({
         id = id.from(_N, "LandingZoneOperationFilter", "statuses"),
         type = "list",
         name = "statuses",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ListLandingZoneOperationsInput = schema.new({
   id = id.from(_N, "ListLandingZoneOperationsInput"),
   type = "structure",
   members = {
      filter = schema.new({
         id = id.from(_N, "ListLandingZoneOperationsInput", "filter"),
         type = "structure",
         name = "filter",
         target_id = id.from(_N, "LandingZoneOperationFilter"),
         target = M.LandingZoneOperationFilter,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListLandingZoneOperationsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListLandingZoneOperationsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.LandingZoneOperationSummary = schema.new({
   id = id.from(_N, "LandingZoneOperationSummary"),
   type = "structure",
   members = {
      operationType = schema.new({
         id = id.from(_N, "LandingZoneOperationSummary", "operationType"),
         type = "string",
         name = "operationType",
         target_id = prelude.String.id,
      }),
      operationIdentifier = schema.new({
         id = id.from(_N, "LandingZoneOperationSummary", "operationIdentifier"),
         type = "string",
         name = "operationIdentifier",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "LandingZoneOperationSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
   },
})

M.ListLandingZoneOperationsOutput = schema.new({
   id = id.from(_N, "ListLandingZoneOperationsOutput"),
   type = "structure",
   members = {
      landingZoneOperations = schema.new({
         id = id.from(_N, "ListLandingZoneOperationsOutput", "landingZoneOperations"),
         type = "list",
         name = "landingZoneOperations",
         target_id = prelude.Document.id,
         list_member = M.LandingZoneOperationSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListLandingZoneOperationsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateLandingZoneInput = schema.new({
   id = id.from(_N, "CreateLandingZoneInput"),
   type = "structure",
   members = {
      version = schema.new({
         id = id.from(_N, "CreateLandingZoneInput", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      remediationTypes = schema.new({
         id = id.from(_N, "CreateLandingZoneInput", "remediationTypes"),
         type = "list",
         name = "remediationTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateLandingZoneInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      manifest = schema.new({
         id = id.from(_N, "CreateLandingZoneInput", "manifest"),
         type = "document",
         name = "manifest",
         target_id = prelude.Document.id,
      }),
   },
})

M.CreateLandingZoneOutput = schema.new({
   id = id.from(_N, "CreateLandingZoneOutput"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "CreateLandingZoneOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operationIdentifier = schema.new({
         id = id.from(_N, "CreateLandingZoneOutput", "operationIdentifier"),
         type = "string",
         name = "operationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteLandingZoneInput = schema.new({
   id = id.from(_N, "DeleteLandingZoneInput"),
   type = "structure",
   members = {
      landingZoneIdentifier = schema.new({
         id = id.from(_N, "DeleteLandingZoneInput", "landingZoneIdentifier"),
         type = "string",
         name = "landingZoneIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteLandingZoneOutput = schema.new({
   id = id.from(_N, "DeleteLandingZoneOutput"),
   type = "structure",
   members = {
      operationIdentifier = schema.new({
         id = id.from(_N, "DeleteLandingZoneOutput", "operationIdentifier"),
         type = "string",
         name = "operationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetLandingZoneInput = schema.new({
   id = id.from(_N, "GetLandingZoneInput"),
   type = "structure",
   members = {
      landingZoneIdentifier = schema.new({
         id = id.from(_N, "GetLandingZoneInput", "landingZoneIdentifier"),
         type = "string",
         name = "landingZoneIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.LandingZoneDriftStatusSummary = schema.new({
   id = id.from(_N, "LandingZoneDriftStatusSummary"),
   type = "structure",
   members = {
      status = schema.new({
         id = id.from(_N, "LandingZoneDriftStatusSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
   },
})

M.LandingZoneDetail = schema.new({
   id = id.from(_N, "LandingZoneDetail"),
   type = "structure",
   members = {
      version = schema.new({
         id = id.from(_N, "LandingZoneDetail", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      remediationTypes = schema.new({
         id = id.from(_N, "LandingZoneDetail", "remediationTypes"),
         type = "list",
         name = "remediationTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      arn = schema.new({
         id = id.from(_N, "LandingZoneDetail", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "LandingZoneDetail", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      latestAvailableVersion = schema.new({
         id = id.from(_N, "LandingZoneDetail", "latestAvailableVersion"),
         type = "string",
         name = "latestAvailableVersion",
         target_id = prelude.String.id,
      }),
      driftStatus = schema.new({
         id = id.from(_N, "LandingZoneDetail", "driftStatus"),
         type = "structure",
         name = "driftStatus",
         target_id = id.from(_N, "LandingZoneDriftStatusSummary"),
         target = M.LandingZoneDriftStatusSummary,
      }),
      manifest = schema.new({
         id = id.from(_N, "LandingZoneDetail", "manifest"),
         type = "document",
         name = "manifest",
         target_id = prelude.Document.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetLandingZoneOutput = schema.new({
   id = id.from(_N, "GetLandingZoneOutput"),
   type = "structure",
   members = {
      landingZone = schema.new({
         id = id.from(_N, "GetLandingZoneOutput", "landingZone"),
         type = "structure",
         name = "landingZone",
         target_id = id.from(_N, "LandingZoneDetail"),
         target = M.LandingZoneDetail,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListLandingZonesInput = schema.new({
   id = id.from(_N, "ListLandingZonesInput"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListLandingZonesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListLandingZonesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.LandingZoneSummary = schema.new({
   id = id.from(_N, "LandingZoneSummary"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "LandingZoneSummary", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
   },
})

M.ListLandingZonesOutput = schema.new({
   id = id.from(_N, "ListLandingZonesOutput"),
   type = "structure",
   members = {
      landingZones = schema.new({
         id = id.from(_N, "ListLandingZonesOutput", "landingZones"),
         type = "list",
         name = "landingZones",
         target_id = prelude.Document.id,
         list_member = M.LandingZoneSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListLandingZonesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ResetLandingZoneInput = schema.new({
   id = id.from(_N, "ResetLandingZoneInput"),
   type = "structure",
   members = {
      landingZoneIdentifier = schema.new({
         id = id.from(_N, "ResetLandingZoneInput", "landingZoneIdentifier"),
         type = "string",
         name = "landingZoneIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ResetLandingZoneOutput = schema.new({
   id = id.from(_N, "ResetLandingZoneOutput"),
   type = "structure",
   members = {
      operationIdentifier = schema.new({
         id = id.from(_N, "ResetLandingZoneOutput", "operationIdentifier"),
         type = "string",
         name = "operationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateLandingZoneInput = schema.new({
   id = id.from(_N, "UpdateLandingZoneInput"),
   type = "structure",
   members = {
      version = schema.new({
         id = id.from(_N, "UpdateLandingZoneInput", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      remediationTypes = schema.new({
         id = id.from(_N, "UpdateLandingZoneInput", "remediationTypes"),
         type = "list",
         name = "remediationTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      landingZoneIdentifier = schema.new({
         id = id.from(_N, "UpdateLandingZoneInput", "landingZoneIdentifier"),
         type = "string",
         name = "landingZoneIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      manifest = schema.new({
         id = id.from(_N, "UpdateLandingZoneInput", "manifest"),
         type = "document",
         name = "manifest",
         target_id = prelude.Document.id,
      }),
   },
})

M.UpdateLandingZoneOutput = schema.new({
   id = id.from(_N, "UpdateLandingZoneOutput"),
   type = "structure",
   members = {
      operationIdentifier = schema.new({
         id = id.from(_N, "UpdateLandingZoneOutput", "operationIdentifier"),
         type = "string",
         name = "operationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListTagsForResourceInput = schema.new({
   id = id.from(_N, "ListTagsForResourceInput"),
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
   id = id.from(_N, "ListTagsForResourceOutput"),
   type = "structure",
   members = {
      tags = schema.new({
         id = id.from(_N, "ListTagsForResourceOutput", "tags"),
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

M.TagResourceInput = schema.new({
   id = id.from(_N, "TagResourceInput"),
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
   id = id.from(_N, "TagResourceOutput"),
   type = "structure",
})

M.UntagResourceInput = schema.new({
   id = id.from(_N, "UntagResourceInput"),
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
   id = id.from(_N, "UntagResourceOutput"),
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
   id = id.from("com.amazonaws.controltower", "AWSControlTowerApis"),
   version = "2018-05-10",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateLandingZone = schema.operation({
   id = id.from("com.amazonaws.controltower", "CreateLandingZone"),
   input = M.CreateLandingZoneInput,
   output = M.CreateLandingZoneOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/create-landingzone" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteLandingZone = schema.operation({
   id = id.from("com.amazonaws.controltower", "DeleteLandingZone"),
   input = M.DeleteLandingZoneInput,
   output = M.DeleteLandingZoneOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/delete-landingzone" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisableBaseline = schema.operation({
   id = id.from("com.amazonaws.controltower", "DisableBaseline"),
   input = M.DisableBaselineInput,
   output = M.DisableBaselineOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/disable-baseline" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisableControl = schema.operation({
   id = id.from("com.amazonaws.controltower", "DisableControl"),
   input = M.DisableControlInput,
   output = M.DisableControlOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/disable-control" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.EnableBaseline = schema.operation({
   id = id.from("com.amazonaws.controltower", "EnableBaseline"),
   input = M.EnableBaselineInput,
   output = M.EnableBaselineOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/enable-baseline" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.EnableControl = schema.operation({
   id = id.from("com.amazonaws.controltower", "EnableControl"),
   input = M.EnableControlInput,
   output = M.EnableControlOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/enable-control" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetBaseline = schema.operation({
   id = id.from("com.amazonaws.controltower", "GetBaseline"),
   input = M.GetBaselineInput,
   output = M.GetBaselineOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/get-baseline" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetBaselineOperation = schema.operation({
   id = id.from("com.amazonaws.controltower", "GetBaselineOperation"),
   input = M.GetBaselineOperationInput,
   output = M.GetBaselineOperationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/get-baseline-operation" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetControlOperation = schema.operation({
   id = id.from("com.amazonaws.controltower", "GetControlOperation"),
   input = M.GetControlOperationInput,
   output = M.GetControlOperationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/get-control-operation" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetEnabledBaseline = schema.operation({
   id = id.from("com.amazonaws.controltower", "GetEnabledBaseline"),
   input = M.GetEnabledBaselineInput,
   output = M.GetEnabledBaselineOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/get-enabled-baseline" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetEnabledControl = schema.operation({
   id = id.from("com.amazonaws.controltower", "GetEnabledControl"),
   input = M.GetEnabledControlInput,
   output = M.GetEnabledControlOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/get-enabled-control" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetLandingZone = schema.operation({
   id = id.from("com.amazonaws.controltower", "GetLandingZone"),
   input = M.GetLandingZoneInput,
   output = M.GetLandingZoneOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/get-landingzone" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetLandingZoneOperation = schema.operation({
   id = id.from("com.amazonaws.controltower", "GetLandingZoneOperation"),
   input = M.GetLandingZoneOperationInput,
   output = M.GetLandingZoneOperationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/get-landingzone-operation" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBaselines = schema.operation({
   id = id.from("com.amazonaws.controltower", "ListBaselines"),
   input = M.ListBaselinesInput,
   output = M.ListBaselinesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/list-baselines" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListControlOperations = schema.operation({
   id = id.from("com.amazonaws.controltower", "ListControlOperations"),
   input = M.ListControlOperationsInput,
   output = M.ListControlOperationsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/list-control-operations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListEnabledBaselines = schema.operation({
   id = id.from("com.amazonaws.controltower", "ListEnabledBaselines"),
   input = M.ListEnabledBaselinesInput,
   output = M.ListEnabledBaselinesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/list-enabled-baselines" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListEnabledControls = schema.operation({
   id = id.from("com.amazonaws.controltower", "ListEnabledControls"),
   input = M.ListEnabledControlsInput,
   output = M.ListEnabledControlsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/list-enabled-controls" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListLandingZoneOperations = schema.operation({
   id = id.from("com.amazonaws.controltower", "ListLandingZoneOperations"),
   input = M.ListLandingZoneOperationsInput,
   output = M.ListLandingZoneOperationsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/list-landingzone-operations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListLandingZones = schema.operation({
   id = id.from("com.amazonaws.controltower", "ListLandingZones"),
   input = M.ListLandingZonesInput,
   output = M.ListLandingZonesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/list-landingzones" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.controltower", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ResetEnabledBaseline = schema.operation({
   id = id.from("com.amazonaws.controltower", "ResetEnabledBaseline"),
   input = M.ResetEnabledBaselineInput,
   output = M.ResetEnabledBaselineOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/reset-enabled-baseline" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ResetEnabledControl = schema.operation({
   id = id.from("com.amazonaws.controltower", "ResetEnabledControl"),
   input = M.ResetEnabledControlInput,
   output = M.ResetEnabledControlOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/reset-enabled-control" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ResetLandingZone = schema.operation({
   id = id.from("com.amazonaws.controltower", "ResetLandingZone"),
   input = M.ResetLandingZoneInput,
   output = M.ResetLandingZoneOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/reset-landingzone" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.controltower", "TagResource"),
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
   id = id.from("com.amazonaws.controltower", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateEnabledBaseline = schema.operation({
   id = id.from("com.amazonaws.controltower", "UpdateEnabledBaseline"),
   input = M.UpdateEnabledBaselineInput,
   output = M.UpdateEnabledBaselineOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/update-enabled-baseline" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateEnabledControl = schema.operation({
   id = id.from("com.amazonaws.controltower", "UpdateEnabledControl"),
   input = M.UpdateEnabledControlInput,
   output = M.UpdateEnabledControlOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/update-enabled-control" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateLandingZone = schema.operation({
   id = id.from("com.amazonaws.controltower", "UpdateLandingZone"),
   input = M.UpdateLandingZoneInput,
   output = M.UpdateLandingZoneOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/update-landingzone" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
