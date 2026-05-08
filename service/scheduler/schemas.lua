

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.scheduler"

local M = {}

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.ScheduleList = schema.new({ type = "list", list_member = M.ScheduleSummary })

M.ScheduleGroupList = schema.new({ type = "list", list_member = M.ScheduleGroupSummary })

M.CapacityProviderStrategy = schema.new({ type = "list", list_member = M.CapacityProviderStrategyItem })

M.PlacementConstraints = schema.new({ type = "list", list_member = M.PlacementConstraint })

M.PlacementStrategies = schema.new({ type = "list", list_member = M.PlacementStrategy })

M.Tags = schema.new({ type = "list", list_member = M.TagMap })

M.SageMakerPipelineParameterList = schema.new({ type = "list", list_member = M.SageMakerPipelineParameter })

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.Subnets = schema.new({ type = "list", list_member = prelude.String })

M.SecurityGroups = schema.new({ type = "list", list_member = prelude.String })

M.InternalServerException = schema.new({
   id = id.from(_N, "InternalServerException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InternalServerException", "Message"),
         type = "string",
         name = "Message",
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
      ResourceArn = schema.new({
         id = id.from(_N, "ListTagsForResourceInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.Tag = schema.new({
   id = id.from(_N, "Tag"),
   type = "structure",
   members = {
      Key = schema.new({
         id = id.from(_N, "Tag", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Value = schema.new({
         id = id.from(_N, "Tag", "Value"),
         type = "string",
         name = "Value",
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
      Tags = schema.new({
         id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
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

M.ValidationException = schema.new({
   id = id.from(_N, "ValidationException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "ValidationException", "Message"),
         type = "string",
         name = "Message",
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
      Message = schema.new({
         id = id.from(_N, "ConflictException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FlexibleTimeWindow = schema.new({
   id = id.from(_N, "FlexibleTimeWindow"),
   type = "structure",
   members = {
      Mode = schema.new({
         id = id.from(_N, "FlexibleTimeWindow", "Mode"),
         type = "string",
         name = "Mode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaximumWindowInMinutes = schema.new({
         id = id.from(_N, "FlexibleTimeWindow", "MaximumWindowInMinutes"),
         type = "integer",
         name = "MaximumWindowInMinutes",
         target_id = prelude.Integer.id,
      }),
   },
})

M.DeadLetterConfig = schema.new({
   id = id.from(_N, "DeadLetterConfig"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "DeadLetterConfig", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
   },
})

M.CapacityProviderStrategyItem = schema.new({
   id = id.from(_N, "CapacityProviderStrategyItem"),
   type = "structure",
   members = {
      capacityProvider = schema.new({
         id = id.from(_N, "CapacityProviderStrategyItem", "capacityProvider"),
         type = "string",
         name = "capacityProvider",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      weight = schema.new({
         id = id.from(_N, "CapacityProviderStrategyItem", "weight"),
         type = "integer",
         name = "weight",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      base = schema.new({
         id = id.from(_N, "CapacityProviderStrategyItem", "base"),
         type = "integer",
         name = "base",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.AwsVpcConfiguration = schema.new({
   id = id.from(_N, "AwsVpcConfiguration"),
   type = "structure",
   members = {
      Subnets = schema.new({
         id = id.from(_N, "AwsVpcConfiguration", "Subnets"),
         type = "list",
         name = "Subnets",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SecurityGroups = schema.new({
         id = id.from(_N, "AwsVpcConfiguration", "SecurityGroups"),
         type = "list",
         name = "SecurityGroups",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      AssignPublicIp = schema.new({
         id = id.from(_N, "AwsVpcConfiguration", "AssignPublicIp"),
         type = "string",
         name = "AssignPublicIp",
         target_id = prelude.String.id,
      }),
   },
})

M.NetworkConfiguration = schema.new({
   id = id.from(_N, "NetworkConfiguration"),
   type = "structure",
   members = {
      awsvpcConfiguration = schema.new({
         id = id.from(_N, "NetworkConfiguration", "awsvpcConfiguration"),
         type = "structure",
         name = "awsvpcConfiguration",
         target_id = id.from(_N, "AwsVpcConfiguration"),
         target = M.AwsVpcConfiguration,
      }),
   },
})

M.PlacementConstraint = schema.new({
   id = id.from(_N, "PlacementConstraint"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "PlacementConstraint", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      expression = schema.new({
         id = id.from(_N, "PlacementConstraint", "expression"),
         type = "string",
         name = "expression",
         target_id = prelude.String.id,
      }),
   },
})

M.PlacementStrategy = schema.new({
   id = id.from(_N, "PlacementStrategy"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "PlacementStrategy", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      field = schema.new({
         id = id.from(_N, "PlacementStrategy", "field"),
         type = "string",
         name = "field",
         target_id = prelude.String.id,
      }),
   },
})

M.EcsParameters = schema.new({
   id = id.from(_N, "EcsParameters"),
   type = "structure",
   members = {
      TaskDefinitionArn = schema.new({
         id = id.from(_N, "EcsParameters", "TaskDefinitionArn"),
         type = "string",
         name = "TaskDefinitionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TaskCount = schema.new({
         id = id.from(_N, "EcsParameters", "TaskCount"),
         type = "integer",
         name = "TaskCount",
         target_id = prelude.Integer.id,
      }),
      LaunchType = schema.new({
         id = id.from(_N, "EcsParameters", "LaunchType"),
         type = "string",
         name = "LaunchType",
         target_id = prelude.String.id,
      }),
      NetworkConfiguration = schema.new({
         id = id.from(_N, "EcsParameters", "NetworkConfiguration"),
         type = "structure",
         name = "NetworkConfiguration",
         target_id = id.from(_N, "NetworkConfiguration"),
         target = M.NetworkConfiguration,
      }),
      PlatformVersion = schema.new({
         id = id.from(_N, "EcsParameters", "PlatformVersion"),
         type = "string",
         name = "PlatformVersion",
         target_id = prelude.String.id,
      }),
      Group = schema.new({
         id = id.from(_N, "EcsParameters", "Group"),
         type = "string",
         name = "Group",
         target_id = prelude.String.id,
      }),
      CapacityProviderStrategy = schema.new({
         id = id.from(_N, "EcsParameters", "CapacityProviderStrategy"),
         type = "list",
         name = "CapacityProviderStrategy",
         target_id = prelude.Document.id,
         list_member = M.CapacityProviderStrategyItem,
      }),
      EnableECSManagedTags = schema.new({
         id = id.from(_N, "EcsParameters", "EnableECSManagedTags"),
         type = "boolean",
         name = "EnableECSManagedTags",
         target_id = prelude.Boolean.id,
      }),
      EnableExecuteCommand = schema.new({
         id = id.from(_N, "EcsParameters", "EnableExecuteCommand"),
         type = "boolean",
         name = "EnableExecuteCommand",
         target_id = prelude.Boolean.id,
      }),
      PlacementConstraints = schema.new({
         id = id.from(_N, "EcsParameters", "PlacementConstraints"),
         type = "list",
         name = "PlacementConstraints",
         target_id = prelude.Document.id,
         list_member = M.PlacementConstraint,
      }),
      PlacementStrategy = schema.new({
         id = id.from(_N, "EcsParameters", "PlacementStrategy"),
         type = "list",
         name = "PlacementStrategy",
         target_id = prelude.Document.id,
         list_member = M.PlacementStrategy,
      }),
      PropagateTags = schema.new({
         id = id.from(_N, "EcsParameters", "PropagateTags"),
         type = "string",
         name = "PropagateTags",
         target_id = prelude.String.id,
      }),
      ReferenceId = schema.new({
         id = id.from(_N, "EcsParameters", "ReferenceId"),
         type = "string",
         name = "ReferenceId",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "EcsParameters", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.TagMap,
      }),
   },
})

M.EventBridgeParameters = schema.new({
   id = id.from(_N, "EventBridgeParameters"),
   type = "structure",
   members = {
      DetailType = schema.new({
         id = id.from(_N, "EventBridgeParameters", "DetailType"),
         type = "string",
         name = "DetailType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Source = schema.new({
         id = id.from(_N, "EventBridgeParameters", "Source"),
         type = "string",
         name = "Source",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.KinesisParameters = schema.new({
   id = id.from(_N, "KinesisParameters"),
   type = "structure",
   members = {
      PartitionKey = schema.new({
         id = id.from(_N, "KinesisParameters", "PartitionKey"),
         type = "string",
         name = "PartitionKey",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RetryPolicy = schema.new({
   id = id.from(_N, "RetryPolicy"),
   type = "structure",
   members = {
      MaximumEventAgeInSeconds = schema.new({
         id = id.from(_N, "RetryPolicy", "MaximumEventAgeInSeconds"),
         type = "integer",
         name = "MaximumEventAgeInSeconds",
         target_id = prelude.Integer.id,
      }),
      MaximumRetryAttempts = schema.new({
         id = id.from(_N, "RetryPolicy", "MaximumRetryAttempts"),
         type = "integer",
         name = "MaximumRetryAttempts",
         target_id = prelude.Integer.id,
      }),
   },
})

M.SageMakerPipelineParameter = schema.new({
   id = id.from(_N, "SageMakerPipelineParameter"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "SageMakerPipelineParameter", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Value = schema.new({
         id = id.from(_N, "SageMakerPipelineParameter", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SageMakerPipelineParameters = schema.new({
   id = id.from(_N, "SageMakerPipelineParameters"),
   type = "structure",
   members = {
      PipelineParameterList = schema.new({
         id = id.from(_N, "SageMakerPipelineParameters", "PipelineParameterList"),
         type = "list",
         name = "PipelineParameterList",
         target_id = prelude.Document.id,
         list_member = M.SageMakerPipelineParameter,
      }),
   },
})

M.SqsParameters = schema.new({
   id = id.from(_N, "SqsParameters"),
   type = "structure",
   members = {
      MessageGroupId = schema.new({
         id = id.from(_N, "SqsParameters", "MessageGroupId"),
         type = "string",
         name = "MessageGroupId",
         target_id = prelude.String.id,
      }),
   },
})

M.Target = schema.new({
   id = id.from(_N, "Target"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "Target", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RoleArn = schema.new({
         id = id.from(_N, "Target", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DeadLetterConfig = schema.new({
         id = id.from(_N, "Target", "DeadLetterConfig"),
         type = "structure",
         name = "DeadLetterConfig",
         target_id = id.from(_N, "DeadLetterConfig"),
         target = M.DeadLetterConfig,
      }),
      RetryPolicy = schema.new({
         id = id.from(_N, "Target", "RetryPolicy"),
         type = "structure",
         name = "RetryPolicy",
         target_id = id.from(_N, "RetryPolicy"),
         target = M.RetryPolicy,
      }),
      Input = schema.new({
         id = id.from(_N, "Target", "Input"),
         type = "string",
         name = "Input",
         target_id = prelude.String.id,
      }),
      EcsParameters = schema.new({
         id = id.from(_N, "Target", "EcsParameters"),
         type = "structure",
         name = "EcsParameters",
         target_id = id.from(_N, "EcsParameters"),
         target = M.EcsParameters,
      }),
      EventBridgeParameters = schema.new({
         id = id.from(_N, "Target", "EventBridgeParameters"),
         type = "structure",
         name = "EventBridgeParameters",
         target_id = id.from(_N, "EventBridgeParameters"),
         target = M.EventBridgeParameters,
      }),
      KinesisParameters = schema.new({
         id = id.from(_N, "Target", "KinesisParameters"),
         type = "structure",
         name = "KinesisParameters",
         target_id = id.from(_N, "KinesisParameters"),
         target = M.KinesisParameters,
      }),
      SageMakerPipelineParameters = schema.new({
         id = id.from(_N, "Target", "SageMakerPipelineParameters"),
         type = "structure",
         name = "SageMakerPipelineParameters",
         target_id = id.from(_N, "SageMakerPipelineParameters"),
         target = M.SageMakerPipelineParameters,
      }),
      SqsParameters = schema.new({
         id = id.from(_N, "Target", "SqsParameters"),
         type = "structure",
         name = "SqsParameters",
         target_id = id.from(_N, "SqsParameters"),
         target = M.SqsParameters,
      }),
   },
})

M.CreateScheduleInput = schema.new({
   id = id.from(_N, "CreateScheduleInput"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateScheduleInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      GroupName = schema.new({
         id = id.from(_N, "CreateScheduleInput", "GroupName"),
         type = "string",
         name = "GroupName",
         target_id = prelude.String.id,
      }),
      ScheduleExpression = schema.new({
         id = id.from(_N, "CreateScheduleInput", "ScheduleExpression"),
         type = "string",
         name = "ScheduleExpression",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StartDate = schema.new({
         id = id.from(_N, "CreateScheduleInput", "StartDate"),
         type = "timestamp",
         name = "StartDate",
         target_id = prelude.Timestamp.id,
      }),
      EndDate = schema.new({
         id = id.from(_N, "CreateScheduleInput", "EndDate"),
         type = "timestamp",
         name = "EndDate",
         target_id = prelude.Timestamp.id,
      }),
      Description = schema.new({
         id = id.from(_N, "CreateScheduleInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      ScheduleExpressionTimezone = schema.new({
         id = id.from(_N, "CreateScheduleInput", "ScheduleExpressionTimezone"),
         type = "string",
         name = "ScheduleExpressionTimezone",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "CreateScheduleInput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      KmsKeyArn = schema.new({
         id = id.from(_N, "CreateScheduleInput", "KmsKeyArn"),
         type = "string",
         name = "KmsKeyArn",
         target_id = prelude.String.id,
      }),
      Target = schema.new({
         id = id.from(_N, "CreateScheduleInput", "Target"),
         type = "structure",
         name = "Target",
         target_id = id.from(_N, "Target"),
         target = M.Target,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FlexibleTimeWindow = schema.new({
         id = id.from(_N, "CreateScheduleInput", "FlexibleTimeWindow"),
         type = "structure",
         name = "FlexibleTimeWindow",
         target_id = id.from(_N, "FlexibleTimeWindow"),
         target = M.FlexibleTimeWindow,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateScheduleInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      ActionAfterCompletion = schema.new({
         id = id.from(_N, "CreateScheduleInput", "ActionAfterCompletion"),
         type = "string",
         name = "ActionAfterCompletion",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateScheduleOutput = schema.new({
   id = id.from(_N, "CreateScheduleOutput"),
   type = "structure",
   members = {
      ScheduleArn = schema.new({
         id = id.from(_N, "CreateScheduleOutput", "ScheduleArn"),
         type = "string",
         name = "ScheduleArn",
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
      Message = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteScheduleInput = schema.new({
   id = id.from(_N, "DeleteScheduleInput"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DeleteScheduleInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      GroupName = schema.new({
         id = id.from(_N, "DeleteScheduleInput", "GroupName"),
         type = "string",
         name = "GroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "groupName" },
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "DeleteScheduleInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "clientToken" },
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.DeleteScheduleOutput = schema.new({
   id = id.from(_N, "DeleteScheduleOutput"),
   type = "structure",
})

M.GetScheduleInput = schema.new({
   id = id.from(_N, "GetScheduleInput"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "GetScheduleInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      GroupName = schema.new({
         id = id.from(_N, "GetScheduleInput", "GroupName"),
         type = "string",
         name = "GroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "groupName" },
         },
      }),
   },
})

M.GetScheduleOutput = schema.new({
   id = id.from(_N, "GetScheduleOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "GetScheduleOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      GroupName = schema.new({
         id = id.from(_N, "GetScheduleOutput", "GroupName"),
         type = "string",
         name = "GroupName",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "GetScheduleOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      ScheduleExpression = schema.new({
         id = id.from(_N, "GetScheduleOutput", "ScheduleExpression"),
         type = "string",
         name = "ScheduleExpression",
         target_id = prelude.String.id,
      }),
      StartDate = schema.new({
         id = id.from(_N, "GetScheduleOutput", "StartDate"),
         type = "timestamp",
         name = "StartDate",
         target_id = prelude.Timestamp.id,
      }),
      EndDate = schema.new({
         id = id.from(_N, "GetScheduleOutput", "EndDate"),
         type = "timestamp",
         name = "EndDate",
         target_id = prelude.Timestamp.id,
      }),
      Description = schema.new({
         id = id.from(_N, "GetScheduleOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      ScheduleExpressionTimezone = schema.new({
         id = id.from(_N, "GetScheduleOutput", "ScheduleExpressionTimezone"),
         type = "string",
         name = "ScheduleExpressionTimezone",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "GetScheduleOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "GetScheduleOutput", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      LastModificationDate = schema.new({
         id = id.from(_N, "GetScheduleOutput", "LastModificationDate"),
         type = "timestamp",
         name = "LastModificationDate",
         target_id = prelude.Timestamp.id,
      }),
      KmsKeyArn = schema.new({
         id = id.from(_N, "GetScheduleOutput", "KmsKeyArn"),
         type = "string",
         name = "KmsKeyArn",
         target_id = prelude.String.id,
      }),
      Target = schema.new({
         id = id.from(_N, "GetScheduleOutput", "Target"),
         type = "structure",
         name = "Target",
         target_id = id.from(_N, "Target"),
         target = M.Target,
      }),
      FlexibleTimeWindow = schema.new({
         id = id.from(_N, "GetScheduleOutput", "FlexibleTimeWindow"),
         type = "structure",
         name = "FlexibleTimeWindow",
         target_id = id.from(_N, "FlexibleTimeWindow"),
         target = M.FlexibleTimeWindow,
      }),
      ActionAfterCompletion = schema.new({
         id = id.from(_N, "GetScheduleOutput", "ActionAfterCompletion"),
         type = "string",
         name = "ActionAfterCompletion",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSchedulesInput = schema.new({
   id = id.from(_N, "ListSchedulesInput"),
   type = "structure",
   members = {
      GroupName = schema.new({
         id = id.from(_N, "ListSchedulesInput", "GroupName"),
         type = "string",
         name = "GroupName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "ScheduleGroup" },
         },
      }),
      NamePrefix = schema.new({
         id = id.from(_N, "ListSchedulesInput", "NamePrefix"),
         type = "string",
         name = "NamePrefix",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NamePrefix" },
         },
      }),
      State = schema.new({
         id = id.from(_N, "ListSchedulesInput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "State" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListSchedulesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListSchedulesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
   },
})

M.TargetSummary = schema.new({
   id = id.from(_N, "TargetSummary"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "TargetSummary", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ScheduleSummary = schema.new({
   id = id.from(_N, "ScheduleSummary"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "ScheduleSummary", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "ScheduleSummary", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      GroupName = schema.new({
         id = id.from(_N, "ScheduleSummary", "GroupName"),
         type = "string",
         name = "GroupName",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "ScheduleSummary", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "ScheduleSummary", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      LastModificationDate = schema.new({
         id = id.from(_N, "ScheduleSummary", "LastModificationDate"),
         type = "timestamp",
         name = "LastModificationDate",
         target_id = prelude.Timestamp.id,
      }),
      Target = schema.new({
         id = id.from(_N, "ScheduleSummary", "Target"),
         type = "structure",
         name = "Target",
         target_id = id.from(_N, "TargetSummary"),
         target = M.TargetSummary,
      }),
   },
})

M.ListSchedulesOutput = schema.new({
   id = id.from(_N, "ListSchedulesOutput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListSchedulesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      Schedules = schema.new({
         id = id.from(_N, "ListSchedulesOutput", "Schedules"),
         type = "list",
         name = "Schedules",
         target_id = prelude.Document.id,
         list_member = M.ScheduleSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateScheduleInput = schema.new({
   id = id.from(_N, "UpdateScheduleInput"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "UpdateScheduleInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      GroupName = schema.new({
         id = id.from(_N, "UpdateScheduleInput", "GroupName"),
         type = "string",
         name = "GroupName",
         target_id = prelude.String.id,
      }),
      ScheduleExpression = schema.new({
         id = id.from(_N, "UpdateScheduleInput", "ScheduleExpression"),
         type = "string",
         name = "ScheduleExpression",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StartDate = schema.new({
         id = id.from(_N, "UpdateScheduleInput", "StartDate"),
         type = "timestamp",
         name = "StartDate",
         target_id = prelude.Timestamp.id,
      }),
      EndDate = schema.new({
         id = id.from(_N, "UpdateScheduleInput", "EndDate"),
         type = "timestamp",
         name = "EndDate",
         target_id = prelude.Timestamp.id,
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateScheduleInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      ScheduleExpressionTimezone = schema.new({
         id = id.from(_N, "UpdateScheduleInput", "ScheduleExpressionTimezone"),
         type = "string",
         name = "ScheduleExpressionTimezone",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "UpdateScheduleInput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      KmsKeyArn = schema.new({
         id = id.from(_N, "UpdateScheduleInput", "KmsKeyArn"),
         type = "string",
         name = "KmsKeyArn",
         target_id = prelude.String.id,
      }),
      Target = schema.new({
         id = id.from(_N, "UpdateScheduleInput", "Target"),
         type = "structure",
         name = "Target",
         target_id = id.from(_N, "Target"),
         target = M.Target,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FlexibleTimeWindow = schema.new({
         id = id.from(_N, "UpdateScheduleInput", "FlexibleTimeWindow"),
         type = "structure",
         name = "FlexibleTimeWindow",
         target_id = id.from(_N, "FlexibleTimeWindow"),
         target = M.FlexibleTimeWindow,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "UpdateScheduleInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      ActionAfterCompletion = schema.new({
         id = id.from(_N, "UpdateScheduleInput", "ActionAfterCompletion"),
         type = "string",
         name = "ActionAfterCompletion",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateScheduleOutput = schema.new({
   id = id.from(_N, "UpdateScheduleOutput"),
   type = "structure",
   members = {
      ScheduleArn = schema.new({
         id = id.from(_N, "UpdateScheduleOutput", "ScheduleArn"),
         type = "string",
         name = "ScheduleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateScheduleGroupInput = schema.new({
   id = id.from(_N, "CreateScheduleGroupInput"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateScheduleGroupInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateScheduleGroupInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateScheduleGroupInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateScheduleGroupOutput = schema.new({
   id = id.from(_N, "CreateScheduleGroupOutput"),
   type = "structure",
   members = {
      ScheduleGroupArn = schema.new({
         id = id.from(_N, "CreateScheduleGroupOutput", "ScheduleGroupArn"),
         type = "string",
         name = "ScheduleGroupArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteScheduleGroupInput = schema.new({
   id = id.from(_N, "DeleteScheduleGroupInput"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DeleteScheduleGroupInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "DeleteScheduleGroupInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "clientToken" },
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.DeleteScheduleGroupOutput = schema.new({
   id = id.from(_N, "DeleteScheduleGroupOutput"),
   type = "structure",
})

M.GetScheduleGroupInput = schema.new({
   id = id.from(_N, "GetScheduleGroupInput"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "GetScheduleGroupInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetScheduleGroupOutput = schema.new({
   id = id.from(_N, "GetScheduleGroupOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "GetScheduleGroupOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "GetScheduleGroupOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "GetScheduleGroupOutput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "GetScheduleGroupOutput", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      LastModificationDate = schema.new({
         id = id.from(_N, "GetScheduleGroupOutput", "LastModificationDate"),
         type = "timestamp",
         name = "LastModificationDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListScheduleGroupsInput = schema.new({
   id = id.from(_N, "ListScheduleGroupsInput"),
   type = "structure",
   members = {
      NamePrefix = schema.new({
         id = id.from(_N, "ListScheduleGroupsInput", "NamePrefix"),
         type = "string",
         name = "NamePrefix",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NamePrefix" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListScheduleGroupsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListScheduleGroupsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "MaxResults" },
         },
      }),
   },
})

M.ScheduleGroupSummary = schema.new({
   id = id.from(_N, "ScheduleGroupSummary"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "ScheduleGroupSummary", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "ScheduleGroupSummary", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "ScheduleGroupSummary", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "ScheduleGroupSummary", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      LastModificationDate = schema.new({
         id = id.from(_N, "ScheduleGroupSummary", "LastModificationDate"),
         type = "timestamp",
         name = "LastModificationDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListScheduleGroupsOutput = schema.new({
   id = id.from(_N, "ListScheduleGroupsOutput"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListScheduleGroupsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      ScheduleGroups = schema.new({
         id = id.from(_N, "ListScheduleGroupsOutput", "ScheduleGroups"),
         type = "list",
         name = "ScheduleGroups",
         target_id = prelude.Document.id,
         list_member = M.ScheduleGroupSummary,
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
      ResourceArn = schema.new({
         id = id.from(_N, "TagResourceInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "TagResourceInput", "Tags"),
         type = "list",
         name = "Tags",
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

M.UntagResourceInput = schema.new({
   id = id.from(_N, "UntagResourceInput"),
   type = "structure",
   members = {
      ResourceArn = schema.new({
         id = id.from(_N, "UntagResourceInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      TagKeys = schema.new({
         id = id.from(_N, "UntagResourceInput", "TagKeys"),
         type = "list",
         name = "TagKeys",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "TagKeys" },
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
   id = id.from("com.amazonaws.scheduler", "AWSChronosService"),
   version = "2021-06-30",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateSchedule = schema.operation({
   id = id.from("com.amazonaws.scheduler", "CreateSchedule"),
   input = M.CreateScheduleInput,
   output = M.CreateScheduleOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/schedules/{Name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateScheduleGroup = schema.operation({
   id = id.from("com.amazonaws.scheduler", "CreateScheduleGroup"),
   input = M.CreateScheduleGroupInput,
   output = M.CreateScheduleGroupOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/schedule-groups/{Name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteSchedule = schema.operation({
   id = id.from("com.amazonaws.scheduler", "DeleteSchedule"),
   input = M.DeleteScheduleInput,
   output = M.DeleteScheduleOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/schedules/{Name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteScheduleGroup = schema.operation({
   id = id.from("com.amazonaws.scheduler", "DeleteScheduleGroup"),
   input = M.DeleteScheduleGroupInput,
   output = M.DeleteScheduleGroupOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/schedule-groups/{Name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSchedule = schema.operation({
   id = id.from("com.amazonaws.scheduler", "GetSchedule"),
   input = M.GetScheduleInput,
   output = M.GetScheduleOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/schedules/{Name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetScheduleGroup = schema.operation({
   id = id.from("com.amazonaws.scheduler", "GetScheduleGroup"),
   input = M.GetScheduleGroupInput,
   output = M.GetScheduleGroupOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/schedule-groups/{Name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListScheduleGroups = schema.operation({
   id = id.from("com.amazonaws.scheduler", "ListScheduleGroups"),
   input = M.ListScheduleGroupsInput,
   output = M.ListScheduleGroupsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/schedule-groups" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSchedules = schema.operation({
   id = id.from("com.amazonaws.scheduler", "ListSchedules"),
   input = M.ListSchedulesInput,
   output = M.ListSchedulesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/schedules" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.scheduler", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.scheduler", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.scheduler", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateSchedule = schema.operation({
   id = id.from("com.amazonaws.scheduler", "UpdateSchedule"),
   input = M.UpdateScheduleInput,
   output = M.UpdateScheduleOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/schedules/{Name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
