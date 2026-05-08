

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.pipes"

local M = {}

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ValidationExceptionFieldList = schema.new({ type = "list", list_member = M.ValidationExceptionField })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.PipeList = schema.new({ type = "list", list_member = M.Pipe })

M.IncludeExecutionData = schema.new({ type = "list", list_member = prelude.String })

M.FilterList = schema.new({ type = "list", list_member = M.Filter })

M.KafkaBootstrapServers = schema.new({ type = "list", list_member = prelude.String })

M.PathParameterList = schema.new({ type = "list", list_member = prelude.String })

M.HeaderParametersMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.QueryStringParametersMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.CapacityProviderStrategy = schema.new({ type = "list", list_member = M.CapacityProviderStrategyItem })

M.PlacementConstraints = schema.new({ type = "list", list_member = M.PlacementConstraint })

M.PlacementStrategies = schema.new({ type = "list", list_member = M.PlacementStrategy })

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.BatchDependsOn = schema.new({ type = "list", list_member = M.BatchJobDependency })

M.BatchParametersMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.Sqls = schema.new({ type = "list", list_member = prelude.String })

M.SageMakerPipelineParameterList = schema.new({ type = "list", list_member = M.SageMakerPipelineParameter })

M.EventBridgeEventResourceList = schema.new({ type = "list", list_member = prelude.String })

M.DimensionMappings = schema.new({ type = "list", list_member = M.DimensionMapping })

M.SingleMeasureMappings = schema.new({ type = "list", list_member = M.SingleMeasureMapping })

M.MultiMeasureMappings = schema.new({ type = "list", list_member = M.MultiMeasureMapping })

M.SubnetIds = schema.new({ type = "list", list_member = prelude.String })

M.SecurityGroupIds = schema.new({ type = "list", list_member = prelude.String })

M.EcsContainerOverrideList = schema.new({ type = "list", list_member = M.EcsContainerOverride })

M.EcsInferenceAcceleratorOverrideList = schema.new({ type = "list", list_member = M.EcsInferenceAcceleratorOverride })

M.StringList = schema.new({ type = "list", list_member = prelude.String })

M.BatchEnvironmentVariableList = schema.new({ type = "list", list_member = M.BatchEnvironmentVariable })

M.BatchResourceRequirementsList = schema.new({ type = "list", list_member = M.BatchResourceRequirement })

M.Subnets = schema.new({ type = "list", list_member = prelude.String })

M.SecurityGroups = schema.new({ type = "list", list_member = prelude.String })

M.MultiMeasureAttributeMappings = schema.new({ type = "list", list_member = M.MultiMeasureAttributeMapping })

M.EcsEnvironmentVariableList = schema.new({ type = "list", list_member = M.EcsEnvironmentVariable })

M.EcsEnvironmentFileList = schema.new({ type = "list", list_member = M.EcsEnvironmentFile })

M.EcsResourceRequirementsList = schema.new({ type = "list", list_member = M.EcsResourceRequirement })

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

M.BatchArrayProperties = schema.new({
   id = id.from(_N, "BatchArrayProperties"),
   type = "structure",
   members = {
      Size = schema.new({
         id = id.from(_N, "BatchArrayProperties", "Size"),
         type = "integer",
         name = "Size",
         target_id = prelude.Integer.id,
      }),
   },
})

M.BatchEnvironmentVariable = schema.new({
   id = id.from(_N, "BatchEnvironmentVariable"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "BatchEnvironmentVariable", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Value = schema.new({
         id = id.from(_N, "BatchEnvironmentVariable", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchResourceRequirement = schema.new({
   id = id.from(_N, "BatchResourceRequirement"),
   type = "structure",
   members = {
      Type = schema.new({
         id = id.from(_N, "BatchResourceRequirement", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Value = schema.new({
         id = id.from(_N, "BatchResourceRequirement", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchContainerOverrides = schema.new({
   id = id.from(_N, "BatchContainerOverrides"),
   type = "structure",
   members = {
      Command = schema.new({
         id = id.from(_N, "BatchContainerOverrides", "Command"),
         type = "list",
         name = "Command",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Environment = schema.new({
         id = id.from(_N, "BatchContainerOverrides", "Environment"),
         type = "list",
         name = "Environment",
         target_id = prelude.Document.id,
         list_member = M.BatchEnvironmentVariable,
      }),
      InstanceType = schema.new({
         id = id.from(_N, "BatchContainerOverrides", "InstanceType"),
         type = "string",
         name = "InstanceType",
         target_id = prelude.String.id,
      }),
      ResourceRequirements = schema.new({
         id = id.from(_N, "BatchContainerOverrides", "ResourceRequirements"),
         type = "list",
         name = "ResourceRequirements",
         target_id = prelude.Document.id,
         list_member = M.BatchResourceRequirement,
      }),
   },
})

M.BatchJobDependency = schema.new({
   id = id.from(_N, "BatchJobDependency"),
   type = "structure",
   members = {
      JobId = schema.new({
         id = id.from(_N, "BatchJobDependency", "JobId"),
         type = "string",
         name = "JobId",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "BatchJobDependency", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchRetryStrategy = schema.new({
   id = id.from(_N, "BatchRetryStrategy"),
   type = "structure",
   members = {
      Attempts = schema.new({
         id = id.from(_N, "BatchRetryStrategy", "Attempts"),
         type = "integer",
         name = "Attempts",
         target_id = prelude.Integer.id,
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

M.CloudwatchLogsLogDestination = schema.new({
   id = id.from(_N, "CloudwatchLogsLogDestination"),
   type = "structure",
   members = {
      LogGroupArn = schema.new({
         id = id.from(_N, "CloudwatchLogsLogDestination", "LogGroupArn"),
         type = "string",
         name = "LogGroupArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CloudwatchLogsLogDestinationParameters = schema.new({
   id = id.from(_N, "CloudwatchLogsLogDestinationParameters"),
   type = "structure",
   members = {
      LogGroupArn = schema.new({
         id = id.from(_N, "CloudwatchLogsLogDestinationParameters", "LogGroupArn"),
         type = "string",
         name = "LogGroupArn",
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
      resourceId = schema.new({
         id = id.from(_N, "ConflictException", "resourceId"),
         type = "string",
         name = "resourceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceType = schema.new({
         id = id.from(_N, "ConflictException", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PipeEnrichmentHttpParameters = schema.new({
   id = id.from(_N, "PipeEnrichmentHttpParameters"),
   type = "structure",
   members = {
      PathParameterValues = schema.new({
         id = id.from(_N, "PipeEnrichmentHttpParameters", "PathParameterValues"),
         type = "list",
         name = "PathParameterValues",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      HeaderParameters = schema.new({
         id = id.from(_N, "PipeEnrichmentHttpParameters", "HeaderParameters"),
         type = "map",
         name = "HeaderParameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      QueryStringParameters = schema.new({
         id = id.from(_N, "PipeEnrichmentHttpParameters", "QueryStringParameters"),
         type = "map",
         name = "QueryStringParameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.PipeEnrichmentParameters = schema.new({
   id = id.from(_N, "PipeEnrichmentParameters"),
   type = "structure",
   members = {
      InputTemplate = schema.new({
         id = id.from(_N, "PipeEnrichmentParameters", "InputTemplate"),
         type = "string",
         name = "InputTemplate",
         target_id = prelude.String.id,
      }),
      HttpParameters = schema.new({
         id = id.from(_N, "PipeEnrichmentParameters", "HttpParameters"),
         type = "structure",
         name = "HttpParameters",
         target_id = id.from(_N, "PipeEnrichmentHttpParameters"),
         target = M.PipeEnrichmentHttpParameters,
      }),
   },
})

M.FirehoseLogDestinationParameters = schema.new({
   id = id.from(_N, "FirehoseLogDestinationParameters"),
   type = "structure",
   members = {
      DeliveryStreamArn = schema.new({
         id = id.from(_N, "FirehoseLogDestinationParameters", "DeliveryStreamArn"),
         type = "string",
         name = "DeliveryStreamArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.S3LogDestinationParameters = schema.new({
   id = id.from(_N, "S3LogDestinationParameters"),
   type = "structure",
   members = {
      BucketName = schema.new({
         id = id.from(_N, "S3LogDestinationParameters", "BucketName"),
         type = "string",
         name = "BucketName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BucketOwner = schema.new({
         id = id.from(_N, "S3LogDestinationParameters", "BucketOwner"),
         type = "string",
         name = "BucketOwner",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      OutputFormat = schema.new({
         id = id.from(_N, "S3LogDestinationParameters", "OutputFormat"),
         type = "string",
         name = "OutputFormat",
         target_id = prelude.String.id,
      }),
      Prefix = schema.new({
         id = id.from(_N, "S3LogDestinationParameters", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
   },
})

M.PipeLogConfigurationParameters = schema.new({
   id = id.from(_N, "PipeLogConfigurationParameters"),
   type = "structure",
   members = {
      S3LogDestination = schema.new({
         id = id.from(_N, "PipeLogConfigurationParameters", "S3LogDestination"),
         type = "structure",
         name = "S3LogDestination",
         target_id = id.from(_N, "S3LogDestinationParameters"),
         target = M.S3LogDestinationParameters,
      }),
      FirehoseLogDestination = schema.new({
         id = id.from(_N, "PipeLogConfigurationParameters", "FirehoseLogDestination"),
         type = "structure",
         name = "FirehoseLogDestination",
         target_id = id.from(_N, "FirehoseLogDestinationParameters"),
         target = M.FirehoseLogDestinationParameters,
      }),
      CloudwatchLogsLogDestination = schema.new({
         id = id.from(_N, "PipeLogConfigurationParameters", "CloudwatchLogsLogDestination"),
         type = "structure",
         name = "CloudwatchLogsLogDestination",
         target_id = id.from(_N, "CloudwatchLogsLogDestinationParameters"),
         target = M.CloudwatchLogsLogDestinationParameters,
      }),
      Level = schema.new({
         id = id.from(_N, "PipeLogConfigurationParameters", "Level"),
         type = "string",
         name = "Level",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IncludeExecutionData = schema.new({
         id = id.from(_N, "PipeLogConfigurationParameters", "IncludeExecutionData"),
         type = "list",
         name = "IncludeExecutionData",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.MQBrokerAccessCredentials = schema.new({
   id = id.from(_N, "MQBrokerAccessCredentials"),
   type = "union",
   members = {
      BasicAuth = schema.new({
         id = id.from(_N, "MQBrokerAccessCredentials", "BasicAuth"),
         type = "string",
         name = "BasicAuth",
         target_id = prelude.String.id,
      }),
   },
})

M.PipeSourceActiveMQBrokerParameters = schema.new({
   id = id.from(_N, "PipeSourceActiveMQBrokerParameters"),
   type = "structure",
   members = {
      Credentials = schema.new({
         id = id.from(_N, "PipeSourceActiveMQBrokerParameters", "Credentials"),
         type = "union",
         name = "Credentials",
         target_id = id.from(_N, "MQBrokerAccessCredentials"),
         target = M.MQBrokerAccessCredentials,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      QueueName = schema.new({
         id = id.from(_N, "PipeSourceActiveMQBrokerParameters", "QueueName"),
         type = "string",
         name = "QueueName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BatchSize = schema.new({
         id = id.from(_N, "PipeSourceActiveMQBrokerParameters", "BatchSize"),
         type = "integer",
         name = "BatchSize",
         target_id = prelude.Integer.id,
      }),
      MaximumBatchingWindowInSeconds = schema.new({
         id = id.from(_N, "PipeSourceActiveMQBrokerParameters", "MaximumBatchingWindowInSeconds"),
         type = "integer",
         name = "MaximumBatchingWindowInSeconds",
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

M.PipeSourceDynamoDBStreamParameters = schema.new({
   id = id.from(_N, "PipeSourceDynamoDBStreamParameters"),
   type = "structure",
   members = {
      BatchSize = schema.new({
         id = id.from(_N, "PipeSourceDynamoDBStreamParameters", "BatchSize"),
         type = "integer",
         name = "BatchSize",
         target_id = prelude.Integer.id,
      }),
      DeadLetterConfig = schema.new({
         id = id.from(_N, "PipeSourceDynamoDBStreamParameters", "DeadLetterConfig"),
         type = "structure",
         name = "DeadLetterConfig",
         target_id = id.from(_N, "DeadLetterConfig"),
         target = M.DeadLetterConfig,
      }),
      OnPartialBatchItemFailure = schema.new({
         id = id.from(_N, "PipeSourceDynamoDBStreamParameters", "OnPartialBatchItemFailure"),
         type = "string",
         name = "OnPartialBatchItemFailure",
         target_id = prelude.String.id,
      }),
      MaximumBatchingWindowInSeconds = schema.new({
         id = id.from(_N, "PipeSourceDynamoDBStreamParameters", "MaximumBatchingWindowInSeconds"),
         type = "integer",
         name = "MaximumBatchingWindowInSeconds",
         target_id = prelude.Integer.id,
      }),
      MaximumRecordAgeInSeconds = schema.new({
         id = id.from(_N, "PipeSourceDynamoDBStreamParameters", "MaximumRecordAgeInSeconds"),
         type = "integer",
         name = "MaximumRecordAgeInSeconds",
         target_id = prelude.Integer.id,
      }),
      MaximumRetryAttempts = schema.new({
         id = id.from(_N, "PipeSourceDynamoDBStreamParameters", "MaximumRetryAttempts"),
         type = "integer",
         name = "MaximumRetryAttempts",
         target_id = prelude.Integer.id,
      }),
      ParallelizationFactor = schema.new({
         id = id.from(_N, "PipeSourceDynamoDBStreamParameters", "ParallelizationFactor"),
         type = "integer",
         name = "ParallelizationFactor",
         target_id = prelude.Integer.id,
      }),
      StartingPosition = schema.new({
         id = id.from(_N, "PipeSourceDynamoDBStreamParameters", "StartingPosition"),
         type = "string",
         name = "StartingPosition",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Filter = schema.new({
   id = id.from(_N, "Filter"),
   type = "structure",
   members = {
      Pattern = schema.new({
         id = id.from(_N, "Filter", "Pattern"),
         type = "string",
         name = "Pattern",
         target_id = prelude.String.id,
      }),
   },
})

M.FilterCriteria = schema.new({
   id = id.from(_N, "FilterCriteria"),
   type = "structure",
   members = {
      Filters = schema.new({
         id = id.from(_N, "FilterCriteria", "Filters"),
         type = "list",
         name = "Filters",
         target_id = prelude.Document.id,
         list_member = M.Filter,
      }),
   },
})

M.PipeSourceKinesisStreamParameters = schema.new({
   id = id.from(_N, "PipeSourceKinesisStreamParameters"),
   type = "structure",
   members = {
      BatchSize = schema.new({
         id = id.from(_N, "PipeSourceKinesisStreamParameters", "BatchSize"),
         type = "integer",
         name = "BatchSize",
         target_id = prelude.Integer.id,
      }),
      DeadLetterConfig = schema.new({
         id = id.from(_N, "PipeSourceKinesisStreamParameters", "DeadLetterConfig"),
         type = "structure",
         name = "DeadLetterConfig",
         target_id = id.from(_N, "DeadLetterConfig"),
         target = M.DeadLetterConfig,
      }),
      OnPartialBatchItemFailure = schema.new({
         id = id.from(_N, "PipeSourceKinesisStreamParameters", "OnPartialBatchItemFailure"),
         type = "string",
         name = "OnPartialBatchItemFailure",
         target_id = prelude.String.id,
      }),
      MaximumBatchingWindowInSeconds = schema.new({
         id = id.from(_N, "PipeSourceKinesisStreamParameters", "MaximumBatchingWindowInSeconds"),
         type = "integer",
         name = "MaximumBatchingWindowInSeconds",
         target_id = prelude.Integer.id,
      }),
      MaximumRecordAgeInSeconds = schema.new({
         id = id.from(_N, "PipeSourceKinesisStreamParameters", "MaximumRecordAgeInSeconds"),
         type = "integer",
         name = "MaximumRecordAgeInSeconds",
         target_id = prelude.Integer.id,
      }),
      MaximumRetryAttempts = schema.new({
         id = id.from(_N, "PipeSourceKinesisStreamParameters", "MaximumRetryAttempts"),
         type = "integer",
         name = "MaximumRetryAttempts",
         target_id = prelude.Integer.id,
      }),
      ParallelizationFactor = schema.new({
         id = id.from(_N, "PipeSourceKinesisStreamParameters", "ParallelizationFactor"),
         type = "integer",
         name = "ParallelizationFactor",
         target_id = prelude.Integer.id,
      }),
      StartingPosition = schema.new({
         id = id.from(_N, "PipeSourceKinesisStreamParameters", "StartingPosition"),
         type = "string",
         name = "StartingPosition",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StartingPositionTimestamp = schema.new({
         id = id.from(_N, "PipeSourceKinesisStreamParameters", "StartingPositionTimestamp"),
         type = "timestamp",
         name = "StartingPositionTimestamp",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.MSKAccessCredentials = schema.new({
   id = id.from(_N, "MSKAccessCredentials"),
   type = "union",
   members = {
      SaslScram512Auth = schema.new({
         id = id.from(_N, "MSKAccessCredentials", "SaslScram512Auth"),
         type = "string",
         name = "SaslScram512Auth",
         target_id = prelude.String.id,
      }),
      ClientCertificateTlsAuth = schema.new({
         id = id.from(_N, "MSKAccessCredentials", "ClientCertificateTlsAuth"),
         type = "string",
         name = "ClientCertificateTlsAuth",
         target_id = prelude.String.id,
      }),
   },
})

M.PipeSourceManagedStreamingKafkaParameters = schema.new({
   id = id.from(_N, "PipeSourceManagedStreamingKafkaParameters"),
   type = "structure",
   members = {
      TopicName = schema.new({
         id = id.from(_N, "PipeSourceManagedStreamingKafkaParameters", "TopicName"),
         type = "string",
         name = "TopicName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StartingPosition = schema.new({
         id = id.from(_N, "PipeSourceManagedStreamingKafkaParameters", "StartingPosition"),
         type = "string",
         name = "StartingPosition",
         target_id = prelude.String.id,
      }),
      BatchSize = schema.new({
         id = id.from(_N, "PipeSourceManagedStreamingKafkaParameters", "BatchSize"),
         type = "integer",
         name = "BatchSize",
         target_id = prelude.Integer.id,
      }),
      MaximumBatchingWindowInSeconds = schema.new({
         id = id.from(_N, "PipeSourceManagedStreamingKafkaParameters", "MaximumBatchingWindowInSeconds"),
         type = "integer",
         name = "MaximumBatchingWindowInSeconds",
         target_id = prelude.Integer.id,
      }),
      ConsumerGroupID = schema.new({
         id = id.from(_N, "PipeSourceManagedStreamingKafkaParameters", "ConsumerGroupID"),
         type = "string",
         name = "ConsumerGroupID",
         target_id = prelude.String.id,
      }),
      Credentials = schema.new({
         id = id.from(_N, "PipeSourceManagedStreamingKafkaParameters", "Credentials"),
         type = "union",
         name = "Credentials",
         target_id = id.from(_N, "MSKAccessCredentials"),
         target = M.MSKAccessCredentials,
      }),
   },
})

M.PipeSourceRabbitMQBrokerParameters = schema.new({
   id = id.from(_N, "PipeSourceRabbitMQBrokerParameters"),
   type = "structure",
   members = {
      Credentials = schema.new({
         id = id.from(_N, "PipeSourceRabbitMQBrokerParameters", "Credentials"),
         type = "union",
         name = "Credentials",
         target_id = id.from(_N, "MQBrokerAccessCredentials"),
         target = M.MQBrokerAccessCredentials,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      QueueName = schema.new({
         id = id.from(_N, "PipeSourceRabbitMQBrokerParameters", "QueueName"),
         type = "string",
         name = "QueueName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      VirtualHost = schema.new({
         id = id.from(_N, "PipeSourceRabbitMQBrokerParameters", "VirtualHost"),
         type = "string",
         name = "VirtualHost",
         target_id = prelude.String.id,
      }),
      BatchSize = schema.new({
         id = id.from(_N, "PipeSourceRabbitMQBrokerParameters", "BatchSize"),
         type = "integer",
         name = "BatchSize",
         target_id = prelude.Integer.id,
      }),
      MaximumBatchingWindowInSeconds = schema.new({
         id = id.from(_N, "PipeSourceRabbitMQBrokerParameters", "MaximumBatchingWindowInSeconds"),
         type = "integer",
         name = "MaximumBatchingWindowInSeconds",
         target_id = prelude.Integer.id,
      }),
   },
})

M.SelfManagedKafkaAccessConfigurationCredentials = schema.new({
   id = id.from(_N, "SelfManagedKafkaAccessConfigurationCredentials"),
   type = "union",
   members = {
      BasicAuth = schema.new({
         id = id.from(_N, "SelfManagedKafkaAccessConfigurationCredentials", "BasicAuth"),
         type = "string",
         name = "BasicAuth",
         target_id = prelude.String.id,
      }),
      SaslScram512Auth = schema.new({
         id = id.from(_N, "SelfManagedKafkaAccessConfigurationCredentials", "SaslScram512Auth"),
         type = "string",
         name = "SaslScram512Auth",
         target_id = prelude.String.id,
      }),
      SaslScram256Auth = schema.new({
         id = id.from(_N, "SelfManagedKafkaAccessConfigurationCredentials", "SaslScram256Auth"),
         type = "string",
         name = "SaslScram256Auth",
         target_id = prelude.String.id,
      }),
      ClientCertificateTlsAuth = schema.new({
         id = id.from(_N, "SelfManagedKafkaAccessConfigurationCredentials", "ClientCertificateTlsAuth"),
         type = "string",
         name = "ClientCertificateTlsAuth",
         target_id = prelude.String.id,
      }),
   },
})

M.SelfManagedKafkaAccessConfigurationVpc = schema.new({
   id = id.from(_N, "SelfManagedKafkaAccessConfigurationVpc"),
   type = "structure",
   members = {
      Subnets = schema.new({
         id = id.from(_N, "SelfManagedKafkaAccessConfigurationVpc", "Subnets"),
         type = "list",
         name = "Subnets",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      SecurityGroup = schema.new({
         id = id.from(_N, "SelfManagedKafkaAccessConfigurationVpc", "SecurityGroup"),
         type = "list",
         name = "SecurityGroup",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.PipeSourceSelfManagedKafkaParameters = schema.new({
   id = id.from(_N, "PipeSourceSelfManagedKafkaParameters"),
   type = "structure",
   members = {
      TopicName = schema.new({
         id = id.from(_N, "PipeSourceSelfManagedKafkaParameters", "TopicName"),
         type = "string",
         name = "TopicName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StartingPosition = schema.new({
         id = id.from(_N, "PipeSourceSelfManagedKafkaParameters", "StartingPosition"),
         type = "string",
         name = "StartingPosition",
         target_id = prelude.String.id,
      }),
      AdditionalBootstrapServers = schema.new({
         id = id.from(_N, "PipeSourceSelfManagedKafkaParameters", "AdditionalBootstrapServers"),
         type = "list",
         name = "AdditionalBootstrapServers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      BatchSize = schema.new({
         id = id.from(_N, "PipeSourceSelfManagedKafkaParameters", "BatchSize"),
         type = "integer",
         name = "BatchSize",
         target_id = prelude.Integer.id,
      }),
      MaximumBatchingWindowInSeconds = schema.new({
         id = id.from(_N, "PipeSourceSelfManagedKafkaParameters", "MaximumBatchingWindowInSeconds"),
         type = "integer",
         name = "MaximumBatchingWindowInSeconds",
         target_id = prelude.Integer.id,
      }),
      ConsumerGroupID = schema.new({
         id = id.from(_N, "PipeSourceSelfManagedKafkaParameters", "ConsumerGroupID"),
         type = "string",
         name = "ConsumerGroupID",
         target_id = prelude.String.id,
      }),
      Credentials = schema.new({
         id = id.from(_N, "PipeSourceSelfManagedKafkaParameters", "Credentials"),
         type = "union",
         name = "Credentials",
         target_id = id.from(_N, "SelfManagedKafkaAccessConfigurationCredentials"),
         target = M.SelfManagedKafkaAccessConfigurationCredentials,
      }),
      ServerRootCaCertificate = schema.new({
         id = id.from(_N, "PipeSourceSelfManagedKafkaParameters", "ServerRootCaCertificate"),
         type = "string",
         name = "ServerRootCaCertificate",
         target_id = prelude.String.id,
      }),
      Vpc = schema.new({
         id = id.from(_N, "PipeSourceSelfManagedKafkaParameters", "Vpc"),
         type = "structure",
         name = "Vpc",
         target_id = id.from(_N, "SelfManagedKafkaAccessConfigurationVpc"),
         target = M.SelfManagedKafkaAccessConfigurationVpc,
      }),
   },
})

M.PipeSourceSqsQueueParameters = schema.new({
   id = id.from(_N, "PipeSourceSqsQueueParameters"),
   type = "structure",
   members = {
      BatchSize = schema.new({
         id = id.from(_N, "PipeSourceSqsQueueParameters", "BatchSize"),
         type = "integer",
         name = "BatchSize",
         target_id = prelude.Integer.id,
      }),
      MaximumBatchingWindowInSeconds = schema.new({
         id = id.from(_N, "PipeSourceSqsQueueParameters", "MaximumBatchingWindowInSeconds"),
         type = "integer",
         name = "MaximumBatchingWindowInSeconds",
         target_id = prelude.Integer.id,
      }),
   },
})

M.PipeSourceParameters = schema.new({
   id = id.from(_N, "PipeSourceParameters"),
   type = "structure",
   members = {
      FilterCriteria = schema.new({
         id = id.from(_N, "PipeSourceParameters", "FilterCriteria"),
         type = "structure",
         name = "FilterCriteria",
         target_id = id.from(_N, "FilterCriteria"),
         target = M.FilterCriteria,
      }),
      KinesisStreamParameters = schema.new({
         id = id.from(_N, "PipeSourceParameters", "KinesisStreamParameters"),
         type = "structure",
         name = "KinesisStreamParameters",
         target_id = id.from(_N, "PipeSourceKinesisStreamParameters"),
         target = M.PipeSourceKinesisStreamParameters,
      }),
      DynamoDBStreamParameters = schema.new({
         id = id.from(_N, "PipeSourceParameters", "DynamoDBStreamParameters"),
         type = "structure",
         name = "DynamoDBStreamParameters",
         target_id = id.from(_N, "PipeSourceDynamoDBStreamParameters"),
         target = M.PipeSourceDynamoDBStreamParameters,
      }),
      SqsQueueParameters = schema.new({
         id = id.from(_N, "PipeSourceParameters", "SqsQueueParameters"),
         type = "structure",
         name = "SqsQueueParameters",
         target_id = id.from(_N, "PipeSourceSqsQueueParameters"),
         target = M.PipeSourceSqsQueueParameters,
      }),
      ActiveMQBrokerParameters = schema.new({
         id = id.from(_N, "PipeSourceParameters", "ActiveMQBrokerParameters"),
         type = "structure",
         name = "ActiveMQBrokerParameters",
         target_id = id.from(_N, "PipeSourceActiveMQBrokerParameters"),
         target = M.PipeSourceActiveMQBrokerParameters,
      }),
      RabbitMQBrokerParameters = schema.new({
         id = id.from(_N, "PipeSourceParameters", "RabbitMQBrokerParameters"),
         type = "structure",
         name = "RabbitMQBrokerParameters",
         target_id = id.from(_N, "PipeSourceRabbitMQBrokerParameters"),
         target = M.PipeSourceRabbitMQBrokerParameters,
      }),
      ManagedStreamingKafkaParameters = schema.new({
         id = id.from(_N, "PipeSourceParameters", "ManagedStreamingKafkaParameters"),
         type = "structure",
         name = "ManagedStreamingKafkaParameters",
         target_id = id.from(_N, "PipeSourceManagedStreamingKafkaParameters"),
         target = M.PipeSourceManagedStreamingKafkaParameters,
      }),
      SelfManagedKafkaParameters = schema.new({
         id = id.from(_N, "PipeSourceParameters", "SelfManagedKafkaParameters"),
         type = "structure",
         name = "SelfManagedKafkaParameters",
         target_id = id.from(_N, "PipeSourceSelfManagedKafkaParameters"),
         target = M.PipeSourceSelfManagedKafkaParameters,
      }),
   },
})

M.PipeTargetBatchJobParameters = schema.new({
   id = id.from(_N, "PipeTargetBatchJobParameters"),
   type = "structure",
   members = {
      JobDefinition = schema.new({
         id = id.from(_N, "PipeTargetBatchJobParameters", "JobDefinition"),
         type = "string",
         name = "JobDefinition",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JobName = schema.new({
         id = id.from(_N, "PipeTargetBatchJobParameters", "JobName"),
         type = "string",
         name = "JobName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ArrayProperties = schema.new({
         id = id.from(_N, "PipeTargetBatchJobParameters", "ArrayProperties"),
         type = "structure",
         name = "ArrayProperties",
         target_id = id.from(_N, "BatchArrayProperties"),
         target = M.BatchArrayProperties,
      }),
      RetryStrategy = schema.new({
         id = id.from(_N, "PipeTargetBatchJobParameters", "RetryStrategy"),
         type = "structure",
         name = "RetryStrategy",
         target_id = id.from(_N, "BatchRetryStrategy"),
         target = M.BatchRetryStrategy,
      }),
      ContainerOverrides = schema.new({
         id = id.from(_N, "PipeTargetBatchJobParameters", "ContainerOverrides"),
         type = "structure",
         name = "ContainerOverrides",
         target_id = id.from(_N, "BatchContainerOverrides"),
         target = M.BatchContainerOverrides,
      }),
      DependsOn = schema.new({
         id = id.from(_N, "PipeTargetBatchJobParameters", "DependsOn"),
         type = "list",
         name = "DependsOn",
         target_id = prelude.Document.id,
         list_member = M.BatchJobDependency,
      }),
      Parameters = schema.new({
         id = id.from(_N, "PipeTargetBatchJobParameters", "Parameters"),
         type = "map",
         name = "Parameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.PipeTargetCloudWatchLogsParameters = schema.new({
   id = id.from(_N, "PipeTargetCloudWatchLogsParameters"),
   type = "structure",
   members = {
      LogStreamName = schema.new({
         id = id.from(_N, "PipeTargetCloudWatchLogsParameters", "LogStreamName"),
         type = "string",
         name = "LogStreamName",
         target_id = prelude.String.id,
      }),
      Timestamp = schema.new({
         id = id.from(_N, "PipeTargetCloudWatchLogsParameters", "Timestamp"),
         type = "string",
         name = "Timestamp",
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

M.EcsEnvironmentVariable = schema.new({
   id = id.from(_N, "EcsEnvironmentVariable"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "EcsEnvironmentVariable", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      value = schema.new({
         id = id.from(_N, "EcsEnvironmentVariable", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
      }),
   },
})

M.EcsEnvironmentFile = schema.new({
   id = id.from(_N, "EcsEnvironmentFile"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "EcsEnvironmentFile", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "EcsEnvironmentFile", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EcsResourceRequirement = schema.new({
   id = id.from(_N, "EcsResourceRequirement"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "EcsResourceRequirement", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "EcsResourceRequirement", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EcsContainerOverride = schema.new({
   id = id.from(_N, "EcsContainerOverride"),
   type = "structure",
   members = {
      Command = schema.new({
         id = id.from(_N, "EcsContainerOverride", "Command"),
         type = "list",
         name = "Command",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Cpu = schema.new({
         id = id.from(_N, "EcsContainerOverride", "Cpu"),
         type = "integer",
         name = "Cpu",
         target_id = prelude.Integer.id,
      }),
      Environment = schema.new({
         id = id.from(_N, "EcsContainerOverride", "Environment"),
         type = "list",
         name = "Environment",
         target_id = prelude.Document.id,
         list_member = M.EcsEnvironmentVariable,
      }),
      EnvironmentFiles = schema.new({
         id = id.from(_N, "EcsContainerOverride", "EnvironmentFiles"),
         type = "list",
         name = "EnvironmentFiles",
         target_id = prelude.Document.id,
         list_member = M.EcsEnvironmentFile,
      }),
      Memory = schema.new({
         id = id.from(_N, "EcsContainerOverride", "Memory"),
         type = "integer",
         name = "Memory",
         target_id = prelude.Integer.id,
      }),
      MemoryReservation = schema.new({
         id = id.from(_N, "EcsContainerOverride", "MemoryReservation"),
         type = "integer",
         name = "MemoryReservation",
         target_id = prelude.Integer.id,
      }),
      Name = schema.new({
         id = id.from(_N, "EcsContainerOverride", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      ResourceRequirements = schema.new({
         id = id.from(_N, "EcsContainerOverride", "ResourceRequirements"),
         type = "list",
         name = "ResourceRequirements",
         target_id = prelude.Document.id,
         list_member = M.EcsResourceRequirement,
      }),
   },
})

M.EcsEphemeralStorage = schema.new({
   id = id.from(_N, "EcsEphemeralStorage"),
   type = "structure",
   members = {
      sizeInGiB = schema.new({
         id = id.from(_N, "EcsEphemeralStorage", "sizeInGiB"),
         type = "integer",
         name = "sizeInGiB",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EcsInferenceAcceleratorOverride = schema.new({
   id = id.from(_N, "EcsInferenceAcceleratorOverride"),
   type = "structure",
   members = {
      deviceName = schema.new({
         id = id.from(_N, "EcsInferenceAcceleratorOverride", "deviceName"),
         type = "string",
         name = "deviceName",
         target_id = prelude.String.id,
      }),
      deviceType = schema.new({
         id = id.from(_N, "EcsInferenceAcceleratorOverride", "deviceType"),
         type = "string",
         name = "deviceType",
         target_id = prelude.String.id,
      }),
   },
})

M.EcsTaskOverride = schema.new({
   id = id.from(_N, "EcsTaskOverride"),
   type = "structure",
   members = {
      ContainerOverrides = schema.new({
         id = id.from(_N, "EcsTaskOverride", "ContainerOverrides"),
         type = "list",
         name = "ContainerOverrides",
         target_id = prelude.Document.id,
         list_member = M.EcsContainerOverride,
      }),
      Cpu = schema.new({
         id = id.from(_N, "EcsTaskOverride", "Cpu"),
         type = "string",
         name = "Cpu",
         target_id = prelude.String.id,
      }),
      EphemeralStorage = schema.new({
         id = id.from(_N, "EcsTaskOverride", "EphemeralStorage"),
         type = "structure",
         name = "EphemeralStorage",
         target_id = id.from(_N, "EcsEphemeralStorage"),
         target = M.EcsEphemeralStorage,
      }),
      ExecutionRoleArn = schema.new({
         id = id.from(_N, "EcsTaskOverride", "ExecutionRoleArn"),
         type = "string",
         name = "ExecutionRoleArn",
         target_id = prelude.String.id,
      }),
      InferenceAcceleratorOverrides = schema.new({
         id = id.from(_N, "EcsTaskOverride", "InferenceAcceleratorOverrides"),
         type = "list",
         name = "InferenceAcceleratorOverrides",
         target_id = prelude.Document.id,
         list_member = M.EcsInferenceAcceleratorOverride,
      }),
      Memory = schema.new({
         id = id.from(_N, "EcsTaskOverride", "Memory"),
         type = "string",
         name = "Memory",
         target_id = prelude.String.id,
      }),
      TaskRoleArn = schema.new({
         id = id.from(_N, "EcsTaskOverride", "TaskRoleArn"),
         type = "string",
         name = "TaskRoleArn",
         target_id = prelude.String.id,
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

M.PipeTargetEcsTaskParameters = schema.new({
   id = id.from(_N, "PipeTargetEcsTaskParameters"),
   type = "structure",
   members = {
      TaskDefinitionArn = schema.new({
         id = id.from(_N, "PipeTargetEcsTaskParameters", "TaskDefinitionArn"),
         type = "string",
         name = "TaskDefinitionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TaskCount = schema.new({
         id = id.from(_N, "PipeTargetEcsTaskParameters", "TaskCount"),
         type = "integer",
         name = "TaskCount",
         target_id = prelude.Integer.id,
      }),
      LaunchType = schema.new({
         id = id.from(_N, "PipeTargetEcsTaskParameters", "LaunchType"),
         type = "string",
         name = "LaunchType",
         target_id = prelude.String.id,
      }),
      NetworkConfiguration = schema.new({
         id = id.from(_N, "PipeTargetEcsTaskParameters", "NetworkConfiguration"),
         type = "structure",
         name = "NetworkConfiguration",
         target_id = id.from(_N, "NetworkConfiguration"),
         target = M.NetworkConfiguration,
      }),
      PlatformVersion = schema.new({
         id = id.from(_N, "PipeTargetEcsTaskParameters", "PlatformVersion"),
         type = "string",
         name = "PlatformVersion",
         target_id = prelude.String.id,
      }),
      Group = schema.new({
         id = id.from(_N, "PipeTargetEcsTaskParameters", "Group"),
         type = "string",
         name = "Group",
         target_id = prelude.String.id,
      }),
      CapacityProviderStrategy = schema.new({
         id = id.from(_N, "PipeTargetEcsTaskParameters", "CapacityProviderStrategy"),
         type = "list",
         name = "CapacityProviderStrategy",
         target_id = prelude.Document.id,
         list_member = M.CapacityProviderStrategyItem,
      }),
      EnableECSManagedTags = schema.new({
         id = id.from(_N, "PipeTargetEcsTaskParameters", "EnableECSManagedTags"),
         type = "boolean",
         name = "EnableECSManagedTags",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      EnableExecuteCommand = schema.new({
         id = id.from(_N, "PipeTargetEcsTaskParameters", "EnableExecuteCommand"),
         type = "boolean",
         name = "EnableExecuteCommand",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      PlacementConstraints = schema.new({
         id = id.from(_N, "PipeTargetEcsTaskParameters", "PlacementConstraints"),
         type = "list",
         name = "PlacementConstraints",
         target_id = prelude.Document.id,
         list_member = M.PlacementConstraint,
      }),
      PlacementStrategy = schema.new({
         id = id.from(_N, "PipeTargetEcsTaskParameters", "PlacementStrategy"),
         type = "list",
         name = "PlacementStrategy",
         target_id = prelude.Document.id,
         list_member = M.PlacementStrategy,
      }),
      PropagateTags = schema.new({
         id = id.from(_N, "PipeTargetEcsTaskParameters", "PropagateTags"),
         type = "string",
         name = "PropagateTags",
         target_id = prelude.String.id,
      }),
      ReferenceId = schema.new({
         id = id.from(_N, "PipeTargetEcsTaskParameters", "ReferenceId"),
         type = "string",
         name = "ReferenceId",
         target_id = prelude.String.id,
      }),
      Overrides = schema.new({
         id = id.from(_N, "PipeTargetEcsTaskParameters", "Overrides"),
         type = "structure",
         name = "Overrides",
         target_id = id.from(_N, "EcsTaskOverride"),
         target = M.EcsTaskOverride,
      }),
      Tags = schema.new({
         id = id.from(_N, "PipeTargetEcsTaskParameters", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.PipeTargetEventBridgeEventBusParameters = schema.new({
   id = id.from(_N, "PipeTargetEventBridgeEventBusParameters"),
   type = "structure",
   members = {
      EndpointId = schema.new({
         id = id.from(_N, "PipeTargetEventBridgeEventBusParameters", "EndpointId"),
         type = "string",
         name = "EndpointId",
         target_id = prelude.String.id,
      }),
      DetailType = schema.new({
         id = id.from(_N, "PipeTargetEventBridgeEventBusParameters", "DetailType"),
         type = "string",
         name = "DetailType",
         target_id = prelude.String.id,
      }),
      Source = schema.new({
         id = id.from(_N, "PipeTargetEventBridgeEventBusParameters", "Source"),
         type = "string",
         name = "Source",
         target_id = prelude.String.id,
      }),
      Resources = schema.new({
         id = id.from(_N, "PipeTargetEventBridgeEventBusParameters", "Resources"),
         type = "list",
         name = "Resources",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Time = schema.new({
         id = id.from(_N, "PipeTargetEventBridgeEventBusParameters", "Time"),
         type = "string",
         name = "Time",
         target_id = prelude.String.id,
      }),
   },
})

M.PipeTargetHttpParameters = schema.new({
   id = id.from(_N, "PipeTargetHttpParameters"),
   type = "structure",
   members = {
      PathParameterValues = schema.new({
         id = id.from(_N, "PipeTargetHttpParameters", "PathParameterValues"),
         type = "list",
         name = "PathParameterValues",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      HeaderParameters = schema.new({
         id = id.from(_N, "PipeTargetHttpParameters", "HeaderParameters"),
         type = "map",
         name = "HeaderParameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      QueryStringParameters = schema.new({
         id = id.from(_N, "PipeTargetHttpParameters", "QueryStringParameters"),
         type = "map",
         name = "QueryStringParameters",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.PipeTargetKinesisStreamParameters = schema.new({
   id = id.from(_N, "PipeTargetKinesisStreamParameters"),
   type = "structure",
   members = {
      PartitionKey = schema.new({
         id = id.from(_N, "PipeTargetKinesisStreamParameters", "PartitionKey"),
         type = "string",
         name = "PartitionKey",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PipeTargetLambdaFunctionParameters = schema.new({
   id = id.from(_N, "PipeTargetLambdaFunctionParameters"),
   type = "structure",
   members = {
      InvocationType = schema.new({
         id = id.from(_N, "PipeTargetLambdaFunctionParameters", "InvocationType"),
         type = "string",
         name = "InvocationType",
         target_id = prelude.String.id,
      }),
   },
})

M.PipeTargetRedshiftDataParameters = schema.new({
   id = id.from(_N, "PipeTargetRedshiftDataParameters"),
   type = "structure",
   members = {
      SecretManagerArn = schema.new({
         id = id.from(_N, "PipeTargetRedshiftDataParameters", "SecretManagerArn"),
         type = "string",
         name = "SecretManagerArn",
         target_id = prelude.String.id,
      }),
      Database = schema.new({
         id = id.from(_N, "PipeTargetRedshiftDataParameters", "Database"),
         type = "string",
         name = "Database",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DbUser = schema.new({
         id = id.from(_N, "PipeTargetRedshiftDataParameters", "DbUser"),
         type = "string",
         name = "DbUser",
         target_id = prelude.String.id,
      }),
      StatementName = schema.new({
         id = id.from(_N, "PipeTargetRedshiftDataParameters", "StatementName"),
         type = "string",
         name = "StatementName",
         target_id = prelude.String.id,
      }),
      WithEvent = schema.new({
         id = id.from(_N, "PipeTargetRedshiftDataParameters", "WithEvent"),
         type = "boolean",
         name = "WithEvent",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      Sqls = schema.new({
         id = id.from(_N, "PipeTargetRedshiftDataParameters", "Sqls"),
         type = "list",
         name = "Sqls",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
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

M.PipeTargetSageMakerPipelineParameters = schema.new({
   id = id.from(_N, "PipeTargetSageMakerPipelineParameters"),
   type = "structure",
   members = {
      PipelineParameterList = schema.new({
         id = id.from(_N, "PipeTargetSageMakerPipelineParameters", "PipelineParameterList"),
         type = "list",
         name = "PipelineParameterList",
         target_id = prelude.Document.id,
         list_member = M.SageMakerPipelineParameter,
      }),
   },
})

M.PipeTargetSqsQueueParameters = schema.new({
   id = id.from(_N, "PipeTargetSqsQueueParameters"),
   type = "structure",
   members = {
      MessageGroupId = schema.new({
         id = id.from(_N, "PipeTargetSqsQueueParameters", "MessageGroupId"),
         type = "string",
         name = "MessageGroupId",
         target_id = prelude.String.id,
      }),
      MessageDeduplicationId = schema.new({
         id = id.from(_N, "PipeTargetSqsQueueParameters", "MessageDeduplicationId"),
         type = "string",
         name = "MessageDeduplicationId",
         target_id = prelude.String.id,
      }),
   },
})

M.PipeTargetStateMachineParameters = schema.new({
   id = id.from(_N, "PipeTargetStateMachineParameters"),
   type = "structure",
   members = {
      InvocationType = schema.new({
         id = id.from(_N, "PipeTargetStateMachineParameters", "InvocationType"),
         type = "string",
         name = "InvocationType",
         target_id = prelude.String.id,
      }),
   },
})

M.DimensionMapping = schema.new({
   id = id.from(_N, "DimensionMapping"),
   type = "structure",
   members = {
      DimensionValue = schema.new({
         id = id.from(_N, "DimensionMapping", "DimensionValue"),
         type = "string",
         name = "DimensionValue",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DimensionValueType = schema.new({
         id = id.from(_N, "DimensionMapping", "DimensionValueType"),
         type = "string",
         name = "DimensionValueType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DimensionName = schema.new({
         id = id.from(_N, "DimensionMapping", "DimensionName"),
         type = "string",
         name = "DimensionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.MultiMeasureAttributeMapping = schema.new({
   id = id.from(_N, "MultiMeasureAttributeMapping"),
   type = "structure",
   members = {
      MeasureValue = schema.new({
         id = id.from(_N, "MultiMeasureAttributeMapping", "MeasureValue"),
         type = "string",
         name = "MeasureValue",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MeasureValueType = schema.new({
         id = id.from(_N, "MultiMeasureAttributeMapping", "MeasureValueType"),
         type = "string",
         name = "MeasureValueType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MultiMeasureAttributeName = schema.new({
         id = id.from(_N, "MultiMeasureAttributeMapping", "MultiMeasureAttributeName"),
         type = "string",
         name = "MultiMeasureAttributeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.MultiMeasureMapping = schema.new({
   id = id.from(_N, "MultiMeasureMapping"),
   type = "structure",
   members = {
      MultiMeasureName = schema.new({
         id = id.from(_N, "MultiMeasureMapping", "MultiMeasureName"),
         type = "string",
         name = "MultiMeasureName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MultiMeasureAttributeMappings = schema.new({
         id = id.from(_N, "MultiMeasureMapping", "MultiMeasureAttributeMappings"),
         type = "list",
         name = "MultiMeasureAttributeMappings",
         target_id = prelude.Document.id,
         list_member = M.MultiMeasureAttributeMapping,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SingleMeasureMapping = schema.new({
   id = id.from(_N, "SingleMeasureMapping"),
   type = "structure",
   members = {
      MeasureValue = schema.new({
         id = id.from(_N, "SingleMeasureMapping", "MeasureValue"),
         type = "string",
         name = "MeasureValue",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MeasureValueType = schema.new({
         id = id.from(_N, "SingleMeasureMapping", "MeasureValueType"),
         type = "string",
         name = "MeasureValueType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MeasureName = schema.new({
         id = id.from(_N, "SingleMeasureMapping", "MeasureName"),
         type = "string",
         name = "MeasureName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PipeTargetTimestreamParameters = schema.new({
   id = id.from(_N, "PipeTargetTimestreamParameters"),
   type = "structure",
   members = {
      TimeValue = schema.new({
         id = id.from(_N, "PipeTargetTimestreamParameters", "TimeValue"),
         type = "string",
         name = "TimeValue",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EpochTimeUnit = schema.new({
         id = id.from(_N, "PipeTargetTimestreamParameters", "EpochTimeUnit"),
         type = "string",
         name = "EpochTimeUnit",
         target_id = prelude.String.id,
      }),
      TimeFieldType = schema.new({
         id = id.from(_N, "PipeTargetTimestreamParameters", "TimeFieldType"),
         type = "string",
         name = "TimeFieldType",
         target_id = prelude.String.id,
      }),
      TimestampFormat = schema.new({
         id = id.from(_N, "PipeTargetTimestreamParameters", "TimestampFormat"),
         type = "string",
         name = "TimestampFormat",
         target_id = prelude.String.id,
      }),
      VersionValue = schema.new({
         id = id.from(_N, "PipeTargetTimestreamParameters", "VersionValue"),
         type = "string",
         name = "VersionValue",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DimensionMappings = schema.new({
         id = id.from(_N, "PipeTargetTimestreamParameters", "DimensionMappings"),
         type = "list",
         name = "DimensionMappings",
         target_id = prelude.Document.id,
         list_member = M.DimensionMapping,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SingleMeasureMappings = schema.new({
         id = id.from(_N, "PipeTargetTimestreamParameters", "SingleMeasureMappings"),
         type = "list",
         name = "SingleMeasureMappings",
         target_id = prelude.Document.id,
         list_member = M.SingleMeasureMapping,
      }),
      MultiMeasureMappings = schema.new({
         id = id.from(_N, "PipeTargetTimestreamParameters", "MultiMeasureMappings"),
         type = "list",
         name = "MultiMeasureMappings",
         target_id = prelude.Document.id,
         list_member = M.MultiMeasureMapping,
      }),
   },
})

M.PipeTargetParameters = schema.new({
   id = id.from(_N, "PipeTargetParameters"),
   type = "structure",
   members = {
      InputTemplate = schema.new({
         id = id.from(_N, "PipeTargetParameters", "InputTemplate"),
         type = "string",
         name = "InputTemplate",
         target_id = prelude.String.id,
      }),
      LambdaFunctionParameters = schema.new({
         id = id.from(_N, "PipeTargetParameters", "LambdaFunctionParameters"),
         type = "structure",
         name = "LambdaFunctionParameters",
         target_id = id.from(_N, "PipeTargetLambdaFunctionParameters"),
         target = M.PipeTargetLambdaFunctionParameters,
      }),
      StepFunctionStateMachineParameters = schema.new({
         id = id.from(_N, "PipeTargetParameters", "StepFunctionStateMachineParameters"),
         type = "structure",
         name = "StepFunctionStateMachineParameters",
         target_id = id.from(_N, "PipeTargetStateMachineParameters"),
         target = M.PipeTargetStateMachineParameters,
      }),
      KinesisStreamParameters = schema.new({
         id = id.from(_N, "PipeTargetParameters", "KinesisStreamParameters"),
         type = "structure",
         name = "KinesisStreamParameters",
         target_id = id.from(_N, "PipeTargetKinesisStreamParameters"),
         target = M.PipeTargetKinesisStreamParameters,
      }),
      EcsTaskParameters = schema.new({
         id = id.from(_N, "PipeTargetParameters", "EcsTaskParameters"),
         type = "structure",
         name = "EcsTaskParameters",
         target_id = id.from(_N, "PipeTargetEcsTaskParameters"),
         target = M.PipeTargetEcsTaskParameters,
      }),
      BatchJobParameters = schema.new({
         id = id.from(_N, "PipeTargetParameters", "BatchJobParameters"),
         type = "structure",
         name = "BatchJobParameters",
         target_id = id.from(_N, "PipeTargetBatchJobParameters"),
         target = M.PipeTargetBatchJobParameters,
      }),
      SqsQueueParameters = schema.new({
         id = id.from(_N, "PipeTargetParameters", "SqsQueueParameters"),
         type = "structure",
         name = "SqsQueueParameters",
         target_id = id.from(_N, "PipeTargetSqsQueueParameters"),
         target = M.PipeTargetSqsQueueParameters,
      }),
      HttpParameters = schema.new({
         id = id.from(_N, "PipeTargetParameters", "HttpParameters"),
         type = "structure",
         name = "HttpParameters",
         target_id = id.from(_N, "PipeTargetHttpParameters"),
         target = M.PipeTargetHttpParameters,
      }),
      RedshiftDataParameters = schema.new({
         id = id.from(_N, "PipeTargetParameters", "RedshiftDataParameters"),
         type = "structure",
         name = "RedshiftDataParameters",
         target_id = id.from(_N, "PipeTargetRedshiftDataParameters"),
         target = M.PipeTargetRedshiftDataParameters,
      }),
      SageMakerPipelineParameters = schema.new({
         id = id.from(_N, "PipeTargetParameters", "SageMakerPipelineParameters"),
         type = "structure",
         name = "SageMakerPipelineParameters",
         target_id = id.from(_N, "PipeTargetSageMakerPipelineParameters"),
         target = M.PipeTargetSageMakerPipelineParameters,
      }),
      EventBridgeEventBusParameters = schema.new({
         id = id.from(_N, "PipeTargetParameters", "EventBridgeEventBusParameters"),
         type = "structure",
         name = "EventBridgeEventBusParameters",
         target_id = id.from(_N, "PipeTargetEventBridgeEventBusParameters"),
         target = M.PipeTargetEventBridgeEventBusParameters,
      }),
      CloudWatchLogsParameters = schema.new({
         id = id.from(_N, "PipeTargetParameters", "CloudWatchLogsParameters"),
         type = "structure",
         name = "CloudWatchLogsParameters",
         target_id = id.from(_N, "PipeTargetCloudWatchLogsParameters"),
         target = M.PipeTargetCloudWatchLogsParameters,
      }),
      TimestreamParameters = schema.new({
         id = id.from(_N, "PipeTargetParameters", "TimestreamParameters"),
         type = "structure",
         name = "TimestreamParameters",
         target_id = id.from(_N, "PipeTargetTimestreamParameters"),
         target = M.PipeTargetTimestreamParameters,
      }),
   },
})

M.CreatePipeInput = schema.new({
   id = id.from(_N, "CreatePipeRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreatePipeInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreatePipeInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      DesiredState = schema.new({
         id = id.from(_N, "CreatePipeInput", "DesiredState"),
         type = "string",
         name = "DesiredState",
         target_id = prelude.String.id,
      }),
      Source = schema.new({
         id = id.from(_N, "CreatePipeInput", "Source"),
         type = "string",
         name = "Source",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SourceParameters = schema.new({
         id = id.from(_N, "CreatePipeInput", "SourceParameters"),
         type = "structure",
         name = "SourceParameters",
         target_id = id.from(_N, "PipeSourceParameters"),
         target = M.PipeSourceParameters,
      }),
      Enrichment = schema.new({
         id = id.from(_N, "CreatePipeInput", "Enrichment"),
         type = "string",
         name = "Enrichment",
         target_id = prelude.String.id,
      }),
      EnrichmentParameters = schema.new({
         id = id.from(_N, "CreatePipeInput", "EnrichmentParameters"),
         type = "structure",
         name = "EnrichmentParameters",
         target_id = id.from(_N, "PipeEnrichmentParameters"),
         target = M.PipeEnrichmentParameters,
      }),
      Target = schema.new({
         id = id.from(_N, "CreatePipeInput", "Target"),
         type = "string",
         name = "Target",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TargetParameters = schema.new({
         id = id.from(_N, "CreatePipeInput", "TargetParameters"),
         type = "structure",
         name = "TargetParameters",
         target_id = id.from(_N, "PipeTargetParameters"),
         target = M.PipeTargetParameters,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "CreatePipeInput", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreatePipeInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      LogConfiguration = schema.new({
         id = id.from(_N, "CreatePipeInput", "LogConfiguration"),
         type = "structure",
         name = "LogConfiguration",
         target_id = id.from(_N, "PipeLogConfigurationParameters"),
         target = M.PipeLogConfigurationParameters,
      }),
      KmsKeyIdentifier = schema.new({
         id = id.from(_N, "CreatePipeInput", "KmsKeyIdentifier"),
         type = "string",
         name = "KmsKeyIdentifier",
         target_id = prelude.String.id,
      }),
   },
})

M.CreatePipeOutput = schema.new({
   id = id.from(_N, "CreatePipeResponse"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "CreatePipeOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "CreatePipeOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      DesiredState = schema.new({
         id = id.from(_N, "CreatePipeOutput", "DesiredState"),
         type = "string",
         name = "DesiredState",
         target_id = prelude.String.id,
      }),
      CurrentState = schema.new({
         id = id.from(_N, "CreatePipeOutput", "CurrentState"),
         type = "string",
         name = "CurrentState",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "CreatePipeOutput", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "CreatePipeOutput", "LastModifiedTime"),
         type = "timestamp",
         name = "LastModifiedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.InternalException = schema.new({
   id = id.from(_N, "InternalException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InternalException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      retryAfterSeconds = schema.new({
         id = id.from(_N, "InternalException", "retryAfterSeconds"),
         type = "integer",
         name = "retryAfterSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Retry-After" },
         },
      }),
   },
})

M.NotFoundException = schema.new({
   id = id.from(_N, "NotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "NotFoundException", "message"),
         type = "string",
         name = "message",
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
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceId = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "resourceId"),
         type = "string",
         name = "resourceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceType = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      serviceCode = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "serviceCode"),
         type = "string",
         name = "serviceCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      quotaCode = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "quotaCode"),
         type = "string",
         name = "quotaCode",
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

M.ValidationExceptionField = schema.new({
   id = id.from(_N, "ValidationExceptionField"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "ValidationExceptionField", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      message = schema.new({
         id = id.from(_N, "ValidationExceptionField", "message"),
         type = "string",
         name = "message",
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
      message = schema.new({
         id = id.from(_N, "ValidationException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      fieldList = schema.new({
         id = id.from(_N, "ValidationException", "fieldList"),
         type = "list",
         name = "fieldList",
         target_id = prelude.Document.id,
         list_member = M.ValidationExceptionField,
      }),
   },
})

M.DeletePipeInput = schema.new({
   id = id.from(_N, "DeletePipeRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DeletePipeInput", "Name"),
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

M.DeletePipeOutput = schema.new({
   id = id.from(_N, "DeletePipeResponse"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "DeletePipeOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "DeletePipeOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      DesiredState = schema.new({
         id = id.from(_N, "DeletePipeOutput", "DesiredState"),
         type = "string",
         name = "DesiredState",
         target_id = prelude.String.id,
      }),
      CurrentState = schema.new({
         id = id.from(_N, "DeletePipeOutput", "CurrentState"),
         type = "string",
         name = "CurrentState",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "DeletePipeOutput", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "DeletePipeOutput", "LastModifiedTime"),
         type = "timestamp",
         name = "LastModifiedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribePipeInput = schema.new({
   id = id.from(_N, "DescribePipeRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DescribePipeInput", "Name"),
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

M.FirehoseLogDestination = schema.new({
   id = id.from(_N, "FirehoseLogDestination"),
   type = "structure",
   members = {
      DeliveryStreamArn = schema.new({
         id = id.from(_N, "FirehoseLogDestination", "DeliveryStreamArn"),
         type = "string",
         name = "DeliveryStreamArn",
         target_id = prelude.String.id,
      }),
   },
})

M.S3LogDestination = schema.new({
   id = id.from(_N, "S3LogDestination"),
   type = "structure",
   members = {
      BucketName = schema.new({
         id = id.from(_N, "S3LogDestination", "BucketName"),
         type = "string",
         name = "BucketName",
         target_id = prelude.String.id,
      }),
      Prefix = schema.new({
         id = id.from(_N, "S3LogDestination", "Prefix"),
         type = "string",
         name = "Prefix",
         target_id = prelude.String.id,
      }),
      BucketOwner = schema.new({
         id = id.from(_N, "S3LogDestination", "BucketOwner"),
         type = "string",
         name = "BucketOwner",
         target_id = prelude.String.id,
      }),
      OutputFormat = schema.new({
         id = id.from(_N, "S3LogDestination", "OutputFormat"),
         type = "string",
         name = "OutputFormat",
         target_id = prelude.String.id,
      }),
   },
})

M.PipeLogConfiguration = schema.new({
   id = id.from(_N, "PipeLogConfiguration"),
   type = "structure",
   members = {
      S3LogDestination = schema.new({
         id = id.from(_N, "PipeLogConfiguration", "S3LogDestination"),
         type = "structure",
         name = "S3LogDestination",
         target_id = id.from(_N, "S3LogDestination"),
         target = M.S3LogDestination,
      }),
      FirehoseLogDestination = schema.new({
         id = id.from(_N, "PipeLogConfiguration", "FirehoseLogDestination"),
         type = "structure",
         name = "FirehoseLogDestination",
         target_id = id.from(_N, "FirehoseLogDestination"),
         target = M.FirehoseLogDestination,
      }),
      CloudwatchLogsLogDestination = schema.new({
         id = id.from(_N, "PipeLogConfiguration", "CloudwatchLogsLogDestination"),
         type = "structure",
         name = "CloudwatchLogsLogDestination",
         target_id = id.from(_N, "CloudwatchLogsLogDestination"),
         target = M.CloudwatchLogsLogDestination,
      }),
      Level = schema.new({
         id = id.from(_N, "PipeLogConfiguration", "Level"),
         type = "string",
         name = "Level",
         target_id = prelude.String.id,
      }),
      IncludeExecutionData = schema.new({
         id = id.from(_N, "PipeLogConfiguration", "IncludeExecutionData"),
         type = "list",
         name = "IncludeExecutionData",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.DescribePipeOutput = schema.new({
   id = id.from(_N, "DescribePipeResponse"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "DescribePipeOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "DescribePipeOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "DescribePipeOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      DesiredState = schema.new({
         id = id.from(_N, "DescribePipeOutput", "DesiredState"),
         type = "string",
         name = "DesiredState",
         target_id = prelude.String.id,
      }),
      CurrentState = schema.new({
         id = id.from(_N, "DescribePipeOutput", "CurrentState"),
         type = "string",
         name = "CurrentState",
         target_id = prelude.String.id,
      }),
      StateReason = schema.new({
         id = id.from(_N, "DescribePipeOutput", "StateReason"),
         type = "string",
         name = "StateReason",
         target_id = prelude.String.id,
      }),
      Source = schema.new({
         id = id.from(_N, "DescribePipeOutput", "Source"),
         type = "string",
         name = "Source",
         target_id = prelude.String.id,
      }),
      SourceParameters = schema.new({
         id = id.from(_N, "DescribePipeOutput", "SourceParameters"),
         type = "structure",
         name = "SourceParameters",
         target_id = id.from(_N, "PipeSourceParameters"),
         target = M.PipeSourceParameters,
      }),
      Enrichment = schema.new({
         id = id.from(_N, "DescribePipeOutput", "Enrichment"),
         type = "string",
         name = "Enrichment",
         target_id = prelude.String.id,
      }),
      EnrichmentParameters = schema.new({
         id = id.from(_N, "DescribePipeOutput", "EnrichmentParameters"),
         type = "structure",
         name = "EnrichmentParameters",
         target_id = id.from(_N, "PipeEnrichmentParameters"),
         target = M.PipeEnrichmentParameters,
      }),
      Target = schema.new({
         id = id.from(_N, "DescribePipeOutput", "Target"),
         type = "string",
         name = "Target",
         target_id = prelude.String.id,
      }),
      TargetParameters = schema.new({
         id = id.from(_N, "DescribePipeOutput", "TargetParameters"),
         type = "structure",
         name = "TargetParameters",
         target_id = id.from(_N, "PipeTargetParameters"),
         target = M.PipeTargetParameters,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "DescribePipeOutput", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "DescribePipeOutput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "DescribePipeOutput", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "DescribePipeOutput", "LastModifiedTime"),
         type = "timestamp",
         name = "LastModifiedTime",
         target_id = prelude.Timestamp.id,
      }),
      LogConfiguration = schema.new({
         id = id.from(_N, "DescribePipeOutput", "LogConfiguration"),
         type = "structure",
         name = "LogConfiguration",
         target_id = id.from(_N, "PipeLogConfiguration"),
         target = M.PipeLogConfiguration,
      }),
      KmsKeyIdentifier = schema.new({
         id = id.from(_N, "DescribePipeOutput", "KmsKeyIdentifier"),
         type = "string",
         name = "KmsKeyIdentifier",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPipesInput = schema.new({
   id = id.from(_N, "ListPipesRequest"),
   type = "structure",
   members = {
      NamePrefix = schema.new({
         id = id.from(_N, "ListPipesInput", "NamePrefix"),
         type = "string",
         name = "NamePrefix",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NamePrefix" },
         },
      }),
      DesiredState = schema.new({
         id = id.from(_N, "ListPipesInput", "DesiredState"),
         type = "string",
         name = "DesiredState",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "DesiredState" },
         },
      }),
      CurrentState = schema.new({
         id = id.from(_N, "ListPipesInput", "CurrentState"),
         type = "string",
         name = "CurrentState",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "CurrentState" },
         },
      }),
      SourcePrefix = schema.new({
         id = id.from(_N, "ListPipesInput", "SourcePrefix"),
         type = "string",
         name = "SourcePrefix",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "SourcePrefix" },
         },
      }),
      TargetPrefix = schema.new({
         id = id.from(_N, "ListPipesInput", "TargetPrefix"),
         type = "string",
         name = "TargetPrefix",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "TargetPrefix" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListPipesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "NextToken" },
         },
      }),
      Limit = schema.new({
         id = id.from(_N, "ListPipesInput", "Limit"),
         type = "integer",
         name = "Limit",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "Limit" },
         },
      }),
   },
})

M.Pipe = schema.new({
   id = id.from(_N, "Pipe"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "Pipe", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "Pipe", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      DesiredState = schema.new({
         id = id.from(_N, "Pipe", "DesiredState"),
         type = "string",
         name = "DesiredState",
         target_id = prelude.String.id,
      }),
      CurrentState = schema.new({
         id = id.from(_N, "Pipe", "CurrentState"),
         type = "string",
         name = "CurrentState",
         target_id = prelude.String.id,
      }),
      StateReason = schema.new({
         id = id.from(_N, "Pipe", "StateReason"),
         type = "string",
         name = "StateReason",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "Pipe", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "Pipe", "LastModifiedTime"),
         type = "timestamp",
         name = "LastModifiedTime",
         target_id = prelude.Timestamp.id,
      }),
      Source = schema.new({
         id = id.from(_N, "Pipe", "Source"),
         type = "string",
         name = "Source",
         target_id = prelude.String.id,
      }),
      Target = schema.new({
         id = id.from(_N, "Pipe", "Target"),
         type = "string",
         name = "Target",
         target_id = prelude.String.id,
      }),
      Enrichment = schema.new({
         id = id.from(_N, "Pipe", "Enrichment"),
         type = "string",
         name = "Enrichment",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPipesOutput = schema.new({
   id = id.from(_N, "ListPipesResponse"),
   type = "structure",
   members = {
      Pipes = schema.new({
         id = id.from(_N, "ListPipesOutput", "Pipes"),
         type = "list",
         name = "Pipes",
         target_id = prelude.Document.id,
         list_member = M.Pipe,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListPipesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
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

M.StartPipeInput = schema.new({
   id = id.from(_N, "StartPipeRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "StartPipeInput", "Name"),
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

M.StartPipeOutput = schema.new({
   id = id.from(_N, "StartPipeResponse"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "StartPipeOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "StartPipeOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      DesiredState = schema.new({
         id = id.from(_N, "StartPipeOutput", "DesiredState"),
         type = "string",
         name = "DesiredState",
         target_id = prelude.String.id,
      }),
      CurrentState = schema.new({
         id = id.from(_N, "StartPipeOutput", "CurrentState"),
         type = "string",
         name = "CurrentState",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "StartPipeOutput", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "StartPipeOutput", "LastModifiedTime"),
         type = "timestamp",
         name = "LastModifiedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.StopPipeInput = schema.new({
   id = id.from(_N, "StopPipeRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "StopPipeInput", "Name"),
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

M.StopPipeOutput = schema.new({
   id = id.from(_N, "StopPipeResponse"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "StopPipeOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "StopPipeOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      DesiredState = schema.new({
         id = id.from(_N, "StopPipeOutput", "DesiredState"),
         type = "string",
         name = "DesiredState",
         target_id = prelude.String.id,
      }),
      CurrentState = schema.new({
         id = id.from(_N, "StopPipeOutput", "CurrentState"),
         type = "string",
         name = "CurrentState",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "StopPipeOutput", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "StopPipeOutput", "LastModifiedTime"),
         type = "timestamp",
         name = "LastModifiedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.UpdatePipeSourceActiveMQBrokerParameters = schema.new({
   id = id.from(_N, "UpdatePipeSourceActiveMQBrokerParameters"),
   type = "structure",
   members = {
      Credentials = schema.new({
         id = id.from(_N, "UpdatePipeSourceActiveMQBrokerParameters", "Credentials"),
         type = "union",
         name = "Credentials",
         target_id = id.from(_N, "MQBrokerAccessCredentials"),
         target = M.MQBrokerAccessCredentials,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BatchSize = schema.new({
         id = id.from(_N, "UpdatePipeSourceActiveMQBrokerParameters", "BatchSize"),
         type = "integer",
         name = "BatchSize",
         target_id = prelude.Integer.id,
      }),
      MaximumBatchingWindowInSeconds = schema.new({
         id = id.from(_N, "UpdatePipeSourceActiveMQBrokerParameters", "MaximumBatchingWindowInSeconds"),
         type = "integer",
         name = "MaximumBatchingWindowInSeconds",
         target_id = prelude.Integer.id,
      }),
   },
})

M.UpdatePipeSourceDynamoDBStreamParameters = schema.new({
   id = id.from(_N, "UpdatePipeSourceDynamoDBStreamParameters"),
   type = "structure",
   members = {
      BatchSize = schema.new({
         id = id.from(_N, "UpdatePipeSourceDynamoDBStreamParameters", "BatchSize"),
         type = "integer",
         name = "BatchSize",
         target_id = prelude.Integer.id,
      }),
      DeadLetterConfig = schema.new({
         id = id.from(_N, "UpdatePipeSourceDynamoDBStreamParameters", "DeadLetterConfig"),
         type = "structure",
         name = "DeadLetterConfig",
         target_id = id.from(_N, "DeadLetterConfig"),
         target = M.DeadLetterConfig,
      }),
      OnPartialBatchItemFailure = schema.new({
         id = id.from(_N, "UpdatePipeSourceDynamoDBStreamParameters", "OnPartialBatchItemFailure"),
         type = "string",
         name = "OnPartialBatchItemFailure",
         target_id = prelude.String.id,
      }),
      MaximumBatchingWindowInSeconds = schema.new({
         id = id.from(_N, "UpdatePipeSourceDynamoDBStreamParameters", "MaximumBatchingWindowInSeconds"),
         type = "integer",
         name = "MaximumBatchingWindowInSeconds",
         target_id = prelude.Integer.id,
      }),
      MaximumRecordAgeInSeconds = schema.new({
         id = id.from(_N, "UpdatePipeSourceDynamoDBStreamParameters", "MaximumRecordAgeInSeconds"),
         type = "integer",
         name = "MaximumRecordAgeInSeconds",
         target_id = prelude.Integer.id,
      }),
      MaximumRetryAttempts = schema.new({
         id = id.from(_N, "UpdatePipeSourceDynamoDBStreamParameters", "MaximumRetryAttempts"),
         type = "integer",
         name = "MaximumRetryAttempts",
         target_id = prelude.Integer.id,
      }),
      ParallelizationFactor = schema.new({
         id = id.from(_N, "UpdatePipeSourceDynamoDBStreamParameters", "ParallelizationFactor"),
         type = "integer",
         name = "ParallelizationFactor",
         target_id = prelude.Integer.id,
      }),
   },
})

M.UpdatePipeSourceKinesisStreamParameters = schema.new({
   id = id.from(_N, "UpdatePipeSourceKinesisStreamParameters"),
   type = "structure",
   members = {
      BatchSize = schema.new({
         id = id.from(_N, "UpdatePipeSourceKinesisStreamParameters", "BatchSize"),
         type = "integer",
         name = "BatchSize",
         target_id = prelude.Integer.id,
      }),
      DeadLetterConfig = schema.new({
         id = id.from(_N, "UpdatePipeSourceKinesisStreamParameters", "DeadLetterConfig"),
         type = "structure",
         name = "DeadLetterConfig",
         target_id = id.from(_N, "DeadLetterConfig"),
         target = M.DeadLetterConfig,
      }),
      OnPartialBatchItemFailure = schema.new({
         id = id.from(_N, "UpdatePipeSourceKinesisStreamParameters", "OnPartialBatchItemFailure"),
         type = "string",
         name = "OnPartialBatchItemFailure",
         target_id = prelude.String.id,
      }),
      MaximumBatchingWindowInSeconds = schema.new({
         id = id.from(_N, "UpdatePipeSourceKinesisStreamParameters", "MaximumBatchingWindowInSeconds"),
         type = "integer",
         name = "MaximumBatchingWindowInSeconds",
         target_id = prelude.Integer.id,
      }),
      MaximumRecordAgeInSeconds = schema.new({
         id = id.from(_N, "UpdatePipeSourceKinesisStreamParameters", "MaximumRecordAgeInSeconds"),
         type = "integer",
         name = "MaximumRecordAgeInSeconds",
         target_id = prelude.Integer.id,
      }),
      MaximumRetryAttempts = schema.new({
         id = id.from(_N, "UpdatePipeSourceKinesisStreamParameters", "MaximumRetryAttempts"),
         type = "integer",
         name = "MaximumRetryAttempts",
         target_id = prelude.Integer.id,
      }),
      ParallelizationFactor = schema.new({
         id = id.from(_N, "UpdatePipeSourceKinesisStreamParameters", "ParallelizationFactor"),
         type = "integer",
         name = "ParallelizationFactor",
         target_id = prelude.Integer.id,
      }),
   },
})

M.UpdatePipeSourceManagedStreamingKafkaParameters = schema.new({
   id = id.from(_N, "UpdatePipeSourceManagedStreamingKafkaParameters"),
   type = "structure",
   members = {
      BatchSize = schema.new({
         id = id.from(_N, "UpdatePipeSourceManagedStreamingKafkaParameters", "BatchSize"),
         type = "integer",
         name = "BatchSize",
         target_id = prelude.Integer.id,
      }),
      Credentials = schema.new({
         id = id.from(_N, "UpdatePipeSourceManagedStreamingKafkaParameters", "Credentials"),
         type = "union",
         name = "Credentials",
         target_id = id.from(_N, "MSKAccessCredentials"),
         target = M.MSKAccessCredentials,
      }),
      MaximumBatchingWindowInSeconds = schema.new({
         id = id.from(_N, "UpdatePipeSourceManagedStreamingKafkaParameters", "MaximumBatchingWindowInSeconds"),
         type = "integer",
         name = "MaximumBatchingWindowInSeconds",
         target_id = prelude.Integer.id,
      }),
   },
})

M.UpdatePipeSourceRabbitMQBrokerParameters = schema.new({
   id = id.from(_N, "UpdatePipeSourceRabbitMQBrokerParameters"),
   type = "structure",
   members = {
      Credentials = schema.new({
         id = id.from(_N, "UpdatePipeSourceRabbitMQBrokerParameters", "Credentials"),
         type = "union",
         name = "Credentials",
         target_id = id.from(_N, "MQBrokerAccessCredentials"),
         target = M.MQBrokerAccessCredentials,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BatchSize = schema.new({
         id = id.from(_N, "UpdatePipeSourceRabbitMQBrokerParameters", "BatchSize"),
         type = "integer",
         name = "BatchSize",
         target_id = prelude.Integer.id,
      }),
      MaximumBatchingWindowInSeconds = schema.new({
         id = id.from(_N, "UpdatePipeSourceRabbitMQBrokerParameters", "MaximumBatchingWindowInSeconds"),
         type = "integer",
         name = "MaximumBatchingWindowInSeconds",
         target_id = prelude.Integer.id,
      }),
   },
})

M.UpdatePipeSourceSelfManagedKafkaParameters = schema.new({
   id = id.from(_N, "UpdatePipeSourceSelfManagedKafkaParameters"),
   type = "structure",
   members = {
      BatchSize = schema.new({
         id = id.from(_N, "UpdatePipeSourceSelfManagedKafkaParameters", "BatchSize"),
         type = "integer",
         name = "BatchSize",
         target_id = prelude.Integer.id,
      }),
      MaximumBatchingWindowInSeconds = schema.new({
         id = id.from(_N, "UpdatePipeSourceSelfManagedKafkaParameters", "MaximumBatchingWindowInSeconds"),
         type = "integer",
         name = "MaximumBatchingWindowInSeconds",
         target_id = prelude.Integer.id,
      }),
      Credentials = schema.new({
         id = id.from(_N, "UpdatePipeSourceSelfManagedKafkaParameters", "Credentials"),
         type = "union",
         name = "Credentials",
         target_id = id.from(_N, "SelfManagedKafkaAccessConfigurationCredentials"),
         target = M.SelfManagedKafkaAccessConfigurationCredentials,
      }),
      ServerRootCaCertificate = schema.new({
         id = id.from(_N, "UpdatePipeSourceSelfManagedKafkaParameters", "ServerRootCaCertificate"),
         type = "string",
         name = "ServerRootCaCertificate",
         target_id = prelude.String.id,
      }),
      Vpc = schema.new({
         id = id.from(_N, "UpdatePipeSourceSelfManagedKafkaParameters", "Vpc"),
         type = "structure",
         name = "Vpc",
         target_id = id.from(_N, "SelfManagedKafkaAccessConfigurationVpc"),
         target = M.SelfManagedKafkaAccessConfigurationVpc,
      }),
   },
})

M.UpdatePipeSourceSqsQueueParameters = schema.new({
   id = id.from(_N, "UpdatePipeSourceSqsQueueParameters"),
   type = "structure",
   members = {
      BatchSize = schema.new({
         id = id.from(_N, "UpdatePipeSourceSqsQueueParameters", "BatchSize"),
         type = "integer",
         name = "BatchSize",
         target_id = prelude.Integer.id,
      }),
      MaximumBatchingWindowInSeconds = schema.new({
         id = id.from(_N, "UpdatePipeSourceSqsQueueParameters", "MaximumBatchingWindowInSeconds"),
         type = "integer",
         name = "MaximumBatchingWindowInSeconds",
         target_id = prelude.Integer.id,
      }),
   },
})

M.UpdatePipeSourceParameters = schema.new({
   id = id.from(_N, "UpdatePipeSourceParameters"),
   type = "structure",
   members = {
      FilterCriteria = schema.new({
         id = id.from(_N, "UpdatePipeSourceParameters", "FilterCriteria"),
         type = "structure",
         name = "FilterCriteria",
         target_id = id.from(_N, "FilterCriteria"),
         target = M.FilterCriteria,
      }),
      KinesisStreamParameters = schema.new({
         id = id.from(_N, "UpdatePipeSourceParameters", "KinesisStreamParameters"),
         type = "structure",
         name = "KinesisStreamParameters",
         target_id = id.from(_N, "UpdatePipeSourceKinesisStreamParameters"),
         target = M.UpdatePipeSourceKinesisStreamParameters,
      }),
      DynamoDBStreamParameters = schema.new({
         id = id.from(_N, "UpdatePipeSourceParameters", "DynamoDBStreamParameters"),
         type = "structure",
         name = "DynamoDBStreamParameters",
         target_id = id.from(_N, "UpdatePipeSourceDynamoDBStreamParameters"),
         target = M.UpdatePipeSourceDynamoDBStreamParameters,
      }),
      SqsQueueParameters = schema.new({
         id = id.from(_N, "UpdatePipeSourceParameters", "SqsQueueParameters"),
         type = "structure",
         name = "SqsQueueParameters",
         target_id = id.from(_N, "UpdatePipeSourceSqsQueueParameters"),
         target = M.UpdatePipeSourceSqsQueueParameters,
      }),
      ActiveMQBrokerParameters = schema.new({
         id = id.from(_N, "UpdatePipeSourceParameters", "ActiveMQBrokerParameters"),
         type = "structure",
         name = "ActiveMQBrokerParameters",
         target_id = id.from(_N, "UpdatePipeSourceActiveMQBrokerParameters"),
         target = M.UpdatePipeSourceActiveMQBrokerParameters,
      }),
      RabbitMQBrokerParameters = schema.new({
         id = id.from(_N, "UpdatePipeSourceParameters", "RabbitMQBrokerParameters"),
         type = "structure",
         name = "RabbitMQBrokerParameters",
         target_id = id.from(_N, "UpdatePipeSourceRabbitMQBrokerParameters"),
         target = M.UpdatePipeSourceRabbitMQBrokerParameters,
      }),
      ManagedStreamingKafkaParameters = schema.new({
         id = id.from(_N, "UpdatePipeSourceParameters", "ManagedStreamingKafkaParameters"),
         type = "structure",
         name = "ManagedStreamingKafkaParameters",
         target_id = id.from(_N, "UpdatePipeSourceManagedStreamingKafkaParameters"),
         target = M.UpdatePipeSourceManagedStreamingKafkaParameters,
      }),
      SelfManagedKafkaParameters = schema.new({
         id = id.from(_N, "UpdatePipeSourceParameters", "SelfManagedKafkaParameters"),
         type = "structure",
         name = "SelfManagedKafkaParameters",
         target_id = id.from(_N, "UpdatePipeSourceSelfManagedKafkaParameters"),
         target = M.UpdatePipeSourceSelfManagedKafkaParameters,
      }),
   },
})

M.UpdatePipeInput = schema.new({
   id = id.from(_N, "UpdatePipeRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "UpdatePipeInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "UpdatePipeInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      DesiredState = schema.new({
         id = id.from(_N, "UpdatePipeInput", "DesiredState"),
         type = "string",
         name = "DesiredState",
         target_id = prelude.String.id,
      }),
      SourceParameters = schema.new({
         id = id.from(_N, "UpdatePipeInput", "SourceParameters"),
         type = "structure",
         name = "SourceParameters",
         target_id = id.from(_N, "UpdatePipeSourceParameters"),
         target = M.UpdatePipeSourceParameters,
      }),
      Enrichment = schema.new({
         id = id.from(_N, "UpdatePipeInput", "Enrichment"),
         type = "string",
         name = "Enrichment",
         target_id = prelude.String.id,
      }),
      EnrichmentParameters = schema.new({
         id = id.from(_N, "UpdatePipeInput", "EnrichmentParameters"),
         type = "structure",
         name = "EnrichmentParameters",
         target_id = id.from(_N, "PipeEnrichmentParameters"),
         target = M.PipeEnrichmentParameters,
      }),
      Target = schema.new({
         id = id.from(_N, "UpdatePipeInput", "Target"),
         type = "string",
         name = "Target",
         target_id = prelude.String.id,
      }),
      TargetParameters = schema.new({
         id = id.from(_N, "UpdatePipeInput", "TargetParameters"),
         type = "structure",
         name = "TargetParameters",
         target_id = id.from(_N, "PipeTargetParameters"),
         target = M.PipeTargetParameters,
      }),
      RoleArn = schema.new({
         id = id.from(_N, "UpdatePipeInput", "RoleArn"),
         type = "string",
         name = "RoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LogConfiguration = schema.new({
         id = id.from(_N, "UpdatePipeInput", "LogConfiguration"),
         type = "structure",
         name = "LogConfiguration",
         target_id = id.from(_N, "PipeLogConfigurationParameters"),
         target = M.PipeLogConfigurationParameters,
      }),
      KmsKeyIdentifier = schema.new({
         id = id.from(_N, "UpdatePipeInput", "KmsKeyIdentifier"),
         type = "string",
         name = "KmsKeyIdentifier",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdatePipeOutput = schema.new({
   id = id.from(_N, "UpdatePipeResponse"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "UpdatePipeOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "UpdatePipeOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      DesiredState = schema.new({
         id = id.from(_N, "UpdatePipeOutput", "DesiredState"),
         type = "string",
         name = "DesiredState",
         target_id = prelude.String.id,
      }),
      CurrentState = schema.new({
         id = id.from(_N, "UpdatePipeOutput", "CurrentState"),
         type = "string",
         name = "CurrentState",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "UpdatePipeOutput", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "UpdatePipeOutput", "LastModifiedTime"),
         type = "timestamp",
         name = "LastModifiedTime",
         target_id = prelude.Timestamp.id,
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
   id = id.from("com.amazonaws.pipes", "Pipes"),
   version = "2015-10-07",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreatePipe = schema.operation({
   id = id.from("com.amazonaws.pipes", "CreatePipe"),
   input = M.CreatePipeInput,
   output = M.CreatePipeOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/pipes/{Name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeletePipe = schema.operation({
   id = id.from("com.amazonaws.pipes", "DeletePipe"),
   input = M.DeletePipeInput,
   output = M.DeletePipeOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/v1/pipes/{Name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribePipe = schema.operation({
   id = id.from("com.amazonaws.pipes", "DescribePipe"),
   input = M.DescribePipeInput,
   output = M.DescribePipeOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/pipes/{Name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPipes = schema.operation({
   id = id.from("com.amazonaws.pipes", "ListPipes"),
   input = M.ListPipesInput,
   output = M.ListPipesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/v1/pipes" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.pipes", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartPipe = schema.operation({
   id = id.from("com.amazonaws.pipes", "StartPipe"),
   input = M.StartPipeInput,
   output = M.StartPipeOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/pipes/{Name}/start" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopPipe = schema.operation({
   id = id.from("com.amazonaws.pipes", "StopPipe"),
   input = M.StopPipeInput,
   output = M.StopPipeOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/v1/pipes/{Name}/stop" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.pipes", "TagResource"),
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
   id = id.from("com.amazonaws.pipes", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdatePipe = schema.operation({
   id = id.from("com.amazonaws.pipes", "UpdatePipe"),
   input = M.UpdatePipeInput,
   output = M.UpdatePipeOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/v1/pipes/{Name}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
