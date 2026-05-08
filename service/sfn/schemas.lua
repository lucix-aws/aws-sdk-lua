

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.sfn"

local M = {}

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.RoutingConfigurationList = schema.new({ type = "list", list_member = M.RoutingConfigurationListItem })

M.VariableReferences = schema.new({ type = "map", map_key = prelude.String, map_value = M.VariableNameList })

M.HistoryEventList = schema.new({ type = "list", list_member = M.HistoryEvent })

M.ActivityList = schema.new({ type = "list", list_member = M.ActivityListItem })

M.ExecutionList = schema.new({ type = "list", list_member = M.ExecutionListItem })

M.MapRunList = schema.new({ type = "list", list_member = M.MapRunListItem })

M.StateMachineAliasList = schema.new({ type = "list", list_member = M.StateMachineAliasListItem })

M.StateMachineList = schema.new({ type = "list", list_member = M.StateMachineListItem })

M.StateMachineVersionList = schema.new({ type = "list", list_member = M.StateMachineVersionListItem })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.ValidateStateMachineDefinitionDiagnosticList = schema.new({ type = "list", list_member = M.ValidateStateMachineDefinitionDiagnostic })

M.LogDestinationList = schema.new({ type = "list", list_member = M.LogDestination })

M.VariableNameList = schema.new({ type = "list", list_member = prelude.String })

M.AssignedVariables = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ActivityAlreadyExists = schema.new({
   id = id.from(_N, "ActivityAlreadyExists"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ActivityAlreadyExists", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ActivityDoesNotExist = schema.new({
   id = id.from(_N, "ActivityDoesNotExist"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ActivityDoesNotExist", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ActivityFailedEventDetails = schema.new({
   id = id.from(_N, "ActivityFailedEventDetails"),
   type = "structure",
   members = {
      error = schema.new({
         id = id.from(_N, "ActivityFailedEventDetails", "error"),
         type = "string",
         name = "error",
         target_id = prelude.String.id,
      }),
      cause = schema.new({
         id = id.from(_N, "ActivityFailedEventDetails", "cause"),
         type = "string",
         name = "cause",
         target_id = prelude.String.id,
      }),
   },
})

M.ActivityLimitExceeded = schema.new({
   id = id.from(_N, "ActivityLimitExceeded"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ActivityLimitExceeded", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ActivityListItem = schema.new({
   id = id.from(_N, "ActivityListItem"),
   type = "structure",
   members = {
      activityArn = schema.new({
         id = id.from(_N, "ActivityListItem", "activityArn"),
         type = "string",
         name = "activityArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "ActivityListItem", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      creationDate = schema.new({
         id = id.from(_N, "ActivityListItem", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.HistoryEventExecutionDataDetails = schema.new({
   id = id.from(_N, "HistoryEventExecutionDataDetails"),
   type = "structure",
   members = {
      truncated = schema.new({
         id = id.from(_N, "HistoryEventExecutionDataDetails", "truncated"),
         type = "boolean",
         name = "truncated",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.ActivityScheduledEventDetails = schema.new({
   id = id.from(_N, "ActivityScheduledEventDetails"),
   type = "structure",
   members = {
      resource = schema.new({
         id = id.from(_N, "ActivityScheduledEventDetails", "resource"),
         type = "string",
         name = "resource",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      input = schema.new({
         id = id.from(_N, "ActivityScheduledEventDetails", "input"),
         type = "string",
         name = "input",
         target_id = prelude.String.id,
      }),
      inputDetails = schema.new({
         id = id.from(_N, "ActivityScheduledEventDetails", "inputDetails"),
         type = "structure",
         name = "inputDetails",
         target_id = id.from(_N, "HistoryEventExecutionDataDetails"),
         target = M.HistoryEventExecutionDataDetails,
      }),
      timeoutInSeconds = schema.new({
         id = id.from(_N, "ActivityScheduledEventDetails", "timeoutInSeconds"),
         type = "long",
         name = "timeoutInSeconds",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      heartbeatInSeconds = schema.new({
         id = id.from(_N, "ActivityScheduledEventDetails", "heartbeatInSeconds"),
         type = "long",
         name = "heartbeatInSeconds",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
   },
})

M.ActivityScheduleFailedEventDetails = schema.new({
   id = id.from(_N, "ActivityScheduleFailedEventDetails"),
   type = "structure",
   members = {
      error = schema.new({
         id = id.from(_N, "ActivityScheduleFailedEventDetails", "error"),
         type = "string",
         name = "error",
         target_id = prelude.String.id,
      }),
      cause = schema.new({
         id = id.from(_N, "ActivityScheduleFailedEventDetails", "cause"),
         type = "string",
         name = "cause",
         target_id = prelude.String.id,
      }),
   },
})

M.ActivityStartedEventDetails = schema.new({
   id = id.from(_N, "ActivityStartedEventDetails"),
   type = "structure",
   members = {
      workerName = schema.new({
         id = id.from(_N, "ActivityStartedEventDetails", "workerName"),
         type = "string",
         name = "workerName",
         target_id = prelude.String.id,
      }),
   },
})

M.ActivitySucceededEventDetails = schema.new({
   id = id.from(_N, "ActivitySucceededEventDetails"),
   type = "structure",
   members = {
      output = schema.new({
         id = id.from(_N, "ActivitySucceededEventDetails", "output"),
         type = "string",
         name = "output",
         target_id = prelude.String.id,
      }),
      outputDetails = schema.new({
         id = id.from(_N, "ActivitySucceededEventDetails", "outputDetails"),
         type = "structure",
         name = "outputDetails",
         target_id = id.from(_N, "HistoryEventExecutionDataDetails"),
         target = M.HistoryEventExecutionDataDetails,
      }),
   },
})

M.ActivityTimedOutEventDetails = schema.new({
   id = id.from(_N, "ActivityTimedOutEventDetails"),
   type = "structure",
   members = {
      error = schema.new({
         id = id.from(_N, "ActivityTimedOutEventDetails", "error"),
         type = "string",
         name = "error",
         target_id = prelude.String.id,
      }),
      cause = schema.new({
         id = id.from(_N, "ActivityTimedOutEventDetails", "cause"),
         type = "string",
         name = "cause",
         target_id = prelude.String.id,
      }),
   },
})

M.ActivityWorkerLimitExceeded = schema.new({
   id = id.from(_N, "ActivityWorkerLimitExceeded"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ActivityWorkerLimitExceeded", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.AssignedVariablesDetails = schema.new({
   id = id.from(_N, "AssignedVariablesDetails"),
   type = "structure",
   members = {
      truncated = schema.new({
         id = id.from(_N, "AssignedVariablesDetails", "truncated"),
         type = "boolean",
         name = "truncated",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.EncryptionConfiguration = schema.new({
   id = id.from(_N, "EncryptionConfiguration"),
   type = "structure",
   members = {
      kmsKeyId = schema.new({
         id = id.from(_N, "EncryptionConfiguration", "kmsKeyId"),
         type = "string",
         name = "kmsKeyId",
         target_id = prelude.String.id,
      }),
      kmsDataKeyReusePeriodSeconds = schema.new({
         id = id.from(_N, "EncryptionConfiguration", "kmsDataKeyReusePeriodSeconds"),
         type = "integer",
         name = "kmsDataKeyReusePeriodSeconds",
         target_id = prelude.Integer.id,
      }),
      type = schema.new({
         id = id.from(_N, "EncryptionConfiguration", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Tag = schema.new({
   id = id.from(_N, "Tag"),
   type = "structure",
   members = {
      key = schema.new({
         id = id.from(_N, "Tag", "key"),
         type = "string",
         name = "key",
         target_id = prelude.String.id,
      }),
      value = schema.new({
         id = id.from(_N, "Tag", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateActivityInput = schema.new({
   id = id.from(_N, "CreateActivityInput"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "CreateActivityInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateActivityInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      encryptionConfiguration = schema.new({
         id = id.from(_N, "CreateActivityInput", "encryptionConfiguration"),
         type = "structure",
         name = "encryptionConfiguration",
         target_id = id.from(_N, "EncryptionConfiguration"),
         target = M.EncryptionConfiguration,
      }),
   },
})

M.CreateActivityOutput = schema.new({
   id = id.from(_N, "CreateActivityOutput"),
   type = "structure",
   members = {
      activityArn = schema.new({
         id = id.from(_N, "CreateActivityOutput", "activityArn"),
         type = "string",
         name = "activityArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      creationDate = schema.new({
         id = id.from(_N, "CreateActivityOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.InvalidEncryptionConfiguration = schema.new({
   id = id.from(_N, "InvalidEncryptionConfiguration"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidEncryptionConfiguration", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidName = schema.new({
   id = id.from(_N, "InvalidName"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidName", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.KmsAccessDeniedException = schema.new({
   id = id.from(_N, "KmsAccessDeniedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "KmsAccessDeniedException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.KmsThrottlingException = schema.new({
   id = id.from(_N, "KmsThrottlingException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "KmsThrottlingException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.TooManyTags = schema.new({
   id = id.from(_N, "TooManyTags"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "TooManyTags", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      resourceName = schema.new({
         id = id.from(_N, "TooManyTags", "resourceName"),
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

M.CloudWatchLogsLogGroup = schema.new({
   id = id.from(_N, "CloudWatchLogsLogGroup"),
   type = "structure",
   members = {
      logGroupArn = schema.new({
         id = id.from(_N, "CloudWatchLogsLogGroup", "logGroupArn"),
         type = "string",
         name = "logGroupArn",
         target_id = prelude.String.id,
      }),
   },
})

M.LogDestination = schema.new({
   id = id.from(_N, "LogDestination"),
   type = "structure",
   members = {
      cloudWatchLogsLogGroup = schema.new({
         id = id.from(_N, "LogDestination", "cloudWatchLogsLogGroup"),
         type = "structure",
         name = "cloudWatchLogsLogGroup",
         target_id = id.from(_N, "CloudWatchLogsLogGroup"),
         target = M.CloudWatchLogsLogGroup,
      }),
   },
})

M.LoggingConfiguration = schema.new({
   id = id.from(_N, "LoggingConfiguration"),
   type = "structure",
   members = {
      level = schema.new({
         id = id.from(_N, "LoggingConfiguration", "level"),
         type = "string",
         name = "level",
         target_id = prelude.String.id,
      }),
      includeExecutionData = schema.new({
         id = id.from(_N, "LoggingConfiguration", "includeExecutionData"),
         type = "boolean",
         name = "includeExecutionData",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      destinations = schema.new({
         id = id.from(_N, "LoggingConfiguration", "destinations"),
         type = "list",
         name = "destinations",
         target_id = prelude.Document.id,
         list_member = M.LogDestination,
      }),
   },
})

M.TracingConfiguration = schema.new({
   id = id.from(_N, "TracingConfiguration"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "TracingConfiguration", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.CreateStateMachineInput = schema.new({
   id = id.from(_N, "CreateStateMachineInput"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "CreateStateMachineInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      definition = schema.new({
         id = id.from(_N, "CreateStateMachineInput", "definition"),
         type = "string",
         name = "definition",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "CreateStateMachineInput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "CreateStateMachineInput", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      loggingConfiguration = schema.new({
         id = id.from(_N, "CreateStateMachineInput", "loggingConfiguration"),
         type = "structure",
         name = "loggingConfiguration",
         target_id = id.from(_N, "LoggingConfiguration"),
         target = M.LoggingConfiguration,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateStateMachineInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      tracingConfiguration = schema.new({
         id = id.from(_N, "CreateStateMachineInput", "tracingConfiguration"),
         type = "structure",
         name = "tracingConfiguration",
         target_id = id.from(_N, "TracingConfiguration"),
         target = M.TracingConfiguration,
      }),
      publish = schema.new({
         id = id.from(_N, "CreateStateMachineInput", "publish"),
         type = "boolean",
         name = "publish",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      versionDescription = schema.new({
         id = id.from(_N, "CreateStateMachineInput", "versionDescription"),
         type = "string",
         name = "versionDescription",
         target_id = prelude.String.id,
      }),
      encryptionConfiguration = schema.new({
         id = id.from(_N, "CreateStateMachineInput", "encryptionConfiguration"),
         type = "structure",
         name = "encryptionConfiguration",
         target_id = id.from(_N, "EncryptionConfiguration"),
         target = M.EncryptionConfiguration,
      }),
   },
})

M.CreateStateMachineOutput = schema.new({
   id = id.from(_N, "CreateStateMachineOutput"),
   type = "structure",
   members = {
      stateMachineArn = schema.new({
         id = id.from(_N, "CreateStateMachineOutput", "stateMachineArn"),
         type = "string",
         name = "stateMachineArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      creationDate = schema.new({
         id = id.from(_N, "CreateStateMachineOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      stateMachineVersionArn = schema.new({
         id = id.from(_N, "CreateStateMachineOutput", "stateMachineVersionArn"),
         type = "string",
         name = "stateMachineVersionArn",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidArn = schema.new({
   id = id.from(_N, "InvalidArn"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidArn", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidDefinition = schema.new({
   id = id.from(_N, "InvalidDefinition"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidDefinition", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidLoggingConfiguration = schema.new({
   id = id.from(_N, "InvalidLoggingConfiguration"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidLoggingConfiguration", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidTracingConfiguration = schema.new({
   id = id.from(_N, "InvalidTracingConfiguration"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidTracingConfiguration", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.StateMachineAlreadyExists = schema.new({
   id = id.from(_N, "StateMachineAlreadyExists"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "StateMachineAlreadyExists", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.StateMachineDeleting = schema.new({
   id = id.from(_N, "StateMachineDeleting"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "StateMachineDeleting", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.StateMachineLimitExceeded = schema.new({
   id = id.from(_N, "StateMachineLimitExceeded"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "StateMachineLimitExceeded", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.StateMachineTypeNotSupported = schema.new({
   id = id.from(_N, "StateMachineTypeNotSupported"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "StateMachineTypeNotSupported", "message"),
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
      reason = schema.new({
         id = id.from(_N, "ValidationException", "reason"),
         type = "string",
         name = "reason",
         target_id = prelude.String.id,
      }),
   },
})

M.RoutingConfigurationListItem = schema.new({
   id = id.from(_N, "RoutingConfigurationListItem"),
   type = "structure",
   members = {
      stateMachineVersionArn = schema.new({
         id = id.from(_N, "RoutingConfigurationListItem", "stateMachineVersionArn"),
         type = "string",
         name = "stateMachineVersionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      weight = schema.new({
         id = id.from(_N, "RoutingConfigurationListItem", "weight"),
         type = "integer",
         name = "weight",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.CreateStateMachineAliasInput = schema.new({
   id = id.from(_N, "CreateStateMachineAliasInput"),
   type = "structure",
   members = {
      description = schema.new({
         id = id.from(_N, "CreateStateMachineAliasInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "CreateStateMachineAliasInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      routingConfiguration = schema.new({
         id = id.from(_N, "CreateStateMachineAliasInput", "routingConfiguration"),
         type = "list",
         name = "routingConfiguration",
         target_id = prelude.Document.id,
         list_member = M.RoutingConfigurationListItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateStateMachineAliasOutput = schema.new({
   id = id.from(_N, "CreateStateMachineAliasOutput"),
   type = "structure",
   members = {
      stateMachineAliasArn = schema.new({
         id = id.from(_N, "CreateStateMachineAliasOutput", "stateMachineAliasArn"),
         type = "string",
         name = "stateMachineAliasArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      creationDate = schema.new({
         id = id.from(_N, "CreateStateMachineAliasOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ResourceNotFound = schema.new({
   id = id.from(_N, "ResourceNotFound"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ResourceNotFound", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      resourceName = schema.new({
         id = id.from(_N, "ResourceNotFound", "resourceName"),
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

M.DeleteActivityInput = schema.new({
   id = id.from(_N, "DeleteActivityInput"),
   type = "structure",
   members = {
      activityArn = schema.new({
         id = id.from(_N, "DeleteActivityInput", "activityArn"),
         type = "string",
         name = "activityArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteActivityOutput = schema.new({
   id = id.from(_N, "DeleteActivityOutput"),
   type = "structure",
})

M.DeleteStateMachineInput = schema.new({
   id = id.from(_N, "DeleteStateMachineInput"),
   type = "structure",
   members = {
      stateMachineArn = schema.new({
         id = id.from(_N, "DeleteStateMachineInput", "stateMachineArn"),
         type = "string",
         name = "stateMachineArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteStateMachineOutput = schema.new({
   id = id.from(_N, "DeleteStateMachineOutput"),
   type = "structure",
})

M.DeleteStateMachineAliasInput = schema.new({
   id = id.from(_N, "DeleteStateMachineAliasInput"),
   type = "structure",
   members = {
      stateMachineAliasArn = schema.new({
         id = id.from(_N, "DeleteStateMachineAliasInput", "stateMachineAliasArn"),
         type = "string",
         name = "stateMachineAliasArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteStateMachineAliasOutput = schema.new({
   id = id.from(_N, "DeleteStateMachineAliasOutput"),
   type = "structure",
})

M.DeleteStateMachineVersionInput = schema.new({
   id = id.from(_N, "DeleteStateMachineVersionInput"),
   type = "structure",
   members = {
      stateMachineVersionArn = schema.new({
         id = id.from(_N, "DeleteStateMachineVersionInput", "stateMachineVersionArn"),
         type = "string",
         name = "stateMachineVersionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteStateMachineVersionOutput = schema.new({
   id = id.from(_N, "DeleteStateMachineVersionOutput"),
   type = "structure",
})

M.DescribeActivityInput = schema.new({
   id = id.from(_N, "DescribeActivityInput"),
   type = "structure",
   members = {
      activityArn = schema.new({
         id = id.from(_N, "DescribeActivityInput", "activityArn"),
         type = "string",
         name = "activityArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeActivityOutput = schema.new({
   id = id.from(_N, "DescribeActivityOutput"),
   type = "structure",
   members = {
      activityArn = schema.new({
         id = id.from(_N, "DescribeActivityOutput", "activityArn"),
         type = "string",
         name = "activityArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "DescribeActivityOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      creationDate = schema.new({
         id = id.from(_N, "DescribeActivityOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      encryptionConfiguration = schema.new({
         id = id.from(_N, "DescribeActivityOutput", "encryptionConfiguration"),
         type = "structure",
         name = "encryptionConfiguration",
         target_id = id.from(_N, "EncryptionConfiguration"),
         target = M.EncryptionConfiguration,
      }),
   },
})

M.DescribeExecutionInput = schema.new({
   id = id.from(_N, "DescribeExecutionInput"),
   type = "structure",
   members = {
      executionArn = schema.new({
         id = id.from(_N, "DescribeExecutionInput", "executionArn"),
         type = "string",
         name = "executionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      includedData = schema.new({
         id = id.from(_N, "DescribeExecutionInput", "includedData"),
         type = "string",
         name = "includedData",
         target_id = prelude.String.id,
      }),
   },
})

M.CloudWatchEventsExecutionDataDetails = schema.new({
   id = id.from(_N, "CloudWatchEventsExecutionDataDetails"),
   type = "structure",
   members = {
      included = schema.new({
         id = id.from(_N, "CloudWatchEventsExecutionDataDetails", "included"),
         type = "boolean",
         name = "included",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.DescribeExecutionOutput = schema.new({
   id = id.from(_N, "DescribeExecutionOutput"),
   type = "structure",
   members = {
      executionArn = schema.new({
         id = id.from(_N, "DescribeExecutionOutput", "executionArn"),
         type = "string",
         name = "executionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      stateMachineArn = schema.new({
         id = id.from(_N, "DescribeExecutionOutput", "stateMachineArn"),
         type = "string",
         name = "stateMachineArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "DescribeExecutionOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "DescribeExecutionOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      startDate = schema.new({
         id = id.from(_N, "DescribeExecutionOutput", "startDate"),
         type = "timestamp",
         name = "startDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      stopDate = schema.new({
         id = id.from(_N, "DescribeExecutionOutput", "stopDate"),
         type = "timestamp",
         name = "stopDate",
         target_id = prelude.Timestamp.id,
      }),
      input = schema.new({
         id = id.from(_N, "DescribeExecutionOutput", "input"),
         type = "string",
         name = "input",
         target_id = prelude.String.id,
      }),
      inputDetails = schema.new({
         id = id.from(_N, "DescribeExecutionOutput", "inputDetails"),
         type = "structure",
         name = "inputDetails",
         target_id = id.from(_N, "CloudWatchEventsExecutionDataDetails"),
         target = M.CloudWatchEventsExecutionDataDetails,
      }),
      output = schema.new({
         id = id.from(_N, "DescribeExecutionOutput", "output"),
         type = "string",
         name = "output",
         target_id = prelude.String.id,
      }),
      outputDetails = schema.new({
         id = id.from(_N, "DescribeExecutionOutput", "outputDetails"),
         type = "structure",
         name = "outputDetails",
         target_id = id.from(_N, "CloudWatchEventsExecutionDataDetails"),
         target = M.CloudWatchEventsExecutionDataDetails,
      }),
      traceHeader = schema.new({
         id = id.from(_N, "DescribeExecutionOutput", "traceHeader"),
         type = "string",
         name = "traceHeader",
         target_id = prelude.String.id,
      }),
      mapRunArn = schema.new({
         id = id.from(_N, "DescribeExecutionOutput", "mapRunArn"),
         type = "string",
         name = "mapRunArn",
         target_id = prelude.String.id,
      }),
      error = schema.new({
         id = id.from(_N, "DescribeExecutionOutput", "error"),
         type = "string",
         name = "error",
         target_id = prelude.String.id,
      }),
      cause = schema.new({
         id = id.from(_N, "DescribeExecutionOutput", "cause"),
         type = "string",
         name = "cause",
         target_id = prelude.String.id,
      }),
      stateMachineVersionArn = schema.new({
         id = id.from(_N, "DescribeExecutionOutput", "stateMachineVersionArn"),
         type = "string",
         name = "stateMachineVersionArn",
         target_id = prelude.String.id,
      }),
      stateMachineAliasArn = schema.new({
         id = id.from(_N, "DescribeExecutionOutput", "stateMachineAliasArn"),
         type = "string",
         name = "stateMachineAliasArn",
         target_id = prelude.String.id,
      }),
      redriveCount = schema.new({
         id = id.from(_N, "DescribeExecutionOutput", "redriveCount"),
         type = "integer",
         name = "redriveCount",
         target_id = prelude.Integer.id,
      }),
      redriveDate = schema.new({
         id = id.from(_N, "DescribeExecutionOutput", "redriveDate"),
         type = "timestamp",
         name = "redriveDate",
         target_id = prelude.Timestamp.id,
      }),
      redriveStatus = schema.new({
         id = id.from(_N, "DescribeExecutionOutput", "redriveStatus"),
         type = "string",
         name = "redriveStatus",
         target_id = prelude.String.id,
      }),
      redriveStatusReason = schema.new({
         id = id.from(_N, "DescribeExecutionOutput", "redriveStatusReason"),
         type = "string",
         name = "redriveStatusReason",
         target_id = prelude.String.id,
      }),
   },
})

M.ExecutionDoesNotExist = schema.new({
   id = id.from(_N, "ExecutionDoesNotExist"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ExecutionDoesNotExist", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.KmsInvalidStateException = schema.new({
   id = id.from(_N, "KmsInvalidStateException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      kmsKeyState = schema.new({
         id = id.from(_N, "KmsInvalidStateException", "kmsKeyState"),
         type = "string",
         name = "kmsKeyState",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "KmsInvalidStateException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeMapRunInput = schema.new({
   id = id.from(_N, "DescribeMapRunInput"),
   type = "structure",
   members = {
      mapRunArn = schema.new({
         id = id.from(_N, "DescribeMapRunInput", "mapRunArn"),
         type = "string",
         name = "mapRunArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.MapRunExecutionCounts = schema.new({
   id = id.from(_N, "MapRunExecutionCounts"),
   type = "structure",
   members = {
      pending = schema.new({
         id = id.from(_N, "MapRunExecutionCounts", "pending"),
         type = "long",
         name = "pending",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      running = schema.new({
         id = id.from(_N, "MapRunExecutionCounts", "running"),
         type = "long",
         name = "running",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      succeeded = schema.new({
         id = id.from(_N, "MapRunExecutionCounts", "succeeded"),
         type = "long",
         name = "succeeded",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      failed = schema.new({
         id = id.from(_N, "MapRunExecutionCounts", "failed"),
         type = "long",
         name = "failed",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      timedOut = schema.new({
         id = id.from(_N, "MapRunExecutionCounts", "timedOut"),
         type = "long",
         name = "timedOut",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      aborted = schema.new({
         id = id.from(_N, "MapRunExecutionCounts", "aborted"),
         type = "long",
         name = "aborted",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      total = schema.new({
         id = id.from(_N, "MapRunExecutionCounts", "total"),
         type = "long",
         name = "total",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      resultsWritten = schema.new({
         id = id.from(_N, "MapRunExecutionCounts", "resultsWritten"),
         type = "long",
         name = "resultsWritten",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      failuresNotRedrivable = schema.new({
         id = id.from(_N, "MapRunExecutionCounts", "failuresNotRedrivable"),
         type = "long",
         name = "failuresNotRedrivable",
         target_id = prelude.Long.id,
      }),
      pendingRedrive = schema.new({
         id = id.from(_N, "MapRunExecutionCounts", "pendingRedrive"),
         type = "long",
         name = "pendingRedrive",
         target_id = prelude.Long.id,
      }),
   },
})

M.MapRunItemCounts = schema.new({
   id = id.from(_N, "MapRunItemCounts"),
   type = "structure",
   members = {
      pending = schema.new({
         id = id.from(_N, "MapRunItemCounts", "pending"),
         type = "long",
         name = "pending",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      running = schema.new({
         id = id.from(_N, "MapRunItemCounts", "running"),
         type = "long",
         name = "running",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      succeeded = schema.new({
         id = id.from(_N, "MapRunItemCounts", "succeeded"),
         type = "long",
         name = "succeeded",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      failed = schema.new({
         id = id.from(_N, "MapRunItemCounts", "failed"),
         type = "long",
         name = "failed",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      timedOut = schema.new({
         id = id.from(_N, "MapRunItemCounts", "timedOut"),
         type = "long",
         name = "timedOut",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      aborted = schema.new({
         id = id.from(_N, "MapRunItemCounts", "aborted"),
         type = "long",
         name = "aborted",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      total = schema.new({
         id = id.from(_N, "MapRunItemCounts", "total"),
         type = "long",
         name = "total",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      resultsWritten = schema.new({
         id = id.from(_N, "MapRunItemCounts", "resultsWritten"),
         type = "long",
         name = "resultsWritten",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      failuresNotRedrivable = schema.new({
         id = id.from(_N, "MapRunItemCounts", "failuresNotRedrivable"),
         type = "long",
         name = "failuresNotRedrivable",
         target_id = prelude.Long.id,
      }),
      pendingRedrive = schema.new({
         id = id.from(_N, "MapRunItemCounts", "pendingRedrive"),
         type = "long",
         name = "pendingRedrive",
         target_id = prelude.Long.id,
      }),
   },
})

M.DescribeMapRunOutput = schema.new({
   id = id.from(_N, "DescribeMapRunOutput"),
   type = "structure",
   members = {
      mapRunArn = schema.new({
         id = id.from(_N, "DescribeMapRunOutput", "mapRunArn"),
         type = "string",
         name = "mapRunArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      executionArn = schema.new({
         id = id.from(_N, "DescribeMapRunOutput", "executionArn"),
         type = "string",
         name = "executionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "DescribeMapRunOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      startDate = schema.new({
         id = id.from(_N, "DescribeMapRunOutput", "startDate"),
         type = "timestamp",
         name = "startDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      stopDate = schema.new({
         id = id.from(_N, "DescribeMapRunOutput", "stopDate"),
         type = "timestamp",
         name = "stopDate",
         target_id = prelude.Timestamp.id,
      }),
      maxConcurrency = schema.new({
         id = id.from(_N, "DescribeMapRunOutput", "maxConcurrency"),
         type = "integer",
         name = "maxConcurrency",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      toleratedFailurePercentage = schema.new({
         id = id.from(_N, "DescribeMapRunOutput", "toleratedFailurePercentage"),
         type = "float",
         name = "toleratedFailurePercentage",
         target_id = prelude.Float.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      toleratedFailureCount = schema.new({
         id = id.from(_N, "DescribeMapRunOutput", "toleratedFailureCount"),
         type = "long",
         name = "toleratedFailureCount",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      itemCounts = schema.new({
         id = id.from(_N, "DescribeMapRunOutput", "itemCounts"),
         type = "structure",
         name = "itemCounts",
         target_id = id.from(_N, "MapRunItemCounts"),
         target = M.MapRunItemCounts,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      executionCounts = schema.new({
         id = id.from(_N, "DescribeMapRunOutput", "executionCounts"),
         type = "structure",
         name = "executionCounts",
         target_id = id.from(_N, "MapRunExecutionCounts"),
         target = M.MapRunExecutionCounts,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      redriveCount = schema.new({
         id = id.from(_N, "DescribeMapRunOutput", "redriveCount"),
         type = "integer",
         name = "redriveCount",
         target_id = prelude.Integer.id,
      }),
      redriveDate = schema.new({
         id = id.from(_N, "DescribeMapRunOutput", "redriveDate"),
         type = "timestamp",
         name = "redriveDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeStateMachineInput = schema.new({
   id = id.from(_N, "DescribeStateMachineInput"),
   type = "structure",
   members = {
      stateMachineArn = schema.new({
         id = id.from(_N, "DescribeStateMachineInput", "stateMachineArn"),
         type = "string",
         name = "stateMachineArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      includedData = schema.new({
         id = id.from(_N, "DescribeStateMachineInput", "includedData"),
         type = "string",
         name = "includedData",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeStateMachineOutput = schema.new({
   id = id.from(_N, "DescribeStateMachineOutput"),
   type = "structure",
   members = {
      stateMachineArn = schema.new({
         id = id.from(_N, "DescribeStateMachineOutput", "stateMachineArn"),
         type = "string",
         name = "stateMachineArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "DescribeStateMachineOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "DescribeStateMachineOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      definition = schema.new({
         id = id.from(_N, "DescribeStateMachineOutput", "definition"),
         type = "string",
         name = "definition",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "DescribeStateMachineOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "DescribeStateMachineOutput", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      creationDate = schema.new({
         id = id.from(_N, "DescribeStateMachineOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      loggingConfiguration = schema.new({
         id = id.from(_N, "DescribeStateMachineOutput", "loggingConfiguration"),
         type = "structure",
         name = "loggingConfiguration",
         target_id = id.from(_N, "LoggingConfiguration"),
         target = M.LoggingConfiguration,
      }),
      tracingConfiguration = schema.new({
         id = id.from(_N, "DescribeStateMachineOutput", "tracingConfiguration"),
         type = "structure",
         name = "tracingConfiguration",
         target_id = id.from(_N, "TracingConfiguration"),
         target = M.TracingConfiguration,
      }),
      label = schema.new({
         id = id.from(_N, "DescribeStateMachineOutput", "label"),
         type = "string",
         name = "label",
         target_id = prelude.String.id,
      }),
      revisionId = schema.new({
         id = id.from(_N, "DescribeStateMachineOutput", "revisionId"),
         type = "string",
         name = "revisionId",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "DescribeStateMachineOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      encryptionConfiguration = schema.new({
         id = id.from(_N, "DescribeStateMachineOutput", "encryptionConfiguration"),
         type = "structure",
         name = "encryptionConfiguration",
         target_id = id.from(_N, "EncryptionConfiguration"),
         target = M.EncryptionConfiguration,
      }),
      variableReferences = schema.new({
         id = id.from(_N, "DescribeStateMachineOutput", "variableReferences"),
         type = "map",
         name = "variableReferences",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
   },
})

M.StateMachineDoesNotExist = schema.new({
   id = id.from(_N, "StateMachineDoesNotExist"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "StateMachineDoesNotExist", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeStateMachineAliasInput = schema.new({
   id = id.from(_N, "DescribeStateMachineAliasInput"),
   type = "structure",
   members = {
      stateMachineAliasArn = schema.new({
         id = id.from(_N, "DescribeStateMachineAliasInput", "stateMachineAliasArn"),
         type = "string",
         name = "stateMachineAliasArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeStateMachineAliasOutput = schema.new({
   id = id.from(_N, "DescribeStateMachineAliasOutput"),
   type = "structure",
   members = {
      stateMachineAliasArn = schema.new({
         id = id.from(_N, "DescribeStateMachineAliasOutput", "stateMachineAliasArn"),
         type = "string",
         name = "stateMachineAliasArn",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "DescribeStateMachineAliasOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "DescribeStateMachineAliasOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      routingConfiguration = schema.new({
         id = id.from(_N, "DescribeStateMachineAliasOutput", "routingConfiguration"),
         type = "list",
         name = "routingConfiguration",
         target_id = prelude.Document.id,
         list_member = M.RoutingConfigurationListItem,
      }),
      creationDate = schema.new({
         id = id.from(_N, "DescribeStateMachineAliasOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
      }),
      updateDate = schema.new({
         id = id.from(_N, "DescribeStateMachineAliasOutput", "updateDate"),
         type = "timestamp",
         name = "updateDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeStateMachineForExecutionInput = schema.new({
   id = id.from(_N, "DescribeStateMachineForExecutionInput"),
   type = "structure",
   members = {
      executionArn = schema.new({
         id = id.from(_N, "DescribeStateMachineForExecutionInput", "executionArn"),
         type = "string",
         name = "executionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      includedData = schema.new({
         id = id.from(_N, "DescribeStateMachineForExecutionInput", "includedData"),
         type = "string",
         name = "includedData",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeStateMachineForExecutionOutput = schema.new({
   id = id.from(_N, "DescribeStateMachineForExecutionOutput"),
   type = "structure",
   members = {
      stateMachineArn = schema.new({
         id = id.from(_N, "DescribeStateMachineForExecutionOutput", "stateMachineArn"),
         type = "string",
         name = "stateMachineArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "DescribeStateMachineForExecutionOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      definition = schema.new({
         id = id.from(_N, "DescribeStateMachineForExecutionOutput", "definition"),
         type = "string",
         name = "definition",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "DescribeStateMachineForExecutionOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      updateDate = schema.new({
         id = id.from(_N, "DescribeStateMachineForExecutionOutput", "updateDate"),
         type = "timestamp",
         name = "updateDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      loggingConfiguration = schema.new({
         id = id.from(_N, "DescribeStateMachineForExecutionOutput", "loggingConfiguration"),
         type = "structure",
         name = "loggingConfiguration",
         target_id = id.from(_N, "LoggingConfiguration"),
         target = M.LoggingConfiguration,
      }),
      tracingConfiguration = schema.new({
         id = id.from(_N, "DescribeStateMachineForExecutionOutput", "tracingConfiguration"),
         type = "structure",
         name = "tracingConfiguration",
         target_id = id.from(_N, "TracingConfiguration"),
         target = M.TracingConfiguration,
      }),
      mapRunArn = schema.new({
         id = id.from(_N, "DescribeStateMachineForExecutionOutput", "mapRunArn"),
         type = "string",
         name = "mapRunArn",
         target_id = prelude.String.id,
      }),
      label = schema.new({
         id = id.from(_N, "DescribeStateMachineForExecutionOutput", "label"),
         type = "string",
         name = "label",
         target_id = prelude.String.id,
      }),
      revisionId = schema.new({
         id = id.from(_N, "DescribeStateMachineForExecutionOutput", "revisionId"),
         type = "string",
         name = "revisionId",
         target_id = prelude.String.id,
      }),
      encryptionConfiguration = schema.new({
         id = id.from(_N, "DescribeStateMachineForExecutionOutput", "encryptionConfiguration"),
         type = "structure",
         name = "encryptionConfiguration",
         target_id = id.from(_N, "EncryptionConfiguration"),
         target = M.EncryptionConfiguration,
      }),
      variableReferences = schema.new({
         id = id.from(_N, "DescribeStateMachineForExecutionOutput", "variableReferences"),
         type = "map",
         name = "variableReferences",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
   },
})

M.GetActivityTaskInput = schema.new({
   id = id.from(_N, "GetActivityTaskInput"),
   type = "structure",
   members = {
      activityArn = schema.new({
         id = id.from(_N, "GetActivityTaskInput", "activityArn"),
         type = "string",
         name = "activityArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      workerName = schema.new({
         id = id.from(_N, "GetActivityTaskInput", "workerName"),
         type = "string",
         name = "workerName",
         target_id = prelude.String.id,
      }),
   },
})

M.GetActivityTaskOutput = schema.new({
   id = id.from(_N, "GetActivityTaskOutput"),
   type = "structure",
   members = {
      taskToken = schema.new({
         id = id.from(_N, "GetActivityTaskOutput", "taskToken"),
         type = "string",
         name = "taskToken",
         target_id = prelude.String.id,
      }),
      input = schema.new({
         id = id.from(_N, "GetActivityTaskOutput", "input"),
         type = "string",
         name = "input",
         target_id = prelude.String.id,
      }),
   },
})

M.GetExecutionHistoryInput = schema.new({
   id = id.from(_N, "GetExecutionHistoryInput"),
   type = "structure",
   members = {
      executionArn = schema.new({
         id = id.from(_N, "GetExecutionHistoryInput", "executionArn"),
         type = "string",
         name = "executionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "GetExecutionHistoryInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      reverseOrder = schema.new({
         id = id.from(_N, "GetExecutionHistoryInput", "reverseOrder"),
         type = "boolean",
         name = "reverseOrder",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "GetExecutionHistoryInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      includeExecutionData = schema.new({
         id = id.from(_N, "GetExecutionHistoryInput", "includeExecutionData"),
         type = "boolean",
         name = "includeExecutionData",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.EvaluationFailedEventDetails = schema.new({
   id = id.from(_N, "EvaluationFailedEventDetails"),
   type = "structure",
   members = {
      error = schema.new({
         id = id.from(_N, "EvaluationFailedEventDetails", "error"),
         type = "string",
         name = "error",
         target_id = prelude.String.id,
      }),
      cause = schema.new({
         id = id.from(_N, "EvaluationFailedEventDetails", "cause"),
         type = "string",
         name = "cause",
         target_id = prelude.String.id,
      }),
      location = schema.new({
         id = id.from(_N, "EvaluationFailedEventDetails", "location"),
         type = "string",
         name = "location",
         target_id = prelude.String.id,
      }),
      state = schema.new({
         id = id.from(_N, "EvaluationFailedEventDetails", "state"),
         type = "string",
         name = "state",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ExecutionAbortedEventDetails = schema.new({
   id = id.from(_N, "ExecutionAbortedEventDetails"),
   type = "structure",
   members = {
      error = schema.new({
         id = id.from(_N, "ExecutionAbortedEventDetails", "error"),
         type = "string",
         name = "error",
         target_id = prelude.String.id,
      }),
      cause = schema.new({
         id = id.from(_N, "ExecutionAbortedEventDetails", "cause"),
         type = "string",
         name = "cause",
         target_id = prelude.String.id,
      }),
   },
})

M.ExecutionFailedEventDetails = schema.new({
   id = id.from(_N, "ExecutionFailedEventDetails"),
   type = "structure",
   members = {
      error = schema.new({
         id = id.from(_N, "ExecutionFailedEventDetails", "error"),
         type = "string",
         name = "error",
         target_id = prelude.String.id,
      }),
      cause = schema.new({
         id = id.from(_N, "ExecutionFailedEventDetails", "cause"),
         type = "string",
         name = "cause",
         target_id = prelude.String.id,
      }),
   },
})

M.ExecutionRedrivenEventDetails = schema.new({
   id = id.from(_N, "ExecutionRedrivenEventDetails"),
   type = "structure",
   members = {
      redriveCount = schema.new({
         id = id.from(_N, "ExecutionRedrivenEventDetails", "redriveCount"),
         type = "integer",
         name = "redriveCount",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ExecutionStartedEventDetails = schema.new({
   id = id.from(_N, "ExecutionStartedEventDetails"),
   type = "structure",
   members = {
      input = schema.new({
         id = id.from(_N, "ExecutionStartedEventDetails", "input"),
         type = "string",
         name = "input",
         target_id = prelude.String.id,
      }),
      inputDetails = schema.new({
         id = id.from(_N, "ExecutionStartedEventDetails", "inputDetails"),
         type = "structure",
         name = "inputDetails",
         target_id = id.from(_N, "HistoryEventExecutionDataDetails"),
         target = M.HistoryEventExecutionDataDetails,
      }),
      roleArn = schema.new({
         id = id.from(_N, "ExecutionStartedEventDetails", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      stateMachineAliasArn = schema.new({
         id = id.from(_N, "ExecutionStartedEventDetails", "stateMachineAliasArn"),
         type = "string",
         name = "stateMachineAliasArn",
         target_id = prelude.String.id,
      }),
      stateMachineVersionArn = schema.new({
         id = id.from(_N, "ExecutionStartedEventDetails", "stateMachineVersionArn"),
         type = "string",
         name = "stateMachineVersionArn",
         target_id = prelude.String.id,
      }),
   },
})

M.ExecutionSucceededEventDetails = schema.new({
   id = id.from(_N, "ExecutionSucceededEventDetails"),
   type = "structure",
   members = {
      output = schema.new({
         id = id.from(_N, "ExecutionSucceededEventDetails", "output"),
         type = "string",
         name = "output",
         target_id = prelude.String.id,
      }),
      outputDetails = schema.new({
         id = id.from(_N, "ExecutionSucceededEventDetails", "outputDetails"),
         type = "structure",
         name = "outputDetails",
         target_id = id.from(_N, "HistoryEventExecutionDataDetails"),
         target = M.HistoryEventExecutionDataDetails,
      }),
   },
})

M.ExecutionTimedOutEventDetails = schema.new({
   id = id.from(_N, "ExecutionTimedOutEventDetails"),
   type = "structure",
   members = {
      error = schema.new({
         id = id.from(_N, "ExecutionTimedOutEventDetails", "error"),
         type = "string",
         name = "error",
         target_id = prelude.String.id,
      }),
      cause = schema.new({
         id = id.from(_N, "ExecutionTimedOutEventDetails", "cause"),
         type = "string",
         name = "cause",
         target_id = prelude.String.id,
      }),
   },
})

M.LambdaFunctionFailedEventDetails = schema.new({
   id = id.from(_N, "LambdaFunctionFailedEventDetails"),
   type = "structure",
   members = {
      error = schema.new({
         id = id.from(_N, "LambdaFunctionFailedEventDetails", "error"),
         type = "string",
         name = "error",
         target_id = prelude.String.id,
      }),
      cause = schema.new({
         id = id.from(_N, "LambdaFunctionFailedEventDetails", "cause"),
         type = "string",
         name = "cause",
         target_id = prelude.String.id,
      }),
   },
})

M.TaskCredentials = schema.new({
   id = id.from(_N, "TaskCredentials"),
   type = "structure",
   members = {
      roleArn = schema.new({
         id = id.from(_N, "TaskCredentials", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
   },
})

M.LambdaFunctionScheduledEventDetails = schema.new({
   id = id.from(_N, "LambdaFunctionScheduledEventDetails"),
   type = "structure",
   members = {
      resource = schema.new({
         id = id.from(_N, "LambdaFunctionScheduledEventDetails", "resource"),
         type = "string",
         name = "resource",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      input = schema.new({
         id = id.from(_N, "LambdaFunctionScheduledEventDetails", "input"),
         type = "string",
         name = "input",
         target_id = prelude.String.id,
      }),
      inputDetails = schema.new({
         id = id.from(_N, "LambdaFunctionScheduledEventDetails", "inputDetails"),
         type = "structure",
         name = "inputDetails",
         target_id = id.from(_N, "HistoryEventExecutionDataDetails"),
         target = M.HistoryEventExecutionDataDetails,
      }),
      timeoutInSeconds = schema.new({
         id = id.from(_N, "LambdaFunctionScheduledEventDetails", "timeoutInSeconds"),
         type = "long",
         name = "timeoutInSeconds",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      taskCredentials = schema.new({
         id = id.from(_N, "LambdaFunctionScheduledEventDetails", "taskCredentials"),
         type = "structure",
         name = "taskCredentials",
         target_id = id.from(_N, "TaskCredentials"),
         target = M.TaskCredentials,
      }),
   },
})

M.LambdaFunctionScheduleFailedEventDetails = schema.new({
   id = id.from(_N, "LambdaFunctionScheduleFailedEventDetails"),
   type = "structure",
   members = {
      error = schema.new({
         id = id.from(_N, "LambdaFunctionScheduleFailedEventDetails", "error"),
         type = "string",
         name = "error",
         target_id = prelude.String.id,
      }),
      cause = schema.new({
         id = id.from(_N, "LambdaFunctionScheduleFailedEventDetails", "cause"),
         type = "string",
         name = "cause",
         target_id = prelude.String.id,
      }),
   },
})

M.LambdaFunctionStartFailedEventDetails = schema.new({
   id = id.from(_N, "LambdaFunctionStartFailedEventDetails"),
   type = "structure",
   members = {
      error = schema.new({
         id = id.from(_N, "LambdaFunctionStartFailedEventDetails", "error"),
         type = "string",
         name = "error",
         target_id = prelude.String.id,
      }),
      cause = schema.new({
         id = id.from(_N, "LambdaFunctionStartFailedEventDetails", "cause"),
         type = "string",
         name = "cause",
         target_id = prelude.String.id,
      }),
   },
})

M.LambdaFunctionSucceededEventDetails = schema.new({
   id = id.from(_N, "LambdaFunctionSucceededEventDetails"),
   type = "structure",
   members = {
      output = schema.new({
         id = id.from(_N, "LambdaFunctionSucceededEventDetails", "output"),
         type = "string",
         name = "output",
         target_id = prelude.String.id,
      }),
      outputDetails = schema.new({
         id = id.from(_N, "LambdaFunctionSucceededEventDetails", "outputDetails"),
         type = "structure",
         name = "outputDetails",
         target_id = id.from(_N, "HistoryEventExecutionDataDetails"),
         target = M.HistoryEventExecutionDataDetails,
      }),
   },
})

M.LambdaFunctionTimedOutEventDetails = schema.new({
   id = id.from(_N, "LambdaFunctionTimedOutEventDetails"),
   type = "structure",
   members = {
      error = schema.new({
         id = id.from(_N, "LambdaFunctionTimedOutEventDetails", "error"),
         type = "string",
         name = "error",
         target_id = prelude.String.id,
      }),
      cause = schema.new({
         id = id.from(_N, "LambdaFunctionTimedOutEventDetails", "cause"),
         type = "string",
         name = "cause",
         target_id = prelude.String.id,
      }),
   },
})

M.MapIterationEventDetails = schema.new({
   id = id.from(_N, "MapIterationEventDetails"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "MapIterationEventDetails", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      index = schema.new({
         id = id.from(_N, "MapIterationEventDetails", "index"),
         type = "integer",
         name = "index",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.MapRunFailedEventDetails = schema.new({
   id = id.from(_N, "MapRunFailedEventDetails"),
   type = "structure",
   members = {
      error = schema.new({
         id = id.from(_N, "MapRunFailedEventDetails", "error"),
         type = "string",
         name = "error",
         target_id = prelude.String.id,
      }),
      cause = schema.new({
         id = id.from(_N, "MapRunFailedEventDetails", "cause"),
         type = "string",
         name = "cause",
         target_id = prelude.String.id,
      }),
   },
})

M.MapRunRedrivenEventDetails = schema.new({
   id = id.from(_N, "MapRunRedrivenEventDetails"),
   type = "structure",
   members = {
      mapRunArn = schema.new({
         id = id.from(_N, "MapRunRedrivenEventDetails", "mapRunArn"),
         type = "string",
         name = "mapRunArn",
         target_id = prelude.String.id,
      }),
      redriveCount = schema.new({
         id = id.from(_N, "MapRunRedrivenEventDetails", "redriveCount"),
         type = "integer",
         name = "redriveCount",
         target_id = prelude.Integer.id,
      }),
   },
})

M.MapRunStartedEventDetails = schema.new({
   id = id.from(_N, "MapRunStartedEventDetails"),
   type = "structure",
   members = {
      mapRunArn = schema.new({
         id = id.from(_N, "MapRunStartedEventDetails", "mapRunArn"),
         type = "string",
         name = "mapRunArn",
         target_id = prelude.String.id,
      }),
   },
})

M.MapStateStartedEventDetails = schema.new({
   id = id.from(_N, "MapStateStartedEventDetails"),
   type = "structure",
   members = {
      length = schema.new({
         id = id.from(_N, "MapStateStartedEventDetails", "length"),
         type = "integer",
         name = "length",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.StateEnteredEventDetails = schema.new({
   id = id.from(_N, "StateEnteredEventDetails"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "StateEnteredEventDetails", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      input = schema.new({
         id = id.from(_N, "StateEnteredEventDetails", "input"),
         type = "string",
         name = "input",
         target_id = prelude.String.id,
      }),
      inputDetails = schema.new({
         id = id.from(_N, "StateEnteredEventDetails", "inputDetails"),
         type = "structure",
         name = "inputDetails",
         target_id = id.from(_N, "HistoryEventExecutionDataDetails"),
         target = M.HistoryEventExecutionDataDetails,
      }),
   },
})

M.StateExitedEventDetails = schema.new({
   id = id.from(_N, "StateExitedEventDetails"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "StateExitedEventDetails", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      output = schema.new({
         id = id.from(_N, "StateExitedEventDetails", "output"),
         type = "string",
         name = "output",
         target_id = prelude.String.id,
      }),
      outputDetails = schema.new({
         id = id.from(_N, "StateExitedEventDetails", "outputDetails"),
         type = "structure",
         name = "outputDetails",
         target_id = id.from(_N, "HistoryEventExecutionDataDetails"),
         target = M.HistoryEventExecutionDataDetails,
      }),
      assignedVariables = schema.new({
         id = id.from(_N, "StateExitedEventDetails", "assignedVariables"),
         type = "map",
         name = "assignedVariables",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      assignedVariablesDetails = schema.new({
         id = id.from(_N, "StateExitedEventDetails", "assignedVariablesDetails"),
         type = "structure",
         name = "assignedVariablesDetails",
         target_id = id.from(_N, "AssignedVariablesDetails"),
         target = M.AssignedVariablesDetails,
      }),
   },
})

M.TaskFailedEventDetails = schema.new({
   id = id.from(_N, "TaskFailedEventDetails"),
   type = "structure",
   members = {
      resourceType = schema.new({
         id = id.from(_N, "TaskFailedEventDetails", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resource = schema.new({
         id = id.from(_N, "TaskFailedEventDetails", "resource"),
         type = "string",
         name = "resource",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      error = schema.new({
         id = id.from(_N, "TaskFailedEventDetails", "error"),
         type = "string",
         name = "error",
         target_id = prelude.String.id,
      }),
      cause = schema.new({
         id = id.from(_N, "TaskFailedEventDetails", "cause"),
         type = "string",
         name = "cause",
         target_id = prelude.String.id,
      }),
   },
})

M.TaskScheduledEventDetails = schema.new({
   id = id.from(_N, "TaskScheduledEventDetails"),
   type = "structure",
   members = {
      resourceType = schema.new({
         id = id.from(_N, "TaskScheduledEventDetails", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resource = schema.new({
         id = id.from(_N, "TaskScheduledEventDetails", "resource"),
         type = "string",
         name = "resource",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      region = schema.new({
         id = id.from(_N, "TaskScheduledEventDetails", "region"),
         type = "string",
         name = "region",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      parameters = schema.new({
         id = id.from(_N, "TaskScheduledEventDetails", "parameters"),
         type = "string",
         name = "parameters",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timeoutInSeconds = schema.new({
         id = id.from(_N, "TaskScheduledEventDetails", "timeoutInSeconds"),
         type = "long",
         name = "timeoutInSeconds",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      heartbeatInSeconds = schema.new({
         id = id.from(_N, "TaskScheduledEventDetails", "heartbeatInSeconds"),
         type = "long",
         name = "heartbeatInSeconds",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      taskCredentials = schema.new({
         id = id.from(_N, "TaskScheduledEventDetails", "taskCredentials"),
         type = "structure",
         name = "taskCredentials",
         target_id = id.from(_N, "TaskCredentials"),
         target = M.TaskCredentials,
      }),
   },
})

M.TaskStartedEventDetails = schema.new({
   id = id.from(_N, "TaskStartedEventDetails"),
   type = "structure",
   members = {
      resourceType = schema.new({
         id = id.from(_N, "TaskStartedEventDetails", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resource = schema.new({
         id = id.from(_N, "TaskStartedEventDetails", "resource"),
         type = "string",
         name = "resource",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TaskStartFailedEventDetails = schema.new({
   id = id.from(_N, "TaskStartFailedEventDetails"),
   type = "structure",
   members = {
      resourceType = schema.new({
         id = id.from(_N, "TaskStartFailedEventDetails", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resource = schema.new({
         id = id.from(_N, "TaskStartFailedEventDetails", "resource"),
         type = "string",
         name = "resource",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      error = schema.new({
         id = id.from(_N, "TaskStartFailedEventDetails", "error"),
         type = "string",
         name = "error",
         target_id = prelude.String.id,
      }),
      cause = schema.new({
         id = id.from(_N, "TaskStartFailedEventDetails", "cause"),
         type = "string",
         name = "cause",
         target_id = prelude.String.id,
      }),
   },
})

M.TaskSubmitFailedEventDetails = schema.new({
   id = id.from(_N, "TaskSubmitFailedEventDetails"),
   type = "structure",
   members = {
      resourceType = schema.new({
         id = id.from(_N, "TaskSubmitFailedEventDetails", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resource = schema.new({
         id = id.from(_N, "TaskSubmitFailedEventDetails", "resource"),
         type = "string",
         name = "resource",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      error = schema.new({
         id = id.from(_N, "TaskSubmitFailedEventDetails", "error"),
         type = "string",
         name = "error",
         target_id = prelude.String.id,
      }),
      cause = schema.new({
         id = id.from(_N, "TaskSubmitFailedEventDetails", "cause"),
         type = "string",
         name = "cause",
         target_id = prelude.String.id,
      }),
   },
})

M.TaskSubmittedEventDetails = schema.new({
   id = id.from(_N, "TaskSubmittedEventDetails"),
   type = "structure",
   members = {
      resourceType = schema.new({
         id = id.from(_N, "TaskSubmittedEventDetails", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resource = schema.new({
         id = id.from(_N, "TaskSubmittedEventDetails", "resource"),
         type = "string",
         name = "resource",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      output = schema.new({
         id = id.from(_N, "TaskSubmittedEventDetails", "output"),
         type = "string",
         name = "output",
         target_id = prelude.String.id,
      }),
      outputDetails = schema.new({
         id = id.from(_N, "TaskSubmittedEventDetails", "outputDetails"),
         type = "structure",
         name = "outputDetails",
         target_id = id.from(_N, "HistoryEventExecutionDataDetails"),
         target = M.HistoryEventExecutionDataDetails,
      }),
   },
})

M.TaskSucceededEventDetails = schema.new({
   id = id.from(_N, "TaskSucceededEventDetails"),
   type = "structure",
   members = {
      resourceType = schema.new({
         id = id.from(_N, "TaskSucceededEventDetails", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resource = schema.new({
         id = id.from(_N, "TaskSucceededEventDetails", "resource"),
         type = "string",
         name = "resource",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      output = schema.new({
         id = id.from(_N, "TaskSucceededEventDetails", "output"),
         type = "string",
         name = "output",
         target_id = prelude.String.id,
      }),
      outputDetails = schema.new({
         id = id.from(_N, "TaskSucceededEventDetails", "outputDetails"),
         type = "structure",
         name = "outputDetails",
         target_id = id.from(_N, "HistoryEventExecutionDataDetails"),
         target = M.HistoryEventExecutionDataDetails,
      }),
   },
})

M.TaskTimedOutEventDetails = schema.new({
   id = id.from(_N, "TaskTimedOutEventDetails"),
   type = "structure",
   members = {
      resourceType = schema.new({
         id = id.from(_N, "TaskTimedOutEventDetails", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resource = schema.new({
         id = id.from(_N, "TaskTimedOutEventDetails", "resource"),
         type = "string",
         name = "resource",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      error = schema.new({
         id = id.from(_N, "TaskTimedOutEventDetails", "error"),
         type = "string",
         name = "error",
         target_id = prelude.String.id,
      }),
      cause = schema.new({
         id = id.from(_N, "TaskTimedOutEventDetails", "cause"),
         type = "string",
         name = "cause",
         target_id = prelude.String.id,
      }),
   },
})

M.HistoryEvent = schema.new({
   id = id.from(_N, "HistoryEvent"),
   type = "structure",
   members = {
      timestamp = schema.new({
         id = id.from(_N, "HistoryEvent", "timestamp"),
         type = "timestamp",
         name = "timestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "HistoryEvent", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      id = schema.new({
         id = id.from(_N, "HistoryEvent", "id"),
         type = "long",
         name = "id",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      previousEventId = schema.new({
         id = id.from(_N, "HistoryEvent", "previousEventId"),
         type = "long",
         name = "previousEventId",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      activityFailedEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "activityFailedEventDetails"),
         type = "structure",
         name = "activityFailedEventDetails",
         target_id = id.from(_N, "ActivityFailedEventDetails"),
         target = M.ActivityFailedEventDetails,
      }),
      activityScheduleFailedEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "activityScheduleFailedEventDetails"),
         type = "structure",
         name = "activityScheduleFailedEventDetails",
         target_id = id.from(_N, "ActivityScheduleFailedEventDetails"),
         target = M.ActivityScheduleFailedEventDetails,
      }),
      activityScheduledEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "activityScheduledEventDetails"),
         type = "structure",
         name = "activityScheduledEventDetails",
         target_id = id.from(_N, "ActivityScheduledEventDetails"),
         target = M.ActivityScheduledEventDetails,
      }),
      activityStartedEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "activityStartedEventDetails"),
         type = "structure",
         name = "activityStartedEventDetails",
         target_id = id.from(_N, "ActivityStartedEventDetails"),
         target = M.ActivityStartedEventDetails,
      }),
      activitySucceededEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "activitySucceededEventDetails"),
         type = "structure",
         name = "activitySucceededEventDetails",
         target_id = id.from(_N, "ActivitySucceededEventDetails"),
         target = M.ActivitySucceededEventDetails,
      }),
      activityTimedOutEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "activityTimedOutEventDetails"),
         type = "structure",
         name = "activityTimedOutEventDetails",
         target_id = id.from(_N, "ActivityTimedOutEventDetails"),
         target = M.ActivityTimedOutEventDetails,
      }),
      taskFailedEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "taskFailedEventDetails"),
         type = "structure",
         name = "taskFailedEventDetails",
         target_id = id.from(_N, "TaskFailedEventDetails"),
         target = M.TaskFailedEventDetails,
      }),
      taskScheduledEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "taskScheduledEventDetails"),
         type = "structure",
         name = "taskScheduledEventDetails",
         target_id = id.from(_N, "TaskScheduledEventDetails"),
         target = M.TaskScheduledEventDetails,
      }),
      taskStartFailedEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "taskStartFailedEventDetails"),
         type = "structure",
         name = "taskStartFailedEventDetails",
         target_id = id.from(_N, "TaskStartFailedEventDetails"),
         target = M.TaskStartFailedEventDetails,
      }),
      taskStartedEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "taskStartedEventDetails"),
         type = "structure",
         name = "taskStartedEventDetails",
         target_id = id.from(_N, "TaskStartedEventDetails"),
         target = M.TaskStartedEventDetails,
      }),
      taskSubmitFailedEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "taskSubmitFailedEventDetails"),
         type = "structure",
         name = "taskSubmitFailedEventDetails",
         target_id = id.from(_N, "TaskSubmitFailedEventDetails"),
         target = M.TaskSubmitFailedEventDetails,
      }),
      taskSubmittedEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "taskSubmittedEventDetails"),
         type = "structure",
         name = "taskSubmittedEventDetails",
         target_id = id.from(_N, "TaskSubmittedEventDetails"),
         target = M.TaskSubmittedEventDetails,
      }),
      taskSucceededEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "taskSucceededEventDetails"),
         type = "structure",
         name = "taskSucceededEventDetails",
         target_id = id.from(_N, "TaskSucceededEventDetails"),
         target = M.TaskSucceededEventDetails,
      }),
      taskTimedOutEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "taskTimedOutEventDetails"),
         type = "structure",
         name = "taskTimedOutEventDetails",
         target_id = id.from(_N, "TaskTimedOutEventDetails"),
         target = M.TaskTimedOutEventDetails,
      }),
      executionFailedEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "executionFailedEventDetails"),
         type = "structure",
         name = "executionFailedEventDetails",
         target_id = id.from(_N, "ExecutionFailedEventDetails"),
         target = M.ExecutionFailedEventDetails,
      }),
      executionStartedEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "executionStartedEventDetails"),
         type = "structure",
         name = "executionStartedEventDetails",
         target_id = id.from(_N, "ExecutionStartedEventDetails"),
         target = M.ExecutionStartedEventDetails,
      }),
      executionSucceededEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "executionSucceededEventDetails"),
         type = "structure",
         name = "executionSucceededEventDetails",
         target_id = id.from(_N, "ExecutionSucceededEventDetails"),
         target = M.ExecutionSucceededEventDetails,
      }),
      executionAbortedEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "executionAbortedEventDetails"),
         type = "structure",
         name = "executionAbortedEventDetails",
         target_id = id.from(_N, "ExecutionAbortedEventDetails"),
         target = M.ExecutionAbortedEventDetails,
      }),
      executionTimedOutEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "executionTimedOutEventDetails"),
         type = "structure",
         name = "executionTimedOutEventDetails",
         target_id = id.from(_N, "ExecutionTimedOutEventDetails"),
         target = M.ExecutionTimedOutEventDetails,
      }),
      executionRedrivenEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "executionRedrivenEventDetails"),
         type = "structure",
         name = "executionRedrivenEventDetails",
         target_id = id.from(_N, "ExecutionRedrivenEventDetails"),
         target = M.ExecutionRedrivenEventDetails,
      }),
      mapStateStartedEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "mapStateStartedEventDetails"),
         type = "structure",
         name = "mapStateStartedEventDetails",
         target_id = id.from(_N, "MapStateStartedEventDetails"),
         target = M.MapStateStartedEventDetails,
      }),
      mapIterationStartedEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "mapIterationStartedEventDetails"),
         type = "structure",
         name = "mapIterationStartedEventDetails",
         target_id = id.from(_N, "MapIterationEventDetails"),
         target = M.MapIterationEventDetails,
      }),
      mapIterationSucceededEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "mapIterationSucceededEventDetails"),
         type = "structure",
         name = "mapIterationSucceededEventDetails",
         target_id = id.from(_N, "MapIterationEventDetails"),
         target = M.MapIterationEventDetails,
      }),
      mapIterationFailedEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "mapIterationFailedEventDetails"),
         type = "structure",
         name = "mapIterationFailedEventDetails",
         target_id = id.from(_N, "MapIterationEventDetails"),
         target = M.MapIterationEventDetails,
      }),
      mapIterationAbortedEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "mapIterationAbortedEventDetails"),
         type = "structure",
         name = "mapIterationAbortedEventDetails",
         target_id = id.from(_N, "MapIterationEventDetails"),
         target = M.MapIterationEventDetails,
      }),
      lambdaFunctionFailedEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "lambdaFunctionFailedEventDetails"),
         type = "structure",
         name = "lambdaFunctionFailedEventDetails",
         target_id = id.from(_N, "LambdaFunctionFailedEventDetails"),
         target = M.LambdaFunctionFailedEventDetails,
      }),
      lambdaFunctionScheduleFailedEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "lambdaFunctionScheduleFailedEventDetails"),
         type = "structure",
         name = "lambdaFunctionScheduleFailedEventDetails",
         target_id = id.from(_N, "LambdaFunctionScheduleFailedEventDetails"),
         target = M.LambdaFunctionScheduleFailedEventDetails,
      }),
      lambdaFunctionScheduledEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "lambdaFunctionScheduledEventDetails"),
         type = "structure",
         name = "lambdaFunctionScheduledEventDetails",
         target_id = id.from(_N, "LambdaFunctionScheduledEventDetails"),
         target = M.LambdaFunctionScheduledEventDetails,
      }),
      lambdaFunctionStartFailedEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "lambdaFunctionStartFailedEventDetails"),
         type = "structure",
         name = "lambdaFunctionStartFailedEventDetails",
         target_id = id.from(_N, "LambdaFunctionStartFailedEventDetails"),
         target = M.LambdaFunctionStartFailedEventDetails,
      }),
      lambdaFunctionSucceededEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "lambdaFunctionSucceededEventDetails"),
         type = "structure",
         name = "lambdaFunctionSucceededEventDetails",
         target_id = id.from(_N, "LambdaFunctionSucceededEventDetails"),
         target = M.LambdaFunctionSucceededEventDetails,
      }),
      lambdaFunctionTimedOutEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "lambdaFunctionTimedOutEventDetails"),
         type = "structure",
         name = "lambdaFunctionTimedOutEventDetails",
         target_id = id.from(_N, "LambdaFunctionTimedOutEventDetails"),
         target = M.LambdaFunctionTimedOutEventDetails,
      }),
      stateEnteredEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "stateEnteredEventDetails"),
         type = "structure",
         name = "stateEnteredEventDetails",
         target_id = id.from(_N, "StateEnteredEventDetails"),
         target = M.StateEnteredEventDetails,
      }),
      stateExitedEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "stateExitedEventDetails"),
         type = "structure",
         name = "stateExitedEventDetails",
         target_id = id.from(_N, "StateExitedEventDetails"),
         target = M.StateExitedEventDetails,
      }),
      mapRunStartedEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "mapRunStartedEventDetails"),
         type = "structure",
         name = "mapRunStartedEventDetails",
         target_id = id.from(_N, "MapRunStartedEventDetails"),
         target = M.MapRunStartedEventDetails,
      }),
      mapRunFailedEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "mapRunFailedEventDetails"),
         type = "structure",
         name = "mapRunFailedEventDetails",
         target_id = id.from(_N, "MapRunFailedEventDetails"),
         target = M.MapRunFailedEventDetails,
      }),
      mapRunRedrivenEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "mapRunRedrivenEventDetails"),
         type = "structure",
         name = "mapRunRedrivenEventDetails",
         target_id = id.from(_N, "MapRunRedrivenEventDetails"),
         target = M.MapRunRedrivenEventDetails,
      }),
      evaluationFailedEventDetails = schema.new({
         id = id.from(_N, "HistoryEvent", "evaluationFailedEventDetails"),
         type = "structure",
         name = "evaluationFailedEventDetails",
         target_id = id.from(_N, "EvaluationFailedEventDetails"),
         target = M.EvaluationFailedEventDetails,
      }),
   },
})

M.GetExecutionHistoryOutput = schema.new({
   id = id.from(_N, "GetExecutionHistoryOutput"),
   type = "structure",
   members = {
      events = schema.new({
         id = id.from(_N, "GetExecutionHistoryOutput", "events"),
         type = "list",
         name = "events",
         target_id = prelude.Document.id,
         list_member = M.HistoryEvent,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "GetExecutionHistoryOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidToken = schema.new({
   id = id.from(_N, "InvalidToken"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidToken", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ListActivitiesInput = schema.new({
   id = id.from(_N, "ListActivitiesInput"),
   type = "structure",
   members = {
      maxResults = schema.new({
         id = id.from(_N, "ListActivitiesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListActivitiesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListActivitiesOutput = schema.new({
   id = id.from(_N, "ListActivitiesOutput"),
   type = "structure",
   members = {
      activities = schema.new({
         id = id.from(_N, "ListActivitiesOutput", "activities"),
         type = "list",
         name = "activities",
         target_id = prelude.Document.id,
         list_member = M.ActivityListItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListActivitiesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListExecutionsInput = schema.new({
   id = id.from(_N, "ListExecutionsInput"),
   type = "structure",
   members = {
      stateMachineArn = schema.new({
         id = id.from(_N, "ListExecutionsInput", "stateMachineArn"),
         type = "string",
         name = "stateMachineArn",
         target_id = prelude.String.id,
      }),
      statusFilter = schema.new({
         id = id.from(_N, "ListExecutionsInput", "statusFilter"),
         type = "string",
         name = "statusFilter",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListExecutionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListExecutionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      mapRunArn = schema.new({
         id = id.from(_N, "ListExecutionsInput", "mapRunArn"),
         type = "string",
         name = "mapRunArn",
         target_id = prelude.String.id,
      }),
      redriveFilter = schema.new({
         id = id.from(_N, "ListExecutionsInput", "redriveFilter"),
         type = "string",
         name = "redriveFilter",
         target_id = prelude.String.id,
      }),
   },
})

M.ExecutionListItem = schema.new({
   id = id.from(_N, "ExecutionListItem"),
   type = "structure",
   members = {
      executionArn = schema.new({
         id = id.from(_N, "ExecutionListItem", "executionArn"),
         type = "string",
         name = "executionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      stateMachineArn = schema.new({
         id = id.from(_N, "ExecutionListItem", "stateMachineArn"),
         type = "string",
         name = "stateMachineArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "ExecutionListItem", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "ExecutionListItem", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      startDate = schema.new({
         id = id.from(_N, "ExecutionListItem", "startDate"),
         type = "timestamp",
         name = "startDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      stopDate = schema.new({
         id = id.from(_N, "ExecutionListItem", "stopDate"),
         type = "timestamp",
         name = "stopDate",
         target_id = prelude.Timestamp.id,
      }),
      mapRunArn = schema.new({
         id = id.from(_N, "ExecutionListItem", "mapRunArn"),
         type = "string",
         name = "mapRunArn",
         target_id = prelude.String.id,
      }),
      itemCount = schema.new({
         id = id.from(_N, "ExecutionListItem", "itemCount"),
         type = "integer",
         name = "itemCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      stateMachineVersionArn = schema.new({
         id = id.from(_N, "ExecutionListItem", "stateMachineVersionArn"),
         type = "string",
         name = "stateMachineVersionArn",
         target_id = prelude.String.id,
      }),
      stateMachineAliasArn = schema.new({
         id = id.from(_N, "ExecutionListItem", "stateMachineAliasArn"),
         type = "string",
         name = "stateMachineAliasArn",
         target_id = prelude.String.id,
      }),
      redriveCount = schema.new({
         id = id.from(_N, "ExecutionListItem", "redriveCount"),
         type = "integer",
         name = "redriveCount",
         target_id = prelude.Integer.id,
      }),
      redriveDate = schema.new({
         id = id.from(_N, "ExecutionListItem", "redriveDate"),
         type = "timestamp",
         name = "redriveDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListExecutionsOutput = schema.new({
   id = id.from(_N, "ListExecutionsOutput"),
   type = "structure",
   members = {
      executions = schema.new({
         id = id.from(_N, "ListExecutionsOutput", "executions"),
         type = "list",
         name = "executions",
         target_id = prelude.Document.id,
         list_member = M.ExecutionListItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListExecutionsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListMapRunsInput = schema.new({
   id = id.from(_N, "ListMapRunsInput"),
   type = "structure",
   members = {
      executionArn = schema.new({
         id = id.from(_N, "ListMapRunsInput", "executionArn"),
         type = "string",
         name = "executionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListMapRunsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListMapRunsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.MapRunListItem = schema.new({
   id = id.from(_N, "MapRunListItem"),
   type = "structure",
   members = {
      executionArn = schema.new({
         id = id.from(_N, "MapRunListItem", "executionArn"),
         type = "string",
         name = "executionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      mapRunArn = schema.new({
         id = id.from(_N, "MapRunListItem", "mapRunArn"),
         type = "string",
         name = "mapRunArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      stateMachineArn = schema.new({
         id = id.from(_N, "MapRunListItem", "stateMachineArn"),
         type = "string",
         name = "stateMachineArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      startDate = schema.new({
         id = id.from(_N, "MapRunListItem", "startDate"),
         type = "timestamp",
         name = "startDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      stopDate = schema.new({
         id = id.from(_N, "MapRunListItem", "stopDate"),
         type = "timestamp",
         name = "stopDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListMapRunsOutput = schema.new({
   id = id.from(_N, "ListMapRunsOutput"),
   type = "structure",
   members = {
      mapRuns = schema.new({
         id = id.from(_N, "ListMapRunsOutput", "mapRuns"),
         type = "list",
         name = "mapRuns",
         target_id = prelude.Document.id,
         list_member = M.MapRunListItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListMapRunsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListStateMachineAliasesInput = schema.new({
   id = id.from(_N, "ListStateMachineAliasesInput"),
   type = "structure",
   members = {
      stateMachineArn = schema.new({
         id = id.from(_N, "ListStateMachineAliasesInput", "stateMachineArn"),
         type = "string",
         name = "stateMachineArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListStateMachineAliasesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListStateMachineAliasesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.StateMachineAliasListItem = schema.new({
   id = id.from(_N, "StateMachineAliasListItem"),
   type = "structure",
   members = {
      stateMachineAliasArn = schema.new({
         id = id.from(_N, "StateMachineAliasListItem", "stateMachineAliasArn"),
         type = "string",
         name = "stateMachineAliasArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      creationDate = schema.new({
         id = id.from(_N, "StateMachineAliasListItem", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListStateMachineAliasesOutput = schema.new({
   id = id.from(_N, "ListStateMachineAliasesOutput"),
   type = "structure",
   members = {
      stateMachineAliases = schema.new({
         id = id.from(_N, "ListStateMachineAliasesOutput", "stateMachineAliases"),
         type = "list",
         name = "stateMachineAliases",
         target_id = prelude.Document.id,
         list_member = M.StateMachineAliasListItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListStateMachineAliasesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListStateMachinesInput = schema.new({
   id = id.from(_N, "ListStateMachinesInput"),
   type = "structure",
   members = {
      maxResults = schema.new({
         id = id.from(_N, "ListStateMachinesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListStateMachinesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.StateMachineListItem = schema.new({
   id = id.from(_N, "StateMachineListItem"),
   type = "structure",
   members = {
      stateMachineArn = schema.new({
         id = id.from(_N, "StateMachineListItem", "stateMachineArn"),
         type = "string",
         name = "stateMachineArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "StateMachineListItem", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "StateMachineListItem", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      creationDate = schema.new({
         id = id.from(_N, "StateMachineListItem", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListStateMachinesOutput = schema.new({
   id = id.from(_N, "ListStateMachinesOutput"),
   type = "structure",
   members = {
      stateMachines = schema.new({
         id = id.from(_N, "ListStateMachinesOutput", "stateMachines"),
         type = "list",
         name = "stateMachines",
         target_id = prelude.Document.id,
         list_member = M.StateMachineListItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListStateMachinesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListStateMachineVersionsInput = schema.new({
   id = id.from(_N, "ListStateMachineVersionsInput"),
   type = "structure",
   members = {
      stateMachineArn = schema.new({
         id = id.from(_N, "ListStateMachineVersionsInput", "stateMachineArn"),
         type = "string",
         name = "stateMachineArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListStateMachineVersionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListStateMachineVersionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.StateMachineVersionListItem = schema.new({
   id = id.from(_N, "StateMachineVersionListItem"),
   type = "structure",
   members = {
      stateMachineVersionArn = schema.new({
         id = id.from(_N, "StateMachineVersionListItem", "stateMachineVersionArn"),
         type = "string",
         name = "stateMachineVersionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      creationDate = schema.new({
         id = id.from(_N, "StateMachineVersionListItem", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListStateMachineVersionsOutput = schema.new({
   id = id.from(_N, "ListStateMachineVersionsOutput"),
   type = "structure",
   members = {
      stateMachineVersions = schema.new({
         id = id.from(_N, "ListStateMachineVersionsOutput", "stateMachineVersions"),
         type = "list",
         name = "stateMachineVersions",
         target_id = prelude.Document.id,
         list_member = M.StateMachineVersionListItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListStateMachineVersionsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
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
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.PublishStateMachineVersionInput = schema.new({
   id = id.from(_N, "PublishStateMachineVersionInput"),
   type = "structure",
   members = {
      stateMachineArn = schema.new({
         id = id.from(_N, "PublishStateMachineVersionInput", "stateMachineArn"),
         type = "string",
         name = "stateMachineArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      revisionId = schema.new({
         id = id.from(_N, "PublishStateMachineVersionInput", "revisionId"),
         type = "string",
         name = "revisionId",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "PublishStateMachineVersionInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
   },
})

M.PublishStateMachineVersionOutput = schema.new({
   id = id.from(_N, "PublishStateMachineVersionOutput"),
   type = "structure",
   members = {
      creationDate = schema.new({
         id = id.from(_N, "PublishStateMachineVersionOutput", "creationDate"),
         type = "timestamp",
         name = "creationDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      stateMachineVersionArn = schema.new({
         id = id.from(_N, "PublishStateMachineVersionOutput", "stateMachineVersionArn"),
         type = "string",
         name = "stateMachineVersionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ExecutionLimitExceeded = schema.new({
   id = id.from(_N, "ExecutionLimitExceeded"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ExecutionLimitExceeded", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ExecutionNotRedrivable = schema.new({
   id = id.from(_N, "ExecutionNotRedrivable"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ExecutionNotRedrivable", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.RedriveExecutionInput = schema.new({
   id = id.from(_N, "RedriveExecutionInput"),
   type = "structure",
   members = {
      executionArn = schema.new({
         id = id.from(_N, "RedriveExecutionInput", "executionArn"),
         type = "string",
         name = "executionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      clientToken = schema.new({
         id = id.from(_N, "RedriveExecutionInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.RedriveExecutionOutput = schema.new({
   id = id.from(_N, "RedriveExecutionOutput"),
   type = "structure",
   members = {
      redriveDate = schema.new({
         id = id.from(_N, "RedriveExecutionOutput", "redriveDate"),
         type = "timestamp",
         name = "redriveDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SendTaskFailureInput = schema.new({
   id = id.from(_N, "SendTaskFailureInput"),
   type = "structure",
   members = {
      taskToken = schema.new({
         id = id.from(_N, "SendTaskFailureInput", "taskToken"),
         type = "string",
         name = "taskToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      error = schema.new({
         id = id.from(_N, "SendTaskFailureInput", "error"),
         type = "string",
         name = "error",
         target_id = prelude.String.id,
      }),
      cause = schema.new({
         id = id.from(_N, "SendTaskFailureInput", "cause"),
         type = "string",
         name = "cause",
         target_id = prelude.String.id,
      }),
   },
})

M.SendTaskFailureOutput = schema.new({
   id = id.from(_N, "SendTaskFailureOutput"),
   type = "structure",
})

M.TaskDoesNotExist = schema.new({
   id = id.from(_N, "TaskDoesNotExist"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "TaskDoesNotExist", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.TaskTimedOut = schema.new({
   id = id.from(_N, "TaskTimedOut"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "TaskTimedOut", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.SendTaskHeartbeatInput = schema.new({
   id = id.from(_N, "SendTaskHeartbeatInput"),
   type = "structure",
   members = {
      taskToken = schema.new({
         id = id.from(_N, "SendTaskHeartbeatInput", "taskToken"),
         type = "string",
         name = "taskToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SendTaskHeartbeatOutput = schema.new({
   id = id.from(_N, "SendTaskHeartbeatOutput"),
   type = "structure",
})

M.InvalidOutput = schema.new({
   id = id.from(_N, "InvalidOutput"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidOutput", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.SendTaskSuccessInput = schema.new({
   id = id.from(_N, "SendTaskSuccessInput"),
   type = "structure",
   members = {
      taskToken = schema.new({
         id = id.from(_N, "SendTaskSuccessInput", "taskToken"),
         type = "string",
         name = "taskToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      output = schema.new({
         id = id.from(_N, "SendTaskSuccessInput", "output"),
         type = "string",
         name = "output",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SendTaskSuccessOutput = schema.new({
   id = id.from(_N, "SendTaskSuccessOutput"),
   type = "structure",
})

M.ExecutionAlreadyExists = schema.new({
   id = id.from(_N, "ExecutionAlreadyExists"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ExecutionAlreadyExists", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidExecutionInput = schema.new({
   id = id.from(_N, "InvalidExecutionInput"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidExecutionInput", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.StartExecutionInput = schema.new({
   id = id.from(_N, "StartExecutionInput"),
   type = "structure",
   members = {
      stateMachineArn = schema.new({
         id = id.from(_N, "StartExecutionInput", "stateMachineArn"),
         type = "string",
         name = "stateMachineArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "StartExecutionInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      input = schema.new({
         id = id.from(_N, "StartExecutionInput", "input"),
         type = "string",
         name = "input",
         target_id = prelude.String.id,
      }),
      traceHeader = schema.new({
         id = id.from(_N, "StartExecutionInput", "traceHeader"),
         type = "string",
         name = "traceHeader",
         target_id = prelude.String.id,
      }),
   },
})

M.StartExecutionOutput = schema.new({
   id = id.from(_N, "StartExecutionOutput"),
   type = "structure",
   members = {
      executionArn = schema.new({
         id = id.from(_N, "StartExecutionOutput", "executionArn"),
         type = "string",
         name = "executionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      startDate = schema.new({
         id = id.from(_N, "StartExecutionOutput", "startDate"),
         type = "timestamp",
         name = "startDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartSyncExecutionInput = schema.new({
   id = id.from(_N, "StartSyncExecutionInput"),
   type = "structure",
   members = {
      stateMachineArn = schema.new({
         id = id.from(_N, "StartSyncExecutionInput", "stateMachineArn"),
         type = "string",
         name = "stateMachineArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "StartSyncExecutionInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      input = schema.new({
         id = id.from(_N, "StartSyncExecutionInput", "input"),
         type = "string",
         name = "input",
         target_id = prelude.String.id,
      }),
      traceHeader = schema.new({
         id = id.from(_N, "StartSyncExecutionInput", "traceHeader"),
         type = "string",
         name = "traceHeader",
         target_id = prelude.String.id,
      }),
      includedData = schema.new({
         id = id.from(_N, "StartSyncExecutionInput", "includedData"),
         type = "string",
         name = "includedData",
         target_id = prelude.String.id,
      }),
   },
})

M.BillingDetails = schema.new({
   id = id.from(_N, "BillingDetails"),
   type = "structure",
   members = {
      billedMemoryUsedInMB = schema.new({
         id = id.from(_N, "BillingDetails", "billedMemoryUsedInMB"),
         type = "long",
         name = "billedMemoryUsedInMB",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      billedDurationInMilliseconds = schema.new({
         id = id.from(_N, "BillingDetails", "billedDurationInMilliseconds"),
         type = "long",
         name = "billedDurationInMilliseconds",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.StartSyncExecutionOutput = schema.new({
   id = id.from(_N, "StartSyncExecutionOutput"),
   type = "structure",
   members = {
      executionArn = schema.new({
         id = id.from(_N, "StartSyncExecutionOutput", "executionArn"),
         type = "string",
         name = "executionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      stateMachineArn = schema.new({
         id = id.from(_N, "StartSyncExecutionOutput", "stateMachineArn"),
         type = "string",
         name = "stateMachineArn",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "StartSyncExecutionOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      startDate = schema.new({
         id = id.from(_N, "StartSyncExecutionOutput", "startDate"),
         type = "timestamp",
         name = "startDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      stopDate = schema.new({
         id = id.from(_N, "StartSyncExecutionOutput", "stopDate"),
         type = "timestamp",
         name = "stopDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "StartSyncExecutionOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      error = schema.new({
         id = id.from(_N, "StartSyncExecutionOutput", "error"),
         type = "string",
         name = "error",
         target_id = prelude.String.id,
      }),
      cause = schema.new({
         id = id.from(_N, "StartSyncExecutionOutput", "cause"),
         type = "string",
         name = "cause",
         target_id = prelude.String.id,
      }),
      input = schema.new({
         id = id.from(_N, "StartSyncExecutionOutput", "input"),
         type = "string",
         name = "input",
         target_id = prelude.String.id,
      }),
      inputDetails = schema.new({
         id = id.from(_N, "StartSyncExecutionOutput", "inputDetails"),
         type = "structure",
         name = "inputDetails",
         target_id = id.from(_N, "CloudWatchEventsExecutionDataDetails"),
         target = M.CloudWatchEventsExecutionDataDetails,
      }),
      output = schema.new({
         id = id.from(_N, "StartSyncExecutionOutput", "output"),
         type = "string",
         name = "output",
         target_id = prelude.String.id,
      }),
      outputDetails = schema.new({
         id = id.from(_N, "StartSyncExecutionOutput", "outputDetails"),
         type = "structure",
         name = "outputDetails",
         target_id = id.from(_N, "CloudWatchEventsExecutionDataDetails"),
         target = M.CloudWatchEventsExecutionDataDetails,
      }),
      traceHeader = schema.new({
         id = id.from(_N, "StartSyncExecutionOutput", "traceHeader"),
         type = "string",
         name = "traceHeader",
         target_id = prelude.String.id,
      }),
      billingDetails = schema.new({
         id = id.from(_N, "StartSyncExecutionOutput", "billingDetails"),
         type = "structure",
         name = "billingDetails",
         target_id = id.from(_N, "BillingDetails"),
         target = M.BillingDetails,
      }),
   },
})

M.StopExecutionInput = schema.new({
   id = id.from(_N, "StopExecutionInput"),
   type = "structure",
   members = {
      executionArn = schema.new({
         id = id.from(_N, "StopExecutionInput", "executionArn"),
         type = "string",
         name = "executionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      error = schema.new({
         id = id.from(_N, "StopExecutionInput", "error"),
         type = "string",
         name = "error",
         target_id = prelude.String.id,
      }),
      cause = schema.new({
         id = id.from(_N, "StopExecutionInput", "cause"),
         type = "string",
         name = "cause",
         target_id = prelude.String.id,
      }),
   },
})

M.StopExecutionOutput = schema.new({
   id = id.from(_N, "StopExecutionOutput"),
   type = "structure",
   members = {
      stopDate = schema.new({
         id = id.from(_N, "StopExecutionOutput", "stopDate"),
         type = "timestamp",
         name = "stopDate",
         target_id = prelude.Timestamp.id,
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
         },
      }),
      tags = schema.new({
         id = id.from(_N, "TagResourceInput", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
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

M.MockErrorOutput = schema.new({
   id = id.from(_N, "MockErrorOutput"),
   type = "structure",
   members = {
      error = schema.new({
         id = id.from(_N, "MockErrorOutput", "error"),
         type = "string",
         name = "error",
         target_id = prelude.String.id,
      }),
      cause = schema.new({
         id = id.from(_N, "MockErrorOutput", "cause"),
         type = "string",
         name = "cause",
         target_id = prelude.String.id,
      }),
   },
})

M.MockInput = schema.new({
   id = id.from(_N, "MockInput"),
   type = "structure",
   members = {
      result = schema.new({
         id = id.from(_N, "MockInput", "result"),
         type = "string",
         name = "result",
         target_id = prelude.String.id,
      }),
      errorOutput = schema.new({
         id = id.from(_N, "MockInput", "errorOutput"),
         type = "structure",
         name = "errorOutput",
         target_id = id.from(_N, "MockErrorOutput"),
         target = M.MockErrorOutput,
      }),
      fieldValidationMode = schema.new({
         id = id.from(_N, "MockInput", "fieldValidationMode"),
         type = "string",
         name = "fieldValidationMode",
         target_id = prelude.String.id,
      }),
   },
})

M.TestStateConfiguration = schema.new({
   id = id.from(_N, "TestStateConfiguration"),
   type = "structure",
   members = {
      retrierRetryCount = schema.new({
         id = id.from(_N, "TestStateConfiguration", "retrierRetryCount"),
         type = "integer",
         name = "retrierRetryCount",
         target_id = prelude.Integer.id,
      }),
      errorCausedByState = schema.new({
         id = id.from(_N, "TestStateConfiguration", "errorCausedByState"),
         type = "string",
         name = "errorCausedByState",
         target_id = prelude.String.id,
      }),
      mapIterationFailureCount = schema.new({
         id = id.from(_N, "TestStateConfiguration", "mapIterationFailureCount"),
         type = "integer",
         name = "mapIterationFailureCount",
         target_id = prelude.Integer.id,
      }),
      mapItemReaderData = schema.new({
         id = id.from(_N, "TestStateConfiguration", "mapItemReaderData"),
         type = "string",
         name = "mapItemReaderData",
         target_id = prelude.String.id,
      }),
   },
})

M.TestStateInput = schema.new({
   id = id.from(_N, "TestStateInput"),
   type = "structure",
   members = {
      definition = schema.new({
         id = id.from(_N, "TestStateInput", "definition"),
         type = "string",
         name = "definition",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "TestStateInput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      input = schema.new({
         id = id.from(_N, "TestStateInput", "input"),
         type = "string",
         name = "input",
         target_id = prelude.String.id,
      }),
      inspectionLevel = schema.new({
         id = id.from(_N, "TestStateInput", "inspectionLevel"),
         type = "string",
         name = "inspectionLevel",
         target_id = prelude.String.id,
      }),
      revealSecrets = schema.new({
         id = id.from(_N, "TestStateInput", "revealSecrets"),
         type = "boolean",
         name = "revealSecrets",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      variables = schema.new({
         id = id.from(_N, "TestStateInput", "variables"),
         type = "string",
         name = "variables",
         target_id = prelude.String.id,
      }),
      stateName = schema.new({
         id = id.from(_N, "TestStateInput", "stateName"),
         type = "string",
         name = "stateName",
         target_id = prelude.String.id,
      }),
      mock = schema.new({
         id = id.from(_N, "TestStateInput", "mock"),
         type = "structure",
         name = "mock",
         target_id = id.from(_N, "MockInput"),
         target = M.MockInput,
      }),
      context = schema.new({
         id = id.from(_N, "TestStateInput", "context"),
         type = "string",
         name = "context",
         target_id = prelude.String.id,
      }),
      stateConfiguration = schema.new({
         id = id.from(_N, "TestStateInput", "stateConfiguration"),
         type = "structure",
         name = "stateConfiguration",
         target_id = id.from(_N, "TestStateConfiguration"),
         target = M.TestStateConfiguration,
      }),
   },
})

M.InspectionErrorDetails = schema.new({
   id = id.from(_N, "InspectionErrorDetails"),
   type = "structure",
   members = {
      catchIndex = schema.new({
         id = id.from(_N, "InspectionErrorDetails", "catchIndex"),
         type = "integer",
         name = "catchIndex",
         target_id = prelude.Integer.id,
      }),
      retryIndex = schema.new({
         id = id.from(_N, "InspectionErrorDetails", "retryIndex"),
         type = "integer",
         name = "retryIndex",
         target_id = prelude.Integer.id,
      }),
      retryBackoffIntervalSeconds = schema.new({
         id = id.from(_N, "InspectionErrorDetails", "retryBackoffIntervalSeconds"),
         type = "integer",
         name = "retryBackoffIntervalSeconds",
         target_id = prelude.Integer.id,
      }),
   },
})

M.InspectionDataRequest = schema.new({
   id = id.from(_N, "InspectionDataRequest"),
   type = "structure",
   members = {
      protocol = schema.new({
         id = id.from(_N, "InspectionDataRequest", "protocol"),
         type = "string",
         name = "protocol",
         target_id = prelude.String.id,
      }),
      method = schema.new({
         id = id.from(_N, "InspectionDataRequest", "method"),
         type = "string",
         name = "method",
         target_id = prelude.String.id,
      }),
      url = schema.new({
         id = id.from(_N, "InspectionDataRequest", "url"),
         type = "string",
         name = "url",
         target_id = prelude.String.id,
      }),
      headers = schema.new({
         id = id.from(_N, "InspectionDataRequest", "headers"),
         type = "string",
         name = "headers",
         target_id = prelude.String.id,
      }),
      body = schema.new({
         id = id.from(_N, "InspectionDataRequest", "body"),
         type = "string",
         name = "body",
         target_id = prelude.String.id,
      }),
   },
})

M.InspectionDataResponse = schema.new({
   id = id.from(_N, "InspectionDataResponse"),
   type = "structure",
   members = {
      protocol = schema.new({
         id = id.from(_N, "InspectionDataResponse", "protocol"),
         type = "string",
         name = "protocol",
         target_id = prelude.String.id,
      }),
      statusCode = schema.new({
         id = id.from(_N, "InspectionDataResponse", "statusCode"),
         type = "string",
         name = "statusCode",
         target_id = prelude.String.id,
      }),
      statusMessage = schema.new({
         id = id.from(_N, "InspectionDataResponse", "statusMessage"),
         type = "string",
         name = "statusMessage",
         target_id = prelude.String.id,
      }),
      headers = schema.new({
         id = id.from(_N, "InspectionDataResponse", "headers"),
         type = "string",
         name = "headers",
         target_id = prelude.String.id,
      }),
      body = schema.new({
         id = id.from(_N, "InspectionDataResponse", "body"),
         type = "string",
         name = "body",
         target_id = prelude.String.id,
      }),
   },
})

M.InspectionData = schema.new({
   id = id.from(_N, "InspectionData"),
   type = "structure",
   members = {
      input = schema.new({
         id = id.from(_N, "InspectionData", "input"),
         type = "string",
         name = "input",
         target_id = prelude.String.id,
      }),
      afterArguments = schema.new({
         id = id.from(_N, "InspectionData", "afterArguments"),
         type = "string",
         name = "afterArguments",
         target_id = prelude.String.id,
      }),
      afterInputPath = schema.new({
         id = id.from(_N, "InspectionData", "afterInputPath"),
         type = "string",
         name = "afterInputPath",
         target_id = prelude.String.id,
      }),
      afterParameters = schema.new({
         id = id.from(_N, "InspectionData", "afterParameters"),
         type = "string",
         name = "afterParameters",
         target_id = prelude.String.id,
      }),
      result = schema.new({
         id = id.from(_N, "InspectionData", "result"),
         type = "string",
         name = "result",
         target_id = prelude.String.id,
      }),
      afterResultSelector = schema.new({
         id = id.from(_N, "InspectionData", "afterResultSelector"),
         type = "string",
         name = "afterResultSelector",
         target_id = prelude.String.id,
      }),
      afterResultPath = schema.new({
         id = id.from(_N, "InspectionData", "afterResultPath"),
         type = "string",
         name = "afterResultPath",
         target_id = prelude.String.id,
      }),
      request = schema.new({
         id = id.from(_N, "InspectionData", "request"),
         type = "structure",
         name = "request",
         target_id = id.from(_N, "InspectionDataRequest"),
         target = M.InspectionDataRequest,
      }),
      response = schema.new({
         id = id.from(_N, "InspectionData", "response"),
         type = "structure",
         name = "response",
         target_id = id.from(_N, "InspectionDataResponse"),
         target = M.InspectionDataResponse,
      }),
      variables = schema.new({
         id = id.from(_N, "InspectionData", "variables"),
         type = "string",
         name = "variables",
         target_id = prelude.String.id,
      }),
      errorDetails = schema.new({
         id = id.from(_N, "InspectionData", "errorDetails"),
         type = "structure",
         name = "errorDetails",
         target_id = id.from(_N, "InspectionErrorDetails"),
         target = M.InspectionErrorDetails,
      }),
      afterItemsPath = schema.new({
         id = id.from(_N, "InspectionData", "afterItemsPath"),
         type = "string",
         name = "afterItemsPath",
         target_id = prelude.String.id,
      }),
      afterItemSelector = schema.new({
         id = id.from(_N, "InspectionData", "afterItemSelector"),
         type = "string",
         name = "afterItemSelector",
         target_id = prelude.String.id,
      }),
      afterItemBatcher = schema.new({
         id = id.from(_N, "InspectionData", "afterItemBatcher"),
         type = "string",
         name = "afterItemBatcher",
         target_id = prelude.String.id,
      }),
      afterItemsPointer = schema.new({
         id = id.from(_N, "InspectionData", "afterItemsPointer"),
         type = "string",
         name = "afterItemsPointer",
         target_id = prelude.String.id,
      }),
      toleratedFailureCount = schema.new({
         id = id.from(_N, "InspectionData", "toleratedFailureCount"),
         type = "integer",
         name = "toleratedFailureCount",
         target_id = prelude.Integer.id,
      }),
      toleratedFailurePercentage = schema.new({
         id = id.from(_N, "InspectionData", "toleratedFailurePercentage"),
         type = "float",
         name = "toleratedFailurePercentage",
         target_id = prelude.Float.id,
      }),
      maxConcurrency = schema.new({
         id = id.from(_N, "InspectionData", "maxConcurrency"),
         type = "integer",
         name = "maxConcurrency",
         target_id = prelude.Integer.id,
      }),
   },
})

M.TestStateOutput = schema.new({
   id = id.from(_N, "TestStateOutput"),
   type = "structure",
   members = {
      output = schema.new({
         id = id.from(_N, "TestStateOutput", "output"),
         type = "string",
         name = "output",
         target_id = prelude.String.id,
      }),
      error = schema.new({
         id = id.from(_N, "TestStateOutput", "error"),
         type = "string",
         name = "error",
         target_id = prelude.String.id,
      }),
      cause = schema.new({
         id = id.from(_N, "TestStateOutput", "cause"),
         type = "string",
         name = "cause",
         target_id = prelude.String.id,
      }),
      inspectionData = schema.new({
         id = id.from(_N, "TestStateOutput", "inspectionData"),
         type = "structure",
         name = "inspectionData",
         target_id = id.from(_N, "InspectionData"),
         target = M.InspectionData,
      }),
      nextState = schema.new({
         id = id.from(_N, "TestStateOutput", "nextState"),
         type = "string",
         name = "nextState",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "TestStateOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
   },
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
         },
      }),
   },
})

M.UntagResourceOutput = schema.new({
   id = id.from(_N, "UntagResourceOutput"),
   type = "structure",
})

M.UpdateMapRunInput = schema.new({
   id = id.from(_N, "UpdateMapRunInput"),
   type = "structure",
   members = {
      mapRunArn = schema.new({
         id = id.from(_N, "UpdateMapRunInput", "mapRunArn"),
         type = "string",
         name = "mapRunArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      maxConcurrency = schema.new({
         id = id.from(_N, "UpdateMapRunInput", "maxConcurrency"),
         type = "integer",
         name = "maxConcurrency",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      toleratedFailurePercentage = schema.new({
         id = id.from(_N, "UpdateMapRunInput", "toleratedFailurePercentage"),
         type = "float",
         name = "toleratedFailurePercentage",
         target_id = prelude.Float.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      toleratedFailureCount = schema.new({
         id = id.from(_N, "UpdateMapRunInput", "toleratedFailureCount"),
         type = "long",
         name = "toleratedFailureCount",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
   },
})

M.UpdateMapRunOutput = schema.new({
   id = id.from(_N, "UpdateMapRunOutput"),
   type = "structure",
})

M.MissingRequiredParameter = schema.new({
   id = id.from(_N, "MissingRequiredParameter"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "MissingRequiredParameter", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateStateMachineInput = schema.new({
   id = id.from(_N, "UpdateStateMachineInput"),
   type = "structure",
   members = {
      stateMachineArn = schema.new({
         id = id.from(_N, "UpdateStateMachineInput", "stateMachineArn"),
         type = "string",
         name = "stateMachineArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      definition = schema.new({
         id = id.from(_N, "UpdateStateMachineInput", "definition"),
         type = "string",
         name = "definition",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "UpdateStateMachineInput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      loggingConfiguration = schema.new({
         id = id.from(_N, "UpdateStateMachineInput", "loggingConfiguration"),
         type = "structure",
         name = "loggingConfiguration",
         target_id = id.from(_N, "LoggingConfiguration"),
         target = M.LoggingConfiguration,
      }),
      tracingConfiguration = schema.new({
         id = id.from(_N, "UpdateStateMachineInput", "tracingConfiguration"),
         type = "structure",
         name = "tracingConfiguration",
         target_id = id.from(_N, "TracingConfiguration"),
         target = M.TracingConfiguration,
      }),
      publish = schema.new({
         id = id.from(_N, "UpdateStateMachineInput", "publish"),
         type = "boolean",
         name = "publish",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      versionDescription = schema.new({
         id = id.from(_N, "UpdateStateMachineInput", "versionDescription"),
         type = "string",
         name = "versionDescription",
         target_id = prelude.String.id,
      }),
      encryptionConfiguration = schema.new({
         id = id.from(_N, "UpdateStateMachineInput", "encryptionConfiguration"),
         type = "structure",
         name = "encryptionConfiguration",
         target_id = id.from(_N, "EncryptionConfiguration"),
         target = M.EncryptionConfiguration,
      }),
   },
})

M.UpdateStateMachineOutput = schema.new({
   id = id.from(_N, "UpdateStateMachineOutput"),
   type = "structure",
   members = {
      updateDate = schema.new({
         id = id.from(_N, "UpdateStateMachineOutput", "updateDate"),
         type = "timestamp",
         name = "updateDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      revisionId = schema.new({
         id = id.from(_N, "UpdateStateMachineOutput", "revisionId"),
         type = "string",
         name = "revisionId",
         target_id = prelude.String.id,
      }),
      stateMachineVersionArn = schema.new({
         id = id.from(_N, "UpdateStateMachineOutput", "stateMachineVersionArn"),
         type = "string",
         name = "stateMachineVersionArn",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateStateMachineAliasInput = schema.new({
   id = id.from(_N, "UpdateStateMachineAliasInput"),
   type = "structure",
   members = {
      stateMachineAliasArn = schema.new({
         id = id.from(_N, "UpdateStateMachineAliasInput", "stateMachineAliasArn"),
         type = "string",
         name = "stateMachineAliasArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "UpdateStateMachineAliasInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      routingConfiguration = schema.new({
         id = id.from(_N, "UpdateStateMachineAliasInput", "routingConfiguration"),
         type = "list",
         name = "routingConfiguration",
         target_id = prelude.Document.id,
         list_member = M.RoutingConfigurationListItem,
      }),
   },
})

M.UpdateStateMachineAliasOutput = schema.new({
   id = id.from(_N, "UpdateStateMachineAliasOutput"),
   type = "structure",
   members = {
      updateDate = schema.new({
         id = id.from(_N, "UpdateStateMachineAliasOutput", "updateDate"),
         type = "timestamp",
         name = "updateDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ValidateStateMachineDefinitionInput = schema.new({
   id = id.from(_N, "ValidateStateMachineDefinitionInput"),
   type = "structure",
   members = {
      definition = schema.new({
         id = id.from(_N, "ValidateStateMachineDefinitionInput", "definition"),
         type = "string",
         name = "definition",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "ValidateStateMachineDefinitionInput", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      severity = schema.new({
         id = id.from(_N, "ValidateStateMachineDefinitionInput", "severity"),
         type = "string",
         name = "severity",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ValidateStateMachineDefinitionInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.ValidateStateMachineDefinitionDiagnostic = schema.new({
   id = id.from(_N, "ValidateStateMachineDefinitionDiagnostic"),
   type = "structure",
   members = {
      severity = schema.new({
         id = id.from(_N, "ValidateStateMachineDefinitionDiagnostic", "severity"),
         type = "string",
         name = "severity",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      code = schema.new({
         id = id.from(_N, "ValidateStateMachineDefinitionDiagnostic", "code"),
         type = "string",
         name = "code",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      message = schema.new({
         id = id.from(_N, "ValidateStateMachineDefinitionDiagnostic", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      location = schema.new({
         id = id.from(_N, "ValidateStateMachineDefinitionDiagnostic", "location"),
         type = "string",
         name = "location",
         target_id = prelude.String.id,
      }),
   },
})

M.ValidateStateMachineDefinitionOutput = schema.new({
   id = id.from(_N, "ValidateStateMachineDefinitionOutput"),
   type = "structure",
   members = {
      result = schema.new({
         id = id.from(_N, "ValidateStateMachineDefinitionOutput", "result"),
         type = "string",
         name = "result",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      diagnostics = schema.new({
         id = id.from(_N, "ValidateStateMachineDefinitionOutput", "diagnostics"),
         type = "list",
         name = "diagnostics",
         target_id = prelude.Document.id,
         list_member = M.ValidateStateMachineDefinitionDiagnostic,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      truncated = schema.new({
         id = id.from(_N, "ValidateStateMachineDefinitionOutput", "truncated"),
         type = "boolean",
         name = "truncated",
         target_id = prelude.Boolean.id,
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
   id = id.from("com.amazonaws.sfn", "AWSStepFunctions"),
   version = "2016-11-23",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateActivity = schema.operation({
   id = id.from("com.amazonaws.sfn", "CreateActivity"),
   input = M.CreateActivityInput,
   output = M.CreateActivityOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateStateMachine = schema.operation({
   id = id.from("com.amazonaws.sfn", "CreateStateMachine"),
   input = M.CreateStateMachineInput,
   output = M.CreateStateMachineOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateStateMachineAlias = schema.operation({
   id = id.from("com.amazonaws.sfn", "CreateStateMachineAlias"),
   input = M.CreateStateMachineAliasInput,
   output = M.CreateStateMachineAliasOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteActivity = schema.operation({
   id = id.from("com.amazonaws.sfn", "DeleteActivity"),
   input = M.DeleteActivityInput,
   output = M.DeleteActivityOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteStateMachine = schema.operation({
   id = id.from("com.amazonaws.sfn", "DeleteStateMachine"),
   input = M.DeleteStateMachineInput,
   output = M.DeleteStateMachineOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteStateMachineAlias = schema.operation({
   id = id.from("com.amazonaws.sfn", "DeleteStateMachineAlias"),
   input = M.DeleteStateMachineAliasInput,
   output = M.DeleteStateMachineAliasOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteStateMachineVersion = schema.operation({
   id = id.from("com.amazonaws.sfn", "DeleteStateMachineVersion"),
   input = M.DeleteStateMachineVersionInput,
   output = M.DeleteStateMachineVersionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeActivity = schema.operation({
   id = id.from("com.amazonaws.sfn", "DescribeActivity"),
   input = M.DescribeActivityInput,
   output = M.DescribeActivityOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeExecution = schema.operation({
   id = id.from("com.amazonaws.sfn", "DescribeExecution"),
   input = M.DescribeExecutionInput,
   output = M.DescribeExecutionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeMapRun = schema.operation({
   id = id.from("com.amazonaws.sfn", "DescribeMapRun"),
   input = M.DescribeMapRunInput,
   output = M.DescribeMapRunOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeStateMachine = schema.operation({
   id = id.from("com.amazonaws.sfn", "DescribeStateMachine"),
   input = M.DescribeStateMachineInput,
   output = M.DescribeStateMachineOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeStateMachineAlias = schema.operation({
   id = id.from("com.amazonaws.sfn", "DescribeStateMachineAlias"),
   input = M.DescribeStateMachineAliasInput,
   output = M.DescribeStateMachineAliasOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeStateMachineForExecution = schema.operation({
   id = id.from("com.amazonaws.sfn", "DescribeStateMachineForExecution"),
   input = M.DescribeStateMachineForExecutionInput,
   output = M.DescribeStateMachineForExecutionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetActivityTask = schema.operation({
   id = id.from("com.amazonaws.sfn", "GetActivityTask"),
   input = M.GetActivityTaskInput,
   output = M.GetActivityTaskOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetExecutionHistory = schema.operation({
   id = id.from("com.amazonaws.sfn", "GetExecutionHistory"),
   input = M.GetExecutionHistoryInput,
   output = M.GetExecutionHistoryOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListActivities = schema.operation({
   id = id.from("com.amazonaws.sfn", "ListActivities"),
   input = M.ListActivitiesInput,
   output = M.ListActivitiesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListExecutions = schema.operation({
   id = id.from("com.amazonaws.sfn", "ListExecutions"),
   input = M.ListExecutionsInput,
   output = M.ListExecutionsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListMapRuns = schema.operation({
   id = id.from("com.amazonaws.sfn", "ListMapRuns"),
   input = M.ListMapRunsInput,
   output = M.ListMapRunsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListStateMachineAliases = schema.operation({
   id = id.from("com.amazonaws.sfn", "ListStateMachineAliases"),
   input = M.ListStateMachineAliasesInput,
   output = M.ListStateMachineAliasesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListStateMachines = schema.operation({
   id = id.from("com.amazonaws.sfn", "ListStateMachines"),
   input = M.ListStateMachinesInput,
   output = M.ListStateMachinesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListStateMachineVersions = schema.operation({
   id = id.from("com.amazonaws.sfn", "ListStateMachineVersions"),
   input = M.ListStateMachineVersionsInput,
   output = M.ListStateMachineVersionsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.sfn", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PublishStateMachineVersion = schema.operation({
   id = id.from("com.amazonaws.sfn", "PublishStateMachineVersion"),
   input = M.PublishStateMachineVersionInput,
   output = M.PublishStateMachineVersionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RedriveExecution = schema.operation({
   id = id.from("com.amazonaws.sfn", "RedriveExecution"),
   input = M.RedriveExecutionInput,
   output = M.RedriveExecutionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SendTaskFailure = schema.operation({
   id = id.from("com.amazonaws.sfn", "SendTaskFailure"),
   input = M.SendTaskFailureInput,
   output = M.SendTaskFailureOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SendTaskHeartbeat = schema.operation({
   id = id.from("com.amazonaws.sfn", "SendTaskHeartbeat"),
   input = M.SendTaskHeartbeatInput,
   output = M.SendTaskHeartbeatOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SendTaskSuccess = schema.operation({
   id = id.from("com.amazonaws.sfn", "SendTaskSuccess"),
   input = M.SendTaskSuccessInput,
   output = M.SendTaskSuccessOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartExecution = schema.operation({
   id = id.from("com.amazonaws.sfn", "StartExecution"),
   input = M.StartExecutionInput,
   output = M.StartExecutionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartSyncExecution = schema.operation({
   id = id.from("com.amazonaws.sfn", "StartSyncExecution"),
   input = M.StartSyncExecutionInput,
   output = M.StartSyncExecutionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopExecution = schema.operation({
   id = id.from("com.amazonaws.sfn", "StopExecution"),
   input = M.StopExecutionInput,
   output = M.StopExecutionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.sfn", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TestState = schema.operation({
   id = id.from("com.amazonaws.sfn", "TestState"),
   input = M.TestStateInput,
   output = M.TestStateOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.sfn", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateMapRun = schema.operation({
   id = id.from("com.amazonaws.sfn", "UpdateMapRun"),
   input = M.UpdateMapRunInput,
   output = M.UpdateMapRunOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateStateMachine = schema.operation({
   id = id.from("com.amazonaws.sfn", "UpdateStateMachine"),
   input = M.UpdateStateMachineInput,
   output = M.UpdateStateMachineOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateStateMachineAlias = schema.operation({
   id = id.from("com.amazonaws.sfn", "UpdateStateMachineAlias"),
   input = M.UpdateStateMachineAliasInput,
   output = M.UpdateStateMachineAliasOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ValidateStateMachineDefinition = schema.operation({
   id = id.from("com.amazonaws.sfn", "ValidateStateMachineDefinition"),
   input = M.ValidateStateMachineDefinitionInput,
   output = M.ValidateStateMachineDefinitionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
